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
; shader hash: fbe25b7c56ba59f66bfd55cd865cd85a
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
  br i1 %222, label %980, label %223, !dx.controlflow.hints !35

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
  br i1 %251, label %980, label %252

; <label>:252                                     ; preds = %223
  br label %253

; <label>:253                                     ; preds = %970, %252
  %254 = phi i32 [ %977, %970 ], [ %248, %252 ]
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
  br i1 %283, label %970, label %284

; <label>:284                                     ; preds = %281
  br label %285

; <label>:285                                     ; preds = %967, %284
  %286 = phi i32 [ %805, %967 ], [ 0, %284 ]
  %287 = phi i32 [ %292, %967 ], [ %282, %284 ]
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
  %400 = select i1 %331, float %399, float 1.000000e+00
  %401 = fmul fast float %350, %315
  %402 = fsub fast float 1.000000e+00, %401
  %403 = fmul fast float %402, %321
  %404 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  %405 = fmul fast float %404, %400
  %406 = fmul fast float %405, 2.000000e+00
  %407 = fsub fast float 3.000000e+00, %406
  %408 = fmul fast float %396, %380
  %409 = fmul fast float %405, %405
  %410 = fmul fast float %409, %408
  %411 = fmul fast float %410, %407
  %412 = icmp ne i32 %329, 255
  %413 = call float @dx.op.binary.f32(i32 36, float %411, float %411)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 36, float %411, float %413)  ; FMin(a,b)
  %415 = fcmp fast ogt float %414, 0.000000e+00
  %416 = and i1 %412, %415
  br i1 %416, label %417, label %516, !dx.controlflow.hints !42

; <label>:417                                     ; preds = %379
  %418 = select i1 %331, float 1.000000e+00, float %399
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
  %434 = add nuw nsw i32 %419, 48
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = add nuw nsw i32 %419, 64
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = add nuw nsw i32 %419, 80
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = extractvalue %dx.types.ResRet.f32 %447, 3
  %452 = add nuw nsw i32 %419, 96
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  %458 = bitcast float %428 to i32
  %459 = fmul fast float %433, %146
  %460 = fmul fast float %433, %147
  %461 = fmul fast float %433, %148
  %462 = fadd fast float %459, %117
  %463 = fadd fast float %460, %118
  %464 = fadd fast float %461, %119
  %465 = fmul fast float %462, %436
  %466 = call float @dx.op.tertiary.f32(i32 46, float %463, float %442, float %465)  ; FMad(a,b,c)
  %467 = call float @dx.op.tertiary.f32(i32 46, float %464, float %448, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %467, %454
  %469 = fmul fast float %462, %437
  %470 = call float @dx.op.tertiary.f32(i32 46, float %463, float %443, float %469)  ; FMad(a,b,c)
  %471 = call float @dx.op.tertiary.f32(i32 46, float %464, float %449, float %470)  ; FMad(a,b,c)
  %472 = fadd fast float %471, %455
  %473 = fmul fast float %462, %438
  %474 = call float @dx.op.tertiary.f32(i32 46, float %463, float %444, float %473)  ; FMad(a,b,c)
  %475 = call float @dx.op.tertiary.f32(i32 46, float %464, float %450, float %474)  ; FMad(a,b,c)
  %476 = fadd fast float %475, %456
  %477 = fmul fast float %462, %439
  %478 = call float @dx.op.tertiary.f32(i32 46, float %463, float %445, float %477)  ; FMad(a,b,c)
  %479 = call float @dx.op.tertiary.f32(i32 46, float %464, float %451, float %478)  ; FMad(a,b,c)
  %480 = fadd fast float %479, %457
  %481 = fdiv fast float %468, %480
  %482 = fdiv fast float %472, %480
  %483 = fdiv fast float %476, %480
  %484 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %483)  ; FMax(a,b)
  %485 = fmul fast float %218, 0x401921FB60000000
  %486 = call float @dx.op.unary.f32(i32 13, float %485)  ; Sin(value)
  %487 = call float @dx.op.unary.f32(i32 12, float %485)  ; Cos(value)
  %488 = fsub fast float -0.000000e+00, %486
  %489 = fmul fast float %423, 5.000000e-01
  %490 = call float @dx.op.dot2.f32(i32 54, float %218, float %218, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = fmul fast float %491, 0x404A7DD040000000
  %493 = call float @dx.op.unary.f32(i32 22, float %492)  ; Frc(value)
  %494 = fmul fast float %493, %432
  %495 = fadd fast float %494, %489
  %496 = call float @dx.op.tertiary.f32(i32 46, float %495, float %488, float 0.000000e+00)  ; FMad(a,b,c)
  %497 = call float @dx.op.tertiary.f32(i32 46, float %495, float %487, float 0.000000e+00)  ; FMad(a,b,c)
  %498 = fadd fast float %496, %481
  %499 = fadd fast float %497, %482
  %500 = fmul fast float %498, %427
  %501 = fmul fast float %499, %427
  %502 = call float @dx.op.binary.f32(i32 35, float %500, float %423)  ; FMax(a,b)
  %503 = call float @dx.op.binary.f32(i32 35, float %501, float %423)  ; FMax(a,b)
  %504 = call float @dx.op.binary.f32(i32 36, float %502, float %424)  ; FMin(a,b)
  %505 = call float @dx.op.binary.f32(i32 36, float %503, float %424)  ; FMin(a,b)
  %506 = fadd fast float %504, %421
  %507 = fadd fast float %505, %422
  %508 = uitofp i32 %458 to float
  %509 = fadd fast float %484, %431
  %510 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %506, float %507, float %508, float undef, i32 0, i32 0, i32 undef, float %509)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = fadd fast float %511, -1.000000e+00
  %513 = fmul fast float %512, %418
  %514 = fadd fast float %513, 1.000000e+00
  %515 = fmul fast float %514, %411
  br label %516

; <label>:516                                     ; preds = %417, %379
  %517 = phi float [ %515, %417 ], [ %411, %379 ]
  %518 = call float @dx.op.binary.f32(i32 36, float %517, float %517)  ; FMin(a,b)
  %519 = call float @dx.op.binary.f32(i32 36, float %517, float %518)  ; FMin(a,b)
  %520 = fcmp fast ogt float %519, 0.000000e+00
  %521 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %352, float %353, float %354)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = fcmp fast ogt float %521, 0.000000e+00
  %523 = and i1 %520, %522
  br i1 %523, label %524, label %793, !dx.controlflow.hints !43

; <label>:524                                     ; preds = %516
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 1
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %529 = select i1 %55, float %526, float %528
  %530 = extractvalue %dx.types.CBufRet.f32 %525, 2
  %531 = extractvalue %dx.types.CBufRet.f32 %527, 2
  %532 = select i1 %55, float %530, float %531
  %533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.i32 %533, 0
  %535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.i32 %535, 0
  %537 = select i1 %55, i32 %534, i32 %536
  %538 = fcmp fast olt float %529, 5.000000e-01
  %539 = icmp eq i32 %537, 0
  %540 = or i1 %538, %539
  br i1 %540, label %788, label %541, !dx.controlflow.hints !44

; <label>:541                                     ; preds = %524
  %542 = fsub fast float %312, %117
  %543 = fsub fast float %313, %118
  %544 = fsub fast float %314, %119
  %545 = fmul fast float %542, %542
  %546 = fmul fast float %543, %543
  %547 = fadd fast float %545, %546
  %548 = fmul fast float %544, %544
  %549 = fadd fast float %547, %548
  %550 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.i32 %551, 0
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %529, %309
  %555 = fdiv fast float %554, %550
  %556 = call float @dx.op.binary.f32(i32 36, float %555, float 1.000000e+01)  ; FMin(a,b)
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %561 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %566 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %571 = extractvalue %dx.types.CBufRet.f32 %567, 3
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = extractvalue %dx.types.CBufRet.f32 %572, 3
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %581 = extractvalue %dx.types.CBufRet.f32 %577, 3
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %587 = select i1 %55, float %558, float %573
  %588 = select i1 %55, float %563, float %578
  %589 = select i1 %55, float %568, float %583
  %590 = select i1 %55, float %559, float %574
  %591 = select i1 %55, float %564, float %579
  %592 = select i1 %55, float %569, float %584
  %593 = select i1 %55, float %560, float %575
  %594 = select i1 %55, float %565, float %580
  %595 = select i1 %55, float %570, float %585
  %596 = select i1 %55, float %561, float %576
  %597 = select i1 %55, float %566, float %581
  %598 = select i1 %55, float %571, float %586
  %599 = fmul fast float %219, 0x401061CAC0000000
  %600 = fmul fast float %219, 0x4023E1D7E0000000
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %604 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %605 = extractvalue %dx.types.CBufRet.f32 %601, 3
  %606 = fsub fast float -0.000000e+00, %352
  %607 = fmul fast float %354, %606
  %608 = fmul fast float %352, %606
  %609 = fmul fast float %353, %353
  %610 = fsub fast float %608, %609
  %611 = fdiv fast float 1.000000e+00, %62
  %612 = fmul fast float %604, %51
  %613 = fmul fast float %605, %52
  %614 = fmul fast float %529, %352
  %615 = fmul fast float %529, %354
  %616 = fadd fast float %614, %117
  %617 = fadd fast float %615, %119
  %618 = fadd fast float %600, 5.000000e-01
  %619 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %620 = bitcast float %619 to i32
  %621 = ashr i32 %620, 1
  %622 = add nsw i32 %621, 532487669
  %623 = bitcast i32 %622 to float
  %624 = fmul fast float %623, %556
  %625 = fadd fast float %599, 5.000000e-01
  %626 = call float @dx.op.unary.f32(i32 22, float %625)  ; Frc(value)
  %627 = fmul fast float %626, 0x401921FB60000000
  %628 = call float @dx.op.unary.f32(i32 12, float %627)  ; Cos(value)
  %629 = fmul fast float %628, %628
  %630 = fsub fast float 1.000000e+00, %629
  %631 = bitcast float %630 to i32
  %632 = ashr i32 %631, 1
  %633 = add nsw i32 %632, 532487669
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %624, %628
  %636 = fmul fast float %635, %353
  %637 = fmul fast float %635, %606
  %638 = fadd fast float %616, %636
  %639 = fmul fast float %634, %624
  %640 = fmul fast float %607, %639
  %641 = fmul fast float %639, %354
  %642 = fmul fast float %639, %610
  %643 = fsub fast float %638, %640
  %644 = fadd fast float %641, %529
  %645 = fmul fast float %644, %353
  %646 = fadd fast float %637, %118
  %647 = fadd fast float %646, %645
  %648 = fadd fast float %617, %642
  %649 = fmul fast float %643, %587
  %650 = call float @dx.op.tertiary.f32(i32 46, float %647, float %590, float %649)  ; FMad(a,b,c)
  %651 = call float @dx.op.tertiary.f32(i32 46, float %648, float %593, float %650)  ; FMad(a,b,c)
  %652 = fadd fast float %651, %596
  %653 = fmul fast float %643, %588
  %654 = call float @dx.op.tertiary.f32(i32 46, float %647, float %591, float %653)  ; FMad(a,b,c)
  %655 = call float @dx.op.tertiary.f32(i32 46, float %648, float %594, float %654)  ; FMad(a,b,c)
  %656 = fadd fast float %655, %597
  %657 = fmul fast float %643, %589
  %658 = call float @dx.op.tertiary.f32(i32 46, float %647, float %592, float %657)  ; FMad(a,b,c)
  %659 = call float @dx.op.tertiary.f32(i32 46, float %648, float %595, float %658)  ; FMad(a,b,c)
  %660 = fadd fast float %659, %598
  %661 = fdiv fast float 1.000000e+00, %660
  %662 = fmul fast float %652, 5.000000e-01
  %663 = fmul fast float %656, -5.000000e-01
  %664 = fmul fast float %662, %661
  %665 = fmul fast float %663, %661
  %666 = fsub fast float 5.000000e-01, %612
  %667 = fadd fast float %666, %664
  %668 = fsub fast float 5.000000e-01, %613
  %669 = fadd fast float %668, %665
  %670 = fsub fast float %661, %611
  %671 = call float @dx.op.dot2.f32(i32 54, float %667, float %669, float %667, float %669)  ; Dot2(ax,ay,bx,by)
  %672 = call float @dx.op.binary.f32(i32 35, float %671, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %673 = call float @dx.op.dot2.f32(i32 54, float %602, float %603, float %602, float %603)  ; Dot2(ax,ay,bx,by)
  %674 = fmul fast float %673, %672
  %675 = call float @dx.op.unary.f32(i32 25, float %674)  ; Rsqrt(value)
  %676 = fmul fast float %675, %667
  %677 = fmul fast float %675, %669
  %678 = fadd fast float %676, %612
  %679 = fadd fast float %677, %613
  %680 = fmul fast float %667, %602
  %681 = fmul fast float %669, %603
  %682 = fmul fast float %680, %680
  %683 = fmul fast float %681, %681
  %684 = fadd fast float %682, %683
  %685 = call float @dx.op.unary.f32(i32 24, float %684)  ; Sqrt(value)
  %686 = fdiv fast float 1.000000e+00, %685
  %687 = fmul fast float %685, 3.906250e-03
  %688 = fmul fast float %205, 0x3F70624DE0000000
  %689 = fadd fast float %688, 0x3F70624DE0000000
  %690 = icmp sgt i32 %537, -1
  br i1 %690, label %691, label %753

; <label>:691                                     ; preds = %541
  br label %692

; <label>:692                                     ; preds = %749, %691
  %693 = phi float [ %724, %749 ], [ %62, %691 ]
  %694 = phi float [ %711, %749 ], [ %62, %691 ]
  %695 = phi float [ %694, %749 ], [ %62, %691 ]
  %696 = phi i32 [ %750, %749 ], [ 0, %691 ]
  %697 = sitofp i32 %696 to float
  %698 = fadd fast float %219, 5.000000e-01
  %699 = call float @dx.op.unary.f32(i32 22, float %698)  ; Frc(value)
  %700 = fadd fast float %697, %699
  %701 = sitofp i32 %537 to float
  %702 = fdiv fast float %700, %701
  %703 = fmul fast float %702, %702
  %704 = call float @dx.op.binary.f32(i32 36, float %703, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %705 = fmul fast float %704, %667
  %706 = fmul fast float %704, %669
  %707 = fmul fast float %704, %670
  %708 = fadd fast float %705, %678
  %709 = fadd fast float %706, %679
  %710 = fadd fast float %707, %611
  %711 = fdiv fast float 1.000000e+00, %710
  %712 = icmp ne i32 %552, 0
  %713 = fmul fast float %687, %704
  %714 = call float @dx.op.binary.f32(i32 36, float %713, float %553)  ; FMin(a,b)
  %715 = select i1 %712, float %714, float 0.000000e+00
  %716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %708, float %709, float undef, float undef, i32 0, i32 0, i32 undef, float %715)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = fcmp fast ogt float %717, -1.000000e+00
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %721 = select i1 %718, float %720, float 1.000000e+00
  %722 = fadd fast float %717, 1.000000e+00
  %723 = fmul fast float %721, %722
  %724 = call float @dx.op.unary.f32(i32 6, float %723)  ; FAbs(value)
  %725 = fmul fast float %724, %689
  %726 = fsub fast float %711, %724
  %727 = fsub fast float %726, %725
  %728 = fcmp fast ogt float %727, 0.000000e+00
  %729 = fcmp fast ogt float %532, 0.000000e+00
  br i1 %729, label %730, label %733, !dx.controlflow.hints !45

; <label>:730                                     ; preds = %692
  %731 = fsub fast float %711, %695
  %732 = call float @dx.op.binary.f32(i32 35, float %731, float %532)  ; FMax(a,b)
  br label %733

; <label>:733                                     ; preds = %730, %692
  %734 = phi float [ %732, %730 ], [ %529, %692 ]
  %735 = fcmp fast olt float %727, %734
  %736 = fcmp uge float %717, -1.000000e+00
  %737 = or i1 %55, %736
  %738 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %739 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %740 = fcmp fast oeq float %708, %738
  %741 = fcmp fast oeq float %709, %739
  %742 = and i1 %740, %741
  %743 = and i1 %737, %742
  %744 = and i1 %728, %735
  %745 = and i1 %744, %743
  %746 = fcmp fast ogt float %704, %686
  %747 = and i1 %746, %745
  %748 = zext i1 %747 to i32
  br i1 %747, label %752, label %749, !dx.controlflow.hints !46

; <label>:749                                     ; preds = %733
  %750 = add nuw nsw i32 %696, 1
  %751 = icmp slt i32 %696, %537
  br i1 %751, label %692, label %752

; <label>:752                                     ; preds = %749, %733
  br label %753

; <label>:753                                     ; preds = %752, %541
  %754 = phi i32 [ 0, %541 ], [ %748, %752 ]
  %755 = phi float [ %62, %541 ], [ %724, %752 ]
  %756 = phi float [ %62, %541 ], [ %693, %752 ]
  %757 = phi float [ %62, %541 ], [ %711, %752 ]
  %758 = phi float [ %62, %541 ], [ %694, %752 ]
  %759 = fsub fast float %758, %756
  %760 = fsub fast float %757, %755
  %761 = fsub fast float %759, %760
  %762 = fcmp fast une float %761, 0.000000e+00
  %763 = fmul fast float %759, %757
  %764 = fmul fast float %758, %760
  %765 = fsub fast float %763, %764
  %766 = fdiv fast float 1.000000e+00, %761
  %767 = fmul fast float %765, %766
  %768 = select i1 %762, float %767, float %757
  %769 = fdiv fast float 1.000000e+00, %768
  %770 = fsub fast float %769, %611
  %771 = fdiv fast float %770, %670
  %772 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %773 = fmul fast float %772, %667
  %774 = fmul fast float %772, %669
  %775 = fadd fast float %773, %678
  %776 = fadd fast float %774, %679
  %777 = fadd fast float %775, -5.000000e-01
  %778 = fadd fast float %776, -5.000000e-01
  %779 = call float @dx.op.unary.f32(i32 6, float %777)  ; FAbs(value)
  %780 = call float @dx.op.unary.f32(i32 6, float %778)  ; FAbs(value)
  %781 = fadd fast float %779, -5.000000e-01
  %782 = fadd fast float %780, -5.000000e-01
  %783 = call float @dx.op.binary.f32(i32 35, float %781, float %782)  ; FMax(a,b)
  %784 = fcmp fast olt float %783, 0.000000e+00
  %785 = icmp ne i32 %754, 0
  %786 = and i1 %785, %784
  %787 = select i1 %786, float 0.000000e+00, float 1.000000e+00
  br label %788

; <label>:788                                     ; preds = %753, %524
  %789 = phi float [ %787, %753 ], [ 1.000000e+00, %524 ]
  %790 = fmul fast float %789, %517
  %791 = fmul fast float %789, %517
  %792 = fmul fast float %789, %517
  br label %793

; <label>:793                                     ; preds = %788, %516
  %794 = phi float [ %790, %788 ], [ %517, %516 ]
  %795 = phi float [ %791, %788 ], [ %517, %516 ]
  %796 = phi float [ %792, %788 ], [ %517, %516 ]
  %797 = call float @dx.op.binary.f32(i32 36, float %795, float %796)  ; FMin(a,b)
  %798 = call float @dx.op.binary.f32(i32 36, float %794, float %797)  ; FMin(a,b)
  %799 = fcmp fast ogt float %798, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %800 = zext i1 %799 to i32
  %801 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %800 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %802 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %803 = icmp eq i32 %802, 0
  %804 = select i1 %803, i32 0, i32 %291
  %805 = or i32 %286, %804
  %806 = lshr i32 %224, 5
  %807 = lshr i32 %225, 5
  %808 = fcmp fast olt float %794, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %809 = and i32 %24, 31
  %810 = zext i1 %808 to i32
  %811 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %810, i32 addrspace(3)* %811, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %812 = icmp ult i32 %809, 16
  br i1 %812, label %813, label %819, !dx.controlflow.hints !47

; <label>:813                                     ; preds = %793
  %814 = add i32 %24, 16
  %815 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %814
  %816 = load i32, i32 addrspace(3)* %815, align 4, !tbaa !36
  %817 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %818 = and i32 %817, %816
  store i32 %818, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %819

; <label>:819                                     ; preds = %813, %793
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %820 = icmp ult i32 %809, 8
  br i1 %820, label %821, label %827, !dx.controlflow.hints !48

; <label>:821                                     ; preds = %819
  %822 = add i32 %24, 8
  %823 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %822
  %824 = load i32, i32 addrspace(3)* %823, align 4, !tbaa !36
  %825 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %826 = and i32 %825, %824
  store i32 %826, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %827

; <label>:827                                     ; preds = %821, %819
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %828 = icmp ult i32 %809, 4
  br i1 %828, label %829, label %835, !dx.controlflow.hints !49

; <label>:829                                     ; preds = %827
  %830 = add i32 %24, 4
  %831 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %830
  %832 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !36
  %833 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %834 = and i32 %833, %832
  store i32 %834, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %835

; <label>:835                                     ; preds = %829, %827
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %836 = icmp ult i32 %809, 2
  br i1 %836, label %837, label %843, !dx.controlflow.hints !50

; <label>:837                                     ; preds = %835
  %838 = add i32 %24, 2
  %839 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %838
  %840 = load i32, i32 addrspace(3)* %839, align 4, !tbaa !36
  %841 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %842 = and i32 %841, %840
  store i32 %842, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %843

; <label>:843                                     ; preds = %837, %835
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %844 = icmp eq i32 %809, 0
  br i1 %844, label %845, label %851, !dx.controlflow.hints !51

; <label>:845                                     ; preds = %843
  %846 = add i32 %24, 1
  %847 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %846
  %848 = load i32, i32 addrspace(3)* %847, align 4, !tbaa !36
  %849 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %850 = and i32 %849, %848
  store i32 %850, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %851

; <label>:851                                     ; preds = %845, %843
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %852 = and i32 %24, -64
  %853 = or i32 %852, 32
  %854 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %852
  %855 = load i32, i32 addrspace(3)* %854, align 4, !tbaa !36
  %856 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %853
  %857 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !36
  %858 = and i32 %857, %855
  %859 = icmp ne i32 %858, 0
  %860 = fcmp fast ogt float %794, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %861 = zext i1 %860 to i32
  store i32 %861, i32 addrspace(3)* %811, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %812, label %862, label %868, !dx.controlflow.hints !47

; <label>:862                                     ; preds = %851
  %863 = add i32 %24, 16
  %864 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %863
  %865 = load i32, i32 addrspace(3)* %864, align 4, !tbaa !36
  %866 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %867 = and i32 %866, %865
  store i32 %867, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %868

; <label>:868                                     ; preds = %862, %851
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %820, label %869, label %875, !dx.controlflow.hints !48

; <label>:869                                     ; preds = %868
  %870 = add i32 %24, 8
  %871 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %870
  %872 = load i32, i32 addrspace(3)* %871, align 4, !tbaa !36
  %873 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %874 = and i32 %873, %872
  store i32 %874, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %875

; <label>:875                                     ; preds = %869, %868
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %828, label %876, label %882, !dx.controlflow.hints !49

; <label>:876                                     ; preds = %875
  %877 = add i32 %24, 4
  %878 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %877
  %879 = load i32, i32 addrspace(3)* %878, align 4, !tbaa !36
  %880 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %881 = and i32 %880, %879
  store i32 %881, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %882

; <label>:882                                     ; preds = %876, %875
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %836, label %883, label %889, !dx.controlflow.hints !50

; <label>:883                                     ; preds = %882
  %884 = add i32 %24, 2
  %885 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %884
  %886 = load i32, i32 addrspace(3)* %885, align 4, !tbaa !36
  %887 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %888 = and i32 %887, %886
  store i32 %888, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %889

; <label>:889                                     ; preds = %883, %882
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %844, label %890, label %896, !dx.controlflow.hints !51

; <label>:890                                     ; preds = %889
  %891 = add i32 %24, 1
  %892 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %891
  %893 = load i32, i32 addrspace(3)* %892, align 4, !tbaa !36
  %894 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !36
  %895 = and i32 %894, %893
  store i32 %895, i32 addrspace(3)* %811, align 4, !tbaa !36
  br label %896

; <label>:896                                     ; preds = %890, %889
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %897 = load i32, i32 addrspace(3)* %854, align 4, !tbaa !36
  %898 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !36
  %899 = and i32 %898, %897
  %900 = or i32 %899, %858
  %901 = icmp eq i32 %900, 0
  %902 = lshr i32 %225, 1
  %903 = and i32 %902, 8
  %904 = lshr i32 %224, 2
  %905 = and i32 %904, 4
  %906 = or i32 %903, %36
  %907 = or i32 %906, %905
  br i1 %279, label %908, label %950, !dx.controlflow.hints !52

; <label>:908                                     ; preds = %896
  %909 = icmp ne i32 %899, 0
  %910 = shl i32 1, %907
  %911 = select i1 %909, i32 %910, i32 0
  %912 = shl i32 65536, %907
  %913 = select i1 %859, i32 %912, i32 0
  %914 = or i32 %911, %913
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %918, label %916, !dx.controlflow.hints !53

; <label>:916                                     ; preds = %908
  %917 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %806, i32 %807, i32 %289, i32 %914)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %918

; <label>:918                                     ; preds = %916, %908
  br i1 %901, label %919, label %948

; <label>:919                                     ; preds = %918
  br label %920

; <label>:920                                     ; preds = %945, %919
  %921 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %806, i32 %807, i32 %289, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %922 = and i32 %921, 3
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %924, label %945, !dx.controlflow.hints !54

; <label>:924                                     ; preds = %920
  %925 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.i32 %926, 3
  %928 = call i32 @dx.op.binary.i32(i32 40, i32 %927, i32 %925)  ; UMin(a,b)
  %929 = extractvalue %dx.types.CBufRet.i32 %926, 2
  %930 = udiv i32 %928, %929
  %931 = urem i32 %928, %929
  %932 = extractvalue %dx.types.CBufRet.i32 %926, 1
  %933 = urem i32 %931, %932
  %934 = udiv i32 %931, %932
  %935 = shl i32 %933, 6
  %936 = and i32 %935, 32704
  %937 = shl i32 %934, 15
  %938 = and i32 %937, 8355840
  %939 = shl i32 %930, 23
  %940 = and i32 %939, 2139095040
  %941 = or i32 %940, %936
  %942 = or i32 %941, %938
  %943 = or i32 %942, 3
  %944 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %806, i32 %807, i32 %289, i32 %943)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %948

; <label>:945                                     ; preds = %920
  %946 = icmp eq i32 %922, 3
  br i1 %946, label %947, label %920, !dx.controlflow.hints !55

; <label>:947                                     ; preds = %945
  br label %948

; <label>:948                                     ; preds = %947, %924, %918
  %949 = phi i32 [ 0, %918 ], [ %943, %924 ], [ %921, %947 ]
  store i32 %949, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %950

; <label>:950                                     ; preds = %948, %896
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %951 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br i1 %901, label %952, label %967, !dx.controlflow.hints !56

; <label>:952                                     ; preds = %950
  %953 = lshr i32 %951, 23
  %954 = and i32 %953, 255
  %955 = and i32 %224, 31
  %956 = and i32 %225, 31
  %957 = lshr i32 %951, 1
  %958 = and i32 %957, 16352
  %959 = lshr i32 %951, 10
  %960 = and i32 %959, 8160
  %961 = or i32 %958, %955
  %962 = or i32 %960, %956
  %963 = fmul fast float %794, 2.550000e+02
  %964 = fadd fast float %963, %218
  %965 = call float @dx.op.unary.f32(i32 27, float %964)  ; Round_ni(value)
  %966 = fmul fast float %965, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %961, i32 %962, i32 %954, float %966, float %966, float %966, float %966, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %967

; <label>:967                                     ; preds = %952, %950
  %968 = icmp eq i32 %287, %291
  br i1 %968, label %969, label %285, !llvm.loop !57

; <label>:969                                     ; preds = %967
  br label %970

; <label>:970                                     ; preds = %969, %281
  %971 = phi i32 [ 0, %281 ], [ %805, %969 ]
  %972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.i32 %972, 0
  %974 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %973, i32 %254)  ; UMad(a,b,c)
  %975 = shl i32 %974, 2
  %976 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %975, i32 undef, i32 undef, i32 %971)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %977 = add i32 %254, 1
  %978 = icmp ugt i32 %977, %250
  br i1 %978, label %979, label %253

; <label>:979                                     ; preds = %970
  br label %980

; <label>:980                                     ; preds = %979, %223, %0
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
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
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}

