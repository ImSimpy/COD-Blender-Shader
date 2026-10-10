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
; shader hash: 6be1bb907336f99a99b16a68bd3d3e0e
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
  %65 = fmul fast float %50, %63
  %66 = fmul fast float %51, %64
  %67 = fmul fast float %65, 2.000000e+00
  %68 = fmul fast float %66, 2.000000e+00
  %69 = fsub fast float 1.000000e+00, %67
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
  %148 = fmul fast float %63, %48
  %149 = fmul fast float %64, %49
  %150 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %17, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = extractvalue %dx.types.ResRet.f32 %150, 1
  %153 = extractvalue %dx.types.ResRet.f32 %150, 2
  %154 = fcmp fast ogt float %151, -1.000000e+00
  %155 = select i1 %154, float %57, float 1.000000e+00
  %156 = fadd fast float %151, 1.000000e+00
  %157 = fmul fast float %155, %156
  %158 = call float @dx.op.unary.f32(i32 6, float %157)  ; FAbs(value)
  %159 = fcmp fast ogt float %152, -1.000000e+00
  %160 = select i1 %159, float %57, float 1.000000e+00
  %161 = fadd fast float %152, 1.000000e+00
  %162 = fmul fast float %160, %161
  %163 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %164 = fcmp fast ogt float %153, -1.000000e+00
  %165 = select i1 %164, float %57, float 1.000000e+00
  %166 = fadd fast float %153, 1.000000e+00
  %167 = fmul fast float %165, %166
  %168 = call float @dx.op.unary.f32(i32 6, float %167)  ; FAbs(value)
  %169 = fadd fast float %48, 1.000000e+00
  %170 = fmul fast float %63, %169
  %171 = fadd fast float %49, 1.000000e+00
  %172 = fmul fast float %64, %171
  %173 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %17, float %170, float %172, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 2
  %176 = fcmp fast ogt float %174, -1.000000e+00
  %177 = select i1 %176, float %57, float 1.000000e+00
  %178 = fadd fast float %174, 1.000000e+00
  %179 = fmul fast float %177, %178
  %180 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %181 = fcmp fast ogt float %175, -1.000000e+00
  %182 = select i1 %181, float %57, float 1.000000e+00
  %183 = fadd fast float %175, 1.000000e+00
  %184 = fmul fast float %182, %183
  %185 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %186 = fsub fast float %168, %163
  %187 = fsub fast float %180, %163
  %188 = fsub fast float %158, %163
  %189 = fsub fast float %185, %163
  %190 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %191 = call float @dx.op.unary.f32(i32 6, float %186)  ; FAbs(value)
  %192 = call float @dx.op.binary.f32(i32 35, float %191, float %190)  ; FMax(a,b)
  %193 = call float @dx.op.unary.f32(i32 6, float %189)  ; FAbs(value)
  %194 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %195 = call float @dx.op.binary.f32(i32 35, float %194, float %193)  ; FMax(a,b)
  %196 = fadd fast float %187, %186
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fadd fast float %189, %188
  %199 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %200 = fsub fast float %195, %199
  %201 = call float @dx.op.unary.f32(i32 6, float %200)  ; FAbs(value)
  %202 = fsub fast float %192, %197
  %203 = call float @dx.op.unary.f32(i32 6, float %202)  ; FAbs(value)
  %204 = call float @dx.op.binary.f32(i32 35, float %203, float %201)  ; FMax(a,b)
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fmul fast float %206, 0x3FE3C6EF40000000
  %208 = frem fast float %50, 2.560000e+02
  %209 = frem fast float %51, 2.560000e+02
  %210 = fptoui float %208 to i32
  %211 = fptoui float %209 to i32
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 2
  %215 = fadd fast float %213, %207
  %216 = fadd fast float %214, %207
  %217 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %218 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 0
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %1712, label %222, !dx.controlflow.hints !35

; <label>:222                                     ; preds = %0
  %223 = fptoui float %50 to i32
  %224 = fptoui float %51 to i32
  %225 = lshr i32 %223, 4
  %226 = lshr i32 %224, 4
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 0
  %229 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %228, i32 %225)  ; UMad(a,b,c)
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 0
  %232 = add nsw i32 %231, -1
  %233 = call i32 @dx.op.binary.i32(i32 37, i32 %232, i32 0)  ; IMax(a,b)
  %234 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %235 = fptoui float %234 to i32
  %236 = lshr i32 %235, 5
  %237 = call i32 @dx.op.binary.i32(i32 40, i32 %236, i32 8191)  ; UMin(a,b)
  %238 = shl i32 %237, 2
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = lshr i32 %240, 16
  %242 = and i32 %240, 65535
  %243 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %241, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %244 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %242, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %245 = lshr i32 %243, 5
  %246 = lshr i32 %244, 5
  %247 = call i32 @dx.op.binary.i32(i32 40, i32 %246, i32 %233)  ; UMin(a,b)
  %248 = icmp ugt i32 %245, %247
  br i1 %248, label %1712, label %249

; <label>:249                                     ; preds = %222
  br label %250

; <label>:250                                     ; preds = %1702, %249
  %251 = phi i32 [ %1709, %1702 ], [ %245, %249 ]
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 0
  %254 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %253, i32 %251)  ; UMad(a,b,c)
  %255 = shl i32 %254, 2
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = shl i32 %251, 5
  %259 = sub nsw i32 %241, %258
  %260 = call i32 @dx.op.binary.i32(i32 37, i32 %259, i32 0)  ; IMax(a,b)
  %261 = call i32 @dx.op.binary.i32(i32 38, i32 %260, i32 31)  ; IMin(a,b)
  %262 = sub nsw i32 1, %241
  %263 = add nsw i32 %262, %242
  %264 = call i32 @dx.op.binary.i32(i32 37, i32 %263, i32 0)  ; IMax(a,b)
  %265 = call i32 @dx.op.binary.i32(i32 38, i32 %264, i32 32)  ; IMin(a,b)
  %266 = and i32 %265, 31
  %267 = shl i32 -1, %266
  %268 = xor i32 %267, -1
  %269 = and i32 %261, 31
  %270 = shl i32 %268, %269
  %271 = icmp eq i32 %265, 32
  %272 = select i1 %271, i32 -1, i32 %270
  %273 = and i32 %272, %257
  %274 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %273, i8 1)  ; WaveActiveBit(value,op)
  %275 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %274)  ; WaveReadLaneFirst(value)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %1702, label %277

; <label>:277                                     ; preds = %250
  br label %278

; <label>:278                                     ; preds = %1699, %277
  %279 = phi i32 [ %1625, %1699 ], [ 0, %277 ]
  %280 = phi i32 [ %285, %1699 ], [ %275, %277 ]
  %281 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %280)  ; FirstbitLo(value)
  %282 = add i32 %281, %258
  %283 = and i32 %281, 31
  %284 = shl i32 1, %283
  %285 = xor i32 %284, %280
  %286 = mul i32 %282, 112
  %287 = add i32 %286, 16
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = add i32 %286, 28
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = add i32 %286, 32
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = extractvalue %dx.types.ResRet.f32 %296, 2
  %300 = add i32 %286, 44
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = add i32 %286, 48
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = extractvalue %dx.types.ResRet.f32 %304, 3
  %309 = add i32 %286, 64
  %310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = extractvalue %dx.types.ResRet.f32 %310, 1
  %313 = extractvalue %dx.types.ResRet.f32 %310, 2
  %314 = extractvalue %dx.types.ResRet.f32 %310, 3
  %315 = add i32 %286, 92
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = uitofp i32 %318 to float
  %320 = lshr i32 %317, 16
  %321 = uitofp i32 %320 to float
  %322 = and i32 %294, 65535
  %323 = and i32 %294, 50331648
  %324 = icmp eq i32 %323, 33554432
  %325 = call float @dx.op.dot3.f32(i32 55, float %297, float %298, float %299, float %297, float %298, float %299)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = fsub fast float %116, %305
  %327 = fsub fast float %117, %306
  %328 = fsub fast float %118, %307
  %329 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float %297, float %298, float %299)  ; Dot3(ax,ay,az,bx,by,bz)
  %330 = fdiv fast float %329, %325
  %331 = call float @dx.op.binary.f32(i32 35, float %330, float -1.000000e+00)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 36, float %331, float 1.000000e+00)  ; FMin(a,b)
  %333 = fmul fast float %332, %297
  %334 = fmul fast float %332, %298
  %335 = fmul fast float %332, %299
  %336 = fadd fast float %333, %305
  %337 = fadd fast float %334, %306
  %338 = fadd fast float %335, %307
  %339 = fsub fast float %336, %116
  %340 = fsub fast float %337, %117
  %341 = fsub fast float %338, %118
  %342 = call float @dx.op.dot3.f32(i32 55, float %339, float %340, float %341, float %339, float %340, float %341)  ; Dot3(ax,ay,az,bx,by,bz)
  %343 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %344 = fdiv fast float 1.000000e+00, %343
  %345 = fmul fast float %339, %344
  %346 = fmul fast float %340, %344
  %347 = fmul fast float %341, %344
  br i1 %324, label %348, label %372, !dx.controlflow.hints !36

; <label>:348                                     ; preds = %278
  %349 = fmul fast float %313, %289
  %350 = fmul fast float %313, %290
  %351 = fmul fast float %313, %291
  %352 = fsub fast float %349, %116
  %353 = fadd fast float %352, %336
  %354 = fsub fast float %350, %117
  %355 = fadd fast float %354, %337
  %356 = fsub fast float %351, %118
  %357 = fadd fast float %356, %338
  %358 = call float @dx.op.dot3.f32(i32 55, float %353, float %355, float %357, float %353, float %355, float %357)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = call float @dx.op.unary.f32(i32 25, float %358)  ; Rsqrt(value)
  %360 = fmul fast float %359, %353
  %361 = fmul fast float %359, %355
  %362 = fmul fast float %359, %357
  %363 = fsub fast float %116, %336
  %364 = fsub fast float %117, %337
  %365 = fsub fast float %118, %338
  %366 = fsub fast float -0.000000e+00, %363
  %367 = fsub fast float -0.000000e+00, %364
  %368 = fsub fast float -0.000000e+00, %365
  %369 = call float @dx.op.dot3.f32(i32 55, float %366, float %367, float %368, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = fcmp fast ogt float %369, 0.000000e+00
  %371 = uitofp i1 %370 to float
  br label %372

; <label>:372                                     ; preds = %348, %278
  %373 = phi float [ %371, %348 ], [ 1.000000e+00, %278 ]
  %374 = phi float [ %360, %348 ], [ %345, %278 ]
  %375 = phi float [ %361, %348 ], [ %346, %278 ]
  %376 = phi float [ %362, %348 ], [ %347, %278 ]
  %377 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float %374, float %375, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = fmul fast float %377, %377
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %380 = fsub fast float 1.000000e+00, %379
  %381 = fmul fast float %380, 5.000000e-01
  %382 = fcmp fast ogt float %377, 0.000000e+00
  %383 = fsub fast float 1.000000e+00, %381
  %384 = select i1 %382, float %381, float %383
  %385 = fmul fast float %384, %321
  %386 = fadd fast float %385, %319
  %387 = fmul fast float %386, 0x3EF0001000000000
  %388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %387, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = fmul fast float %377, %311
  %391 = fadd fast float %390, %312
  %392 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %393 = select i1 %324, float 1.000000e+00, float %392
  %394 = select i1 %324, float %392, float 1.000000e+00
  %395 = fmul fast float %343, %308
  %396 = fsub fast float 1.000000e+00, %395
  %397 = fmul fast float %396, %314
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %399 = fmul fast float %398, %394
  %400 = fmul fast float %399, 2.000000e+00
  %401 = fsub fast float 3.000000e+00, %400
  %402 = fmul fast float %389, %373
  %403 = fmul fast float %399, %399
  %404 = fmul fast float %403, %402
  %405 = fmul fast float %404, %401
  %406 = icmp ne i32 %322, 255
  %407 = call float @dx.op.binary.f32(i32 36, float %405, float %405)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 36, float %405, float %407)  ; FMin(a,b)
  %409 = fcmp fast ogt float %408, 0.000000e+00
  %410 = and i1 %406, %409
  br i1 %410, label %411, label %1325, !dx.controlflow.hints !37

; <label>:411                                     ; preds = %372
  %412 = mul nuw nsw i32 %322, 176
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = extractvalue %dx.types.ResRet.f32 %413, 3
  %418 = add nuw nsw i32 %412, 16
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = add nuw nsw i32 %412, 32
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = extractvalue %dx.types.ResRet.f32 %423, 3
  %428 = add nuw nsw i32 %412, 48
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = extractvalue %dx.types.ResRet.f32 %429, 3
  %434 = add nuw nsw i32 %412, 64
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = add nuw nsw i32 %412, 80
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = add nuw nsw i32 %412, 96
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = extractvalue %dx.types.ResRet.f32 %447, 3
  %452 = add nuw nsw i32 %412, 112
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  %458 = add nuw nsw i32 %412, 128
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = add nuw nsw i32 %412, 144
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = add nuw nsw i32 %412, 160
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = bitcast float %421 to i32
  %477 = bitcast float %427 to i32
  %478 = and i32 %477, 1
  %479 = icmp ne i32 %478, 0
  %480 = and i32 %477, 2
  %481 = fmul fast float %426, %145
  %482 = fmul fast float %426, %146
  %483 = fmul fast float %426, %147
  %484 = fadd fast float %481, %116
  %485 = fadd fast float %482, %117
  %486 = fadd fast float %483, %118
  %487 = fmul fast float %484, %430
  %488 = call float @dx.op.tertiary.f32(i32 46, float %485, float %436, float %487)  ; FMad(a,b,c)
  %489 = call float @dx.op.tertiary.f32(i32 46, float %486, float %442, float %488)  ; FMad(a,b,c)
  %490 = fadd fast float %489, %448
  %491 = fmul fast float %484, %431
  %492 = call float @dx.op.tertiary.f32(i32 46, float %485, float %437, float %491)  ; FMad(a,b,c)
  %493 = call float @dx.op.tertiary.f32(i32 46, float %486, float %443, float %492)  ; FMad(a,b,c)
  %494 = fadd fast float %493, %449
  %495 = fmul fast float %484, %432
  %496 = call float @dx.op.tertiary.f32(i32 46, float %485, float %438, float %495)  ; FMad(a,b,c)
  %497 = call float @dx.op.tertiary.f32(i32 46, float %486, float %444, float %496)  ; FMad(a,b,c)
  %498 = fadd fast float %497, %450
  %499 = fmul fast float %484, %433
  %500 = call float @dx.op.tertiary.f32(i32 46, float %485, float %439, float %499)  ; FMad(a,b,c)
  %501 = call float @dx.op.tertiary.f32(i32 46, float %486, float %445, float %500)  ; FMad(a,b,c)
  %502 = fadd fast float %501, %451
  %503 = fdiv fast float %490, %502
  %504 = fdiv fast float %494, %502
  %505 = fdiv fast float %498, %502
  %506 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %505)  ; FMax(a,b)
  %507 = fmul fast float %217, 0x401921FB60000000
  %508 = call float @dx.op.unary.f32(i32 13, float %507)  ; Sin(value)
  %509 = call float @dx.op.unary.f32(i32 12, float %507)  ; Cos(value)
  %510 = fsub fast float -0.000000e+00, %508
  %511 = icmp eq i32 %480, 0
  br i1 %511, label %512, label %583, !dx.controlflow.hints !38

; <label>:512                                     ; preds = %411
  %513 = fmul fast float %509, %425
  %514 = call float @dx.op.tertiary.f32(i32 46, float %508, float %425, float 0.000000e+00)  ; FMad(a,b,c)
  %515 = fmul fast float %425, %510
  %516 = call float @dx.op.tertiary.f32(i32 46, float %509, float %425, float 0.000000e+00)  ; FMad(a,b,c)
  br label %517

; <label>:517                                     ; preds = %517, %512
  %518 = phi float [ 0.000000e+00, %512 ], [ %550, %517 ]
  %519 = phi float [ 0.000000e+00, %512 ], [ %552, %517 ]
  %520 = phi i32 [ 0, %512 ], [ %553, %517 ]
  %521 = mul i32 %520, 2
  %522 = add i32 0, %521
  %523 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %522
  %524 = load float, float* %523, align 4
  %525 = mul i32 %520, 2
  %526 = add i32 1, %525
  %527 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %526
  %528 = load float, float* %527, align 4
  %529 = fmul fast float %513, %524
  %530 = call float @dx.op.tertiary.f32(i32 46, float %528, float %515, float %529)  ; FMad(a,b,c)
  %531 = fmul fast float %524, %514
  %532 = call float @dx.op.tertiary.f32(i32 46, float %528, float %516, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %530, %503
  %534 = fadd fast float %532, %504
  %535 = fmul fast float %533, %420
  %536 = fmul fast float %534, %420
  %537 = call float @dx.op.binary.f32(i32 35, float %535, float %416)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 35, float %536, float %416)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 36, float %537, float %417)  ; FMin(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float %538, float %417)  ; FMin(a,b)
  %541 = fadd fast float %539, %414
  %542 = fadd fast float %540, %415
  %543 = uitofp i32 %476 to float
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %541, float %542, float %543, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = fsub fast float %545, %506
  %547 = fsub fast float %546, %424
  %548 = fcmp fast ogt float %547, 0.000000e+00
  %549 = select i1 %548, float 1.000000e+00, float 0.000000e+00
  %550 = fadd fast float %549, %518
  %551 = select i1 %548, float %547, float 0.000000e+00
  %552 = fadd fast float %551, %519
  %553 = add nuw nsw i32 %520, 1
  %554 = icmp eq i32 %553, 8
  br i1 %554, label %555, label %517

; <label>:555                                     ; preds = %517
  %556 = fdiv fast float 1.000000e+00, %550
  %557 = fmul fast float %556, %552
  %558 = fdiv fast float 1.000000e+00, %506
  %559 = fmul fast float %557, %558
  %560 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %561 = call float @dx.op.binary.f32(i32 35, float %560, float 0.000000e+00)  ; FMax(a,b)
  %562 = fmul fast float %550, 1.250000e-01
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = fmul fast float %563, 2.000000e+00
  %565 = fadd fast float %564, -1.000000e+00
  %566 = fcmp fast ogt float %565, 0.000000e+00
  %567 = fcmp fast olt float %565, 0.000000e+00
  %568 = zext i1 %566 to i32
  %569 = zext i1 %567 to i32
  %570 = sub nsw i32 %568, %569
  %571 = sitofp i32 %570 to float
  %572 = fmul fast float %571, %565
  %573 = fsub fast float 1.000000e+00, %572
  %574 = fmul fast float %573, %573
  %575 = fmul fast float %574, %573
  %576 = fsub fast float %573, %575
  %577 = fmul fast float %576, %561
  %578 = fsub fast float 1.000000e+00, %575
  %579 = fsub fast float %578, %577
  %580 = fmul fast float %571, 5.000000e-01
  %581 = fmul fast float %580, %579
  %582 = fsub fast float 5.000000e-01, %581
  br label %1198

; <label>:583                                     ; preds = %411
  %584 = fsub fast float 1.000000e+00, %506
  %585 = fmul fast float %584, 5.000000e-01
  %586 = fadd fast float %585, %506
  %587 = fsub fast float %484, %305
  %588 = fsub fast float %485, %306
  %589 = fsub fast float %486, %307
  %590 = call float @dx.op.dot3.f32(i32 55, float %587, float %588, float %589, float %297, float %298, float %299)  ; Dot3(ax,ay,az,bx,by,bz)
  %591 = fdiv fast float %590, %325
  %592 = call float @dx.op.binary.f32(i32 35, float %591, float -1.000000e+00)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 36, float %592, float 1.000000e+00)  ; FMin(a,b)
  %594 = fmul fast float %593, %297
  %595 = fmul fast float %593, %298
  %596 = fmul fast float %593, %299
  %597 = fsub fast float %587, %594
  %598 = fsub fast float %588, %595
  %599 = fsub fast float %589, %596
  %600 = call float @dx.op.dot3.f32(i32 55, float %597, float %598, float %599, float %597, float %598, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = call float @dx.op.unary.f32(i32 25, float %600)  ; Rsqrt(value)
  %602 = fmul fast float %597, %601
  %603 = fmul fast float %598, %601
  %604 = fmul fast float %599, %601
  %605 = call float @dx.op.unary.f32(i32 25, float %325)  ; Rsqrt(value)
  %606 = fmul fast float %605, %297
  %607 = fmul fast float %605, %298
  %608 = fmul fast float %605, %299
  br i1 %479, label %609, label %613, !dx.controlflow.hints !39

; <label>:609                                     ; preds = %583
  %610 = fcmp fast olt float %603, 0x3FE6666660000000
  %611 = select i1 %610, float 1.000000e+00, float 0.000000e+00
  %612 = select i1 %610, float 0.000000e+00, float 1.000000e+00
  br label %613

; <label>:613                                     ; preds = %609, %583
  %614 = phi float [ 0.000000e+00, %609 ], [ %606, %583 ]
  %615 = phi float [ %611, %609 ], [ %607, %583 ]
  %616 = phi float [ %612, %609 ], [ %608, %583 ]
  %617 = fmul fast float %615, %604
  %618 = fmul fast float %616, %603
  %619 = fsub fast float %617, %618
  %620 = fmul fast float %616, %602
  %621 = fmul fast float %614, %604
  %622 = fsub fast float %620, %621
  %623 = fmul fast float %614, %603
  %624 = fmul fast float %615, %602
  %625 = fsub fast float %623, %624
  %626 = call float @dx.op.dot3.f32(i32 55, float %619, float %622, float %625, float %619, float %622, float %625)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 25, float %626)  ; Rsqrt(value)
  %628 = fmul fast float %627, %302
  %629 = fmul fast float %628, %619
  %630 = fmul fast float %628, %622
  %631 = fmul fast float %625, %302
  %632 = fmul fast float %631, %627
  %633 = fmul fast float %503, %454
  %634 = call float @dx.op.tertiary.f32(i32 46, float %504, float %460, float %633)  ; FMad(a,b,c)
  %635 = call float @dx.op.tertiary.f32(i32 46, float %586, float %466, float %634)  ; FMad(a,b,c)
  %636 = fadd fast float %635, %472
  %637 = fmul fast float %503, %455
  %638 = call float @dx.op.tertiary.f32(i32 46, float %504, float %461, float %637)  ; FMad(a,b,c)
  %639 = call float @dx.op.tertiary.f32(i32 46, float %586, float %467, float %638)  ; FMad(a,b,c)
  %640 = fadd fast float %639, %473
  %641 = fmul fast float %503, %456
  %642 = call float @dx.op.tertiary.f32(i32 46, float %504, float %462, float %641)  ; FMad(a,b,c)
  %643 = call float @dx.op.tertiary.f32(i32 46, float %586, float %468, float %642)  ; FMad(a,b,c)
  %644 = fadd fast float %643, %474
  %645 = fmul fast float %503, %457
  %646 = call float @dx.op.tertiary.f32(i32 46, float %504, float %463, float %645)  ; FMad(a,b,c)
  %647 = call float @dx.op.tertiary.f32(i32 46, float %586, float %469, float %646)  ; FMad(a,b,c)
  %648 = fadd fast float %647, %475
  %649 = fdiv fast float 1.000000e+00, %648
  %650 = fmul fast float %649, %636
  %651 = fmul fast float %649, %640
  %652 = fmul fast float %649, %644
  %653 = fsub fast float -0.000000e+00, %602
  %654 = fsub fast float -0.000000e+00, %603
  %655 = fsub fast float -0.000000e+00, %604
  %656 = fsub fast float %305, %629
  %657 = fsub fast float %306, %630
  %658 = fsub fast float %307, %632
  %659 = fsub fast float %650, %656
  %660 = fsub fast float %651, %657
  %661 = fsub fast float %652, %658
  %662 = call float @dx.op.dot3.f32(i32 55, float %659, float %660, float %661, float %659, float %660, float %661)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = call float @dx.op.unary.f32(i32 25, float %662)  ; Rsqrt(value)
  %664 = fmul fast float %659, %663
  %665 = fmul fast float %660, %663
  %666 = fmul fast float %661, %663
  %667 = fsub fast float %484, %656
  %668 = fsub fast float %485, %657
  %669 = fsub fast float %486, %658
  %670 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %667, float %668, float %669)  ; Dot3(ax,ay,az,bx,by,bz)
  %671 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %664, float %665, float %666)  ; Dot3(ax,ay,az,bx,by,bz)
  %672 = fdiv fast float 1.000000e+00, %671
  %673 = fmul fast float %672, %670
  %674 = fmul fast float %673, %664
  %675 = fmul fast float %673, %665
  %676 = fmul fast float %673, %666
  %677 = fadd fast float %674, %656
  %678 = fadd fast float %675, %657
  %679 = fadd fast float %676, %658
  %680 = fadd fast float %629, %305
  %681 = fadd fast float %630, %306
  %682 = fadd fast float %632, %307
  %683 = fsub fast float %650, %680
  %684 = fsub fast float %651, %681
  %685 = fsub fast float %652, %682
  %686 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %683, float %684, float %685)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = call float @dx.op.unary.f32(i32 25, float %686)  ; Rsqrt(value)
  %688 = fmul fast float %687, %683
  %689 = fmul fast float %687, %684
  %690 = fmul fast float %687, %685
  %691 = fsub fast float %484, %680
  %692 = fsub fast float %485, %681
  %693 = fsub fast float %486, %682
  %694 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %691, float %692, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %688, float %689, float %690)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = fdiv fast float 1.000000e+00, %695
  %697 = fmul fast float %696, %694
  %698 = fmul fast float %697, %688
  %699 = fmul fast float %697, %689
  %700 = fmul fast float %697, %690
  %701 = fadd fast float %698, %680
  %702 = fadd fast float %699, %681
  %703 = fadd fast float %700, %682
  %704 = fmul fast float %677, %430
  %705 = call float @dx.op.tertiary.f32(i32 46, float %678, float %436, float %704)  ; FMad(a,b,c)
  %706 = call float @dx.op.tertiary.f32(i32 46, float %679, float %442, float %705)  ; FMad(a,b,c)
  %707 = fadd fast float %706, %448
  %708 = fmul fast float %677, %431
  %709 = call float @dx.op.tertiary.f32(i32 46, float %678, float %437, float %708)  ; FMad(a,b,c)
  %710 = call float @dx.op.tertiary.f32(i32 46, float %679, float %443, float %709)  ; FMad(a,b,c)
  %711 = fadd fast float %710, %449
  %712 = fmul fast float %677, %433
  %713 = call float @dx.op.tertiary.f32(i32 46, float %678, float %439, float %712)  ; FMad(a,b,c)
  %714 = call float @dx.op.tertiary.f32(i32 46, float %679, float %445, float %713)  ; FMad(a,b,c)
  %715 = fadd fast float %714, %451
  %716 = fmul fast float %701, %430
  %717 = call float @dx.op.tertiary.f32(i32 46, float %702, float %436, float %716)  ; FMad(a,b,c)
  %718 = call float @dx.op.tertiary.f32(i32 46, float %703, float %442, float %717)  ; FMad(a,b,c)
  %719 = fadd fast float %718, %448
  %720 = fmul fast float %701, %431
  %721 = call float @dx.op.tertiary.f32(i32 46, float %702, float %437, float %720)  ; FMad(a,b,c)
  %722 = call float @dx.op.tertiary.f32(i32 46, float %703, float %443, float %721)  ; FMad(a,b,c)
  %723 = fadd fast float %722, %449
  %724 = fmul fast float %701, %433
  %725 = call float @dx.op.tertiary.f32(i32 46, float %702, float %439, float %724)  ; FMad(a,b,c)
  %726 = call float @dx.op.tertiary.f32(i32 46, float %703, float %445, float %725)  ; FMad(a,b,c)
  %727 = fadd fast float %726, %451
  %728 = fdiv fast float 1.000000e+00, %715
  %729 = fmul fast float %728, %707
  %730 = fmul fast float %728, %711
  %731 = fdiv fast float 1.000000e+00, %727
  %732 = fmul fast float %731, %719
  %733 = fmul fast float %731, %723
  %734 = fsub fast float %732, %729
  %735 = fsub fast float %733, %730
  %736 = call float @dx.op.dot2.f32(i32 54, float %734, float %735, float %734, float %735)  ; Dot2(ax,ay,bx,by)
  %737 = call float @dx.op.unary.f32(i32 25, float %736)  ; Rsqrt(value)
  %738 = fmul fast float %734, %737
  %739 = fmul fast float %735, %737
  %740 = fmul fast float %734, %734
  %741 = fmul fast float %735, %735
  %742 = fadd fast float %740, %741
  %743 = call float @dx.op.unary.f32(i32 24, float %742)  ; Sqrt(value)
  %744 = fmul fast float %743, 5.000000e-01
  br i1 %479, label %837, label %745, !dx.controlflow.hints !40

; <label>:745                                     ; preds = %613
  %746 = fsub fast float %305, %297
  %747 = fsub fast float %306, %298
  %748 = fsub fast float %307, %299
  %749 = fsub fast float %650, %746
  %750 = fsub fast float %651, %747
  %751 = fsub fast float %652, %748
  %752 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %749, float %750, float %751)  ; Dot3(ax,ay,az,bx,by,bz)
  %753 = call float @dx.op.unary.f32(i32 25, float %752)  ; Rsqrt(value)
  %754 = fmul fast float %753, %749
  %755 = fmul fast float %753, %750
  %756 = fmul fast float %753, %751
  %757 = fsub fast float %484, %746
  %758 = fsub fast float %485, %747
  %759 = fsub fast float %486, %748
  %760 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %757, float %758, float %759)  ; Dot3(ax,ay,az,bx,by,bz)
  %761 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %754, float %755, float %756)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = fdiv fast float 1.000000e+00, %761
  %763 = fmul fast float %762, %760
  %764 = fmul fast float %763, %754
  %765 = fmul fast float %763, %755
  %766 = fmul fast float %763, %756
  %767 = fadd fast float %764, %746
  %768 = fadd fast float %765, %747
  %769 = fadd fast float %766, %748
  %770 = fadd fast float %305, %297
  %771 = fadd fast float %306, %298
  %772 = fadd fast float %307, %299
  %773 = fsub fast float %650, %770
  %774 = fsub fast float %651, %771
  %775 = fsub fast float %652, %772
  %776 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float %773, float %774, float %775)  ; Dot3(ax,ay,az,bx,by,bz)
  %777 = call float @dx.op.unary.f32(i32 25, float %776)  ; Rsqrt(value)
  %778 = fmul fast float %777, %773
  %779 = fmul fast float %777, %774
  %780 = fmul fast float %777, %775
  %781 = fsub fast float %484, %770
  %782 = fsub fast float %485, %771
  %783 = fsub fast float %486, %772
  %784 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %781, float %782, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %778, float %779, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %786 = fdiv fast float 1.000000e+00, %785
  %787 = fmul fast float %786, %784
  %788 = fmul fast float %787, %778
  %789 = fmul fast float %787, %779
  %790 = fmul fast float %787, %780
  %791 = fadd fast float %788, %770
  %792 = fadd fast float %789, %771
  %793 = fadd fast float %790, %772
  %794 = fmul fast float %767, %430
  %795 = call float @dx.op.tertiary.f32(i32 46, float %768, float %436, float %794)  ; FMad(a,b,c)
  %796 = call float @dx.op.tertiary.f32(i32 46, float %769, float %442, float %795)  ; FMad(a,b,c)
  %797 = fadd fast float %796, %448
  %798 = fmul fast float %767, %431
  %799 = call float @dx.op.tertiary.f32(i32 46, float %768, float %437, float %798)  ; FMad(a,b,c)
  %800 = call float @dx.op.tertiary.f32(i32 46, float %769, float %443, float %799)  ; FMad(a,b,c)
  %801 = fadd fast float %800, %449
  %802 = fmul fast float %767, %433
  %803 = call float @dx.op.tertiary.f32(i32 46, float %768, float %439, float %802)  ; FMad(a,b,c)
  %804 = call float @dx.op.tertiary.f32(i32 46, float %769, float %445, float %803)  ; FMad(a,b,c)
  %805 = fadd fast float %804, %451
  %806 = fmul fast float %791, %430
  %807 = call float @dx.op.tertiary.f32(i32 46, float %792, float %436, float %806)  ; FMad(a,b,c)
  %808 = call float @dx.op.tertiary.f32(i32 46, float %793, float %442, float %807)  ; FMad(a,b,c)
  %809 = fadd fast float %808, %448
  %810 = fmul fast float %791, %431
  %811 = call float @dx.op.tertiary.f32(i32 46, float %792, float %437, float %810)  ; FMad(a,b,c)
  %812 = call float @dx.op.tertiary.f32(i32 46, float %793, float %443, float %811)  ; FMad(a,b,c)
  %813 = fadd fast float %812, %449
  %814 = fmul fast float %791, %433
  %815 = call float @dx.op.tertiary.f32(i32 46, float %792, float %439, float %814)  ; FMad(a,b,c)
  %816 = call float @dx.op.tertiary.f32(i32 46, float %793, float %445, float %815)  ; FMad(a,b,c)
  %817 = fadd fast float %816, %451
  %818 = fdiv fast float 1.000000e+00, %805
  %819 = fmul fast float %818, %797
  %820 = fmul fast float %818, %801
  %821 = fdiv fast float 1.000000e+00, %817
  %822 = fmul fast float %821, %809
  %823 = fmul fast float %821, %813
  %824 = fsub fast float %822, %819
  %825 = fsub fast float %823, %820
  %826 = call float @dx.op.dot2.f32(i32 54, float %824, float %825, float %824, float %825)  ; Dot2(ax,ay,bx,by)
  %827 = call float @dx.op.unary.f32(i32 25, float %826)  ; Rsqrt(value)
  %828 = fmul fast float %824, %827
  %829 = fmul fast float %825, %827
  %830 = fmul fast float %824, %824
  %831 = fmul fast float %825, %825
  %832 = fadd fast float %830, %831
  %833 = call float @dx.op.unary.f32(i32 24, float %832)  ; Sqrt(value)
  %834 = fmul fast float %833, 5.000000e-01
  %835 = fcmp fast olt float %834, %744
  br i1 %835, label %836, label %837, !dx.controlflow.hints !41

; <label>:836                                     ; preds = %745
  br label %837

; <label>:837                                     ; preds = %836, %745, %613
  %838 = phi float [ %744, %613 ], [ %834, %836 ], [ %744, %745 ]
  %839 = phi float [ %744, %613 ], [ %744, %836 ], [ %834, %745 ]
  %840 = phi float [ %738, %613 ], [ %738, %836 ], [ %828, %745 ]
  %841 = phi float [ %739, %613 ], [ %739, %836 ], [ %829, %745 ]
  %842 = fmul fast float %838, %425
  %843 = fdiv fast float %842, %839
  %844 = fsub fast float %425, %843
  %845 = fmul fast float %840, %840
  %846 = fmul fast float %845, %844
  %847 = fadd fast float %846, %843
  %848 = fmul fast float %841, %840
  %849 = fmul fast float %848, %844
  %850 = fmul fast float %841, %841
  %851 = fmul fast float %850, %844
  %852 = fadd fast float %851, %843
  %853 = fmul fast float %847, %509
  %854 = call float @dx.op.tertiary.f32(i32 46, float %508, float %849, float %853)  ; FMad(a,b,c)
  %855 = fmul fast float %849, %509
  %856 = call float @dx.op.tertiary.f32(i32 46, float %508, float %852, float %855)  ; FMad(a,b,c)
  %857 = fmul fast float %847, %510
  %858 = call float @dx.op.tertiary.f32(i32 46, float %509, float %849, float %857)  ; FMad(a,b,c)
  %859 = fmul fast float %849, %510
  %860 = call float @dx.op.tertiary.f32(i32 46, float %509, float %852, float %859)  ; FMad(a,b,c)
  br label %861

; <label>:861                                     ; preds = %899, %837
  %862 = phi float [ 0.000000e+00, %837 ], [ %900, %899 ]
  %863 = phi float [ 0.000000e+00, %837 ], [ %901, %899 ]
  %864 = phi float [ 0.000000e+00, %837 ], [ %902, %899 ]
  %865 = phi float [ 0.000000e+00, %837 ], [ %903, %899 ]
  %866 = phi i32 [ 0, %837 ], [ %904, %899 ]
  %867 = mul i32 %866, 2
  %868 = add i32 0, %867
  %869 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %868
  %870 = load float, float* %869, align 4
  %871 = mul i32 %866, 2
  %872 = add i32 1, %871
  %873 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %872
  %874 = load float, float* %873, align 4
  %875 = fmul fast float %870, %854
  %876 = call float @dx.op.tertiary.f32(i32 46, float %874, float %858, float %875)  ; FMad(a,b,c)
  %877 = fmul fast float %870, %856
  %878 = call float @dx.op.tertiary.f32(i32 46, float %874, float %860, float %877)  ; FMad(a,b,c)
  %879 = fadd fast float %876, %503
  %880 = fadd fast float %878, %504
  %881 = fmul fast float %879, %420
  %882 = fmul fast float %880, %420
  %883 = call float @dx.op.binary.f32(i32 35, float %881, float %416)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 35, float %882, float %416)  ; FMax(a,b)
  %885 = call float @dx.op.binary.f32(i32 36, float %883, float %417)  ; FMin(a,b)
  %886 = call float @dx.op.binary.f32(i32 36, float %884, float %417)  ; FMin(a,b)
  %887 = fadd fast float %885, %414
  %888 = fadd fast float %886, %415
  %889 = uitofp i32 %476 to float
  %890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %887, float %888, float %889, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = fadd fast float %506, %424
  %893 = fcmp fast olt float %892, %891
  br i1 %893, label %894, label %899, !dx.controlflow.hints !42

; <label>:894                                     ; preds = %861
  %895 = fadd fast float %891, %864
  %896 = fadd fast float %876, %862
  %897 = fadd fast float %878, %863
  %898 = fadd fast float %865, 1.000000e+00
  br label %899

; <label>:899                                     ; preds = %894, %861
  %900 = phi float [ %896, %894 ], [ %862, %861 ]
  %901 = phi float [ %897, %894 ], [ %863, %861 ]
  %902 = phi float [ %895, %894 ], [ %864, %861 ]
  %903 = phi float [ %898, %894 ], [ %865, %861 ]
  %904 = add nuw nsw i32 %866, 1
  %905 = icmp eq i32 %904, 8
  br i1 %905, label %906, label %861

; <label>:906                                     ; preds = %899
  %907 = fdiv fast float 1.000000e+00, %903
  %908 = fcmp fast oeq float %903, 0.000000e+00
  %909 = fmul fast float %907, %902
  %910 = select i1 %908, float -1.000000e+00, float %909
  %911 = fcmp fast olt float %910, 0.000000e+00
  br i1 %911, label %1198, label %912, !dx.controlflow.hints !43

; <label>:912                                     ; preds = %906
  %913 = fmul fast float %907, %901
  %914 = select i1 %908, float 0.000000e+00, float %913
  %915 = fmul fast float %907, %900
  %916 = select i1 %908, float 0.000000e+00, float %915
  %917 = fadd fast float %916, %503
  %918 = fadd fast float %914, %504
  br i1 %479, label %919, label %923, !dx.controlflow.hints !39

; <label>:919                                     ; preds = %912
  %920 = fcmp fast olt float %603, 0x3FE6666660000000
  %921 = select i1 %920, float 1.000000e+00, float 0.000000e+00
  %922 = select i1 %920, float 0.000000e+00, float 1.000000e+00
  br label %923

; <label>:923                                     ; preds = %919, %912
  %924 = phi float [ 0.000000e+00, %919 ], [ %606, %912 ]
  %925 = phi float [ %921, %919 ], [ %607, %912 ]
  %926 = phi float [ %922, %919 ], [ %608, %912 ]
  %927 = fmul fast float %925, %604
  %928 = fmul fast float %926, %603
  %929 = fsub fast float %927, %928
  %930 = fmul fast float %926, %602
  %931 = fmul fast float %924, %604
  %932 = fsub fast float %930, %931
  %933 = fmul fast float %924, %603
  %934 = fmul fast float %925, %602
  %935 = fsub fast float %933, %934
  %936 = call float @dx.op.dot3.f32(i32 55, float %929, float %932, float %935, float %929, float %932, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = call float @dx.op.unary.f32(i32 25, float %936)  ; Rsqrt(value)
  %938 = fmul fast float %937, %302
  %939 = fmul fast float %938, %929
  %940 = fmul fast float %938, %932
  %941 = fmul fast float %935, %302
  %942 = fmul fast float %941, %937
  %943 = fmul fast float %917, %454
  %944 = call float @dx.op.tertiary.f32(i32 46, float %918, float %460, float %943)  ; FMad(a,b,c)
  %945 = call float @dx.op.tertiary.f32(i32 46, float %910, float %466, float %944)  ; FMad(a,b,c)
  %946 = fadd fast float %945, %472
  %947 = fmul fast float %917, %455
  %948 = call float @dx.op.tertiary.f32(i32 46, float %918, float %461, float %947)  ; FMad(a,b,c)
  %949 = call float @dx.op.tertiary.f32(i32 46, float %910, float %467, float %948)  ; FMad(a,b,c)
  %950 = fadd fast float %949, %473
  %951 = fmul fast float %917, %456
  %952 = call float @dx.op.tertiary.f32(i32 46, float %918, float %462, float %951)  ; FMad(a,b,c)
  %953 = call float @dx.op.tertiary.f32(i32 46, float %910, float %468, float %952)  ; FMad(a,b,c)
  %954 = fadd fast float %953, %474
  %955 = fmul fast float %917, %457
  %956 = call float @dx.op.tertiary.f32(i32 46, float %918, float %463, float %955)  ; FMad(a,b,c)
  %957 = call float @dx.op.tertiary.f32(i32 46, float %910, float %469, float %956)  ; FMad(a,b,c)
  %958 = fadd fast float %957, %475
  %959 = fdiv fast float 1.000000e+00, %958
  %960 = fmul fast float %959, %946
  %961 = fmul fast float %959, %950
  %962 = fmul fast float %959, %954
  %963 = fsub fast float %305, %939
  %964 = fsub fast float %306, %940
  %965 = fsub fast float %307, %942
  %966 = fsub fast float %960, %963
  %967 = fsub fast float %961, %964
  %968 = fsub fast float %962, %965
  %969 = call float @dx.op.dot3.f32(i32 55, float %966, float %967, float %968, float %966, float %967, float %968)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = call float @dx.op.unary.f32(i32 25, float %969)  ; Rsqrt(value)
  %971 = fmul fast float %966, %970
  %972 = fmul fast float %967, %970
  %973 = fmul fast float %968, %970
  %974 = fsub fast float %484, %963
  %975 = fsub fast float %485, %964
  %976 = fsub fast float %486, %965
  %977 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %974, float %975, float %976)  ; Dot3(ax,ay,az,bx,by,bz)
  %978 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %971, float %972, float %973)  ; Dot3(ax,ay,az,bx,by,bz)
  %979 = fdiv fast float 1.000000e+00, %978
  %980 = fmul fast float %979, %977
  %981 = fmul fast float %980, %971
  %982 = fmul fast float %980, %972
  %983 = fmul fast float %980, %973
  %984 = fadd fast float %981, %963
  %985 = fadd fast float %982, %964
  %986 = fadd fast float %983, %965
  %987 = fadd fast float %939, %305
  %988 = fadd fast float %940, %306
  %989 = fadd fast float %942, %307
  %990 = fsub fast float %960, %987
  %991 = fsub fast float %961, %988
  %992 = fsub fast float %962, %989
  %993 = call float @dx.op.dot3.f32(i32 55, float %990, float %991, float %992, float %990, float %991, float %992)  ; Dot3(ax,ay,az,bx,by,bz)
  %994 = call float @dx.op.unary.f32(i32 25, float %993)  ; Rsqrt(value)
  %995 = fmul fast float %994, %990
  %996 = fmul fast float %994, %991
  %997 = fmul fast float %994, %992
  %998 = fsub fast float %484, %987
  %999 = fsub fast float %485, %988
  %1000 = fsub fast float %486, %989
  %1001 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %998, float %999, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %995, float %996, float %997)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = fdiv fast float 1.000000e+00, %1002
  %1004 = fmul fast float %1003, %1001
  %1005 = fmul fast float %1004, %995
  %1006 = fmul fast float %1004, %996
  %1007 = fmul fast float %1004, %997
  %1008 = fadd fast float %1005, %987
  %1009 = fadd fast float %1006, %988
  %1010 = fadd fast float %1007, %989
  %1011 = fmul fast float %984, %430
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %985, float %436, float %1011)  ; FMad(a,b,c)
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %986, float %442, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %1013, %448
  %1015 = fmul fast float %984, %431
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %985, float %437, float %1015)  ; FMad(a,b,c)
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %986, float %443, float %1016)  ; FMad(a,b,c)
  %1018 = fadd fast float %1017, %449
  %1019 = fmul fast float %984, %433
  %1020 = call float @dx.op.tertiary.f32(i32 46, float %985, float %439, float %1019)  ; FMad(a,b,c)
  %1021 = call float @dx.op.tertiary.f32(i32 46, float %986, float %445, float %1020)  ; FMad(a,b,c)
  %1022 = fadd fast float %1021, %451
  %1023 = fmul fast float %1008, %430
  %1024 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %436, float %1023)  ; FMad(a,b,c)
  %1025 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %442, float %1024)  ; FMad(a,b,c)
  %1026 = fadd fast float %1025, %448
  %1027 = fmul fast float %1008, %431
  %1028 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %437, float %1027)  ; FMad(a,b,c)
  %1029 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %443, float %1028)  ; FMad(a,b,c)
  %1030 = fadd fast float %1029, %449
  %1031 = fmul fast float %1008, %433
  %1032 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %439, float %1031)  ; FMad(a,b,c)
  %1033 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %445, float %1032)  ; FMad(a,b,c)
  %1034 = fadd fast float %1033, %451
  %1035 = fdiv fast float 1.000000e+00, %1022
  %1036 = fmul fast float %1035, %1014
  %1037 = fmul fast float %1035, %1018
  %1038 = fdiv fast float 1.000000e+00, %1034
  %1039 = fmul fast float %1038, %1026
  %1040 = fmul fast float %1038, %1030
  %1041 = fsub fast float %1039, %1036
  %1042 = fsub fast float %1040, %1037
  %1043 = call float @dx.op.dot2.f32(i32 54, float %1041, float %1042, float %1041, float %1042)  ; Dot2(ax,ay,bx,by)
  %1044 = call float @dx.op.unary.f32(i32 25, float %1043)  ; Rsqrt(value)
  %1045 = fmul fast float %1041, %1044
  %1046 = fmul fast float %1042, %1044
  %1047 = fmul fast float %1041, %1041
  %1048 = fmul fast float %1042, %1042
  %1049 = fadd fast float %1047, %1048
  %1050 = call float @dx.op.unary.f32(i32 24, float %1049)  ; Sqrt(value)
  %1051 = fmul fast float %1050, 5.000000e-01
  br i1 %479, label %1144, label %1052, !dx.controlflow.hints !40

; <label>:1052                                    ; preds = %923
  %1053 = fsub fast float %305, %297
  %1054 = fsub fast float %306, %298
  %1055 = fsub fast float %307, %299
  %1056 = fsub fast float %960, %1053
  %1057 = fsub fast float %961, %1054
  %1058 = fsub fast float %962, %1055
  %1059 = call float @dx.op.dot3.f32(i32 55, float %1056, float %1057, float %1058, float %1056, float %1057, float %1058)  ; Dot3(ax,ay,az,bx,by,bz)
  %1060 = call float @dx.op.unary.f32(i32 25, float %1059)  ; Rsqrt(value)
  %1061 = fmul fast float %1060, %1056
  %1062 = fmul fast float %1060, %1057
  %1063 = fmul fast float %1060, %1058
  %1064 = fsub fast float %484, %1053
  %1065 = fsub fast float %485, %1054
  %1066 = fsub fast float %486, %1055
  %1067 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %1064, float %1065, float %1066)  ; Dot3(ax,ay,az,bx,by,bz)
  %1068 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %1061, float %1062, float %1063)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = fdiv fast float 1.000000e+00, %1068
  %1070 = fmul fast float %1069, %1067
  %1071 = fmul fast float %1070, %1061
  %1072 = fmul fast float %1070, %1062
  %1073 = fmul fast float %1070, %1063
  %1074 = fadd fast float %1071, %1053
  %1075 = fadd fast float %1072, %1054
  %1076 = fadd fast float %1073, %1055
  %1077 = fadd fast float %305, %297
  %1078 = fadd fast float %306, %298
  %1079 = fadd fast float %307, %299
  %1080 = fsub fast float %960, %1077
  %1081 = fsub fast float %961, %1078
  %1082 = fsub fast float %962, %1079
  %1083 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1081, float %1082, float %1080, float %1081, float %1082)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = call float @dx.op.unary.f32(i32 25, float %1083)  ; Rsqrt(value)
  %1085 = fmul fast float %1084, %1080
  %1086 = fmul fast float %1084, %1081
  %1087 = fmul fast float %1084, %1082
  %1088 = fsub fast float %484, %1077
  %1089 = fsub fast float %485, %1078
  %1090 = fsub fast float %486, %1079
  %1091 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %1088, float %1089, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %1085, float %1086, float %1087)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = fdiv fast float 1.000000e+00, %1092
  %1094 = fmul fast float %1093, %1091
  %1095 = fmul fast float %1094, %1085
  %1096 = fmul fast float %1094, %1086
  %1097 = fmul fast float %1094, %1087
  %1098 = fadd fast float %1095, %1077
  %1099 = fadd fast float %1096, %1078
  %1100 = fadd fast float %1097, %1079
  %1101 = fmul fast float %1074, %430
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %436, float %1101)  ; FMad(a,b,c)
  %1103 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %442, float %1102)  ; FMad(a,b,c)
  %1104 = fadd fast float %1103, %448
  %1105 = fmul fast float %1074, %431
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %437, float %1105)  ; FMad(a,b,c)
  %1107 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %443, float %1106)  ; FMad(a,b,c)
  %1108 = fadd fast float %1107, %449
  %1109 = fmul fast float %1074, %433
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %439, float %1109)  ; FMad(a,b,c)
  %1111 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %445, float %1110)  ; FMad(a,b,c)
  %1112 = fadd fast float %1111, %451
  %1113 = fmul fast float %1098, %430
  %1114 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %436, float %1113)  ; FMad(a,b,c)
  %1115 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %442, float %1114)  ; FMad(a,b,c)
  %1116 = fadd fast float %1115, %448
  %1117 = fmul fast float %1098, %431
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %437, float %1117)  ; FMad(a,b,c)
  %1119 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %443, float %1118)  ; FMad(a,b,c)
  %1120 = fadd fast float %1119, %449
  %1121 = fmul fast float %1098, %433
  %1122 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %439, float %1121)  ; FMad(a,b,c)
  %1123 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %445, float %1122)  ; FMad(a,b,c)
  %1124 = fadd fast float %1123, %451
  %1125 = fdiv fast float 1.000000e+00, %1112
  %1126 = fmul fast float %1125, %1104
  %1127 = fmul fast float %1125, %1108
  %1128 = fdiv fast float 1.000000e+00, %1124
  %1129 = fmul fast float %1128, %1116
  %1130 = fmul fast float %1128, %1120
  %1131 = fsub fast float %1129, %1126
  %1132 = fsub fast float %1130, %1127
  %1133 = call float @dx.op.dot2.f32(i32 54, float %1131, float %1132, float %1131, float %1132)  ; Dot2(ax,ay,bx,by)
  %1134 = call float @dx.op.unary.f32(i32 25, float %1133)  ; Rsqrt(value)
  %1135 = fmul fast float %1131, %1134
  %1136 = fmul fast float %1132, %1134
  %1137 = fmul fast float %1131, %1131
  %1138 = fmul fast float %1132, %1132
  %1139 = fadd fast float %1137, %1138
  %1140 = call float @dx.op.unary.f32(i32 24, float %1139)  ; Sqrt(value)
  %1141 = fmul fast float %1140, 5.000000e-01
  %1142 = fcmp fast olt float %1141, %1051
  br i1 %1142, label %1143, label %1144, !dx.controlflow.hints !41

; <label>:1143                                    ; preds = %1052
  br label %1144

; <label>:1144                                    ; preds = %1143, %1052, %923
  %1145 = phi float [ %1051, %923 ], [ %1141, %1143 ], [ %1051, %1052 ]
  %1146 = phi float [ %1051, %923 ], [ %1051, %1143 ], [ %1141, %1052 ]
  %1147 = phi float [ %1045, %923 ], [ %1045, %1143 ], [ %1135, %1052 ]
  %1148 = phi float [ %1046, %923 ], [ %1046, %1143 ], [ %1136, %1052 ]
  %1149 = fsub fast float %1146, %1145
  %1150 = fmul fast float %1147, %1147
  %1151 = fmul fast float %1150, %1149
  %1152 = fadd fast float %1151, %1145
  %1153 = fmul fast float %1147, %1149
  %1154 = fmul fast float %1153, %1148
  %1155 = fmul fast float %1148, %1148
  %1156 = fmul fast float %1155, %1149
  %1157 = fadd fast float %1156, %1145
  %1158 = fmul fast float %1152, %509
  %1159 = call float @dx.op.tertiary.f32(i32 46, float %508, float %1154, float %1158)  ; FMad(a,b,c)
  %1160 = fmul fast float %1154, %509
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %508, float %1157, float %1160)  ; FMad(a,b,c)
  %1162 = fmul fast float %1152, %510
  %1163 = call float @dx.op.tertiary.f32(i32 46, float %509, float %1154, float %1162)  ; FMad(a,b,c)
  %1164 = fmul fast float %1154, %510
  %1165 = call float @dx.op.tertiary.f32(i32 46, float %509, float %1157, float %1164)  ; FMad(a,b,c)
  br label %1166

; <label>:1166                                    ; preds = %1166, %1144
  %1167 = phi float [ 0.000000e+00, %1144 ], [ %1193, %1166 ]
  %1168 = phi i32 [ 0, %1144 ], [ %1194, %1166 ]
  %1169 = mul i32 %1168, 2
  %1170 = add i32 0, %1169
  %1171 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1170
  %1172 = load float, float* %1171, align 4
  %1173 = mul i32 %1168, 2
  %1174 = add i32 1, %1173
  %1175 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1174
  %1176 = load float, float* %1175, align 4
  %1177 = fmul fast float %1172, %1159
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1176, float %1163, float %1177)  ; FMad(a,b,c)
  %1179 = fmul fast float %1172, %1161
  %1180 = call float @dx.op.tertiary.f32(i32 46, float %1176, float %1165, float %1179)  ; FMad(a,b,c)
  %1181 = fadd fast float %1178, %503
  %1182 = fadd fast float %1180, %504
  %1183 = fmul fast float %1181, %420
  %1184 = fmul fast float %1182, %420
  %1185 = call float @dx.op.binary.f32(i32 35, float %1183, float %416)  ; FMax(a,b)
  %1186 = call float @dx.op.binary.f32(i32 35, float %1184, float %416)  ; FMax(a,b)
  %1187 = call float @dx.op.binary.f32(i32 36, float %1185, float %417)  ; FMin(a,b)
  %1188 = call float @dx.op.binary.f32(i32 36, float %1186, float %417)  ; FMin(a,b)
  %1189 = fadd fast float %1187, %414
  %1190 = fadd fast float %1188, %415
  %1191 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %1189, float %1190, float %889, float undef, i32 0, i32 0, i32 undef, float %892)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = fadd fast float %1192, %1167
  %1194 = add nuw nsw i32 %1168, 1
  %1195 = icmp eq i32 %1194, 8
  br i1 %1195, label %1196, label %1166

; <label>:1196                                    ; preds = %1166
  %1197 = fmul fast float %1193, 1.250000e-01
  br label %1198

; <label>:1198                                    ; preds = %1196, %906, %555
  %1199 = phi float [ %582, %555 ], [ %1197, %1196 ], [ 1.000000e+00, %906 ]
  %1200 = fcmp fast ogt float %1199, 0.000000e+00
  %1201 = xor i1 %54, true
  %1202 = and i1 %1200, %1201
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 1
  %1205 = fcmp fast olt float %1204, 0.000000e+00
  %1206 = and i1 %1202, %1205
  br i1 %1206, label %1207, label %1318, !dx.controlflow.hints !44

; <label>:1207                                    ; preds = %1198
  %1208 = fadd fast float %503, %416
  %1209 = fadd fast float %504, %416
  %1210 = fadd fast float %506, %424
  %1211 = fmul fast float %503, %454
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %504, float %460, float %1211)  ; FMad(a,b,c)
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %506, float %466, float %1212)  ; FMad(a,b,c)
  %1214 = fadd fast float %1213, %472
  %1215 = fmul fast float %503, %455
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %504, float %461, float %1215)  ; FMad(a,b,c)
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %506, float %467, float %1216)  ; FMad(a,b,c)
  %1218 = fadd fast float %1217, %473
  %1219 = fmul fast float %503, %456
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %504, float %462, float %1219)  ; FMad(a,b,c)
  %1221 = call float @dx.op.tertiary.f32(i32 46, float %506, float %468, float %1220)  ; FMad(a,b,c)
  %1222 = fadd fast float %1221, %474
  %1223 = fmul fast float %503, %457
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %504, float %463, float %1223)  ; FMad(a,b,c)
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %506, float %469, float %1224)  ; FMad(a,b,c)
  %1226 = fadd fast float %1225, %475
  %1227 = fmul fast float %1208, %454
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %460, float %1227)  ; FMad(a,b,c)
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %466, float %1228)  ; FMad(a,b,c)
  %1230 = fadd fast float %1229, %472
  %1231 = fmul fast float %1208, %455
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %461, float %1231)  ; FMad(a,b,c)
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %467, float %1232)  ; FMad(a,b,c)
  %1234 = fadd fast float %1233, %473
  %1235 = fmul fast float %1208, %456
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %462, float %1235)  ; FMad(a,b,c)
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %468, float %1236)  ; FMad(a,b,c)
  %1238 = fadd fast float %1237, %474
  %1239 = fmul fast float %1208, %457
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %463, float %1239)  ; FMad(a,b,c)
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %469, float %1240)  ; FMad(a,b,c)
  %1242 = fadd fast float %1241, %475
  %1243 = fdiv fast float 1.000000e+00, %1226
  %1244 = fmul fast float %1243, %1214
  %1245 = fmul fast float %1243, %1218
  %1246 = fmul fast float %1243, %1222
  %1247 = fdiv fast float 1.000000e+00, %1242
  %1248 = fmul fast float %1247, %1230
  %1249 = fmul fast float %1247, %1234
  %1250 = fmul fast float %1247, %1238
  %1251 = fsub fast float %1244, %1248
  %1252 = fsub fast float %1245, %1249
  %1253 = fsub fast float %1246, %1250
  %1254 = fmul fast float %1251, %1251
  %1255 = fmul fast float %1252, %1252
  %1256 = fadd fast float %1254, %1255
  %1257 = fmul fast float %1253, %1253
  %1258 = fadd fast float %1256, %1257
  %1259 = call float @dx.op.unary.f32(i32 24, float %1258)  ; Sqrt(value)
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1264 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.CBufRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1274 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1275 = fmul fast float %1261, %1244
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1262, float %1275)  ; FMad(a,b,c)
  %1277 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1263, float %1276)  ; FMad(a,b,c)
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1264, float %1277)  ; FMad(a,b,c)
  %1279 = fmul fast float %1266, %1244
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1267, float %1279)  ; FMad(a,b,c)
  %1281 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1268, float %1280)  ; FMad(a,b,c)
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1269, float %1281)  ; FMad(a,b,c)
  %1283 = fmul fast float %1271, %1244
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1272, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1273, float %1284)  ; FMad(a,b,c)
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1274, float %1285)  ; FMad(a,b,c)
  %1287 = fmul fast float %1261, %1248
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1262, float %1287)  ; FMad(a,b,c)
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1263, float %1288)  ; FMad(a,b,c)
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1264, float %1289)  ; FMad(a,b,c)
  %1291 = fmul fast float %1266, %1248
  %1292 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1267, float %1291)  ; FMad(a,b,c)
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1268, float %1292)  ; FMad(a,b,c)
  %1294 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1269, float %1293)  ; FMad(a,b,c)
  %1295 = fmul fast float %1271, %1248
  %1296 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1272, float %1295)  ; FMad(a,b,c)
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1273, float %1296)  ; FMad(a,b,c)
  %1298 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1274, float %1297)  ; FMad(a,b,c)
  %1299 = fdiv fast float 1.000000e+00, %1286
  %1300 = fmul fast float %1299, %1278
  %1301 = fmul fast float %1299, %1282
  %1302 = fdiv fast float 1.000000e+00, %1298
  %1303 = fmul fast float %1302, %1290
  %1304 = fmul fast float %1302, %1294
  %1305 = fsub fast float %1300, %1303
  %1306 = fsub fast float %1301, %1304
  %1307 = fmul fast float %1305, 5.000000e-01
  %1308 = fmul fast float %1306, 5.000000e-01
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = fmul fast float %1307, %1310
  %1313 = fmul fast float %1308, %1311
  %1314 = fmul fast float %1312, %1312
  %1315 = fmul fast float %1313, %1313
  %1316 = fadd fast float %1314, %1315
  %1317 = call float @dx.op.unary.f32(i32 24, float %1316)  ; Sqrt(value)
  br label %1318

; <label>:1318                                    ; preds = %1207, %1198
  %1319 = phi float [ %1259, %1207 ], [ 0.000000e+00, %1198 ]
  %1320 = phi float [ %1317, %1207 ], [ 0.000000e+00, %1198 ]
  %1321 = fadd fast float %1199, -1.000000e+00
  %1322 = fmul fast float %1321, %393
  %1323 = fadd fast float %1322, 1.000000e+00
  %1324 = fmul fast float %1323, %405
  br label %1325

; <label>:1325                                    ; preds = %1318, %372
  %1326 = phi float [ %1319, %1318 ], [ 0.000000e+00, %372 ]
  %1327 = phi float [ %1320, %1318 ], [ 0.000000e+00, %372 ]
  %1328 = phi float [ %1324, %1318 ], [ %405, %372 ]
  %1329 = call float @dx.op.binary.f32(i32 36, float %1328, float %1328)  ; FMin(a,b)
  %1330 = call float @dx.op.binary.f32(i32 36, float %1328, float %1329)  ; FMin(a,b)
  %1331 = fcmp fast ogt float %1330, 0.000000e+00
  %1332 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %345, float %346, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %1333 = fcmp fast ogt float %1332, 0.000000e+00
  %1334 = and i1 %1331, %1333
  br i1 %1334, label %1335, label %1616, !dx.controlflow.hints !45

; <label>:1335                                    ; preds = %1325
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1340 = select i1 %54, float %1337, float %1339
  %1341 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1342 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1343 = select i1 %54, float %1341, float %1342
  %1344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.i32 %1344, 0
  %1346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.i32 %1346, 0
  %1348 = select i1 %54, i32 %1345, i32 %1347
  %1349 = fcmp fast ogt float %1326, 0.000000e+00
  br i1 %1349, label %1350, label %1354, !dx.controlflow.hints !46

; <label>:1350                                    ; preds = %1335
  %1351 = fptosi float %1327 to i32
  %1352 = call i32 @dx.op.binary.i32(i32 37, i32 %1351, i32 1)  ; IMax(a,b)
  %1353 = call i32 @dx.op.binary.i32(i32 38, i32 %1352, i32 16)  ; IMin(a,b)
  br label %1354

; <label>:1354                                    ; preds = %1350, %1335
  %1355 = phi float [ 0.000000e+00, %1350 ], [ 1.000000e+00, %1335 ]
  %1356 = phi float [ %1326, %1350 ], [ %1340, %1335 ]
  %1357 = phi i32 [ %1353, %1350 ], [ %1348, %1335 ]
  %1358 = fcmp fast olt float %1356, 5.000000e-01
  %1359 = icmp eq i32 %1357, 0
  %1360 = or i1 %1358, %1359
  br i1 %1360, label %1611, label %1361, !dx.controlflow.hints !47

; <label>:1361                                    ; preds = %1354
  %1362 = fsub fast float %305, %116
  %1363 = fsub fast float %306, %117
  %1364 = fsub fast float %307, %118
  %1365 = fmul fast float %1362, %1362
  %1366 = fmul fast float %1363, %1363
  %1367 = fadd fast float %1365, %1366
  %1368 = fmul fast float %1364, %1364
  %1369 = fadd fast float %1367, %1368
  %1370 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.i32 %1371, 0
  %1373 = uitofp i32 %1372 to float
  %1374 = fmul fast float %1356, %302
  %1375 = fdiv fast float %1374, %1370
  %1376 = call float @dx.op.binary.f32(i32 36, float %1375, float 1.000000e+01)  ; FMin(a,b)
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.CBufRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1381 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.CBufRet.f32 %1382, 3
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1391 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.CBufRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1396 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.CBufRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.CBufRet.f32 %1397, 2
  %1401 = extractvalue %dx.types.CBufRet.f32 %1397, 3
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.CBufRet.f32 %1402, 2
  %1406 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1407 = select i1 %54, float %1378, float %1393
  %1408 = select i1 %54, float %1383, float %1398
  %1409 = select i1 %54, float %1388, float %1403
  %1410 = select i1 %54, float %1379, float %1394
  %1411 = select i1 %54, float %1384, float %1399
  %1412 = select i1 %54, float %1389, float %1404
  %1413 = select i1 %54, float %1380, float %1395
  %1414 = select i1 %54, float %1385, float %1400
  %1415 = select i1 %54, float %1390, float %1405
  %1416 = select i1 %54, float %1381, float %1396
  %1417 = select i1 %54, float %1386, float %1401
  %1418 = select i1 %54, float %1391, float %1406
  %1419 = fmul fast float %218, 0x401061CAC0000000
  %1420 = fmul fast float %218, 0x4023E1D7E0000000
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1425 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1426 = fsub fast float -0.000000e+00, %345
  %1427 = fmul fast float %347, %1426
  %1428 = fmul fast float %345, %1426
  %1429 = fmul fast float %346, %346
  %1430 = fsub fast float %1428, %1429
  %1431 = fdiv fast float 1.000000e+00, %61
  %1432 = fmul fast float %1424, %50
  %1433 = fmul fast float %1425, %51
  %1434 = fmul fast float %1356, %345
  %1435 = fmul fast float %1356, %347
  %1436 = fadd fast float %1434, %116
  %1437 = fadd fast float %1435, %118
  %1438 = fadd fast float %1420, 5.000000e-01
  %1439 = call float @dx.op.unary.f32(i32 22, float %1438)  ; Frc(value)
  %1440 = bitcast float %1439 to i32
  %1441 = ashr i32 %1440, 1
  %1442 = add nsw i32 %1441, 532487669
  %1443 = bitcast i32 %1442 to float
  %1444 = fmul fast float %1443, %1376
  %1445 = fadd fast float %1419, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 22, float %1445)  ; Frc(value)
  %1447 = fmul fast float %1446, 0x401921FB60000000
  %1448 = call float @dx.op.unary.f32(i32 12, float %1447)  ; Cos(value)
  %1449 = fmul fast float %1448, %1448
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = bitcast float %1450 to i32
  %1452 = ashr i32 %1451, 1
  %1453 = add nsw i32 %1452, 532487669
  %1454 = bitcast i32 %1453 to float
  %1455 = fmul fast float %1444, %1448
  %1456 = fmul fast float %1455, %346
  %1457 = fmul fast float %1455, %1426
  %1458 = fadd fast float %1436, %1456
  %1459 = fmul fast float %1454, %1444
  %1460 = fmul fast float %1427, %1459
  %1461 = fmul fast float %1459, %347
  %1462 = fmul fast float %1459, %1430
  %1463 = fsub fast float %1458, %1460
  %1464 = fadd fast float %1461, %1356
  %1465 = fmul fast float %1464, %346
  %1466 = fadd fast float %1457, %117
  %1467 = fadd fast float %1466, %1465
  %1468 = fadd fast float %1437, %1462
  %1469 = fmul fast float %1463, %1407
  %1470 = call float @dx.op.tertiary.f32(i32 46, float %1467, float %1410, float %1469)  ; FMad(a,b,c)
  %1471 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1413, float %1470)  ; FMad(a,b,c)
  %1472 = fadd fast float %1471, %1416
  %1473 = fmul fast float %1463, %1408
  %1474 = call float @dx.op.tertiary.f32(i32 46, float %1467, float %1411, float %1473)  ; FMad(a,b,c)
  %1475 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1414, float %1474)  ; FMad(a,b,c)
  %1476 = fadd fast float %1475, %1417
  %1477 = fmul fast float %1463, %1409
  %1478 = call float @dx.op.tertiary.f32(i32 46, float %1467, float %1412, float %1477)  ; FMad(a,b,c)
  %1479 = call float @dx.op.tertiary.f32(i32 46, float %1468, float %1415, float %1478)  ; FMad(a,b,c)
  %1480 = fadd fast float %1479, %1418
  %1481 = fdiv fast float 1.000000e+00, %1480
  %1482 = fmul fast float %1472, 5.000000e-01
  %1483 = fmul fast float %1476, -5.000000e-01
  %1484 = fmul fast float %1482, %1481
  %1485 = fmul fast float %1483, %1481
  %1486 = fsub fast float 5.000000e-01, %1432
  %1487 = fadd fast float %1486, %1484
  %1488 = fsub fast float 5.000000e-01, %1433
  %1489 = fadd fast float %1488, %1485
  %1490 = fsub fast float %1481, %1431
  %1491 = call float @dx.op.dot2.f32(i32 54, float %1487, float %1489, float %1487, float %1489)  ; Dot2(ax,ay,bx,by)
  %1492 = call float @dx.op.binary.f32(i32 35, float %1491, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1493 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %1422, float %1423)  ; Dot2(ax,ay,bx,by)
  %1494 = fmul fast float %1493, %1492
  %1495 = call float @dx.op.unary.f32(i32 25, float %1494)  ; Rsqrt(value)
  %1496 = fmul fast float %1495, %1487
  %1497 = fmul fast float %1495, %1489
  %1498 = fadd fast float %1496, %1432
  %1499 = fadd fast float %1497, %1433
  %1500 = fmul fast float %1487, %1422
  %1501 = fmul fast float %1489, %1423
  %1502 = fmul fast float %1500, %1500
  %1503 = fmul fast float %1501, %1501
  %1504 = fadd fast float %1502, %1503
  %1505 = call float @dx.op.unary.f32(i32 24, float %1504)  ; Sqrt(value)
  %1506 = fdiv fast float 1.000000e+00, %1505
  %1507 = fmul fast float %1505, 3.906250e-03
  %1508 = fmul fast float %204, 0x3F70624DE0000000
  %1509 = fadd fast float %1508, 0x3F70624DE0000000
  %1510 = icmp sgt i32 %1357, -1
  br i1 %1510, label %1511, label %1576

; <label>:1511                                    ; preds = %1361
  br label %1512

; <label>:1512                                    ; preds = %1572, %1511
  %1513 = phi float [ %1547, %1572 ], [ %61, %1511 ]
  %1514 = phi float [ %1534, %1572 ], [ %61, %1511 ]
  %1515 = phi float [ %1514, %1572 ], [ %61, %1511 ]
  %1516 = phi i32 [ %1573, %1572 ], [ 0, %1511 ]
  %1517 = sitofp i32 %1516 to float
  %1518 = fadd fast float %218, 5.000000e-01
  %1519 = call float @dx.op.unary.f32(i32 22, float %1518)  ; Frc(value)
  %1520 = fadd fast float %1517, %1519
  %1521 = sitofp i32 %1357 to float
  %1522 = fdiv fast float %1520, %1521
  %1523 = fmul fast float %1522, %1522
  %1524 = fsub fast float %1523, %1522
  %1525 = fmul fast float %1524, %1355
  %1526 = fadd fast float %1525, %1522
  %1527 = call float @dx.op.binary.f32(i32 36, float %1526, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1528 = fmul fast float %1527, %1487
  %1529 = fmul fast float %1527, %1489
  %1530 = fmul fast float %1527, %1490
  %1531 = fadd fast float %1528, %1498
  %1532 = fadd fast float %1529, %1499
  %1533 = fadd fast float %1530, %1431
  %1534 = fdiv fast float 1.000000e+00, %1533
  %1535 = icmp ne i32 %1372, 0
  %1536 = fmul fast float %1507, %1527
  %1537 = call float @dx.op.binary.f32(i32 36, float %1536, float %1373)  ; FMin(a,b)
  %1538 = select i1 %1535, float %1537, float 0.000000e+00
  %1539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1531, float %1532, float undef, float undef, i32 0, i32 0, i32 undef, float %1538)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = fcmp fast ogt float %1540, -1.000000e+00
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1544 = select i1 %1541, float %1543, float 1.000000e+00
  %1545 = fadd fast float %1540, 1.000000e+00
  %1546 = fmul fast float %1544, %1545
  %1547 = call float @dx.op.unary.f32(i32 6, float %1546)  ; FAbs(value)
  %1548 = fmul fast float %1547, %1509
  %1549 = fsub fast float %1534, %1547
  %1550 = fsub fast float %1549, %1548
  %1551 = fcmp fast ogt float %1550, 0.000000e+00
  %1552 = fcmp fast ogt float %1343, 0.000000e+00
  br i1 %1552, label %1553, label %1556, !dx.controlflow.hints !48

; <label>:1553                                    ; preds = %1512
  %1554 = fsub fast float %1534, %1515
  %1555 = call float @dx.op.binary.f32(i32 35, float %1554, float %1343)  ; FMax(a,b)
  br label %1556

; <label>:1556                                    ; preds = %1553, %1512
  %1557 = phi float [ %1555, %1553 ], [ %1356, %1512 ]
  %1558 = fcmp fast olt float %1550, %1557
  %1559 = fcmp uge float %1540, -1.000000e+00
  %1560 = or i1 %54, %1559
  %1561 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1562 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1563 = fcmp fast oeq float %1531, %1561
  %1564 = fcmp fast oeq float %1532, %1562
  %1565 = and i1 %1563, %1564
  %1566 = and i1 %1560, %1565
  %1567 = and i1 %1551, %1558
  %1568 = and i1 %1567, %1566
  %1569 = fcmp fast ogt float %1527, %1506
  %1570 = and i1 %1569, %1568
  %1571 = zext i1 %1570 to i32
  br i1 %1570, label %1575, label %1572, !dx.controlflow.hints !49

; <label>:1572                                    ; preds = %1556
  %1573 = add nuw nsw i32 %1516, 1
  %1574 = icmp slt i32 %1516, %1357
  br i1 %1574, label %1512, label %1575

; <label>:1575                                    ; preds = %1572, %1556
  br label %1576

; <label>:1576                                    ; preds = %1575, %1361
  %1577 = phi i32 [ 0, %1361 ], [ %1571, %1575 ]
  %1578 = phi float [ %61, %1361 ], [ %1547, %1575 ]
  %1579 = phi float [ %61, %1361 ], [ %1513, %1575 ]
  %1580 = phi float [ %61, %1361 ], [ %1534, %1575 ]
  %1581 = phi float [ %61, %1361 ], [ %1514, %1575 ]
  %1582 = fsub fast float %1581, %1579
  %1583 = fsub fast float %1580, %1578
  %1584 = fsub fast float %1582, %1583
  %1585 = fcmp fast une float %1584, 0.000000e+00
  %1586 = fmul fast float %1582, %1580
  %1587 = fmul fast float %1581, %1583
  %1588 = fsub fast float %1586, %1587
  %1589 = fdiv fast float 1.000000e+00, %1584
  %1590 = fmul fast float %1588, %1589
  %1591 = select i1 %1585, float %1590, float %1580
  %1592 = fdiv fast float 1.000000e+00, %1591
  %1593 = fsub fast float %1592, %1431
  %1594 = fdiv fast float %1593, %1490
  %1595 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1596 = fmul fast float %1595, %1487
  %1597 = fmul fast float %1595, %1489
  %1598 = fadd fast float %1596, %1498
  %1599 = fadd fast float %1597, %1499
  %1600 = fadd fast float %1598, -5.000000e-01
  %1601 = fadd fast float %1599, -5.000000e-01
  %1602 = call float @dx.op.unary.f32(i32 6, float %1600)  ; FAbs(value)
  %1603 = call float @dx.op.unary.f32(i32 6, float %1601)  ; FAbs(value)
  %1604 = fadd fast float %1602, -5.000000e-01
  %1605 = fadd fast float %1603, -5.000000e-01
  %1606 = call float @dx.op.binary.f32(i32 35, float %1604, float %1605)  ; FMax(a,b)
  %1607 = fcmp fast olt float %1606, 0.000000e+00
  %1608 = icmp ne i32 %1577, 0
  %1609 = and i1 %1608, %1607
  %1610 = select i1 %1609, float 0.000000e+00, float 1.000000e+00
  br label %1611

; <label>:1611                                    ; preds = %1576, %1354
  %1612 = phi float [ %1610, %1576 ], [ 1.000000e+00, %1354 ]
  %1613 = fmul fast float %1612, %1328
  %1614 = fmul fast float %1612, %1328
  %1615 = fmul fast float %1612, %1328
  br label %1616

; <label>:1616                                    ; preds = %1611, %1325
  %1617 = phi float [ %1613, %1611 ], [ %1328, %1325 ]
  %1618 = phi float [ %1614, %1611 ], [ %1328, %1325 ]
  %1619 = phi float [ %1615, %1611 ], [ %1328, %1325 ]
  %1620 = call float @dx.op.binary.f32(i32 36, float %1618, float %1619)  ; FMin(a,b)
  %1621 = call float @dx.op.binary.f32(i32 36, float %1617, float %1620)  ; FMin(a,b)
  %1622 = fcmp fast ogt float %1621, 0x3F10000000000000
  %1623 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1622)  ; WaveAnyTrue(cond)
  %1624 = select i1 %1623, i32 %284, i32 0
  %1625 = or i32 %279, %1624
  %1626 = lshr i32 %223, 5
  %1627 = lshr i32 %224, 5
  %1628 = fcmp fast olt float %1617, 0x3F10000000000000
  %1629 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1628)  ; WaveAllTrue(cond)
  %1630 = fcmp fast ogt float %1617, 0x3FEFFF8000000000
  %1631 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1630)  ; WaveAllTrue(cond)
  %1632 = or i1 %1629, %1631
  %1633 = xor i1 %1632, true
  %1634 = lshr i32 %224, 1
  %1635 = and i32 %1634, 8
  %1636 = lshr i32 %223, 2
  %1637 = and i32 %1636, 4
  %1638 = or i32 %1635, %35
  %1639 = or i32 %1638, %1637
  %1640 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1640, label %1641, label %1680, !dx.controlflow.hints !50

; <label>:1641                                    ; preds = %1616
  %1642 = shl i32 1, %1639
  %1643 = select i1 %1631, i32 %1642, i32 0
  %1644 = shl i32 65536, %1639
  %1645 = select i1 %1629, i32 %1644, i32 0
  %1646 = or i32 %1643, %1645
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1650, label %1648, !dx.controlflow.hints !51

; <label>:1648                                    ; preds = %1641
  %1649 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1626, i32 %1627, i32 %282, i32 %1646)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1650

; <label>:1650                                    ; preds = %1648, %1641
  br i1 %1632, label %1680, label %1651

; <label>:1651                                    ; preds = %1650
  br label %1652

; <label>:1652                                    ; preds = %1677, %1651
  %1653 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1626, i32 %1627, i32 %282, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1654 = and i32 %1653, 3
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1656, label %1677, !dx.controlflow.hints !52

; <label>:1656                                    ; preds = %1652
  %1657 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.i32 %1658, 3
  %1660 = call i32 @dx.op.binary.i32(i32 40, i32 %1659, i32 %1657)  ; UMin(a,b)
  %1661 = extractvalue %dx.types.CBufRet.i32 %1658, 2
  %1662 = udiv i32 %1660, %1661
  %1663 = urem i32 %1660, %1661
  %1664 = extractvalue %dx.types.CBufRet.i32 %1658, 1
  %1665 = urem i32 %1663, %1664
  %1666 = udiv i32 %1663, %1664
  %1667 = shl i32 %1665, 6
  %1668 = and i32 %1667, 32704
  %1669 = shl i32 %1666, 15
  %1670 = and i32 %1669, 8355840
  %1671 = shl i32 %1662, 23
  %1672 = and i32 %1671, 2139095040
  %1673 = or i32 %1672, %1668
  %1674 = or i32 %1673, %1670
  %1675 = or i32 %1674, 3
  %1676 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1626, i32 %1627, i32 %282, i32 %1675)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1680

; <label>:1677                                    ; preds = %1652
  %1678 = icmp eq i32 %1654, 3
  br i1 %1678, label %1679, label %1652, !dx.controlflow.hints !53

; <label>:1679                                    ; preds = %1677
  br label %1680

; <label>:1680                                    ; preds = %1679, %1656, %1650, %1616
  %1681 = phi i32 [ 0, %1650 ], [ %1675, %1656 ], [ 0, %1616 ], [ %1653, %1679 ]
  %1682 = phi i1 [ false, %1650 ], [ %1633, %1656 ], [ %1633, %1616 ], [ %1633, %1679 ]
  br i1 %1682, label %1683, label %1699, !dx.controlflow.hints !54

; <label>:1683                                    ; preds = %1680
  %1684 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1681)  ; WaveReadLaneFirst(value)
  %1685 = lshr i32 %1684, 23
  %1686 = and i32 %1685, 255
  %1687 = and i32 %223, 31
  %1688 = and i32 %224, 31
  %1689 = lshr i32 %1684, 1
  %1690 = and i32 %1689, 16352
  %1691 = lshr i32 %1684, 10
  %1692 = and i32 %1691, 8160
  %1693 = or i32 %1690, %1687
  %1694 = or i32 %1692, %1688
  %1695 = fmul fast float %1617, 2.550000e+02
  %1696 = fadd fast float %1695, %217
  %1697 = call float @dx.op.unary.f32(i32 27, float %1696)  ; Round_ni(value)
  %1698 = fmul fast float %1697, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1693, i32 %1694, i32 %1686, float %1698, float %1698, float %1698, float %1698, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1699

; <label>:1699                                    ; preds = %1683, %1680
  %1700 = icmp eq i32 %280, %284
  br i1 %1700, label %1701, label %278, !llvm.loop !55

; <label>:1701                                    ; preds = %1699
  br label %1702

; <label>:1702                                    ; preds = %1701, %250
  %1703 = phi i32 [ 0, %250 ], [ %1625, %1701 ]
  %1704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.i32 %1704, 0
  %1706 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %1705, i32 %251)  ; UMad(a,b,c)
  %1707 = shl i32 %1706, 2
  %1708 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1707, i32 undef, i32 undef, i32 %1703)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1709 = add i32 %251, 1
  %1710 = icmp ugt i32 %1709, %247
  br i1 %1710, label %1711, label %250

; <label>:1711                                    ; preds = %1702
  br label %1712

; <label>:1712                                    ; preds = %1711, %222, %0
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
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}

