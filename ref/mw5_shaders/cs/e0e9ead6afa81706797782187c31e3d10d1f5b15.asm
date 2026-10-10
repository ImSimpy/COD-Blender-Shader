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
; shader hash: 4da5746a0dad1b6c53cb5a4213c3772b
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
  %66 = fmul fast float %51, %64
  %67 = fmul fast float %52, %65
  %68 = fmul fast float %66, 2.000000e+00
  %69 = fmul fast float %67, 2.000000e+00
  %70 = fsub fast float 1.000000e+00, %68
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
  %149 = fmul fast float %64, %49
  %150 = fmul fast float %65, %50
  %151 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %18, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %174 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %18, float %171, float %173, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = fmul fast float %207, 0x3FE3C6EF40000000
  %209 = frem fast float %51, 2.560000e+02
  %210 = frem fast float %52, 2.560000e+02
  %211 = fptoui float %209 to i32
  %212 = fptoui float %210 to i32
  %213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = extractvalue %dx.types.ResRet.f32 %213, 2
  %216 = fadd fast float %214, %208
  %217 = fadd fast float %215, %208
  %218 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %219 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.i32 %220, 0
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %1715, label %223, !dx.controlflow.hints !36

; <label>:223                                     ; preds = %0
  %224 = fptoui float %51 to i32
  %225 = fptoui float %52 to i32
  %226 = lshr i32 %224, 4
  %227 = lshr i32 %225, 4
  %228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.i32 %228, 0
  %230 = call i32 @dx.op.tertiary.i32(i32 49, i32 %227, i32 %229, i32 %226)  ; UMad(a,b,c)
  %231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.i32 %231, 0
  %233 = add nsw i32 %232, -1
  %234 = call i32 @dx.op.binary.i32(i32 37, i32 %233, i32 0)  ; IMax(a,b)
  %235 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %236 = fptoui float %235 to i32
  %237 = lshr i32 %236, 5
  %238 = call i32 @dx.op.binary.i32(i32 40, i32 %237, i32 8191)  ; UMin(a,b)
  %239 = shl i32 %238, 2
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = lshr i32 %241, 16
  %243 = and i32 %241, 65535
  %244 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %242, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %245 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %243, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %246 = lshr i32 %244, 5
  %247 = lshr i32 %245, 5
  %248 = call i32 @dx.op.binary.i32(i32 40, i32 %247, i32 %234)  ; UMin(a,b)
  %249 = icmp ugt i32 %246, %248
  br i1 %249, label %1715, label %250

; <label>:250                                     ; preds = %223
  br label %251

; <label>:251                                     ; preds = %1705, %250
  %252 = phi i32 [ %1712, %1705 ], [ %246, %250 ]
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 0
  %255 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %254, i32 %252)  ; UMad(a,b,c)
  %256 = shl i32 %255, 2
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = shl i32 %252, 5
  %260 = sub nsw i32 %242, %259
  %261 = call i32 @dx.op.binary.i32(i32 37, i32 %260, i32 0)  ; IMax(a,b)
  %262 = call i32 @dx.op.binary.i32(i32 38, i32 %261, i32 31)  ; IMin(a,b)
  %263 = sub nsw i32 1, %242
  %264 = add nsw i32 %263, %243
  %265 = call i32 @dx.op.binary.i32(i32 37, i32 %264, i32 0)  ; IMax(a,b)
  %266 = call i32 @dx.op.binary.i32(i32 38, i32 %265, i32 32)  ; IMin(a,b)
  %267 = and i32 %266, 31
  %268 = shl i32 -1, %267
  %269 = xor i32 %268, -1
  %270 = and i32 %262, 31
  %271 = shl i32 %269, %270
  %272 = icmp eq i32 %266, 32
  %273 = select i1 %272, i32 -1, i32 %271
  %274 = and i32 %273, %258
  %275 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %274, i8 1)  ; WaveActiveBit(value,op)
  %276 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %275)  ; WaveReadLaneFirst(value)
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %1705, label %278

; <label>:278                                     ; preds = %251
  br label %279

; <label>:279                                     ; preds = %1702, %278
  %280 = phi i32 [ %1626, %1702 ], [ 0, %278 ]
  %281 = phi i32 [ %286, %1702 ], [ %276, %278 ]
  %282 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %281)  ; FirstbitLo(value)
  %283 = add i32 %282, %259
  %284 = and i32 %282, 31
  %285 = shl i32 1, %284
  %286 = xor i32 %285, %281
  %287 = mul i32 %283, 112
  %288 = add i32 %287, 16
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = add i32 %287, 28
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = add i32 %287, 32
  %297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = extractvalue %dx.types.ResRet.f32 %297, 2
  %301 = add i32 %287, 44
  %302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = add i32 %287, 48
  %305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = extractvalue %dx.types.ResRet.f32 %305, 3
  %310 = add i32 %287, 64
  %311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = extractvalue %dx.types.ResRet.f32 %311, 3
  %316 = add i32 %287, 92
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = uitofp i32 %319 to float
  %321 = lshr i32 %318, 16
  %322 = uitofp i32 %321 to float
  %323 = and i32 %295, 65535
  %324 = and i32 %295, 50331648
  %325 = icmp eq i32 %324, 33554432
  %326 = call float @dx.op.dot3.f32(i32 55, float %298, float %299, float %300, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %327 = fsub fast float %117, %306
  %328 = fsub fast float %118, %307
  %329 = fsub fast float %119, %308
  %330 = call float @dx.op.dot3.f32(i32 55, float %327, float %328, float %329, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %331 = fdiv fast float %330, %326
  %332 = call float @dx.op.binary.f32(i32 35, float %331, float -1.000000e+00)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 36, float %332, float 1.000000e+00)  ; FMin(a,b)
  %334 = fmul fast float %333, %298
  %335 = fmul fast float %333, %299
  %336 = fmul fast float %333, %300
  %337 = fadd fast float %334, %306
  %338 = fadd fast float %335, %307
  %339 = fadd fast float %336, %308
  %340 = fsub fast float %337, %117
  %341 = fsub fast float %338, %118
  %342 = fsub fast float %339, %119
  %343 = call float @dx.op.dot3.f32(i32 55, float %340, float %341, float %342, float %340, float %341, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %344 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %345 = fdiv fast float 1.000000e+00, %344
  %346 = fmul fast float %340, %345
  %347 = fmul fast float %341, %345
  %348 = fmul fast float %342, %345
  br i1 %325, label %349, label %373, !dx.controlflow.hints !37

; <label>:349                                     ; preds = %279
  %350 = fmul fast float %314, %290
  %351 = fmul fast float %314, %291
  %352 = fmul fast float %314, %292
  %353 = fsub fast float %350, %117
  %354 = fadd fast float %353, %337
  %355 = fsub fast float %351, %118
  %356 = fadd fast float %355, %338
  %357 = fsub fast float %352, %119
  %358 = fadd fast float %357, %339
  %359 = call float @dx.op.dot3.f32(i32 55, float %354, float %356, float %358, float %354, float %356, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %360 = call float @dx.op.unary.f32(i32 25, float %359)  ; Rsqrt(value)
  %361 = fmul fast float %360, %354
  %362 = fmul fast float %360, %356
  %363 = fmul fast float %360, %358
  %364 = fsub fast float %117, %337
  %365 = fsub fast float %118, %338
  %366 = fsub fast float %119, %339
  %367 = fsub fast float -0.000000e+00, %364
  %368 = fsub fast float -0.000000e+00, %365
  %369 = fsub fast float -0.000000e+00, %366
  %370 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %371 = fcmp fast ogt float %370, 0.000000e+00
  %372 = uitofp i1 %371 to float
  br label %373

; <label>:373                                     ; preds = %349, %279
  %374 = phi float [ %372, %349 ], [ 1.000000e+00, %279 ]
  %375 = phi float [ %361, %349 ], [ %346, %279 ]
  %376 = phi float [ %362, %349 ], [ %347, %279 ]
  %377 = phi float [ %363, %349 ], [ %348, %279 ]
  %378 = call float @dx.op.dot3.f32(i32 55, float %290, float %291, float %292, float %375, float %376, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = fmul fast float %378, %378
  %380 = call float @dx.op.unary.f32(i32 7, float %379)  ; Saturate(value)
  %381 = fsub fast float 1.000000e+00, %380
  %382 = fmul fast float %381, 5.000000e-01
  %383 = fcmp fast ogt float %378, 0.000000e+00
  %384 = fsub fast float 1.000000e+00, %382
  %385 = select i1 %383, float %382, float %384
  %386 = fmul fast float %385, %322
  %387 = fadd fast float %386, %320
  %388 = fmul fast float %387, 0x3EF0001000000000
  %389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %388, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = fmul fast float %378, %312
  %392 = fadd fast float %391, %313
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %394 = select i1 %325, float 1.000000e+00, float %393
  %395 = select i1 %325, float %393, float 1.000000e+00
  %396 = fmul fast float %344, %309
  %397 = fsub fast float 1.000000e+00, %396
  %398 = fmul fast float %397, %315
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = fmul fast float %399, %395
  %401 = fmul fast float %400, 2.000000e+00
  %402 = fsub fast float 3.000000e+00, %401
  %403 = fmul fast float %390, %374
  %404 = fmul fast float %400, %400
  %405 = fmul fast float %404, %403
  %406 = fmul fast float %405, %402
  %407 = icmp ne i32 %323, 255
  %408 = call float @dx.op.binary.f32(i32 36, float %406, float %406)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 36, float %406, float %408)  ; FMin(a,b)
  %410 = fcmp fast ogt float %409, 0.000000e+00
  %411 = and i1 %407, %410
  br i1 %411, label %412, label %1326, !dx.controlflow.hints !38

; <label>:412                                     ; preds = %373
  %413 = mul nuw nsw i32 %323, 176
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = add nuw nsw i32 %413, 16
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = add nuw nsw i32 %413, 32
  %424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  %429 = add nuw nsw i32 %413, 48
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = add nuw nsw i32 %413, 64
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = add nuw nsw i32 %413, 80
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = extractvalue %dx.types.ResRet.f32 %442, 3
  %447 = add nuw nsw i32 %413, 96
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = add nuw nsw i32 %413, 112
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  %459 = add nuw nsw i32 %413, 128
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add nuw nsw i32 %413, 144
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add nuw nsw i32 %413, 160
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = bitcast float %422 to i32
  %478 = bitcast float %428 to i32
  %479 = and i32 %478, 1
  %480 = icmp ne i32 %479, 0
  %481 = and i32 %478, 2
  %482 = fmul fast float %427, %146
  %483 = fmul fast float %427, %147
  %484 = fmul fast float %427, %148
  %485 = fadd fast float %482, %117
  %486 = fadd fast float %483, %118
  %487 = fadd fast float %484, %119
  %488 = fmul fast float %485, %431
  %489 = call float @dx.op.tertiary.f32(i32 46, float %486, float %437, float %488)  ; FMad(a,b,c)
  %490 = call float @dx.op.tertiary.f32(i32 46, float %487, float %443, float %489)  ; FMad(a,b,c)
  %491 = fadd fast float %490, %449
  %492 = fmul fast float %485, %432
  %493 = call float @dx.op.tertiary.f32(i32 46, float %486, float %438, float %492)  ; FMad(a,b,c)
  %494 = call float @dx.op.tertiary.f32(i32 46, float %487, float %444, float %493)  ; FMad(a,b,c)
  %495 = fadd fast float %494, %450
  %496 = fmul fast float %485, %433
  %497 = call float @dx.op.tertiary.f32(i32 46, float %486, float %439, float %496)  ; FMad(a,b,c)
  %498 = call float @dx.op.tertiary.f32(i32 46, float %487, float %445, float %497)  ; FMad(a,b,c)
  %499 = fadd fast float %498, %451
  %500 = fmul fast float %485, %434
  %501 = call float @dx.op.tertiary.f32(i32 46, float %486, float %440, float %500)  ; FMad(a,b,c)
  %502 = call float @dx.op.tertiary.f32(i32 46, float %487, float %446, float %501)  ; FMad(a,b,c)
  %503 = fadd fast float %502, %452
  %504 = fdiv fast float %491, %503
  %505 = fdiv fast float %495, %503
  %506 = fdiv fast float %499, %503
  %507 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %506)  ; FMax(a,b)
  %508 = fmul fast float %218, 0x401921FB60000000
  %509 = call float @dx.op.unary.f32(i32 13, float %508)  ; Sin(value)
  %510 = call float @dx.op.unary.f32(i32 12, float %508)  ; Cos(value)
  %511 = fsub fast float -0.000000e+00, %509
  %512 = icmp eq i32 %481, 0
  br i1 %512, label %513, label %584, !dx.controlflow.hints !39

; <label>:513                                     ; preds = %412
  %514 = fmul fast float %510, %426
  %515 = call float @dx.op.tertiary.f32(i32 46, float %509, float %426, float 0.000000e+00)  ; FMad(a,b,c)
  %516 = fmul fast float %426, %511
  %517 = call float @dx.op.tertiary.f32(i32 46, float %510, float %426, float 0.000000e+00)  ; FMad(a,b,c)
  br label %518

; <label>:518                                     ; preds = %518, %513
  %519 = phi float [ 0.000000e+00, %513 ], [ %551, %518 ]
  %520 = phi float [ 0.000000e+00, %513 ], [ %553, %518 ]
  %521 = phi i32 [ 0, %513 ], [ %554, %518 ]
  %522 = mul i32 %521, 2
  %523 = add i32 0, %522
  %524 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %523
  %525 = load float, float* %524, align 4
  %526 = mul i32 %521, 2
  %527 = add i32 1, %526
  %528 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %527
  %529 = load float, float* %528, align 4
  %530 = fmul fast float %514, %525
  %531 = call float @dx.op.tertiary.f32(i32 46, float %529, float %516, float %530)  ; FMad(a,b,c)
  %532 = fmul fast float %525, %515
  %533 = call float @dx.op.tertiary.f32(i32 46, float %529, float %517, float %532)  ; FMad(a,b,c)
  %534 = fadd fast float %531, %504
  %535 = fadd fast float %533, %505
  %536 = fmul fast float %534, %421
  %537 = fmul fast float %535, %421
  %538 = call float @dx.op.binary.f32(i32 35, float %536, float %417)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float %537, float %417)  ; FMax(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float %538, float %418)  ; FMin(a,b)
  %541 = call float @dx.op.binary.f32(i32 36, float %539, float %418)  ; FMin(a,b)
  %542 = fadd fast float %540, %415
  %543 = fadd fast float %541, %416
  %544 = uitofp i32 %477 to float
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %542, float %543, float %544, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fsub fast float %546, %507
  %548 = fsub fast float %547, %425
  %549 = fcmp fast ogt float %548, 0.000000e+00
  %550 = select i1 %549, float 1.000000e+00, float 0.000000e+00
  %551 = fadd fast float %550, %519
  %552 = select i1 %549, float %548, float 0.000000e+00
  %553 = fadd fast float %552, %520
  %554 = add nuw nsw i32 %521, 1
  %555 = icmp eq i32 %554, 8
  br i1 %555, label %556, label %518

; <label>:556                                     ; preds = %518
  %557 = fdiv fast float 1.000000e+00, %551
  %558 = fmul fast float %557, %553
  %559 = fdiv fast float 1.000000e+00, %507
  %560 = fmul fast float %558, %559
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = call float @dx.op.binary.f32(i32 35, float %561, float 0.000000e+00)  ; FMax(a,b)
  %563 = fmul fast float %551, 1.250000e-01
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = fmul fast float %564, 2.000000e+00
  %566 = fadd fast float %565, -1.000000e+00
  %567 = fcmp fast ogt float %566, 0.000000e+00
  %568 = fcmp fast olt float %566, 0.000000e+00
  %569 = zext i1 %567 to i32
  %570 = zext i1 %568 to i32
  %571 = sub nsw i32 %569, %570
  %572 = sitofp i32 %571 to float
  %573 = fmul fast float %572, %566
  %574 = fsub fast float 1.000000e+00, %573
  %575 = fmul fast float %574, %574
  %576 = fmul fast float %575, %574
  %577 = fsub fast float %574, %576
  %578 = fmul fast float %577, %562
  %579 = fsub fast float 1.000000e+00, %576
  %580 = fsub fast float %579, %578
  %581 = fmul fast float %572, 5.000000e-01
  %582 = fmul fast float %581, %580
  %583 = fsub fast float 5.000000e-01, %582
  br label %1199

; <label>:584                                     ; preds = %412
  %585 = fsub fast float 1.000000e+00, %507
  %586 = fmul fast float %585, 5.000000e-01
  %587 = fadd fast float %586, %507
  %588 = fsub fast float %485, %306
  %589 = fsub fast float %486, %307
  %590 = fsub fast float %487, %308
  %591 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %592 = fdiv fast float %591, %326
  %593 = call float @dx.op.binary.f32(i32 35, float %592, float -1.000000e+00)  ; FMax(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %593, float 1.000000e+00)  ; FMin(a,b)
  %595 = fmul fast float %594, %298
  %596 = fmul fast float %594, %299
  %597 = fmul fast float %594, %300
  %598 = fsub fast float %588, %595
  %599 = fsub fast float %589, %596
  %600 = fsub fast float %590, %597
  %601 = call float @dx.op.dot3.f32(i32 55, float %598, float %599, float %600, float %598, float %599, float %600)  ; Dot3(ax,ay,az,bx,by,bz)
  %602 = call float @dx.op.unary.f32(i32 25, float %601)  ; Rsqrt(value)
  %603 = fmul fast float %598, %602
  %604 = fmul fast float %599, %602
  %605 = fmul fast float %600, %602
  %606 = call float @dx.op.unary.f32(i32 25, float %326)  ; Rsqrt(value)
  %607 = fmul fast float %606, %298
  %608 = fmul fast float %606, %299
  %609 = fmul fast float %606, %300
  br i1 %480, label %610, label %614, !dx.controlflow.hints !40

; <label>:610                                     ; preds = %584
  %611 = fcmp fast olt float %604, 0x3FE6666660000000
  %612 = select i1 %611, float 1.000000e+00, float 0.000000e+00
  %613 = select i1 %611, float 0.000000e+00, float 1.000000e+00
  br label %614

; <label>:614                                     ; preds = %610, %584
  %615 = phi float [ 0.000000e+00, %610 ], [ %607, %584 ]
  %616 = phi float [ %612, %610 ], [ %608, %584 ]
  %617 = phi float [ %613, %610 ], [ %609, %584 ]
  %618 = fmul fast float %616, %605
  %619 = fmul fast float %617, %604
  %620 = fsub fast float %618, %619
  %621 = fmul fast float %617, %603
  %622 = fmul fast float %615, %605
  %623 = fsub fast float %621, %622
  %624 = fmul fast float %615, %604
  %625 = fmul fast float %616, %603
  %626 = fsub fast float %624, %625
  %627 = call float @dx.op.dot3.f32(i32 55, float %620, float %623, float %626, float %620, float %623, float %626)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = call float @dx.op.unary.f32(i32 25, float %627)  ; Rsqrt(value)
  %629 = fmul fast float %628, %303
  %630 = fmul fast float %629, %620
  %631 = fmul fast float %629, %623
  %632 = fmul fast float %626, %303
  %633 = fmul fast float %632, %628
  %634 = fmul fast float %504, %455
  %635 = call float @dx.op.tertiary.f32(i32 46, float %505, float %461, float %634)  ; FMad(a,b,c)
  %636 = call float @dx.op.tertiary.f32(i32 46, float %587, float %467, float %635)  ; FMad(a,b,c)
  %637 = fadd fast float %636, %473
  %638 = fmul fast float %504, %456
  %639 = call float @dx.op.tertiary.f32(i32 46, float %505, float %462, float %638)  ; FMad(a,b,c)
  %640 = call float @dx.op.tertiary.f32(i32 46, float %587, float %468, float %639)  ; FMad(a,b,c)
  %641 = fadd fast float %640, %474
  %642 = fmul fast float %504, %457
  %643 = call float @dx.op.tertiary.f32(i32 46, float %505, float %463, float %642)  ; FMad(a,b,c)
  %644 = call float @dx.op.tertiary.f32(i32 46, float %587, float %469, float %643)  ; FMad(a,b,c)
  %645 = fadd fast float %644, %475
  %646 = fmul fast float %504, %458
  %647 = call float @dx.op.tertiary.f32(i32 46, float %505, float %464, float %646)  ; FMad(a,b,c)
  %648 = call float @dx.op.tertiary.f32(i32 46, float %587, float %470, float %647)  ; FMad(a,b,c)
  %649 = fadd fast float %648, %476
  %650 = fdiv fast float 1.000000e+00, %649
  %651 = fmul fast float %650, %637
  %652 = fmul fast float %650, %641
  %653 = fmul fast float %650, %645
  %654 = fsub fast float -0.000000e+00, %603
  %655 = fsub fast float -0.000000e+00, %604
  %656 = fsub fast float -0.000000e+00, %605
  %657 = fsub fast float %306, %630
  %658 = fsub fast float %307, %631
  %659 = fsub fast float %308, %633
  %660 = fsub fast float %651, %657
  %661 = fsub fast float %652, %658
  %662 = fsub fast float %653, %659
  %663 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %660, float %661, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %664 = call float @dx.op.unary.f32(i32 25, float %663)  ; Rsqrt(value)
  %665 = fmul fast float %660, %664
  %666 = fmul fast float %661, %664
  %667 = fmul fast float %662, %664
  %668 = fsub fast float %485, %657
  %669 = fsub fast float %486, %658
  %670 = fsub fast float %487, %659
  %671 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %668, float %669, float %670)  ; Dot3(ax,ay,az,bx,by,bz)
  %672 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %665, float %666, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = fdiv fast float 1.000000e+00, %672
  %674 = fmul fast float %673, %671
  %675 = fmul fast float %674, %665
  %676 = fmul fast float %674, %666
  %677 = fmul fast float %674, %667
  %678 = fadd fast float %675, %657
  %679 = fadd fast float %676, %658
  %680 = fadd fast float %677, %659
  %681 = fadd fast float %630, %306
  %682 = fadd fast float %631, %307
  %683 = fadd fast float %633, %308
  %684 = fsub fast float %651, %681
  %685 = fsub fast float %652, %682
  %686 = fsub fast float %653, %683
  %687 = call float @dx.op.dot3.f32(i32 55, float %684, float %685, float %686, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.unary.f32(i32 25, float %687)  ; Rsqrt(value)
  %689 = fmul fast float %688, %684
  %690 = fmul fast float %688, %685
  %691 = fmul fast float %688, %686
  %692 = fsub fast float %485, %681
  %693 = fsub fast float %486, %682
  %694 = fsub fast float %487, %683
  %695 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %692, float %693, float %694)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = fdiv fast float 1.000000e+00, %696
  %698 = fmul fast float %697, %695
  %699 = fmul fast float %698, %689
  %700 = fmul fast float %698, %690
  %701 = fmul fast float %698, %691
  %702 = fadd fast float %699, %681
  %703 = fadd fast float %700, %682
  %704 = fadd fast float %701, %683
  %705 = fmul fast float %678, %431
  %706 = call float @dx.op.tertiary.f32(i32 46, float %679, float %437, float %705)  ; FMad(a,b,c)
  %707 = call float @dx.op.tertiary.f32(i32 46, float %680, float %443, float %706)  ; FMad(a,b,c)
  %708 = fadd fast float %707, %449
  %709 = fmul fast float %678, %432
  %710 = call float @dx.op.tertiary.f32(i32 46, float %679, float %438, float %709)  ; FMad(a,b,c)
  %711 = call float @dx.op.tertiary.f32(i32 46, float %680, float %444, float %710)  ; FMad(a,b,c)
  %712 = fadd fast float %711, %450
  %713 = fmul fast float %678, %434
  %714 = call float @dx.op.tertiary.f32(i32 46, float %679, float %440, float %713)  ; FMad(a,b,c)
  %715 = call float @dx.op.tertiary.f32(i32 46, float %680, float %446, float %714)  ; FMad(a,b,c)
  %716 = fadd fast float %715, %452
  %717 = fmul fast float %702, %431
  %718 = call float @dx.op.tertiary.f32(i32 46, float %703, float %437, float %717)  ; FMad(a,b,c)
  %719 = call float @dx.op.tertiary.f32(i32 46, float %704, float %443, float %718)  ; FMad(a,b,c)
  %720 = fadd fast float %719, %449
  %721 = fmul fast float %702, %432
  %722 = call float @dx.op.tertiary.f32(i32 46, float %703, float %438, float %721)  ; FMad(a,b,c)
  %723 = call float @dx.op.tertiary.f32(i32 46, float %704, float %444, float %722)  ; FMad(a,b,c)
  %724 = fadd fast float %723, %450
  %725 = fmul fast float %702, %434
  %726 = call float @dx.op.tertiary.f32(i32 46, float %703, float %440, float %725)  ; FMad(a,b,c)
  %727 = call float @dx.op.tertiary.f32(i32 46, float %704, float %446, float %726)  ; FMad(a,b,c)
  %728 = fadd fast float %727, %452
  %729 = fdiv fast float 1.000000e+00, %716
  %730 = fmul fast float %729, %708
  %731 = fmul fast float %729, %712
  %732 = fdiv fast float 1.000000e+00, %728
  %733 = fmul fast float %732, %720
  %734 = fmul fast float %732, %724
  %735 = fsub fast float %733, %730
  %736 = fsub fast float %734, %731
  %737 = call float @dx.op.dot2.f32(i32 54, float %735, float %736, float %735, float %736)  ; Dot2(ax,ay,bx,by)
  %738 = call float @dx.op.unary.f32(i32 25, float %737)  ; Rsqrt(value)
  %739 = fmul fast float %735, %738
  %740 = fmul fast float %736, %738
  %741 = fmul fast float %735, %735
  %742 = fmul fast float %736, %736
  %743 = fadd fast float %741, %742
  %744 = call float @dx.op.unary.f32(i32 24, float %743)  ; Sqrt(value)
  %745 = fmul fast float %744, 5.000000e-01
  br i1 %480, label %838, label %746, !dx.controlflow.hints !41

; <label>:746                                     ; preds = %614
  %747 = fsub fast float %306, %298
  %748 = fsub fast float %307, %299
  %749 = fsub fast float %308, %300
  %750 = fsub fast float %651, %747
  %751 = fsub fast float %652, %748
  %752 = fsub fast float %653, %749
  %753 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float %750, float %751, float %752)  ; Dot3(ax,ay,az,bx,by,bz)
  %754 = call float @dx.op.unary.f32(i32 25, float %753)  ; Rsqrt(value)
  %755 = fmul fast float %754, %750
  %756 = fmul fast float %754, %751
  %757 = fmul fast float %754, %752
  %758 = fsub fast float %485, %747
  %759 = fsub fast float %486, %748
  %760 = fsub fast float %487, %749
  %761 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %758, float %759, float %760)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %755, float %756, float %757)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = fdiv fast float 1.000000e+00, %762
  %764 = fmul fast float %763, %761
  %765 = fmul fast float %764, %755
  %766 = fmul fast float %764, %756
  %767 = fmul fast float %764, %757
  %768 = fadd fast float %765, %747
  %769 = fadd fast float %766, %748
  %770 = fadd fast float %767, %749
  %771 = fadd fast float %306, %298
  %772 = fadd fast float %307, %299
  %773 = fadd fast float %308, %300
  %774 = fsub fast float %651, %771
  %775 = fsub fast float %652, %772
  %776 = fsub fast float %653, %773
  %777 = call float @dx.op.dot3.f32(i32 55, float %774, float %775, float %776, float %774, float %775, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = call float @dx.op.unary.f32(i32 25, float %777)  ; Rsqrt(value)
  %779 = fmul fast float %778, %774
  %780 = fmul fast float %778, %775
  %781 = fmul fast float %778, %776
  %782 = fsub fast float %485, %771
  %783 = fsub fast float %486, %772
  %784 = fsub fast float %487, %773
  %785 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %782, float %783, float %784)  ; Dot3(ax,ay,az,bx,by,bz)
  %786 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %779, float %780, float %781)  ; Dot3(ax,ay,az,bx,by,bz)
  %787 = fdiv fast float 1.000000e+00, %786
  %788 = fmul fast float %787, %785
  %789 = fmul fast float %788, %779
  %790 = fmul fast float %788, %780
  %791 = fmul fast float %788, %781
  %792 = fadd fast float %789, %771
  %793 = fadd fast float %790, %772
  %794 = fadd fast float %791, %773
  %795 = fmul fast float %768, %431
  %796 = call float @dx.op.tertiary.f32(i32 46, float %769, float %437, float %795)  ; FMad(a,b,c)
  %797 = call float @dx.op.tertiary.f32(i32 46, float %770, float %443, float %796)  ; FMad(a,b,c)
  %798 = fadd fast float %797, %449
  %799 = fmul fast float %768, %432
  %800 = call float @dx.op.tertiary.f32(i32 46, float %769, float %438, float %799)  ; FMad(a,b,c)
  %801 = call float @dx.op.tertiary.f32(i32 46, float %770, float %444, float %800)  ; FMad(a,b,c)
  %802 = fadd fast float %801, %450
  %803 = fmul fast float %768, %434
  %804 = call float @dx.op.tertiary.f32(i32 46, float %769, float %440, float %803)  ; FMad(a,b,c)
  %805 = call float @dx.op.tertiary.f32(i32 46, float %770, float %446, float %804)  ; FMad(a,b,c)
  %806 = fadd fast float %805, %452
  %807 = fmul fast float %792, %431
  %808 = call float @dx.op.tertiary.f32(i32 46, float %793, float %437, float %807)  ; FMad(a,b,c)
  %809 = call float @dx.op.tertiary.f32(i32 46, float %794, float %443, float %808)  ; FMad(a,b,c)
  %810 = fadd fast float %809, %449
  %811 = fmul fast float %792, %432
  %812 = call float @dx.op.tertiary.f32(i32 46, float %793, float %438, float %811)  ; FMad(a,b,c)
  %813 = call float @dx.op.tertiary.f32(i32 46, float %794, float %444, float %812)  ; FMad(a,b,c)
  %814 = fadd fast float %813, %450
  %815 = fmul fast float %792, %434
  %816 = call float @dx.op.tertiary.f32(i32 46, float %793, float %440, float %815)  ; FMad(a,b,c)
  %817 = call float @dx.op.tertiary.f32(i32 46, float %794, float %446, float %816)  ; FMad(a,b,c)
  %818 = fadd fast float %817, %452
  %819 = fdiv fast float 1.000000e+00, %806
  %820 = fmul fast float %819, %798
  %821 = fmul fast float %819, %802
  %822 = fdiv fast float 1.000000e+00, %818
  %823 = fmul fast float %822, %810
  %824 = fmul fast float %822, %814
  %825 = fsub fast float %823, %820
  %826 = fsub fast float %824, %821
  %827 = call float @dx.op.dot2.f32(i32 54, float %825, float %826, float %825, float %826)  ; Dot2(ax,ay,bx,by)
  %828 = call float @dx.op.unary.f32(i32 25, float %827)  ; Rsqrt(value)
  %829 = fmul fast float %825, %828
  %830 = fmul fast float %826, %828
  %831 = fmul fast float %825, %825
  %832 = fmul fast float %826, %826
  %833 = fadd fast float %831, %832
  %834 = call float @dx.op.unary.f32(i32 24, float %833)  ; Sqrt(value)
  %835 = fmul fast float %834, 5.000000e-01
  %836 = fcmp fast olt float %835, %745
  br i1 %836, label %837, label %838, !dx.controlflow.hints !42

; <label>:837                                     ; preds = %746
  br label %838

; <label>:838                                     ; preds = %837, %746, %614
  %839 = phi float [ %745, %614 ], [ %835, %837 ], [ %745, %746 ]
  %840 = phi float [ %745, %614 ], [ %745, %837 ], [ %835, %746 ]
  %841 = phi float [ %739, %614 ], [ %739, %837 ], [ %829, %746 ]
  %842 = phi float [ %740, %614 ], [ %740, %837 ], [ %830, %746 ]
  %843 = fmul fast float %839, %426
  %844 = fdiv fast float %843, %840
  %845 = fsub fast float %426, %844
  %846 = fmul fast float %841, %841
  %847 = fmul fast float %846, %845
  %848 = fadd fast float %847, %844
  %849 = fmul fast float %842, %841
  %850 = fmul fast float %849, %845
  %851 = fmul fast float %842, %842
  %852 = fmul fast float %851, %845
  %853 = fadd fast float %852, %844
  %854 = fmul fast float %848, %510
  %855 = call float @dx.op.tertiary.f32(i32 46, float %509, float %850, float %854)  ; FMad(a,b,c)
  %856 = fmul fast float %850, %510
  %857 = call float @dx.op.tertiary.f32(i32 46, float %509, float %853, float %856)  ; FMad(a,b,c)
  %858 = fmul fast float %848, %511
  %859 = call float @dx.op.tertiary.f32(i32 46, float %510, float %850, float %858)  ; FMad(a,b,c)
  %860 = fmul fast float %850, %511
  %861 = call float @dx.op.tertiary.f32(i32 46, float %510, float %853, float %860)  ; FMad(a,b,c)
  br label %862

; <label>:862                                     ; preds = %900, %838
  %863 = phi float [ 0.000000e+00, %838 ], [ %901, %900 ]
  %864 = phi float [ 0.000000e+00, %838 ], [ %902, %900 ]
  %865 = phi float [ 0.000000e+00, %838 ], [ %903, %900 ]
  %866 = phi float [ 0.000000e+00, %838 ], [ %904, %900 ]
  %867 = phi i32 [ 0, %838 ], [ %905, %900 ]
  %868 = mul i32 %867, 2
  %869 = add i32 0, %868
  %870 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %869
  %871 = load float, float* %870, align 4
  %872 = mul i32 %867, 2
  %873 = add i32 1, %872
  %874 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %873
  %875 = load float, float* %874, align 4
  %876 = fmul fast float %871, %855
  %877 = call float @dx.op.tertiary.f32(i32 46, float %875, float %859, float %876)  ; FMad(a,b,c)
  %878 = fmul fast float %871, %857
  %879 = call float @dx.op.tertiary.f32(i32 46, float %875, float %861, float %878)  ; FMad(a,b,c)
  %880 = fadd fast float %877, %504
  %881 = fadd fast float %879, %505
  %882 = fmul fast float %880, %421
  %883 = fmul fast float %881, %421
  %884 = call float @dx.op.binary.f32(i32 35, float %882, float %417)  ; FMax(a,b)
  %885 = call float @dx.op.binary.f32(i32 35, float %883, float %417)  ; FMax(a,b)
  %886 = call float @dx.op.binary.f32(i32 36, float %884, float %418)  ; FMin(a,b)
  %887 = call float @dx.op.binary.f32(i32 36, float %885, float %418)  ; FMin(a,b)
  %888 = fadd fast float %886, %415
  %889 = fadd fast float %887, %416
  %890 = uitofp i32 %477 to float
  %891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %888, float %889, float %890, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = fadd fast float %507, %425
  %894 = fcmp fast olt float %893, %892
  br i1 %894, label %895, label %900, !dx.controlflow.hints !43

; <label>:895                                     ; preds = %862
  %896 = fadd fast float %892, %865
  %897 = fadd fast float %877, %863
  %898 = fadd fast float %879, %864
  %899 = fadd fast float %866, 1.000000e+00
  br label %900

; <label>:900                                     ; preds = %895, %862
  %901 = phi float [ %897, %895 ], [ %863, %862 ]
  %902 = phi float [ %898, %895 ], [ %864, %862 ]
  %903 = phi float [ %896, %895 ], [ %865, %862 ]
  %904 = phi float [ %899, %895 ], [ %866, %862 ]
  %905 = add nuw nsw i32 %867, 1
  %906 = icmp eq i32 %905, 8
  br i1 %906, label %907, label %862

; <label>:907                                     ; preds = %900
  %908 = fdiv fast float 1.000000e+00, %904
  %909 = fcmp fast oeq float %904, 0.000000e+00
  %910 = fmul fast float %908, %903
  %911 = select i1 %909, float -1.000000e+00, float %910
  %912 = fcmp fast olt float %911, 0.000000e+00
  br i1 %912, label %1199, label %913, !dx.controlflow.hints !44

; <label>:913                                     ; preds = %907
  %914 = fmul fast float %908, %902
  %915 = select i1 %909, float 0.000000e+00, float %914
  %916 = fmul fast float %908, %901
  %917 = select i1 %909, float 0.000000e+00, float %916
  %918 = fadd fast float %917, %504
  %919 = fadd fast float %915, %505
  br i1 %480, label %920, label %924, !dx.controlflow.hints !40

; <label>:920                                     ; preds = %913
  %921 = fcmp fast olt float %604, 0x3FE6666660000000
  %922 = select i1 %921, float 1.000000e+00, float 0.000000e+00
  %923 = select i1 %921, float 0.000000e+00, float 1.000000e+00
  br label %924

; <label>:924                                     ; preds = %920, %913
  %925 = phi float [ 0.000000e+00, %920 ], [ %607, %913 ]
  %926 = phi float [ %922, %920 ], [ %608, %913 ]
  %927 = phi float [ %923, %920 ], [ %609, %913 ]
  %928 = fmul fast float %926, %605
  %929 = fmul fast float %927, %604
  %930 = fsub fast float %928, %929
  %931 = fmul fast float %927, %603
  %932 = fmul fast float %925, %605
  %933 = fsub fast float %931, %932
  %934 = fmul fast float %925, %604
  %935 = fmul fast float %926, %603
  %936 = fsub fast float %934, %935
  %937 = call float @dx.op.dot3.f32(i32 55, float %930, float %933, float %936, float %930, float %933, float %936)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = call float @dx.op.unary.f32(i32 25, float %937)  ; Rsqrt(value)
  %939 = fmul fast float %938, %303
  %940 = fmul fast float %939, %930
  %941 = fmul fast float %939, %933
  %942 = fmul fast float %936, %303
  %943 = fmul fast float %942, %938
  %944 = fmul fast float %918, %455
  %945 = call float @dx.op.tertiary.f32(i32 46, float %919, float %461, float %944)  ; FMad(a,b,c)
  %946 = call float @dx.op.tertiary.f32(i32 46, float %911, float %467, float %945)  ; FMad(a,b,c)
  %947 = fadd fast float %946, %473
  %948 = fmul fast float %918, %456
  %949 = call float @dx.op.tertiary.f32(i32 46, float %919, float %462, float %948)  ; FMad(a,b,c)
  %950 = call float @dx.op.tertiary.f32(i32 46, float %911, float %468, float %949)  ; FMad(a,b,c)
  %951 = fadd fast float %950, %474
  %952 = fmul fast float %918, %457
  %953 = call float @dx.op.tertiary.f32(i32 46, float %919, float %463, float %952)  ; FMad(a,b,c)
  %954 = call float @dx.op.tertiary.f32(i32 46, float %911, float %469, float %953)  ; FMad(a,b,c)
  %955 = fadd fast float %954, %475
  %956 = fmul fast float %918, %458
  %957 = call float @dx.op.tertiary.f32(i32 46, float %919, float %464, float %956)  ; FMad(a,b,c)
  %958 = call float @dx.op.tertiary.f32(i32 46, float %911, float %470, float %957)  ; FMad(a,b,c)
  %959 = fadd fast float %958, %476
  %960 = fdiv fast float 1.000000e+00, %959
  %961 = fmul fast float %960, %947
  %962 = fmul fast float %960, %951
  %963 = fmul fast float %960, %955
  %964 = fsub fast float %306, %940
  %965 = fsub fast float %307, %941
  %966 = fsub fast float %308, %943
  %967 = fsub fast float %961, %964
  %968 = fsub fast float %962, %965
  %969 = fsub fast float %963, %966
  %970 = call float @dx.op.dot3.f32(i32 55, float %967, float %968, float %969, float %967, float %968, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = call float @dx.op.unary.f32(i32 25, float %970)  ; Rsqrt(value)
  %972 = fmul fast float %967, %971
  %973 = fmul fast float %968, %971
  %974 = fmul fast float %969, %971
  %975 = fsub fast float %485, %964
  %976 = fsub fast float %486, %965
  %977 = fsub fast float %487, %966
  %978 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %975, float %976, float %977)  ; Dot3(ax,ay,az,bx,by,bz)
  %979 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %972, float %973, float %974)  ; Dot3(ax,ay,az,bx,by,bz)
  %980 = fdiv fast float 1.000000e+00, %979
  %981 = fmul fast float %980, %978
  %982 = fmul fast float %981, %972
  %983 = fmul fast float %981, %973
  %984 = fmul fast float %981, %974
  %985 = fadd fast float %982, %964
  %986 = fadd fast float %983, %965
  %987 = fadd fast float %984, %966
  %988 = fadd fast float %940, %306
  %989 = fadd fast float %941, %307
  %990 = fadd fast float %943, %308
  %991 = fsub fast float %961, %988
  %992 = fsub fast float %962, %989
  %993 = fsub fast float %963, %990
  %994 = call float @dx.op.dot3.f32(i32 55, float %991, float %992, float %993, float %991, float %992, float %993)  ; Dot3(ax,ay,az,bx,by,bz)
  %995 = call float @dx.op.unary.f32(i32 25, float %994)  ; Rsqrt(value)
  %996 = fmul fast float %995, %991
  %997 = fmul fast float %995, %992
  %998 = fmul fast float %995, %993
  %999 = fsub fast float %485, %988
  %1000 = fsub fast float %486, %989
  %1001 = fsub fast float %487, %990
  %1002 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %999, float %1000, float %1001)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %996, float %997, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = fdiv fast float 1.000000e+00, %1003
  %1005 = fmul fast float %1004, %1002
  %1006 = fmul fast float %1005, %996
  %1007 = fmul fast float %1005, %997
  %1008 = fmul fast float %1005, %998
  %1009 = fadd fast float %1006, %988
  %1010 = fadd fast float %1007, %989
  %1011 = fadd fast float %1008, %990
  %1012 = fmul fast float %985, %431
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %986, float %437, float %1012)  ; FMad(a,b,c)
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %987, float %443, float %1013)  ; FMad(a,b,c)
  %1015 = fadd fast float %1014, %449
  %1016 = fmul fast float %985, %432
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %986, float %438, float %1016)  ; FMad(a,b,c)
  %1018 = call float @dx.op.tertiary.f32(i32 46, float %987, float %444, float %1017)  ; FMad(a,b,c)
  %1019 = fadd fast float %1018, %450
  %1020 = fmul fast float %985, %434
  %1021 = call float @dx.op.tertiary.f32(i32 46, float %986, float %440, float %1020)  ; FMad(a,b,c)
  %1022 = call float @dx.op.tertiary.f32(i32 46, float %987, float %446, float %1021)  ; FMad(a,b,c)
  %1023 = fadd fast float %1022, %452
  %1024 = fmul fast float %1009, %431
  %1025 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %437, float %1024)  ; FMad(a,b,c)
  %1026 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %443, float %1025)  ; FMad(a,b,c)
  %1027 = fadd fast float %1026, %449
  %1028 = fmul fast float %1009, %432
  %1029 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %438, float %1028)  ; FMad(a,b,c)
  %1030 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %444, float %1029)  ; FMad(a,b,c)
  %1031 = fadd fast float %1030, %450
  %1032 = fmul fast float %1009, %434
  %1033 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %440, float %1032)  ; FMad(a,b,c)
  %1034 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %446, float %1033)  ; FMad(a,b,c)
  %1035 = fadd fast float %1034, %452
  %1036 = fdiv fast float 1.000000e+00, %1023
  %1037 = fmul fast float %1036, %1015
  %1038 = fmul fast float %1036, %1019
  %1039 = fdiv fast float 1.000000e+00, %1035
  %1040 = fmul fast float %1039, %1027
  %1041 = fmul fast float %1039, %1031
  %1042 = fsub fast float %1040, %1037
  %1043 = fsub fast float %1041, %1038
  %1044 = call float @dx.op.dot2.f32(i32 54, float %1042, float %1043, float %1042, float %1043)  ; Dot2(ax,ay,bx,by)
  %1045 = call float @dx.op.unary.f32(i32 25, float %1044)  ; Rsqrt(value)
  %1046 = fmul fast float %1042, %1045
  %1047 = fmul fast float %1043, %1045
  %1048 = fmul fast float %1042, %1042
  %1049 = fmul fast float %1043, %1043
  %1050 = fadd fast float %1048, %1049
  %1051 = call float @dx.op.unary.f32(i32 24, float %1050)  ; Sqrt(value)
  %1052 = fmul fast float %1051, 5.000000e-01
  br i1 %480, label %1145, label %1053, !dx.controlflow.hints !41

; <label>:1053                                    ; preds = %924
  %1054 = fsub fast float %306, %298
  %1055 = fsub fast float %307, %299
  %1056 = fsub fast float %308, %300
  %1057 = fsub fast float %961, %1054
  %1058 = fsub fast float %962, %1055
  %1059 = fsub fast float %963, %1056
  %1060 = call float @dx.op.dot3.f32(i32 55, float %1057, float %1058, float %1059, float %1057, float %1058, float %1059)  ; Dot3(ax,ay,az,bx,by,bz)
  %1061 = call float @dx.op.unary.f32(i32 25, float %1060)  ; Rsqrt(value)
  %1062 = fmul fast float %1061, %1057
  %1063 = fmul fast float %1061, %1058
  %1064 = fmul fast float %1061, %1059
  %1065 = fsub fast float %485, %1054
  %1066 = fsub fast float %486, %1055
  %1067 = fsub fast float %487, %1056
  %1068 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %1065, float %1066, float %1067)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %1062, float %1063, float %1064)  ; Dot3(ax,ay,az,bx,by,bz)
  %1070 = fdiv fast float 1.000000e+00, %1069
  %1071 = fmul fast float %1070, %1068
  %1072 = fmul fast float %1071, %1062
  %1073 = fmul fast float %1071, %1063
  %1074 = fmul fast float %1071, %1064
  %1075 = fadd fast float %1072, %1054
  %1076 = fadd fast float %1073, %1055
  %1077 = fadd fast float %1074, %1056
  %1078 = fadd fast float %306, %298
  %1079 = fadd fast float %307, %299
  %1080 = fadd fast float %308, %300
  %1081 = fsub fast float %961, %1078
  %1082 = fsub fast float %962, %1079
  %1083 = fsub fast float %963, %1080
  %1084 = call float @dx.op.dot3.f32(i32 55, float %1081, float %1082, float %1083, float %1081, float %1082, float %1083)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = call float @dx.op.unary.f32(i32 25, float %1084)  ; Rsqrt(value)
  %1086 = fmul fast float %1085, %1081
  %1087 = fmul fast float %1085, %1082
  %1088 = fmul fast float %1085, %1083
  %1089 = fsub fast float %485, %1078
  %1090 = fsub fast float %486, %1079
  %1091 = fsub fast float %487, %1080
  %1092 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %1089, float %1090, float %1091)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %1086, float %1087, float %1088)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = fdiv fast float 1.000000e+00, %1093
  %1095 = fmul fast float %1094, %1092
  %1096 = fmul fast float %1095, %1086
  %1097 = fmul fast float %1095, %1087
  %1098 = fmul fast float %1095, %1088
  %1099 = fadd fast float %1096, %1078
  %1100 = fadd fast float %1097, %1079
  %1101 = fadd fast float %1098, %1080
  %1102 = fmul fast float %1075, %431
  %1103 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %437, float %1102)  ; FMad(a,b,c)
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %443, float %1103)  ; FMad(a,b,c)
  %1105 = fadd fast float %1104, %449
  %1106 = fmul fast float %1075, %432
  %1107 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %438, float %1106)  ; FMad(a,b,c)
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %444, float %1107)  ; FMad(a,b,c)
  %1109 = fadd fast float %1108, %450
  %1110 = fmul fast float %1075, %434
  %1111 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %440, float %1110)  ; FMad(a,b,c)
  %1112 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %446, float %1111)  ; FMad(a,b,c)
  %1113 = fadd fast float %1112, %452
  %1114 = fmul fast float %1099, %431
  %1115 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %437, float %1114)  ; FMad(a,b,c)
  %1116 = call float @dx.op.tertiary.f32(i32 46, float %1101, float %443, float %1115)  ; FMad(a,b,c)
  %1117 = fadd fast float %1116, %449
  %1118 = fmul fast float %1099, %432
  %1119 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %438, float %1118)  ; FMad(a,b,c)
  %1120 = call float @dx.op.tertiary.f32(i32 46, float %1101, float %444, float %1119)  ; FMad(a,b,c)
  %1121 = fadd fast float %1120, %450
  %1122 = fmul fast float %1099, %434
  %1123 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %440, float %1122)  ; FMad(a,b,c)
  %1124 = call float @dx.op.tertiary.f32(i32 46, float %1101, float %446, float %1123)  ; FMad(a,b,c)
  %1125 = fadd fast float %1124, %452
  %1126 = fdiv fast float 1.000000e+00, %1113
  %1127 = fmul fast float %1126, %1105
  %1128 = fmul fast float %1126, %1109
  %1129 = fdiv fast float 1.000000e+00, %1125
  %1130 = fmul fast float %1129, %1117
  %1131 = fmul fast float %1129, %1121
  %1132 = fsub fast float %1130, %1127
  %1133 = fsub fast float %1131, %1128
  %1134 = call float @dx.op.dot2.f32(i32 54, float %1132, float %1133, float %1132, float %1133)  ; Dot2(ax,ay,bx,by)
  %1135 = call float @dx.op.unary.f32(i32 25, float %1134)  ; Rsqrt(value)
  %1136 = fmul fast float %1132, %1135
  %1137 = fmul fast float %1133, %1135
  %1138 = fmul fast float %1132, %1132
  %1139 = fmul fast float %1133, %1133
  %1140 = fadd fast float %1138, %1139
  %1141 = call float @dx.op.unary.f32(i32 24, float %1140)  ; Sqrt(value)
  %1142 = fmul fast float %1141, 5.000000e-01
  %1143 = fcmp fast olt float %1142, %1052
  br i1 %1143, label %1144, label %1145, !dx.controlflow.hints !42

; <label>:1144                                    ; preds = %1053
  br label %1145

; <label>:1145                                    ; preds = %1144, %1053, %924
  %1146 = phi float [ %1052, %924 ], [ %1142, %1144 ], [ %1052, %1053 ]
  %1147 = phi float [ %1052, %924 ], [ %1052, %1144 ], [ %1142, %1053 ]
  %1148 = phi float [ %1046, %924 ], [ %1046, %1144 ], [ %1136, %1053 ]
  %1149 = phi float [ %1047, %924 ], [ %1047, %1144 ], [ %1137, %1053 ]
  %1150 = fsub fast float %1147, %1146
  %1151 = fmul fast float %1148, %1148
  %1152 = fmul fast float %1151, %1150
  %1153 = fadd fast float %1152, %1146
  %1154 = fmul fast float %1148, %1150
  %1155 = fmul fast float %1154, %1149
  %1156 = fmul fast float %1149, %1149
  %1157 = fmul fast float %1156, %1150
  %1158 = fadd fast float %1157, %1146
  %1159 = fmul fast float %1153, %510
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %509, float %1155, float %1159)  ; FMad(a,b,c)
  %1161 = fmul fast float %1155, %510
  %1162 = call float @dx.op.tertiary.f32(i32 46, float %509, float %1158, float %1161)  ; FMad(a,b,c)
  %1163 = fmul fast float %1153, %511
  %1164 = call float @dx.op.tertiary.f32(i32 46, float %510, float %1155, float %1163)  ; FMad(a,b,c)
  %1165 = fmul fast float %1155, %511
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %510, float %1158, float %1165)  ; FMad(a,b,c)
  br label %1167

; <label>:1167                                    ; preds = %1167, %1145
  %1168 = phi float [ 0.000000e+00, %1145 ], [ %1194, %1167 ]
  %1169 = phi i32 [ 0, %1145 ], [ %1195, %1167 ]
  %1170 = mul i32 %1169, 2
  %1171 = add i32 0, %1170
  %1172 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1171
  %1173 = load float, float* %1172, align 4
  %1174 = mul i32 %1169, 2
  %1175 = add i32 1, %1174
  %1176 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1175
  %1177 = load float, float* %1176, align 4
  %1178 = fmul fast float %1173, %1160
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1177, float %1164, float %1178)  ; FMad(a,b,c)
  %1180 = fmul fast float %1173, %1162
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1177, float %1166, float %1180)  ; FMad(a,b,c)
  %1182 = fadd fast float %1179, %504
  %1183 = fadd fast float %1181, %505
  %1184 = fmul fast float %1182, %421
  %1185 = fmul fast float %1183, %421
  %1186 = call float @dx.op.binary.f32(i32 35, float %1184, float %417)  ; FMax(a,b)
  %1187 = call float @dx.op.binary.f32(i32 35, float %1185, float %417)  ; FMax(a,b)
  %1188 = call float @dx.op.binary.f32(i32 36, float %1186, float %418)  ; FMin(a,b)
  %1189 = call float @dx.op.binary.f32(i32 36, float %1187, float %418)  ; FMin(a,b)
  %1190 = fadd fast float %1188, %415
  %1191 = fadd fast float %1189, %416
  %1192 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %19, float %1190, float %1191, float %890, float undef, i32 0, i32 0, i32 undef, float %893)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = fadd fast float %1193, %1168
  %1195 = add nuw nsw i32 %1169, 1
  %1196 = icmp eq i32 %1195, 8
  br i1 %1196, label %1197, label %1167

; <label>:1197                                    ; preds = %1167
  %1198 = fmul fast float %1194, 1.250000e-01
  br label %1199

; <label>:1199                                    ; preds = %1197, %907, %556
  %1200 = phi float [ %583, %556 ], [ %1198, %1197 ], [ 1.000000e+00, %907 ]
  %1201 = fcmp fast ogt float %1200, 0.000000e+00
  %1202 = xor i1 %55, true
  %1203 = and i1 %1201, %1202
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1206 = fcmp fast olt float %1205, 0.000000e+00
  %1207 = and i1 %1203, %1206
  br i1 %1207, label %1208, label %1319, !dx.controlflow.hints !45

; <label>:1208                                    ; preds = %1199
  %1209 = fadd fast float %504, %417
  %1210 = fadd fast float %505, %417
  %1211 = fadd fast float %507, %425
  %1212 = fmul fast float %504, %455
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %505, float %461, float %1212)  ; FMad(a,b,c)
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %507, float %467, float %1213)  ; FMad(a,b,c)
  %1215 = fadd fast float %1214, %473
  %1216 = fmul fast float %504, %456
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %505, float %462, float %1216)  ; FMad(a,b,c)
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %507, float %468, float %1217)  ; FMad(a,b,c)
  %1219 = fadd fast float %1218, %474
  %1220 = fmul fast float %504, %457
  %1221 = call float @dx.op.tertiary.f32(i32 46, float %505, float %463, float %1220)  ; FMad(a,b,c)
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %507, float %469, float %1221)  ; FMad(a,b,c)
  %1223 = fadd fast float %1222, %475
  %1224 = fmul fast float %504, %458
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %505, float %464, float %1224)  ; FMad(a,b,c)
  %1226 = call float @dx.op.tertiary.f32(i32 46, float %507, float %470, float %1225)  ; FMad(a,b,c)
  %1227 = fadd fast float %1226, %476
  %1228 = fmul fast float %1209, %455
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %461, float %1228)  ; FMad(a,b,c)
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %467, float %1229)  ; FMad(a,b,c)
  %1231 = fadd fast float %1230, %473
  %1232 = fmul fast float %1209, %456
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %462, float %1232)  ; FMad(a,b,c)
  %1234 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %468, float %1233)  ; FMad(a,b,c)
  %1235 = fadd fast float %1234, %474
  %1236 = fmul fast float %1209, %457
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %463, float %1236)  ; FMad(a,b,c)
  %1238 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %469, float %1237)  ; FMad(a,b,c)
  %1239 = fadd fast float %1238, %475
  %1240 = fmul fast float %1209, %458
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %464, float %1240)  ; FMad(a,b,c)
  %1242 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %470, float %1241)  ; FMad(a,b,c)
  %1243 = fadd fast float %1242, %476
  %1244 = fdiv fast float 1.000000e+00, %1227
  %1245 = fmul fast float %1244, %1215
  %1246 = fmul fast float %1244, %1219
  %1247 = fmul fast float %1244, %1223
  %1248 = fdiv fast float 1.000000e+00, %1243
  %1249 = fmul fast float %1248, %1231
  %1250 = fmul fast float %1248, %1235
  %1251 = fmul fast float %1248, %1239
  %1252 = fsub fast float %1245, %1249
  %1253 = fsub fast float %1246, %1250
  %1254 = fsub fast float %1247, %1251
  %1255 = fmul fast float %1252, %1252
  %1256 = fmul fast float %1253, %1253
  %1257 = fadd fast float %1255, %1256
  %1258 = fmul fast float %1254, %1254
  %1259 = fadd fast float %1257, %1258
  %1260 = call float @dx.op.unary.f32(i32 24, float %1259)  ; Sqrt(value)
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.CBufRet.f32 %1261, 2
  %1265 = extractvalue %dx.types.CBufRet.f32 %1261, 3
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.CBufRet.f32 %1266, 3
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1275 = extractvalue %dx.types.CBufRet.f32 %1271, 3
  %1276 = fmul fast float %1262, %1245
  %1277 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1263, float %1276)  ; FMad(a,b,c)
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %1264, float %1277)  ; FMad(a,b,c)
  %1279 = call float @dx.op.tertiary.f32(i32 46, float %1227, float %1265, float %1278)  ; FMad(a,b,c)
  %1280 = fmul fast float %1267, %1245
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1268, float %1280)  ; FMad(a,b,c)
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %1269, float %1281)  ; FMad(a,b,c)
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1227, float %1270, float %1282)  ; FMad(a,b,c)
  %1284 = fmul fast float %1272, %1245
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1273, float %1284)  ; FMad(a,b,c)
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %1274, float %1285)  ; FMad(a,b,c)
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1227, float %1275, float %1286)  ; FMad(a,b,c)
  %1288 = fmul fast float %1262, %1249
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1263, float %1288)  ; FMad(a,b,c)
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %1264, float %1289)  ; FMad(a,b,c)
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %1265, float %1290)  ; FMad(a,b,c)
  %1292 = fmul fast float %1267, %1249
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1268, float %1292)  ; FMad(a,b,c)
  %1294 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %1269, float %1293)  ; FMad(a,b,c)
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %1270, float %1294)  ; FMad(a,b,c)
  %1296 = fmul fast float %1272, %1249
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1273, float %1296)  ; FMad(a,b,c)
  %1298 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %1274, float %1297)  ; FMad(a,b,c)
  %1299 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %1275, float %1298)  ; FMad(a,b,c)
  %1300 = fdiv fast float 1.000000e+00, %1287
  %1301 = fmul fast float %1300, %1279
  %1302 = fmul fast float %1300, %1283
  %1303 = fdiv fast float 1.000000e+00, %1299
  %1304 = fmul fast float %1303, %1291
  %1305 = fmul fast float %1303, %1295
  %1306 = fsub fast float %1301, %1304
  %1307 = fsub fast float %1302, %1305
  %1308 = fmul fast float %1306, 5.000000e-01
  %1309 = fmul fast float %1307, 5.000000e-01
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1313 = fmul fast float %1308, %1311
  %1314 = fmul fast float %1309, %1312
  %1315 = fmul fast float %1313, %1313
  %1316 = fmul fast float %1314, %1314
  %1317 = fadd fast float %1315, %1316
  %1318 = call float @dx.op.unary.f32(i32 24, float %1317)  ; Sqrt(value)
  br label %1319

; <label>:1319                                    ; preds = %1208, %1199
  %1320 = phi float [ %1260, %1208 ], [ 0.000000e+00, %1199 ]
  %1321 = phi float [ %1318, %1208 ], [ 0.000000e+00, %1199 ]
  %1322 = fadd fast float %1200, -1.000000e+00
  %1323 = fmul fast float %1322, %394
  %1324 = fadd fast float %1323, 1.000000e+00
  %1325 = fmul fast float %1324, %406
  br label %1326

; <label>:1326                                    ; preds = %1319, %373
  %1327 = phi float [ %1320, %1319 ], [ 0.000000e+00, %373 ]
  %1328 = phi float [ %1321, %1319 ], [ 0.000000e+00, %373 ]
  %1329 = phi float [ %1325, %1319 ], [ %406, %373 ]
  %1330 = call float @dx.op.binary.f32(i32 36, float %1329, float %1329)  ; FMin(a,b)
  %1331 = call float @dx.op.binary.f32(i32 36, float %1329, float %1330)  ; FMin(a,b)
  %1332 = fcmp fast ogt float %1331, 0.000000e+00
  %1333 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %346, float %347, float %348)  ; Dot3(ax,ay,az,bx,by,bz)
  %1334 = fcmp fast ogt float %1333, 0.000000e+00
  %1335 = and i1 %1332, %1334
  br i1 %1335, label %1336, label %1617, !dx.controlflow.hints !46

; <label>:1336                                    ; preds = %1326
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 1
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1341 = select i1 %55, float %1338, float %1340
  %1342 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1343 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1344 = select i1 %55, float %1342, float %1343
  %1345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.i32 %1345, 0
  %1347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.i32 %1347, 0
  %1349 = select i1 %55, i32 %1346, i32 %1348
  %1350 = fcmp fast ogt float %1327, 0.000000e+00
  br i1 %1350, label %1351, label %1355, !dx.controlflow.hints !47

; <label>:1351                                    ; preds = %1336
  %1352 = fptosi float %1328 to i32
  %1353 = call i32 @dx.op.binary.i32(i32 37, i32 %1352, i32 1)  ; IMax(a,b)
  %1354 = call i32 @dx.op.binary.i32(i32 38, i32 %1353, i32 16)  ; IMin(a,b)
  br label %1355

; <label>:1355                                    ; preds = %1351, %1336
  %1356 = phi float [ 0.000000e+00, %1351 ], [ 1.000000e+00, %1336 ]
  %1357 = phi float [ %1327, %1351 ], [ %1341, %1336 ]
  %1358 = phi i32 [ %1354, %1351 ], [ %1349, %1336 ]
  %1359 = fcmp fast olt float %1357, 5.000000e-01
  %1360 = icmp eq i32 %1358, 0
  %1361 = or i1 %1359, %1360
  br i1 %1361, label %1612, label %1362, !dx.controlflow.hints !48

; <label>:1362                                    ; preds = %1355
  %1363 = fsub fast float %306, %117
  %1364 = fsub fast float %307, %118
  %1365 = fsub fast float %308, %119
  %1366 = fmul fast float %1363, %1363
  %1367 = fmul fast float %1364, %1364
  %1368 = fadd fast float %1366, %1367
  %1369 = fmul fast float %1365, %1365
  %1370 = fadd fast float %1368, %1369
  %1371 = call float @dx.op.unary.f32(i32 24, float %1370)  ; Sqrt(value)
  %1372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.i32 %1372, 0
  %1374 = uitofp i32 %1373 to float
  %1375 = fmul fast float %1357, %303
  %1376 = fdiv fast float %1375, %1371
  %1377 = call float @dx.op.binary.f32(i32 36, float %1376, float 1.000000e+01)  ; FMin(a,b)
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.CBufRet.f32 %1378, 2
  %1382 = extractvalue %dx.types.CBufRet.f32 %1378, 3
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.CBufRet.f32 %1383, 3
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.CBufRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.CBufRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.CBufRet.f32 %1388, 3
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1397 = extractvalue %dx.types.CBufRet.f32 %1393, 3
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1402 = extractvalue %dx.types.CBufRet.f32 %1398, 3
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.CBufRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.CBufRet.f32 %1403, 2
  %1407 = extractvalue %dx.types.CBufRet.f32 %1403, 3
  %1408 = select i1 %55, float %1379, float %1394
  %1409 = select i1 %55, float %1384, float %1399
  %1410 = select i1 %55, float %1389, float %1404
  %1411 = select i1 %55, float %1380, float %1395
  %1412 = select i1 %55, float %1385, float %1400
  %1413 = select i1 %55, float %1390, float %1405
  %1414 = select i1 %55, float %1381, float %1396
  %1415 = select i1 %55, float %1386, float %1401
  %1416 = select i1 %55, float %1391, float %1406
  %1417 = select i1 %55, float %1382, float %1397
  %1418 = select i1 %55, float %1387, float %1402
  %1419 = select i1 %55, float %1392, float %1407
  %1420 = fmul fast float %219, 0x401061CAC0000000
  %1421 = fmul fast float %219, 0x4023E1D7E0000000
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.CBufRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.CBufRet.f32 %1422, 2
  %1426 = extractvalue %dx.types.CBufRet.f32 %1422, 3
  %1427 = fsub fast float -0.000000e+00, %346
  %1428 = fmul fast float %348, %1427
  %1429 = fmul fast float %346, %1427
  %1430 = fmul fast float %347, %347
  %1431 = fsub fast float %1429, %1430
  %1432 = fdiv fast float 1.000000e+00, %62
  %1433 = fmul fast float %1425, %51
  %1434 = fmul fast float %1426, %52
  %1435 = fmul fast float %1357, %346
  %1436 = fmul fast float %1357, %348
  %1437 = fadd fast float %1435, %117
  %1438 = fadd fast float %1436, %119
  %1439 = fadd fast float %1421, 5.000000e-01
  %1440 = call float @dx.op.unary.f32(i32 22, float %1439)  ; Frc(value)
  %1441 = bitcast float %1440 to i32
  %1442 = ashr i32 %1441, 1
  %1443 = add nsw i32 %1442, 532487669
  %1444 = bitcast i32 %1443 to float
  %1445 = fmul fast float %1444, %1377
  %1446 = fadd fast float %1420, 5.000000e-01
  %1447 = call float @dx.op.unary.f32(i32 22, float %1446)  ; Frc(value)
  %1448 = fmul fast float %1447, 0x401921FB60000000
  %1449 = call float @dx.op.unary.f32(i32 12, float %1448)  ; Cos(value)
  %1450 = fmul fast float %1449, %1449
  %1451 = fsub fast float 1.000000e+00, %1450
  %1452 = bitcast float %1451 to i32
  %1453 = ashr i32 %1452, 1
  %1454 = add nsw i32 %1453, 532487669
  %1455 = bitcast i32 %1454 to float
  %1456 = fmul fast float %1445, %1449
  %1457 = fmul fast float %1456, %347
  %1458 = fmul fast float %1456, %1427
  %1459 = fadd fast float %1437, %1457
  %1460 = fmul fast float %1455, %1445
  %1461 = fmul fast float %1428, %1460
  %1462 = fmul fast float %1460, %348
  %1463 = fmul fast float %1460, %1431
  %1464 = fsub fast float %1459, %1461
  %1465 = fadd fast float %1462, %1357
  %1466 = fmul fast float %1465, %347
  %1467 = fadd fast float %1458, %118
  %1468 = fadd fast float %1467, %1466
  %1469 = fadd fast float %1438, %1463
  %1470 = fmul fast float %1464, %1408
  %1471 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1411, float %1470)  ; FMad(a,b,c)
  %1472 = call float @dx.op.tertiary.f32(i32 46, float %1469, float %1414, float %1471)  ; FMad(a,b,c)
  %1473 = fadd fast float %1472, %1417
  %1474 = fmul fast float %1464, %1409
  %1475 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1412, float %1474)  ; FMad(a,b,c)
  %1476 = call float @dx.op.tertiary.f32(i32 46, float %1469, float %1415, float %1475)  ; FMad(a,b,c)
  %1477 = fadd fast float %1476, %1418
  %1478 = fmul fast float %1464, %1410
  %1479 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1413, float %1478)  ; FMad(a,b,c)
  %1480 = call float @dx.op.tertiary.f32(i32 46, float %1469, float %1416, float %1479)  ; FMad(a,b,c)
  %1481 = fadd fast float %1480, %1419
  %1482 = fdiv fast float 1.000000e+00, %1481
  %1483 = fmul fast float %1473, 5.000000e-01
  %1484 = fmul fast float %1477, -5.000000e-01
  %1485 = fmul fast float %1483, %1482
  %1486 = fmul fast float %1484, %1482
  %1487 = fsub fast float 5.000000e-01, %1433
  %1488 = fadd fast float %1487, %1485
  %1489 = fsub fast float 5.000000e-01, %1434
  %1490 = fadd fast float %1489, %1486
  %1491 = fsub fast float %1482, %1432
  %1492 = call float @dx.op.dot2.f32(i32 54, float %1488, float %1490, float %1488, float %1490)  ; Dot2(ax,ay,bx,by)
  %1493 = call float @dx.op.binary.f32(i32 35, float %1492, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1494 = call float @dx.op.dot2.f32(i32 54, float %1423, float %1424, float %1423, float %1424)  ; Dot2(ax,ay,bx,by)
  %1495 = fmul fast float %1494, %1493
  %1496 = call float @dx.op.unary.f32(i32 25, float %1495)  ; Rsqrt(value)
  %1497 = fmul fast float %1496, %1488
  %1498 = fmul fast float %1496, %1490
  %1499 = fadd fast float %1497, %1433
  %1500 = fadd fast float %1498, %1434
  %1501 = fmul fast float %1488, %1423
  %1502 = fmul fast float %1490, %1424
  %1503 = fmul fast float %1501, %1501
  %1504 = fmul fast float %1502, %1502
  %1505 = fadd fast float %1503, %1504
  %1506 = call float @dx.op.unary.f32(i32 24, float %1505)  ; Sqrt(value)
  %1507 = fdiv fast float 1.000000e+00, %1506
  %1508 = fmul fast float %1506, 3.906250e-03
  %1509 = fmul fast float %205, 0x3F70624DE0000000
  %1510 = fadd fast float %1509, 0x3F70624DE0000000
  %1511 = icmp sgt i32 %1358, -1
  br i1 %1511, label %1512, label %1577

; <label>:1512                                    ; preds = %1362
  br label %1513

; <label>:1513                                    ; preds = %1573, %1512
  %1514 = phi float [ %1548, %1573 ], [ %62, %1512 ]
  %1515 = phi float [ %1535, %1573 ], [ %62, %1512 ]
  %1516 = phi float [ %1515, %1573 ], [ %62, %1512 ]
  %1517 = phi i32 [ %1574, %1573 ], [ 0, %1512 ]
  %1518 = sitofp i32 %1517 to float
  %1519 = fadd fast float %219, 5.000000e-01
  %1520 = call float @dx.op.unary.f32(i32 22, float %1519)  ; Frc(value)
  %1521 = fadd fast float %1518, %1520
  %1522 = sitofp i32 %1358 to float
  %1523 = fdiv fast float %1521, %1522
  %1524 = fmul fast float %1523, %1523
  %1525 = fsub fast float %1524, %1523
  %1526 = fmul fast float %1525, %1356
  %1527 = fadd fast float %1526, %1523
  %1528 = call float @dx.op.binary.f32(i32 36, float %1527, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1529 = fmul fast float %1528, %1488
  %1530 = fmul fast float %1528, %1490
  %1531 = fmul fast float %1528, %1491
  %1532 = fadd fast float %1529, %1499
  %1533 = fadd fast float %1530, %1500
  %1534 = fadd fast float %1531, %1432
  %1535 = fdiv fast float 1.000000e+00, %1534
  %1536 = icmp ne i32 %1373, 0
  %1537 = fmul fast float %1508, %1528
  %1538 = call float @dx.op.binary.f32(i32 36, float %1537, float %1374)  ; FMin(a,b)
  %1539 = select i1 %1536, float %1538, float 0.000000e+00
  %1540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1532, float %1533, float undef, float undef, i32 0, i32 0, i32 undef, float %1539)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = fcmp fast ogt float %1541, -1.000000e+00
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 1
  %1545 = select i1 %1542, float %1544, float 1.000000e+00
  %1546 = fadd fast float %1541, 1.000000e+00
  %1547 = fmul fast float %1545, %1546
  %1548 = call float @dx.op.unary.f32(i32 6, float %1547)  ; FAbs(value)
  %1549 = fmul fast float %1548, %1510
  %1550 = fsub fast float %1535, %1548
  %1551 = fsub fast float %1550, %1549
  %1552 = fcmp fast ogt float %1551, 0.000000e+00
  %1553 = fcmp fast ogt float %1344, 0.000000e+00
  br i1 %1553, label %1554, label %1557, !dx.controlflow.hints !49

; <label>:1554                                    ; preds = %1513
  %1555 = fsub fast float %1535, %1516
  %1556 = call float @dx.op.binary.f32(i32 35, float %1555, float %1344)  ; FMax(a,b)
  br label %1557

; <label>:1557                                    ; preds = %1554, %1513
  %1558 = phi float [ %1556, %1554 ], [ %1357, %1513 ]
  %1559 = fcmp fast olt float %1551, %1558
  %1560 = fcmp uge float %1541, -1.000000e+00
  %1561 = or i1 %55, %1560
  %1562 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1563 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1564 = fcmp fast oeq float %1532, %1562
  %1565 = fcmp fast oeq float %1533, %1563
  %1566 = and i1 %1564, %1565
  %1567 = and i1 %1561, %1566
  %1568 = and i1 %1552, %1559
  %1569 = and i1 %1568, %1567
  %1570 = fcmp fast ogt float %1528, %1507
  %1571 = and i1 %1570, %1569
  %1572 = zext i1 %1571 to i32
  br i1 %1571, label %1576, label %1573, !dx.controlflow.hints !50

; <label>:1573                                    ; preds = %1557
  %1574 = add nuw nsw i32 %1517, 1
  %1575 = icmp slt i32 %1517, %1358
  br i1 %1575, label %1513, label %1576

; <label>:1576                                    ; preds = %1573, %1557
  br label %1577

; <label>:1577                                    ; preds = %1576, %1362
  %1578 = phi i32 [ 0, %1362 ], [ %1572, %1576 ]
  %1579 = phi float [ %62, %1362 ], [ %1548, %1576 ]
  %1580 = phi float [ %62, %1362 ], [ %1514, %1576 ]
  %1581 = phi float [ %62, %1362 ], [ %1535, %1576 ]
  %1582 = phi float [ %62, %1362 ], [ %1515, %1576 ]
  %1583 = fsub fast float %1582, %1580
  %1584 = fsub fast float %1581, %1579
  %1585 = fsub fast float %1583, %1584
  %1586 = fcmp fast une float %1585, 0.000000e+00
  %1587 = fmul fast float %1583, %1581
  %1588 = fmul fast float %1582, %1584
  %1589 = fsub fast float %1587, %1588
  %1590 = fdiv fast float 1.000000e+00, %1585
  %1591 = fmul fast float %1589, %1590
  %1592 = select i1 %1586, float %1591, float %1581
  %1593 = fdiv fast float 1.000000e+00, %1592
  %1594 = fsub fast float %1593, %1432
  %1595 = fdiv fast float %1594, %1491
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = fmul fast float %1596, %1488
  %1598 = fmul fast float %1596, %1490
  %1599 = fadd fast float %1597, %1499
  %1600 = fadd fast float %1598, %1500
  %1601 = fadd fast float %1599, -5.000000e-01
  %1602 = fadd fast float %1600, -5.000000e-01
  %1603 = call float @dx.op.unary.f32(i32 6, float %1601)  ; FAbs(value)
  %1604 = call float @dx.op.unary.f32(i32 6, float %1602)  ; FAbs(value)
  %1605 = fadd fast float %1603, -5.000000e-01
  %1606 = fadd fast float %1604, -5.000000e-01
  %1607 = call float @dx.op.binary.f32(i32 35, float %1605, float %1606)  ; FMax(a,b)
  %1608 = fcmp fast olt float %1607, 0.000000e+00
  %1609 = icmp ne i32 %1578, 0
  %1610 = and i1 %1609, %1608
  %1611 = select i1 %1610, float 0.000000e+00, float 1.000000e+00
  br label %1612

; <label>:1612                                    ; preds = %1577, %1355
  %1613 = phi float [ %1611, %1577 ], [ 1.000000e+00, %1355 ]
  %1614 = fmul fast float %1613, %1329
  %1615 = fmul fast float %1613, %1329
  %1616 = fmul fast float %1613, %1329
  br label %1617

; <label>:1617                                    ; preds = %1612, %1326
  %1618 = phi float [ %1614, %1612 ], [ %1329, %1326 ]
  %1619 = phi float [ %1615, %1612 ], [ %1329, %1326 ]
  %1620 = phi float [ %1616, %1612 ], [ %1329, %1326 ]
  %1621 = call float @dx.op.binary.f32(i32 36, float %1619, float %1620)  ; FMin(a,b)
  %1622 = call float @dx.op.binary.f32(i32 36, float %1618, float %1621)  ; FMin(a,b)
  %1623 = fcmp fast ogt float %1622, 0x3F10000000000000
  %1624 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1623)  ; WaveAnyTrue(cond)
  %1625 = select i1 %1624, i32 %285, i32 0
  %1626 = or i32 %280, %1625
  %1627 = lshr i32 %224, 5
  %1628 = lshr i32 %225, 5
  %1629 = fcmp fast olt float %1618, 0x3F10000000000000
  %1630 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1629)  ; WaveAllTrue(cond)
  %1631 = fcmp fast ogt float %1618, 0x3FEFFF8000000000
  %1632 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1631)  ; WaveAllTrue(cond)
  %1633 = or i1 %1630, %1632
  %1634 = xor i1 %1633, true
  %1635 = and i32 %225, 16
  %1636 = lshr i32 %224, 1
  %1637 = and i32 %1636, 8
  %1638 = icmp eq i32 %1635, 0
  %1639 = or i32 %1637, %36
  %1640 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1640, label %1641, label %1683, !dx.controlflow.hints !51

; <label>:1641                                    ; preds = %1617
  %1642 = shl i32 1, %1639
  %1643 = select i1 %1632, i32 %1642, i32 0
  %1644 = shl i32 65536, %1639
  %1645 = select i1 %1630, i32 %1644, i32 0
  %1646 = or i32 %1643, %1645
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1653, label %1648, !dx.controlflow.hints !52

; <label>:1648                                    ; preds = %1641
  br i1 %1638, label %1651, label %1649, !dx.controlflow.hints !53

; <label>:1649                                    ; preds = %1648
  %1650 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1627, i32 %1628, i32 %283, i32 %1646)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1653

; <label>:1651                                    ; preds = %1648
  %1652 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %1627, i32 %1628, i32 %283, i32 %1646)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1653

; <label>:1653                                    ; preds = %1651, %1649, %1641
  br i1 %1633, label %1683, label %1654

; <label>:1654                                    ; preds = %1653
  br label %1655

; <label>:1655                                    ; preds = %1680, %1654
  %1656 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %1627, i32 %1628, i32 %283, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1657 = and i32 %1656, 3
  %1658 = icmp eq i32 %1657, 0
  br i1 %1658, label %1659, label %1680, !dx.controlflow.hints !54

; <label>:1659                                    ; preds = %1655
  %1660 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.i32 %1661, 3
  %1663 = call i32 @dx.op.binary.i32(i32 40, i32 %1662, i32 %1660)  ; UMin(a,b)
  %1664 = extractvalue %dx.types.CBufRet.i32 %1661, 2
  %1665 = udiv i32 %1663, %1664
  %1666 = urem i32 %1663, %1664
  %1667 = extractvalue %dx.types.CBufRet.i32 %1661, 1
  %1668 = urem i32 %1666, %1667
  %1669 = udiv i32 %1666, %1667
  %1670 = shl i32 %1668, 6
  %1671 = and i32 %1670, 32704
  %1672 = shl i32 %1669, 15
  %1673 = and i32 %1672, 8355840
  %1674 = shl i32 %1665, 23
  %1675 = and i32 %1674, 2139095040
  %1676 = or i32 %1675, %1671
  %1677 = or i32 %1676, %1673
  %1678 = or i32 %1677, 3
  %1679 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %1627, i32 %1628, i32 %283, i32 %1678)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1683

; <label>:1680                                    ; preds = %1655
  %1681 = icmp eq i32 %1657, 3
  br i1 %1681, label %1682, label %1655, !dx.controlflow.hints !55

; <label>:1682                                    ; preds = %1680
  br label %1683

; <label>:1683                                    ; preds = %1682, %1659, %1653, %1617
  %1684 = phi i32 [ 0, %1653 ], [ %1678, %1659 ], [ 0, %1617 ], [ %1656, %1682 ]
  %1685 = phi i1 [ false, %1653 ], [ %1634, %1659 ], [ %1634, %1617 ], [ %1634, %1682 ]
  br i1 %1685, label %1686, label %1702, !dx.controlflow.hints !56

; <label>:1686                                    ; preds = %1683
  %1687 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1684)  ; WaveReadLaneFirst(value)
  %1688 = lshr i32 %1687, 23
  %1689 = and i32 %1688, 255
  %1690 = and i32 %224, 31
  %1691 = and i32 %225, 31
  %1692 = lshr i32 %1687, 1
  %1693 = and i32 %1692, 16352
  %1694 = lshr i32 %1687, 10
  %1695 = and i32 %1694, 8160
  %1696 = or i32 %1693, %1690
  %1697 = or i32 %1695, %1691
  %1698 = fmul fast float %1618, 2.550000e+02
  %1699 = fadd fast float %1698, %218
  %1700 = call float @dx.op.unary.f32(i32 27, float %1699)  ; Round_ni(value)
  %1701 = fmul fast float %1700, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %1696, i32 %1697, i32 %1689, float %1701, float %1701, float %1701, float %1701, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1702

; <label>:1702                                    ; preds = %1686, %1683
  %1703 = icmp eq i32 %281, %285
  br i1 %1703, label %1704, label %279, !llvm.loop !57

; <label>:1704                                    ; preds = %1702
  br label %1705

; <label>:1705                                    ; preds = %1704, %251
  %1706 = phi i32 [ 0, %251 ], [ %1626, %1704 ]
  %1707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.i32 %1707, 0
  %1709 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %1708, i32 %252)  ; UMad(a,b,c)
  %1710 = shl i32 %1709, 2
  %1711 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1710, i32 undef, i32 undef, i32 %1706)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1712 = add i32 %252, 1
  %1713 = icmp ugt i32 %1712, %248
  br i1 %1713, label %1714, label %251

; <label>:1714                                    ; preds = %1705
  br label %1715

; <label>:1715                                    ; preds = %1714, %223, %0
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
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
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

