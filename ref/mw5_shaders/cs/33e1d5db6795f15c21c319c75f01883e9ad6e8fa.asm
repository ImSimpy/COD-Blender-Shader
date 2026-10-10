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
; shader hash: 7f02b91daf24997b9862e55116e831fd
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
  br i1 %218, label %950, label %219, !dx.controlflow.hints !32

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
  %240 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %241 = udiv i32 %22, %240
  %242 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %238, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %243 = icmp eq i32 %240, 64
  br i1 %243, label %270, label %244, !dx.controlflow.hints !33

; <label>:244                                     ; preds = %219
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %245 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %245, label %246, label %248, !dx.controlflow.hints !34

; <label>:246                                     ; preds = %244
  %247 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  store i32 %242, i32 addrspace(3)* %247, align 4, !tbaa !35
  br label %248

; <label>:248                                     ; preds = %246, %244
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = icmp eq i32 %240, 32
  br i1 %249, label %250, label %255, !dx.controlflow.hints !39

; <label>:250                                     ; preds = %248
  %251 = xor i32 %241, 1
  %252 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %251
  %253 = load i32, i32 addrspace(3)* %252, align 4, !tbaa !35
  %254 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %253)  ; UMin(a,b)
  br label %270

; <label>:255                                     ; preds = %248
  %256 = icmp eq i32 %240, 16
  br i1 %256, label %257, label %270, !dx.controlflow.hints !40

; <label>:257                                     ; preds = %255
  %258 = xor i32 %241, 3
  %259 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %258
  %260 = load i32, i32 addrspace(3)* %259, align 4, !tbaa !35
  %261 = xor i32 %241, 2
  %262 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %261
  %263 = load i32, i32 addrspace(3)* %262, align 4, !tbaa !35
  %264 = call i32 @dx.op.binary.i32(i32 40, i32 %263, i32 %260)  ; UMin(a,b)
  %265 = xor i32 %241, 1
  %266 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %265
  %267 = load i32, i32 addrspace(3)* %266, align 4, !tbaa !35
  %268 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %267)  ; UMin(a,b)
  %269 = call i32 @dx.op.binary.i32(i32 40, i32 %268, i32 %264)  ; UMin(a,b)
  br label %270

; <label>:270                                     ; preds = %257, %255, %250, %219
  %271 = phi i32 [ %254, %250 ], [ %269, %257 ], [ %242, %219 ], [ 0, %255 ]
  %272 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %239, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %243, label %299, label %273, !dx.controlflow.hints !41

; <label>:273                                     ; preds = %270
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %274 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %274, label %275, label %277, !dx.controlflow.hints !42

; <label>:275                                     ; preds = %273
  %276 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  store i32 %272, i32 addrspace(3)* %276, align 4, !tbaa !35
  br label %277

; <label>:277                                     ; preds = %275, %273
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = icmp eq i32 %240, 32
  br i1 %278, label %279, label %284, !dx.controlflow.hints !43

; <label>:279                                     ; preds = %277
  %280 = xor i32 %241, 1
  %281 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %280
  %282 = load i32, i32 addrspace(3)* %281, align 4, !tbaa !35
  %283 = call i32 @dx.op.binary.i32(i32 39, i32 %272, i32 %282)  ; UMax(a,b)
  br label %299

; <label>:284                                     ; preds = %277
  %285 = icmp eq i32 %240, 16
  br i1 %285, label %286, label %299, !dx.controlflow.hints !44

; <label>:286                                     ; preds = %284
  %287 = xor i32 %241, 3
  %288 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %287
  %289 = load i32, i32 addrspace(3)* %288, align 4, !tbaa !35
  %290 = xor i32 %241, 2
  %291 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %290
  %292 = load i32, i32 addrspace(3)* %291, align 4, !tbaa !35
  %293 = call i32 @dx.op.binary.i32(i32 39, i32 %292, i32 %289)  ; UMax(a,b)
  %294 = xor i32 %241, 1
  %295 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %294
  %296 = load i32, i32 addrspace(3)* %295, align 4, !tbaa !35
  %297 = call i32 @dx.op.binary.i32(i32 39, i32 %272, i32 %296)  ; UMax(a,b)
  %298 = call i32 @dx.op.binary.i32(i32 39, i32 %297, i32 %293)  ; UMax(a,b)
  br label %299

; <label>:299                                     ; preds = %286, %284, %279, %270
  %300 = phi i32 [ %283, %279 ], [ %298, %286 ], [ %272, %270 ], [ 0, %284 ]
  %301 = lshr i32 %271, 5
  %302 = lshr i32 %300, 5
  %303 = call i32 @dx.op.binary.i32(i32 40, i32 %302, i32 %230)  ; UMin(a,b)
  %304 = icmp ugt i32 %301, %303
  br i1 %304, label %950, label %305

; <label>:305                                     ; preds = %299
  br label %306

; <label>:306                                     ; preds = %940, %305
  %307 = phi i32 [ %947, %940 ], [ %301, %305 ]
  %308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.i32 %308, 0
  %310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %309, i32 %307)  ; UMad(a,b,c)
  %311 = shl i32 %310, 2
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %307, 5
  %315 = sub nsw i32 %238, %314
  %316 = call i32 @dx.op.binary.i32(i32 37, i32 %315, i32 0)  ; IMax(a,b)
  %317 = call i32 @dx.op.binary.i32(i32 38, i32 %316, i32 31)  ; IMin(a,b)
  %318 = sub nsw i32 1, %238
  %319 = add nsw i32 %318, %239
  %320 = call i32 @dx.op.binary.i32(i32 37, i32 %319, i32 0)  ; IMax(a,b)
  %321 = call i32 @dx.op.binary.i32(i32 38, i32 %320, i32 32)  ; IMin(a,b)
  %322 = and i32 %321, 31
  %323 = shl i32 -1, %322
  %324 = xor i32 %323, -1
  %325 = and i32 %317, 31
  %326 = shl i32 %324, %325
  %327 = icmp eq i32 %321, 32
  %328 = select i1 %327, i32 -1, i32 %326
  %329 = and i32 %328, %313
  %330 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %329, i8 1)  ; WaveActiveBit(value,op)
  br i1 %243, label %357, label %331, !dx.controlflow.hints !45

; <label>:331                                     ; preds = %306
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %332 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %332, label %333, label %335, !dx.controlflow.hints !46

; <label>:333                                     ; preds = %331
  %334 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  store i32 %330, i32 addrspace(3)* %334, align 4, !tbaa !35
  br label %335

; <label>:335                                     ; preds = %333, %331
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %336 = icmp eq i32 %240, 32
  br i1 %336, label %337, label %342, !dx.controlflow.hints !47

; <label>:337                                     ; preds = %335
  %338 = xor i32 %241, 1
  %339 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %338
  %340 = load i32, i32 addrspace(3)* %339, align 4, !tbaa !35
  %341 = or i32 %340, %330
  br label %357

; <label>:342                                     ; preds = %335
  %343 = icmp eq i32 %240, 16
  br i1 %343, label %344, label %357, !dx.controlflow.hints !48

; <label>:344                                     ; preds = %342
  %345 = xor i32 %241, 1
  %346 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %345
  %347 = load i32, i32 addrspace(3)* %346, align 4, !tbaa !35
  %348 = or i32 %347, %330
  %349 = xor i32 %241, 2
  %350 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %349
  %351 = load i32, i32 addrspace(3)* %350, align 4, !tbaa !35
  %352 = or i32 %348, %351
  %353 = xor i32 %241, 3
  %354 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %353
  %355 = load i32, i32 addrspace(3)* %354, align 4, !tbaa !35
  %356 = or i32 %352, %355
  br label %357

; <label>:357                                     ; preds = %344, %342, %337, %306
  %358 = phi i32 [ %341, %337 ], [ %356, %344 ], [ %330, %306 ], [ 0, %342 ]
  br i1 %243, label %359, label %361, !dx.controlflow.hints !49

; <label>:359                                     ; preds = %357
  %360 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %358)  ; WaveReadLaneFirst(value)
  br label %366

; <label>:361                                     ; preds = %357
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %362 = icmp eq i32 %22, 0
  br i1 %362, label %363, label %364, !dx.controlflow.hints !50

; <label>:363                                     ; preds = %361
  store i32 %358, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  br label %364

; <label>:364                                     ; preds = %363, %361
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %365 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !35
  br label %366

; <label>:366                                     ; preds = %364, %359
  %367 = phi i32 [ %360, %359 ], [ %365, %364 ]
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %940, label %369

; <label>:369                                     ; preds = %366
  br label %370

; <label>:370                                     ; preds = %916, %369
  %371 = phi i32 [ %919, %916 ], [ 0, %369 ]
  %372 = phi i32 [ %377, %916 ], [ %367, %369 ]
  %373 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %372)  ; FirstbitLo(value)
  %374 = add i32 %373, %314
  %375 = and i32 %373, 31
  %376 = shl i32 1, %375
  %377 = xor i32 %376, %372
  %378 = mul i32 %374, 112
  %379 = add i32 %378, 16
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = extractvalue %dx.types.ResRet.f32 %380, 2
  %384 = add i32 %378, 28
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %378, 32
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = add i32 %378, 44
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = add i32 %378, 48
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = extractvalue %dx.types.ResRet.f32 %396, 3
  %401 = add i32 %378, 64
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add i32 %378, 92
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = uitofp i32 %410 to float
  %412 = lshr i32 %409, 16
  %413 = uitofp i32 %412 to float
  %414 = and i32 %386, 65535
  %415 = and i32 %386, 50331648
  %416 = icmp eq i32 %415, 33554432
  %417 = call float @dx.op.dot3.f32(i32 55, float %389, float %390, float %391, float %389, float %390, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %418 = fsub fast float %113, %397
  %419 = fsub fast float %114, %398
  %420 = fsub fast float %115, %399
  %421 = call float @dx.op.dot3.f32(i32 55, float %418, float %419, float %420, float %389, float %390, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %422 = fdiv fast float %421, %417
  %423 = call float @dx.op.binary.f32(i32 35, float %422, float -1.000000e+00)  ; FMax(a,b)
  %424 = call float @dx.op.binary.f32(i32 36, float %423, float 1.000000e+00)  ; FMin(a,b)
  %425 = fmul fast float %424, %389
  %426 = fmul fast float %424, %390
  %427 = fmul fast float %424, %391
  %428 = fadd fast float %425, %397
  %429 = fadd fast float %426, %398
  %430 = fadd fast float %427, %399
  %431 = fsub fast float %428, %113
  %432 = fsub fast float %429, %114
  %433 = fsub fast float %430, %115
  %434 = call float @dx.op.dot3.f32(i32 55, float %431, float %432, float %433, float %431, float %432, float %433)  ; Dot3(ax,ay,az,bx,by,bz)
  %435 = call float @dx.op.unary.f32(i32 24, float %434)  ; Sqrt(value)
  %436 = fdiv fast float 1.000000e+00, %435
  %437 = fmul fast float %431, %436
  %438 = fmul fast float %432, %436
  %439 = fmul fast float %433, %436
  br i1 %416, label %440, label %464, !dx.controlflow.hints !51

; <label>:440                                     ; preds = %370
  %441 = fmul fast float %405, %381
  %442 = fmul fast float %405, %382
  %443 = fmul fast float %405, %383
  %444 = fsub fast float %441, %113
  %445 = fadd fast float %444, %428
  %446 = fsub fast float %442, %114
  %447 = fadd fast float %446, %429
  %448 = fsub fast float %443, %115
  %449 = fadd fast float %448, %430
  %450 = call float @dx.op.dot3.f32(i32 55, float %445, float %447, float %449, float %445, float %447, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = call float @dx.op.unary.f32(i32 25, float %450)  ; Rsqrt(value)
  %452 = fmul fast float %451, %445
  %453 = fmul fast float %451, %447
  %454 = fmul fast float %451, %449
  %455 = fsub fast float %113, %428
  %456 = fsub fast float %114, %429
  %457 = fsub fast float %115, %430
  %458 = fsub fast float -0.000000e+00, %455
  %459 = fsub fast float -0.000000e+00, %456
  %460 = fsub fast float -0.000000e+00, %457
  %461 = call float @dx.op.dot3.f32(i32 55, float %458, float %459, float %460, float %381, float %382, float %383)  ; Dot3(ax,ay,az,bx,by,bz)
  %462 = fcmp fast ogt float %461, 0.000000e+00
  %463 = uitofp i1 %462 to float
  br label %464

; <label>:464                                     ; preds = %440, %370
  %465 = phi float [ %463, %440 ], [ 1.000000e+00, %370 ]
  %466 = phi float [ %452, %440 ], [ %437, %370 ]
  %467 = phi float [ %453, %440 ], [ %438, %370 ]
  %468 = phi float [ %454, %440 ], [ %439, %370 ]
  %469 = call float @dx.op.dot3.f32(i32 55, float %381, float %382, float %383, float %466, float %467, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = fmul fast float %469, %469
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fsub fast float 1.000000e+00, %471
  %473 = fmul fast float %472, 5.000000e-01
  %474 = fcmp fast ogt float %469, 0.000000e+00
  %475 = fsub fast float 1.000000e+00, %473
  %476 = select i1 %474, float %473, float %475
  %477 = fmul fast float %476, %413
  %478 = fadd fast float %477, %411
  %479 = fmul fast float %478, 0x3EF0001000000000
  %480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %479, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = fmul fast float %469, %403
  %483 = fadd fast float %482, %404
  %484 = call float @dx.op.unary.f32(i32 7, float %483)  ; Saturate(value)
  %485 = select i1 %416, float %484, float 1.000000e+00
  %486 = fmul fast float %435, %400
  %487 = fsub fast float 1.000000e+00, %486
  %488 = fmul fast float %487, %406
  %489 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %490 = fmul fast float %489, %485
  %491 = fmul fast float %490, 2.000000e+00
  %492 = fsub fast float 3.000000e+00, %491
  %493 = fmul fast float %481, %465
  %494 = fmul fast float %490, %490
  %495 = fmul fast float %494, %493
  %496 = fmul fast float %495, %492
  %497 = icmp ne i32 %414, 255
  %498 = call float @dx.op.binary.f32(i32 36, float %496, float %496)  ; FMin(a,b)
  %499 = call float @dx.op.binary.f32(i32 36, float %496, float %498)  ; FMin(a,b)
  %500 = fcmp fast ogt float %499, 0.000000e+00
  %501 = and i1 %497, %500
  br i1 %501, label %502, label %601, !dx.controlflow.hints !52

; <label>:502                                     ; preds = %464
  %503 = select i1 %416, float 1.000000e+00, float %484
  %504 = mul nuw nsw i32 %414, 176
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = extractvalue %dx.types.ResRet.f32 %505, 2
  %509 = extractvalue %dx.types.ResRet.f32 %505, 3
  %510 = add nuw nsw i32 %504, 16
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = add nuw nsw i32 %504, 32
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = add nuw nsw i32 %504, 48
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = extractvalue %dx.types.ResRet.f32 %520, 2
  %524 = extractvalue %dx.types.ResRet.f32 %520, 3
  %525 = add nuw nsw i32 %504, 64
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = extractvalue %dx.types.ResRet.f32 %526, 3
  %531 = add nuw nsw i32 %504, 80
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = extractvalue %dx.types.ResRet.f32 %532, 3
  %537 = add nuw nsw i32 %504, 96
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  %543 = bitcast float %513 to i32
  %544 = fmul fast float %518, %142
  %545 = fmul fast float %518, %143
  %546 = fmul fast float %518, %144
  %547 = fadd fast float %544, %113
  %548 = fadd fast float %545, %114
  %549 = fadd fast float %546, %115
  %550 = fmul fast float %547, %521
  %551 = call float @dx.op.tertiary.f32(i32 46, float %548, float %527, float %550)  ; FMad(a,b,c)
  %552 = call float @dx.op.tertiary.f32(i32 46, float %549, float %533, float %551)  ; FMad(a,b,c)
  %553 = fadd fast float %552, %539
  %554 = fmul fast float %547, %522
  %555 = call float @dx.op.tertiary.f32(i32 46, float %548, float %528, float %554)  ; FMad(a,b,c)
  %556 = call float @dx.op.tertiary.f32(i32 46, float %549, float %534, float %555)  ; FMad(a,b,c)
  %557 = fadd fast float %556, %540
  %558 = fmul fast float %547, %523
  %559 = call float @dx.op.tertiary.f32(i32 46, float %548, float %529, float %558)  ; FMad(a,b,c)
  %560 = call float @dx.op.tertiary.f32(i32 46, float %549, float %535, float %559)  ; FMad(a,b,c)
  %561 = fadd fast float %560, %541
  %562 = fmul fast float %547, %524
  %563 = call float @dx.op.tertiary.f32(i32 46, float %548, float %530, float %562)  ; FMad(a,b,c)
  %564 = call float @dx.op.tertiary.f32(i32 46, float %549, float %536, float %563)  ; FMad(a,b,c)
  %565 = fadd fast float %564, %542
  %566 = fdiv fast float %553, %565
  %567 = fdiv fast float %557, %565
  %568 = fdiv fast float %561, %565
  %569 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %568)  ; FMax(a,b)
  %570 = fmul fast float %214, 0x401921FB60000000
  %571 = call float @dx.op.unary.f32(i32 13, float %570)  ; Sin(value)
  %572 = call float @dx.op.unary.f32(i32 12, float %570)  ; Cos(value)
  %573 = fsub fast float -0.000000e+00, %571
  %574 = fmul fast float %508, 5.000000e-01
  %575 = call float @dx.op.dot2.f32(i32 54, float %214, float %214, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %576 = call float @dx.op.unary.f32(i32 22, float %575)  ; Frc(value)
  %577 = fmul fast float %576, 0x404A7DD040000000
  %578 = call float @dx.op.unary.f32(i32 22, float %577)  ; Frc(value)
  %579 = fmul fast float %578, %517
  %580 = fadd fast float %579, %574
  %581 = call float @dx.op.tertiary.f32(i32 46, float %580, float %573, float 0.000000e+00)  ; FMad(a,b,c)
  %582 = call float @dx.op.tertiary.f32(i32 46, float %580, float %572, float 0.000000e+00)  ; FMad(a,b,c)
  %583 = fadd fast float %581, %566
  %584 = fadd fast float %582, %567
  %585 = fmul fast float %583, %512
  %586 = fmul fast float %584, %512
  %587 = call float @dx.op.binary.f32(i32 35, float %585, float %508)  ; FMax(a,b)
  %588 = call float @dx.op.binary.f32(i32 35, float %586, float %508)  ; FMax(a,b)
  %589 = call float @dx.op.binary.f32(i32 36, float %587, float %509)  ; FMin(a,b)
  %590 = call float @dx.op.binary.f32(i32 36, float %588, float %509)  ; FMin(a,b)
  %591 = fadd fast float %589, %506
  %592 = fadd fast float %590, %507
  %593 = uitofp i32 %543 to float
  %594 = fadd fast float %569, %516
  %595 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %591, float %592, float %593, float undef, i32 0, i32 0, i32 undef, float %594)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = fadd fast float %596, -1.000000e+00
  %598 = fmul fast float %597, %503
  %599 = fadd fast float %598, 1.000000e+00
  %600 = fmul fast float %599, %496
  br label %601

; <label>:601                                     ; preds = %502, %464
  %602 = phi float [ %600, %502 ], [ %496, %464 ]
  %603 = call float @dx.op.binary.f32(i32 36, float %602, float %602)  ; FMin(a,b)
  %604 = call float @dx.op.binary.f32(i32 36, float %602, float %603)  ; FMin(a,b)
  %605 = fcmp fast ogt float %604, 0.000000e+00
  %606 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %437, float %438, float %439)  ; Dot3(ax,ay,az,bx,by,bz)
  %607 = fcmp fast ogt float %606, 0.000000e+00
  %608 = and i1 %605, %607
  br i1 %608, label %609, label %878, !dx.controlflow.hints !53

; <label>:609                                     ; preds = %601
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %614 = select i1 %51, float %611, float %613
  %615 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %616 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %617 = select i1 %51, float %615, float %616
  %618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.i32 %618, 0
  %620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.i32 %620, 0
  %622 = select i1 %51, i32 %619, i32 %621
  %623 = fcmp fast olt float %614, 5.000000e-01
  %624 = icmp eq i32 %622, 0
  %625 = or i1 %623, %624
  br i1 %625, label %873, label %626, !dx.controlflow.hints !54

; <label>:626                                     ; preds = %609
  %627 = fsub fast float %397, %113
  %628 = fsub fast float %398, %114
  %629 = fsub fast float %399, %115
  %630 = fmul fast float %627, %627
  %631 = fmul fast float %628, %628
  %632 = fadd fast float %630, %631
  %633 = fmul fast float %629, %629
  %634 = fadd fast float %632, %633
  %635 = call float @dx.op.unary.f32(i32 24, float %634)  ; Sqrt(value)
  %636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.i32 %636, 0
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %614, %394
  %640 = fdiv fast float %639, %635
  %641 = call float @dx.op.binary.f32(i32 36, float %640, float 1.000000e+01)  ; FMin(a,b)
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %649 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %650 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %651 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %655 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %656 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %660 = extractvalue %dx.types.CBufRet.f32 %657, 2
  %661 = extractvalue %dx.types.CBufRet.f32 %657, 3
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %664 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %665 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %666 = extractvalue %dx.types.CBufRet.f32 %662, 3
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %670 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %671 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %672 = select i1 %51, float %643, float %658
  %673 = select i1 %51, float %648, float %663
  %674 = select i1 %51, float %653, float %668
  %675 = select i1 %51, float %644, float %659
  %676 = select i1 %51, float %649, float %664
  %677 = select i1 %51, float %654, float %669
  %678 = select i1 %51, float %645, float %660
  %679 = select i1 %51, float %650, float %665
  %680 = select i1 %51, float %655, float %670
  %681 = select i1 %51, float %646, float %661
  %682 = select i1 %51, float %651, float %666
  %683 = select i1 %51, float %656, float %671
  %684 = fmul fast float %215, 0x401061CAC0000000
  %685 = fmul fast float %215, 0x4023E1D7E0000000
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %690 = extractvalue %dx.types.CBufRet.f32 %686, 3
  %691 = fsub fast float -0.000000e+00, %437
  %692 = fmul fast float %439, %691
  %693 = fmul fast float %437, %691
  %694 = fmul fast float %438, %438
  %695 = fsub fast float %693, %694
  %696 = fdiv fast float 1.000000e+00, %58
  %697 = fmul fast float %689, %47
  %698 = fmul fast float %690, %48
  %699 = fmul fast float %614, %437
  %700 = fmul fast float %614, %439
  %701 = fadd fast float %699, %113
  %702 = fadd fast float %700, %115
  %703 = fadd fast float %685, 5.000000e-01
  %704 = call float @dx.op.unary.f32(i32 22, float %703)  ; Frc(value)
  %705 = bitcast float %704 to i32
  %706 = ashr i32 %705, 1
  %707 = add nsw i32 %706, 532487669
  %708 = bitcast i32 %707 to float
  %709 = fmul fast float %708, %641
  %710 = fadd fast float %684, 5.000000e-01
  %711 = call float @dx.op.unary.f32(i32 22, float %710)  ; Frc(value)
  %712 = fmul fast float %711, 0x401921FB60000000
  %713 = call float @dx.op.unary.f32(i32 12, float %712)  ; Cos(value)
  %714 = fmul fast float %713, %713
  %715 = fsub fast float 1.000000e+00, %714
  %716 = bitcast float %715 to i32
  %717 = ashr i32 %716, 1
  %718 = add nsw i32 %717, 532487669
  %719 = bitcast i32 %718 to float
  %720 = fmul fast float %709, %713
  %721 = fmul fast float %720, %438
  %722 = fmul fast float %720, %691
  %723 = fadd fast float %701, %721
  %724 = fmul fast float %719, %709
  %725 = fmul fast float %692, %724
  %726 = fmul fast float %724, %439
  %727 = fmul fast float %724, %695
  %728 = fsub fast float %723, %725
  %729 = fadd fast float %726, %614
  %730 = fmul fast float %729, %438
  %731 = fadd fast float %722, %114
  %732 = fadd fast float %731, %730
  %733 = fadd fast float %702, %727
  %734 = fmul fast float %728, %672
  %735 = call float @dx.op.tertiary.f32(i32 46, float %732, float %675, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %733, float %678, float %735)  ; FMad(a,b,c)
  %737 = fadd fast float %736, %681
  %738 = fmul fast float %728, %673
  %739 = call float @dx.op.tertiary.f32(i32 46, float %732, float %676, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %733, float %679, float %739)  ; FMad(a,b,c)
  %741 = fadd fast float %740, %682
  %742 = fmul fast float %728, %674
  %743 = call float @dx.op.tertiary.f32(i32 46, float %732, float %677, float %742)  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float %733, float %680, float %743)  ; FMad(a,b,c)
  %745 = fadd fast float %744, %683
  %746 = fdiv fast float 1.000000e+00, %745
  %747 = fmul fast float %737, 5.000000e-01
  %748 = fmul fast float %741, -5.000000e-01
  %749 = fmul fast float %747, %746
  %750 = fmul fast float %748, %746
  %751 = fsub fast float 5.000000e-01, %697
  %752 = fadd fast float %751, %749
  %753 = fsub fast float 5.000000e-01, %698
  %754 = fadd fast float %753, %750
  %755 = fsub fast float %746, %696
  %756 = call float @dx.op.dot2.f32(i32 54, float %752, float %754, float %752, float %754)  ; Dot2(ax,ay,bx,by)
  %757 = call float @dx.op.binary.f32(i32 35, float %756, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %758 = call float @dx.op.dot2.f32(i32 54, float %687, float %688, float %687, float %688)  ; Dot2(ax,ay,bx,by)
  %759 = fmul fast float %758, %757
  %760 = call float @dx.op.unary.f32(i32 25, float %759)  ; Rsqrt(value)
  %761 = fmul fast float %760, %752
  %762 = fmul fast float %760, %754
  %763 = fadd fast float %761, %697
  %764 = fadd fast float %762, %698
  %765 = fmul fast float %752, %687
  %766 = fmul fast float %754, %688
  %767 = fmul fast float %765, %765
  %768 = fmul fast float %766, %766
  %769 = fadd fast float %767, %768
  %770 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %771 = fdiv fast float 1.000000e+00, %770
  %772 = fmul fast float %770, 3.906250e-03
  %773 = fmul fast float %201, 0x3F70624DE0000000
  %774 = fadd fast float %773, 0x3F70624DE0000000
  %775 = icmp sgt i32 %622, -1
  br i1 %775, label %776, label %838

; <label>:776                                     ; preds = %626
  br label %777

; <label>:777                                     ; preds = %834, %776
  %778 = phi float [ %809, %834 ], [ %58, %776 ]
  %779 = phi float [ %796, %834 ], [ %58, %776 ]
  %780 = phi float [ %779, %834 ], [ %58, %776 ]
  %781 = phi i32 [ %835, %834 ], [ 0, %776 ]
  %782 = sitofp i32 %781 to float
  %783 = fadd fast float %215, 5.000000e-01
  %784 = call float @dx.op.unary.f32(i32 22, float %783)  ; Frc(value)
  %785 = fadd fast float %782, %784
  %786 = sitofp i32 %622 to float
  %787 = fdiv fast float %785, %786
  %788 = fmul fast float %787, %787
  %789 = call float @dx.op.binary.f32(i32 36, float %788, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %790 = fmul fast float %789, %752
  %791 = fmul fast float %789, %754
  %792 = fmul fast float %789, %755
  %793 = fadd fast float %790, %763
  %794 = fadd fast float %791, %764
  %795 = fadd fast float %792, %696
  %796 = fdiv fast float 1.000000e+00, %795
  %797 = icmp ne i32 %637, 0
  %798 = fmul fast float %772, %789
  %799 = call float @dx.op.binary.f32(i32 36, float %798, float %638)  ; FMin(a,b)
  %800 = select i1 %797, float %799, float 0.000000e+00
  %801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %793, float %794, float undef, float undef, i32 0, i32 0, i32 undef, float %800)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = fcmp fast ogt float %802, -1.000000e+00
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %806 = select i1 %803, float %805, float 1.000000e+00
  %807 = fadd fast float %802, 1.000000e+00
  %808 = fmul fast float %806, %807
  %809 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %810 = fmul fast float %809, %774
  %811 = fsub fast float %796, %809
  %812 = fsub fast float %811, %810
  %813 = fcmp fast ogt float %812, 0.000000e+00
  %814 = fcmp fast ogt float %617, 0.000000e+00
  br i1 %814, label %815, label %818, !dx.controlflow.hints !55

; <label>:815                                     ; preds = %777
  %816 = fsub fast float %796, %780
  %817 = call float @dx.op.binary.f32(i32 35, float %816, float %617)  ; FMax(a,b)
  br label %818

; <label>:818                                     ; preds = %815, %777
  %819 = phi float [ %817, %815 ], [ %614, %777 ]
  %820 = fcmp fast olt float %812, %819
  %821 = fcmp uge float %802, -1.000000e+00
  %822 = or i1 %51, %821
  %823 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %824 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %825 = fcmp fast oeq float %793, %823
  %826 = fcmp fast oeq float %794, %824
  %827 = and i1 %825, %826
  %828 = and i1 %822, %827
  %829 = and i1 %813, %820
  %830 = and i1 %829, %828
  %831 = fcmp fast ogt float %789, %771
  %832 = and i1 %831, %830
  %833 = zext i1 %832 to i32
  br i1 %832, label %837, label %834, !dx.controlflow.hints !56

; <label>:834                                     ; preds = %818
  %835 = add nuw nsw i32 %781, 1
  %836 = icmp slt i32 %781, %622
  br i1 %836, label %777, label %837

; <label>:837                                     ; preds = %834, %818
  br label %838

; <label>:838                                     ; preds = %837, %626
  %839 = phi i32 [ 0, %626 ], [ %833, %837 ]
  %840 = phi float [ %58, %626 ], [ %809, %837 ]
  %841 = phi float [ %58, %626 ], [ %778, %837 ]
  %842 = phi float [ %58, %626 ], [ %796, %837 ]
  %843 = phi float [ %58, %626 ], [ %779, %837 ]
  %844 = fsub fast float %843, %841
  %845 = fsub fast float %842, %840
  %846 = fsub fast float %844, %845
  %847 = fcmp fast une float %846, 0.000000e+00
  %848 = fmul fast float %844, %842
  %849 = fmul fast float %843, %845
  %850 = fsub fast float %848, %849
  %851 = fdiv fast float 1.000000e+00, %846
  %852 = fmul fast float %850, %851
  %853 = select i1 %847, float %852, float %842
  %854 = fdiv fast float 1.000000e+00, %853
  %855 = fsub fast float %854, %696
  %856 = fdiv fast float %855, %755
  %857 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %858 = fmul fast float %857, %752
  %859 = fmul fast float %857, %754
  %860 = fadd fast float %858, %763
  %861 = fadd fast float %859, %764
  %862 = fadd fast float %860, -5.000000e-01
  %863 = fadd fast float %861, -5.000000e-01
  %864 = call float @dx.op.unary.f32(i32 6, float %862)  ; FAbs(value)
  %865 = call float @dx.op.unary.f32(i32 6, float %863)  ; FAbs(value)
  %866 = fadd fast float %864, -5.000000e-01
  %867 = fadd fast float %865, -5.000000e-01
  %868 = call float @dx.op.binary.f32(i32 35, float %866, float %867)  ; FMax(a,b)
  %869 = fcmp fast olt float %868, 0.000000e+00
  %870 = icmp ne i32 %839, 0
  %871 = and i1 %870, %869
  %872 = select i1 %871, float 0.000000e+00, float 1.000000e+00
  br label %873

; <label>:873                                     ; preds = %838, %609
  %874 = phi float [ %872, %838 ], [ 1.000000e+00, %609 ]
  %875 = fmul fast float %874, %602
  %876 = fmul fast float %874, %602
  %877 = fmul fast float %874, %602
  br label %878

; <label>:878                                     ; preds = %873, %601
  %879 = phi float [ %875, %873 ], [ %602, %601 ]
  %880 = phi float [ %876, %873 ], [ %602, %601 ]
  %881 = phi float [ %877, %873 ], [ %602, %601 ]
  %882 = call float @dx.op.binary.f32(i32 36, float %880, float %881)  ; FMin(a,b)
  %883 = call float @dx.op.binary.f32(i32 36, float %879, float %882)  ; FMin(a,b)
  %884 = fcmp fast ogt float %883, 0x3F10000000000000
  %885 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %884)  ; WaveAnyTrue(cond)
  %886 = icmp ugt i32 %240, 63
  br i1 %886, label %916, label %887, !dx.controlflow.hints !57

; <label>:887                                     ; preds = %878
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %888 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %888, label %889, label %892, !dx.controlflow.hints !58

; <label>:889                                     ; preds = %887
  %890 = zext i1 %885 to i32
  %891 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  store i32 %890, i32 addrspace(3)* %891, align 4, !tbaa !35
  br label %892

; <label>:892                                     ; preds = %889, %887
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %893 = icmp eq i32 %240, 32
  br i1 %893, label %894, label %900, !dx.controlflow.hints !59

; <label>:894                                     ; preds = %892
  %895 = xor i32 %241, 1
  %896 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %895
  %897 = load i32, i32 addrspace(3)* %896, align 4, !tbaa !35
  %898 = icmp ne i32 %897, 0
  %899 = or i1 %885, %898
  br label %916

; <label>:900                                     ; preds = %892
  %901 = icmp eq i32 %240, 16
  br i1 %901, label %902, label %916, !dx.controlflow.hints !60

; <label>:902                                     ; preds = %900
  %903 = xor i32 %241, 1
  %904 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %903
  %905 = load i32, i32 addrspace(3)* %904, align 4, !tbaa !35
  %906 = xor i32 %241, 2
  %907 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %906
  %908 = load i32, i32 addrspace(3)* %907, align 4, !tbaa !35
  %909 = or i32 %908, %905
  %910 = xor i32 %241, 3
  %911 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %910
  %912 = load i32, i32 addrspace(3)* %911, align 4, !tbaa !35
  %913 = or i32 %909, %912
  %914 = icmp ne i32 %913, 0
  %915 = or i1 %885, %914
  br label %916

; <label>:916                                     ; preds = %902, %900, %894, %878
  %917 = phi i1 [ %899, %894 ], [ %915, %902 ], [ %885, %878 ], [ false, %900 ]
  %918 = select i1 %917, i32 %376, i32 0
  %919 = or i32 %371, %918
  %920 = lshr i32 %220, 5
  %921 = lshr i32 %221, 5
  %922 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %920, i32 %921, i32 %374, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = lshr i32 %923, 23
  %925 = and i32 %924, 255
  %926 = and i32 %220, 31
  %927 = and i32 %221, 31
  %928 = lshr i32 %923, 1
  %929 = and i32 %928, 16352
  %930 = lshr i32 %923, 10
  %931 = and i32 %930, 8160
  %932 = or i32 %929, %926
  %933 = or i32 %931, %927
  %934 = fmul fast float %879, 2.550000e+02
  %935 = fadd fast float %934, %214
  %936 = call float @dx.op.unary.f32(i32 27, float %935)  ; Round_ni(value)
  %937 = fmul fast float %936, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %932, i32 %933, i32 %925, float %937, float %937, float %937, float %937, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %938 = icmp eq i32 %372, %376
  br i1 %938, label %939, label %370, !llvm.loop !61

; <label>:939                                     ; preds = %916
  br label %940

; <label>:940                                     ; preds = %939, %366
  %941 = phi i32 [ 0, %366 ], [ %919, %939 ]
  %942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.i32 %942, 0
  %944 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %943, i32 %307)  ; UMad(a,b,c)
  %945 = shl i32 %944, 2
  %946 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %945, i32 undef, i32 undef, i32 %941)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %947 = add i32 %307, 1
  %948 = icmp ugt i32 %947, %303
  br i1 %948, label %949, label %306

; <label>:949                                     ; preds = %940
  br label %950

; <label>:950                                     ; preds = %949, %299, %0
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
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

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
!30 = !{i32 0, i64 524560, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
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
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}

