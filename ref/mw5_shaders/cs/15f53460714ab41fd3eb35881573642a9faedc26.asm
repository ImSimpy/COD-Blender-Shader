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
; shader hash: 9c584fd4faff8bbb237f68305e970bd4
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
;                                   texture     u32     2darray      T3            t10     1
;                                   texture    byte         r/o      T4            t19     1
;                                   texture    byte         r/o      T5            t20     1
;                                   texture     f32          1d      T6             t8     1
;                                   texture     f32          2d      T7            t13     1
;                                   texture     f32     2darray      T8             t1     1
;                                   texture    byte         r/o      T9             t6     1
;                                   texture    byte         r/o     T10             t7     1
;                                       UAV     f32     2darray      U0             u0     1
;                                       UAV    byte         r/w      U1             u6     1
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
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
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
@"\01?gsLightIterator@@3IA" = external addrspace(3) global i32, align 4

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = shl i32 %23, 2
  %27 = mul i32 %26, %25
  %28 = add i32 %27, %18
  %29 = shl i32 %28, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = lshr i32 %31, 10
  %33 = and i32 %32, 262128
  %34 = shl i32 %31, 4
  %35 = and i32 %34, 262128
  %36 = lshr i32 %31, 25
  %37 = and i32 %36, 8
  %38 = lshr i32 %31, 26
  %39 = and i32 %38, 8
  %40 = or i32 %37, %19
  %41 = or i32 %40, %33
  %42 = or i32 %39, %20
  %43 = or i32 %42, %35
  %44 = uitofp i32 %41 to float
  %45 = uitofp i32 %43 to float
  %46 = fadd fast float %44, 5.000000e-01
  %47 = fadd fast float %45, 5.000000e-01
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %41, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = fcmp fast olt float %49, -1.000000e+00
  %51 = fcmp fast ogt float %49, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = select i1 %51, float %53, float 1.000000e+00
  %55 = fadd fast float %49, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %59, 2.000000e+00
  %62 = fmul fast float %61, %46
  %63 = fmul fast float %60, 2.000000e+00
  %64 = fmul fast float %63, %47
  %65 = fsub fast float 1.000000e+00, %62
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = select i1 %50, float %68, float %72
  %76 = select i1 %50, float %69, float %73
  %77 = select i1 %50, float %70, float %74
  %78 = fmul fast float %75, %65
  %79 = fmul fast float %76, %65
  %80 = fmul fast float %77, %65
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = select i1 %50, float %82, float %86
  %90 = select i1 %50, float %83, float %87
  %91 = select i1 %50, float %84, float %88
  %92 = fmul fast float %89, %66
  %93 = fmul fast float %90, %66
  %94 = fmul fast float %91, %66
  %95 = fadd fast float %92, %78
  %96 = fadd fast float %93, %79
  %97 = fadd fast float %94, %80
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = select i1 %50, float %99, float %103
  %107 = select i1 %50, float %100, float %104
  %108 = select i1 %50, float %101, float %105
  %109 = fadd fast float %95, %106
  %110 = fadd fast float %96, %107
  %111 = fadd fast float %97, %108
  %112 = fmul fast float %109, %57
  %113 = fmul fast float %110, %57
  %114 = fmul fast float %111, %57
  %115 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %41, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = lshr i32 %116, 8
  %118 = and i32 %116, 255
  %119 = and i32 %117, 255
  %120 = uitofp i32 %118 to float
  %121 = uitofp i32 %119 to float
  %122 = fmul fast float %120, 0x3F80101020000000
  %123 = fmul fast float %121, 0x3F80101020000000
  %124 = fadd fast float %122, -1.000000e+00
  %125 = fadd fast float %123, -1.000000e+00
  %126 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %127 = fsub fast float 1.000000e+00, %126
  %128 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %129 = fsub fast float %127, %128
  %130 = fsub fast float -0.000000e+00, %129
  %131 = call float @dx.op.binary.f32(i32 35, float %130, float 0.000000e+00)  ; FMax(a,b)
  %132 = fcmp fast ogt float %124, 0.000000e+00
  %133 = fsub fast float -0.000000e+00, %131
  %134 = select i1 %132, float %133, float %131
  %135 = fadd fast float %134, %124
  %136 = fcmp fast ogt float %125, 0.000000e+00
  %137 = select i1 %136, float %133, float %131
  %138 = fadd fast float %137, %125
  %139 = call float @dx.op.dot3.f32(i32 55, float %135, float %138, float %129, float %135, float %138, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = call float @dx.op.unary.f32(i32 25, float %139)  ; Rsqrt(value)
  %141 = fmul fast float %135, %140
  %142 = fmul fast float %138, %140
  %143 = fmul fast float %140, %129
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = fmul fast float %145, 0x3FE3C6EF40000000
  %147 = frem fast float %46, 2.560000e+02
  %148 = frem fast float %47, 2.560000e+02
  %149 = fptoui float %147 to i32
  %150 = fptoui float %148 to i32
  %151 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %149, i32 %150, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fadd fast float %152, %146
  %154 = call float @dx.op.unary.f32(i32 22, float %153)  ; Frc(value)
  %155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.i32 %155, 0
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %607, label %158, !dx.controlflow.hints !31

; <label>:158                                     ; preds = %0
  %159 = fptoui float %46 to i32
  %160 = fptoui float %47 to i32
  %161 = lshr i32 %159, 4
  %162 = lshr i32 %160, 4
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 0
  %165 = call i32 @dx.op.tertiary.i32(i32 49, i32 %162, i32 %164, i32 %161)  ; UMad(a,b,c)
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 0
  %168 = add nsw i32 %167, -1
  %169 = call i32 @dx.op.binary.i32(i32 37, i32 %168, i32 0)  ; IMax(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %171 = fptoui float %170 to i32
  %172 = lshr i32 %171, 5
  %173 = call i32 @dx.op.binary.i32(i32 40, i32 %172, i32 8191)  ; UMin(a,b)
  %174 = shl i32 %173, 2
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = lshr i32 %176, 16
  %178 = and i32 %176, 65535
  %179 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %180 = udiv i32 %21, %179
  %181 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %177, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %182 = icmp eq i32 %179, 64
  br i1 %182, label %209, label %183, !dx.controlflow.hints !32

; <label>:183                                     ; preds = %158
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %184 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %184, label %185, label %187, !dx.controlflow.hints !33

; <label>:185                                     ; preds = %183
  %186 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %180
  store i32 %181, i32 addrspace(3)* %186, align 4, !tbaa !34
  br label %187

; <label>:187                                     ; preds = %185, %183
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %188 = icmp eq i32 %179, 32
  br i1 %188, label %189, label %194, !dx.controlflow.hints !38

; <label>:189                                     ; preds = %187
  %190 = xor i32 %180, 1
  %191 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %190
  %192 = load i32, i32 addrspace(3)* %191, align 4, !tbaa !34
  %193 = call i32 @dx.op.binary.i32(i32 40, i32 %181, i32 %192)  ; UMin(a,b)
  br label %209

; <label>:194                                     ; preds = %187
  %195 = icmp eq i32 %179, 16
  br i1 %195, label %196, label %209, !dx.controlflow.hints !39

; <label>:196                                     ; preds = %194
  %197 = xor i32 %180, 3
  %198 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %197
  %199 = load i32, i32 addrspace(3)* %198, align 4, !tbaa !34
  %200 = xor i32 %180, 2
  %201 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %200
  %202 = load i32, i32 addrspace(3)* %201, align 4, !tbaa !34
  %203 = call i32 @dx.op.binary.i32(i32 40, i32 %202, i32 %199)  ; UMin(a,b)
  %204 = xor i32 %180, 1
  %205 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %204
  %206 = load i32, i32 addrspace(3)* %205, align 4, !tbaa !34
  %207 = call i32 @dx.op.binary.i32(i32 40, i32 %181, i32 %206)  ; UMin(a,b)
  %208 = call i32 @dx.op.binary.i32(i32 40, i32 %207, i32 %203)  ; UMin(a,b)
  br label %209

; <label>:209                                     ; preds = %196, %194, %189, %158
  %210 = phi i32 [ %193, %189 ], [ %208, %196 ], [ %181, %158 ], [ 0, %194 ]
  %211 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %178, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %182, label %238, label %212, !dx.controlflow.hints !40

; <label>:212                                     ; preds = %209
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %213 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %213, label %214, label %216, !dx.controlflow.hints !41

; <label>:214                                     ; preds = %212
  %215 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %180
  store i32 %211, i32 addrspace(3)* %215, align 4, !tbaa !34
  br label %216

; <label>:216                                     ; preds = %214, %212
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = icmp eq i32 %179, 32
  br i1 %217, label %218, label %223, !dx.controlflow.hints !42

; <label>:218                                     ; preds = %216
  %219 = xor i32 %180, 1
  %220 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %219
  %221 = load i32, i32 addrspace(3)* %220, align 4, !tbaa !34
  %222 = call i32 @dx.op.binary.i32(i32 39, i32 %211, i32 %221)  ; UMax(a,b)
  br label %238

; <label>:223                                     ; preds = %216
  %224 = icmp eq i32 %179, 16
  br i1 %224, label %225, label %238, !dx.controlflow.hints !43

; <label>:225                                     ; preds = %223
  %226 = xor i32 %180, 3
  %227 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %226
  %228 = load i32, i32 addrspace(3)* %227, align 4, !tbaa !34
  %229 = xor i32 %180, 2
  %230 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %229
  %231 = load i32, i32 addrspace(3)* %230, align 4, !tbaa !34
  %232 = call i32 @dx.op.binary.i32(i32 39, i32 %231, i32 %228)  ; UMax(a,b)
  %233 = xor i32 %180, 1
  %234 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %233
  %235 = load i32, i32 addrspace(3)* %234, align 4, !tbaa !34
  %236 = call i32 @dx.op.binary.i32(i32 39, i32 %211, i32 %235)  ; UMax(a,b)
  %237 = call i32 @dx.op.binary.i32(i32 39, i32 %236, i32 %232)  ; UMax(a,b)
  br label %238

; <label>:238                                     ; preds = %225, %223, %218, %209
  %239 = phi i32 [ %222, %218 ], [ %237, %225 ], [ %211, %209 ], [ 0, %223 ]
  %240 = lshr i32 %210, 5
  %241 = lshr i32 %239, 5
  %242 = call i32 @dx.op.binary.i32(i32 40, i32 %241, i32 %169)  ; UMin(a,b)
  %243 = icmp ugt i32 %240, %242
  br i1 %243, label %607, label %244

; <label>:244                                     ; preds = %238
  br label %245

; <label>:245                                     ; preds = %597, %244
  %246 = phi i32 [ %604, %597 ], [ %240, %244 ]
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 0
  %249 = call i32 @dx.op.tertiary.i32(i32 49, i32 %165, i32 %248, i32 %246)  ; UMad(a,b,c)
  %250 = shl i32 %249, 2
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = shl i32 %246, 5
  %254 = sub nsw i32 %177, %253
  %255 = call i32 @dx.op.binary.i32(i32 37, i32 %254, i32 0)  ; IMax(a,b)
  %256 = call i32 @dx.op.binary.i32(i32 38, i32 %255, i32 31)  ; IMin(a,b)
  %257 = sub nsw i32 1, %177
  %258 = add nsw i32 %257, %178
  %259 = call i32 @dx.op.binary.i32(i32 37, i32 %258, i32 0)  ; IMax(a,b)
  %260 = call i32 @dx.op.binary.i32(i32 38, i32 %259, i32 32)  ; IMin(a,b)
  %261 = and i32 %260, 31
  %262 = shl i32 -1, %261
  %263 = xor i32 %262, -1
  %264 = and i32 %256, 31
  %265 = shl i32 %263, %264
  %266 = icmp eq i32 %260, 32
  %267 = select i1 %266, i32 -1, i32 %265
  %268 = and i32 %267, %252
  %269 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %268, i8 1)  ; WaveActiveBit(value,op)
  br i1 %182, label %296, label %270, !dx.controlflow.hints !44

; <label>:270                                     ; preds = %245
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %271 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %271, label %272, label %274, !dx.controlflow.hints !45

; <label>:272                                     ; preds = %270
  %273 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %180
  store i32 %269, i32 addrspace(3)* %273, align 4, !tbaa !34
  br label %274

; <label>:274                                     ; preds = %272, %270
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = icmp eq i32 %179, 32
  br i1 %275, label %276, label %281, !dx.controlflow.hints !46

; <label>:276                                     ; preds = %274
  %277 = xor i32 %180, 1
  %278 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  %279 = load i32, i32 addrspace(3)* %278, align 4, !tbaa !34
  %280 = or i32 %279, %269
  br label %296

; <label>:281                                     ; preds = %274
  %282 = icmp eq i32 %179, 16
  br i1 %282, label %283, label %296, !dx.controlflow.hints !47

; <label>:283                                     ; preds = %281
  %284 = xor i32 %180, 1
  %285 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %284
  %286 = load i32, i32 addrspace(3)* %285, align 4, !tbaa !34
  %287 = or i32 %286, %269
  %288 = xor i32 %180, 2
  %289 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %288
  %290 = load i32, i32 addrspace(3)* %289, align 4, !tbaa !34
  %291 = or i32 %287, %290
  %292 = xor i32 %180, 3
  %293 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %292
  %294 = load i32, i32 addrspace(3)* %293, align 4, !tbaa !34
  %295 = or i32 %291, %294
  br label %296

; <label>:296                                     ; preds = %283, %281, %276, %245
  %297 = phi i32 [ %280, %276 ], [ %295, %283 ], [ %269, %245 ], [ 0, %281 ]
  br i1 %182, label %298, label %300, !dx.controlflow.hints !48

; <label>:298                                     ; preds = %296
  %299 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %297)  ; WaveReadLaneFirst(value)
  br label %305

; <label>:300                                     ; preds = %296
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %301 = icmp eq i32 %21, 0
  br i1 %301, label %302, label %303, !dx.controlflow.hints !49

; <label>:302                                     ; preds = %300
  store i32 %297, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %303

; <label>:303                                     ; preds = %302, %300
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %304 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %305

; <label>:305                                     ; preds = %303, %298
  %306 = phi i32 [ %299, %298 ], [ %304, %303 ]
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %597, label %308

; <label>:308                                     ; preds = %305
  br label %309

; <label>:309                                     ; preds = %573, %308
  %310 = phi i32 [ %576, %573 ], [ 0, %308 ]
  %311 = phi i32 [ %316, %573 ], [ %306, %308 ]
  %312 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %311)  ; FirstbitLo(value)
  %313 = add i32 %312, %253
  %314 = and i32 %312, 31
  %315 = shl i32 1, %314
  %316 = xor i32 %315, %311
  %317 = mul i32 %313, 112
  %318 = add i32 %317, 16
  %319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = extractvalue %dx.types.ResRet.f32 %319, 1
  %322 = extractvalue %dx.types.ResRet.f32 %319, 2
  %323 = add i32 %317, 28
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = add i32 %317, 32
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = add i32 %317, 48
  %332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = extractvalue %dx.types.ResRet.f32 %332, 1
  %335 = extractvalue %dx.types.ResRet.f32 %332, 2
  %336 = extractvalue %dx.types.ResRet.f32 %332, 3
  %337 = add i32 %317, 64
  %338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = extractvalue %dx.types.ResRet.f32 %338, 1
  %341 = extractvalue %dx.types.ResRet.f32 %338, 2
  %342 = extractvalue %dx.types.ResRet.f32 %338, 3
  %343 = add i32 %317, 92
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 65535
  %347 = uitofp i32 %346 to float
  %348 = lshr i32 %345, 16
  %349 = uitofp i32 %348 to float
  %350 = and i32 %325, 65535
  %351 = and i32 %325, 50331648
  %352 = icmp eq i32 %351, 33554432
  %353 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float %328, float %329, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = fsub fast float %112, %333
  %355 = fsub fast float %113, %334
  %356 = fsub fast float %114, %335
  %357 = call float @dx.op.dot3.f32(i32 55, float %354, float %355, float %356, float %328, float %329, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = fdiv fast float %357, %353
  %359 = call float @dx.op.binary.f32(i32 35, float %358, float -1.000000e+00)  ; FMax(a,b)
  %360 = call float @dx.op.binary.f32(i32 36, float %359, float 1.000000e+00)  ; FMin(a,b)
  %361 = fmul fast float %360, %328
  %362 = fmul fast float %360, %329
  %363 = fmul fast float %360, %330
  %364 = fadd fast float %361, %333
  %365 = fadd fast float %362, %334
  %366 = fadd fast float %363, %335
  %367 = fsub fast float %364, %112
  %368 = fsub fast float %365, %113
  %369 = fsub fast float %366, %114
  %370 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %371 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %372 = fdiv fast float 1.000000e+00, %371
  %373 = fmul fast float %367, %372
  %374 = fmul fast float %368, %372
  %375 = fmul fast float %369, %372
  br i1 %352, label %376, label %400, !dx.controlflow.hints !50

; <label>:376                                     ; preds = %309
  %377 = fmul fast float %341, %320
  %378 = fmul fast float %341, %321
  %379 = fmul fast float %341, %322
  %380 = fsub fast float %377, %112
  %381 = fadd fast float %380, %364
  %382 = fsub fast float %378, %113
  %383 = fadd fast float %382, %365
  %384 = fsub fast float %379, %114
  %385 = fadd fast float %384, %366
  %386 = call float @dx.op.dot3.f32(i32 55, float %381, float %383, float %385, float %381, float %383, float %385)  ; Dot3(ax,ay,az,bx,by,bz)
  %387 = call float @dx.op.unary.f32(i32 25, float %386)  ; Rsqrt(value)
  %388 = fmul fast float %387, %381
  %389 = fmul fast float %387, %383
  %390 = fmul fast float %387, %385
  %391 = fsub fast float %112, %364
  %392 = fsub fast float %113, %365
  %393 = fsub fast float %114, %366
  %394 = fsub fast float -0.000000e+00, %391
  %395 = fsub fast float -0.000000e+00, %392
  %396 = fsub fast float -0.000000e+00, %393
  %397 = call float @dx.op.dot3.f32(i32 55, float %394, float %395, float %396, float %320, float %321, float %322)  ; Dot3(ax,ay,az,bx,by,bz)
  %398 = fcmp fast ogt float %397, 0.000000e+00
  %399 = uitofp i1 %398 to float
  br label %400

; <label>:400                                     ; preds = %376, %309
  %401 = phi float [ %399, %376 ], [ 1.000000e+00, %309 ]
  %402 = phi float [ %388, %376 ], [ %373, %309 ]
  %403 = phi float [ %389, %376 ], [ %374, %309 ]
  %404 = phi float [ %390, %376 ], [ %375, %309 ]
  %405 = call float @dx.op.dot3.f32(i32 55, float %320, float %321, float %322, float %402, float %403, float %404)  ; Dot3(ax,ay,az,bx,by,bz)
  %406 = fmul fast float %405, %405
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fsub fast float 1.000000e+00, %407
  %409 = fmul fast float %408, 5.000000e-01
  %410 = fcmp fast ogt float %405, 0.000000e+00
  %411 = fsub fast float 1.000000e+00, %409
  %412 = select i1 %410, float %409, float %411
  %413 = fmul fast float %412, %349
  %414 = fadd fast float %413, %347
  %415 = fmul fast float %414, 0x3EF0001000000000
  %416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %415, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = fmul fast float %405, %339
  %419 = fadd fast float %418, %340
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = select i1 %352, float %420, float 1.000000e+00
  %422 = fmul fast float %371, %336
  %423 = fsub fast float 1.000000e+00, %422
  %424 = fmul fast float %423, %342
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, %421
  %427 = fmul fast float %426, 2.000000e+00
  %428 = fsub fast float 3.000000e+00, %427
  %429 = fmul fast float %417, %401
  %430 = fmul fast float %426, %426
  %431 = fmul fast float %430, %429
  %432 = fmul fast float %431, %428
  %433 = icmp ne i32 %350, 255
  %434 = call float @dx.op.binary.f32(i32 36, float %432, float %432)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 36, float %432, float %434)  ; FMin(a,b)
  %436 = fcmp fast ogt float %435, 0.000000e+00
  %437 = and i1 %433, %436
  br i1 %437, label %438, label %537, !dx.controlflow.hints !51

; <label>:438                                     ; preds = %400
  %439 = select i1 %352, float 1.000000e+00, float %420
  %440 = mul nuw nsw i32 %350, 176
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = add nuw nsw i32 %440, 16
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = add nuw nsw i32 %440, 32
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = add nuw nsw i32 %440, 48
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = extractvalue %dx.types.ResRet.f32 %456, 3
  %461 = add nuw nsw i32 %440, 64
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = add nuw nsw i32 %440, 80
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = add nuw nsw i32 %440, 96
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = bitcast float %449 to i32
  %480 = fmul fast float %141, %454
  %481 = fmul fast float %142, %454
  %482 = fmul fast float %143, %454
  %483 = fadd fast float %480, %112
  %484 = fadd fast float %481, %113
  %485 = fadd fast float %482, %114
  %486 = fmul fast float %483, %457
  %487 = call float @dx.op.tertiary.f32(i32 46, float %484, float %463, float %486)  ; FMad(a,b,c)
  %488 = call float @dx.op.tertiary.f32(i32 46, float %485, float %469, float %487)  ; FMad(a,b,c)
  %489 = fadd fast float %488, %475
  %490 = fmul fast float %483, %458
  %491 = call float @dx.op.tertiary.f32(i32 46, float %484, float %464, float %490)  ; FMad(a,b,c)
  %492 = call float @dx.op.tertiary.f32(i32 46, float %485, float %470, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %492, %476
  %494 = fmul fast float %483, %459
  %495 = call float @dx.op.tertiary.f32(i32 46, float %484, float %465, float %494)  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %485, float %471, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %496, %477
  %498 = fmul fast float %483, %460
  %499 = call float @dx.op.tertiary.f32(i32 46, float %484, float %466, float %498)  ; FMad(a,b,c)
  %500 = call float @dx.op.tertiary.f32(i32 46, float %485, float %472, float %499)  ; FMad(a,b,c)
  %501 = fadd fast float %500, %478
  %502 = fdiv fast float %489, %501
  %503 = fdiv fast float %493, %501
  %504 = fdiv fast float %497, %501
  %505 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %504)  ; FMax(a,b)
  %506 = fmul fast float %154, 0x401921FB60000000
  %507 = call float @dx.op.unary.f32(i32 13, float %506)  ; Sin(value)
  %508 = call float @dx.op.unary.f32(i32 12, float %506)  ; Cos(value)
  %509 = fsub fast float -0.000000e+00, %507
  %510 = fmul fast float %444, 5.000000e-01
  %511 = call float @dx.op.dot2.f32(i32 54, float %154, float %154, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fmul fast float %512, 0x404A7DD040000000
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = fmul fast float %514, %453
  %516 = fadd fast float %515, %510
  %517 = call float @dx.op.tertiary.f32(i32 46, float %516, float %509, float 0.000000e+00)  ; FMad(a,b,c)
  %518 = call float @dx.op.tertiary.f32(i32 46, float %516, float %508, float 0.000000e+00)  ; FMad(a,b,c)
  %519 = fadd fast float %517, %502
  %520 = fadd fast float %518, %503
  %521 = fmul fast float %519, %448
  %522 = fmul fast float %520, %448
  %523 = call float @dx.op.binary.f32(i32 35, float %521, float %444)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %522, float %444)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 36, float %523, float %445)  ; FMin(a,b)
  %526 = call float @dx.op.binary.f32(i32 36, float %524, float %445)  ; FMin(a,b)
  %527 = fadd fast float %525, %442
  %528 = fadd fast float %526, %443
  %529 = uitofp i32 %479 to float
  %530 = fadd fast float %505, %452
  %531 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %15, float %527, float %528, float %529, float undef, i32 0, i32 0, i32 undef, float %530)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = fadd fast float %532, -1.000000e+00
  %534 = fmul fast float %533, %439
  %535 = fadd fast float %534, 1.000000e+00
  %536 = fmul fast float %535, %432
  br label %537

; <label>:537                                     ; preds = %438, %400
  %538 = phi float [ %536, %438 ], [ %432, %400 ]
  %539 = call float @dx.op.binary.f32(i32 36, float %538, float %538)  ; FMin(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float %538, float %539)  ; FMin(a,b)
  %541 = fcmp fast ogt float %540, 0x3F10000000000000
  %542 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %541)  ; WaveAnyTrue(cond)
  %543 = icmp ugt i32 %179, 63
  br i1 %543, label %573, label %544, !dx.controlflow.hints !52

; <label>:544                                     ; preds = %537
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %545 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %545, label %546, label %549, !dx.controlflow.hints !53

; <label>:546                                     ; preds = %544
  %547 = zext i1 %542 to i32
  %548 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %180
  store i32 %547, i32 addrspace(3)* %548, align 4, !tbaa !34
  br label %549

; <label>:549                                     ; preds = %546, %544
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %550 = icmp eq i32 %179, 32
  br i1 %550, label %551, label %557, !dx.controlflow.hints !54

; <label>:551                                     ; preds = %549
  %552 = xor i32 %180, 1
  %553 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %552
  %554 = load i32, i32 addrspace(3)* %553, align 4, !tbaa !34
  %555 = icmp ne i32 %554, 0
  %556 = or i1 %542, %555
  br label %573

; <label>:557                                     ; preds = %549
  %558 = icmp eq i32 %179, 16
  br i1 %558, label %559, label %573, !dx.controlflow.hints !55

; <label>:559                                     ; preds = %557
  %560 = xor i32 %180, 1
  %561 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %560
  %562 = load i32, i32 addrspace(3)* %561, align 4, !tbaa !34
  %563 = xor i32 %180, 2
  %564 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %563
  %565 = load i32, i32 addrspace(3)* %564, align 4, !tbaa !34
  %566 = or i32 %565, %562
  %567 = xor i32 %180, 3
  %568 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %567
  %569 = load i32, i32 addrspace(3)* %568, align 4, !tbaa !34
  %570 = or i32 %566, %569
  %571 = icmp ne i32 %570, 0
  %572 = or i1 %542, %571
  br label %573

; <label>:573                                     ; preds = %559, %557, %551, %537
  %574 = phi i1 [ %556, %551 ], [ %572, %559 ], [ %542, %537 ], [ false, %557 ]
  %575 = select i1 %574, i32 %315, i32 0
  %576 = or i32 %310, %575
  %577 = lshr i32 %159, 5
  %578 = lshr i32 %160, 5
  %579 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %577, i32 %578, i32 %313, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = lshr i32 %580, 23
  %582 = and i32 %581, 255
  %583 = and i32 %159, 31
  %584 = and i32 %160, 31
  %585 = lshr i32 %580, 1
  %586 = and i32 %585, 16352
  %587 = lshr i32 %580, 10
  %588 = and i32 %587, 8160
  %589 = or i32 %586, %583
  %590 = or i32 %588, %584
  %591 = fmul fast float %538, 2.550000e+02
  %592 = fadd fast float %591, %154
  %593 = call float @dx.op.unary.f32(i32 27, float %592)  ; Round_ni(value)
  %594 = fmul fast float %593, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %589, i32 %590, i32 %582, float %594, float %594, float %594, float %594, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %595 = icmp eq i32 %311, %315
  br i1 %595, label %596, label %309, !llvm.loop !56

; <label>:596                                     ; preds = %573
  br label %597

; <label>:597                                     ; preds = %596, %305
  %598 = phi i32 [ 0, %305 ], [ %576, %596 ]
  %599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.i32 %599, 0
  %601 = call i32 @dx.op.tertiary.i32(i32 49, i32 %165, i32 %600, i32 %246)  ; UMad(a,b,c)
  %602 = shl i32 %601, 2
  %603 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %602, i32 undef, i32 undef, i32 %598)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %604 = add i32 %246, 1
  %605 = icmp ugt i32 %604, %242
  br i1 %605, label %606, label %245

; <label>:606                                     ; preds = %597
  br label %607

; <label>:607                                     ; preds = %606, %238, %0
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
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

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
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !22, !25}
!5 = !{!6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 9}
!11 = !{i32 3, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %"class.Texture1D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 1, i32 0, !10}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !10}
!16 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !10}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!19 = !{!20, !21}
!20 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!21 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{!23, !24}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!25 = !{!26, !27}
!26 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !29}
!29 = !{i32 0, i64 524560, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}

