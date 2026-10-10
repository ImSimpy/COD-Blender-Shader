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
; shader hash: c3302d68f22745b89e8e076643b09857
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  br i1 %161, label %739, label %162, !dx.controlflow.hints !34

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
  br i1 %247, label %739, label %248

; <label>:248                                     ; preds = %242
  br label %249

; <label>:249                                     ; preds = %729, %248
  %250 = phi i32 [ %736, %729 ], [ %244, %248 ]
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
  br i1 %311, label %729, label %312

; <label>:312                                     ; preds = %309
  br label %313

; <label>:313                                     ; preds = %726, %312
  %314 = phi i32 [ %580, %726 ], [ 0, %312 ]
  %315 = phi i32 [ %320, %726 ], [ %310, %312 ]
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
  %425 = select i1 %356, float %424, float 1.000000e+00
  %426 = fmul fast float %375, %340
  %427 = fsub fast float 1.000000e+00, %426
  %428 = fmul fast float %427, %346
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = fmul fast float %429, %425
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fsub fast float 3.000000e+00, %431
  %433 = fmul fast float %421, %405
  %434 = fmul fast float %430, %430
  %435 = fmul fast float %434, %433
  %436 = fmul fast float %435, %432
  %437 = icmp ne i32 %354, 255
  %438 = call float @dx.op.binary.f32(i32 36, float %436, float %436)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %436, float %438)  ; FMin(a,b)
  %440 = fcmp fast ogt float %439, 0.000000e+00
  %441 = and i1 %437, %440
  br i1 %441, label %442, label %541, !dx.controlflow.hints !54

; <label>:442                                     ; preds = %404
  %443 = select i1 %356, float 1.000000e+00, float %424
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
  %513 = fsub fast float -0.000000e+00, %511
  %514 = fmul fast float %448, 5.000000e-01
  %515 = call float @dx.op.dot2.f32(i32 54, float %158, float %158, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = fmul fast float %516, 0x404A7DD040000000
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fmul fast float %518, %457
  %520 = fadd fast float %519, %514
  %521 = call float @dx.op.tertiary.f32(i32 46, float %520, float %513, float 0.000000e+00)  ; FMad(a,b,c)
  %522 = call float @dx.op.tertiary.f32(i32 46, float %520, float %512, float 0.000000e+00)  ; FMad(a,b,c)
  %523 = fadd fast float %521, %506
  %524 = fadd fast float %522, %507
  %525 = fmul fast float %523, %452
  %526 = fmul fast float %524, %452
  %527 = call float @dx.op.binary.f32(i32 35, float %525, float %448)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 35, float %526, float %448)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 36, float %527, float %449)  ; FMin(a,b)
  %530 = call float @dx.op.binary.f32(i32 36, float %528, float %449)  ; FMin(a,b)
  %531 = fadd fast float %529, %446
  %532 = fadd fast float %530, %447
  %533 = uitofp i32 %483 to float
  %534 = fadd fast float %509, %456
  %535 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %17, float %531, float %532, float %533, float undef, i32 0, i32 0, i32 undef, float %534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = fadd fast float %536, -1.000000e+00
  %538 = fmul fast float %537, %443
  %539 = fadd fast float %538, 1.000000e+00
  %540 = fmul fast float %539, %436
  br label %541

; <label>:541                                     ; preds = %442, %404
  %542 = phi float [ %540, %442 ], [ %436, %404 ]
  %543 = call float @dx.op.binary.f32(i32 36, float %542, float %542)  ; FMin(a,b)
  %544 = call float @dx.op.binary.f32(i32 36, float %542, float %543)  ; FMin(a,b)
  %545 = fcmp fast ogt float %544, 0x3F10000000000000
  %546 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %545)  ; WaveAnyTrue(cond)
  %547 = icmp ugt i32 %183, 63
  br i1 %547, label %577, label %548, !dx.controlflow.hints !55

; <label>:548                                     ; preds = %541
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %549 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %549, label %550, label %553, !dx.controlflow.hints !56

; <label>:550                                     ; preds = %548
  %551 = zext i1 %546 to i32
  %552 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %184
  store i32 %551, i32 addrspace(3)* %552, align 4, !tbaa !37
  br label %553

; <label>:553                                     ; preds = %550, %548
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %554 = icmp eq i32 %183, 32
  br i1 %554, label %555, label %561, !dx.controlflow.hints !57

; <label>:555                                     ; preds = %553
  %556 = xor i32 %184, 1
  %557 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %556
  %558 = load i32, i32 addrspace(3)* %557, align 4, !tbaa !37
  %559 = icmp ne i32 %558, 0
  %560 = or i1 %546, %559
  br label %577

; <label>:561                                     ; preds = %553
  %562 = icmp eq i32 %183, 16
  br i1 %562, label %563, label %577, !dx.controlflow.hints !58

; <label>:563                                     ; preds = %561
  %564 = xor i32 %184, 1
  %565 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %564
  %566 = load i32, i32 addrspace(3)* %565, align 4, !tbaa !37
  %567 = xor i32 %184, 2
  %568 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %567
  %569 = load i32, i32 addrspace(3)* %568, align 4, !tbaa !37
  %570 = or i32 %569, %566
  %571 = xor i32 %184, 3
  %572 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %571
  %573 = load i32, i32 addrspace(3)* %572, align 4, !tbaa !37
  %574 = or i32 %570, %573
  %575 = icmp ne i32 %574, 0
  %576 = or i1 %546, %575
  br label %577

; <label>:577                                     ; preds = %563, %561, %555, %541
  %578 = phi i1 [ %560, %555 ], [ %576, %563 ], [ %546, %541 ], [ false, %561 ]
  %579 = select i1 %578, i32 %319, i32 0
  %580 = or i32 %314, %579
  %581 = lshr i32 %163, 5
  %582 = lshr i32 %164, 5
  %583 = fcmp fast olt float %542, 0x3F10000000000000
  %584 = call i1 @dx.op.waveAllTrue(i32 114, i1 %583)  ; WaveAllTrue(cond)
  br i1 %547, label %616, label %585, !dx.controlflow.hints !59

; <label>:585                                     ; preds = %577
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %586 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %586, label %587, label %590, !dx.controlflow.hints !60

; <label>:587                                     ; preds = %585
  %588 = zext i1 %584 to i32
  %589 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %184
  store i32 %588, i32 addrspace(3)* %589, align 4, !tbaa !37
  br label %590

; <label>:590                                     ; preds = %587, %585
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %591 = icmp eq i32 %183, 32
  br i1 %591, label %592, label %598, !dx.controlflow.hints !61

; <label>:592                                     ; preds = %590
  %593 = xor i32 %184, 1
  %594 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %593
  %595 = load i32, i32 addrspace(3)* %594, align 4, !tbaa !37
  %596 = icmp ne i32 %595, 0
  %597 = and i1 %584, %596
  br label %616

; <label>:598                                     ; preds = %590
  %599 = icmp eq i32 %183, 16
  br i1 %599, label %600, label %616, !dx.controlflow.hints !62

; <label>:600                                     ; preds = %598
  %601 = xor i32 %184, 1
  %602 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %601
  %603 = load i32, i32 addrspace(3)* %602, align 4, !tbaa !37
  %604 = icmp ne i32 %603, 0
  %605 = and i1 %584, %604
  %606 = xor i32 %184, 2
  %607 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %606
  %608 = load i32, i32 addrspace(3)* %607, align 4, !tbaa !37
  %609 = icmp ne i32 %608, 0
  %610 = and i1 %605, %609
  %611 = xor i32 %184, 3
  %612 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %611
  %613 = load i32, i32 addrspace(3)* %612, align 4, !tbaa !37
  %614 = icmp ne i32 %613, 0
  %615 = and i1 %610, %614
  br label %616

; <label>:616                                     ; preds = %600, %598, %592, %577
  %617 = phi i1 [ %597, %592 ], [ %615, %600 ], [ %584, %577 ], [ false, %598 ]
  %618 = fcmp fast ogt float %542, 0x3FEFFF8000000000
  %619 = call i1 @dx.op.waveAllTrue(i32 114, i1 %618)  ; WaveAllTrue(cond)
  br i1 %547, label %651, label %620, !dx.controlflow.hints !59

; <label>:620                                     ; preds = %616
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %621 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %621, label %622, label %625, !dx.controlflow.hints !60

; <label>:622                                     ; preds = %620
  %623 = zext i1 %619 to i32
  %624 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %184
  store i32 %623, i32 addrspace(3)* %624, align 4, !tbaa !37
  br label %625

; <label>:625                                     ; preds = %622, %620
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %626 = icmp eq i32 %183, 32
  br i1 %626, label %627, label %633, !dx.controlflow.hints !61

; <label>:627                                     ; preds = %625
  %628 = xor i32 %184, 1
  %629 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %628
  %630 = load i32, i32 addrspace(3)* %629, align 4, !tbaa !37
  %631 = icmp ne i32 %630, 0
  %632 = and i1 %619, %631
  br label %651

; <label>:633                                     ; preds = %625
  %634 = icmp eq i32 %183, 16
  br i1 %634, label %635, label %651, !dx.controlflow.hints !62

; <label>:635                                     ; preds = %633
  %636 = xor i32 %184, 1
  %637 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %636
  %638 = load i32, i32 addrspace(3)* %637, align 4, !tbaa !37
  %639 = icmp ne i32 %638, 0
  %640 = and i1 %619, %639
  %641 = xor i32 %184, 2
  %642 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %641
  %643 = load i32, i32 addrspace(3)* %642, align 4, !tbaa !37
  %644 = icmp ne i32 %643, 0
  %645 = and i1 %640, %644
  %646 = xor i32 %184, 3
  %647 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %646
  %648 = load i32, i32 addrspace(3)* %647, align 4, !tbaa !37
  %649 = icmp ne i32 %648, 0
  %650 = and i1 %645, %649
  br label %651

; <label>:651                                     ; preds = %635, %633, %627, %616
  %652 = phi i1 [ %632, %627 ], [ %650, %635 ], [ %619, %616 ], [ false, %633 ]
  %653 = or i1 %617, %652
  %654 = lshr i32 %164, 1
  %655 = and i32 %654, 8
  %656 = lshr i32 %163, 2
  %657 = and i32 %656, 4
  %658 = or i32 %655, %35
  %659 = or i32 %658, %657
  %660 = icmp eq i32 %23, 0
  br i1 %660, label %661, label %703, !dx.controlflow.hints !63

; <label>:661                                     ; preds = %651
  %662 = shl i32 1, %659
  %663 = select i1 %652, i32 %662, i32 0
  %664 = shl i32 65536, %659
  %665 = select i1 %617, i32 %664, i32 0
  %666 = or i32 %663, %665
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %670, label %668, !dx.controlflow.hints !64

; <label>:668                                     ; preds = %661
  %669 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %581, i32 %582, i32 %317, i32 %666)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %670

; <label>:670                                     ; preds = %668, %661
  br i1 %653, label %700, label %671

; <label>:671                                     ; preds = %670
  br label %672

; <label>:672                                     ; preds = %697, %671
  %673 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %581, i32 %582, i32 %317, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %674 = and i32 %673, 3
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %697, !dx.controlflow.hints !65

; <label>:676                                     ; preds = %672
  %677 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.i32 %678, 3
  %680 = call i32 @dx.op.binary.i32(i32 40, i32 %679, i32 %677)  ; UMin(a,b)
  %681 = extractvalue %dx.types.CBufRet.i32 %678, 2
  %682 = udiv i32 %680, %681
  %683 = urem i32 %680, %681
  %684 = extractvalue %dx.types.CBufRet.i32 %678, 1
  %685 = urem i32 %683, %684
  %686 = udiv i32 %683, %684
  %687 = shl i32 %685, 6
  %688 = and i32 %687, 32704
  %689 = shl i32 %686, 15
  %690 = and i32 %689, 8355840
  %691 = shl i32 %682, 23
  %692 = and i32 %691, 2139095040
  %693 = or i32 %692, %688
  %694 = or i32 %693, %690
  %695 = or i32 %694, 3
  %696 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %581, i32 %582, i32 %317, i32 %695)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %700

; <label>:697                                     ; preds = %672
  %698 = icmp eq i32 %674, 3
  br i1 %698, label %699, label %672, !dx.controlflow.hints !66

; <label>:699                                     ; preds = %697
  br label %700

; <label>:700                                     ; preds = %699, %676, %670
  %701 = phi i32 [ 0, %670 ], [ %695, %676 ], [ %673, %699 ]
  br i1 %186, label %703, label %702, !dx.controlflow.hints !67

; <label>:702                                     ; preds = %700
  store i32 %701, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %703

; <label>:703                                     ; preds = %702, %700, %651
  %704 = phi i32 [ %701, %700 ], [ %701, %702 ], [ 0, %651 ]
  br i1 %186, label %705, label %707, !dx.controlflow.hints !68

; <label>:705                                     ; preds = %703
  %706 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %704)  ; WaveReadLaneFirst(value)
  br label %709

; <label>:707                                     ; preds = %703
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %708 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %709

; <label>:709                                     ; preds = %707, %705
  %710 = phi i32 [ %708, %707 ], [ %706, %705 ]
  br i1 %653, label %726, label %711, !dx.controlflow.hints !69

; <label>:711                                     ; preds = %709
  %712 = lshr i32 %710, 23
  %713 = and i32 %712, 255
  %714 = and i32 %163, 31
  %715 = and i32 %164, 31
  %716 = lshr i32 %710, 1
  %717 = and i32 %716, 16352
  %718 = lshr i32 %710, 10
  %719 = and i32 %718, 8160
  %720 = or i32 %717, %714
  %721 = or i32 %719, %715
  %722 = fmul fast float %542, 2.550000e+02
  %723 = fadd fast float %722, %158
  %724 = call float @dx.op.unary.f32(i32 27, float %723)  ; Round_ni(value)
  %725 = fmul fast float %724, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %720, i32 %721, i32 %713, float %725, float %725, float %725, float %725, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %726

; <label>:726                                     ; preds = %711, %709
  %727 = icmp eq i32 %315, %319
  br i1 %727, label %728, label %313, !llvm.loop !70

; <label>:728                                     ; preds = %726
  br label %729

; <label>:729                                     ; preds = %728, %309
  %730 = phi i32 [ 0, %309 ], [ %580, %728 ]
  %731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.i32 %731, 0
  %733 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %732, i32 %250)  ; UMad(a,b,c)
  %734 = shl i32 %733, 2
  %735 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %734, i32 undef, i32 undef, i32 %730)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %736 = add i32 %250, 1
  %737 = icmp ugt i32 %736, %246
  br i1 %737, label %738, label %249

; <label>:738                                     ; preds = %729
  br label %739

; <label>:739                                     ; preds = %738, %242, %0
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
!29 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
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

