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
; shader hash: 487cb51d08850dac53c33c66c765a772
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
;                                       UAV     u32     2darray      U4             u7     1
;                                       UAV    byte         r/w      U5             u6     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %29 = shl i32 %26, 3
  %30 = mul i32 %29, %28
  %31 = add i32 %30, %22
  %32 = shl i32 %31, 2
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = lshr i32 %34, 28
  %36 = and i32 %35, 7
  %37 = shl nuw nsw i32 %35, 3
  %38 = and i32 %37, 8
  %39 = lshr i32 %34, 27
  %40 = and i32 %39, 12
  %41 = lshr i32 %34, 10
  %42 = and i32 %41, 262128
  %43 = shl i32 %34, 4
  %44 = and i32 %43, 262128
  %45 = or i32 %42, %23
  %46 = or i32 %45, %38
  %47 = or i32 %40, %24
  %48 = or i32 %47, %44
  %49 = uitofp i32 %46 to float
  %50 = uitofp i32 %48 to float
  %51 = fadd fast float %49, 5.000000e-01
  %52 = fadd fast float %50, 5.000000e-01
  %53 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %46, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = fcmp fast olt float %54, -1.000000e+00
  %56 = fcmp fast ogt float %54, -1.000000e+00
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %59 = select i1 %56, float %58, float 1.000000e+00
  %60 = fadd fast float %54, 1.000000e+00
  %61 = fmul fast float %59, %60
  %62 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %66 = fmul fast float %64, 2.000000e+00
  %67 = fmul fast float %66, %51
  %68 = fmul fast float %65, 2.000000e+00
  %69 = fmul fast float %68, %52
  %70 = fsub fast float 1.000000e+00, %67
  %71 = fsub fast float 1.000000e+00, %69
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = select i1 %55, float %73, float %77
  %81 = select i1 %55, float %74, float %78
  %82 = select i1 %55, float %75, float %79
  %83 = fmul fast float %70, %80
  %84 = fmul fast float %70, %81
  %85 = fmul fast float %70, %82
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %120 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 0, i32 %46, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = fmul fast float %150, 0x3FE3C6EF40000000
  %152 = frem fast float %51, 2.560000e+02
  %153 = frem fast float %52, 2.560000e+02
  %154 = fptoui float %152 to i32
  %155 = fptoui float %153 to i32
  %156 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %154, i32 %155, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = fadd fast float %157, %151
  %159 = call float @dx.op.unary.f32(i32 22, float %158)  ; Frc(value)
  %160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.i32 %160, 0
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %1241, label %163, !dx.controlflow.hints !36

; <label>:163                                     ; preds = %0
  %164 = fptoui float %51 to i32
  %165 = fptoui float %52 to i32
  %166 = lshr i32 %164, 4
  %167 = lshr i32 %165, 4
  %168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.i32 %168, 0
  %170 = call i32 @dx.op.tertiary.i32(i32 49, i32 %167, i32 %169, i32 %166)  ; UMad(a,b,c)
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 0
  %173 = add nsw i32 %172, -1
  %174 = call i32 @dx.op.binary.i32(i32 37, i32 %173, i32 0)  ; IMax(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %176 = fptoui float %175 to i32
  %177 = lshr i32 %176, 5
  %178 = call i32 @dx.op.binary.i32(i32 40, i32 %177, i32 8191)  ; UMin(a,b)
  %179 = shl i32 %178, 2
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = lshr i32 %181, 16
  %183 = and i32 %181, 65535
  %184 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %182, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %185 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %183, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %186 = lshr i32 %184, 5
  %187 = lshr i32 %185, 5
  %188 = call i32 @dx.op.binary.i32(i32 40, i32 %187, i32 %174)  ; UMin(a,b)
  %189 = icmp ugt i32 %186, %188
  br i1 %189, label %1241, label %190

; <label>:190                                     ; preds = %163
  br label %191

; <label>:191                                     ; preds = %1231, %190
  %192 = phi i32 [ %1238, %1231 ], [ %186, %190 ]
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 0
  %195 = call i32 @dx.op.tertiary.i32(i32 49, i32 %170, i32 %194, i32 %192)  ; UMad(a,b,c)
  %196 = shl i32 %195, 2
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = shl i32 %192, 5
  %200 = sub nsw i32 %182, %199
  %201 = call i32 @dx.op.binary.i32(i32 37, i32 %200, i32 0)  ; IMax(a,b)
  %202 = call i32 @dx.op.binary.i32(i32 38, i32 %201, i32 31)  ; IMin(a,b)
  %203 = sub nsw i32 1, %182
  %204 = add nsw i32 %203, %183
  %205 = call i32 @dx.op.binary.i32(i32 37, i32 %204, i32 0)  ; IMax(a,b)
  %206 = call i32 @dx.op.binary.i32(i32 38, i32 %205, i32 32)  ; IMin(a,b)
  %207 = and i32 %206, 31
  %208 = shl i32 -1, %207
  %209 = xor i32 %208, -1
  %210 = and i32 %202, 31
  %211 = shl i32 %209, %210
  %212 = icmp eq i32 %206, 32
  %213 = select i1 %212, i32 -1, i32 %211
  %214 = and i32 %213, %198
  %215 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %214, i8 1)  ; WaveActiveBit(value,op)
  %216 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %215)  ; WaveReadLaneFirst(value)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %1231, label %218

; <label>:218                                     ; preds = %191
  br label %219

; <label>:219                                     ; preds = %1228, %218
  %220 = phi i32 [ %1152, %1228 ], [ 0, %218 ]
  %221 = phi i32 [ %226, %1228 ], [ %216, %218 ]
  %222 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %221)  ; FirstbitLo(value)
  %223 = add i32 %222, %199
  %224 = and i32 %222, 31
  %225 = shl i32 1, %224
  %226 = xor i32 %225, %221
  %227 = mul i32 %223, 112
  %228 = add i32 %227, 16
  %229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = extractvalue %dx.types.ResRet.f32 %229, 1
  %232 = extractvalue %dx.types.ResRet.f32 %229, 2
  %233 = add i32 %227, 28
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = add i32 %227, 32
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = extractvalue %dx.types.ResRet.f32 %237, 1
  %240 = extractvalue %dx.types.ResRet.f32 %237, 2
  %241 = add i32 %227, 44
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = add i32 %227, 48
  %245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = extractvalue %dx.types.ResRet.f32 %245, 1
  %248 = extractvalue %dx.types.ResRet.f32 %245, 2
  %249 = extractvalue %dx.types.ResRet.f32 %245, 3
  %250 = add i32 %227, 64
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = extractvalue %dx.types.ResRet.f32 %251, 3
  %256 = add i32 %227, 92
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 65535
  %260 = uitofp i32 %259 to float
  %261 = lshr i32 %258, 16
  %262 = uitofp i32 %261 to float
  %263 = and i32 %235, 65535
  %264 = and i32 %235, 50331648
  %265 = icmp eq i32 %264, 33554432
  %266 = call float @dx.op.dot3.f32(i32 55, float %238, float %239, float %240, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %267 = fsub fast float %117, %246
  %268 = fsub fast float %118, %247
  %269 = fsub fast float %119, %248
  %270 = call float @dx.op.dot3.f32(i32 55, float %267, float %268, float %269, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %271 = fdiv fast float %270, %266
  %272 = call float @dx.op.binary.f32(i32 35, float %271, float -1.000000e+00)  ; FMax(a,b)
  %273 = call float @dx.op.binary.f32(i32 36, float %272, float 1.000000e+00)  ; FMin(a,b)
  %274 = fmul fast float %273, %238
  %275 = fmul fast float %273, %239
  %276 = fmul fast float %273, %240
  %277 = fadd fast float %274, %246
  %278 = fadd fast float %275, %247
  %279 = fadd fast float %276, %248
  %280 = fsub fast float %277, %117
  %281 = fsub fast float %278, %118
  %282 = fsub fast float %279, %119
  %283 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %284 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %285 = fdiv fast float 1.000000e+00, %284
  %286 = fmul fast float %280, %285
  %287 = fmul fast float %281, %285
  %288 = fmul fast float %282, %285
  br i1 %265, label %289, label %313, !dx.controlflow.hints !37

; <label>:289                                     ; preds = %219
  %290 = fmul fast float %254, %230
  %291 = fmul fast float %254, %231
  %292 = fmul fast float %254, %232
  %293 = fsub fast float %290, %117
  %294 = fadd fast float %293, %277
  %295 = fsub fast float %291, %118
  %296 = fadd fast float %295, %278
  %297 = fsub fast float %292, %119
  %298 = fadd fast float %297, %279
  %299 = call float @dx.op.dot3.f32(i32 55, float %294, float %296, float %298, float %294, float %296, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = call float @dx.op.unary.f32(i32 25, float %299)  ; Rsqrt(value)
  %301 = fmul fast float %300, %294
  %302 = fmul fast float %300, %296
  %303 = fmul fast float %300, %298
  %304 = fsub fast float %117, %277
  %305 = fsub fast float %118, %278
  %306 = fsub fast float %119, %279
  %307 = fsub fast float -0.000000e+00, %304
  %308 = fsub fast float -0.000000e+00, %305
  %309 = fsub fast float -0.000000e+00, %306
  %310 = call float @dx.op.dot3.f32(i32 55, float %307, float %308, float %309, float %230, float %231, float %232)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = fcmp fast ogt float %310, 0.000000e+00
  %312 = uitofp i1 %311 to float
  br label %313

; <label>:313                                     ; preds = %289, %219
  %314 = phi float [ %312, %289 ], [ 1.000000e+00, %219 ]
  %315 = phi float [ %301, %289 ], [ %286, %219 ]
  %316 = phi float [ %302, %289 ], [ %287, %219 ]
  %317 = phi float [ %303, %289 ], [ %288, %219 ]
  %318 = call float @dx.op.dot3.f32(i32 55, float %230, float %231, float %232, float %315, float %316, float %317)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = fmul fast float %318, %318
  %320 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %321 = fsub fast float 1.000000e+00, %320
  %322 = fmul fast float %321, 5.000000e-01
  %323 = fcmp fast ogt float %318, 0.000000e+00
  %324 = fsub fast float 1.000000e+00, %322
  %325 = select i1 %323, float %322, float %324
  %326 = fmul fast float %325, %262
  %327 = fadd fast float %326, %260
  %328 = fmul fast float %327, 0x3EF0001000000000
  %329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %328, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = fmul fast float %318, %252
  %332 = fadd fast float %331, %253
  %333 = call float @dx.op.unary.f32(i32 7, float %332)  ; Saturate(value)
  %334 = select i1 %265, float 1.000000e+00, float %333
  %335 = select i1 %265, float %333, float 1.000000e+00
  %336 = fmul fast float %284, %249
  %337 = fsub fast float 1.000000e+00, %336
  %338 = fmul fast float %337, %255
  %339 = call float @dx.op.unary.f32(i32 7, float %338)  ; Saturate(value)
  %340 = fmul fast float %339, %335
  %341 = fmul fast float %340, 2.000000e+00
  %342 = fsub fast float 3.000000e+00, %341
  %343 = fmul fast float %330, %314
  %344 = fmul fast float %340, %340
  %345 = fmul fast float %344, %343
  %346 = fmul fast float %345, %342
  %347 = icmp ne i32 %263, 255
  %348 = call float @dx.op.binary.f32(i32 36, float %346, float %346)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 36, float %346, float %348)  ; FMin(a,b)
  %350 = fcmp fast ogt float %349, 0.000000e+00
  %351 = and i1 %347, %350
  br i1 %351, label %352, label %1145, !dx.controlflow.hints !38

; <label>:352                                     ; preds = %313
  %353 = mul nuw nsw i32 %263, 176
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = extractvalue %dx.types.ResRet.f32 %354, 3
  %359 = add nuw nsw i32 %353, 16
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = add nuw nsw i32 %353, 32
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = extractvalue %dx.types.ResRet.f32 %364, 3
  %369 = add nuw nsw i32 %353, 48
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = extractvalue %dx.types.ResRet.f32 %370, 3
  %375 = add nuw nsw i32 %353, 64
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = extractvalue %dx.types.ResRet.f32 %376, 3
  %381 = add nuw nsw i32 %353, 80
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = extractvalue %dx.types.ResRet.f32 %382, 2
  %386 = extractvalue %dx.types.ResRet.f32 %382, 3
  %387 = add nuw nsw i32 %353, 96
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = extractvalue %dx.types.ResRet.f32 %388, 3
  %393 = add nuw nsw i32 %353, 112
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = extractvalue %dx.types.ResRet.f32 %394, 2
  %398 = extractvalue %dx.types.ResRet.f32 %394, 3
  %399 = add nuw nsw i32 %353, 128
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = extractvalue %dx.types.ResRet.f32 %400, 3
  %405 = add nuw nsw i32 %353, 144
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = extractvalue %dx.types.ResRet.f32 %406, 3
  %411 = add nuw nsw i32 %353, 160
  %412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = bitcast float %362 to i32
  %418 = bitcast float %368 to i32
  %419 = and i32 %418, 1
  %420 = icmp ne i32 %419, 0
  %421 = and i32 %418, 2
  %422 = fmul fast float %146, %367
  %423 = fmul fast float %147, %367
  %424 = fmul fast float %148, %367
  %425 = fadd fast float %422, %117
  %426 = fadd fast float %423, %118
  %427 = fadd fast float %424, %119
  %428 = fmul fast float %425, %371
  %429 = call float @dx.op.tertiary.f32(i32 46, float %426, float %377, float %428)  ; FMad(a,b,c)
  %430 = call float @dx.op.tertiary.f32(i32 46, float %427, float %383, float %429)  ; FMad(a,b,c)
  %431 = fadd fast float %430, %389
  %432 = fmul fast float %425, %372
  %433 = call float @dx.op.tertiary.f32(i32 46, float %426, float %378, float %432)  ; FMad(a,b,c)
  %434 = call float @dx.op.tertiary.f32(i32 46, float %427, float %384, float %433)  ; FMad(a,b,c)
  %435 = fadd fast float %434, %390
  %436 = fmul fast float %425, %373
  %437 = call float @dx.op.tertiary.f32(i32 46, float %426, float %379, float %436)  ; FMad(a,b,c)
  %438 = call float @dx.op.tertiary.f32(i32 46, float %427, float %385, float %437)  ; FMad(a,b,c)
  %439 = fadd fast float %438, %391
  %440 = fmul fast float %425, %374
  %441 = call float @dx.op.tertiary.f32(i32 46, float %426, float %380, float %440)  ; FMad(a,b,c)
  %442 = call float @dx.op.tertiary.f32(i32 46, float %427, float %386, float %441)  ; FMad(a,b,c)
  %443 = fadd fast float %442, %392
  %444 = fdiv fast float %431, %443
  %445 = fdiv fast float %435, %443
  %446 = fdiv fast float %439, %443
  %447 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %446)  ; FMax(a,b)
  %448 = fmul fast float %159, 0x401921FB60000000
  %449 = call float @dx.op.unary.f32(i32 13, float %448)  ; Sin(value)
  %450 = call float @dx.op.unary.f32(i32 12, float %448)  ; Cos(value)
  %451 = fsub fast float -0.000000e+00, %449
  %452 = icmp eq i32 %421, 0
  br i1 %452, label %453, label %524, !dx.controlflow.hints !39

; <label>:453                                     ; preds = %352
  %454 = fmul fast float %450, %366
  %455 = call float @dx.op.tertiary.f32(i32 46, float %449, float %366, float 0.000000e+00)  ; FMad(a,b,c)
  %456 = fmul fast float %366, %451
  %457 = call float @dx.op.tertiary.f32(i32 46, float %450, float %366, float 0.000000e+00)  ; FMad(a,b,c)
  br label %458

; <label>:458                                     ; preds = %458, %453
  %459 = phi float [ 0.000000e+00, %453 ], [ %491, %458 ]
  %460 = phi float [ 0.000000e+00, %453 ], [ %493, %458 ]
  %461 = phi i32 [ 0, %453 ], [ %494, %458 ]
  %462 = mul i32 %461, 2
  %463 = add i32 0, %462
  %464 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %463
  %465 = load float, float* %464, align 4
  %466 = mul i32 %461, 2
  %467 = add i32 1, %466
  %468 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %467
  %469 = load float, float* %468, align 4
  %470 = fmul fast float %454, %465
  %471 = call float @dx.op.tertiary.f32(i32 46, float %469, float %456, float %470)  ; FMad(a,b,c)
  %472 = fmul fast float %465, %455
  %473 = call float @dx.op.tertiary.f32(i32 46, float %469, float %457, float %472)  ; FMad(a,b,c)
  %474 = fadd fast float %471, %444
  %475 = fadd fast float %473, %445
  %476 = fmul fast float %474, %361
  %477 = fmul fast float %475, %361
  %478 = call float @dx.op.binary.f32(i32 35, float %476, float %357)  ; FMax(a,b)
  %479 = call float @dx.op.binary.f32(i32 35, float %477, float %357)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 36, float %478, float %358)  ; FMin(a,b)
  %481 = call float @dx.op.binary.f32(i32 36, float %479, float %358)  ; FMin(a,b)
  %482 = fadd fast float %480, %355
  %483 = fadd fast float %481, %356
  %484 = uitofp i32 %417 to float
  %485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %482, float %483, float %484, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = fsub fast float %486, %447
  %488 = fsub fast float %487, %365
  %489 = fcmp fast ogt float %488, 0.000000e+00
  %490 = select i1 %489, float 1.000000e+00, float 0.000000e+00
  %491 = fadd fast float %490, %459
  %492 = select i1 %489, float %488, float 0.000000e+00
  %493 = fadd fast float %492, %460
  %494 = add nuw nsw i32 %461, 1
  %495 = icmp eq i32 %494, 8
  br i1 %495, label %496, label %458

; <label>:496                                     ; preds = %458
  %497 = fdiv fast float 1.000000e+00, %491
  %498 = fmul fast float %497, %493
  %499 = fdiv fast float 1.000000e+00, %447
  %500 = fmul fast float %498, %499
  %501 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %502 = call float @dx.op.binary.f32(i32 35, float %501, float 0.000000e+00)  ; FMax(a,b)
  %503 = fmul fast float %491, 1.250000e-01
  %504 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %505 = fmul fast float %504, 2.000000e+00
  %506 = fadd fast float %505, -1.000000e+00
  %507 = fcmp fast ogt float %506, 0.000000e+00
  %508 = fcmp fast olt float %506, 0.000000e+00
  %509 = zext i1 %507 to i32
  %510 = zext i1 %508 to i32
  %511 = sub nsw i32 %509, %510
  %512 = sitofp i32 %511 to float
  %513 = fmul fast float %512, %506
  %514 = fsub fast float 1.000000e+00, %513
  %515 = fmul fast float %514, %514
  %516 = fmul fast float %515, %514
  %517 = fsub fast float %514, %516
  %518 = fmul fast float %517, %502
  %519 = fsub fast float 1.000000e+00, %516
  %520 = fsub fast float %519, %518
  %521 = fmul fast float %512, 5.000000e-01
  %522 = fmul fast float %521, %520
  %523 = fsub fast float 5.000000e-01, %522
  br label %1139

; <label>:524                                     ; preds = %352
  %525 = fsub fast float 1.000000e+00, %447
  %526 = fmul fast float %525, 5.000000e-01
  %527 = fadd fast float %526, %447
  %528 = fsub fast float %425, %246
  %529 = fsub fast float %426, %247
  %530 = fsub fast float %427, %248
  %531 = call float @dx.op.dot3.f32(i32 55, float %528, float %529, float %530, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %532 = fdiv fast float %531, %266
  %533 = call float @dx.op.binary.f32(i32 35, float %532, float -1.000000e+00)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float %533, float 1.000000e+00)  ; FMin(a,b)
  %535 = fmul fast float %534, %238
  %536 = fmul fast float %534, %239
  %537 = fmul fast float %534, %240
  %538 = fsub fast float %528, %535
  %539 = fsub fast float %529, %536
  %540 = fsub fast float %530, %537
  %541 = call float @dx.op.dot3.f32(i32 55, float %538, float %539, float %540, float %538, float %539, float %540)  ; Dot3(ax,ay,az,bx,by,bz)
  %542 = call float @dx.op.unary.f32(i32 25, float %541)  ; Rsqrt(value)
  %543 = fmul fast float %538, %542
  %544 = fmul fast float %539, %542
  %545 = fmul fast float %540, %542
  %546 = call float @dx.op.unary.f32(i32 25, float %266)  ; Rsqrt(value)
  %547 = fmul fast float %546, %238
  %548 = fmul fast float %546, %239
  %549 = fmul fast float %546, %240
  br i1 %420, label %550, label %554, !dx.controlflow.hints !40

; <label>:550                                     ; preds = %524
  %551 = fcmp fast olt float %544, 0x3FE6666660000000
  %552 = select i1 %551, float 1.000000e+00, float 0.000000e+00
  %553 = select i1 %551, float 0.000000e+00, float 1.000000e+00
  br label %554

; <label>:554                                     ; preds = %550, %524
  %555 = phi float [ 0.000000e+00, %550 ], [ %547, %524 ]
  %556 = phi float [ %552, %550 ], [ %548, %524 ]
  %557 = phi float [ %553, %550 ], [ %549, %524 ]
  %558 = fmul fast float %556, %545
  %559 = fmul fast float %557, %544
  %560 = fsub fast float %558, %559
  %561 = fmul fast float %557, %543
  %562 = fmul fast float %555, %545
  %563 = fsub fast float %561, %562
  %564 = fmul fast float %555, %544
  %565 = fmul fast float %556, %543
  %566 = fsub fast float %564, %565
  %567 = call float @dx.op.dot3.f32(i32 55, float %560, float %563, float %566, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = call float @dx.op.unary.f32(i32 25, float %567)  ; Rsqrt(value)
  %569 = fmul fast float %568, %243
  %570 = fmul fast float %569, %560
  %571 = fmul fast float %569, %563
  %572 = fmul fast float %566, %243
  %573 = fmul fast float %572, %568
  %574 = fmul fast float %444, %395
  %575 = call float @dx.op.tertiary.f32(i32 46, float %445, float %401, float %574)  ; FMad(a,b,c)
  %576 = call float @dx.op.tertiary.f32(i32 46, float %527, float %407, float %575)  ; FMad(a,b,c)
  %577 = fadd fast float %576, %413
  %578 = fmul fast float %444, %396
  %579 = call float @dx.op.tertiary.f32(i32 46, float %445, float %402, float %578)  ; FMad(a,b,c)
  %580 = call float @dx.op.tertiary.f32(i32 46, float %527, float %408, float %579)  ; FMad(a,b,c)
  %581 = fadd fast float %580, %414
  %582 = fmul fast float %444, %397
  %583 = call float @dx.op.tertiary.f32(i32 46, float %445, float %403, float %582)  ; FMad(a,b,c)
  %584 = call float @dx.op.tertiary.f32(i32 46, float %527, float %409, float %583)  ; FMad(a,b,c)
  %585 = fadd fast float %584, %415
  %586 = fmul fast float %444, %398
  %587 = call float @dx.op.tertiary.f32(i32 46, float %445, float %404, float %586)  ; FMad(a,b,c)
  %588 = call float @dx.op.tertiary.f32(i32 46, float %527, float %410, float %587)  ; FMad(a,b,c)
  %589 = fadd fast float %588, %416
  %590 = fdiv fast float 1.000000e+00, %589
  %591 = fmul fast float %590, %577
  %592 = fmul fast float %590, %581
  %593 = fmul fast float %590, %585
  %594 = fsub fast float -0.000000e+00, %543
  %595 = fsub fast float -0.000000e+00, %544
  %596 = fsub fast float -0.000000e+00, %545
  %597 = fsub fast float %246, %570
  %598 = fsub fast float %247, %571
  %599 = fsub fast float %248, %573
  %600 = fsub fast float %591, %597
  %601 = fsub fast float %592, %598
  %602 = fsub fast float %593, %599
  %603 = call float @dx.op.dot3.f32(i32 55, float %600, float %601, float %602, float %600, float %601, float %602)  ; Dot3(ax,ay,az,bx,by,bz)
  %604 = call float @dx.op.unary.f32(i32 25, float %603)  ; Rsqrt(value)
  %605 = fmul fast float %600, %604
  %606 = fmul fast float %601, %604
  %607 = fmul fast float %602, %604
  %608 = fsub fast float %425, %597
  %609 = fsub fast float %426, %598
  %610 = fsub fast float %427, %599
  %611 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %608, float %609, float %610)  ; Dot3(ax,ay,az,bx,by,bz)
  %612 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %605, float %606, float %607)  ; Dot3(ax,ay,az,bx,by,bz)
  %613 = fdiv fast float 1.000000e+00, %612
  %614 = fmul fast float %613, %611
  %615 = fmul fast float %614, %605
  %616 = fmul fast float %614, %606
  %617 = fmul fast float %614, %607
  %618 = fadd fast float %615, %597
  %619 = fadd fast float %616, %598
  %620 = fadd fast float %617, %599
  %621 = fadd fast float %570, %246
  %622 = fadd fast float %571, %247
  %623 = fadd fast float %573, %248
  %624 = fsub fast float %591, %621
  %625 = fsub fast float %592, %622
  %626 = fsub fast float %593, %623
  %627 = call float @dx.op.dot3.f32(i32 55, float %624, float %625, float %626, float %624, float %625, float %626)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = call float @dx.op.unary.f32(i32 25, float %627)  ; Rsqrt(value)
  %629 = fmul fast float %628, %624
  %630 = fmul fast float %628, %625
  %631 = fmul fast float %628, %626
  %632 = fsub fast float %425, %621
  %633 = fsub fast float %426, %622
  %634 = fsub fast float %427, %623
  %635 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %632, float %633, float %634)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %629, float %630, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %637 = fdiv fast float 1.000000e+00, %636
  %638 = fmul fast float %637, %635
  %639 = fmul fast float %638, %629
  %640 = fmul fast float %638, %630
  %641 = fmul fast float %638, %631
  %642 = fadd fast float %639, %621
  %643 = fadd fast float %640, %622
  %644 = fadd fast float %641, %623
  %645 = fmul fast float %618, %371
  %646 = call float @dx.op.tertiary.f32(i32 46, float %619, float %377, float %645)  ; FMad(a,b,c)
  %647 = call float @dx.op.tertiary.f32(i32 46, float %620, float %383, float %646)  ; FMad(a,b,c)
  %648 = fadd fast float %647, %389
  %649 = fmul fast float %618, %372
  %650 = call float @dx.op.tertiary.f32(i32 46, float %619, float %378, float %649)  ; FMad(a,b,c)
  %651 = call float @dx.op.tertiary.f32(i32 46, float %620, float %384, float %650)  ; FMad(a,b,c)
  %652 = fadd fast float %651, %390
  %653 = fmul fast float %618, %374
  %654 = call float @dx.op.tertiary.f32(i32 46, float %619, float %380, float %653)  ; FMad(a,b,c)
  %655 = call float @dx.op.tertiary.f32(i32 46, float %620, float %386, float %654)  ; FMad(a,b,c)
  %656 = fadd fast float %655, %392
  %657 = fmul fast float %642, %371
  %658 = call float @dx.op.tertiary.f32(i32 46, float %643, float %377, float %657)  ; FMad(a,b,c)
  %659 = call float @dx.op.tertiary.f32(i32 46, float %644, float %383, float %658)  ; FMad(a,b,c)
  %660 = fadd fast float %659, %389
  %661 = fmul fast float %642, %372
  %662 = call float @dx.op.tertiary.f32(i32 46, float %643, float %378, float %661)  ; FMad(a,b,c)
  %663 = call float @dx.op.tertiary.f32(i32 46, float %644, float %384, float %662)  ; FMad(a,b,c)
  %664 = fadd fast float %663, %390
  %665 = fmul fast float %642, %374
  %666 = call float @dx.op.tertiary.f32(i32 46, float %643, float %380, float %665)  ; FMad(a,b,c)
  %667 = call float @dx.op.tertiary.f32(i32 46, float %644, float %386, float %666)  ; FMad(a,b,c)
  %668 = fadd fast float %667, %392
  %669 = fdiv fast float 1.000000e+00, %656
  %670 = fmul fast float %669, %648
  %671 = fmul fast float %669, %652
  %672 = fdiv fast float 1.000000e+00, %668
  %673 = fmul fast float %672, %660
  %674 = fmul fast float %672, %664
  %675 = fsub fast float %673, %670
  %676 = fsub fast float %674, %671
  %677 = call float @dx.op.dot2.f32(i32 54, float %675, float %676, float %675, float %676)  ; Dot2(ax,ay,bx,by)
  %678 = call float @dx.op.unary.f32(i32 25, float %677)  ; Rsqrt(value)
  %679 = fmul fast float %675, %678
  %680 = fmul fast float %676, %678
  %681 = fmul fast float %675, %675
  %682 = fmul fast float %676, %676
  %683 = fadd fast float %681, %682
  %684 = call float @dx.op.unary.f32(i32 24, float %683)  ; Sqrt(value)
  %685 = fmul fast float %684, 5.000000e-01
  br i1 %420, label %778, label %686, !dx.controlflow.hints !41

; <label>:686                                     ; preds = %554
  %687 = fsub fast float %246, %238
  %688 = fsub fast float %247, %239
  %689 = fsub fast float %248, %240
  %690 = fsub fast float %591, %687
  %691 = fsub fast float %592, %688
  %692 = fsub fast float %593, %689
  %693 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %690, float %691, float %692)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call float @dx.op.unary.f32(i32 25, float %693)  ; Rsqrt(value)
  %695 = fmul fast float %694, %690
  %696 = fmul fast float %694, %691
  %697 = fmul fast float %694, %692
  %698 = fsub fast float %425, %687
  %699 = fsub fast float %426, %688
  %700 = fsub fast float %427, %689
  %701 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %698, float %699, float %700)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %695, float %696, float %697)  ; Dot3(ax,ay,az,bx,by,bz)
  %703 = fdiv fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %701
  %705 = fmul fast float %704, %695
  %706 = fmul fast float %704, %696
  %707 = fmul fast float %704, %697
  %708 = fadd fast float %705, %687
  %709 = fadd fast float %706, %688
  %710 = fadd fast float %707, %689
  %711 = fadd fast float %246, %238
  %712 = fadd fast float %247, %239
  %713 = fadd fast float %248, %240
  %714 = fsub fast float %591, %711
  %715 = fsub fast float %592, %712
  %716 = fsub fast float %593, %713
  %717 = call float @dx.op.dot3.f32(i32 55, float %714, float %715, float %716, float %714, float %715, float %716)  ; Dot3(ax,ay,az,bx,by,bz)
  %718 = call float @dx.op.unary.f32(i32 25, float %717)  ; Rsqrt(value)
  %719 = fmul fast float %718, %714
  %720 = fmul fast float %718, %715
  %721 = fmul fast float %718, %716
  %722 = fsub fast float %425, %711
  %723 = fsub fast float %426, %712
  %724 = fsub fast float %427, %713
  %725 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %722, float %723, float %724)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %719, float %720, float %721)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = fdiv fast float 1.000000e+00, %726
  %728 = fmul fast float %727, %725
  %729 = fmul fast float %728, %719
  %730 = fmul fast float %728, %720
  %731 = fmul fast float %728, %721
  %732 = fadd fast float %729, %711
  %733 = fadd fast float %730, %712
  %734 = fadd fast float %731, %713
  %735 = fmul fast float %708, %371
  %736 = call float @dx.op.tertiary.f32(i32 46, float %709, float %377, float %735)  ; FMad(a,b,c)
  %737 = call float @dx.op.tertiary.f32(i32 46, float %710, float %383, float %736)  ; FMad(a,b,c)
  %738 = fadd fast float %737, %389
  %739 = fmul fast float %708, %372
  %740 = call float @dx.op.tertiary.f32(i32 46, float %709, float %378, float %739)  ; FMad(a,b,c)
  %741 = call float @dx.op.tertiary.f32(i32 46, float %710, float %384, float %740)  ; FMad(a,b,c)
  %742 = fadd fast float %741, %390
  %743 = fmul fast float %708, %374
  %744 = call float @dx.op.tertiary.f32(i32 46, float %709, float %380, float %743)  ; FMad(a,b,c)
  %745 = call float @dx.op.tertiary.f32(i32 46, float %710, float %386, float %744)  ; FMad(a,b,c)
  %746 = fadd fast float %745, %392
  %747 = fmul fast float %732, %371
  %748 = call float @dx.op.tertiary.f32(i32 46, float %733, float %377, float %747)  ; FMad(a,b,c)
  %749 = call float @dx.op.tertiary.f32(i32 46, float %734, float %383, float %748)  ; FMad(a,b,c)
  %750 = fadd fast float %749, %389
  %751 = fmul fast float %732, %372
  %752 = call float @dx.op.tertiary.f32(i32 46, float %733, float %378, float %751)  ; FMad(a,b,c)
  %753 = call float @dx.op.tertiary.f32(i32 46, float %734, float %384, float %752)  ; FMad(a,b,c)
  %754 = fadd fast float %753, %390
  %755 = fmul fast float %732, %374
  %756 = call float @dx.op.tertiary.f32(i32 46, float %733, float %380, float %755)  ; FMad(a,b,c)
  %757 = call float @dx.op.tertiary.f32(i32 46, float %734, float %386, float %756)  ; FMad(a,b,c)
  %758 = fadd fast float %757, %392
  %759 = fdiv fast float 1.000000e+00, %746
  %760 = fmul fast float %759, %738
  %761 = fmul fast float %759, %742
  %762 = fdiv fast float 1.000000e+00, %758
  %763 = fmul fast float %762, %750
  %764 = fmul fast float %762, %754
  %765 = fsub fast float %763, %760
  %766 = fsub fast float %764, %761
  %767 = call float @dx.op.dot2.f32(i32 54, float %765, float %766, float %765, float %766)  ; Dot2(ax,ay,bx,by)
  %768 = call float @dx.op.unary.f32(i32 25, float %767)  ; Rsqrt(value)
  %769 = fmul fast float %765, %768
  %770 = fmul fast float %766, %768
  %771 = fmul fast float %765, %765
  %772 = fmul fast float %766, %766
  %773 = fadd fast float %771, %772
  %774 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %775 = fmul fast float %774, 5.000000e-01
  %776 = fcmp fast olt float %775, %685
  br i1 %776, label %777, label %778, !dx.controlflow.hints !42

; <label>:777                                     ; preds = %686
  br label %778

; <label>:778                                     ; preds = %777, %686, %554
  %779 = phi float [ %685, %554 ], [ %775, %777 ], [ %685, %686 ]
  %780 = phi float [ %685, %554 ], [ %685, %777 ], [ %775, %686 ]
  %781 = phi float [ %679, %554 ], [ %679, %777 ], [ %769, %686 ]
  %782 = phi float [ %680, %554 ], [ %680, %777 ], [ %770, %686 ]
  %783 = fmul fast float %779, %366
  %784 = fdiv fast float %783, %780
  %785 = fsub fast float %366, %784
  %786 = fmul fast float %781, %781
  %787 = fmul fast float %786, %785
  %788 = fadd fast float %787, %784
  %789 = fmul fast float %782, %781
  %790 = fmul fast float %789, %785
  %791 = fmul fast float %782, %782
  %792 = fmul fast float %791, %785
  %793 = fadd fast float %792, %784
  %794 = fmul fast float %788, %450
  %795 = call float @dx.op.tertiary.f32(i32 46, float %449, float %790, float %794)  ; FMad(a,b,c)
  %796 = fmul fast float %790, %450
  %797 = call float @dx.op.tertiary.f32(i32 46, float %449, float %793, float %796)  ; FMad(a,b,c)
  %798 = fmul fast float %788, %451
  %799 = call float @dx.op.tertiary.f32(i32 46, float %450, float %790, float %798)  ; FMad(a,b,c)
  %800 = fmul fast float %790, %451
  %801 = call float @dx.op.tertiary.f32(i32 46, float %450, float %793, float %800)  ; FMad(a,b,c)
  br label %802

; <label>:802                                     ; preds = %840, %778
  %803 = phi float [ 0.000000e+00, %778 ], [ %841, %840 ]
  %804 = phi float [ 0.000000e+00, %778 ], [ %842, %840 ]
  %805 = phi float [ 0.000000e+00, %778 ], [ %843, %840 ]
  %806 = phi float [ 0.000000e+00, %778 ], [ %844, %840 ]
  %807 = phi i32 [ 0, %778 ], [ %845, %840 ]
  %808 = mul i32 %807, 2
  %809 = add i32 0, %808
  %810 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %809
  %811 = load float, float* %810, align 4
  %812 = mul i32 %807, 2
  %813 = add i32 1, %812
  %814 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %813
  %815 = load float, float* %814, align 4
  %816 = fmul fast float %811, %795
  %817 = call float @dx.op.tertiary.f32(i32 46, float %815, float %799, float %816)  ; FMad(a,b,c)
  %818 = fmul fast float %811, %797
  %819 = call float @dx.op.tertiary.f32(i32 46, float %815, float %801, float %818)  ; FMad(a,b,c)
  %820 = fadd fast float %817, %444
  %821 = fadd fast float %819, %445
  %822 = fmul fast float %820, %361
  %823 = fmul fast float %821, %361
  %824 = call float @dx.op.binary.f32(i32 35, float %822, float %357)  ; FMax(a,b)
  %825 = call float @dx.op.binary.f32(i32 35, float %823, float %357)  ; FMax(a,b)
  %826 = call float @dx.op.binary.f32(i32 36, float %824, float %358)  ; FMin(a,b)
  %827 = call float @dx.op.binary.f32(i32 36, float %825, float %358)  ; FMin(a,b)
  %828 = fadd fast float %826, %355
  %829 = fadd fast float %827, %356
  %830 = uitofp i32 %417 to float
  %831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %828, float %829, float %830, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = fadd fast float %447, %365
  %834 = fcmp fast olt float %833, %832
  br i1 %834, label %835, label %840, !dx.controlflow.hints !43

; <label>:835                                     ; preds = %802
  %836 = fadd fast float %832, %805
  %837 = fadd fast float %817, %803
  %838 = fadd fast float %819, %804
  %839 = fadd fast float %806, 1.000000e+00
  br label %840

; <label>:840                                     ; preds = %835, %802
  %841 = phi float [ %837, %835 ], [ %803, %802 ]
  %842 = phi float [ %838, %835 ], [ %804, %802 ]
  %843 = phi float [ %836, %835 ], [ %805, %802 ]
  %844 = phi float [ %839, %835 ], [ %806, %802 ]
  %845 = add nuw nsw i32 %807, 1
  %846 = icmp eq i32 %845, 8
  br i1 %846, label %847, label %802

; <label>:847                                     ; preds = %840
  %848 = fdiv fast float 1.000000e+00, %844
  %849 = fcmp fast oeq float %844, 0.000000e+00
  %850 = fmul fast float %848, %843
  %851 = select i1 %849, float -1.000000e+00, float %850
  %852 = fcmp fast olt float %851, 0.000000e+00
  br i1 %852, label %1139, label %853, !dx.controlflow.hints !44

; <label>:853                                     ; preds = %847
  %854 = fmul fast float %848, %842
  %855 = select i1 %849, float 0.000000e+00, float %854
  %856 = fmul fast float %848, %841
  %857 = select i1 %849, float 0.000000e+00, float %856
  %858 = fadd fast float %857, %444
  %859 = fadd fast float %855, %445
  br i1 %420, label %860, label %864, !dx.controlflow.hints !40

; <label>:860                                     ; preds = %853
  %861 = fcmp fast olt float %544, 0x3FE6666660000000
  %862 = select i1 %861, float 1.000000e+00, float 0.000000e+00
  %863 = select i1 %861, float 0.000000e+00, float 1.000000e+00
  br label %864

; <label>:864                                     ; preds = %860, %853
  %865 = phi float [ 0.000000e+00, %860 ], [ %547, %853 ]
  %866 = phi float [ %862, %860 ], [ %548, %853 ]
  %867 = phi float [ %863, %860 ], [ %549, %853 ]
  %868 = fmul fast float %866, %545
  %869 = fmul fast float %867, %544
  %870 = fsub fast float %868, %869
  %871 = fmul fast float %867, %543
  %872 = fmul fast float %865, %545
  %873 = fsub fast float %871, %872
  %874 = fmul fast float %865, %544
  %875 = fmul fast float %866, %543
  %876 = fsub fast float %874, %875
  %877 = call float @dx.op.dot3.f32(i32 55, float %870, float %873, float %876, float %870, float %873, float %876)  ; Dot3(ax,ay,az,bx,by,bz)
  %878 = call float @dx.op.unary.f32(i32 25, float %877)  ; Rsqrt(value)
  %879 = fmul fast float %878, %243
  %880 = fmul fast float %879, %870
  %881 = fmul fast float %879, %873
  %882 = fmul fast float %876, %243
  %883 = fmul fast float %882, %878
  %884 = fmul fast float %858, %395
  %885 = call float @dx.op.tertiary.f32(i32 46, float %859, float %401, float %884)  ; FMad(a,b,c)
  %886 = call float @dx.op.tertiary.f32(i32 46, float %851, float %407, float %885)  ; FMad(a,b,c)
  %887 = fadd fast float %886, %413
  %888 = fmul fast float %858, %396
  %889 = call float @dx.op.tertiary.f32(i32 46, float %859, float %402, float %888)  ; FMad(a,b,c)
  %890 = call float @dx.op.tertiary.f32(i32 46, float %851, float %408, float %889)  ; FMad(a,b,c)
  %891 = fadd fast float %890, %414
  %892 = fmul fast float %858, %397
  %893 = call float @dx.op.tertiary.f32(i32 46, float %859, float %403, float %892)  ; FMad(a,b,c)
  %894 = call float @dx.op.tertiary.f32(i32 46, float %851, float %409, float %893)  ; FMad(a,b,c)
  %895 = fadd fast float %894, %415
  %896 = fmul fast float %858, %398
  %897 = call float @dx.op.tertiary.f32(i32 46, float %859, float %404, float %896)  ; FMad(a,b,c)
  %898 = call float @dx.op.tertiary.f32(i32 46, float %851, float %410, float %897)  ; FMad(a,b,c)
  %899 = fadd fast float %898, %416
  %900 = fdiv fast float 1.000000e+00, %899
  %901 = fmul fast float %900, %887
  %902 = fmul fast float %900, %891
  %903 = fmul fast float %900, %895
  %904 = fsub fast float %246, %880
  %905 = fsub fast float %247, %881
  %906 = fsub fast float %248, %883
  %907 = fsub fast float %901, %904
  %908 = fsub fast float %902, %905
  %909 = fsub fast float %903, %906
  %910 = call float @dx.op.dot3.f32(i32 55, float %907, float %908, float %909, float %907, float %908, float %909)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call float @dx.op.unary.f32(i32 25, float %910)  ; Rsqrt(value)
  %912 = fmul fast float %907, %911
  %913 = fmul fast float %908, %911
  %914 = fmul fast float %909, %911
  %915 = fsub fast float %425, %904
  %916 = fsub fast float %426, %905
  %917 = fsub fast float %427, %906
  %918 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %915, float %916, float %917)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %912, float %913, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %920 = fdiv fast float 1.000000e+00, %919
  %921 = fmul fast float %920, %918
  %922 = fmul fast float %921, %912
  %923 = fmul fast float %921, %913
  %924 = fmul fast float %921, %914
  %925 = fadd fast float %922, %904
  %926 = fadd fast float %923, %905
  %927 = fadd fast float %924, %906
  %928 = fadd fast float %880, %246
  %929 = fadd fast float %881, %247
  %930 = fadd fast float %883, %248
  %931 = fsub fast float %901, %928
  %932 = fsub fast float %902, %929
  %933 = fsub fast float %903, %930
  %934 = call float @dx.op.dot3.f32(i32 55, float %931, float %932, float %933, float %931, float %932, float %933)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = call float @dx.op.unary.f32(i32 25, float %934)  ; Rsqrt(value)
  %936 = fmul fast float %935, %931
  %937 = fmul fast float %935, %932
  %938 = fmul fast float %935, %933
  %939 = fsub fast float %425, %928
  %940 = fsub fast float %426, %929
  %941 = fsub fast float %427, %930
  %942 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %939, float %940, float %941)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %936, float %937, float %938)  ; Dot3(ax,ay,az,bx,by,bz)
  %944 = fdiv fast float 1.000000e+00, %943
  %945 = fmul fast float %944, %942
  %946 = fmul fast float %945, %936
  %947 = fmul fast float %945, %937
  %948 = fmul fast float %945, %938
  %949 = fadd fast float %946, %928
  %950 = fadd fast float %947, %929
  %951 = fadd fast float %948, %930
  %952 = fmul fast float %925, %371
  %953 = call float @dx.op.tertiary.f32(i32 46, float %926, float %377, float %952)  ; FMad(a,b,c)
  %954 = call float @dx.op.tertiary.f32(i32 46, float %927, float %383, float %953)  ; FMad(a,b,c)
  %955 = fadd fast float %954, %389
  %956 = fmul fast float %925, %372
  %957 = call float @dx.op.tertiary.f32(i32 46, float %926, float %378, float %956)  ; FMad(a,b,c)
  %958 = call float @dx.op.tertiary.f32(i32 46, float %927, float %384, float %957)  ; FMad(a,b,c)
  %959 = fadd fast float %958, %390
  %960 = fmul fast float %925, %374
  %961 = call float @dx.op.tertiary.f32(i32 46, float %926, float %380, float %960)  ; FMad(a,b,c)
  %962 = call float @dx.op.tertiary.f32(i32 46, float %927, float %386, float %961)  ; FMad(a,b,c)
  %963 = fadd fast float %962, %392
  %964 = fmul fast float %949, %371
  %965 = call float @dx.op.tertiary.f32(i32 46, float %950, float %377, float %964)  ; FMad(a,b,c)
  %966 = call float @dx.op.tertiary.f32(i32 46, float %951, float %383, float %965)  ; FMad(a,b,c)
  %967 = fadd fast float %966, %389
  %968 = fmul fast float %949, %372
  %969 = call float @dx.op.tertiary.f32(i32 46, float %950, float %378, float %968)  ; FMad(a,b,c)
  %970 = call float @dx.op.tertiary.f32(i32 46, float %951, float %384, float %969)  ; FMad(a,b,c)
  %971 = fadd fast float %970, %390
  %972 = fmul fast float %949, %374
  %973 = call float @dx.op.tertiary.f32(i32 46, float %950, float %380, float %972)  ; FMad(a,b,c)
  %974 = call float @dx.op.tertiary.f32(i32 46, float %951, float %386, float %973)  ; FMad(a,b,c)
  %975 = fadd fast float %974, %392
  %976 = fdiv fast float 1.000000e+00, %963
  %977 = fmul fast float %976, %955
  %978 = fmul fast float %976, %959
  %979 = fdiv fast float 1.000000e+00, %975
  %980 = fmul fast float %979, %967
  %981 = fmul fast float %979, %971
  %982 = fsub fast float %980, %977
  %983 = fsub fast float %981, %978
  %984 = call float @dx.op.dot2.f32(i32 54, float %982, float %983, float %982, float %983)  ; Dot2(ax,ay,bx,by)
  %985 = call float @dx.op.unary.f32(i32 25, float %984)  ; Rsqrt(value)
  %986 = fmul fast float %982, %985
  %987 = fmul fast float %983, %985
  %988 = fmul fast float %982, %982
  %989 = fmul fast float %983, %983
  %990 = fadd fast float %988, %989
  %991 = call float @dx.op.unary.f32(i32 24, float %990)  ; Sqrt(value)
  %992 = fmul fast float %991, 5.000000e-01
  br i1 %420, label %1085, label %993, !dx.controlflow.hints !41

; <label>:993                                     ; preds = %864
  %994 = fsub fast float %246, %238
  %995 = fsub fast float %247, %239
  %996 = fsub fast float %248, %240
  %997 = fsub fast float %901, %994
  %998 = fsub fast float %902, %995
  %999 = fsub fast float %903, %996
  %1000 = call float @dx.op.dot3.f32(i32 55, float %997, float %998, float %999, float %997, float %998, float %999)  ; Dot3(ax,ay,az,bx,by,bz)
  %1001 = call float @dx.op.unary.f32(i32 25, float %1000)  ; Rsqrt(value)
  %1002 = fmul fast float %1001, %997
  %1003 = fmul fast float %1001, %998
  %1004 = fmul fast float %1001, %999
  %1005 = fsub fast float %425, %994
  %1006 = fsub fast float %426, %995
  %1007 = fsub fast float %427, %996
  %1008 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %1005, float %1006, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %1002, float %1003, float %1004)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = fdiv fast float 1.000000e+00, %1009
  %1011 = fmul fast float %1010, %1008
  %1012 = fmul fast float %1011, %1002
  %1013 = fmul fast float %1011, %1003
  %1014 = fmul fast float %1011, %1004
  %1015 = fadd fast float %1012, %994
  %1016 = fadd fast float %1013, %995
  %1017 = fadd fast float %1014, %996
  %1018 = fadd fast float %246, %238
  %1019 = fadd fast float %247, %239
  %1020 = fadd fast float %248, %240
  %1021 = fsub fast float %901, %1018
  %1022 = fsub fast float %902, %1019
  %1023 = fsub fast float %903, %1020
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1023, float %1021, float %1022, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = call float @dx.op.unary.f32(i32 25, float %1024)  ; Rsqrt(value)
  %1026 = fmul fast float %1025, %1021
  %1027 = fmul fast float %1025, %1022
  %1028 = fmul fast float %1025, %1023
  %1029 = fsub fast float %425, %1018
  %1030 = fsub fast float %426, %1019
  %1031 = fsub fast float %427, %1020
  %1032 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %1029, float %1030, float %1031)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float %1026, float %1027, float %1028)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = fdiv fast float 1.000000e+00, %1033
  %1035 = fmul fast float %1034, %1032
  %1036 = fmul fast float %1035, %1026
  %1037 = fmul fast float %1035, %1027
  %1038 = fmul fast float %1035, %1028
  %1039 = fadd fast float %1036, %1018
  %1040 = fadd fast float %1037, %1019
  %1041 = fadd fast float %1038, %1020
  %1042 = fmul fast float %1015, %371
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %377, float %1042)  ; FMad(a,b,c)
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %383, float %1043)  ; FMad(a,b,c)
  %1045 = fadd fast float %1044, %389
  %1046 = fmul fast float %1015, %372
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %378, float %1046)  ; FMad(a,b,c)
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %384, float %1047)  ; FMad(a,b,c)
  %1049 = fadd fast float %1048, %390
  %1050 = fmul fast float %1015, %374
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %380, float %1050)  ; FMad(a,b,c)
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %386, float %1051)  ; FMad(a,b,c)
  %1053 = fadd fast float %1052, %392
  %1054 = fmul fast float %1039, %371
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %377, float %1054)  ; FMad(a,b,c)
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %383, float %1055)  ; FMad(a,b,c)
  %1057 = fadd fast float %1056, %389
  %1058 = fmul fast float %1039, %372
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %378, float %1058)  ; FMad(a,b,c)
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %384, float %1059)  ; FMad(a,b,c)
  %1061 = fadd fast float %1060, %390
  %1062 = fmul fast float %1039, %374
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %380, float %1062)  ; FMad(a,b,c)
  %1064 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %386, float %1063)  ; FMad(a,b,c)
  %1065 = fadd fast float %1064, %392
  %1066 = fdiv fast float 1.000000e+00, %1053
  %1067 = fmul fast float %1066, %1045
  %1068 = fmul fast float %1066, %1049
  %1069 = fdiv fast float 1.000000e+00, %1065
  %1070 = fmul fast float %1069, %1057
  %1071 = fmul fast float %1069, %1061
  %1072 = fsub fast float %1070, %1067
  %1073 = fsub fast float %1071, %1068
  %1074 = call float @dx.op.dot2.f32(i32 54, float %1072, float %1073, float %1072, float %1073)  ; Dot2(ax,ay,bx,by)
  %1075 = call float @dx.op.unary.f32(i32 25, float %1074)  ; Rsqrt(value)
  %1076 = fmul fast float %1072, %1075
  %1077 = fmul fast float %1073, %1075
  %1078 = fmul fast float %1072, %1072
  %1079 = fmul fast float %1073, %1073
  %1080 = fadd fast float %1078, %1079
  %1081 = call float @dx.op.unary.f32(i32 24, float %1080)  ; Sqrt(value)
  %1082 = fmul fast float %1081, 5.000000e-01
  %1083 = fcmp fast olt float %1082, %992
  br i1 %1083, label %1084, label %1085, !dx.controlflow.hints !42

; <label>:1084                                    ; preds = %993
  br label %1085

; <label>:1085                                    ; preds = %1084, %993, %864
  %1086 = phi float [ %992, %864 ], [ %1082, %1084 ], [ %992, %993 ]
  %1087 = phi float [ %992, %864 ], [ %992, %1084 ], [ %1082, %993 ]
  %1088 = phi float [ %986, %864 ], [ %986, %1084 ], [ %1076, %993 ]
  %1089 = phi float [ %987, %864 ], [ %987, %1084 ], [ %1077, %993 ]
  %1090 = fsub fast float %1087, %1086
  %1091 = fmul fast float %1088, %1088
  %1092 = fmul fast float %1091, %1090
  %1093 = fadd fast float %1092, %1086
  %1094 = fmul fast float %1088, %1090
  %1095 = fmul fast float %1094, %1089
  %1096 = fmul fast float %1089, %1089
  %1097 = fmul fast float %1096, %1090
  %1098 = fadd fast float %1097, %1086
  %1099 = fmul fast float %1093, %450
  %1100 = call float @dx.op.tertiary.f32(i32 46, float %449, float %1095, float %1099)  ; FMad(a,b,c)
  %1101 = fmul fast float %1095, %450
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %449, float %1098, float %1101)  ; FMad(a,b,c)
  %1103 = fmul fast float %1093, %451
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %450, float %1095, float %1103)  ; FMad(a,b,c)
  %1105 = fmul fast float %1095, %451
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %450, float %1098, float %1105)  ; FMad(a,b,c)
  br label %1107

; <label>:1107                                    ; preds = %1107, %1085
  %1108 = phi float [ 0.000000e+00, %1085 ], [ %1134, %1107 ]
  %1109 = phi i32 [ 0, %1085 ], [ %1135, %1107 ]
  %1110 = mul i32 %1109, 2
  %1111 = add i32 0, %1110
  %1112 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1111
  %1113 = load float, float* %1112, align 4
  %1114 = mul i32 %1109, 2
  %1115 = add i32 1, %1114
  %1116 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1115
  %1117 = load float, float* %1116, align 4
  %1118 = fmul fast float %1113, %1100
  %1119 = call float @dx.op.tertiary.f32(i32 46, float %1117, float %1104, float %1118)  ; FMad(a,b,c)
  %1120 = fmul fast float %1113, %1102
  %1121 = call float @dx.op.tertiary.f32(i32 46, float %1117, float %1106, float %1120)  ; FMad(a,b,c)
  %1122 = fadd fast float %1119, %444
  %1123 = fadd fast float %1121, %445
  %1124 = fmul fast float %1122, %361
  %1125 = fmul fast float %1123, %361
  %1126 = call float @dx.op.binary.f32(i32 35, float %1124, float %357)  ; FMax(a,b)
  %1127 = call float @dx.op.binary.f32(i32 35, float %1125, float %357)  ; FMax(a,b)
  %1128 = call float @dx.op.binary.f32(i32 36, float %1126, float %358)  ; FMin(a,b)
  %1129 = call float @dx.op.binary.f32(i32 36, float %1127, float %358)  ; FMin(a,b)
  %1130 = fadd fast float %1128, %355
  %1131 = fadd fast float %1129, %356
  %1132 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %19, float %1130, float %1131, float %830, float undef, i32 0, i32 0, i32 undef, float %833)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = fadd fast float %1133, %1108
  %1135 = add nuw nsw i32 %1109, 1
  %1136 = icmp eq i32 %1135, 8
  br i1 %1136, label %1137, label %1107

; <label>:1137                                    ; preds = %1107
  %1138 = fmul fast float %1134, 1.250000e-01
  br label %1139

; <label>:1139                                    ; preds = %1137, %847, %496
  %1140 = phi float [ %523, %496 ], [ %1138, %1137 ], [ 1.000000e+00, %847 ]
  %1141 = fadd fast float %1140, -1.000000e+00
  %1142 = fmul fast float %1141, %334
  %1143 = fadd fast float %1142, 1.000000e+00
  %1144 = fmul fast float %1143, %346
  br label %1145

; <label>:1145                                    ; preds = %1139, %313
  %1146 = phi float [ %1144, %1139 ], [ %346, %313 ]
  %1147 = call float @dx.op.binary.f32(i32 36, float %1146, float %1146)  ; FMin(a,b)
  %1148 = call float @dx.op.binary.f32(i32 36, float %1146, float %1147)  ; FMin(a,b)
  %1149 = fcmp fast ogt float %1148, 0x3F10000000000000
  %1150 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1149)  ; WaveAnyTrue(cond)
  %1151 = select i1 %1150, i32 %225, i32 0
  %1152 = or i32 %220, %1151
  %1153 = lshr i32 %164, 5
  %1154 = lshr i32 %165, 5
  %1155 = fcmp fast olt float %1146, 0x3F10000000000000
  %1156 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1155)  ; WaveAllTrue(cond)
  %1157 = fcmp fast ogt float %1146, 0x3FEFFF8000000000
  %1158 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1157)  ; WaveAllTrue(cond)
  %1159 = or i1 %1156, %1158
  %1160 = xor i1 %1159, true
  %1161 = and i32 %165, 16
  %1162 = lshr i32 %164, 1
  %1163 = and i32 %1162, 8
  %1164 = icmp eq i32 %1161, 0
  %1165 = or i32 %1163, %36
  %1166 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1166, label %1167, label %1209, !dx.controlflow.hints !45

; <label>:1167                                    ; preds = %1145
  %1168 = shl i32 1, %1165
  %1169 = select i1 %1158, i32 %1168, i32 0
  %1170 = shl i32 65536, %1165
  %1171 = select i1 %1156, i32 %1170, i32 0
  %1172 = or i32 %1169, %1171
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1179, label %1174, !dx.controlflow.hints !46

; <label>:1174                                    ; preds = %1167
  br i1 %1164, label %1177, label %1175, !dx.controlflow.hints !47

; <label>:1175                                    ; preds = %1174
  %1176 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1153, i32 %1154, i32 %223, i32 %1172)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1179

; <label>:1177                                    ; preds = %1174
  %1178 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %1153, i32 %1154, i32 %223, i32 %1172)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1179

; <label>:1179                                    ; preds = %1177, %1175, %1167
  br i1 %1159, label %1209, label %1180

; <label>:1180                                    ; preds = %1179
  br label %1181

; <label>:1181                                    ; preds = %1206, %1180
  %1182 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %1153, i32 %1154, i32 %223, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1183 = and i32 %1182, 3
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1185, label %1206, !dx.controlflow.hints !48

; <label>:1185                                    ; preds = %1181
  %1186 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.i32 %1187, 3
  %1189 = call i32 @dx.op.binary.i32(i32 40, i32 %1188, i32 %1186)  ; UMin(a,b)
  %1190 = extractvalue %dx.types.CBufRet.i32 %1187, 2
  %1191 = udiv i32 %1189, %1190
  %1192 = urem i32 %1189, %1190
  %1193 = extractvalue %dx.types.CBufRet.i32 %1187, 1
  %1194 = urem i32 %1192, %1193
  %1195 = udiv i32 %1192, %1193
  %1196 = shl i32 %1194, 6
  %1197 = and i32 %1196, 32704
  %1198 = shl i32 %1195, 15
  %1199 = and i32 %1198, 8355840
  %1200 = shl i32 %1191, 23
  %1201 = and i32 %1200, 2139095040
  %1202 = or i32 %1201, %1197
  %1203 = or i32 %1202, %1199
  %1204 = or i32 %1203, 3
  %1205 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %1153, i32 %1154, i32 %223, i32 %1204)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1209

; <label>:1206                                    ; preds = %1181
  %1207 = icmp eq i32 %1183, 3
  br i1 %1207, label %1208, label %1181, !dx.controlflow.hints !49

; <label>:1208                                    ; preds = %1206
  br label %1209

; <label>:1209                                    ; preds = %1208, %1185, %1179, %1145
  %1210 = phi i32 [ 0, %1179 ], [ %1204, %1185 ], [ 0, %1145 ], [ %1182, %1208 ]
  %1211 = phi i1 [ false, %1179 ], [ %1160, %1185 ], [ %1160, %1145 ], [ %1160, %1208 ]
  br i1 %1211, label %1212, label %1228, !dx.controlflow.hints !50

; <label>:1212                                    ; preds = %1209
  %1213 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1210)  ; WaveReadLaneFirst(value)
  %1214 = lshr i32 %1213, 23
  %1215 = and i32 %1214, 255
  %1216 = and i32 %164, 31
  %1217 = and i32 %165, 31
  %1218 = lshr i32 %1213, 1
  %1219 = and i32 %1218, 16352
  %1220 = lshr i32 %1213, 10
  %1221 = and i32 %1220, 8160
  %1222 = or i32 %1219, %1216
  %1223 = or i32 %1221, %1217
  %1224 = fmul fast float %1146, 2.550000e+02
  %1225 = fadd fast float %1224, %159
  %1226 = call float @dx.op.unary.f32(i32 27, float %1225)  ; Round_ni(value)
  %1227 = fmul fast float %1226, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %1222, i32 %1223, i32 %1215, float %1227, float %1227, float %1227, float %1227, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1228

; <label>:1228                                    ; preds = %1212, %1209
  %1229 = icmp eq i32 %221, %225
  br i1 %1229, label %1230, label %219, !llvm.loop !51

; <label>:1230                                    ; preds = %1228
  br label %1231

; <label>:1231                                    ; preds = %1230, %191
  %1232 = phi i32 [ 0, %191 ], [ %1152, %1230 ]
  %1233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.i32 %1233, 0
  %1235 = call i32 @dx.op.tertiary.i32(i32 49, i32 %170, i32 %1234, i32 %192)  ; UMad(a,b,c)
  %1236 = shl i32 %1235, 2
  %1237 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1236, i32 undef, i32 undef, i32 %1232)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1238 = add i32 %192, 1
  %1239 = icmp ugt i32 %1238, %188
  br i1 %1239, label %1240, label %191

; <label>:1240                                    ; preds = %1231
  br label %1241

; <label>:1241                                    ; preds = %1240, %163, %0
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
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !26, !29}
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
!18 = !{!19, !20, !21, !22, !24, !25}
!19 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!20 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!21 = !{i32 2, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!22 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !23}
!23 = !{i32 1, i32 4}
!24 = !{i32 4, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!25 = !{i32 5, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!29 = !{!30, !31, !32}
!30 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !34}
!34 = !{i32 0, i64 524560, i32 4, !35}
!35 = !{i32 8, i32 4, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
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
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}

