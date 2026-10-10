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
; shader hash: 7d6000f4d84a7e4addc31cfa2290be8a
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
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 1
  %25 = shl i32 %22, 3
  %26 = mul i32 %25, %24
  %27 = add i32 %26, %18
  %28 = shl i32 %27, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = lshr i32 %30, 25
  %32 = and i32 %31, 8
  %33 = lshr i32 %30, 27
  %34 = and i32 %33, 12
  %35 = lshr i32 %30, 10
  %36 = and i32 %35, 262128
  %37 = shl i32 %30, 4
  %38 = and i32 %37, 262128
  %39 = or i32 %32, %19
  %40 = or i32 %39, %36
  %41 = or i32 %34, %20
  %42 = or i32 %41, %38
  %43 = uitofp i32 %40 to float
  %44 = uitofp i32 %42 to float
  %45 = fadd fast float %43, 5.000000e-01
  %46 = fadd fast float %44, 5.000000e-01
  %47 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %40, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = fcmp fast olt float %48, -1.000000e+00
  %50 = fcmp fast ogt float %48, -1.000000e+00
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = select i1 %50, float %52, float 1.000000e+00
  %54 = fadd fast float %48, 1.000000e+00
  %55 = fmul fast float %53, %54
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %60 = fmul fast float %58, 2.000000e+00
  %61 = fmul fast float %60, %45
  %62 = fmul fast float %59, 2.000000e+00
  %63 = fmul fast float %62, %46
  %64 = fsub fast float 1.000000e+00, %61
  %65 = fsub fast float 1.000000e+00, %63
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = select i1 %49, float %67, float %71
  %75 = select i1 %49, float %68, float %72
  %76 = select i1 %49, float %69, float %73
  %77 = fmul fast float %74, %64
  %78 = fmul fast float %75, %64
  %79 = fmul fast float %76, %64
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = select i1 %49, float %81, float %85
  %89 = select i1 %49, float %82, float %86
  %90 = select i1 %49, float %83, float %87
  %91 = fmul fast float %88, %65
  %92 = fmul fast float %89, %65
  %93 = fmul fast float %90, %65
  %94 = fadd fast float %91, %77
  %95 = fadd fast float %92, %78
  %96 = fadd fast float %93, %79
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = select i1 %49, float %98, float %102
  %106 = select i1 %49, float %99, float %103
  %107 = select i1 %49, float %100, float %104
  %108 = fadd fast float %94, %105
  %109 = fadd fast float %95, %106
  %110 = fadd fast float %96, %107
  %111 = fmul fast float %108, %56
  %112 = fmul fast float %109, %56
  %113 = fmul fast float %110, %56
  %114 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %40, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = lshr i32 %115, 8
  %117 = and i32 %115, 255
  %118 = and i32 %116, 255
  %119 = uitofp i32 %117 to float
  %120 = uitofp i32 %118 to float
  %121 = fmul fast float %119, 0x3F80101020000000
  %122 = fmul fast float %120, 0x3F80101020000000
  %123 = fadd fast float %121, -1.000000e+00
  %124 = fadd fast float %122, -1.000000e+00
  %125 = call float @dx.op.unary.f32(i32 6, float %123)  ; FAbs(value)
  %126 = fsub fast float 1.000000e+00, %125
  %127 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %128 = fsub fast float %126, %127
  %129 = fsub fast float -0.000000e+00, %128
  %130 = call float @dx.op.binary.f32(i32 35, float %129, float 0.000000e+00)  ; FMax(a,b)
  %131 = fcmp fast ogt float %123, 0.000000e+00
  %132 = fsub fast float -0.000000e+00, %130
  %133 = select i1 %131, float %132, float %130
  %134 = fadd fast float %133, %123
  %135 = fcmp fast ogt float %124, 0.000000e+00
  %136 = select i1 %135, float %132, float %130
  %137 = fadd fast float %136, %124
  %138 = call float @dx.op.dot3.f32(i32 55, float %134, float %137, float %128, float %134, float %137, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = call float @dx.op.unary.f32(i32 25, float %138)  ; Rsqrt(value)
  %140 = fmul fast float %134, %139
  %141 = fmul fast float %137, %139
  %142 = fmul fast float %139, %128
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = fmul fast float %144, 0x3FE3C6EF40000000
  %146 = frem fast float %45, 2.560000e+02
  %147 = frem fast float %46, 2.560000e+02
  %148 = fptoui float %146 to i32
  %149 = fptoui float %147 to i32
  %150 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %148, i32 %149, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fadd fast float %151, %145
  %153 = call float @dx.op.unary.f32(i32 22, float %152)  ; Frc(value)
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %479, label %157, !dx.controlflow.hints !31

; <label>:157                                     ; preds = %0
  %158 = fptoui float %45 to i32
  %159 = fptoui float %46 to i32
  %160 = lshr i32 %158, 4
  %161 = lshr i32 %159, 4
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 0
  %164 = call i32 @dx.op.tertiary.i32(i32 49, i32 %161, i32 %163, i32 %160)  ; UMad(a,b,c)
  %165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.i32 %165, 0
  %167 = add nsw i32 %166, -1
  %168 = call i32 @dx.op.binary.i32(i32 37, i32 %167, i32 0)  ; IMax(a,b)
  %169 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %170 = fptoui float %169 to i32
  %171 = lshr i32 %170, 5
  %172 = call i32 @dx.op.binary.i32(i32 40, i32 %171, i32 8191)  ; UMin(a,b)
  %173 = shl i32 %172, 2
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = lshr i32 %175, 16
  %177 = and i32 %175, 65535
  %178 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %176, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %179 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %177, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %180 = lshr i32 %178, 5
  %181 = lshr i32 %179, 5
  %182 = call i32 @dx.op.binary.i32(i32 40, i32 %181, i32 %168)  ; UMin(a,b)
  %183 = icmp ugt i32 %180, %182
  br i1 %183, label %479, label %184

; <label>:184                                     ; preds = %157
  br label %185

; <label>:185                                     ; preds = %469, %184
  %186 = phi i32 [ %476, %469 ], [ %180, %184 ]
  %187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.i32 %187, 0
  %189 = call i32 @dx.op.tertiary.i32(i32 49, i32 %164, i32 %188, i32 %186)  ; UMad(a,b,c)
  %190 = shl i32 %189, 2
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = shl i32 %186, 5
  %194 = sub nsw i32 %176, %193
  %195 = call i32 @dx.op.binary.i32(i32 37, i32 %194, i32 0)  ; IMax(a,b)
  %196 = call i32 @dx.op.binary.i32(i32 38, i32 %195, i32 31)  ; IMin(a,b)
  %197 = sub nsw i32 1, %176
  %198 = add nsw i32 %197, %177
  %199 = call i32 @dx.op.binary.i32(i32 37, i32 %198, i32 0)  ; IMax(a,b)
  %200 = call i32 @dx.op.binary.i32(i32 38, i32 %199, i32 32)  ; IMin(a,b)
  %201 = and i32 %200, 31
  %202 = shl i32 -1, %201
  %203 = xor i32 %202, -1
  %204 = and i32 %196, 31
  %205 = shl i32 %203, %204
  %206 = icmp eq i32 %200, 32
  %207 = select i1 %206, i32 -1, i32 %205
  %208 = and i32 %207, %192
  %209 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %208, i8 1)  ; WaveActiveBit(value,op)
  %210 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %209)  ; WaveReadLaneFirst(value)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %469, label %212

; <label>:212                                     ; preds = %185
  br label %213

; <label>:213                                     ; preds = %441, %212
  %214 = phi i32 [ %448, %441 ], [ 0, %212 ]
  %215 = phi i32 [ %220, %441 ], [ %210, %212 ]
  %216 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %215)  ; FirstbitLo(value)
  %217 = add i32 %216, %193
  %218 = and i32 %216, 31
  %219 = shl i32 1, %218
  %220 = xor i32 %219, %215
  %221 = mul i32 %217, 112
  %222 = add i32 %221, 16
  %223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = extractvalue %dx.types.ResRet.f32 %223, 2
  %227 = add i32 %221, 28
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = add i32 %221, 32
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = extractvalue %dx.types.ResRet.f32 %231, 1
  %234 = extractvalue %dx.types.ResRet.f32 %231, 2
  %235 = add i32 %221, 48
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = extractvalue %dx.types.ResRet.f32 %236, 3
  %241 = add i32 %221, 64
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = add i32 %221, 92
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = uitofp i32 %250 to float
  %252 = lshr i32 %249, 16
  %253 = uitofp i32 %252 to float
  %254 = and i32 %229, 65535
  %255 = and i32 %229, 50331648
  %256 = icmp eq i32 %255, 33554432
  %257 = call float @dx.op.dot3.f32(i32 55, float %232, float %233, float %234, float %232, float %233, float %234)  ; Dot3(ax,ay,az,bx,by,bz)
  %258 = fsub fast float %111, %237
  %259 = fsub fast float %112, %238
  %260 = fsub fast float %113, %239
  %261 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %232, float %233, float %234)  ; Dot3(ax,ay,az,bx,by,bz)
  %262 = fdiv fast float %261, %257
  %263 = call float @dx.op.binary.f32(i32 35, float %262, float -1.000000e+00)  ; FMax(a,b)
  %264 = call float @dx.op.binary.f32(i32 36, float %263, float 1.000000e+00)  ; FMin(a,b)
  %265 = fmul fast float %264, %232
  %266 = fmul fast float %264, %233
  %267 = fmul fast float %264, %234
  %268 = fadd fast float %265, %237
  %269 = fadd fast float %266, %238
  %270 = fadd fast float %267, %239
  %271 = fsub fast float %268, %111
  %272 = fsub fast float %269, %112
  %273 = fsub fast float %270, %113
  %274 = call float @dx.op.dot3.f32(i32 55, float %271, float %272, float %273, float %271, float %272, float %273)  ; Dot3(ax,ay,az,bx,by,bz)
  %275 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %276 = fdiv fast float 1.000000e+00, %275
  %277 = fmul fast float %271, %276
  %278 = fmul fast float %272, %276
  %279 = fmul fast float %273, %276
  br i1 %256, label %280, label %304, !dx.controlflow.hints !32

; <label>:280                                     ; preds = %213
  %281 = fmul fast float %245, %224
  %282 = fmul fast float %245, %225
  %283 = fmul fast float %245, %226
  %284 = fsub fast float %281, %111
  %285 = fadd fast float %284, %268
  %286 = fsub fast float %282, %112
  %287 = fadd fast float %286, %269
  %288 = fsub fast float %283, %113
  %289 = fadd fast float %288, %270
  %290 = call float @dx.op.dot3.f32(i32 55, float %285, float %287, float %289, float %285, float %287, float %289)  ; Dot3(ax,ay,az,bx,by,bz)
  %291 = call float @dx.op.unary.f32(i32 25, float %290)  ; Rsqrt(value)
  %292 = fmul fast float %291, %285
  %293 = fmul fast float %291, %287
  %294 = fmul fast float %291, %289
  %295 = fsub fast float %111, %268
  %296 = fsub fast float %112, %269
  %297 = fsub fast float %113, %270
  %298 = fsub fast float -0.000000e+00, %295
  %299 = fsub fast float -0.000000e+00, %296
  %300 = fsub fast float -0.000000e+00, %297
  %301 = call float @dx.op.dot3.f32(i32 55, float %298, float %299, float %300, float %224, float %225, float %226)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = fcmp fast ogt float %301, 0.000000e+00
  %303 = uitofp i1 %302 to float
  br label %304

; <label>:304                                     ; preds = %280, %213
  %305 = phi float [ %303, %280 ], [ 1.000000e+00, %213 ]
  %306 = phi float [ %292, %280 ], [ %277, %213 ]
  %307 = phi float [ %293, %280 ], [ %278, %213 ]
  %308 = phi float [ %294, %280 ], [ %279, %213 ]
  %309 = call float @dx.op.dot3.f32(i32 55, float %224, float %225, float %226, float %306, float %307, float %308)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = fmul fast float %309, %309
  %311 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %312 = fsub fast float 1.000000e+00, %311
  %313 = fmul fast float %312, 5.000000e-01
  %314 = fcmp fast ogt float %309, 0.000000e+00
  %315 = fsub fast float 1.000000e+00, %313
  %316 = select i1 %314, float %313, float %315
  %317 = fmul fast float %316, %253
  %318 = fadd fast float %317, %251
  %319 = fmul fast float %318, 0x3EF0001000000000
  %320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %319, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = fmul fast float %309, %243
  %323 = fadd fast float %322, %244
  %324 = call float @dx.op.unary.f32(i32 7, float %323)  ; Saturate(value)
  %325 = select i1 %256, float %324, float 1.000000e+00
  %326 = fmul fast float %275, %240
  %327 = fsub fast float 1.000000e+00, %326
  %328 = fmul fast float %327, %246
  %329 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %330 = fmul fast float %329, %325
  %331 = fmul fast float %330, 2.000000e+00
  %332 = fsub fast float 3.000000e+00, %331
  %333 = fmul fast float %321, %305
  %334 = fmul fast float %330, %330
  %335 = fmul fast float %334, %333
  %336 = fmul fast float %335, %332
  %337 = icmp ne i32 %254, 255
  %338 = call float @dx.op.binary.f32(i32 36, float %336, float %336)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 36, float %336, float %338)  ; FMin(a,b)
  %340 = fcmp fast ogt float %339, 0.000000e+00
  %341 = and i1 %337, %340
  br i1 %341, label %342, label %441, !dx.controlflow.hints !33

; <label>:342                                     ; preds = %304
  %343 = select i1 %256, float 1.000000e+00, float %324
  %344 = mul nuw nsw i32 %254, 176
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = extractvalue %dx.types.ResRet.f32 %345, 2
  %349 = extractvalue %dx.types.ResRet.f32 %345, 3
  %350 = add nuw nsw i32 %344, 16
  %351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = extractvalue %dx.types.ResRet.f32 %351, 1
  %354 = add nuw nsw i32 %344, 32
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = add nuw nsw i32 %344, 48
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = extractvalue %dx.types.ResRet.f32 %360, 3
  %365 = add nuw nsw i32 %344, 64
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = extractvalue %dx.types.ResRet.f32 %366, 3
  %371 = add nuw nsw i32 %344, 80
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = extractvalue %dx.types.ResRet.f32 %372, 3
  %377 = add nuw nsw i32 %344, 96
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = extractvalue %dx.types.ResRet.f32 %378, 2
  %382 = extractvalue %dx.types.ResRet.f32 %378, 3
  %383 = bitcast float %353 to i32
  %384 = fmul fast float %140, %358
  %385 = fmul fast float %141, %358
  %386 = fmul fast float %142, %358
  %387 = fadd fast float %384, %111
  %388 = fadd fast float %385, %112
  %389 = fadd fast float %386, %113
  %390 = fmul fast float %387, %361
  %391 = call float @dx.op.tertiary.f32(i32 46, float %388, float %367, float %390)  ; FMad(a,b,c)
  %392 = call float @dx.op.tertiary.f32(i32 46, float %389, float %373, float %391)  ; FMad(a,b,c)
  %393 = fadd fast float %392, %379
  %394 = fmul fast float %387, %362
  %395 = call float @dx.op.tertiary.f32(i32 46, float %388, float %368, float %394)  ; FMad(a,b,c)
  %396 = call float @dx.op.tertiary.f32(i32 46, float %389, float %374, float %395)  ; FMad(a,b,c)
  %397 = fadd fast float %396, %380
  %398 = fmul fast float %387, %363
  %399 = call float @dx.op.tertiary.f32(i32 46, float %388, float %369, float %398)  ; FMad(a,b,c)
  %400 = call float @dx.op.tertiary.f32(i32 46, float %389, float %375, float %399)  ; FMad(a,b,c)
  %401 = fadd fast float %400, %381
  %402 = fmul fast float %387, %364
  %403 = call float @dx.op.tertiary.f32(i32 46, float %388, float %370, float %402)  ; FMad(a,b,c)
  %404 = call float @dx.op.tertiary.f32(i32 46, float %389, float %376, float %403)  ; FMad(a,b,c)
  %405 = fadd fast float %404, %382
  %406 = fdiv fast float %393, %405
  %407 = fdiv fast float %397, %405
  %408 = fdiv fast float %401, %405
  %409 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %408)  ; FMax(a,b)
  %410 = fmul fast float %153, 0x401921FB60000000
  %411 = call float @dx.op.unary.f32(i32 13, float %410)  ; Sin(value)
  %412 = call float @dx.op.unary.f32(i32 12, float %410)  ; Cos(value)
  %413 = fsub fast float -0.000000e+00, %411
  %414 = fmul fast float %348, 5.000000e-01
  %415 = call float @dx.op.dot2.f32(i32 54, float %153, float %153, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %416 = call float @dx.op.unary.f32(i32 22, float %415)  ; Frc(value)
  %417 = fmul fast float %416, 0x404A7DD040000000
  %418 = call float @dx.op.unary.f32(i32 22, float %417)  ; Frc(value)
  %419 = fmul fast float %418, %357
  %420 = fadd fast float %419, %414
  %421 = call float @dx.op.tertiary.f32(i32 46, float %420, float %413, float 0.000000e+00)  ; FMad(a,b,c)
  %422 = call float @dx.op.tertiary.f32(i32 46, float %420, float %412, float 0.000000e+00)  ; FMad(a,b,c)
  %423 = fadd fast float %421, %406
  %424 = fadd fast float %422, %407
  %425 = fmul fast float %423, %352
  %426 = fmul fast float %424, %352
  %427 = call float @dx.op.binary.f32(i32 35, float %425, float %348)  ; FMax(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %426, float %348)  ; FMax(a,b)
  %429 = call float @dx.op.binary.f32(i32 36, float %427, float %349)  ; FMin(a,b)
  %430 = call float @dx.op.binary.f32(i32 36, float %428, float %349)  ; FMin(a,b)
  %431 = fadd fast float %429, %346
  %432 = fadd fast float %430, %347
  %433 = uitofp i32 %383 to float
  %434 = fadd fast float %409, %356
  %435 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %15, float %431, float %432, float %433, float undef, i32 0, i32 0, i32 undef, float %434)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = fadd fast float %436, -1.000000e+00
  %438 = fmul fast float %437, %343
  %439 = fadd fast float %438, 1.000000e+00
  %440 = fmul fast float %439, %336
  br label %441

; <label>:441                                     ; preds = %342, %304
  %442 = phi float [ %440, %342 ], [ %336, %304 ]
  %443 = call float @dx.op.binary.f32(i32 36, float %442, float %442)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %442, float %443)  ; FMin(a,b)
  %445 = fcmp fast ogt float %444, 0x3F10000000000000
  %446 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %445)  ; WaveAnyTrue(cond)
  %447 = select i1 %446, i32 %219, i32 0
  %448 = or i32 %214, %447
  %449 = lshr i32 %158, 5
  %450 = lshr i32 %159, 5
  %451 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %449, i32 %450, i32 %217, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = lshr i32 %452, 23
  %454 = and i32 %453, 255
  %455 = and i32 %158, 31
  %456 = and i32 %159, 31
  %457 = lshr i32 %452, 1
  %458 = and i32 %457, 16352
  %459 = lshr i32 %452, 10
  %460 = and i32 %459, 8160
  %461 = or i32 %458, %455
  %462 = or i32 %460, %456
  %463 = fmul fast float %442, 2.550000e+02
  %464 = fadd fast float %463, %153
  %465 = call float @dx.op.unary.f32(i32 27, float %464)  ; Round_ni(value)
  %466 = fmul fast float %465, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %461, i32 %462, i32 %454, float %466, float %466, float %466, float %466, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %467 = icmp eq i32 %215, %219
  br i1 %467, label %468, label %213, !llvm.loop !34

; <label>:468                                     ; preds = %441
  br label %469

; <label>:469                                     ; preds = %468, %185
  %470 = phi i32 [ 0, %185 ], [ %448, %468 ]
  %471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.i32 %471, 0
  %473 = call i32 @dx.op.tertiary.i32(i32 49, i32 %164, i32 %472, i32 %186)  ; UMad(a,b,c)
  %474 = shl i32 %473, 2
  %475 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %474, i32 undef, i32 undef, i32 %470)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %476 = add i32 %186, 1
  %477 = icmp ugt i32 %476, %182
  br i1 %477, label %478, label %185

; <label>:478                                     ; preds = %469
  br label %479

; <label>:479                                     ; preds = %478, %157, %0
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
!30 = !{i32 8, i32 4, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}

