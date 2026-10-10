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
; shader hash: 2d39f9288f49cd2c57ec2ae63ef0e086
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
  br i1 %222, label %1082, label %223, !dx.controlflow.hints !35

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
  %244 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %245 = udiv i32 %24, %244
  %246 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %242, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %247 = icmp eq i32 %244, 64
  br i1 %247, label %274, label %248, !dx.controlflow.hints !36

; <label>:248                                     ; preds = %223
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %249, label %250, label %252, !dx.controlflow.hints !37

; <label>:250                                     ; preds = %248
  %251 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %246, i32 addrspace(3)* %251, align 4, !tbaa !38
  br label %252

; <label>:252                                     ; preds = %250, %248
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %253 = icmp eq i32 %244, 32
  br i1 %253, label %254, label %259, !dx.controlflow.hints !42

; <label>:254                                     ; preds = %252
  %255 = xor i32 %245, 1
  %256 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %255
  %257 = load i32, i32 addrspace(3)* %256, align 4, !tbaa !38
  %258 = call i32 @dx.op.binary.i32(i32 40, i32 %246, i32 %257)  ; UMin(a,b)
  br label %274

; <label>:259                                     ; preds = %252
  %260 = icmp eq i32 %244, 16
  br i1 %260, label %261, label %274, !dx.controlflow.hints !43

; <label>:261                                     ; preds = %259
  %262 = xor i32 %245, 3
  %263 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %262
  %264 = load i32, i32 addrspace(3)* %263, align 4, !tbaa !38
  %265 = xor i32 %245, 2
  %266 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %265
  %267 = load i32, i32 addrspace(3)* %266, align 4, !tbaa !38
  %268 = call i32 @dx.op.binary.i32(i32 40, i32 %267, i32 %264)  ; UMin(a,b)
  %269 = xor i32 %245, 1
  %270 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %269
  %271 = load i32, i32 addrspace(3)* %270, align 4, !tbaa !38
  %272 = call i32 @dx.op.binary.i32(i32 40, i32 %246, i32 %271)  ; UMin(a,b)
  %273 = call i32 @dx.op.binary.i32(i32 40, i32 %272, i32 %268)  ; UMin(a,b)
  br label %274

; <label>:274                                     ; preds = %261, %259, %254, %223
  %275 = phi i32 [ %258, %254 ], [ %273, %261 ], [ %246, %223 ], [ 0, %259 ]
  %276 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %243, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %247, label %303, label %277, !dx.controlflow.hints !44

; <label>:277                                     ; preds = %274
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %278, label %279, label %281, !dx.controlflow.hints !45

; <label>:279                                     ; preds = %277
  %280 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %276, i32 addrspace(3)* %280, align 4, !tbaa !38
  br label %281

; <label>:281                                     ; preds = %279, %277
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %282 = icmp eq i32 %244, 32
  br i1 %282, label %283, label %288, !dx.controlflow.hints !46

; <label>:283                                     ; preds = %281
  %284 = xor i32 %245, 1
  %285 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %284
  %286 = load i32, i32 addrspace(3)* %285, align 4, !tbaa !38
  %287 = call i32 @dx.op.binary.i32(i32 39, i32 %276, i32 %286)  ; UMax(a,b)
  br label %303

; <label>:288                                     ; preds = %281
  %289 = icmp eq i32 %244, 16
  br i1 %289, label %290, label %303, !dx.controlflow.hints !47

; <label>:290                                     ; preds = %288
  %291 = xor i32 %245, 3
  %292 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %291
  %293 = load i32, i32 addrspace(3)* %292, align 4, !tbaa !38
  %294 = xor i32 %245, 2
  %295 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %294
  %296 = load i32, i32 addrspace(3)* %295, align 4, !tbaa !38
  %297 = call i32 @dx.op.binary.i32(i32 39, i32 %296, i32 %293)  ; UMax(a,b)
  %298 = xor i32 %245, 1
  %299 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %298
  %300 = load i32, i32 addrspace(3)* %299, align 4, !tbaa !38
  %301 = call i32 @dx.op.binary.i32(i32 39, i32 %276, i32 %300)  ; UMax(a,b)
  %302 = call i32 @dx.op.binary.i32(i32 39, i32 %301, i32 %297)  ; UMax(a,b)
  br label %303

; <label>:303                                     ; preds = %290, %288, %283, %274
  %304 = phi i32 [ %287, %283 ], [ %302, %290 ], [ %276, %274 ], [ 0, %288 ]
  %305 = lshr i32 %275, 5
  %306 = lshr i32 %304, 5
  %307 = call i32 @dx.op.binary.i32(i32 40, i32 %306, i32 %234)  ; UMin(a,b)
  %308 = icmp ugt i32 %305, %307
  br i1 %308, label %1082, label %309

; <label>:309                                     ; preds = %303
  br label %310

; <label>:310                                     ; preds = %1072, %309
  %311 = phi i32 [ %1079, %1072 ], [ %305, %309 ]
  %312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.i32 %312, 0
  %314 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %313, i32 %311)  ; UMad(a,b,c)
  %315 = shl i32 %314, 2
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = shl i32 %311, 5
  %319 = sub nsw i32 %242, %318
  %320 = call i32 @dx.op.binary.i32(i32 37, i32 %319, i32 0)  ; IMax(a,b)
  %321 = call i32 @dx.op.binary.i32(i32 38, i32 %320, i32 31)  ; IMin(a,b)
  %322 = sub nsw i32 1, %242
  %323 = add nsw i32 %322, %243
  %324 = call i32 @dx.op.binary.i32(i32 37, i32 %323, i32 0)  ; IMax(a,b)
  %325 = call i32 @dx.op.binary.i32(i32 38, i32 %324, i32 32)  ; IMin(a,b)
  %326 = and i32 %325, 31
  %327 = shl i32 -1, %326
  %328 = xor i32 %327, -1
  %329 = and i32 %321, 31
  %330 = shl i32 %328, %329
  %331 = icmp eq i32 %325, 32
  %332 = select i1 %331, i32 -1, i32 %330
  %333 = and i32 %332, %317
  %334 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %333, i8 1)  ; WaveActiveBit(value,op)
  br i1 %247, label %361, label %335, !dx.controlflow.hints !48

; <label>:335                                     ; preds = %310
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %336 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %336, label %337, label %339, !dx.controlflow.hints !49

; <label>:337                                     ; preds = %335
  %338 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %334, i32 addrspace(3)* %338, align 4, !tbaa !38
  br label %339

; <label>:339                                     ; preds = %337, %335
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %340 = icmp eq i32 %244, 32
  br i1 %340, label %341, label %346, !dx.controlflow.hints !50

; <label>:341                                     ; preds = %339
  %342 = xor i32 %245, 1
  %343 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %342
  %344 = load i32, i32 addrspace(3)* %343, align 4, !tbaa !38
  %345 = or i32 %344, %334
  br label %361

; <label>:346                                     ; preds = %339
  %347 = icmp eq i32 %244, 16
  br i1 %347, label %348, label %361, !dx.controlflow.hints !51

; <label>:348                                     ; preds = %346
  %349 = xor i32 %245, 1
  %350 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %349
  %351 = load i32, i32 addrspace(3)* %350, align 4, !tbaa !38
  %352 = or i32 %351, %334
  %353 = xor i32 %245, 2
  %354 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %353
  %355 = load i32, i32 addrspace(3)* %354, align 4, !tbaa !38
  %356 = or i32 %352, %355
  %357 = xor i32 %245, 3
  %358 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %357
  %359 = load i32, i32 addrspace(3)* %358, align 4, !tbaa !38
  %360 = or i32 %356, %359
  br label %361

; <label>:361                                     ; preds = %348, %346, %341, %310
  %362 = phi i32 [ %345, %341 ], [ %360, %348 ], [ %334, %310 ], [ 0, %346 ]
  br i1 %247, label %363, label %365, !dx.controlflow.hints !52

; <label>:363                                     ; preds = %361
  %364 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %362)  ; WaveReadLaneFirst(value)
  br label %370

; <label>:365                                     ; preds = %361
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %366 = icmp eq i32 %24, 0
  br i1 %366, label %367, label %368, !dx.controlflow.hints !53

; <label>:367                                     ; preds = %365
  store i32 %362, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !38
  br label %368

; <label>:368                                     ; preds = %367, %365
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %369 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !38
  br label %370

; <label>:370                                     ; preds = %368, %363
  %371 = phi i32 [ %364, %363 ], [ %369, %368 ]
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %1072, label %373

; <label>:373                                     ; preds = %370
  br label %374

; <label>:374                                     ; preds = %1069, %373
  %375 = phi i32 [ %923, %1069 ], [ 0, %373 ]
  %376 = phi i32 [ %381, %1069 ], [ %371, %373 ]
  %377 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %376)  ; FirstbitLo(value)
  %378 = add i32 %377, %318
  %379 = and i32 %377, 31
  %380 = shl i32 1, %379
  %381 = xor i32 %380, %376
  %382 = mul i32 %378, 112
  %383 = add i32 %382, 16
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = extractvalue %dx.types.ResRet.f32 %384, 2
  %388 = add i32 %382, 28
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = add i32 %382, 32
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = add i32 %382, 44
  %397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = add i32 %382, 48
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = extractvalue %dx.types.ResRet.f32 %400, 3
  %405 = add i32 %382, 64
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = extractvalue %dx.types.ResRet.f32 %406, 3
  %411 = add i32 %382, 92
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = uitofp i32 %414 to float
  %416 = lshr i32 %413, 16
  %417 = uitofp i32 %416 to float
  %418 = and i32 %390, 65535
  %419 = and i32 %390, 50331648
  %420 = icmp eq i32 %419, 33554432
  %421 = call float @dx.op.dot3.f32(i32 55, float %393, float %394, float %395, float %393, float %394, float %395)  ; Dot3(ax,ay,az,bx,by,bz)
  %422 = fsub fast float %117, %401
  %423 = fsub fast float %118, %402
  %424 = fsub fast float %119, %403
  %425 = call float @dx.op.dot3.f32(i32 55, float %422, float %423, float %424, float %393, float %394, float %395)  ; Dot3(ax,ay,az,bx,by,bz)
  %426 = fdiv fast float %425, %421
  %427 = call float @dx.op.binary.f32(i32 35, float %426, float -1.000000e+00)  ; FMax(a,b)
  %428 = call float @dx.op.binary.f32(i32 36, float %427, float 1.000000e+00)  ; FMin(a,b)
  %429 = fmul fast float %428, %393
  %430 = fmul fast float %428, %394
  %431 = fmul fast float %428, %395
  %432 = fadd fast float %429, %401
  %433 = fadd fast float %430, %402
  %434 = fadd fast float %431, %403
  %435 = fsub fast float %432, %117
  %436 = fsub fast float %433, %118
  %437 = fsub fast float %434, %119
  %438 = call float @dx.op.dot3.f32(i32 55, float %435, float %436, float %437, float %435, float %436, float %437)  ; Dot3(ax,ay,az,bx,by,bz)
  %439 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %440 = fdiv fast float 1.000000e+00, %439
  %441 = fmul fast float %435, %440
  %442 = fmul fast float %436, %440
  %443 = fmul fast float %437, %440
  br i1 %420, label %444, label %468, !dx.controlflow.hints !54

; <label>:444                                     ; preds = %374
  %445 = fmul fast float %409, %385
  %446 = fmul fast float %409, %386
  %447 = fmul fast float %409, %387
  %448 = fsub fast float %445, %117
  %449 = fadd fast float %448, %432
  %450 = fsub fast float %446, %118
  %451 = fadd fast float %450, %433
  %452 = fsub fast float %447, %119
  %453 = fadd fast float %452, %434
  %454 = call float @dx.op.dot3.f32(i32 55, float %449, float %451, float %453, float %449, float %451, float %453)  ; Dot3(ax,ay,az,bx,by,bz)
  %455 = call float @dx.op.unary.f32(i32 25, float %454)  ; Rsqrt(value)
  %456 = fmul fast float %455, %449
  %457 = fmul fast float %455, %451
  %458 = fmul fast float %455, %453
  %459 = fsub fast float %117, %432
  %460 = fsub fast float %118, %433
  %461 = fsub fast float %119, %434
  %462 = fsub fast float -0.000000e+00, %459
  %463 = fsub fast float -0.000000e+00, %460
  %464 = fsub fast float -0.000000e+00, %461
  %465 = call float @dx.op.dot3.f32(i32 55, float %462, float %463, float %464, float %385, float %386, float %387)  ; Dot3(ax,ay,az,bx,by,bz)
  %466 = fcmp fast ogt float %465, 0.000000e+00
  %467 = uitofp i1 %466 to float
  br label %468

; <label>:468                                     ; preds = %444, %374
  %469 = phi float [ %467, %444 ], [ 1.000000e+00, %374 ]
  %470 = phi float [ %456, %444 ], [ %441, %374 ]
  %471 = phi float [ %457, %444 ], [ %442, %374 ]
  %472 = phi float [ %458, %444 ], [ %443, %374 ]
  %473 = call float @dx.op.dot3.f32(i32 55, float %385, float %386, float %387, float %470, float %471, float %472)  ; Dot3(ax,ay,az,bx,by,bz)
  %474 = fmul fast float %473, %473
  %475 = call float @dx.op.unary.f32(i32 7, float %474)  ; Saturate(value)
  %476 = fsub fast float 1.000000e+00, %475
  %477 = fmul fast float %476, 5.000000e-01
  %478 = fcmp fast ogt float %473, 0.000000e+00
  %479 = fsub fast float 1.000000e+00, %477
  %480 = select i1 %478, float %477, float %479
  %481 = fmul fast float %480, %417
  %482 = fadd fast float %481, %415
  %483 = fmul fast float %482, 0x3EF0001000000000
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %483, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = fmul fast float %473, %407
  %487 = fadd fast float %486, %408
  %488 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %489 = select i1 %420, float %488, float 1.000000e+00
  %490 = fmul fast float %439, %404
  %491 = fsub fast float 1.000000e+00, %490
  %492 = fmul fast float %491, %410
  %493 = call float @dx.op.unary.f32(i32 7, float %492)  ; Saturate(value)
  %494 = fmul fast float %493, %489
  %495 = fmul fast float %494, 2.000000e+00
  %496 = fsub fast float 3.000000e+00, %495
  %497 = fmul fast float %485, %469
  %498 = fmul fast float %494, %494
  %499 = fmul fast float %498, %497
  %500 = fmul fast float %499, %496
  %501 = icmp ne i32 %418, 255
  %502 = call float @dx.op.binary.f32(i32 36, float %500, float %500)  ; FMin(a,b)
  %503 = call float @dx.op.binary.f32(i32 36, float %500, float %502)  ; FMin(a,b)
  %504 = fcmp fast ogt float %503, 0.000000e+00
  %505 = and i1 %501, %504
  br i1 %505, label %506, label %605, !dx.controlflow.hints !55

; <label>:506                                     ; preds = %468
  %507 = select i1 %420, float 1.000000e+00, float %488
  %508 = mul nuw nsw i32 %418, 176
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = extractvalue %dx.types.ResRet.f32 %509, 3
  %514 = add nuw nsw i32 %508, 16
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = add nuw nsw i32 %508, 32
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = add nuw nsw i32 %508, 48
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  %528 = extractvalue %dx.types.ResRet.f32 %524, 3
  %529 = add nuw nsw i32 %508, 64
  %530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = extractvalue %dx.types.ResRet.f32 %530, 2
  %534 = extractvalue %dx.types.ResRet.f32 %530, 3
  %535 = add nuw nsw i32 %508, 80
  %536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = extractvalue %dx.types.ResRet.f32 %536, 3
  %541 = add nuw nsw i32 %508, 96
  %542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = extractvalue %dx.types.ResRet.f32 %542, 1
  %545 = extractvalue %dx.types.ResRet.f32 %542, 2
  %546 = extractvalue %dx.types.ResRet.f32 %542, 3
  %547 = bitcast float %517 to i32
  %548 = fmul fast float %522, %146
  %549 = fmul fast float %522, %147
  %550 = fmul fast float %522, %148
  %551 = fadd fast float %548, %117
  %552 = fadd fast float %549, %118
  %553 = fadd fast float %550, %119
  %554 = fmul fast float %551, %525
  %555 = call float @dx.op.tertiary.f32(i32 46, float %552, float %531, float %554)  ; FMad(a,b,c)
  %556 = call float @dx.op.tertiary.f32(i32 46, float %553, float %537, float %555)  ; FMad(a,b,c)
  %557 = fadd fast float %556, %543
  %558 = fmul fast float %551, %526
  %559 = call float @dx.op.tertiary.f32(i32 46, float %552, float %532, float %558)  ; FMad(a,b,c)
  %560 = call float @dx.op.tertiary.f32(i32 46, float %553, float %538, float %559)  ; FMad(a,b,c)
  %561 = fadd fast float %560, %544
  %562 = fmul fast float %551, %527
  %563 = call float @dx.op.tertiary.f32(i32 46, float %552, float %533, float %562)  ; FMad(a,b,c)
  %564 = call float @dx.op.tertiary.f32(i32 46, float %553, float %539, float %563)  ; FMad(a,b,c)
  %565 = fadd fast float %564, %545
  %566 = fmul fast float %551, %528
  %567 = call float @dx.op.tertiary.f32(i32 46, float %552, float %534, float %566)  ; FMad(a,b,c)
  %568 = call float @dx.op.tertiary.f32(i32 46, float %553, float %540, float %567)  ; FMad(a,b,c)
  %569 = fadd fast float %568, %546
  %570 = fdiv fast float %557, %569
  %571 = fdiv fast float %561, %569
  %572 = fdiv fast float %565, %569
  %573 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %572)  ; FMax(a,b)
  %574 = fmul fast float %218, 0x401921FB60000000
  %575 = call float @dx.op.unary.f32(i32 13, float %574)  ; Sin(value)
  %576 = call float @dx.op.unary.f32(i32 12, float %574)  ; Cos(value)
  %577 = fsub fast float -0.000000e+00, %575
  %578 = fmul fast float %512, 5.000000e-01
  %579 = call float @dx.op.dot2.f32(i32 54, float %218, float %218, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %580 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %581 = fmul fast float %580, 0x404A7DD040000000
  %582 = call float @dx.op.unary.f32(i32 22, float %581)  ; Frc(value)
  %583 = fmul fast float %582, %521
  %584 = fadd fast float %583, %578
  %585 = call float @dx.op.tertiary.f32(i32 46, float %584, float %577, float 0.000000e+00)  ; FMad(a,b,c)
  %586 = call float @dx.op.tertiary.f32(i32 46, float %584, float %576, float 0.000000e+00)  ; FMad(a,b,c)
  %587 = fadd fast float %585, %570
  %588 = fadd fast float %586, %571
  %589 = fmul fast float %587, %516
  %590 = fmul fast float %588, %516
  %591 = call float @dx.op.binary.f32(i32 35, float %589, float %512)  ; FMax(a,b)
  %592 = call float @dx.op.binary.f32(i32 35, float %590, float %512)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 36, float %591, float %513)  ; FMin(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %592, float %513)  ; FMin(a,b)
  %595 = fadd fast float %593, %510
  %596 = fadd fast float %594, %511
  %597 = uitofp i32 %547 to float
  %598 = fadd fast float %573, %520
  %599 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %595, float %596, float %597, float undef, i32 0, i32 0, i32 undef, float %598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = fadd fast float %600, -1.000000e+00
  %602 = fmul fast float %601, %507
  %603 = fadd fast float %602, 1.000000e+00
  %604 = fmul fast float %603, %500
  br label %605

; <label>:605                                     ; preds = %506, %468
  %606 = phi float [ %604, %506 ], [ %500, %468 ]
  %607 = call float @dx.op.binary.f32(i32 36, float %606, float %606)  ; FMin(a,b)
  %608 = call float @dx.op.binary.f32(i32 36, float %606, float %607)  ; FMin(a,b)
  %609 = fcmp fast ogt float %608, 0.000000e+00
  %610 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %441, float %442, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = fcmp fast ogt float %610, 0.000000e+00
  %612 = and i1 %609, %611
  br i1 %612, label %613, label %882, !dx.controlflow.hints !56

; <label>:613                                     ; preds = %605
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %618 = select i1 %55, float %615, float %617
  %619 = extractvalue %dx.types.CBufRet.f32 %614, 2
  %620 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %621 = select i1 %55, float %619, float %620
  %622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.i32 %622, 0
  %624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.i32 %624, 0
  %626 = select i1 %55, i32 %623, i32 %625
  %627 = fcmp fast olt float %618, 5.000000e-01
  %628 = icmp eq i32 %626, 0
  %629 = or i1 %627, %628
  br i1 %629, label %877, label %630, !dx.controlflow.hints !57

; <label>:630                                     ; preds = %613
  %631 = fsub fast float %401, %117
  %632 = fsub fast float %402, %118
  %633 = fsub fast float %403, %119
  %634 = fmul fast float %631, %631
  %635 = fmul fast float %632, %632
  %636 = fadd fast float %634, %635
  %637 = fmul fast float %633, %633
  %638 = fadd fast float %636, %637
  %639 = call float @dx.op.unary.f32(i32 24, float %638)  ; Sqrt(value)
  %640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.i32 %640, 0
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %618, %398
  %644 = fdiv fast float %643, %639
  %645 = call float @dx.op.binary.f32(i32 36, float %644, float 1.000000e+01)  ; FMin(a,b)
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 0
  %648 = extractvalue %dx.types.CBufRet.f32 %646, 1
  %649 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %650 = extractvalue %dx.types.CBufRet.f32 %646, 3
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  %653 = extractvalue %dx.types.CBufRet.f32 %651, 1
  %654 = extractvalue %dx.types.CBufRet.f32 %651, 2
  %655 = extractvalue %dx.types.CBufRet.f32 %651, 3
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 0
  %658 = extractvalue %dx.types.CBufRet.f32 %656, 1
  %659 = extractvalue %dx.types.CBufRet.f32 %656, 2
  %660 = extractvalue %dx.types.CBufRet.f32 %656, 3
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  %663 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %664 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %665 = extractvalue %dx.types.CBufRet.f32 %661, 3
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 0
  %668 = extractvalue %dx.types.CBufRet.f32 %666, 1
  %669 = extractvalue %dx.types.CBufRet.f32 %666, 2
  %670 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %673 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %674 = extractvalue %dx.types.CBufRet.f32 %671, 2
  %675 = extractvalue %dx.types.CBufRet.f32 %671, 3
  %676 = select i1 %55, float %647, float %662
  %677 = select i1 %55, float %652, float %667
  %678 = select i1 %55, float %657, float %672
  %679 = select i1 %55, float %648, float %663
  %680 = select i1 %55, float %653, float %668
  %681 = select i1 %55, float %658, float %673
  %682 = select i1 %55, float %649, float %664
  %683 = select i1 %55, float %654, float %669
  %684 = select i1 %55, float %659, float %674
  %685 = select i1 %55, float %650, float %665
  %686 = select i1 %55, float %655, float %670
  %687 = select i1 %55, float %660, float %675
  %688 = fmul fast float %219, 0x401061CAC0000000
  %689 = fmul fast float %219, 0x4023E1D7E0000000
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %693 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %694 = extractvalue %dx.types.CBufRet.f32 %690, 3
  %695 = fsub fast float -0.000000e+00, %441
  %696 = fmul fast float %443, %695
  %697 = fmul fast float %441, %695
  %698 = fmul fast float %442, %442
  %699 = fsub fast float %697, %698
  %700 = fdiv fast float 1.000000e+00, %62
  %701 = fmul fast float %693, %51
  %702 = fmul fast float %694, %52
  %703 = fmul fast float %618, %441
  %704 = fmul fast float %618, %443
  %705 = fadd fast float %703, %117
  %706 = fadd fast float %704, %119
  %707 = fadd fast float %689, 5.000000e-01
  %708 = call float @dx.op.unary.f32(i32 22, float %707)  ; Frc(value)
  %709 = bitcast float %708 to i32
  %710 = ashr i32 %709, 1
  %711 = add nsw i32 %710, 532487669
  %712 = bitcast i32 %711 to float
  %713 = fmul fast float %712, %645
  %714 = fadd fast float %688, 5.000000e-01
  %715 = call float @dx.op.unary.f32(i32 22, float %714)  ; Frc(value)
  %716 = fmul fast float %715, 0x401921FB60000000
  %717 = call float @dx.op.unary.f32(i32 12, float %716)  ; Cos(value)
  %718 = fmul fast float %717, %717
  %719 = fsub fast float 1.000000e+00, %718
  %720 = bitcast float %719 to i32
  %721 = ashr i32 %720, 1
  %722 = add nsw i32 %721, 532487669
  %723 = bitcast i32 %722 to float
  %724 = fmul fast float %713, %717
  %725 = fmul fast float %724, %442
  %726 = fmul fast float %724, %695
  %727 = fadd fast float %705, %725
  %728 = fmul fast float %723, %713
  %729 = fmul fast float %696, %728
  %730 = fmul fast float %728, %443
  %731 = fmul fast float %728, %699
  %732 = fsub fast float %727, %729
  %733 = fadd fast float %730, %618
  %734 = fmul fast float %733, %442
  %735 = fadd fast float %726, %118
  %736 = fadd fast float %735, %734
  %737 = fadd fast float %706, %731
  %738 = fmul fast float %732, %676
  %739 = call float @dx.op.tertiary.f32(i32 46, float %736, float %679, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %737, float %682, float %739)  ; FMad(a,b,c)
  %741 = fadd fast float %740, %685
  %742 = fmul fast float %732, %677
  %743 = call float @dx.op.tertiary.f32(i32 46, float %736, float %680, float %742)  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float %737, float %683, float %743)  ; FMad(a,b,c)
  %745 = fadd fast float %744, %686
  %746 = fmul fast float %732, %678
  %747 = call float @dx.op.tertiary.f32(i32 46, float %736, float %681, float %746)  ; FMad(a,b,c)
  %748 = call float @dx.op.tertiary.f32(i32 46, float %737, float %684, float %747)  ; FMad(a,b,c)
  %749 = fadd fast float %748, %687
  %750 = fdiv fast float 1.000000e+00, %749
  %751 = fmul fast float %741, 5.000000e-01
  %752 = fmul fast float %745, -5.000000e-01
  %753 = fmul fast float %751, %750
  %754 = fmul fast float %752, %750
  %755 = fsub fast float 5.000000e-01, %701
  %756 = fadd fast float %755, %753
  %757 = fsub fast float 5.000000e-01, %702
  %758 = fadd fast float %757, %754
  %759 = fsub fast float %750, %700
  %760 = call float @dx.op.dot2.f32(i32 54, float %756, float %758, float %756, float %758)  ; Dot2(ax,ay,bx,by)
  %761 = call float @dx.op.binary.f32(i32 35, float %760, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %762 = call float @dx.op.dot2.f32(i32 54, float %691, float %692, float %691, float %692)  ; Dot2(ax,ay,bx,by)
  %763 = fmul fast float %762, %761
  %764 = call float @dx.op.unary.f32(i32 25, float %763)  ; Rsqrt(value)
  %765 = fmul fast float %764, %756
  %766 = fmul fast float %764, %758
  %767 = fadd fast float %765, %701
  %768 = fadd fast float %766, %702
  %769 = fmul fast float %756, %691
  %770 = fmul fast float %758, %692
  %771 = fmul fast float %769, %769
  %772 = fmul fast float %770, %770
  %773 = fadd fast float %771, %772
  %774 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %775 = fdiv fast float 1.000000e+00, %774
  %776 = fmul fast float %774, 3.906250e-03
  %777 = fmul fast float %205, 0x3F70624DE0000000
  %778 = fadd fast float %777, 0x3F70624DE0000000
  %779 = icmp sgt i32 %626, -1
  br i1 %779, label %780, label %842

; <label>:780                                     ; preds = %630
  br label %781

; <label>:781                                     ; preds = %838, %780
  %782 = phi float [ %813, %838 ], [ %62, %780 ]
  %783 = phi float [ %800, %838 ], [ %62, %780 ]
  %784 = phi float [ %783, %838 ], [ %62, %780 ]
  %785 = phi i32 [ %839, %838 ], [ 0, %780 ]
  %786 = sitofp i32 %785 to float
  %787 = fadd fast float %219, 5.000000e-01
  %788 = call float @dx.op.unary.f32(i32 22, float %787)  ; Frc(value)
  %789 = fadd fast float %786, %788
  %790 = sitofp i32 %626 to float
  %791 = fdiv fast float %789, %790
  %792 = fmul fast float %791, %791
  %793 = call float @dx.op.binary.f32(i32 36, float %792, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %794 = fmul fast float %793, %756
  %795 = fmul fast float %793, %758
  %796 = fmul fast float %793, %759
  %797 = fadd fast float %794, %767
  %798 = fadd fast float %795, %768
  %799 = fadd fast float %796, %700
  %800 = fdiv fast float 1.000000e+00, %799
  %801 = icmp ne i32 %641, 0
  %802 = fmul fast float %776, %793
  %803 = call float @dx.op.binary.f32(i32 36, float %802, float %642)  ; FMin(a,b)
  %804 = select i1 %801, float %803, float 0.000000e+00
  %805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %797, float %798, float undef, float undef, i32 0, i32 0, i32 undef, float %804)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = fcmp fast ogt float %806, -1.000000e+00
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %810 = select i1 %807, float %809, float 1.000000e+00
  %811 = fadd fast float %806, 1.000000e+00
  %812 = fmul fast float %810, %811
  %813 = call float @dx.op.unary.f32(i32 6, float %812)  ; FAbs(value)
  %814 = fmul fast float %813, %778
  %815 = fsub fast float %800, %813
  %816 = fsub fast float %815, %814
  %817 = fcmp fast ogt float %816, 0.000000e+00
  %818 = fcmp fast ogt float %621, 0.000000e+00
  br i1 %818, label %819, label %822, !dx.controlflow.hints !58

; <label>:819                                     ; preds = %781
  %820 = fsub fast float %800, %784
  %821 = call float @dx.op.binary.f32(i32 35, float %820, float %621)  ; FMax(a,b)
  br label %822

; <label>:822                                     ; preds = %819, %781
  %823 = phi float [ %821, %819 ], [ %618, %781 ]
  %824 = fcmp fast olt float %816, %823
  %825 = fcmp uge float %806, -1.000000e+00
  %826 = or i1 %55, %825
  %827 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %828 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %829 = fcmp fast oeq float %797, %827
  %830 = fcmp fast oeq float %798, %828
  %831 = and i1 %829, %830
  %832 = and i1 %826, %831
  %833 = and i1 %817, %824
  %834 = and i1 %833, %832
  %835 = fcmp fast ogt float %793, %775
  %836 = and i1 %835, %834
  %837 = zext i1 %836 to i32
  br i1 %836, label %841, label %838, !dx.controlflow.hints !59

; <label>:838                                     ; preds = %822
  %839 = add nuw nsw i32 %785, 1
  %840 = icmp slt i32 %785, %626
  br i1 %840, label %781, label %841

; <label>:841                                     ; preds = %838, %822
  br label %842

; <label>:842                                     ; preds = %841, %630
  %843 = phi i32 [ 0, %630 ], [ %837, %841 ]
  %844 = phi float [ %62, %630 ], [ %813, %841 ]
  %845 = phi float [ %62, %630 ], [ %782, %841 ]
  %846 = phi float [ %62, %630 ], [ %800, %841 ]
  %847 = phi float [ %62, %630 ], [ %783, %841 ]
  %848 = fsub fast float %847, %845
  %849 = fsub fast float %846, %844
  %850 = fsub fast float %848, %849
  %851 = fcmp fast une float %850, 0.000000e+00
  %852 = fmul fast float %848, %846
  %853 = fmul fast float %847, %849
  %854 = fsub fast float %852, %853
  %855 = fdiv fast float 1.000000e+00, %850
  %856 = fmul fast float %854, %855
  %857 = select i1 %851, float %856, float %846
  %858 = fdiv fast float 1.000000e+00, %857
  %859 = fsub fast float %858, %700
  %860 = fdiv fast float %859, %759
  %861 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %862 = fmul fast float %861, %756
  %863 = fmul fast float %861, %758
  %864 = fadd fast float %862, %767
  %865 = fadd fast float %863, %768
  %866 = fadd fast float %864, -5.000000e-01
  %867 = fadd fast float %865, -5.000000e-01
  %868 = call float @dx.op.unary.f32(i32 6, float %866)  ; FAbs(value)
  %869 = call float @dx.op.unary.f32(i32 6, float %867)  ; FAbs(value)
  %870 = fadd fast float %868, -5.000000e-01
  %871 = fadd fast float %869, -5.000000e-01
  %872 = call float @dx.op.binary.f32(i32 35, float %870, float %871)  ; FMax(a,b)
  %873 = fcmp fast olt float %872, 0.000000e+00
  %874 = icmp ne i32 %843, 0
  %875 = and i1 %874, %873
  %876 = select i1 %875, float 0.000000e+00, float 1.000000e+00
  br label %877

; <label>:877                                     ; preds = %842, %613
  %878 = phi float [ %876, %842 ], [ 1.000000e+00, %613 ]
  %879 = fmul fast float %878, %606
  %880 = fmul fast float %878, %606
  %881 = fmul fast float %878, %606
  br label %882

; <label>:882                                     ; preds = %877, %605
  %883 = phi float [ %879, %877 ], [ %606, %605 ]
  %884 = phi float [ %880, %877 ], [ %606, %605 ]
  %885 = phi float [ %881, %877 ], [ %606, %605 ]
  %886 = call float @dx.op.binary.f32(i32 36, float %884, float %885)  ; FMin(a,b)
  %887 = call float @dx.op.binary.f32(i32 36, float %883, float %886)  ; FMin(a,b)
  %888 = fcmp fast ogt float %887, 0x3F10000000000000
  %889 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %888)  ; WaveAnyTrue(cond)
  %890 = icmp ugt i32 %244, 63
  br i1 %890, label %920, label %891, !dx.controlflow.hints !60

; <label>:891                                     ; preds = %882
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %892 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %892, label %893, label %896, !dx.controlflow.hints !61

; <label>:893                                     ; preds = %891
  %894 = zext i1 %889 to i32
  %895 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %894, i32 addrspace(3)* %895, align 4, !tbaa !38
  br label %896

; <label>:896                                     ; preds = %893, %891
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %897 = icmp eq i32 %244, 32
  br i1 %897, label %898, label %904, !dx.controlflow.hints !62

; <label>:898                                     ; preds = %896
  %899 = xor i32 %245, 1
  %900 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %899
  %901 = load i32, i32 addrspace(3)* %900, align 4, !tbaa !38
  %902 = icmp ne i32 %901, 0
  %903 = or i1 %889, %902
  br label %920

; <label>:904                                     ; preds = %896
  %905 = icmp eq i32 %244, 16
  br i1 %905, label %906, label %920, !dx.controlflow.hints !63

; <label>:906                                     ; preds = %904
  %907 = xor i32 %245, 1
  %908 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %907
  %909 = load i32, i32 addrspace(3)* %908, align 4, !tbaa !38
  %910 = xor i32 %245, 2
  %911 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %910
  %912 = load i32, i32 addrspace(3)* %911, align 4, !tbaa !38
  %913 = or i32 %912, %909
  %914 = xor i32 %245, 3
  %915 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %914
  %916 = load i32, i32 addrspace(3)* %915, align 4, !tbaa !38
  %917 = or i32 %913, %916
  %918 = icmp ne i32 %917, 0
  %919 = or i1 %889, %918
  br label %920

; <label>:920                                     ; preds = %906, %904, %898, %882
  %921 = phi i1 [ %903, %898 ], [ %919, %906 ], [ %889, %882 ], [ false, %904 ]
  %922 = select i1 %921, i32 %380, i32 0
  %923 = or i32 %375, %922
  %924 = lshr i32 %224, 5
  %925 = lshr i32 %225, 5
  %926 = fcmp fast olt float %883, 0x3F10000000000000
  %927 = call i1 @dx.op.waveAllTrue(i32 114, i1 %926)  ; WaveAllTrue(cond)
  br i1 %890, label %959, label %928, !dx.controlflow.hints !64

; <label>:928                                     ; preds = %920
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %929 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %929, label %930, label %933, !dx.controlflow.hints !65

; <label>:930                                     ; preds = %928
  %931 = zext i1 %927 to i32
  %932 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %931, i32 addrspace(3)* %932, align 4, !tbaa !38
  br label %933

; <label>:933                                     ; preds = %930, %928
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %934 = icmp eq i32 %244, 32
  br i1 %934, label %935, label %941, !dx.controlflow.hints !66

; <label>:935                                     ; preds = %933
  %936 = xor i32 %245, 1
  %937 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %936
  %938 = load i32, i32 addrspace(3)* %937, align 4, !tbaa !38
  %939 = icmp ne i32 %938, 0
  %940 = and i1 %927, %939
  br label %959

; <label>:941                                     ; preds = %933
  %942 = icmp eq i32 %244, 16
  br i1 %942, label %943, label %959, !dx.controlflow.hints !67

; <label>:943                                     ; preds = %941
  %944 = xor i32 %245, 1
  %945 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %944
  %946 = load i32, i32 addrspace(3)* %945, align 4, !tbaa !38
  %947 = icmp ne i32 %946, 0
  %948 = and i1 %927, %947
  %949 = xor i32 %245, 2
  %950 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %949
  %951 = load i32, i32 addrspace(3)* %950, align 4, !tbaa !38
  %952 = icmp ne i32 %951, 0
  %953 = and i1 %948, %952
  %954 = xor i32 %245, 3
  %955 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %954
  %956 = load i32, i32 addrspace(3)* %955, align 4, !tbaa !38
  %957 = icmp ne i32 %956, 0
  %958 = and i1 %953, %957
  br label %959

; <label>:959                                     ; preds = %943, %941, %935, %920
  %960 = phi i1 [ %940, %935 ], [ %958, %943 ], [ %927, %920 ], [ false, %941 ]
  %961 = fcmp fast ogt float %883, 0x3FEFFF8000000000
  %962 = call i1 @dx.op.waveAllTrue(i32 114, i1 %961)  ; WaveAllTrue(cond)
  br i1 %890, label %994, label %963, !dx.controlflow.hints !64

; <label>:963                                     ; preds = %959
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %964 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %964, label %965, label %968, !dx.controlflow.hints !65

; <label>:965                                     ; preds = %963
  %966 = zext i1 %962 to i32
  %967 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %245
  store i32 %966, i32 addrspace(3)* %967, align 4, !tbaa !38
  br label %968

; <label>:968                                     ; preds = %965, %963
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %969 = icmp eq i32 %244, 32
  br i1 %969, label %970, label %976, !dx.controlflow.hints !66

; <label>:970                                     ; preds = %968
  %971 = xor i32 %245, 1
  %972 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %971
  %973 = load i32, i32 addrspace(3)* %972, align 4, !tbaa !38
  %974 = icmp ne i32 %973, 0
  %975 = and i1 %962, %974
  br label %994

; <label>:976                                     ; preds = %968
  %977 = icmp eq i32 %244, 16
  br i1 %977, label %978, label %994, !dx.controlflow.hints !67

; <label>:978                                     ; preds = %976
  %979 = xor i32 %245, 1
  %980 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %979
  %981 = load i32, i32 addrspace(3)* %980, align 4, !tbaa !38
  %982 = icmp ne i32 %981, 0
  %983 = and i1 %962, %982
  %984 = xor i32 %245, 2
  %985 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %984
  %986 = load i32, i32 addrspace(3)* %985, align 4, !tbaa !38
  %987 = icmp ne i32 %986, 0
  %988 = and i1 %983, %987
  %989 = xor i32 %245, 3
  %990 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %989
  %991 = load i32, i32 addrspace(3)* %990, align 4, !tbaa !38
  %992 = icmp ne i32 %991, 0
  %993 = and i1 %988, %992
  br label %994

; <label>:994                                     ; preds = %978, %976, %970, %959
  %995 = phi i1 [ %975, %970 ], [ %993, %978 ], [ %962, %959 ], [ false, %976 ]
  %996 = or i1 %960, %995
  %997 = lshr i32 %225, 1
  %998 = and i32 %997, 8
  %999 = lshr i32 %224, 2
  %1000 = and i32 %999, 4
  %1001 = or i32 %998, %36
  %1002 = or i32 %1001, %1000
  %1003 = icmp eq i32 %24, 0
  br i1 %1003, label %1004, label %1046, !dx.controlflow.hints !68

; <label>:1004                                    ; preds = %994
  %1005 = shl i32 1, %1002
  %1006 = select i1 %995, i32 %1005, i32 0
  %1007 = shl i32 65536, %1002
  %1008 = select i1 %960, i32 %1007, i32 0
  %1009 = or i32 %1006, %1008
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1013, label %1011, !dx.controlflow.hints !69

; <label>:1011                                    ; preds = %1004
  %1012 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %924, i32 %925, i32 %378, i32 %1009)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1013

; <label>:1013                                    ; preds = %1011, %1004
  br i1 %996, label %1043, label %1014

; <label>:1014                                    ; preds = %1013
  br label %1015

; <label>:1015                                    ; preds = %1040, %1014
  %1016 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %924, i32 %925, i32 %378, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1017 = and i32 %1016, 3
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %1040, !dx.controlflow.hints !70

; <label>:1019                                    ; preds = %1015
  %1020 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.i32 %1021, 3
  %1023 = call i32 @dx.op.binary.i32(i32 40, i32 %1022, i32 %1020)  ; UMin(a,b)
  %1024 = extractvalue %dx.types.CBufRet.i32 %1021, 2
  %1025 = udiv i32 %1023, %1024
  %1026 = urem i32 %1023, %1024
  %1027 = extractvalue %dx.types.CBufRet.i32 %1021, 1
  %1028 = urem i32 %1026, %1027
  %1029 = udiv i32 %1026, %1027
  %1030 = shl i32 %1028, 6
  %1031 = and i32 %1030, 32704
  %1032 = shl i32 %1029, 15
  %1033 = and i32 %1032, 8355840
  %1034 = shl i32 %1025, 23
  %1035 = and i32 %1034, 2139095040
  %1036 = or i32 %1035, %1031
  %1037 = or i32 %1036, %1033
  %1038 = or i32 %1037, 3
  %1039 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %924, i32 %925, i32 %378, i32 %1038)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1043

; <label>:1040                                    ; preds = %1015
  %1041 = icmp eq i32 %1017, 3
  br i1 %1041, label %1042, label %1015, !dx.controlflow.hints !71

; <label>:1042                                    ; preds = %1040
  br label %1043

; <label>:1043                                    ; preds = %1042, %1019, %1013
  %1044 = phi i32 [ 0, %1013 ], [ %1038, %1019 ], [ %1016, %1042 ]
  br i1 %247, label %1046, label %1045, !dx.controlflow.hints !72

; <label>:1045                                    ; preds = %1043
  store i32 %1044, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !38
  br label %1046

; <label>:1046                                    ; preds = %1045, %1043, %994
  %1047 = phi i32 [ %1044, %1043 ], [ %1044, %1045 ], [ 0, %994 ]
  br i1 %247, label %1048, label %1050, !dx.controlflow.hints !73

; <label>:1048                                    ; preds = %1046
  %1049 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1047)  ; WaveReadLaneFirst(value)
  br label %1052

; <label>:1050                                    ; preds = %1046
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1051 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !38
  br label %1052

; <label>:1052                                    ; preds = %1050, %1048
  %1053 = phi i32 [ %1051, %1050 ], [ %1049, %1048 ]
  br i1 %996, label %1069, label %1054, !dx.controlflow.hints !74

; <label>:1054                                    ; preds = %1052
  %1055 = lshr i32 %1053, 23
  %1056 = and i32 %1055, 255
  %1057 = and i32 %224, 31
  %1058 = and i32 %225, 31
  %1059 = lshr i32 %1053, 1
  %1060 = and i32 %1059, 16352
  %1061 = lshr i32 %1053, 10
  %1062 = and i32 %1061, 8160
  %1063 = or i32 %1060, %1057
  %1064 = or i32 %1062, %1058
  %1065 = fmul fast float %883, 2.550000e+02
  %1066 = fadd fast float %1065, %218
  %1067 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1068 = fmul fast float %1067, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1063, i32 %1064, i32 %1056, float %1068, float %1068, float %1068, float %1068, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1069

; <label>:1069                                    ; preds = %1054, %1052
  %1070 = icmp eq i32 %376, %380
  br i1 %1070, label %1071, label %374, !llvm.loop !75

; <label>:1071                                    ; preds = %1069
  br label %1072

; <label>:1072                                    ; preds = %1071, %370
  %1073 = phi i32 [ 0, %370 ], [ %923, %1071 ]
  %1074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.i32 %1074, 0
  %1076 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %1075, i32 %311)  ; UMad(a,b,c)
  %1077 = shl i32 %1076, 2
  %1078 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1077, i32 undef, i32 undef, i32 %1073)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1079 = add i32 %311, 1
  %1080 = icmp ugt i32 %1079, %307
  br i1 %1080, label %1081, label %310

; <label>:1081                                    ; preds = %1072
  br label %1082

; <label>:1082                                    ; preds = %1081, %303, %0
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
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
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
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}

