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
; shader hash: 881b3524700e833083063a2e60cd37d0
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
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = shl i32 %23, 3
  %27 = mul i32 %26, %25
  %28 = add i32 %27, %19
  %29 = shl i32 %28, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = lshr i32 %31, 25
  %33 = and i32 %32, 8
  %34 = lshr i32 %31, 27
  %35 = and i32 %34, 12
  %36 = lshr i32 %31, 10
  %37 = and i32 %36, 262128
  %38 = shl i32 %31, 4
  %39 = and i32 %38, 262128
  %40 = or i32 %33, %20
  %41 = or i32 %40, %37
  %42 = or i32 %35, %21
  %43 = or i32 %42, %39
  %44 = uitofp i32 %41 to float
  %45 = uitofp i32 %43 to float
  %46 = fadd fast float %44, 5.000000e-01
  %47 = fadd fast float %45, 5.000000e-01
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %41, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = fcmp fast olt float %49, -1.000000e+00
  %51 = fcmp fast ogt float %49, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = select i1 %51, float %53, float 1.000000e+00
  %55 = fadd fast float %49, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %46, %59
  %62 = fmul fast float %47, %60
  %63 = fmul fast float %61, 2.000000e+00
  %64 = fmul fast float %62, 2.000000e+00
  %65 = fsub fast float 1.000000e+00, %63
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = select i1 %50, float %68, float %72
  %76 = select i1 %50, float %69, float %73
  %77 = select i1 %50, float %70, float %74
  %78 = fmul fast float %75, %65
  %79 = fmul fast float %76, %65
  %80 = fmul fast float %77, %65
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %144 = fmul fast float %59, %44
  %145 = fmul fast float %60, %45
  %146 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = extractvalue %dx.types.ResRet.f32 %146, 1
  %149 = extractvalue %dx.types.ResRet.f32 %146, 2
  %150 = fcmp fast ogt float %147, -1.000000e+00
  %151 = select i1 %150, float %53, float 1.000000e+00
  %152 = fadd fast float %147, 1.000000e+00
  %153 = fmul fast float %151, %152
  %154 = call float @dx.op.unary.f32(i32 6, float %153)  ; FAbs(value)
  %155 = fcmp fast ogt float %148, -1.000000e+00
  %156 = select i1 %155, float %53, float 1.000000e+00
  %157 = fadd fast float %148, 1.000000e+00
  %158 = fmul fast float %156, %157
  %159 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %160 = fcmp fast ogt float %149, -1.000000e+00
  %161 = select i1 %160, float %53, float 1.000000e+00
  %162 = fadd fast float %149, 1.000000e+00
  %163 = fmul fast float %161, %162
  %164 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %165 = fadd fast float %44, 1.000000e+00
  %166 = fmul fast float %59, %165
  %167 = fadd fast float %45, 1.000000e+00
  %168 = fmul fast float %60, %167
  %169 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %166, float %168, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 2
  %172 = fcmp fast ogt float %170, -1.000000e+00
  %173 = select i1 %172, float %53, float 1.000000e+00
  %174 = fadd fast float %170, 1.000000e+00
  %175 = fmul fast float %173, %174
  %176 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %177 = fcmp fast ogt float %171, -1.000000e+00
  %178 = select i1 %177, float %53, float 1.000000e+00
  %179 = fadd fast float %171, 1.000000e+00
  %180 = fmul fast float %178, %179
  %181 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %182 = fsub fast float %164, %159
  %183 = fsub fast float %176, %159
  %184 = fsub fast float %154, %159
  %185 = fsub fast float %181, %159
  %186 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %187 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %188 = call float @dx.op.binary.f32(i32 35, float %187, float %186)  ; FMax(a,b)
  %189 = call float @dx.op.unary.f32(i32 6, float %185)  ; FAbs(value)
  %190 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %191 = call float @dx.op.binary.f32(i32 35, float %190, float %189)  ; FMax(a,b)
  %192 = fadd fast float %183, %182
  %193 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %194 = fadd fast float %185, %184
  %195 = call float @dx.op.unary.f32(i32 6, float %194)  ; FAbs(value)
  %196 = fsub fast float %191, %195
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fsub fast float %188, %193
  %199 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %200 = call float @dx.op.binary.f32(i32 35, float %199, float %197)  ; FMax(a,b)
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = fmul fast float %202, 0x3FE3C6EF40000000
  %204 = frem fast float %46, 2.560000e+02
  %205 = frem fast float %47, 2.560000e+02
  %206 = fptoui float %204 to i32
  %207 = fptoui float %205 to i32
  %208 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 2
  %211 = fadd fast float %209, %203
  %212 = fadd fast float %210, %203
  %213 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %214 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 0
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %822, label %218, !dx.controlflow.hints !32

; <label>:218                                     ; preds = %0
  %219 = fptoui float %46 to i32
  %220 = fptoui float %47 to i32
  %221 = lshr i32 %219, 4
  %222 = lshr i32 %220, 4
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 0
  %225 = call i32 @dx.op.tertiary.i32(i32 49, i32 %222, i32 %224, i32 %221)  ; UMad(a,b,c)
  %226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.i32 %226, 0
  %228 = add nsw i32 %227, -1
  %229 = call i32 @dx.op.binary.i32(i32 37, i32 %228, i32 0)  ; IMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %231 = fptoui float %230 to i32
  %232 = lshr i32 %231, 5
  %233 = call i32 @dx.op.binary.i32(i32 40, i32 %232, i32 8191)  ; UMin(a,b)
  %234 = shl i32 %233, 2
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 16
  %238 = and i32 %236, 65535
  %239 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %237, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %240 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %238, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %241 = lshr i32 %239, 5
  %242 = lshr i32 %240, 5
  %243 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %229)  ; UMin(a,b)
  %244 = icmp ugt i32 %241, %243
  br i1 %244, label %822, label %245

; <label>:245                                     ; preds = %218
  br label %246

; <label>:246                                     ; preds = %812, %245
  %247 = phi i32 [ %819, %812 ], [ %241, %245 ]
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 0
  %250 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %249, i32 %247)  ; UMad(a,b,c)
  %251 = shl i32 %250, 2
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = shl i32 %247, 5
  %255 = sub nsw i32 %237, %254
  %256 = call i32 @dx.op.binary.i32(i32 37, i32 %255, i32 0)  ; IMax(a,b)
  %257 = call i32 @dx.op.binary.i32(i32 38, i32 %256, i32 31)  ; IMin(a,b)
  %258 = sub nsw i32 1, %237
  %259 = add nsw i32 %258, %238
  %260 = call i32 @dx.op.binary.i32(i32 37, i32 %259, i32 0)  ; IMax(a,b)
  %261 = call i32 @dx.op.binary.i32(i32 38, i32 %260, i32 32)  ; IMin(a,b)
  %262 = and i32 %261, 31
  %263 = shl i32 -1, %262
  %264 = xor i32 %263, -1
  %265 = and i32 %257, 31
  %266 = shl i32 %264, %265
  %267 = icmp eq i32 %261, 32
  %268 = select i1 %267, i32 -1, i32 %266
  %269 = and i32 %268, %253
  %270 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %269, i8 1)  ; WaveActiveBit(value,op)
  %271 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %270)  ; WaveReadLaneFirst(value)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %812, label %273

; <label>:273                                     ; preds = %246
  br label %274

; <label>:274                                     ; preds = %782, %273
  %275 = phi i32 [ %791, %782 ], [ 0, %273 ]
  %276 = phi i32 [ %281, %782 ], [ %271, %273 ]
  %277 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %276)  ; FirstbitLo(value)
  %278 = add i32 %277, %254
  %279 = and i32 %277, 31
  %280 = shl i32 1, %279
  %281 = xor i32 %280, %276
  %282 = mul i32 %278, 112
  %283 = add i32 %282, 16
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = add i32 %282, 28
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = add i32 %282, 32
  %292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = add i32 %282, 44
  %297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = add i32 %282, 48
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = extractvalue %dx.types.ResRet.f32 %300, 1
  %303 = extractvalue %dx.types.ResRet.f32 %300, 2
  %304 = extractvalue %dx.types.ResRet.f32 %300, 3
  %305 = add i32 %282, 64
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = extractvalue %dx.types.ResRet.f32 %306, 3
  %311 = add i32 %282, 92
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = uitofp i32 %314 to float
  %316 = lshr i32 %313, 16
  %317 = uitofp i32 %316 to float
  %318 = and i32 %290, 65535
  %319 = and i32 %290, 50331648
  %320 = icmp eq i32 %319, 33554432
  %321 = call float @dx.op.dot3.f32(i32 55, float %293, float %294, float %295, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = fsub fast float %112, %301
  %323 = fsub fast float %113, %302
  %324 = fsub fast float %114, %303
  %325 = call float @dx.op.dot3.f32(i32 55, float %322, float %323, float %324, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = fdiv fast float %325, %321
  %327 = call float @dx.op.binary.f32(i32 35, float %326, float -1.000000e+00)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 36, float %327, float 1.000000e+00)  ; FMin(a,b)
  %329 = fmul fast float %328, %293
  %330 = fmul fast float %328, %294
  %331 = fmul fast float %328, %295
  %332 = fadd fast float %329, %301
  %333 = fadd fast float %330, %302
  %334 = fadd fast float %331, %303
  %335 = fsub fast float %332, %112
  %336 = fsub fast float %333, %113
  %337 = fsub fast float %334, %114
  %338 = call float @dx.op.dot3.f32(i32 55, float %335, float %336, float %337, float %335, float %336, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %340 = fdiv fast float 1.000000e+00, %339
  %341 = fmul fast float %335, %340
  %342 = fmul fast float %336, %340
  %343 = fmul fast float %337, %340
  br i1 %320, label %344, label %368, !dx.controlflow.hints !33

; <label>:344                                     ; preds = %274
  %345 = fmul fast float %309, %285
  %346 = fmul fast float %309, %286
  %347 = fmul fast float %309, %287
  %348 = fsub fast float %345, %112
  %349 = fadd fast float %348, %332
  %350 = fsub fast float %346, %113
  %351 = fadd fast float %350, %333
  %352 = fsub fast float %347, %114
  %353 = fadd fast float %352, %334
  %354 = call float @dx.op.dot3.f32(i32 55, float %349, float %351, float %353, float %349, float %351, float %353)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = call float @dx.op.unary.f32(i32 25, float %354)  ; Rsqrt(value)
  %356 = fmul fast float %355, %349
  %357 = fmul fast float %355, %351
  %358 = fmul fast float %355, %353
  %359 = fsub fast float %112, %332
  %360 = fsub fast float %113, %333
  %361 = fsub fast float %114, %334
  %362 = fsub fast float -0.000000e+00, %359
  %363 = fsub fast float -0.000000e+00, %360
  %364 = fsub fast float -0.000000e+00, %361
  %365 = call float @dx.op.dot3.f32(i32 55, float %362, float %363, float %364, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = fcmp fast ogt float %365, 0.000000e+00
  %367 = uitofp i1 %366 to float
  br label %368

; <label>:368                                     ; preds = %344, %274
  %369 = phi float [ %367, %344 ], [ 1.000000e+00, %274 ]
  %370 = phi float [ %356, %344 ], [ %341, %274 ]
  %371 = phi float [ %357, %344 ], [ %342, %274 ]
  %372 = phi float [ %358, %344 ], [ %343, %274 ]
  %373 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %370, float %371, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = fmul fast float %373, %373
  %375 = call float @dx.op.unary.f32(i32 7, float %374)  ; Saturate(value)
  %376 = fsub fast float 1.000000e+00, %375
  %377 = fmul fast float %376, 5.000000e-01
  %378 = fcmp fast ogt float %373, 0.000000e+00
  %379 = fsub fast float 1.000000e+00, %377
  %380 = select i1 %378, float %377, float %379
  %381 = fmul fast float %380, %317
  %382 = fadd fast float %381, %315
  %383 = fmul fast float %382, 0x3EF0001000000000
  %384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %383, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = fmul fast float %373, %307
  %387 = fadd fast float %386, %308
  %388 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %389 = select i1 %320, float %388, float 1.000000e+00
  %390 = fmul fast float %339, %304
  %391 = fsub fast float 1.000000e+00, %390
  %392 = fmul fast float %391, %310
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %394 = fmul fast float %393, %389
  %395 = fmul fast float %394, 2.000000e+00
  %396 = fsub fast float 3.000000e+00, %395
  %397 = fmul fast float %385, %369
  %398 = fmul fast float %394, %394
  %399 = fmul fast float %398, %397
  %400 = fmul fast float %399, %396
  %401 = icmp ne i32 %318, 255
  %402 = call float @dx.op.binary.f32(i32 36, float %400, float %400)  ; FMin(a,b)
  %403 = call float @dx.op.binary.f32(i32 36, float %400, float %402)  ; FMin(a,b)
  %404 = fcmp fast ogt float %403, 0.000000e+00
  %405 = and i1 %401, %404
  br i1 %405, label %406, label %505, !dx.controlflow.hints !34

; <label>:406                                     ; preds = %368
  %407 = select i1 %320, float 1.000000e+00, float %388
  %408 = mul nuw nsw i32 %318, 176
  %409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = extractvalue %dx.types.ResRet.f32 %409, 2
  %413 = extractvalue %dx.types.ResRet.f32 %409, 3
  %414 = add nuw nsw i32 %408, 16
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = add nuw nsw i32 %408, 32
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = add nuw nsw i32 %408, 48
  %424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  %429 = add nuw nsw i32 %408, 64
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = add nuw nsw i32 %408, 80
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = add nuw nsw i32 %408, 96
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = extractvalue %dx.types.ResRet.f32 %442, 3
  %447 = bitcast float %417 to i32
  %448 = fmul fast float %422, %141
  %449 = fmul fast float %422, %142
  %450 = fmul fast float %422, %143
  %451 = fadd fast float %448, %112
  %452 = fadd fast float %449, %113
  %453 = fadd fast float %450, %114
  %454 = fmul fast float %451, %425
  %455 = call float @dx.op.tertiary.f32(i32 46, float %452, float %431, float %454)  ; FMad(a,b,c)
  %456 = call float @dx.op.tertiary.f32(i32 46, float %453, float %437, float %455)  ; FMad(a,b,c)
  %457 = fadd fast float %456, %443
  %458 = fmul fast float %451, %426
  %459 = call float @dx.op.tertiary.f32(i32 46, float %452, float %432, float %458)  ; FMad(a,b,c)
  %460 = call float @dx.op.tertiary.f32(i32 46, float %453, float %438, float %459)  ; FMad(a,b,c)
  %461 = fadd fast float %460, %444
  %462 = fmul fast float %451, %427
  %463 = call float @dx.op.tertiary.f32(i32 46, float %452, float %433, float %462)  ; FMad(a,b,c)
  %464 = call float @dx.op.tertiary.f32(i32 46, float %453, float %439, float %463)  ; FMad(a,b,c)
  %465 = fadd fast float %464, %445
  %466 = fmul fast float %451, %428
  %467 = call float @dx.op.tertiary.f32(i32 46, float %452, float %434, float %466)  ; FMad(a,b,c)
  %468 = call float @dx.op.tertiary.f32(i32 46, float %453, float %440, float %467)  ; FMad(a,b,c)
  %469 = fadd fast float %468, %446
  %470 = fdiv fast float %457, %469
  %471 = fdiv fast float %461, %469
  %472 = fdiv fast float %465, %469
  %473 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %472)  ; FMax(a,b)
  %474 = fmul fast float %213, 0x401921FB60000000
  %475 = call float @dx.op.unary.f32(i32 13, float %474)  ; Sin(value)
  %476 = call float @dx.op.unary.f32(i32 12, float %474)  ; Cos(value)
  %477 = fsub fast float -0.000000e+00, %475
  %478 = fmul fast float %412, 5.000000e-01
  %479 = call float @dx.op.dot2.f32(i32 54, float %213, float %213, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %480 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %481 = fmul fast float %480, 0x404A7DD040000000
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fmul fast float %482, %421
  %484 = fadd fast float %483, %478
  %485 = call float @dx.op.tertiary.f32(i32 46, float %484, float %477, float 0.000000e+00)  ; FMad(a,b,c)
  %486 = call float @dx.op.tertiary.f32(i32 46, float %484, float %476, float 0.000000e+00)  ; FMad(a,b,c)
  %487 = fadd fast float %485, %470
  %488 = fadd fast float %486, %471
  %489 = fmul fast float %487, %416
  %490 = fmul fast float %488, %416
  %491 = call float @dx.op.binary.f32(i32 35, float %489, float %412)  ; FMax(a,b)
  %492 = call float @dx.op.binary.f32(i32 35, float %490, float %412)  ; FMax(a,b)
  %493 = call float @dx.op.binary.f32(i32 36, float %491, float %413)  ; FMin(a,b)
  %494 = call float @dx.op.binary.f32(i32 36, float %492, float %413)  ; FMin(a,b)
  %495 = fadd fast float %493, %410
  %496 = fadd fast float %494, %411
  %497 = uitofp i32 %447 to float
  %498 = fadd fast float %473, %420
  %499 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %495, float %496, float %497, float undef, i32 0, i32 0, i32 undef, float %498)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = fadd fast float %500, -1.000000e+00
  %502 = fmul fast float %501, %407
  %503 = fadd fast float %502, 1.000000e+00
  %504 = fmul fast float %503, %400
  br label %505

; <label>:505                                     ; preds = %406, %368
  %506 = phi float [ %504, %406 ], [ %400, %368 ]
  %507 = call float @dx.op.binary.f32(i32 36, float %506, float %506)  ; FMin(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %506, float %507)  ; FMin(a,b)
  %509 = fcmp fast ogt float %508, 0.000000e+00
  %510 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %341, float %342, float %343)  ; Dot3(ax,ay,az,bx,by,bz)
  %511 = fcmp fast ogt float %510, 0.000000e+00
  %512 = and i1 %509, %511
  br i1 %512, label %513, label %782, !dx.controlflow.hints !35

; <label>:513                                     ; preds = %505
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 1
  %518 = select i1 %50, float %515, float %517
  %519 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %520 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %521 = select i1 %50, float %519, float %520
  %522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.i32 %522, 0
  %524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.i32 %524, 0
  %526 = select i1 %50, i32 %523, i32 %525
  %527 = fcmp fast olt float %518, 5.000000e-01
  %528 = icmp eq i32 %526, 0
  %529 = or i1 %527, %528
  br i1 %529, label %777, label %530, !dx.controlflow.hints !36

; <label>:530                                     ; preds = %513
  %531 = fsub fast float %301, %112
  %532 = fsub fast float %302, %113
  %533 = fsub fast float %303, %114
  %534 = fmul fast float %531, %531
  %535 = fmul fast float %532, %532
  %536 = fadd fast float %534, %535
  %537 = fmul fast float %533, %533
  %538 = fadd fast float %536, %537
  %539 = call float @dx.op.unary.f32(i32 24, float %538)  ; Sqrt(value)
  %540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.i32 %540, 0
  %542 = uitofp i32 %541 to float
  %543 = fmul fast float %518, %298
  %544 = fdiv fast float %543, %539
  %545 = call float @dx.op.binary.f32(i32 36, float %544, float 1.000000e+01)  ; FMin(a,b)
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %550 = extractvalue %dx.types.CBufRet.f32 %546, 3
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %553 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %554 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %555 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 0
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %559 = extractvalue %dx.types.CBufRet.f32 %556, 2
  %560 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %565 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %570 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %575 = extractvalue %dx.types.CBufRet.f32 %571, 3
  %576 = select i1 %50, float %547, float %562
  %577 = select i1 %50, float %552, float %567
  %578 = select i1 %50, float %557, float %572
  %579 = select i1 %50, float %548, float %563
  %580 = select i1 %50, float %553, float %568
  %581 = select i1 %50, float %558, float %573
  %582 = select i1 %50, float %549, float %564
  %583 = select i1 %50, float %554, float %569
  %584 = select i1 %50, float %559, float %574
  %585 = select i1 %50, float %550, float %565
  %586 = select i1 %50, float %555, float %570
  %587 = select i1 %50, float %560, float %575
  %588 = fmul fast float %214, 0x401061CAC0000000
  %589 = fmul fast float %214, 0x4023E1D7E0000000
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %593 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %594 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %595 = fsub fast float -0.000000e+00, %341
  %596 = fmul fast float %343, %595
  %597 = fmul fast float %341, %595
  %598 = fmul fast float %342, %342
  %599 = fsub fast float %597, %598
  %600 = fdiv fast float 1.000000e+00, %57
  %601 = fmul fast float %593, %46
  %602 = fmul fast float %594, %47
  %603 = fmul fast float %518, %341
  %604 = fmul fast float %518, %343
  %605 = fadd fast float %603, %112
  %606 = fadd fast float %604, %114
  %607 = fadd fast float %589, 5.000000e-01
  %608 = call float @dx.op.unary.f32(i32 22, float %607)  ; Frc(value)
  %609 = bitcast float %608 to i32
  %610 = ashr i32 %609, 1
  %611 = add nsw i32 %610, 532487669
  %612 = bitcast i32 %611 to float
  %613 = fmul fast float %612, %545
  %614 = fadd fast float %588, 5.000000e-01
  %615 = call float @dx.op.unary.f32(i32 22, float %614)  ; Frc(value)
  %616 = fmul fast float %615, 0x401921FB60000000
  %617 = call float @dx.op.unary.f32(i32 12, float %616)  ; Cos(value)
  %618 = fmul fast float %617, %617
  %619 = fsub fast float 1.000000e+00, %618
  %620 = bitcast float %619 to i32
  %621 = ashr i32 %620, 1
  %622 = add nsw i32 %621, 532487669
  %623 = bitcast i32 %622 to float
  %624 = fmul fast float %613, %617
  %625 = fmul fast float %624, %342
  %626 = fmul fast float %624, %595
  %627 = fadd fast float %605, %625
  %628 = fmul fast float %623, %613
  %629 = fmul fast float %596, %628
  %630 = fmul fast float %628, %343
  %631 = fmul fast float %628, %599
  %632 = fsub fast float %627, %629
  %633 = fadd fast float %630, %518
  %634 = fmul fast float %633, %342
  %635 = fadd fast float %626, %113
  %636 = fadd fast float %635, %634
  %637 = fadd fast float %606, %631
  %638 = fmul fast float %632, %576
  %639 = call float @dx.op.tertiary.f32(i32 46, float %636, float %579, float %638)  ; FMad(a,b,c)
  %640 = call float @dx.op.tertiary.f32(i32 46, float %637, float %582, float %639)  ; FMad(a,b,c)
  %641 = fadd fast float %640, %585
  %642 = fmul fast float %632, %577
  %643 = call float @dx.op.tertiary.f32(i32 46, float %636, float %580, float %642)  ; FMad(a,b,c)
  %644 = call float @dx.op.tertiary.f32(i32 46, float %637, float %583, float %643)  ; FMad(a,b,c)
  %645 = fadd fast float %644, %586
  %646 = fmul fast float %632, %578
  %647 = call float @dx.op.tertiary.f32(i32 46, float %636, float %581, float %646)  ; FMad(a,b,c)
  %648 = call float @dx.op.tertiary.f32(i32 46, float %637, float %584, float %647)  ; FMad(a,b,c)
  %649 = fadd fast float %648, %587
  %650 = fdiv fast float 1.000000e+00, %649
  %651 = fmul fast float %641, 5.000000e-01
  %652 = fmul fast float %645, -5.000000e-01
  %653 = fmul fast float %651, %650
  %654 = fmul fast float %652, %650
  %655 = fsub fast float 5.000000e-01, %601
  %656 = fadd fast float %655, %653
  %657 = fsub fast float 5.000000e-01, %602
  %658 = fadd fast float %657, %654
  %659 = fsub fast float %650, %600
  %660 = call float @dx.op.dot2.f32(i32 54, float %656, float %658, float %656, float %658)  ; Dot2(ax,ay,bx,by)
  %661 = call float @dx.op.binary.f32(i32 35, float %660, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %662 = call float @dx.op.dot2.f32(i32 54, float %591, float %592, float %591, float %592)  ; Dot2(ax,ay,bx,by)
  %663 = fmul fast float %662, %661
  %664 = call float @dx.op.unary.f32(i32 25, float %663)  ; Rsqrt(value)
  %665 = fmul fast float %664, %656
  %666 = fmul fast float %664, %658
  %667 = fadd fast float %665, %601
  %668 = fadd fast float %666, %602
  %669 = fmul fast float %656, %591
  %670 = fmul fast float %658, %592
  %671 = fmul fast float %669, %669
  %672 = fmul fast float %670, %670
  %673 = fadd fast float %671, %672
  %674 = call float @dx.op.unary.f32(i32 24, float %673)  ; Sqrt(value)
  %675 = fdiv fast float 1.000000e+00, %674
  %676 = fmul fast float %674, 3.906250e-03
  %677 = fmul fast float %200, 0x3F70624DE0000000
  %678 = fadd fast float %677, 0x3F70624DE0000000
  %679 = icmp sgt i32 %526, -1
  br i1 %679, label %680, label %742

; <label>:680                                     ; preds = %530
  br label %681

; <label>:681                                     ; preds = %738, %680
  %682 = phi float [ %713, %738 ], [ %57, %680 ]
  %683 = phi float [ %700, %738 ], [ %57, %680 ]
  %684 = phi float [ %683, %738 ], [ %57, %680 ]
  %685 = phi i32 [ %739, %738 ], [ 0, %680 ]
  %686 = sitofp i32 %685 to float
  %687 = fadd fast float %214, 5.000000e-01
  %688 = call float @dx.op.unary.f32(i32 22, float %687)  ; Frc(value)
  %689 = fadd fast float %686, %688
  %690 = sitofp i32 %526 to float
  %691 = fdiv fast float %689, %690
  %692 = fmul fast float %691, %691
  %693 = call float @dx.op.binary.f32(i32 36, float %692, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %694 = fmul fast float %693, %656
  %695 = fmul fast float %693, %658
  %696 = fmul fast float %693, %659
  %697 = fadd fast float %694, %667
  %698 = fadd fast float %695, %668
  %699 = fadd fast float %696, %600
  %700 = fdiv fast float 1.000000e+00, %699
  %701 = icmp ne i32 %541, 0
  %702 = fmul fast float %676, %693
  %703 = call float @dx.op.binary.f32(i32 36, float %702, float %542)  ; FMin(a,b)
  %704 = select i1 %701, float %703, float 0.000000e+00
  %705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %697, float %698, float undef, float undef, i32 0, i32 0, i32 undef, float %704)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = fcmp fast ogt float %706, -1.000000e+00
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 1
  %710 = select i1 %707, float %709, float 1.000000e+00
  %711 = fadd fast float %706, 1.000000e+00
  %712 = fmul fast float %710, %711
  %713 = call float @dx.op.unary.f32(i32 6, float %712)  ; FAbs(value)
  %714 = fmul fast float %713, %678
  %715 = fsub fast float %700, %713
  %716 = fsub fast float %715, %714
  %717 = fcmp fast ogt float %716, 0.000000e+00
  %718 = fcmp fast ogt float %521, 0.000000e+00
  br i1 %718, label %719, label %722, !dx.controlflow.hints !37

; <label>:719                                     ; preds = %681
  %720 = fsub fast float %700, %684
  %721 = call float @dx.op.binary.f32(i32 35, float %720, float %521)  ; FMax(a,b)
  br label %722

; <label>:722                                     ; preds = %719, %681
  %723 = phi float [ %721, %719 ], [ %518, %681 ]
  %724 = fcmp fast olt float %716, %723
  %725 = fcmp uge float %706, -1.000000e+00
  %726 = or i1 %50, %725
  %727 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %728 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %729 = fcmp fast oeq float %697, %727
  %730 = fcmp fast oeq float %698, %728
  %731 = and i1 %729, %730
  %732 = and i1 %726, %731
  %733 = and i1 %717, %724
  %734 = and i1 %733, %732
  %735 = fcmp fast ogt float %693, %675
  %736 = and i1 %735, %734
  %737 = zext i1 %736 to i32
  br i1 %736, label %741, label %738, !dx.controlflow.hints !38

; <label>:738                                     ; preds = %722
  %739 = add nuw nsw i32 %685, 1
  %740 = icmp slt i32 %685, %526
  br i1 %740, label %681, label %741

; <label>:741                                     ; preds = %738, %722
  br label %742

; <label>:742                                     ; preds = %741, %530
  %743 = phi i32 [ 0, %530 ], [ %737, %741 ]
  %744 = phi float [ %57, %530 ], [ %713, %741 ]
  %745 = phi float [ %57, %530 ], [ %682, %741 ]
  %746 = phi float [ %57, %530 ], [ %700, %741 ]
  %747 = phi float [ %57, %530 ], [ %683, %741 ]
  %748 = fsub fast float %747, %745
  %749 = fsub fast float %746, %744
  %750 = fsub fast float %748, %749
  %751 = fcmp fast une float %750, 0.000000e+00
  %752 = fmul fast float %748, %746
  %753 = fmul fast float %747, %749
  %754 = fsub fast float %752, %753
  %755 = fdiv fast float 1.000000e+00, %750
  %756 = fmul fast float %754, %755
  %757 = select i1 %751, float %756, float %746
  %758 = fdiv fast float 1.000000e+00, %757
  %759 = fsub fast float %758, %600
  %760 = fdiv fast float %759, %659
  %761 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %762 = fmul fast float %761, %656
  %763 = fmul fast float %761, %658
  %764 = fadd fast float %762, %667
  %765 = fadd fast float %763, %668
  %766 = fadd fast float %764, -5.000000e-01
  %767 = fadd fast float %765, -5.000000e-01
  %768 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %769 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  %770 = fadd fast float %768, -5.000000e-01
  %771 = fadd fast float %769, -5.000000e-01
  %772 = call float @dx.op.binary.f32(i32 35, float %770, float %771)  ; FMax(a,b)
  %773 = fcmp fast olt float %772, 0.000000e+00
  %774 = icmp ne i32 %743, 0
  %775 = and i1 %774, %773
  %776 = select i1 %775, float 0.000000e+00, float 1.000000e+00
  br label %777

; <label>:777                                     ; preds = %742, %513
  %778 = phi float [ %776, %742 ], [ 1.000000e+00, %513 ]
  %779 = fmul fast float %778, %506
  %780 = fmul fast float %778, %506
  %781 = fmul fast float %778, %506
  br label %782

; <label>:782                                     ; preds = %777, %505
  %783 = phi float [ %779, %777 ], [ %506, %505 ]
  %784 = phi float [ %780, %777 ], [ %506, %505 ]
  %785 = phi float [ %781, %777 ], [ %506, %505 ]
  %786 = call float @dx.op.binary.f32(i32 36, float %784, float %785)  ; FMin(a,b)
  %787 = call float @dx.op.binary.f32(i32 36, float %783, float %786)  ; FMin(a,b)
  %788 = fcmp fast ogt float %787, 0x3F10000000000000
  %789 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %788)  ; WaveAnyTrue(cond)
  %790 = select i1 %789, i32 %280, i32 0
  %791 = or i32 %275, %790
  %792 = lshr i32 %219, 5
  %793 = lshr i32 %220, 5
  %794 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %792, i32 %793, i32 %278, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = lshr i32 %795, 23
  %797 = and i32 %796, 255
  %798 = and i32 %219, 31
  %799 = and i32 %220, 31
  %800 = lshr i32 %795, 1
  %801 = and i32 %800, 16352
  %802 = lshr i32 %795, 10
  %803 = and i32 %802, 8160
  %804 = or i32 %801, %798
  %805 = or i32 %803, %799
  %806 = fmul fast float %783, 2.550000e+02
  %807 = fadd fast float %806, %213
  %808 = call float @dx.op.unary.f32(i32 27, float %807)  ; Round_ni(value)
  %809 = fmul fast float %808, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %804, i32 %805, i32 %797, float %809, float %809, float %809, float %809, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %810 = icmp eq i32 %276, %280
  br i1 %810, label %811, label %274, !llvm.loop !39

; <label>:811                                     ; preds = %782
  br label %812

; <label>:812                                     ; preds = %811, %246
  %813 = phi i32 [ 0, %246 ], [ %791, %811 ]
  %814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.i32 %814, 0
  %816 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %815, i32 %247)  ; UMad(a,b,c)
  %817 = shl i32 %816, 2
  %818 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %817, i32 undef, i32 undef, i32 %813)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %819 = add i32 %247, 1
  %820 = icmp ugt i32 %819, %243
  br i1 %820, label %821, label %246

; <label>:821                                     ; preds = %812
  br label %822

; <label>:822                                     ; preds = %821, %218, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

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

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #2

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
!31 = !{i32 8, i32 4, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}

