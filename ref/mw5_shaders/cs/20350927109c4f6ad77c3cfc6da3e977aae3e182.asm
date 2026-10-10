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
; shader hash: 79e8e8d9d2a18614f4fd3cc23ab807ef
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
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
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = lshr i32 %32, 10
  %34 = and i32 %33, 262128
  %35 = shl i32 %32, 4
  %36 = and i32 %35, 262128
  %37 = lshr i32 %32, 25
  %38 = and i32 %37, 8
  %39 = lshr i32 %32, 26
  %40 = and i32 %39, 8
  %41 = or i32 %38, %20
  %42 = or i32 %41, %34
  %43 = or i32 %40, %21
  %44 = or i32 %43, %36
  %45 = uitofp i32 %42 to float
  %46 = uitofp i32 %44 to float
  %47 = fadd fast float %45, 5.000000e-01
  %48 = fadd fast float %46, 5.000000e-01
  %49 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %42, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = fcmp fast olt float %50, -1.000000e+00
  %52 = fcmp fast ogt float %50, -1.000000e+00
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %55 = select i1 %52, float %54, float 1.000000e+00
  %56 = fadd fast float %50, 1.000000e+00
  %57 = fmul fast float %55, %56
  %58 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %47, %60
  %63 = fmul fast float %48, %61
  %64 = fmul fast float %62, 2.000000e+00
  %65 = fmul fast float %63, 2.000000e+00
  %66 = fsub fast float 1.000000e+00, %64
  %67 = fsub fast float 1.000000e+00, %65
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = select i1 %51, float %69, float %73
  %77 = select i1 %51, float %70, float %74
  %78 = select i1 %51, float %71, float %75
  %79 = fmul fast float %76, %66
  %80 = fmul fast float %77, %66
  %81 = fmul fast float %78, %66
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = select i1 %51, float %83, float %87
  %91 = select i1 %51, float %84, float %88
  %92 = select i1 %51, float %85, float %89
  %93 = fmul fast float %90, %67
  %94 = fmul fast float %91, %67
  %95 = fmul fast float %92, %67
  %96 = fadd fast float %93, %79
  %97 = fadd fast float %94, %80
  %98 = fadd fast float %95, %81
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = select i1 %51, float %100, float %104
  %108 = select i1 %51, float %101, float %105
  %109 = select i1 %51, float %102, float %106
  %110 = fadd fast float %96, %107
  %111 = fadd fast float %97, %108
  %112 = fadd fast float %98, %109
  %113 = fmul fast float %110, %58
  %114 = fmul fast float %111, %58
  %115 = fmul fast float %112, %58
  %116 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %42, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = lshr i32 %117, 8
  %119 = and i32 %117, 255
  %120 = and i32 %118, 255
  %121 = uitofp i32 %119 to float
  %122 = uitofp i32 %120 to float
  %123 = fmul fast float %121, 0x3F80101020000000
  %124 = fmul fast float %122, 0x3F80101020000000
  %125 = fadd fast float %123, -1.000000e+00
  %126 = fadd fast float %124, -1.000000e+00
  %127 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %128 = fsub fast float 1.000000e+00, %127
  %129 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %130 = fsub fast float %128, %129
  %131 = fsub fast float -0.000000e+00, %130
  %132 = call float @dx.op.binary.f32(i32 35, float %131, float 0.000000e+00)  ; FMax(a,b)
  %133 = fcmp fast ogt float %125, 0.000000e+00
  %134 = fsub fast float -0.000000e+00, %132
  %135 = select i1 %133, float %134, float %132
  %136 = fadd fast float %135, %125
  %137 = fcmp fast ogt float %126, 0.000000e+00
  %138 = select i1 %137, float %134, float %132
  %139 = fadd fast float %138, %126
  %140 = call float @dx.op.dot3.f32(i32 55, float %136, float %139, float %130, float %136, float %139, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = call float @dx.op.unary.f32(i32 25, float %140)  ; Rsqrt(value)
  %142 = fmul fast float %136, %141
  %143 = fmul fast float %139, %141
  %144 = fmul fast float %141, %130
  %145 = fmul fast float %60, %45
  %146 = fmul fast float %61, %46
  %147 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %145, float %146, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = extractvalue %dx.types.ResRet.f32 %147, 1
  %150 = extractvalue %dx.types.ResRet.f32 %147, 2
  %151 = fcmp fast ogt float %148, -1.000000e+00
  %152 = select i1 %151, float %54, float 1.000000e+00
  %153 = fadd fast float %148, 1.000000e+00
  %154 = fmul fast float %152, %153
  %155 = call float @dx.op.unary.f32(i32 6, float %154)  ; FAbs(value)
  %156 = fcmp fast ogt float %149, -1.000000e+00
  %157 = select i1 %156, float %54, float 1.000000e+00
  %158 = fadd fast float %149, 1.000000e+00
  %159 = fmul fast float %157, %158
  %160 = call float @dx.op.unary.f32(i32 6, float %159)  ; FAbs(value)
  %161 = fcmp fast ogt float %150, -1.000000e+00
  %162 = select i1 %161, float %54, float 1.000000e+00
  %163 = fadd fast float %150, 1.000000e+00
  %164 = fmul fast float %162, %163
  %165 = call float @dx.op.unary.f32(i32 6, float %164)  ; FAbs(value)
  %166 = fadd fast float %45, 1.000000e+00
  %167 = fmul fast float %60, %166
  %168 = fadd fast float %46, 1.000000e+00
  %169 = fmul fast float %61, %168
  %170 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %167, float %169, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = extractvalue %dx.types.ResRet.f32 %170, 2
  %173 = fcmp fast ogt float %171, -1.000000e+00
  %174 = select i1 %173, float %54, float 1.000000e+00
  %175 = fadd fast float %171, 1.000000e+00
  %176 = fmul fast float %174, %175
  %177 = call float @dx.op.unary.f32(i32 6, float %176)  ; FAbs(value)
  %178 = fcmp fast ogt float %172, -1.000000e+00
  %179 = select i1 %178, float %54, float 1.000000e+00
  %180 = fadd fast float %172, 1.000000e+00
  %181 = fmul fast float %179, %180
  %182 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %183 = fsub fast float %165, %160
  %184 = fsub fast float %177, %160
  %185 = fsub fast float %155, %160
  %186 = fsub fast float %182, %160
  %187 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %188 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %189 = call float @dx.op.binary.f32(i32 35, float %188, float %187)  ; FMax(a,b)
  %190 = call float @dx.op.unary.f32(i32 6, float %186)  ; FAbs(value)
  %191 = call float @dx.op.unary.f32(i32 6, float %185)  ; FAbs(value)
  %192 = call float @dx.op.binary.f32(i32 35, float %191, float %190)  ; FMax(a,b)
  %193 = fadd fast float %184, %183
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = fadd fast float %186, %185
  %196 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %197 = fsub fast float %192, %196
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = fsub fast float %189, %194
  %200 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %201 = call float @dx.op.binary.f32(i32 35, float %200, float %198)  ; FMax(a,b)
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %204 = fmul fast float %203, 0x3FE3C6EF40000000
  %205 = frem fast float %47, 2.560000e+02
  %206 = frem fast float %48, 2.560000e+02
  %207 = fptoui float %205 to i32
  %208 = fptoui float %206 to i32
  %209 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %207, i32 %208, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = extractvalue %dx.types.ResRet.f32 %209, 2
  %212 = fadd fast float %210, %204
  %213 = fadd fast float %211, %204
  %214 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %215 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.i32 %216, 0
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %832, label %219, !dx.controlflow.hints !32

; <label>:219                                     ; preds = %0
  %220 = fptoui float %47 to i32
  %221 = fptoui float %48 to i32
  %222 = lshr i32 %220, 4
  %223 = lshr i32 %221, 4
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 0
  %226 = call i32 @dx.op.tertiary.i32(i32 49, i32 %223, i32 %225, i32 %222)  ; UMad(a,b,c)
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 0
  %229 = add nsw i32 %228, -1
  %230 = call i32 @dx.op.binary.i32(i32 37, i32 %229, i32 0)  ; IMax(a,b)
  %231 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %232 = fptoui float %231 to i32
  %233 = lshr i32 %232, 5
  %234 = call i32 @dx.op.binary.i32(i32 40, i32 %233, i32 8191)  ; UMin(a,b)
  %235 = shl i32 %234, 2
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = lshr i32 %237, 16
  %239 = and i32 %237, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %240 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %238 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %241 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %242 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %239 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %243 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %244 = lshr i32 %241, 5
  %245 = lshr i32 %243, 5
  %246 = call i32 @dx.op.binary.i32(i32 40, i32 %245, i32 %230)  ; UMin(a,b)
  %247 = icmp ugt i32 %244, %246
  br i1 %247, label %832, label %248

; <label>:248                                     ; preds = %219
  br label %249

; <label>:249                                     ; preds = %822, %248
  %250 = phi i32 [ %829, %822 ], [ %244, %248 ]
  %251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.i32 %251, 0
  %253 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %252, i32 %250)  ; UMad(a,b,c)
  %254 = shl i32 %253, 2
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = shl i32 %250, 5
  %258 = sub nsw i32 %238, %257
  %259 = call i32 @dx.op.binary.i32(i32 37, i32 %258, i32 0)  ; IMax(a,b)
  %260 = call i32 @dx.op.binary.i32(i32 38, i32 %259, i32 31)  ; IMin(a,b)
  %261 = sub nsw i32 1, %238
  %262 = add nsw i32 %261, %239
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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %273 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %272 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %274 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = icmp eq i32 %22, 0
  br i1 %275, label %276, label %277, !dx.controlflow.hints !37

; <label>:276                                     ; preds = %249
  store i32 %274, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  br label %277

; <label>:277                                     ; preds = %276, %249
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %822, label %280

; <label>:280                                     ; preds = %277
  br label %281

; <label>:281                                     ; preds = %789, %280
  %282 = phi i32 [ %801, %789 ], [ 0, %280 ]
  %283 = phi i32 [ %288, %789 ], [ %278, %280 ]
  %284 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %283)  ; FirstbitLo(value)
  %285 = add i32 %284, %257
  %286 = and i32 %284, 31
  %287 = shl i32 1, %286
  %288 = xor i32 %287, %283
  %289 = mul i32 %285, 112
  %290 = add i32 %289, 16
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = add i32 %289, 28
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = add i32 %289, 32
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = extractvalue %dx.types.ResRet.f32 %299, 1
  %302 = extractvalue %dx.types.ResRet.f32 %299, 2
  %303 = add i32 %289, 44
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = add i32 %289, 48
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = extractvalue %dx.types.ResRet.f32 %307, 1
  %310 = extractvalue %dx.types.ResRet.f32 %307, 2
  %311 = extractvalue %dx.types.ResRet.f32 %307, 3
  %312 = add i32 %289, 64
  %313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = extractvalue %dx.types.ResRet.f32 %313, 1
  %316 = extractvalue %dx.types.ResRet.f32 %313, 2
  %317 = extractvalue %dx.types.ResRet.f32 %313, 3
  %318 = add i32 %289, 92
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = uitofp i32 %321 to float
  %323 = lshr i32 %320, 16
  %324 = uitofp i32 %323 to float
  %325 = and i32 %297, 65535
  %326 = and i32 %297, 50331648
  %327 = icmp eq i32 %326, 33554432
  %328 = call float @dx.op.dot3.f32(i32 55, float %300, float %301, float %302, float %300, float %301, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %329 = fsub fast float %113, %308
  %330 = fsub fast float %114, %309
  %331 = fsub fast float %115, %310
  %332 = call float @dx.op.dot3.f32(i32 55, float %329, float %330, float %331, float %300, float %301, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %333 = fdiv fast float %332, %328
  %334 = call float @dx.op.binary.f32(i32 35, float %333, float -1.000000e+00)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %334, float 1.000000e+00)  ; FMin(a,b)
  %336 = fmul fast float %335, %300
  %337 = fmul fast float %335, %301
  %338 = fmul fast float %335, %302
  %339 = fadd fast float %336, %308
  %340 = fadd fast float %337, %309
  %341 = fadd fast float %338, %310
  %342 = fsub fast float %339, %113
  %343 = fsub fast float %340, %114
  %344 = fsub fast float %341, %115
  %345 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %342, float %343, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %347 = fdiv fast float 1.000000e+00, %346
  %348 = fmul fast float %342, %347
  %349 = fmul fast float %343, %347
  %350 = fmul fast float %344, %347
  br i1 %327, label %351, label %375, !dx.controlflow.hints !38

; <label>:351                                     ; preds = %281
  %352 = fmul fast float %316, %292
  %353 = fmul fast float %316, %293
  %354 = fmul fast float %316, %294
  %355 = fsub fast float %352, %113
  %356 = fadd fast float %355, %339
  %357 = fsub fast float %353, %114
  %358 = fadd fast float %357, %340
  %359 = fsub fast float %354, %115
  %360 = fadd fast float %359, %341
  %361 = call float @dx.op.dot3.f32(i32 55, float %356, float %358, float %360, float %356, float %358, float %360)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = call float @dx.op.unary.f32(i32 25, float %361)  ; Rsqrt(value)
  %363 = fmul fast float %362, %356
  %364 = fmul fast float %362, %358
  %365 = fmul fast float %362, %360
  %366 = fsub fast float %113, %339
  %367 = fsub fast float %114, %340
  %368 = fsub fast float %115, %341
  %369 = fsub fast float -0.000000e+00, %366
  %370 = fsub fast float -0.000000e+00, %367
  %371 = fsub fast float -0.000000e+00, %368
  %372 = call float @dx.op.dot3.f32(i32 55, float %369, float %370, float %371, float %292, float %293, float %294)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fcmp fast ogt float %372, 0.000000e+00
  %374 = uitofp i1 %373 to float
  br label %375

; <label>:375                                     ; preds = %351, %281
  %376 = phi float [ %374, %351 ], [ 1.000000e+00, %281 ]
  %377 = phi float [ %363, %351 ], [ %348, %281 ]
  %378 = phi float [ %364, %351 ], [ %349, %281 ]
  %379 = phi float [ %365, %351 ], [ %350, %281 ]
  %380 = call float @dx.op.dot3.f32(i32 55, float %292, float %293, float %294, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = fmul fast float %380, %380
  %382 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  %383 = fsub fast float 1.000000e+00, %382
  %384 = fmul fast float %383, 5.000000e-01
  %385 = fcmp fast ogt float %380, 0.000000e+00
  %386 = fsub fast float 1.000000e+00, %384
  %387 = select i1 %385, float %384, float %386
  %388 = fmul fast float %387, %324
  %389 = fadd fast float %388, %322
  %390 = fmul fast float %389, 0x3EF0001000000000
  %391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %390, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = fmul fast float %380, %314
  %394 = fadd fast float %393, %315
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %396 = select i1 %327, float %395, float 1.000000e+00
  %397 = fmul fast float %346, %311
  %398 = fsub fast float 1.000000e+00, %397
  %399 = fmul fast float %398, %317
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = fmul fast float %400, %396
  %402 = fmul fast float %401, 2.000000e+00
  %403 = fsub fast float 3.000000e+00, %402
  %404 = fmul fast float %392, %376
  %405 = fmul fast float %401, %401
  %406 = fmul fast float %405, %404
  %407 = fmul fast float %406, %403
  %408 = icmp ne i32 %325, 255
  %409 = call float @dx.op.binary.f32(i32 36, float %407, float %407)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 36, float %407, float %409)  ; FMin(a,b)
  %411 = fcmp fast ogt float %410, 0.000000e+00
  %412 = and i1 %408, %411
  br i1 %412, label %413, label %512, !dx.controlflow.hints !39

; <label>:413                                     ; preds = %375
  %414 = select i1 %327, float 1.000000e+00, float %395
  %415 = mul nuw nsw i32 %325, 176
  %416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = extractvalue %dx.types.ResRet.f32 %416, 3
  %421 = add nuw nsw i32 %415, 16
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = add nuw nsw i32 %415, 32
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = add nuw nsw i32 %415, 48
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = add nuw nsw i32 %415, 64
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = extractvalue %dx.types.ResRet.f32 %437, 3
  %442 = add nuw nsw i32 %415, 80
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = extractvalue %dx.types.ResRet.f32 %443, 2
  %447 = extractvalue %dx.types.ResRet.f32 %443, 3
  %448 = add nuw nsw i32 %415, 96
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = bitcast float %424 to i32
  %455 = fmul fast float %429, %142
  %456 = fmul fast float %429, %143
  %457 = fmul fast float %429, %144
  %458 = fadd fast float %455, %113
  %459 = fadd fast float %456, %114
  %460 = fadd fast float %457, %115
  %461 = fmul fast float %458, %432
  %462 = call float @dx.op.tertiary.f32(i32 46, float %459, float %438, float %461)  ; FMad(a,b,c)
  %463 = call float @dx.op.tertiary.f32(i32 46, float %460, float %444, float %462)  ; FMad(a,b,c)
  %464 = fadd fast float %463, %450
  %465 = fmul fast float %458, %433
  %466 = call float @dx.op.tertiary.f32(i32 46, float %459, float %439, float %465)  ; FMad(a,b,c)
  %467 = call float @dx.op.tertiary.f32(i32 46, float %460, float %445, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %467, %451
  %469 = fmul fast float %458, %434
  %470 = call float @dx.op.tertiary.f32(i32 46, float %459, float %440, float %469)  ; FMad(a,b,c)
  %471 = call float @dx.op.tertiary.f32(i32 46, float %460, float %446, float %470)  ; FMad(a,b,c)
  %472 = fadd fast float %471, %452
  %473 = fmul fast float %458, %435
  %474 = call float @dx.op.tertiary.f32(i32 46, float %459, float %441, float %473)  ; FMad(a,b,c)
  %475 = call float @dx.op.tertiary.f32(i32 46, float %460, float %447, float %474)  ; FMad(a,b,c)
  %476 = fadd fast float %475, %453
  %477 = fdiv fast float %464, %476
  %478 = fdiv fast float %468, %476
  %479 = fdiv fast float %472, %476
  %480 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %479)  ; FMax(a,b)
  %481 = fmul fast float %214, 0x401921FB60000000
  %482 = call float @dx.op.unary.f32(i32 13, float %481)  ; Sin(value)
  %483 = call float @dx.op.unary.f32(i32 12, float %481)  ; Cos(value)
  %484 = fsub fast float -0.000000e+00, %482
  %485 = fmul fast float %419, 5.000000e-01
  %486 = call float @dx.op.dot2.f32(i32 54, float %214, float %214, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %487 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %488 = fmul fast float %487, 0x404A7DD040000000
  %489 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %490 = fmul fast float %489, %428
  %491 = fadd fast float %490, %485
  %492 = call float @dx.op.tertiary.f32(i32 46, float %491, float %484, float 0.000000e+00)  ; FMad(a,b,c)
  %493 = call float @dx.op.tertiary.f32(i32 46, float %491, float %483, float 0.000000e+00)  ; FMad(a,b,c)
  %494 = fadd fast float %492, %477
  %495 = fadd fast float %493, %478
  %496 = fmul fast float %494, %423
  %497 = fmul fast float %495, %423
  %498 = call float @dx.op.binary.f32(i32 35, float %496, float %419)  ; FMax(a,b)
  %499 = call float @dx.op.binary.f32(i32 35, float %497, float %419)  ; FMax(a,b)
  %500 = call float @dx.op.binary.f32(i32 36, float %498, float %420)  ; FMin(a,b)
  %501 = call float @dx.op.binary.f32(i32 36, float %499, float %420)  ; FMin(a,b)
  %502 = fadd fast float %500, %417
  %503 = fadd fast float %501, %418
  %504 = uitofp i32 %454 to float
  %505 = fadd fast float %480, %427
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %502, float %503, float %504, float undef, i32 0, i32 0, i32 undef, float %505)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = fadd fast float %507, -1.000000e+00
  %509 = fmul fast float %508, %414
  %510 = fadd fast float %509, 1.000000e+00
  %511 = fmul fast float %510, %407
  br label %512

; <label>:512                                     ; preds = %413, %375
  %513 = phi float [ %511, %413 ], [ %407, %375 ]
  %514 = call float @dx.op.binary.f32(i32 36, float %513, float %513)  ; FMin(a,b)
  %515 = call float @dx.op.binary.f32(i32 36, float %513, float %514)  ; FMin(a,b)
  %516 = fcmp fast ogt float %515, 0.000000e+00
  %517 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %348, float %349, float %350)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = fcmp fast ogt float %517, 0.000000e+00
  %519 = and i1 %516, %518
  br i1 %519, label %520, label %789, !dx.controlflow.hints !40

; <label>:520                                     ; preds = %512
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 1
  %525 = select i1 %51, float %522, float %524
  %526 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %527 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %528 = select i1 %51, float %526, float %527
  %529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.i32 %529, 0
  %531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.i32 %531, 0
  %533 = select i1 %51, i32 %530, i32 %532
  %534 = fcmp fast olt float %525, 5.000000e-01
  %535 = icmp eq i32 %533, 0
  %536 = or i1 %534, %535
  br i1 %536, label %784, label %537, !dx.controlflow.hints !41

; <label>:537                                     ; preds = %520
  %538 = fsub fast float %308, %113
  %539 = fsub fast float %309, %114
  %540 = fsub fast float %310, %115
  %541 = fmul fast float %538, %538
  %542 = fmul fast float %539, %539
  %543 = fadd fast float %541, %542
  %544 = fmul fast float %540, %540
  %545 = fadd fast float %543, %544
  %546 = call float @dx.op.unary.f32(i32 24, float %545)  ; Sqrt(value)
  %547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.i32 %547, 0
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %525, %305
  %551 = fdiv fast float %550, %546
  %552 = call float @dx.op.binary.f32(i32 36, float %551, float 1.000000e+01)  ; FMin(a,b)
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %557 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %561 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %562 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %566 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %567 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 0
  %570 = extractvalue %dx.types.CBufRet.f32 %568, 1
  %571 = extractvalue %dx.types.CBufRet.f32 %568, 2
  %572 = extractvalue %dx.types.CBufRet.f32 %568, 3
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %576 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %577 = extractvalue %dx.types.CBufRet.f32 %573, 3
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %581 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %582 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %583 = select i1 %51, float %554, float %569
  %584 = select i1 %51, float %559, float %574
  %585 = select i1 %51, float %564, float %579
  %586 = select i1 %51, float %555, float %570
  %587 = select i1 %51, float %560, float %575
  %588 = select i1 %51, float %565, float %580
  %589 = select i1 %51, float %556, float %571
  %590 = select i1 %51, float %561, float %576
  %591 = select i1 %51, float %566, float %581
  %592 = select i1 %51, float %557, float %572
  %593 = select i1 %51, float %562, float %577
  %594 = select i1 %51, float %567, float %582
  %595 = fmul fast float %215, 0x401061CAC0000000
  %596 = fmul fast float %215, 0x4023E1D7E0000000
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %600 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %601 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %602 = fsub fast float -0.000000e+00, %348
  %603 = fmul fast float %350, %602
  %604 = fmul fast float %348, %602
  %605 = fmul fast float %349, %349
  %606 = fsub fast float %604, %605
  %607 = fdiv fast float 1.000000e+00, %58
  %608 = fmul fast float %600, %47
  %609 = fmul fast float %601, %48
  %610 = fmul fast float %525, %348
  %611 = fmul fast float %525, %350
  %612 = fadd fast float %610, %113
  %613 = fadd fast float %611, %115
  %614 = fadd fast float %596, 5.000000e-01
  %615 = call float @dx.op.unary.f32(i32 22, float %614)  ; Frc(value)
  %616 = bitcast float %615 to i32
  %617 = ashr i32 %616, 1
  %618 = add nsw i32 %617, 532487669
  %619 = bitcast i32 %618 to float
  %620 = fmul fast float %619, %552
  %621 = fadd fast float %595, 5.000000e-01
  %622 = call float @dx.op.unary.f32(i32 22, float %621)  ; Frc(value)
  %623 = fmul fast float %622, 0x401921FB60000000
  %624 = call float @dx.op.unary.f32(i32 12, float %623)  ; Cos(value)
  %625 = fmul fast float %624, %624
  %626 = fsub fast float 1.000000e+00, %625
  %627 = bitcast float %626 to i32
  %628 = ashr i32 %627, 1
  %629 = add nsw i32 %628, 532487669
  %630 = bitcast i32 %629 to float
  %631 = fmul fast float %620, %624
  %632 = fmul fast float %631, %349
  %633 = fmul fast float %631, %602
  %634 = fadd fast float %612, %632
  %635 = fmul fast float %630, %620
  %636 = fmul fast float %603, %635
  %637 = fmul fast float %635, %350
  %638 = fmul fast float %635, %606
  %639 = fsub fast float %634, %636
  %640 = fadd fast float %637, %525
  %641 = fmul fast float %640, %349
  %642 = fadd fast float %633, %114
  %643 = fadd fast float %642, %641
  %644 = fadd fast float %613, %638
  %645 = fmul fast float %639, %583
  %646 = call float @dx.op.tertiary.f32(i32 46, float %643, float %586, float %645)  ; FMad(a,b,c)
  %647 = call float @dx.op.tertiary.f32(i32 46, float %644, float %589, float %646)  ; FMad(a,b,c)
  %648 = fadd fast float %647, %592
  %649 = fmul fast float %639, %584
  %650 = call float @dx.op.tertiary.f32(i32 46, float %643, float %587, float %649)  ; FMad(a,b,c)
  %651 = call float @dx.op.tertiary.f32(i32 46, float %644, float %590, float %650)  ; FMad(a,b,c)
  %652 = fadd fast float %651, %593
  %653 = fmul fast float %639, %585
  %654 = call float @dx.op.tertiary.f32(i32 46, float %643, float %588, float %653)  ; FMad(a,b,c)
  %655 = call float @dx.op.tertiary.f32(i32 46, float %644, float %591, float %654)  ; FMad(a,b,c)
  %656 = fadd fast float %655, %594
  %657 = fdiv fast float 1.000000e+00, %656
  %658 = fmul fast float %648, 5.000000e-01
  %659 = fmul fast float %652, -5.000000e-01
  %660 = fmul fast float %658, %657
  %661 = fmul fast float %659, %657
  %662 = fsub fast float 5.000000e-01, %608
  %663 = fadd fast float %662, %660
  %664 = fsub fast float 5.000000e-01, %609
  %665 = fadd fast float %664, %661
  %666 = fsub fast float %657, %607
  %667 = call float @dx.op.dot2.f32(i32 54, float %663, float %665, float %663, float %665)  ; Dot2(ax,ay,bx,by)
  %668 = call float @dx.op.binary.f32(i32 35, float %667, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %669 = call float @dx.op.dot2.f32(i32 54, float %598, float %599, float %598, float %599)  ; Dot2(ax,ay,bx,by)
  %670 = fmul fast float %669, %668
  %671 = call float @dx.op.unary.f32(i32 25, float %670)  ; Rsqrt(value)
  %672 = fmul fast float %671, %663
  %673 = fmul fast float %671, %665
  %674 = fadd fast float %672, %608
  %675 = fadd fast float %673, %609
  %676 = fmul fast float %663, %598
  %677 = fmul fast float %665, %599
  %678 = fmul fast float %676, %676
  %679 = fmul fast float %677, %677
  %680 = fadd fast float %678, %679
  %681 = call float @dx.op.unary.f32(i32 24, float %680)  ; Sqrt(value)
  %682 = fdiv fast float 1.000000e+00, %681
  %683 = fmul fast float %681, 3.906250e-03
  %684 = fmul fast float %201, 0x3F70624DE0000000
  %685 = fadd fast float %684, 0x3F70624DE0000000
  %686 = icmp sgt i32 %533, -1
  br i1 %686, label %687, label %749

; <label>:687                                     ; preds = %537
  br label %688

; <label>:688                                     ; preds = %745, %687
  %689 = phi float [ %720, %745 ], [ %58, %687 ]
  %690 = phi float [ %707, %745 ], [ %58, %687 ]
  %691 = phi float [ %690, %745 ], [ %58, %687 ]
  %692 = phi i32 [ %746, %745 ], [ 0, %687 ]
  %693 = sitofp i32 %692 to float
  %694 = fadd fast float %215, 5.000000e-01
  %695 = call float @dx.op.unary.f32(i32 22, float %694)  ; Frc(value)
  %696 = fadd fast float %693, %695
  %697 = sitofp i32 %533 to float
  %698 = fdiv fast float %696, %697
  %699 = fmul fast float %698, %698
  %700 = call float @dx.op.binary.f32(i32 36, float %699, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %701 = fmul fast float %700, %663
  %702 = fmul fast float %700, %665
  %703 = fmul fast float %700, %666
  %704 = fadd fast float %701, %674
  %705 = fadd fast float %702, %675
  %706 = fadd fast float %703, %607
  %707 = fdiv fast float 1.000000e+00, %706
  %708 = icmp ne i32 %548, 0
  %709 = fmul fast float %683, %700
  %710 = call float @dx.op.binary.f32(i32 36, float %709, float %549)  ; FMin(a,b)
  %711 = select i1 %708, float %710, float 0.000000e+00
  %712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %704, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float %711)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = fcmp fast ogt float %713, -1.000000e+00
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 1
  %717 = select i1 %714, float %716, float 1.000000e+00
  %718 = fadd fast float %713, 1.000000e+00
  %719 = fmul fast float %717, %718
  %720 = call float @dx.op.unary.f32(i32 6, float %719)  ; FAbs(value)
  %721 = fmul fast float %720, %685
  %722 = fsub fast float %707, %720
  %723 = fsub fast float %722, %721
  %724 = fcmp fast ogt float %723, 0.000000e+00
  %725 = fcmp fast ogt float %528, 0.000000e+00
  br i1 %725, label %726, label %729, !dx.controlflow.hints !42

; <label>:726                                     ; preds = %688
  %727 = fsub fast float %707, %691
  %728 = call float @dx.op.binary.f32(i32 35, float %727, float %528)  ; FMax(a,b)
  br label %729

; <label>:729                                     ; preds = %726, %688
  %730 = phi float [ %728, %726 ], [ %525, %688 ]
  %731 = fcmp fast olt float %723, %730
  %732 = fcmp uge float %713, -1.000000e+00
  %733 = or i1 %51, %732
  %734 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %735 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  %736 = fcmp fast oeq float %704, %734
  %737 = fcmp fast oeq float %705, %735
  %738 = and i1 %736, %737
  %739 = and i1 %733, %738
  %740 = and i1 %724, %731
  %741 = and i1 %740, %739
  %742 = fcmp fast ogt float %700, %682
  %743 = and i1 %742, %741
  %744 = zext i1 %743 to i32
  br i1 %743, label %748, label %745, !dx.controlflow.hints !43

; <label>:745                                     ; preds = %729
  %746 = add nuw nsw i32 %692, 1
  %747 = icmp slt i32 %692, %533
  br i1 %747, label %688, label %748

; <label>:748                                     ; preds = %745, %729
  br label %749

; <label>:749                                     ; preds = %748, %537
  %750 = phi i32 [ 0, %537 ], [ %744, %748 ]
  %751 = phi float [ %58, %537 ], [ %720, %748 ]
  %752 = phi float [ %58, %537 ], [ %689, %748 ]
  %753 = phi float [ %58, %537 ], [ %707, %748 ]
  %754 = phi float [ %58, %537 ], [ %690, %748 ]
  %755 = fsub fast float %754, %752
  %756 = fsub fast float %753, %751
  %757 = fsub fast float %755, %756
  %758 = fcmp fast une float %757, 0.000000e+00
  %759 = fmul fast float %755, %753
  %760 = fmul fast float %754, %756
  %761 = fsub fast float %759, %760
  %762 = fdiv fast float 1.000000e+00, %757
  %763 = fmul fast float %761, %762
  %764 = select i1 %758, float %763, float %753
  %765 = fdiv fast float 1.000000e+00, %764
  %766 = fsub fast float %765, %607
  %767 = fdiv fast float %766, %666
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %769 = fmul fast float %768, %663
  %770 = fmul fast float %768, %665
  %771 = fadd fast float %769, %674
  %772 = fadd fast float %770, %675
  %773 = fadd fast float %771, -5.000000e-01
  %774 = fadd fast float %772, -5.000000e-01
  %775 = call float @dx.op.unary.f32(i32 6, float %773)  ; FAbs(value)
  %776 = call float @dx.op.unary.f32(i32 6, float %774)  ; FAbs(value)
  %777 = fadd fast float %775, -5.000000e-01
  %778 = fadd fast float %776, -5.000000e-01
  %779 = call float @dx.op.binary.f32(i32 35, float %777, float %778)  ; FMax(a,b)
  %780 = fcmp fast olt float %779, 0.000000e+00
  %781 = icmp ne i32 %750, 0
  %782 = and i1 %781, %780
  %783 = select i1 %782, float 0.000000e+00, float 1.000000e+00
  br label %784

; <label>:784                                     ; preds = %749, %520
  %785 = phi float [ %783, %749 ], [ 1.000000e+00, %520 ]
  %786 = fmul fast float %785, %513
  %787 = fmul fast float %785, %513
  %788 = fmul fast float %785, %513
  br label %789

; <label>:789                                     ; preds = %784, %512
  %790 = phi float [ %786, %784 ], [ %513, %512 ]
  %791 = phi float [ %787, %784 ], [ %513, %512 ]
  %792 = phi float [ %788, %784 ], [ %513, %512 ]
  %793 = call float @dx.op.binary.f32(i32 36, float %791, float %792)  ; FMin(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %790, float %793)  ; FMin(a,b)
  %795 = fcmp fast ogt float %794, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %796 = zext i1 %795 to i32
  %797 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %796 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %798 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %799 = icmp eq i32 %798, 0
  %800 = select i1 %799, i32 0, i32 %287
  %801 = or i32 %282, %800
  %802 = lshr i32 %220, 5
  %803 = lshr i32 %221, 5
  %804 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %802, i32 %803, i32 %285, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = lshr i32 %805, 23
  %807 = and i32 %806, 255
  %808 = and i32 %220, 31
  %809 = and i32 %221, 31
  %810 = lshr i32 %805, 1
  %811 = and i32 %810, 16352
  %812 = lshr i32 %805, 10
  %813 = and i32 %812, 8160
  %814 = or i32 %811, %808
  %815 = or i32 %813, %809
  %816 = fmul fast float %790, 2.550000e+02
  %817 = fadd fast float %816, %214
  %818 = call float @dx.op.unary.f32(i32 27, float %817)  ; Round_ni(value)
  %819 = fmul fast float %818, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %814, i32 %815, i32 %807, float %819, float %819, float %819, float %819, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %820 = icmp eq i32 %283, %287
  br i1 %820, label %821, label %281, !llvm.loop !44

; <label>:821                                     ; preds = %789
  br label %822

; <label>:822                                     ; preds = %821, %277
  %823 = phi i32 [ 0, %277 ], [ %801, %821 ]
  %824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.i32 %824, 0
  %826 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %825, i32 %250)  ; UMad(a,b,c)
  %827 = shl i32 %826, 2
  %828 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %827, i32 undef, i32 undef, i32 %823)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %829 = add i32 %250, 1
  %830 = icmp ugt i32 %829, %246
  br i1 %830, label %831, label %249

; <label>:831                                     ; preds = %822
  br label %832

; <label>:832                                     ; preds = %831, %219, %0
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
!dx.entryPoints = !{!29}

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
!25 = !{!26, !27, !28}
!26 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}

