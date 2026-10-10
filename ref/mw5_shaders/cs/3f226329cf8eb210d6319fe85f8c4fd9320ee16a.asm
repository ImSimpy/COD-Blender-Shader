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
; shader hash: bfbd696f2ded9a0ba1772fbea0bbac97
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

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
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = shl i32 %25, 2
  %29 = mul i32 %28, %27
  %30 = add i32 %29, %21
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
  %44 = or i32 %37, %22
  %45 = or i32 %44, %41
  %46 = or i32 %43, %23
  %47 = or i32 %46, %39
  %48 = uitofp i32 %45 to float
  %49 = uitofp i32 %47 to float
  %50 = fadd fast float %48, 5.000000e-01
  %51 = fadd fast float %49, 5.000000e-01
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %45, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = fcmp fast olt float %53, -1.000000e+00
  %55 = fcmp fast ogt float %53, -1.000000e+00
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %58 = select i1 %55, float %57, float 1.000000e+00
  %59 = fadd fast float %53, 1.000000e+00
  %60 = fmul fast float %58, %59
  %61 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %65 = fmul fast float %63, 2.000000e+00
  %66 = fmul fast float %65, %50
  %67 = fmul fast float %64, 2.000000e+00
  %68 = fmul fast float %67, %51
  %69 = fsub fast float 1.000000e+00, %66
  %70 = fsub fast float 1.000000e+00, %68
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = select i1 %54, float %72, float %76
  %80 = select i1 %54, float %73, float %77
  %81 = select i1 %54, float %74, float %78
  %82 = fmul fast float %69, %79
  %83 = fmul fast float %69, %80
  %84 = fmul fast float %69, %81
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
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
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %1238, label %162, !dx.controlflow.hints !35

; <label>:162                                     ; preds = %0
  %163 = fptoui float %50 to i32
  %164 = fptoui float %51 to i32
  %165 = lshr i32 %163, 4
  %166 = lshr i32 %164, 4
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 0
  %169 = call i32 @dx.op.tertiary.i32(i32 49, i32 %166, i32 %168, i32 %165)  ; UMad(a,b,c)
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
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
  %183 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %181, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %184 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %182, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %185 = lshr i32 %183, 5
  %186 = lshr i32 %184, 5
  %187 = call i32 @dx.op.binary.i32(i32 40, i32 %186, i32 %173)  ; UMin(a,b)
  %188 = icmp ugt i32 %185, %187
  br i1 %188, label %1238, label %189

; <label>:189                                     ; preds = %162
  br label %190

; <label>:190                                     ; preds = %1228, %189
  %191 = phi i32 [ %1235, %1228 ], [ %185, %189 ]
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 0
  %194 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %193, i32 %191)  ; UMad(a,b,c)
  %195 = shl i32 %194, 2
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = shl i32 %191, 5
  %199 = sub nsw i32 %181, %198
  %200 = call i32 @dx.op.binary.i32(i32 37, i32 %199, i32 0)  ; IMax(a,b)
  %201 = call i32 @dx.op.binary.i32(i32 38, i32 %200, i32 31)  ; IMin(a,b)
  %202 = sub nsw i32 1, %181
  %203 = add nsw i32 %202, %182
  %204 = call i32 @dx.op.binary.i32(i32 37, i32 %203, i32 0)  ; IMax(a,b)
  %205 = call i32 @dx.op.binary.i32(i32 38, i32 %204, i32 32)  ; IMin(a,b)
  %206 = and i32 %205, 31
  %207 = shl i32 -1, %206
  %208 = xor i32 %207, -1
  %209 = and i32 %201, 31
  %210 = shl i32 %208, %209
  %211 = icmp eq i32 %205, 32
  %212 = select i1 %211, i32 -1, i32 %210
  %213 = and i32 %212, %197
  %214 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %213, i8 1)  ; WaveActiveBit(value,op)
  %215 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %214)  ; WaveReadLaneFirst(value)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %1228, label %217

; <label>:217                                     ; preds = %190
  br label %218

; <label>:218                                     ; preds = %1225, %217
  %219 = phi i32 [ %1151, %1225 ], [ 0, %217 ]
  %220 = phi i32 [ %225, %1225 ], [ %215, %217 ]
  %221 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %220)  ; FirstbitLo(value)
  %222 = add i32 %221, %198
  %223 = and i32 %221, 31
  %224 = shl i32 1, %223
  %225 = xor i32 %224, %220
  %226 = mul i32 %222, 112
  %227 = add i32 %226, 16
  %228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = extractvalue %dx.types.ResRet.f32 %228, 2
  %232 = add i32 %226, 28
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = add i32 %226, 32
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = add i32 %226, 44
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = add i32 %226, 48
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 1
  %247 = extractvalue %dx.types.ResRet.f32 %244, 2
  %248 = extractvalue %dx.types.ResRet.f32 %244, 3
  %249 = add i32 %226, 64
  %250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = extractvalue %dx.types.ResRet.f32 %250, 1
  %253 = extractvalue %dx.types.ResRet.f32 %250, 2
  %254 = extractvalue %dx.types.ResRet.f32 %250, 3
  %255 = add i32 %226, 92
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = uitofp i32 %258 to float
  %260 = lshr i32 %257, 16
  %261 = uitofp i32 %260 to float
  %262 = and i32 %234, 65535
  %263 = and i32 %234, 50331648
  %264 = icmp eq i32 %263, 33554432
  %265 = call float @dx.op.dot3.f32(i32 55, float %237, float %238, float %239, float %237, float %238, float %239)  ; Dot3(ax,ay,az,bx,by,bz)
  %266 = fsub fast float %116, %245
  %267 = fsub fast float %117, %246
  %268 = fsub fast float %118, %247
  %269 = call float @dx.op.dot3.f32(i32 55, float %266, float %267, float %268, float %237, float %238, float %239)  ; Dot3(ax,ay,az,bx,by,bz)
  %270 = fdiv fast float %269, %265
  %271 = call float @dx.op.binary.f32(i32 35, float %270, float -1.000000e+00)  ; FMax(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %271, float 1.000000e+00)  ; FMin(a,b)
  %273 = fmul fast float %272, %237
  %274 = fmul fast float %272, %238
  %275 = fmul fast float %272, %239
  %276 = fadd fast float %273, %245
  %277 = fadd fast float %274, %246
  %278 = fadd fast float %275, %247
  %279 = fsub fast float %276, %116
  %280 = fsub fast float %277, %117
  %281 = fsub fast float %278, %118
  %282 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %283 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %284 = fdiv fast float 1.000000e+00, %283
  %285 = fmul fast float %279, %284
  %286 = fmul fast float %280, %284
  %287 = fmul fast float %281, %284
  br i1 %264, label %288, label %312, !dx.controlflow.hints !36

; <label>:288                                     ; preds = %218
  %289 = fmul fast float %253, %229
  %290 = fmul fast float %253, %230
  %291 = fmul fast float %253, %231
  %292 = fsub fast float %289, %116
  %293 = fadd fast float %292, %276
  %294 = fsub fast float %290, %117
  %295 = fadd fast float %294, %277
  %296 = fsub fast float %291, %118
  %297 = fadd fast float %296, %278
  %298 = call float @dx.op.dot3.f32(i32 55, float %293, float %295, float %297, float %293, float %295, float %297)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = call float @dx.op.unary.f32(i32 25, float %298)  ; Rsqrt(value)
  %300 = fmul fast float %299, %293
  %301 = fmul fast float %299, %295
  %302 = fmul fast float %299, %297
  %303 = fsub fast float %116, %276
  %304 = fsub fast float %117, %277
  %305 = fsub fast float %118, %278
  %306 = fsub fast float -0.000000e+00, %303
  %307 = fsub fast float -0.000000e+00, %304
  %308 = fsub fast float -0.000000e+00, %305
  %309 = call float @dx.op.dot3.f32(i32 55, float %306, float %307, float %308, float %229, float %230, float %231)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = fcmp fast ogt float %309, 0.000000e+00
  %311 = uitofp i1 %310 to float
  br label %312

; <label>:312                                     ; preds = %288, %218
  %313 = phi float [ %311, %288 ], [ 1.000000e+00, %218 ]
  %314 = phi float [ %300, %288 ], [ %285, %218 ]
  %315 = phi float [ %301, %288 ], [ %286, %218 ]
  %316 = phi float [ %302, %288 ], [ %287, %218 ]
  %317 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %314, float %315, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = fmul fast float %317, %317
  %319 = call float @dx.op.unary.f32(i32 7, float %318)  ; Saturate(value)
  %320 = fsub fast float 1.000000e+00, %319
  %321 = fmul fast float %320, 5.000000e-01
  %322 = fcmp fast ogt float %317, 0.000000e+00
  %323 = fsub fast float 1.000000e+00, %321
  %324 = select i1 %322, float %321, float %323
  %325 = fmul fast float %324, %261
  %326 = fadd fast float %325, %259
  %327 = fmul fast float %326, 0x3EF0001000000000
  %328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %327, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = fmul fast float %317, %251
  %331 = fadd fast float %330, %252
  %332 = call float @dx.op.unary.f32(i32 7, float %331)  ; Saturate(value)
  %333 = select i1 %264, float 1.000000e+00, float %332
  %334 = select i1 %264, float %332, float 1.000000e+00
  %335 = fmul fast float %283, %248
  %336 = fsub fast float 1.000000e+00, %335
  %337 = fmul fast float %336, %254
  %338 = call float @dx.op.unary.f32(i32 7, float %337)  ; Saturate(value)
  %339 = fmul fast float %338, %334
  %340 = fmul fast float %339, 2.000000e+00
  %341 = fsub fast float 3.000000e+00, %340
  %342 = fmul fast float %329, %313
  %343 = fmul fast float %339, %339
  %344 = fmul fast float %343, %342
  %345 = fmul fast float %344, %341
  %346 = icmp ne i32 %262, 255
  %347 = call float @dx.op.binary.f32(i32 36, float %345, float %345)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 36, float %345, float %347)  ; FMin(a,b)
  %349 = fcmp fast ogt float %348, 0.000000e+00
  %350 = and i1 %346, %349
  br i1 %350, label %351, label %1144, !dx.controlflow.hints !37

; <label>:351                                     ; preds = %312
  %352 = mul nuw nsw i32 %262, 176
  %353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = extractvalue %dx.types.ResRet.f32 %353, 3
  %358 = add nuw nsw i32 %352, 16
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = add nuw nsw i32 %352, 32
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = extractvalue %dx.types.ResRet.f32 %363, 3
  %368 = add nuw nsw i32 %352, 48
  %369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = extractvalue %dx.types.ResRet.f32 %369, 1
  %372 = extractvalue %dx.types.ResRet.f32 %369, 2
  %373 = extractvalue %dx.types.ResRet.f32 %369, 3
  %374 = add nuw nsw i32 %352, 64
  %375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = extractvalue %dx.types.ResRet.f32 %375, 1
  %378 = extractvalue %dx.types.ResRet.f32 %375, 2
  %379 = extractvalue %dx.types.ResRet.f32 %375, 3
  %380 = add nuw nsw i32 %352, 80
  %381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = extractvalue %dx.types.ResRet.f32 %381, 1
  %384 = extractvalue %dx.types.ResRet.f32 %381, 2
  %385 = extractvalue %dx.types.ResRet.f32 %381, 3
  %386 = add nuw nsw i32 %352, 96
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = extractvalue %dx.types.ResRet.f32 %387, 2
  %391 = extractvalue %dx.types.ResRet.f32 %387, 3
  %392 = add nuw nsw i32 %352, 112
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = extractvalue %dx.types.ResRet.f32 %393, 1
  %396 = extractvalue %dx.types.ResRet.f32 %393, 2
  %397 = extractvalue %dx.types.ResRet.f32 %393, 3
  %398 = add nuw nsw i32 %352, 128
  %399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = extractvalue %dx.types.ResRet.f32 %399, 2
  %403 = extractvalue %dx.types.ResRet.f32 %399, 3
  %404 = add nuw nsw i32 %352, 144
  %405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = extractvalue %dx.types.ResRet.f32 %405, 3
  %410 = add nuw nsw i32 %352, 160
  %411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = extractvalue %dx.types.ResRet.f32 %411, 1
  %414 = extractvalue %dx.types.ResRet.f32 %411, 2
  %415 = extractvalue %dx.types.ResRet.f32 %411, 3
  %416 = bitcast float %361 to i32
  %417 = bitcast float %367 to i32
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = and i32 %417, 2
  %421 = fmul fast float %145, %366
  %422 = fmul fast float %146, %366
  %423 = fmul fast float %147, %366
  %424 = fadd fast float %421, %116
  %425 = fadd fast float %422, %117
  %426 = fadd fast float %423, %118
  %427 = fmul fast float %424, %370
  %428 = call float @dx.op.tertiary.f32(i32 46, float %425, float %376, float %427)  ; FMad(a,b,c)
  %429 = call float @dx.op.tertiary.f32(i32 46, float %426, float %382, float %428)  ; FMad(a,b,c)
  %430 = fadd fast float %429, %388
  %431 = fmul fast float %424, %371
  %432 = call float @dx.op.tertiary.f32(i32 46, float %425, float %377, float %431)  ; FMad(a,b,c)
  %433 = call float @dx.op.tertiary.f32(i32 46, float %426, float %383, float %432)  ; FMad(a,b,c)
  %434 = fadd fast float %433, %389
  %435 = fmul fast float %424, %372
  %436 = call float @dx.op.tertiary.f32(i32 46, float %425, float %378, float %435)  ; FMad(a,b,c)
  %437 = call float @dx.op.tertiary.f32(i32 46, float %426, float %384, float %436)  ; FMad(a,b,c)
  %438 = fadd fast float %437, %390
  %439 = fmul fast float %424, %373
  %440 = call float @dx.op.tertiary.f32(i32 46, float %425, float %379, float %439)  ; FMad(a,b,c)
  %441 = call float @dx.op.tertiary.f32(i32 46, float %426, float %385, float %440)  ; FMad(a,b,c)
  %442 = fadd fast float %441, %391
  %443 = fdiv fast float %430, %442
  %444 = fdiv fast float %434, %442
  %445 = fdiv fast float %438, %442
  %446 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %445)  ; FMax(a,b)
  %447 = fmul fast float %158, 0x401921FB60000000
  %448 = call float @dx.op.unary.f32(i32 13, float %447)  ; Sin(value)
  %449 = call float @dx.op.unary.f32(i32 12, float %447)  ; Cos(value)
  %450 = fsub fast float -0.000000e+00, %448
  %451 = icmp eq i32 %420, 0
  br i1 %451, label %452, label %523, !dx.controlflow.hints !38

; <label>:452                                     ; preds = %351
  %453 = fmul fast float %449, %365
  %454 = call float @dx.op.tertiary.f32(i32 46, float %448, float %365, float 0.000000e+00)  ; FMad(a,b,c)
  %455 = fmul fast float %365, %450
  %456 = call float @dx.op.tertiary.f32(i32 46, float %449, float %365, float 0.000000e+00)  ; FMad(a,b,c)
  br label %457

; <label>:457                                     ; preds = %457, %452
  %458 = phi float [ 0.000000e+00, %452 ], [ %490, %457 ]
  %459 = phi float [ 0.000000e+00, %452 ], [ %492, %457 ]
  %460 = phi i32 [ 0, %452 ], [ %493, %457 ]
  %461 = mul i32 %460, 2
  %462 = add i32 0, %461
  %463 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %462
  %464 = load float, float* %463, align 4
  %465 = mul i32 %460, 2
  %466 = add i32 1, %465
  %467 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %466
  %468 = load float, float* %467, align 4
  %469 = fmul fast float %453, %464
  %470 = call float @dx.op.tertiary.f32(i32 46, float %468, float %455, float %469)  ; FMad(a,b,c)
  %471 = fmul fast float %464, %454
  %472 = call float @dx.op.tertiary.f32(i32 46, float %468, float %456, float %471)  ; FMad(a,b,c)
  %473 = fadd fast float %470, %443
  %474 = fadd fast float %472, %444
  %475 = fmul fast float %473, %360
  %476 = fmul fast float %474, %360
  %477 = call float @dx.op.binary.f32(i32 35, float %475, float %356)  ; FMax(a,b)
  %478 = call float @dx.op.binary.f32(i32 35, float %476, float %356)  ; FMax(a,b)
  %479 = call float @dx.op.binary.f32(i32 36, float %477, float %357)  ; FMin(a,b)
  %480 = call float @dx.op.binary.f32(i32 36, float %478, float %357)  ; FMin(a,b)
  %481 = fadd fast float %479, %354
  %482 = fadd fast float %480, %355
  %483 = uitofp i32 %416 to float
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %481, float %482, float %483, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = fsub fast float %485, %446
  %487 = fsub fast float %486, %364
  %488 = fcmp fast ogt float %487, 0.000000e+00
  %489 = select i1 %488, float 1.000000e+00, float 0.000000e+00
  %490 = fadd fast float %489, %458
  %491 = select i1 %488, float %487, float 0.000000e+00
  %492 = fadd fast float %491, %459
  %493 = add nuw nsw i32 %460, 1
  %494 = icmp eq i32 %493, 8
  br i1 %494, label %495, label %457

; <label>:495                                     ; preds = %457
  %496 = fdiv fast float 1.000000e+00, %490
  %497 = fmul fast float %496, %492
  %498 = fdiv fast float 1.000000e+00, %446
  %499 = fmul fast float %497, %498
  %500 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  %501 = call float @dx.op.binary.f32(i32 35, float %500, float 0.000000e+00)  ; FMax(a,b)
  %502 = fmul fast float %490, 1.250000e-01
  %503 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %504 = fmul fast float %503, 2.000000e+00
  %505 = fadd fast float %504, -1.000000e+00
  %506 = fcmp fast ogt float %505, 0.000000e+00
  %507 = fcmp fast olt float %505, 0.000000e+00
  %508 = zext i1 %506 to i32
  %509 = zext i1 %507 to i32
  %510 = sub nsw i32 %508, %509
  %511 = sitofp i32 %510 to float
  %512 = fmul fast float %511, %505
  %513 = fsub fast float 1.000000e+00, %512
  %514 = fmul fast float %513, %513
  %515 = fmul fast float %514, %513
  %516 = fsub fast float %513, %515
  %517 = fmul fast float %516, %501
  %518 = fsub fast float 1.000000e+00, %515
  %519 = fsub fast float %518, %517
  %520 = fmul fast float %511, 5.000000e-01
  %521 = fmul fast float %520, %519
  %522 = fsub fast float 5.000000e-01, %521
  br label %1138

; <label>:523                                     ; preds = %351
  %524 = fsub fast float 1.000000e+00, %446
  %525 = fmul fast float %524, 5.000000e-01
  %526 = fadd fast float %525, %446
  %527 = fsub fast float %424, %245
  %528 = fsub fast float %425, %246
  %529 = fsub fast float %426, %247
  %530 = call float @dx.op.dot3.f32(i32 55, float %527, float %528, float %529, float %237, float %238, float %239)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = fdiv fast float %530, %265
  %532 = call float @dx.op.binary.f32(i32 35, float %531, float -1.000000e+00)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 36, float %532, float 1.000000e+00)  ; FMin(a,b)
  %534 = fmul fast float %533, %237
  %535 = fmul fast float %533, %238
  %536 = fmul fast float %533, %239
  %537 = fsub fast float %527, %534
  %538 = fsub fast float %528, %535
  %539 = fsub fast float %529, %536
  %540 = call float @dx.op.dot3.f32(i32 55, float %537, float %538, float %539, float %537, float %538, float %539)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.unary.f32(i32 25, float %540)  ; Rsqrt(value)
  %542 = fmul fast float %537, %541
  %543 = fmul fast float %538, %541
  %544 = fmul fast float %539, %541
  %545 = call float @dx.op.unary.f32(i32 25, float %265)  ; Rsqrt(value)
  %546 = fmul fast float %545, %237
  %547 = fmul fast float %545, %238
  %548 = fmul fast float %545, %239
  br i1 %419, label %549, label %553, !dx.controlflow.hints !39

; <label>:549                                     ; preds = %523
  %550 = fcmp fast olt float %543, 0x3FE6666660000000
  %551 = select i1 %550, float 1.000000e+00, float 0.000000e+00
  %552 = select i1 %550, float 0.000000e+00, float 1.000000e+00
  br label %553

; <label>:553                                     ; preds = %549, %523
  %554 = phi float [ 0.000000e+00, %549 ], [ %546, %523 ]
  %555 = phi float [ %551, %549 ], [ %547, %523 ]
  %556 = phi float [ %552, %549 ], [ %548, %523 ]
  %557 = fmul fast float %555, %544
  %558 = fmul fast float %556, %543
  %559 = fsub fast float %557, %558
  %560 = fmul fast float %556, %542
  %561 = fmul fast float %554, %544
  %562 = fsub fast float %560, %561
  %563 = fmul fast float %554, %543
  %564 = fmul fast float %555, %542
  %565 = fsub fast float %563, %564
  %566 = call float @dx.op.dot3.f32(i32 55, float %559, float %562, float %565, float %559, float %562, float %565)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = call float @dx.op.unary.f32(i32 25, float %566)  ; Rsqrt(value)
  %568 = fmul fast float %567, %242
  %569 = fmul fast float %568, %559
  %570 = fmul fast float %568, %562
  %571 = fmul fast float %565, %242
  %572 = fmul fast float %571, %567
  %573 = fmul fast float %443, %394
  %574 = call float @dx.op.tertiary.f32(i32 46, float %444, float %400, float %573)  ; FMad(a,b,c)
  %575 = call float @dx.op.tertiary.f32(i32 46, float %526, float %406, float %574)  ; FMad(a,b,c)
  %576 = fadd fast float %575, %412
  %577 = fmul fast float %443, %395
  %578 = call float @dx.op.tertiary.f32(i32 46, float %444, float %401, float %577)  ; FMad(a,b,c)
  %579 = call float @dx.op.tertiary.f32(i32 46, float %526, float %407, float %578)  ; FMad(a,b,c)
  %580 = fadd fast float %579, %413
  %581 = fmul fast float %443, %396
  %582 = call float @dx.op.tertiary.f32(i32 46, float %444, float %402, float %581)  ; FMad(a,b,c)
  %583 = call float @dx.op.tertiary.f32(i32 46, float %526, float %408, float %582)  ; FMad(a,b,c)
  %584 = fadd fast float %583, %414
  %585 = fmul fast float %443, %397
  %586 = call float @dx.op.tertiary.f32(i32 46, float %444, float %403, float %585)  ; FMad(a,b,c)
  %587 = call float @dx.op.tertiary.f32(i32 46, float %526, float %409, float %586)  ; FMad(a,b,c)
  %588 = fadd fast float %587, %415
  %589 = fdiv fast float 1.000000e+00, %588
  %590 = fmul fast float %589, %576
  %591 = fmul fast float %589, %580
  %592 = fmul fast float %589, %584
  %593 = fsub fast float -0.000000e+00, %542
  %594 = fsub fast float -0.000000e+00, %543
  %595 = fsub fast float -0.000000e+00, %544
  %596 = fsub fast float %245, %569
  %597 = fsub fast float %246, %570
  %598 = fsub fast float %247, %572
  %599 = fsub fast float %590, %596
  %600 = fsub fast float %591, %597
  %601 = fsub fast float %592, %598
  %602 = call float @dx.op.dot3.f32(i32 55, float %599, float %600, float %601, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %603 = call float @dx.op.unary.f32(i32 25, float %602)  ; Rsqrt(value)
  %604 = fmul fast float %599, %603
  %605 = fmul fast float %600, %603
  %606 = fmul fast float %601, %603
  %607 = fsub fast float %424, %596
  %608 = fsub fast float %425, %597
  %609 = fsub fast float %426, %598
  %610 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %607, float %608, float %609)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %604, float %605, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %612 = fdiv fast float 1.000000e+00, %611
  %613 = fmul fast float %612, %610
  %614 = fmul fast float %613, %604
  %615 = fmul fast float %613, %605
  %616 = fmul fast float %613, %606
  %617 = fadd fast float %614, %596
  %618 = fadd fast float %615, %597
  %619 = fadd fast float %616, %598
  %620 = fadd fast float %569, %245
  %621 = fadd fast float %570, %246
  %622 = fadd fast float %572, %247
  %623 = fsub fast float %590, %620
  %624 = fsub fast float %591, %621
  %625 = fsub fast float %592, %622
  %626 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %623, float %624, float %625)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 25, float %626)  ; Rsqrt(value)
  %628 = fmul fast float %627, %623
  %629 = fmul fast float %627, %624
  %630 = fmul fast float %627, %625
  %631 = fsub fast float %424, %620
  %632 = fsub fast float %425, %621
  %633 = fsub fast float %426, %622
  %634 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %631, float %632, float %633)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %628, float %629, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = fdiv fast float 1.000000e+00, %635
  %637 = fmul fast float %636, %634
  %638 = fmul fast float %637, %628
  %639 = fmul fast float %637, %629
  %640 = fmul fast float %637, %630
  %641 = fadd fast float %638, %620
  %642 = fadd fast float %639, %621
  %643 = fadd fast float %640, %622
  %644 = fmul fast float %617, %370
  %645 = call float @dx.op.tertiary.f32(i32 46, float %618, float %376, float %644)  ; FMad(a,b,c)
  %646 = call float @dx.op.tertiary.f32(i32 46, float %619, float %382, float %645)  ; FMad(a,b,c)
  %647 = fadd fast float %646, %388
  %648 = fmul fast float %617, %371
  %649 = call float @dx.op.tertiary.f32(i32 46, float %618, float %377, float %648)  ; FMad(a,b,c)
  %650 = call float @dx.op.tertiary.f32(i32 46, float %619, float %383, float %649)  ; FMad(a,b,c)
  %651 = fadd fast float %650, %389
  %652 = fmul fast float %617, %373
  %653 = call float @dx.op.tertiary.f32(i32 46, float %618, float %379, float %652)  ; FMad(a,b,c)
  %654 = call float @dx.op.tertiary.f32(i32 46, float %619, float %385, float %653)  ; FMad(a,b,c)
  %655 = fadd fast float %654, %391
  %656 = fmul fast float %641, %370
  %657 = call float @dx.op.tertiary.f32(i32 46, float %642, float %376, float %656)  ; FMad(a,b,c)
  %658 = call float @dx.op.tertiary.f32(i32 46, float %643, float %382, float %657)  ; FMad(a,b,c)
  %659 = fadd fast float %658, %388
  %660 = fmul fast float %641, %371
  %661 = call float @dx.op.tertiary.f32(i32 46, float %642, float %377, float %660)  ; FMad(a,b,c)
  %662 = call float @dx.op.tertiary.f32(i32 46, float %643, float %383, float %661)  ; FMad(a,b,c)
  %663 = fadd fast float %662, %389
  %664 = fmul fast float %641, %373
  %665 = call float @dx.op.tertiary.f32(i32 46, float %642, float %379, float %664)  ; FMad(a,b,c)
  %666 = call float @dx.op.tertiary.f32(i32 46, float %643, float %385, float %665)  ; FMad(a,b,c)
  %667 = fadd fast float %666, %391
  %668 = fdiv fast float 1.000000e+00, %655
  %669 = fmul fast float %668, %647
  %670 = fmul fast float %668, %651
  %671 = fdiv fast float 1.000000e+00, %667
  %672 = fmul fast float %671, %659
  %673 = fmul fast float %671, %663
  %674 = fsub fast float %672, %669
  %675 = fsub fast float %673, %670
  %676 = call float @dx.op.dot2.f32(i32 54, float %674, float %675, float %674, float %675)  ; Dot2(ax,ay,bx,by)
  %677 = call float @dx.op.unary.f32(i32 25, float %676)  ; Rsqrt(value)
  %678 = fmul fast float %674, %677
  %679 = fmul fast float %675, %677
  %680 = fmul fast float %674, %674
  %681 = fmul fast float %675, %675
  %682 = fadd fast float %680, %681
  %683 = call float @dx.op.unary.f32(i32 24, float %682)  ; Sqrt(value)
  %684 = fmul fast float %683, 5.000000e-01
  br i1 %419, label %777, label %685, !dx.controlflow.hints !40

; <label>:685                                     ; preds = %553
  %686 = fsub fast float %245, %237
  %687 = fsub fast float %246, %238
  %688 = fsub fast float %247, %239
  %689 = fsub fast float %590, %686
  %690 = fsub fast float %591, %687
  %691 = fsub fast float %592, %688
  %692 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.unary.f32(i32 25, float %692)  ; Rsqrt(value)
  %694 = fmul fast float %693, %689
  %695 = fmul fast float %693, %690
  %696 = fmul fast float %693, %691
  %697 = fsub fast float %424, %686
  %698 = fsub fast float %425, %687
  %699 = fsub fast float %426, %688
  %700 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %697, float %698, float %699)  ; Dot3(ax,ay,az,bx,by,bz)
  %701 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %694, float %695, float %696)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = fdiv fast float 1.000000e+00, %701
  %703 = fmul fast float %702, %700
  %704 = fmul fast float %703, %694
  %705 = fmul fast float %703, %695
  %706 = fmul fast float %703, %696
  %707 = fadd fast float %704, %686
  %708 = fadd fast float %705, %687
  %709 = fadd fast float %706, %688
  %710 = fadd fast float %245, %237
  %711 = fadd fast float %246, %238
  %712 = fadd fast float %247, %239
  %713 = fsub fast float %590, %710
  %714 = fsub fast float %591, %711
  %715 = fsub fast float %592, %712
  %716 = call float @dx.op.dot3.f32(i32 55, float %713, float %714, float %715, float %713, float %714, float %715)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = call float @dx.op.unary.f32(i32 25, float %716)  ; Rsqrt(value)
  %718 = fmul fast float %717, %713
  %719 = fmul fast float %717, %714
  %720 = fmul fast float %717, %715
  %721 = fsub fast float %424, %710
  %722 = fsub fast float %425, %711
  %723 = fsub fast float %426, %712
  %724 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %721, float %722, float %723)  ; Dot3(ax,ay,az,bx,by,bz)
  %725 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %718, float %719, float %720)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = fdiv fast float 1.000000e+00, %725
  %727 = fmul fast float %726, %724
  %728 = fmul fast float %727, %718
  %729 = fmul fast float %727, %719
  %730 = fmul fast float %727, %720
  %731 = fadd fast float %728, %710
  %732 = fadd fast float %729, %711
  %733 = fadd fast float %730, %712
  %734 = fmul fast float %707, %370
  %735 = call float @dx.op.tertiary.f32(i32 46, float %708, float %376, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %709, float %382, float %735)  ; FMad(a,b,c)
  %737 = fadd fast float %736, %388
  %738 = fmul fast float %707, %371
  %739 = call float @dx.op.tertiary.f32(i32 46, float %708, float %377, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %709, float %383, float %739)  ; FMad(a,b,c)
  %741 = fadd fast float %740, %389
  %742 = fmul fast float %707, %373
  %743 = call float @dx.op.tertiary.f32(i32 46, float %708, float %379, float %742)  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float %709, float %385, float %743)  ; FMad(a,b,c)
  %745 = fadd fast float %744, %391
  %746 = fmul fast float %731, %370
  %747 = call float @dx.op.tertiary.f32(i32 46, float %732, float %376, float %746)  ; FMad(a,b,c)
  %748 = call float @dx.op.tertiary.f32(i32 46, float %733, float %382, float %747)  ; FMad(a,b,c)
  %749 = fadd fast float %748, %388
  %750 = fmul fast float %731, %371
  %751 = call float @dx.op.tertiary.f32(i32 46, float %732, float %377, float %750)  ; FMad(a,b,c)
  %752 = call float @dx.op.tertiary.f32(i32 46, float %733, float %383, float %751)  ; FMad(a,b,c)
  %753 = fadd fast float %752, %389
  %754 = fmul fast float %731, %373
  %755 = call float @dx.op.tertiary.f32(i32 46, float %732, float %379, float %754)  ; FMad(a,b,c)
  %756 = call float @dx.op.tertiary.f32(i32 46, float %733, float %385, float %755)  ; FMad(a,b,c)
  %757 = fadd fast float %756, %391
  %758 = fdiv fast float 1.000000e+00, %745
  %759 = fmul fast float %758, %737
  %760 = fmul fast float %758, %741
  %761 = fdiv fast float 1.000000e+00, %757
  %762 = fmul fast float %761, %749
  %763 = fmul fast float %761, %753
  %764 = fsub fast float %762, %759
  %765 = fsub fast float %763, %760
  %766 = call float @dx.op.dot2.f32(i32 54, float %764, float %765, float %764, float %765)  ; Dot2(ax,ay,bx,by)
  %767 = call float @dx.op.unary.f32(i32 25, float %766)  ; Rsqrt(value)
  %768 = fmul fast float %764, %767
  %769 = fmul fast float %765, %767
  %770 = fmul fast float %764, %764
  %771 = fmul fast float %765, %765
  %772 = fadd fast float %770, %771
  %773 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %774 = fmul fast float %773, 5.000000e-01
  %775 = fcmp fast olt float %774, %684
  br i1 %775, label %776, label %777, !dx.controlflow.hints !41

; <label>:776                                     ; preds = %685
  br label %777

; <label>:777                                     ; preds = %776, %685, %553
  %778 = phi float [ %684, %553 ], [ %774, %776 ], [ %684, %685 ]
  %779 = phi float [ %684, %553 ], [ %684, %776 ], [ %774, %685 ]
  %780 = phi float [ %678, %553 ], [ %678, %776 ], [ %768, %685 ]
  %781 = phi float [ %679, %553 ], [ %679, %776 ], [ %769, %685 ]
  %782 = fmul fast float %778, %365
  %783 = fdiv fast float %782, %779
  %784 = fsub fast float %365, %783
  %785 = fmul fast float %780, %780
  %786 = fmul fast float %785, %784
  %787 = fadd fast float %786, %783
  %788 = fmul fast float %781, %780
  %789 = fmul fast float %788, %784
  %790 = fmul fast float %781, %781
  %791 = fmul fast float %790, %784
  %792 = fadd fast float %791, %783
  %793 = fmul fast float %787, %449
  %794 = call float @dx.op.tertiary.f32(i32 46, float %448, float %789, float %793)  ; FMad(a,b,c)
  %795 = fmul fast float %789, %449
  %796 = call float @dx.op.tertiary.f32(i32 46, float %448, float %792, float %795)  ; FMad(a,b,c)
  %797 = fmul fast float %787, %450
  %798 = call float @dx.op.tertiary.f32(i32 46, float %449, float %789, float %797)  ; FMad(a,b,c)
  %799 = fmul fast float %789, %450
  %800 = call float @dx.op.tertiary.f32(i32 46, float %449, float %792, float %799)  ; FMad(a,b,c)
  br label %801

; <label>:801                                     ; preds = %839, %777
  %802 = phi float [ 0.000000e+00, %777 ], [ %840, %839 ]
  %803 = phi float [ 0.000000e+00, %777 ], [ %841, %839 ]
  %804 = phi float [ 0.000000e+00, %777 ], [ %842, %839 ]
  %805 = phi float [ 0.000000e+00, %777 ], [ %843, %839 ]
  %806 = phi i32 [ 0, %777 ], [ %844, %839 ]
  %807 = mul i32 %806, 2
  %808 = add i32 0, %807
  %809 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %808
  %810 = load float, float* %809, align 4
  %811 = mul i32 %806, 2
  %812 = add i32 1, %811
  %813 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %812
  %814 = load float, float* %813, align 4
  %815 = fmul fast float %810, %794
  %816 = call float @dx.op.tertiary.f32(i32 46, float %814, float %798, float %815)  ; FMad(a,b,c)
  %817 = fmul fast float %810, %796
  %818 = call float @dx.op.tertiary.f32(i32 46, float %814, float %800, float %817)  ; FMad(a,b,c)
  %819 = fadd fast float %816, %443
  %820 = fadd fast float %818, %444
  %821 = fmul fast float %819, %360
  %822 = fmul fast float %820, %360
  %823 = call float @dx.op.binary.f32(i32 35, float %821, float %356)  ; FMax(a,b)
  %824 = call float @dx.op.binary.f32(i32 35, float %822, float %356)  ; FMax(a,b)
  %825 = call float @dx.op.binary.f32(i32 36, float %823, float %357)  ; FMin(a,b)
  %826 = call float @dx.op.binary.f32(i32 36, float %824, float %357)  ; FMin(a,b)
  %827 = fadd fast float %825, %354
  %828 = fadd fast float %826, %355
  %829 = uitofp i32 %416 to float
  %830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %827, float %828, float %829, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = fadd fast float %446, %364
  %833 = fcmp fast olt float %832, %831
  br i1 %833, label %834, label %839, !dx.controlflow.hints !42

; <label>:834                                     ; preds = %801
  %835 = fadd fast float %831, %804
  %836 = fadd fast float %816, %802
  %837 = fadd fast float %818, %803
  %838 = fadd fast float %805, 1.000000e+00
  br label %839

; <label>:839                                     ; preds = %834, %801
  %840 = phi float [ %836, %834 ], [ %802, %801 ]
  %841 = phi float [ %837, %834 ], [ %803, %801 ]
  %842 = phi float [ %835, %834 ], [ %804, %801 ]
  %843 = phi float [ %838, %834 ], [ %805, %801 ]
  %844 = add nuw nsw i32 %806, 1
  %845 = icmp eq i32 %844, 8
  br i1 %845, label %846, label %801

; <label>:846                                     ; preds = %839
  %847 = fdiv fast float 1.000000e+00, %843
  %848 = fcmp fast oeq float %843, 0.000000e+00
  %849 = fmul fast float %847, %842
  %850 = select i1 %848, float -1.000000e+00, float %849
  %851 = fcmp fast olt float %850, 0.000000e+00
  br i1 %851, label %1138, label %852, !dx.controlflow.hints !43

; <label>:852                                     ; preds = %846
  %853 = fmul fast float %847, %841
  %854 = select i1 %848, float 0.000000e+00, float %853
  %855 = fmul fast float %847, %840
  %856 = select i1 %848, float 0.000000e+00, float %855
  %857 = fadd fast float %856, %443
  %858 = fadd fast float %854, %444
  br i1 %419, label %859, label %863, !dx.controlflow.hints !39

; <label>:859                                     ; preds = %852
  %860 = fcmp fast olt float %543, 0x3FE6666660000000
  %861 = select i1 %860, float 1.000000e+00, float 0.000000e+00
  %862 = select i1 %860, float 0.000000e+00, float 1.000000e+00
  br label %863

; <label>:863                                     ; preds = %859, %852
  %864 = phi float [ 0.000000e+00, %859 ], [ %546, %852 ]
  %865 = phi float [ %861, %859 ], [ %547, %852 ]
  %866 = phi float [ %862, %859 ], [ %548, %852 ]
  %867 = fmul fast float %865, %544
  %868 = fmul fast float %866, %543
  %869 = fsub fast float %867, %868
  %870 = fmul fast float %866, %542
  %871 = fmul fast float %864, %544
  %872 = fsub fast float %870, %871
  %873 = fmul fast float %864, %543
  %874 = fmul fast float %865, %542
  %875 = fsub fast float %873, %874
  %876 = call float @dx.op.dot3.f32(i32 55, float %869, float %872, float %875, float %869, float %872, float %875)  ; Dot3(ax,ay,az,bx,by,bz)
  %877 = call float @dx.op.unary.f32(i32 25, float %876)  ; Rsqrt(value)
  %878 = fmul fast float %877, %242
  %879 = fmul fast float %878, %869
  %880 = fmul fast float %878, %872
  %881 = fmul fast float %875, %242
  %882 = fmul fast float %881, %877
  %883 = fmul fast float %857, %394
  %884 = call float @dx.op.tertiary.f32(i32 46, float %858, float %400, float %883)  ; FMad(a,b,c)
  %885 = call float @dx.op.tertiary.f32(i32 46, float %850, float %406, float %884)  ; FMad(a,b,c)
  %886 = fadd fast float %885, %412
  %887 = fmul fast float %857, %395
  %888 = call float @dx.op.tertiary.f32(i32 46, float %858, float %401, float %887)  ; FMad(a,b,c)
  %889 = call float @dx.op.tertiary.f32(i32 46, float %850, float %407, float %888)  ; FMad(a,b,c)
  %890 = fadd fast float %889, %413
  %891 = fmul fast float %857, %396
  %892 = call float @dx.op.tertiary.f32(i32 46, float %858, float %402, float %891)  ; FMad(a,b,c)
  %893 = call float @dx.op.tertiary.f32(i32 46, float %850, float %408, float %892)  ; FMad(a,b,c)
  %894 = fadd fast float %893, %414
  %895 = fmul fast float %857, %397
  %896 = call float @dx.op.tertiary.f32(i32 46, float %858, float %403, float %895)  ; FMad(a,b,c)
  %897 = call float @dx.op.tertiary.f32(i32 46, float %850, float %409, float %896)  ; FMad(a,b,c)
  %898 = fadd fast float %897, %415
  %899 = fdiv fast float 1.000000e+00, %898
  %900 = fmul fast float %899, %886
  %901 = fmul fast float %899, %890
  %902 = fmul fast float %899, %894
  %903 = fsub fast float %245, %879
  %904 = fsub fast float %246, %880
  %905 = fsub fast float %247, %882
  %906 = fsub fast float %900, %903
  %907 = fsub fast float %901, %904
  %908 = fsub fast float %902, %905
  %909 = call float @dx.op.dot3.f32(i32 55, float %906, float %907, float %908, float %906, float %907, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = call float @dx.op.unary.f32(i32 25, float %909)  ; Rsqrt(value)
  %911 = fmul fast float %906, %910
  %912 = fmul fast float %907, %910
  %913 = fmul fast float %908, %910
  %914 = fsub fast float %424, %903
  %915 = fsub fast float %425, %904
  %916 = fsub fast float %426, %905
  %917 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %914, float %915, float %916)  ; Dot3(ax,ay,az,bx,by,bz)
  %918 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %911, float %912, float %913)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = fdiv fast float 1.000000e+00, %918
  %920 = fmul fast float %919, %917
  %921 = fmul fast float %920, %911
  %922 = fmul fast float %920, %912
  %923 = fmul fast float %920, %913
  %924 = fadd fast float %921, %903
  %925 = fadd fast float %922, %904
  %926 = fadd fast float %923, %905
  %927 = fadd fast float %879, %245
  %928 = fadd fast float %880, %246
  %929 = fadd fast float %882, %247
  %930 = fsub fast float %900, %927
  %931 = fsub fast float %901, %928
  %932 = fsub fast float %902, %929
  %933 = call float @dx.op.dot3.f32(i32 55, float %930, float %931, float %932, float %930, float %931, float %932)  ; Dot3(ax,ay,az,bx,by,bz)
  %934 = call float @dx.op.unary.f32(i32 25, float %933)  ; Rsqrt(value)
  %935 = fmul fast float %934, %930
  %936 = fmul fast float %934, %931
  %937 = fmul fast float %934, %932
  %938 = fsub fast float %424, %927
  %939 = fsub fast float %425, %928
  %940 = fsub fast float %426, %929
  %941 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %938, float %939, float %940)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %935, float %936, float %937)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = fdiv fast float 1.000000e+00, %942
  %944 = fmul fast float %943, %941
  %945 = fmul fast float %944, %935
  %946 = fmul fast float %944, %936
  %947 = fmul fast float %944, %937
  %948 = fadd fast float %945, %927
  %949 = fadd fast float %946, %928
  %950 = fadd fast float %947, %929
  %951 = fmul fast float %924, %370
  %952 = call float @dx.op.tertiary.f32(i32 46, float %925, float %376, float %951)  ; FMad(a,b,c)
  %953 = call float @dx.op.tertiary.f32(i32 46, float %926, float %382, float %952)  ; FMad(a,b,c)
  %954 = fadd fast float %953, %388
  %955 = fmul fast float %924, %371
  %956 = call float @dx.op.tertiary.f32(i32 46, float %925, float %377, float %955)  ; FMad(a,b,c)
  %957 = call float @dx.op.tertiary.f32(i32 46, float %926, float %383, float %956)  ; FMad(a,b,c)
  %958 = fadd fast float %957, %389
  %959 = fmul fast float %924, %373
  %960 = call float @dx.op.tertiary.f32(i32 46, float %925, float %379, float %959)  ; FMad(a,b,c)
  %961 = call float @dx.op.tertiary.f32(i32 46, float %926, float %385, float %960)  ; FMad(a,b,c)
  %962 = fadd fast float %961, %391
  %963 = fmul fast float %948, %370
  %964 = call float @dx.op.tertiary.f32(i32 46, float %949, float %376, float %963)  ; FMad(a,b,c)
  %965 = call float @dx.op.tertiary.f32(i32 46, float %950, float %382, float %964)  ; FMad(a,b,c)
  %966 = fadd fast float %965, %388
  %967 = fmul fast float %948, %371
  %968 = call float @dx.op.tertiary.f32(i32 46, float %949, float %377, float %967)  ; FMad(a,b,c)
  %969 = call float @dx.op.tertiary.f32(i32 46, float %950, float %383, float %968)  ; FMad(a,b,c)
  %970 = fadd fast float %969, %389
  %971 = fmul fast float %948, %373
  %972 = call float @dx.op.tertiary.f32(i32 46, float %949, float %379, float %971)  ; FMad(a,b,c)
  %973 = call float @dx.op.tertiary.f32(i32 46, float %950, float %385, float %972)  ; FMad(a,b,c)
  %974 = fadd fast float %973, %391
  %975 = fdiv fast float 1.000000e+00, %962
  %976 = fmul fast float %975, %954
  %977 = fmul fast float %975, %958
  %978 = fdiv fast float 1.000000e+00, %974
  %979 = fmul fast float %978, %966
  %980 = fmul fast float %978, %970
  %981 = fsub fast float %979, %976
  %982 = fsub fast float %980, %977
  %983 = call float @dx.op.dot2.f32(i32 54, float %981, float %982, float %981, float %982)  ; Dot2(ax,ay,bx,by)
  %984 = call float @dx.op.unary.f32(i32 25, float %983)  ; Rsqrt(value)
  %985 = fmul fast float %981, %984
  %986 = fmul fast float %982, %984
  %987 = fmul fast float %981, %981
  %988 = fmul fast float %982, %982
  %989 = fadd fast float %987, %988
  %990 = call float @dx.op.unary.f32(i32 24, float %989)  ; Sqrt(value)
  %991 = fmul fast float %990, 5.000000e-01
  br i1 %419, label %1084, label %992, !dx.controlflow.hints !40

; <label>:992                                     ; preds = %863
  %993 = fsub fast float %245, %237
  %994 = fsub fast float %246, %238
  %995 = fsub fast float %247, %239
  %996 = fsub fast float %900, %993
  %997 = fsub fast float %901, %994
  %998 = fsub fast float %902, %995
  %999 = call float @dx.op.dot3.f32(i32 55, float %996, float %997, float %998, float %996, float %997, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = call float @dx.op.unary.f32(i32 25, float %999)  ; Rsqrt(value)
  %1001 = fmul fast float %1000, %996
  %1002 = fmul fast float %1000, %997
  %1003 = fmul fast float %1000, %998
  %1004 = fsub fast float %424, %993
  %1005 = fsub fast float %425, %994
  %1006 = fsub fast float %426, %995
  %1007 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %1004, float %1005, float %1006)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %1001, float %1002, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = fdiv fast float 1.000000e+00, %1008
  %1010 = fmul fast float %1009, %1007
  %1011 = fmul fast float %1010, %1001
  %1012 = fmul fast float %1010, %1002
  %1013 = fmul fast float %1010, %1003
  %1014 = fadd fast float %1011, %993
  %1015 = fadd fast float %1012, %994
  %1016 = fadd fast float %1013, %995
  %1017 = fadd fast float %245, %237
  %1018 = fadd fast float %246, %238
  %1019 = fadd fast float %247, %239
  %1020 = fsub fast float %900, %1017
  %1021 = fsub fast float %901, %1018
  %1022 = fsub fast float %902, %1019
  %1023 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1021, float %1022, float %1020, float %1021, float %1022)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = call float @dx.op.unary.f32(i32 25, float %1023)  ; Rsqrt(value)
  %1025 = fmul fast float %1024, %1020
  %1026 = fmul fast float %1024, %1021
  %1027 = fmul fast float %1024, %1022
  %1028 = fsub fast float %424, %1017
  %1029 = fsub fast float %425, %1018
  %1030 = fsub fast float %426, %1019
  %1031 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %1028, float %1029, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %1025, float %1026, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = fdiv fast float 1.000000e+00, %1032
  %1034 = fmul fast float %1033, %1031
  %1035 = fmul fast float %1034, %1025
  %1036 = fmul fast float %1034, %1026
  %1037 = fmul fast float %1034, %1027
  %1038 = fadd fast float %1035, %1017
  %1039 = fadd fast float %1036, %1018
  %1040 = fadd fast float %1037, %1019
  %1041 = fmul fast float %1014, %370
  %1042 = call float @dx.op.tertiary.f32(i32 46, float %1015, float %376, float %1041)  ; FMad(a,b,c)
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %382, float %1042)  ; FMad(a,b,c)
  %1044 = fadd fast float %1043, %388
  %1045 = fmul fast float %1014, %371
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1015, float %377, float %1045)  ; FMad(a,b,c)
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %383, float %1046)  ; FMad(a,b,c)
  %1048 = fadd fast float %1047, %389
  %1049 = fmul fast float %1014, %373
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1015, float %379, float %1049)  ; FMad(a,b,c)
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %385, float %1050)  ; FMad(a,b,c)
  %1052 = fadd fast float %1051, %391
  %1053 = fmul fast float %1038, %370
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %376, float %1053)  ; FMad(a,b,c)
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %382, float %1054)  ; FMad(a,b,c)
  %1056 = fadd fast float %1055, %388
  %1057 = fmul fast float %1038, %371
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %377, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %383, float %1058)  ; FMad(a,b,c)
  %1060 = fadd fast float %1059, %389
  %1061 = fmul fast float %1038, %373
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %379, float %1061)  ; FMad(a,b,c)
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %385, float %1062)  ; FMad(a,b,c)
  %1064 = fadd fast float %1063, %391
  %1065 = fdiv fast float 1.000000e+00, %1052
  %1066 = fmul fast float %1065, %1044
  %1067 = fmul fast float %1065, %1048
  %1068 = fdiv fast float 1.000000e+00, %1064
  %1069 = fmul fast float %1068, %1056
  %1070 = fmul fast float %1068, %1060
  %1071 = fsub fast float %1069, %1066
  %1072 = fsub fast float %1070, %1067
  %1073 = call float @dx.op.dot2.f32(i32 54, float %1071, float %1072, float %1071, float %1072)  ; Dot2(ax,ay,bx,by)
  %1074 = call float @dx.op.unary.f32(i32 25, float %1073)  ; Rsqrt(value)
  %1075 = fmul fast float %1071, %1074
  %1076 = fmul fast float %1072, %1074
  %1077 = fmul fast float %1071, %1071
  %1078 = fmul fast float %1072, %1072
  %1079 = fadd fast float %1077, %1078
  %1080 = call float @dx.op.unary.f32(i32 24, float %1079)  ; Sqrt(value)
  %1081 = fmul fast float %1080, 5.000000e-01
  %1082 = fcmp fast olt float %1081, %991
  br i1 %1082, label %1083, label %1084, !dx.controlflow.hints !41

; <label>:1083                                    ; preds = %992
  br label %1084

; <label>:1084                                    ; preds = %1083, %992, %863
  %1085 = phi float [ %991, %863 ], [ %1081, %1083 ], [ %991, %992 ]
  %1086 = phi float [ %991, %863 ], [ %991, %1083 ], [ %1081, %992 ]
  %1087 = phi float [ %985, %863 ], [ %985, %1083 ], [ %1075, %992 ]
  %1088 = phi float [ %986, %863 ], [ %986, %1083 ], [ %1076, %992 ]
  %1089 = fsub fast float %1086, %1085
  %1090 = fmul fast float %1087, %1087
  %1091 = fmul fast float %1090, %1089
  %1092 = fadd fast float %1091, %1085
  %1093 = fmul fast float %1087, %1089
  %1094 = fmul fast float %1093, %1088
  %1095 = fmul fast float %1088, %1088
  %1096 = fmul fast float %1095, %1089
  %1097 = fadd fast float %1096, %1085
  %1098 = fmul fast float %1092, %449
  %1099 = call float @dx.op.tertiary.f32(i32 46, float %448, float %1094, float %1098)  ; FMad(a,b,c)
  %1100 = fmul fast float %1094, %449
  %1101 = call float @dx.op.tertiary.f32(i32 46, float %448, float %1097, float %1100)  ; FMad(a,b,c)
  %1102 = fmul fast float %1092, %450
  %1103 = call float @dx.op.tertiary.f32(i32 46, float %449, float %1094, float %1102)  ; FMad(a,b,c)
  %1104 = fmul fast float %1094, %450
  %1105 = call float @dx.op.tertiary.f32(i32 46, float %449, float %1097, float %1104)  ; FMad(a,b,c)
  br label %1106

; <label>:1106                                    ; preds = %1106, %1084
  %1107 = phi float [ 0.000000e+00, %1084 ], [ %1133, %1106 ]
  %1108 = phi i32 [ 0, %1084 ], [ %1134, %1106 ]
  %1109 = mul i32 %1108, 2
  %1110 = add i32 0, %1109
  %1111 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1110
  %1112 = load float, float* %1111, align 4
  %1113 = mul i32 %1108, 2
  %1114 = add i32 1, %1113
  %1115 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1114
  %1116 = load float, float* %1115, align 4
  %1117 = fmul fast float %1112, %1099
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %1116, float %1103, float %1117)  ; FMad(a,b,c)
  %1119 = fmul fast float %1112, %1101
  %1120 = call float @dx.op.tertiary.f32(i32 46, float %1116, float %1105, float %1119)  ; FMad(a,b,c)
  %1121 = fadd fast float %1118, %443
  %1122 = fadd fast float %1120, %444
  %1123 = fmul fast float %1121, %360
  %1124 = fmul fast float %1122, %360
  %1125 = call float @dx.op.binary.f32(i32 35, float %1123, float %356)  ; FMax(a,b)
  %1126 = call float @dx.op.binary.f32(i32 35, float %1124, float %356)  ; FMax(a,b)
  %1127 = call float @dx.op.binary.f32(i32 36, float %1125, float %357)  ; FMin(a,b)
  %1128 = call float @dx.op.binary.f32(i32 36, float %1126, float %357)  ; FMin(a,b)
  %1129 = fadd fast float %1127, %354
  %1130 = fadd fast float %1128, %355
  %1131 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %1129, float %1130, float %829, float undef, i32 0, i32 0, i32 undef, float %832)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = fadd fast float %1132, %1107
  %1134 = add nuw nsw i32 %1108, 1
  %1135 = icmp eq i32 %1134, 8
  br i1 %1135, label %1136, label %1106

; <label>:1136                                    ; preds = %1106
  %1137 = fmul fast float %1133, 1.250000e-01
  br label %1138

; <label>:1138                                    ; preds = %1136, %846, %495
  %1139 = phi float [ %522, %495 ], [ %1137, %1136 ], [ 1.000000e+00, %846 ]
  %1140 = fadd fast float %1139, -1.000000e+00
  %1141 = fmul fast float %1140, %333
  %1142 = fadd fast float %1141, 1.000000e+00
  %1143 = fmul fast float %1142, %345
  br label %1144

; <label>:1144                                    ; preds = %1138, %312
  %1145 = phi float [ %1143, %1138 ], [ %345, %312 ]
  %1146 = call float @dx.op.binary.f32(i32 36, float %1145, float %1145)  ; FMin(a,b)
  %1147 = call float @dx.op.binary.f32(i32 36, float %1145, float %1146)  ; FMin(a,b)
  %1148 = fcmp fast ogt float %1147, 0x3F10000000000000
  %1149 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1148)  ; WaveAnyTrue(cond)
  %1150 = select i1 %1149, i32 %224, i32 0
  %1151 = or i32 %219, %1150
  %1152 = lshr i32 %163, 5
  %1153 = lshr i32 %164, 5
  %1154 = fcmp fast olt float %1145, 0x3F10000000000000
  %1155 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1154)  ; WaveAllTrue(cond)
  %1156 = fcmp fast ogt float %1145, 0x3FEFFF8000000000
  %1157 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1156)  ; WaveAllTrue(cond)
  %1158 = or i1 %1155, %1157
  %1159 = xor i1 %1158, true
  %1160 = lshr i32 %164, 1
  %1161 = and i32 %1160, 8
  %1162 = lshr i32 %163, 2
  %1163 = and i32 %1162, 4
  %1164 = or i32 %1161, %35
  %1165 = or i32 %1164, %1163
  %1166 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1166, label %1167, label %1206, !dx.controlflow.hints !44

; <label>:1167                                    ; preds = %1144
  %1168 = shl i32 1, %1165
  %1169 = select i1 %1157, i32 %1168, i32 0
  %1170 = shl i32 65536, %1165
  %1171 = select i1 %1155, i32 %1170, i32 0
  %1172 = or i32 %1169, %1171
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1176, label %1174, !dx.controlflow.hints !45

; <label>:1174                                    ; preds = %1167
  %1175 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1152, i32 %1153, i32 %222, i32 %1172)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1176

; <label>:1176                                    ; preds = %1174, %1167
  br i1 %1158, label %1206, label %1177

; <label>:1177                                    ; preds = %1176
  br label %1178

; <label>:1178                                    ; preds = %1203, %1177
  %1179 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1152, i32 %1153, i32 %222, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1180 = and i32 %1179, 3
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1182, label %1203, !dx.controlflow.hints !46

; <label>:1182                                    ; preds = %1178
  %1183 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.i32 %1184, 3
  %1186 = call i32 @dx.op.binary.i32(i32 40, i32 %1185, i32 %1183)  ; UMin(a,b)
  %1187 = extractvalue %dx.types.CBufRet.i32 %1184, 2
  %1188 = udiv i32 %1186, %1187
  %1189 = urem i32 %1186, %1187
  %1190 = extractvalue %dx.types.CBufRet.i32 %1184, 1
  %1191 = urem i32 %1189, %1190
  %1192 = udiv i32 %1189, %1190
  %1193 = shl i32 %1191, 6
  %1194 = and i32 %1193, 32704
  %1195 = shl i32 %1192, 15
  %1196 = and i32 %1195, 8355840
  %1197 = shl i32 %1188, 23
  %1198 = and i32 %1197, 2139095040
  %1199 = or i32 %1198, %1194
  %1200 = or i32 %1199, %1196
  %1201 = or i32 %1200, 3
  %1202 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1152, i32 %1153, i32 %222, i32 %1201)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1206

; <label>:1203                                    ; preds = %1178
  %1204 = icmp eq i32 %1180, 3
  br i1 %1204, label %1205, label %1178, !dx.controlflow.hints !47

; <label>:1205                                    ; preds = %1203
  br label %1206

; <label>:1206                                    ; preds = %1205, %1182, %1176, %1144
  %1207 = phi i32 [ 0, %1176 ], [ %1201, %1182 ], [ 0, %1144 ], [ %1179, %1205 ]
  %1208 = phi i1 [ false, %1176 ], [ %1159, %1182 ], [ %1159, %1144 ], [ %1159, %1205 ]
  br i1 %1208, label %1209, label %1225, !dx.controlflow.hints !48

; <label>:1209                                    ; preds = %1206
  %1210 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1207)  ; WaveReadLaneFirst(value)
  %1211 = lshr i32 %1210, 23
  %1212 = and i32 %1211, 255
  %1213 = and i32 %163, 31
  %1214 = and i32 %164, 31
  %1215 = lshr i32 %1210, 1
  %1216 = and i32 %1215, 16352
  %1217 = lshr i32 %1210, 10
  %1218 = and i32 %1217, 8160
  %1219 = or i32 %1216, %1213
  %1220 = or i32 %1218, %1214
  %1221 = fmul fast float %1145, 2.550000e+02
  %1222 = fadd fast float %1221, %158
  %1223 = call float @dx.op.unary.f32(i32 27, float %1222)  ; Round_ni(value)
  %1224 = fmul fast float %1223, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1219, i32 %1220, i32 %1212, float %1224, float %1224, float %1224, float %1224, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1225

; <label>:1225                                    ; preds = %1209, %1206
  %1226 = icmp eq i32 %220, %224
  br i1 %1226, label %1227, label %218, !llvm.loop !49

; <label>:1227                                    ; preds = %1225
  br label %1228

; <label>:1228                                    ; preds = %1227, %190
  %1229 = phi i32 [ 0, %190 ], [ %1151, %1227 ]
  %1230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.i32 %1230, 0
  %1232 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %1231, i32 %191)  ; UMad(a,b,c)
  %1233 = shl i32 %1232, 2
  %1234 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1233, i32 undef, i32 undef, i32 %1229)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1235 = add i32 %191, 1
  %1236 = icmp ugt i32 %1235, %187
  br i1 %1236, label %1237, label %190

; <label>:1237                                    ; preds = %1228
  br label %1238

; <label>:1238                                    ; preds = %1237, %162, %0
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
declare i1 @dx.op.waveAllTrue(i32, i1) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #2

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
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
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
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}

