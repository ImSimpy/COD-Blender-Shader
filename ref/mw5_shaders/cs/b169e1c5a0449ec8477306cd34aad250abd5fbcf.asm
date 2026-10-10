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
; shader hash: 742e19f935a80674759d5c8e60b89af0
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
  br i1 %221, label %950, label %222, !dx.controlflow.hints !34

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
  br i1 %246, label %950, label %247

; <label>:247                                     ; preds = %222
  br label %248

; <label>:248                                     ; preds = %946, %247
  %249 = phi i32 [ %947, %946 ], [ %243, %247 ]
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
  br i1 %272, label %946, label %273

; <label>:273                                     ; preds = %248
  br label %274

; <label>:274                                     ; preds = %943, %273
  %275 = phi i32 [ %280, %943 ], [ %271, %273 ]
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
  %388 = select i1 %319, float %387, float 1.000000e+00
  %389 = fmul fast float %338, %303
  %390 = fsub fast float 1.000000e+00, %389
  %391 = fmul fast float %390, %309
  %392 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %393 = fmul fast float %392, %388
  %394 = fmul fast float %393, 2.000000e+00
  %395 = fsub fast float 3.000000e+00, %394
  %396 = fmul fast float %384, %368
  %397 = fmul fast float %393, %393
  %398 = fmul fast float %397, %396
  %399 = fmul fast float %398, %395
  %400 = icmp ne i32 %317, 255
  %401 = call float @dx.op.binary.f32(i32 36, float %399, float %399)  ; FMin(a,b)
  %402 = call float @dx.op.binary.f32(i32 36, float %399, float %401)  ; FMin(a,b)
  %403 = fcmp fast ogt float %402, 0.000000e+00
  %404 = and i1 %400, %403
  br i1 %404, label %405, label %504, !dx.controlflow.hints !36

; <label>:405                                     ; preds = %367
  %406 = select i1 %319, float 1.000000e+00, float %387
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
  %422 = add nuw nsw i32 %407, 48
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = extractvalue %dx.types.ResRet.f32 %423, 3
  %428 = add nuw nsw i32 %407, 64
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = extractvalue %dx.types.ResRet.f32 %429, 3
  %434 = add nuw nsw i32 %407, 80
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = add nuw nsw i32 %407, 96
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = bitcast float %416 to i32
  %447 = fmul fast float %421, %145
  %448 = fmul fast float %421, %146
  %449 = fmul fast float %421, %147
  %450 = fadd fast float %447, %116
  %451 = fadd fast float %448, %117
  %452 = fadd fast float %449, %118
  %453 = fmul fast float %450, %424
  %454 = call float @dx.op.tertiary.f32(i32 46, float %451, float %430, float %453)  ; FMad(a,b,c)
  %455 = call float @dx.op.tertiary.f32(i32 46, float %452, float %436, float %454)  ; FMad(a,b,c)
  %456 = fadd fast float %455, %442
  %457 = fmul fast float %450, %425
  %458 = call float @dx.op.tertiary.f32(i32 46, float %451, float %431, float %457)  ; FMad(a,b,c)
  %459 = call float @dx.op.tertiary.f32(i32 46, float %452, float %437, float %458)  ; FMad(a,b,c)
  %460 = fadd fast float %459, %443
  %461 = fmul fast float %450, %426
  %462 = call float @dx.op.tertiary.f32(i32 46, float %451, float %432, float %461)  ; FMad(a,b,c)
  %463 = call float @dx.op.tertiary.f32(i32 46, float %452, float %438, float %462)  ; FMad(a,b,c)
  %464 = fadd fast float %463, %444
  %465 = fmul fast float %450, %427
  %466 = call float @dx.op.tertiary.f32(i32 46, float %451, float %433, float %465)  ; FMad(a,b,c)
  %467 = call float @dx.op.tertiary.f32(i32 46, float %452, float %439, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %467, %445
  %469 = fdiv fast float %456, %468
  %470 = fdiv fast float %460, %468
  %471 = fdiv fast float %464, %468
  %472 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %471)  ; FMax(a,b)
  %473 = fmul fast float %217, 0x401921FB60000000
  %474 = call float @dx.op.unary.f32(i32 13, float %473)  ; Sin(value)
  %475 = call float @dx.op.unary.f32(i32 12, float %473)  ; Cos(value)
  %476 = fsub fast float -0.000000e+00, %474
  %477 = fmul fast float %411, 5.000000e-01
  %478 = call float @dx.op.dot2.f32(i32 54, float %217, float %217, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fmul fast float %479, 0x404A7DD040000000
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = fmul fast float %481, %420
  %483 = fadd fast float %482, %477
  %484 = call float @dx.op.tertiary.f32(i32 46, float %483, float %476, float 0.000000e+00)  ; FMad(a,b,c)
  %485 = call float @dx.op.tertiary.f32(i32 46, float %483, float %475, float 0.000000e+00)  ; FMad(a,b,c)
  %486 = fadd fast float %484, %469
  %487 = fadd fast float %485, %470
  %488 = fmul fast float %486, %415
  %489 = fmul fast float %487, %415
  %490 = call float @dx.op.binary.f32(i32 35, float %488, float %411)  ; FMax(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %489, float %411)  ; FMax(a,b)
  %492 = call float @dx.op.binary.f32(i32 36, float %490, float %412)  ; FMin(a,b)
  %493 = call float @dx.op.binary.f32(i32 36, float %491, float %412)  ; FMin(a,b)
  %494 = fadd fast float %492, %409
  %495 = fadd fast float %493, %410
  %496 = uitofp i32 %446 to float
  %497 = fadd fast float %472, %419
  %498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %17, float %494, float %495, float %496, float undef, i32 0, i32 0, i32 undef, float %497)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = fadd fast float %499, -1.000000e+00
  %501 = fmul fast float %500, %406
  %502 = fadd fast float %501, 1.000000e+00
  %503 = fmul fast float %502, %399
  br label %504

; <label>:504                                     ; preds = %405, %367
  %505 = phi float [ %503, %405 ], [ %399, %367 ]
  %506 = call float @dx.op.binary.f32(i32 36, float %505, float %505)  ; FMin(a,b)
  %507 = call float @dx.op.binary.f32(i32 36, float %505, float %506)  ; FMin(a,b)
  %508 = fcmp fast ogt float %507, 0.000000e+00
  %509 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %340, float %341, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %510 = fcmp fast ogt float %509, 0.000000e+00
  %511 = and i1 %508, %510
  br i1 %511, label %512, label %779, !dx.controlflow.hints !37

; <label>:512                                     ; preds = %504
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %517 = select i1 %54, float %514, float %516
  %518 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %519 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %520 = select i1 %54, float %518, float %519
  %521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.i32 %521, 0
  %523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.i32 %523, 0
  %525 = select i1 %54, i32 %522, i32 %524
  %526 = fcmp fast olt float %517, 5.000000e-01
  %527 = icmp eq i32 %525, 0
  %528 = or i1 %526, %527
  br i1 %528, label %776, label %529, !dx.controlflow.hints !38

; <label>:529                                     ; preds = %512
  %530 = fsub fast float %300, %116
  %531 = fsub fast float %301, %117
  %532 = fsub fast float %302, %118
  %533 = fmul fast float %530, %530
  %534 = fmul fast float %531, %531
  %535 = fadd fast float %533, %534
  %536 = fmul fast float %532, %532
  %537 = fadd fast float %535, %536
  %538 = call float @dx.op.unary.f32(i32 24, float %537)  ; Sqrt(value)
  %539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.i32 %539, 0
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %517, %297
  %543 = fdiv fast float %542, %538
  %544 = call float @dx.op.binary.f32(i32 36, float %543, float 1.000000e+01)  ; FMin(a,b)
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %547 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %548 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %549 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %553 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %554 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %558 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %559 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = extractvalue %dx.types.CBufRet.f32 %560, 1
  %563 = extractvalue %dx.types.CBufRet.f32 %560, 2
  %564 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %568 = extractvalue %dx.types.CBufRet.f32 %565, 2
  %569 = extractvalue %dx.types.CBufRet.f32 %565, 3
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %574 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %575 = select i1 %54, float %546, float %561
  %576 = select i1 %54, float %551, float %566
  %577 = select i1 %54, float %556, float %571
  %578 = select i1 %54, float %547, float %562
  %579 = select i1 %54, float %552, float %567
  %580 = select i1 %54, float %557, float %572
  %581 = select i1 %54, float %548, float %563
  %582 = select i1 %54, float %553, float %568
  %583 = select i1 %54, float %558, float %573
  %584 = select i1 %54, float %549, float %564
  %585 = select i1 %54, float %554, float %569
  %586 = select i1 %54, float %559, float %574
  %587 = fmul fast float %218, 0x401061CAC0000000
  %588 = fmul fast float %218, 0x4023E1D7E0000000
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %593 = extractvalue %dx.types.CBufRet.f32 %589, 3
  %594 = fsub fast float -0.000000e+00, %340
  %595 = fmul fast float %342, %594
  %596 = fmul fast float %340, %594
  %597 = fmul fast float %341, %341
  %598 = fsub fast float %596, %597
  %599 = fdiv fast float 1.000000e+00, %61
  %600 = fmul fast float %592, %50
  %601 = fmul fast float %593, %51
  %602 = fmul fast float %517, %340
  %603 = fmul fast float %517, %342
  %604 = fadd fast float %602, %116
  %605 = fadd fast float %603, %118
  %606 = fadd fast float %588, 5.000000e-01
  %607 = call float @dx.op.unary.f32(i32 22, float %606)  ; Frc(value)
  %608 = bitcast float %607 to i32
  %609 = ashr i32 %608, 1
  %610 = add nsw i32 %609, 532487669
  %611 = bitcast i32 %610 to float
  %612 = fmul fast float %611, %544
  %613 = fadd fast float %587, 5.000000e-01
  %614 = call float @dx.op.unary.f32(i32 22, float %613)  ; Frc(value)
  %615 = fmul fast float %614, 0x401921FB60000000
  %616 = call float @dx.op.unary.f32(i32 12, float %615)  ; Cos(value)
  %617 = fmul fast float %616, %616
  %618 = fsub fast float 1.000000e+00, %617
  %619 = bitcast float %618 to i32
  %620 = ashr i32 %619, 1
  %621 = add nsw i32 %620, 532487669
  %622 = bitcast i32 %621 to float
  %623 = fmul fast float %612, %616
  %624 = fmul fast float %623, %341
  %625 = fmul fast float %623, %594
  %626 = fadd fast float %604, %624
  %627 = fmul fast float %622, %612
  %628 = fmul fast float %595, %627
  %629 = fmul fast float %627, %342
  %630 = fmul fast float %627, %598
  %631 = fsub fast float %626, %628
  %632 = fadd fast float %629, %517
  %633 = fmul fast float %632, %341
  %634 = fadd fast float %625, %117
  %635 = fadd fast float %634, %633
  %636 = fadd fast float %605, %630
  %637 = fmul fast float %631, %575
  %638 = call float @dx.op.tertiary.f32(i32 46, float %635, float %578, float %637)  ; FMad(a,b,c)
  %639 = call float @dx.op.tertiary.f32(i32 46, float %636, float %581, float %638)  ; FMad(a,b,c)
  %640 = fadd fast float %639, %584
  %641 = fmul fast float %631, %576
  %642 = call float @dx.op.tertiary.f32(i32 46, float %635, float %579, float %641)  ; FMad(a,b,c)
  %643 = call float @dx.op.tertiary.f32(i32 46, float %636, float %582, float %642)  ; FMad(a,b,c)
  %644 = fadd fast float %643, %585
  %645 = fmul fast float %631, %577
  %646 = call float @dx.op.tertiary.f32(i32 46, float %635, float %580, float %645)  ; FMad(a,b,c)
  %647 = call float @dx.op.tertiary.f32(i32 46, float %636, float %583, float %646)  ; FMad(a,b,c)
  %648 = fadd fast float %647, %586
  %649 = fdiv fast float 1.000000e+00, %648
  %650 = fmul fast float %640, 5.000000e-01
  %651 = fmul fast float %644, -5.000000e-01
  %652 = fmul fast float %650, %649
  %653 = fmul fast float %651, %649
  %654 = fsub fast float 5.000000e-01, %600
  %655 = fadd fast float %654, %652
  %656 = fsub fast float 5.000000e-01, %601
  %657 = fadd fast float %656, %653
  %658 = fsub fast float %649, %599
  %659 = call float @dx.op.dot2.f32(i32 54, float %655, float %657, float %655, float %657)  ; Dot2(ax,ay,bx,by)
  %660 = call float @dx.op.binary.f32(i32 35, float %659, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %661 = call float @dx.op.dot2.f32(i32 54, float %590, float %591, float %590, float %591)  ; Dot2(ax,ay,bx,by)
  %662 = fmul fast float %661, %660
  %663 = call float @dx.op.unary.f32(i32 25, float %662)  ; Rsqrt(value)
  %664 = fmul fast float %663, %655
  %665 = fmul fast float %663, %657
  %666 = fadd fast float %664, %600
  %667 = fadd fast float %665, %601
  %668 = fmul fast float %655, %590
  %669 = fmul fast float %657, %591
  %670 = fmul fast float %668, %668
  %671 = fmul fast float %669, %669
  %672 = fadd fast float %670, %671
  %673 = call float @dx.op.unary.f32(i32 24, float %672)  ; Sqrt(value)
  %674 = fdiv fast float 1.000000e+00, %673
  %675 = fmul fast float %673, 3.906250e-03
  %676 = fmul fast float %204, 0x3F70624DE0000000
  %677 = fadd fast float %676, 0x3F70624DE0000000
  %678 = icmp sgt i32 %525, -1
  br i1 %678, label %679, label %741

; <label>:679                                     ; preds = %529
  br label %680

; <label>:680                                     ; preds = %737, %679
  %681 = phi float [ %712, %737 ], [ %61, %679 ]
  %682 = phi float [ %699, %737 ], [ %61, %679 ]
  %683 = phi float [ %682, %737 ], [ %61, %679 ]
  %684 = phi i32 [ %738, %737 ], [ 0, %679 ]
  %685 = sitofp i32 %684 to float
  %686 = fadd fast float %218, 5.000000e-01
  %687 = call float @dx.op.unary.f32(i32 22, float %686)  ; Frc(value)
  %688 = fadd fast float %685, %687
  %689 = sitofp i32 %525 to float
  %690 = fdiv fast float %688, %689
  %691 = fmul fast float %690, %690
  %692 = call float @dx.op.binary.f32(i32 36, float %691, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %693 = fmul fast float %692, %655
  %694 = fmul fast float %692, %657
  %695 = fmul fast float %692, %658
  %696 = fadd fast float %693, %666
  %697 = fadd fast float %694, %667
  %698 = fadd fast float %695, %599
  %699 = fdiv fast float 1.000000e+00, %698
  %700 = icmp ne i32 %540, 0
  %701 = fmul fast float %675, %692
  %702 = call float @dx.op.binary.f32(i32 36, float %701, float %541)  ; FMin(a,b)
  %703 = select i1 %700, float %702, float 0.000000e+00
  %704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %696, float %697, float undef, float undef, i32 0, i32 0, i32 undef, float %703)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = fcmp fast ogt float %705, -1.000000e+00
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %709 = select i1 %706, float %708, float 1.000000e+00
  %710 = fadd fast float %705, 1.000000e+00
  %711 = fmul fast float %709, %710
  %712 = call float @dx.op.unary.f32(i32 6, float %711)  ; FAbs(value)
  %713 = fmul fast float %712, %677
  %714 = fsub fast float %699, %712
  %715 = fsub fast float %714, %713
  %716 = fcmp fast ogt float %715, 0.000000e+00
  %717 = fcmp fast ogt float %520, 0.000000e+00
  br i1 %717, label %718, label %721, !dx.controlflow.hints !39

; <label>:718                                     ; preds = %680
  %719 = fsub fast float %699, %683
  %720 = call float @dx.op.binary.f32(i32 35, float %719, float %520)  ; FMax(a,b)
  br label %721

; <label>:721                                     ; preds = %718, %680
  %722 = phi float [ %720, %718 ], [ %517, %680 ]
  %723 = fcmp fast olt float %715, %722
  %724 = fcmp uge float %705, -1.000000e+00
  %725 = or i1 %54, %724
  %726 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %728 = fcmp fast oeq float %696, %726
  %729 = fcmp fast oeq float %697, %727
  %730 = and i1 %728, %729
  %731 = and i1 %725, %730
  %732 = and i1 %716, %723
  %733 = and i1 %732, %731
  %734 = fcmp fast ogt float %692, %674
  %735 = and i1 %734, %733
  %736 = zext i1 %735 to i32
  br i1 %735, label %740, label %737, !dx.controlflow.hints !40

; <label>:737                                     ; preds = %721
  %738 = add nuw nsw i32 %684, 1
  %739 = icmp slt i32 %684, %525
  br i1 %739, label %680, label %740

; <label>:740                                     ; preds = %737, %721
  br label %741

; <label>:741                                     ; preds = %740, %529
  %742 = phi i32 [ 0, %529 ], [ %736, %740 ]
  %743 = phi float [ %61, %529 ], [ %712, %740 ]
  %744 = phi float [ %61, %529 ], [ %681, %740 ]
  %745 = phi float [ %61, %529 ], [ %699, %740 ]
  %746 = phi float [ %61, %529 ], [ %682, %740 ]
  %747 = fsub fast float %746, %744
  %748 = fsub fast float %745, %743
  %749 = fsub fast float %747, %748
  %750 = fcmp fast une float %749, 0.000000e+00
  %751 = fmul fast float %747, %745
  %752 = fmul fast float %746, %748
  %753 = fsub fast float %751, %752
  %754 = fdiv fast float 1.000000e+00, %749
  %755 = fmul fast float %753, %754
  %756 = select i1 %750, float %755, float %745
  %757 = fdiv fast float 1.000000e+00, %756
  %758 = fsub fast float %757, %599
  %759 = fdiv fast float %758, %658
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = fmul fast float %760, %655
  %762 = fmul fast float %760, %657
  %763 = fadd fast float %761, %666
  %764 = fadd fast float %762, %667
  %765 = fadd fast float %763, -5.000000e-01
  %766 = fadd fast float %764, -5.000000e-01
  %767 = call float @dx.op.unary.f32(i32 6, float %765)  ; FAbs(value)
  %768 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %769 = fadd fast float %767, -5.000000e-01
  %770 = fadd fast float %768, -5.000000e-01
  %771 = call float @dx.op.binary.f32(i32 35, float %769, float %770)  ; FMax(a,b)
  %772 = fcmp fast olt float %771, 0.000000e+00
  %773 = icmp ne i32 %742, 0
  %774 = and i1 %773, %772
  %775 = select i1 %774, float 0.000000e+00, float 1.000000e+00
  br label %776

; <label>:776                                     ; preds = %741, %512
  %777 = phi float [ %775, %741 ], [ 1.000000e+00, %512 ]
  %778 = fmul fast float %777, %505
  br label %779

; <label>:779                                     ; preds = %776, %504
  %780 = phi float [ %778, %776 ], [ %505, %504 ]
  %781 = lshr i32 %223, 5
  %782 = lshr i32 %224, 5
  %783 = fcmp fast olt float %780, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %784 = and i32 %23, 31
  %785 = zext i1 %783 to i32
  %786 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %23
  store i32 %785, i32 addrspace(3)* %786, align 4, !tbaa !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %787 = icmp ult i32 %784, 16
  br i1 %787, label %788, label %794, !dx.controlflow.hints !45

; <label>:788                                     ; preds = %779
  %789 = add i32 %23, 16
  %790 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %789
  %791 = load i32, i32 addrspace(3)* %790, align 4, !tbaa !41
  %792 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %793 = and i32 %792, %791
  store i32 %793, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %794

; <label>:794                                     ; preds = %788, %779
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %795 = icmp ult i32 %784, 8
  br i1 %795, label %796, label %802, !dx.controlflow.hints !46

; <label>:796                                     ; preds = %794
  %797 = add i32 %23, 8
  %798 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %797
  %799 = load i32, i32 addrspace(3)* %798, align 4, !tbaa !41
  %800 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %801 = and i32 %800, %799
  store i32 %801, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %802

; <label>:802                                     ; preds = %796, %794
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %803 = icmp ult i32 %784, 4
  br i1 %803, label %804, label %810, !dx.controlflow.hints !47

; <label>:804                                     ; preds = %802
  %805 = add i32 %23, 4
  %806 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %805
  %807 = load i32, i32 addrspace(3)* %806, align 4, !tbaa !41
  %808 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %809 = and i32 %808, %807
  store i32 %809, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %810

; <label>:810                                     ; preds = %804, %802
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %811 = icmp ult i32 %784, 2
  br i1 %811, label %812, label %818, !dx.controlflow.hints !48

; <label>:812                                     ; preds = %810
  %813 = add i32 %23, 2
  %814 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %813
  %815 = load i32, i32 addrspace(3)* %814, align 4, !tbaa !41
  %816 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %817 = and i32 %816, %815
  store i32 %817, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %818

; <label>:818                                     ; preds = %812, %810
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %819 = icmp eq i32 %784, 0
  br i1 %819, label %820, label %826, !dx.controlflow.hints !49

; <label>:820                                     ; preds = %818
  %821 = add i32 %23, 1
  %822 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %821
  %823 = load i32, i32 addrspace(3)* %822, align 4, !tbaa !41
  %824 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %825 = and i32 %824, %823
  store i32 %825, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %826

; <label>:826                                     ; preds = %820, %818
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %827 = and i32 %23, -64
  %828 = or i32 %827, 32
  %829 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %827
  %830 = load i32, i32 addrspace(3)* %829, align 4, !tbaa !41
  %831 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %828
  %832 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !41
  %833 = and i32 %832, %830
  %834 = icmp ne i32 %833, 0
  %835 = fcmp fast ogt float %780, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %836 = zext i1 %835 to i32
  store i32 %836, i32 addrspace(3)* %786, align 4, !tbaa !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %787, label %837, label %843, !dx.controlflow.hints !45

; <label>:837                                     ; preds = %826
  %838 = add i32 %23, 16
  %839 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %838
  %840 = load i32, i32 addrspace(3)* %839, align 4, !tbaa !41
  %841 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %842 = and i32 %841, %840
  store i32 %842, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %843

; <label>:843                                     ; preds = %837, %826
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %795, label %844, label %850, !dx.controlflow.hints !46

; <label>:844                                     ; preds = %843
  %845 = add i32 %23, 8
  %846 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %845
  %847 = load i32, i32 addrspace(3)* %846, align 4, !tbaa !41
  %848 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %849 = and i32 %848, %847
  store i32 %849, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %850

; <label>:850                                     ; preds = %844, %843
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %803, label %851, label %857, !dx.controlflow.hints !47

; <label>:851                                     ; preds = %850
  %852 = add i32 %23, 4
  %853 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %852
  %854 = load i32, i32 addrspace(3)* %853, align 4, !tbaa !41
  %855 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %856 = and i32 %855, %854
  store i32 %856, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %857

; <label>:857                                     ; preds = %851, %850
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %811, label %858, label %864, !dx.controlflow.hints !48

; <label>:858                                     ; preds = %857
  %859 = add i32 %23, 2
  %860 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %859
  %861 = load i32, i32 addrspace(3)* %860, align 4, !tbaa !41
  %862 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %863 = and i32 %862, %861
  store i32 %863, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %864

; <label>:864                                     ; preds = %858, %857
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %819, label %865, label %871, !dx.controlflow.hints !49

; <label>:865                                     ; preds = %864
  %866 = add i32 %23, 1
  %867 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %866
  %868 = load i32, i32 addrspace(3)* %867, align 4, !tbaa !41
  %869 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !41
  %870 = and i32 %869, %868
  store i32 %870, i32 addrspace(3)* %786, align 4, !tbaa !41
  br label %871

; <label>:871                                     ; preds = %865, %864
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %872 = load i32, i32 addrspace(3)* %829, align 4, !tbaa !41
  %873 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !41
  %874 = and i32 %873, %872
  %875 = or i32 %874, %833
  %876 = icmp eq i32 %875, 0
  %877 = lshr i32 %224, 1
  %878 = and i32 %877, 8
  %879 = lshr i32 %223, 2
  %880 = and i32 %879, 4
  %881 = or i32 %878, %35
  %882 = or i32 %881, %880
  %883 = icmp eq i32 %23, 0
  br i1 %883, label %884, label %926, !dx.controlflow.hints !50

; <label>:884                                     ; preds = %871
  %885 = icmp ne i32 %874, 0
  %886 = shl i32 1, %882
  %887 = select i1 %885, i32 %886, i32 0
  %888 = shl i32 65536, %882
  %889 = select i1 %834, i32 %888, i32 0
  %890 = or i32 %887, %889
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %894, label %892, !dx.controlflow.hints !51

; <label>:892                                     ; preds = %884
  %893 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %781, i32 %782, i32 %277, i32 %890)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %894

; <label>:894                                     ; preds = %892, %884
  br i1 %876, label %895, label %924

; <label>:895                                     ; preds = %894
  br label %896

; <label>:896                                     ; preds = %921, %895
  %897 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %3, i32 %781, i32 %782, i32 %277, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %898 = and i32 %897, 3
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %921, !dx.controlflow.hints !52

; <label>:900                                     ; preds = %896
  %901 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.i32 %902, 3
  %904 = call i32 @dx.op.binary.i32(i32 40, i32 %903, i32 %901)  ; UMin(a,b)
  %905 = extractvalue %dx.types.CBufRet.i32 %902, 2
  %906 = udiv i32 %904, %905
  %907 = urem i32 %904, %905
  %908 = extractvalue %dx.types.CBufRet.i32 %902, 1
  %909 = urem i32 %907, %908
  %910 = udiv i32 %907, %908
  %911 = shl i32 %909, 6
  %912 = and i32 %911, 32704
  %913 = shl i32 %910, 15
  %914 = and i32 %913, 8355840
  %915 = shl i32 %906, 23
  %916 = and i32 %915, 2139095040
  %917 = or i32 %916, %912
  %918 = or i32 %917, %914
  %919 = or i32 %918, 3
  %920 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 8, i32 %781, i32 %782, i32 %277, i32 %919)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %924

; <label>:921                                     ; preds = %896
  %922 = icmp eq i32 %898, 3
  br i1 %922, label %923, label %896, !dx.controlflow.hints !53

; <label>:923                                     ; preds = %921
  br label %924

; <label>:924                                     ; preds = %923, %900, %894
  %925 = phi i32 [ 0, %894 ], [ %919, %900 ], [ %897, %923 ]
  store i32 %925, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !41
  br label %926

; <label>:926                                     ; preds = %924, %871
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %927 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !41
  br i1 %876, label %928, label %943, !dx.controlflow.hints !54

; <label>:928                                     ; preds = %926
  %929 = lshr i32 %927, 23
  %930 = and i32 %929, 255
  %931 = and i32 %223, 31
  %932 = and i32 %224, 31
  %933 = lshr i32 %927, 1
  %934 = and i32 %933, 16352
  %935 = lshr i32 %927, 10
  %936 = and i32 %935, 8160
  %937 = or i32 %934, %931
  %938 = or i32 %936, %932
  %939 = fmul fast float %780, 2.550000e+02
  %940 = fadd fast float %939, %217
  %941 = call float @dx.op.unary.f32(i32 27, float %940)  ; Round_ni(value)
  %942 = fmul fast float %941, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %937, i32 %938, i32 %930, float %942, float %942, float %942, float %942, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %943

; <label>:943                                     ; preds = %928, %926
  %944 = icmp eq i32 %275, %279
  br i1 %944, label %945, label %274, !llvm.loop !55

; <label>:945                                     ; preds = %943
  br label %946

; <label>:946                                     ; preds = %945, %248
  %947 = add i32 %249, 1
  %948 = icmp ugt i32 %947, %245
  br i1 %948, label %949, label %248

; <label>:949                                     ; preds = %946
  br label %950

; <label>:950                                     ; preds = %949, %222, %0
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
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
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
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}

