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
; shader hash: ad2c1a84f76b9f7c9fc391a3334fff19
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
;                                   sampler      NA          NA      S0             s1     1
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
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = shl i32 %25, 3
  %29 = mul i32 %28, %27
  %30 = add i32 %29, %21
  %31 = shl i32 %30, 2
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = lshr i32 %33, 28
  %35 = and i32 %34, 7
  %36 = shl nuw nsw i32 %34, 3
  %37 = and i32 %36, 8
  %38 = lshr i32 %33, 27
  %39 = and i32 %38, 12
  %40 = lshr i32 %33, 10
  %41 = and i32 %40, 262128
  %42 = shl i32 %33, 4
  %43 = and i32 %42, 262128
  %44 = or i32 %41, %22
  %45 = or i32 %44, %37
  %46 = or i32 %39, %23
  %47 = or i32 %46, %43
  %48 = uitofp i32 %45 to float
  %49 = uitofp i32 %47 to float
  %50 = fadd fast float %48, 5.000000e-01
  %51 = fadd fast float %49, 5.000000e-01
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %45, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %119 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 0, i32 %45, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %150 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %18, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %173 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %18, float %170, float %172, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 2
  %215 = fadd fast float %213, %207
  %216 = fadd fast float %214, %207
  %217 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %218 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 0
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %930, label %222, !dx.controlflow.hints !35

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
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = lshr i32 %240, 16
  %242 = and i32 %240, 65535
  %243 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %241, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %244 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %242, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %245 = lshr i32 %243, 5
  %246 = lshr i32 %244, 5
  %247 = call i32 @dx.op.binary.i32(i32 40, i32 %246, i32 %233)  ; UMin(a,b)
  %248 = icmp ugt i32 %245, %247
  br i1 %248, label %930, label %249

; <label>:249                                     ; preds = %222
  br label %250

; <label>:250                                     ; preds = %920, %249
  %251 = phi i32 [ %927, %920 ], [ %245, %249 ]
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 0
  %254 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %253, i32 %251)  ; UMad(a,b,c)
  %255 = shl i32 %254, 2
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %276, label %920, label %277

; <label>:277                                     ; preds = %250
  br label %278

; <label>:278                                     ; preds = %917, %277
  %279 = phi i32 [ %841, %917 ], [ 0, %277 ]
  %280 = phi i32 [ %285, %917 ], [ %275, %277 ]
  %281 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %280)  ; FirstbitLo(value)
  %282 = add i32 %281, %258
  %283 = and i32 %281, 31
  %284 = shl i32 1, %283
  %285 = xor i32 %284, %280
  %286 = mul i32 %282, 112
  %287 = add i32 %286, 16
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = add i32 %286, 28
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = add i32 %286, 32
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = extractvalue %dx.types.ResRet.f32 %296, 2
  %300 = add i32 %286, 44
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = add i32 %286, 48
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = extractvalue %dx.types.ResRet.f32 %304, 3
  %309 = add i32 %286, 64
  %310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = extractvalue %dx.types.ResRet.f32 %310, 1
  %313 = extractvalue %dx.types.ResRet.f32 %310, 2
  %314 = extractvalue %dx.types.ResRet.f32 %310, 3
  %315 = add i32 %286, 92
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %387, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %410, label %411, label %555, !dx.controlflow.hints !37

; <label>:411                                     ; preds = %372
  %412 = mul nuw nsw i32 %322, 176
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = extractvalue %dx.types.ResRet.f32 %413, 3
  %418 = add nuw nsw i32 %412, 16
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = add nuw nsw i32 %412, 32
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = add nuw nsw i32 %412, 48
  %428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = extractvalue %dx.types.ResRet.f32 %428, 1
  %431 = extractvalue %dx.types.ResRet.f32 %428, 2
  %432 = extractvalue %dx.types.ResRet.f32 %428, 3
  %433 = add nuw nsw i32 %412, 64
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = extractvalue %dx.types.ResRet.f32 %434, 3
  %439 = add nuw nsw i32 %412, 80
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = extractvalue %dx.types.ResRet.f32 %440, 3
  %445 = add nuw nsw i32 %412, 96
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = extractvalue %dx.types.ResRet.f32 %446, 3
  %451 = bitcast float %421 to i32
  %452 = fmul fast float %426, %145
  %453 = fmul fast float %426, %146
  %454 = fmul fast float %426, %147
  %455 = fadd fast float %452, %116
  %456 = fadd fast float %453, %117
  %457 = fadd fast float %454, %118
  %458 = fmul fast float %455, %429
  %459 = call float @dx.op.tertiary.f32(i32 46, float %456, float %435, float %458)  ; FMad(a,b,c)
  %460 = call float @dx.op.tertiary.f32(i32 46, float %457, float %441, float %459)  ; FMad(a,b,c)
  %461 = fadd fast float %460, %447
  %462 = fmul fast float %455, %430
  %463 = call float @dx.op.tertiary.f32(i32 46, float %456, float %436, float %462)  ; FMad(a,b,c)
  %464 = call float @dx.op.tertiary.f32(i32 46, float %457, float %442, float %463)  ; FMad(a,b,c)
  %465 = fadd fast float %464, %448
  %466 = fmul fast float %455, %431
  %467 = call float @dx.op.tertiary.f32(i32 46, float %456, float %437, float %466)  ; FMad(a,b,c)
  %468 = call float @dx.op.tertiary.f32(i32 46, float %457, float %443, float %467)  ; FMad(a,b,c)
  %469 = fadd fast float %468, %449
  %470 = fmul fast float %455, %432
  %471 = call float @dx.op.tertiary.f32(i32 46, float %456, float %438, float %470)  ; FMad(a,b,c)
  %472 = call float @dx.op.tertiary.f32(i32 46, float %457, float %444, float %471)  ; FMad(a,b,c)
  %473 = fadd fast float %472, %450
  %474 = fdiv fast float %461, %473
  %475 = fdiv fast float %465, %473
  %476 = fdiv fast float %469, %473
  %477 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %476)  ; FMax(a,b)
  %478 = fmul fast float %217, 0x401921FB60000000
  %479 = call float @dx.op.unary.f32(i32 13, float %478)  ; Sin(value)
  %480 = call float @dx.op.unary.f32(i32 12, float %478)  ; Cos(value)
  %481 = fmul fast float %480, %425
  %482 = call float @dx.op.tertiary.f32(i32 46, float %479, float %425, float 0.000000e+00)  ; FMad(a,b,c)
  %483 = fmul fast float %425, %479
  %484 = fsub fast float -0.000000e+00, %483
  %485 = call float @dx.op.tertiary.f32(i32 46, float %480, float %425, float 0.000000e+00)  ; FMad(a,b,c)
  br label %486

; <label>:486                                     ; preds = %486, %411
  %487 = phi float [ 0.000000e+00, %411 ], [ %519, %486 ]
  %488 = phi float [ 0.000000e+00, %411 ], [ %521, %486 ]
  %489 = phi i32 [ 0, %411 ], [ %522, %486 ]
  %490 = mul i32 %489, 2
  %491 = add i32 0, %490
  %492 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %491
  %493 = load float, float* %492, align 4
  %494 = mul i32 %489, 2
  %495 = add i32 1, %494
  %496 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %495
  %497 = load float, float* %496, align 4
  %498 = fmul fast float %481, %493
  %499 = call float @dx.op.tertiary.f32(i32 46, float %497, float %484, float %498)  ; FMad(a,b,c)
  %500 = fmul fast float %493, %482
  %501 = call float @dx.op.tertiary.f32(i32 46, float %497, float %485, float %500)  ; FMad(a,b,c)
  %502 = fadd fast float %499, %474
  %503 = fadd fast float %501, %475
  %504 = fmul fast float %502, %420
  %505 = fmul fast float %503, %420
  %506 = call float @dx.op.binary.f32(i32 35, float %504, float %416)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 35, float %505, float %416)  ; FMax(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %506, float %417)  ; FMin(a,b)
  %509 = call float @dx.op.binary.f32(i32 36, float %507, float %417)  ; FMin(a,b)
  %510 = fadd fast float %508, %414
  %511 = fadd fast float %509, %415
  %512 = uitofp i32 %451 to float
  %513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %510, float %511, float %512, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = fsub fast float %514, %477
  %516 = fsub fast float %515, %424
  %517 = fcmp fast ogt float %516, 0.000000e+00
  %518 = select i1 %517, float 1.000000e+00, float 0.000000e+00
  %519 = fadd fast float %518, %487
  %520 = select i1 %517, float %516, float 0.000000e+00
  %521 = fadd fast float %520, %488
  %522 = add nuw nsw i32 %489, 1
  %523 = icmp eq i32 %522, 8
  br i1 %523, label %524, label %486

; <label>:524                                     ; preds = %486
  %525 = fdiv fast float 1.000000e+00, %519
  %526 = fmul fast float %525, %521
  %527 = fdiv fast float 1.000000e+00, %477
  %528 = fmul fast float %526, %527
  %529 = call float @dx.op.unary.f32(i32 7, float %528)  ; Saturate(value)
  %530 = call float @dx.op.binary.f32(i32 35, float %529, float 0.000000e+00)  ; FMax(a,b)
  %531 = fmul fast float %519, 1.250000e-01
  %532 = call float @dx.op.unary.f32(i32 7, float %531)  ; Saturate(value)
  %533 = fmul fast float %532, 2.000000e+00
  %534 = fadd fast float %533, -1.000000e+00
  %535 = fcmp fast ogt float %534, 0.000000e+00
  %536 = fcmp fast olt float %534, 0.000000e+00
  %537 = zext i1 %535 to i32
  %538 = zext i1 %536 to i32
  %539 = sub nsw i32 %537, %538
  %540 = sitofp i32 %539 to float
  %541 = fmul fast float %540, %534
  %542 = fsub fast float 1.000000e+00, %541
  %543 = fmul fast float %542, %542
  %544 = fmul fast float %543, %542
  %545 = fsub fast float %542, %544
  %546 = fmul fast float %545, %530
  %547 = fsub fast float 1.000000e+00, %544
  %548 = fsub fast float %547, %546
  %549 = fmul fast float %540, 5.000000e-01
  %550 = fmul fast float %549, %548
  %551 = fsub fast float -5.000000e-01, %550
  %552 = fmul fast float %551, %393
  %553 = fadd fast float %552, 1.000000e+00
  %554 = fmul fast float %553, %405
  br label %555

; <label>:555                                     ; preds = %524, %372
  %556 = phi float [ %554, %524 ], [ %405, %372 ]
  %557 = call float @dx.op.binary.f32(i32 36, float %556, float %556)  ; FMin(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float %556, float %557)  ; FMin(a,b)
  %559 = fcmp fast ogt float %558, 0.000000e+00
  %560 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %345, float %346, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = fcmp fast ogt float %560, 0.000000e+00
  %562 = and i1 %559, %561
  br i1 %562, label %563, label %832, !dx.controlflow.hints !38

; <label>:563                                     ; preds = %555
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %568 = select i1 %54, float %565, float %567
  %569 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %570 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %571 = select i1 %54, float %569, float %570
  %572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.i32 %572, 0
  %574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.i32 %574, 0
  %576 = select i1 %54, i32 %573, i32 %575
  %577 = fcmp fast olt float %568, 5.000000e-01
  %578 = icmp eq i32 %576, 0
  %579 = or i1 %577, %578
  br i1 %579, label %827, label %580, !dx.controlflow.hints !39

; <label>:580                                     ; preds = %563
  %581 = fsub fast float %305, %116
  %582 = fsub fast float %306, %117
  %583 = fsub fast float %307, %118
  %584 = fmul fast float %581, %581
  %585 = fmul fast float %582, %582
  %586 = fadd fast float %584, %585
  %587 = fmul fast float %583, %583
  %588 = fadd fast float %586, %587
  %589 = call float @dx.op.unary.f32(i32 24, float %588)  ; Sqrt(value)
  %590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.i32 %590, 0
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %568, %302
  %594 = fdiv fast float %593, %589
  %595 = call float @dx.op.binary.f32(i32 36, float %594, float 1.000000e+01)  ; FMin(a,b)
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %599 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %600 = extractvalue %dx.types.CBufRet.f32 %596, 3
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %604 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %605 = extractvalue %dx.types.CBufRet.f32 %601, 3
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %610 = extractvalue %dx.types.CBufRet.f32 %606, 3
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %615 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %620 = extractvalue %dx.types.CBufRet.f32 %616, 3
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %624 = extractvalue %dx.types.CBufRet.f32 %621, 2
  %625 = extractvalue %dx.types.CBufRet.f32 %621, 3
  %626 = select i1 %54, float %597, float %612
  %627 = select i1 %54, float %602, float %617
  %628 = select i1 %54, float %607, float %622
  %629 = select i1 %54, float %598, float %613
  %630 = select i1 %54, float %603, float %618
  %631 = select i1 %54, float %608, float %623
  %632 = select i1 %54, float %599, float %614
  %633 = select i1 %54, float %604, float %619
  %634 = select i1 %54, float %609, float %624
  %635 = select i1 %54, float %600, float %615
  %636 = select i1 %54, float %605, float %620
  %637 = select i1 %54, float %610, float %625
  %638 = fmul fast float %218, 0x401061CAC0000000
  %639 = fmul fast float %218, 0x4023E1D7E0000000
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 0
  %642 = extractvalue %dx.types.CBufRet.f32 %640, 1
  %643 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %644 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %645 = fsub fast float -0.000000e+00, %345
  %646 = fmul fast float %347, %645
  %647 = fmul fast float %345, %645
  %648 = fmul fast float %346, %346
  %649 = fsub fast float %647, %648
  %650 = fdiv fast float 1.000000e+00, %61
  %651 = fmul fast float %643, %50
  %652 = fmul fast float %644, %51
  %653 = fmul fast float %568, %345
  %654 = fmul fast float %568, %347
  %655 = fadd fast float %653, %116
  %656 = fadd fast float %654, %118
  %657 = fadd fast float %639, 5.000000e-01
  %658 = call float @dx.op.unary.f32(i32 22, float %657)  ; Frc(value)
  %659 = bitcast float %658 to i32
  %660 = ashr i32 %659, 1
  %661 = add nsw i32 %660, 532487669
  %662 = bitcast i32 %661 to float
  %663 = fmul fast float %662, %595
  %664 = fadd fast float %638, 5.000000e-01
  %665 = call float @dx.op.unary.f32(i32 22, float %664)  ; Frc(value)
  %666 = fmul fast float %665, 0x401921FB60000000
  %667 = call float @dx.op.unary.f32(i32 12, float %666)  ; Cos(value)
  %668 = fmul fast float %667, %667
  %669 = fsub fast float 1.000000e+00, %668
  %670 = bitcast float %669 to i32
  %671 = ashr i32 %670, 1
  %672 = add nsw i32 %671, 532487669
  %673 = bitcast i32 %672 to float
  %674 = fmul fast float %663, %667
  %675 = fmul fast float %674, %346
  %676 = fmul fast float %674, %645
  %677 = fadd fast float %655, %675
  %678 = fmul fast float %673, %663
  %679 = fmul fast float %646, %678
  %680 = fmul fast float %678, %347
  %681 = fmul fast float %678, %649
  %682 = fsub fast float %677, %679
  %683 = fadd fast float %680, %568
  %684 = fmul fast float %683, %346
  %685 = fadd fast float %676, %117
  %686 = fadd fast float %685, %684
  %687 = fadd fast float %656, %681
  %688 = fmul fast float %682, %626
  %689 = call float @dx.op.tertiary.f32(i32 46, float %686, float %629, float %688)  ; FMad(a,b,c)
  %690 = call float @dx.op.tertiary.f32(i32 46, float %687, float %632, float %689)  ; FMad(a,b,c)
  %691 = fadd fast float %690, %635
  %692 = fmul fast float %682, %627
  %693 = call float @dx.op.tertiary.f32(i32 46, float %686, float %630, float %692)  ; FMad(a,b,c)
  %694 = call float @dx.op.tertiary.f32(i32 46, float %687, float %633, float %693)  ; FMad(a,b,c)
  %695 = fadd fast float %694, %636
  %696 = fmul fast float %682, %628
  %697 = call float @dx.op.tertiary.f32(i32 46, float %686, float %631, float %696)  ; FMad(a,b,c)
  %698 = call float @dx.op.tertiary.f32(i32 46, float %687, float %634, float %697)  ; FMad(a,b,c)
  %699 = fadd fast float %698, %637
  %700 = fdiv fast float 1.000000e+00, %699
  %701 = fmul fast float %691, 5.000000e-01
  %702 = fmul fast float %695, -5.000000e-01
  %703 = fmul fast float %701, %700
  %704 = fmul fast float %702, %700
  %705 = fsub fast float 5.000000e-01, %651
  %706 = fadd fast float %705, %703
  %707 = fsub fast float 5.000000e-01, %652
  %708 = fadd fast float %707, %704
  %709 = fsub fast float %700, %650
  %710 = call float @dx.op.dot2.f32(i32 54, float %706, float %708, float %706, float %708)  ; Dot2(ax,ay,bx,by)
  %711 = call float @dx.op.binary.f32(i32 35, float %710, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %712 = call float @dx.op.dot2.f32(i32 54, float %641, float %642, float %641, float %642)  ; Dot2(ax,ay,bx,by)
  %713 = fmul fast float %712, %711
  %714 = call float @dx.op.unary.f32(i32 25, float %713)  ; Rsqrt(value)
  %715 = fmul fast float %714, %706
  %716 = fmul fast float %714, %708
  %717 = fadd fast float %715, %651
  %718 = fadd fast float %716, %652
  %719 = fmul fast float %706, %641
  %720 = fmul fast float %708, %642
  %721 = fmul fast float %719, %719
  %722 = fmul fast float %720, %720
  %723 = fadd fast float %721, %722
  %724 = call float @dx.op.unary.f32(i32 24, float %723)  ; Sqrt(value)
  %725 = fdiv fast float 1.000000e+00, %724
  %726 = fmul fast float %724, 3.906250e-03
  %727 = fmul fast float %204, 0x3F70624DE0000000
  %728 = fadd fast float %727, 0x3F70624DE0000000
  %729 = icmp sgt i32 %576, -1
  br i1 %729, label %730, label %792

; <label>:730                                     ; preds = %580
  br label %731

; <label>:731                                     ; preds = %788, %730
  %732 = phi float [ %763, %788 ], [ %61, %730 ]
  %733 = phi float [ %750, %788 ], [ %61, %730 ]
  %734 = phi float [ %733, %788 ], [ %61, %730 ]
  %735 = phi i32 [ %789, %788 ], [ 0, %730 ]
  %736 = sitofp i32 %735 to float
  %737 = fadd fast float %218, 5.000000e-01
  %738 = call float @dx.op.unary.f32(i32 22, float %737)  ; Frc(value)
  %739 = fadd fast float %736, %738
  %740 = sitofp i32 %576 to float
  %741 = fdiv fast float %739, %740
  %742 = fmul fast float %741, %741
  %743 = call float @dx.op.binary.f32(i32 36, float %742, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %744 = fmul fast float %743, %706
  %745 = fmul fast float %743, %708
  %746 = fmul fast float %743, %709
  %747 = fadd fast float %744, %717
  %748 = fadd fast float %745, %718
  %749 = fadd fast float %746, %650
  %750 = fdiv fast float 1.000000e+00, %749
  %751 = icmp ne i32 %591, 0
  %752 = fmul fast float %726, %743
  %753 = call float @dx.op.binary.f32(i32 36, float %752, float %592)  ; FMin(a,b)
  %754 = select i1 %751, float %753, float 0.000000e+00
  %755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %747, float %748, float undef, float undef, i32 0, i32 0, i32 undef, float %754)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = fcmp fast ogt float %756, -1.000000e+00
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 1
  %760 = select i1 %757, float %759, float 1.000000e+00
  %761 = fadd fast float %756, 1.000000e+00
  %762 = fmul fast float %760, %761
  %763 = call float @dx.op.unary.f32(i32 6, float %762)  ; FAbs(value)
  %764 = fmul fast float %763, %728
  %765 = fsub fast float %750, %763
  %766 = fsub fast float %765, %764
  %767 = fcmp fast ogt float %766, 0.000000e+00
  %768 = fcmp fast ogt float %571, 0.000000e+00
  br i1 %768, label %769, label %772, !dx.controlflow.hints !40

; <label>:769                                     ; preds = %731
  %770 = fsub fast float %750, %734
  %771 = call float @dx.op.binary.f32(i32 35, float %770, float %571)  ; FMax(a,b)
  br label %772

; <label>:772                                     ; preds = %769, %731
  %773 = phi float [ %771, %769 ], [ %568, %731 ]
  %774 = fcmp fast olt float %766, %773
  %775 = fcmp uge float %756, -1.000000e+00
  %776 = or i1 %54, %775
  %777 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  %778 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %779 = fcmp fast oeq float %747, %777
  %780 = fcmp fast oeq float %748, %778
  %781 = and i1 %779, %780
  %782 = and i1 %776, %781
  %783 = and i1 %767, %774
  %784 = and i1 %783, %782
  %785 = fcmp fast ogt float %743, %725
  %786 = and i1 %785, %784
  %787 = zext i1 %786 to i32
  br i1 %786, label %791, label %788, !dx.controlflow.hints !41

; <label>:788                                     ; preds = %772
  %789 = add nuw nsw i32 %735, 1
  %790 = icmp slt i32 %735, %576
  br i1 %790, label %731, label %791

; <label>:791                                     ; preds = %788, %772
  br label %792

; <label>:792                                     ; preds = %791, %580
  %793 = phi i32 [ 0, %580 ], [ %787, %791 ]
  %794 = phi float [ %61, %580 ], [ %763, %791 ]
  %795 = phi float [ %61, %580 ], [ %732, %791 ]
  %796 = phi float [ %61, %580 ], [ %750, %791 ]
  %797 = phi float [ %61, %580 ], [ %733, %791 ]
  %798 = fsub fast float %797, %795
  %799 = fsub fast float %796, %794
  %800 = fsub fast float %798, %799
  %801 = fcmp fast une float %800, 0.000000e+00
  %802 = fmul fast float %798, %796
  %803 = fmul fast float %797, %799
  %804 = fsub fast float %802, %803
  %805 = fdiv fast float 1.000000e+00, %800
  %806 = fmul fast float %804, %805
  %807 = select i1 %801, float %806, float %796
  %808 = fdiv fast float 1.000000e+00, %807
  %809 = fsub fast float %808, %650
  %810 = fdiv fast float %809, %709
  %811 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %812 = fmul fast float %811, %706
  %813 = fmul fast float %811, %708
  %814 = fadd fast float %812, %717
  %815 = fadd fast float %813, %718
  %816 = fadd fast float %814, -5.000000e-01
  %817 = fadd fast float %815, -5.000000e-01
  %818 = call float @dx.op.unary.f32(i32 6, float %816)  ; FAbs(value)
  %819 = call float @dx.op.unary.f32(i32 6, float %817)  ; FAbs(value)
  %820 = fadd fast float %818, -5.000000e-01
  %821 = fadd fast float %819, -5.000000e-01
  %822 = call float @dx.op.binary.f32(i32 35, float %820, float %821)  ; FMax(a,b)
  %823 = fcmp fast olt float %822, 0.000000e+00
  %824 = icmp ne i32 %793, 0
  %825 = and i1 %824, %823
  %826 = select i1 %825, float 0.000000e+00, float 1.000000e+00
  br label %827

; <label>:827                                     ; preds = %792, %563
  %828 = phi float [ %826, %792 ], [ 1.000000e+00, %563 ]
  %829 = fmul fast float %828, %556
  %830 = fmul fast float %828, %556
  %831 = fmul fast float %828, %556
  br label %832

; <label>:832                                     ; preds = %827, %555
  %833 = phi float [ %829, %827 ], [ %556, %555 ]
  %834 = phi float [ %830, %827 ], [ %556, %555 ]
  %835 = phi float [ %831, %827 ], [ %556, %555 ]
  %836 = call float @dx.op.binary.f32(i32 36, float %834, float %835)  ; FMin(a,b)
  %837 = call float @dx.op.binary.f32(i32 36, float %833, float %836)  ; FMin(a,b)
  %838 = fcmp fast ogt float %837, 0x3F10000000000000
  %839 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %838)  ; WaveAnyTrue(cond)
  %840 = select i1 %839, i32 %284, i32 0
  %841 = or i32 %279, %840
  %842 = lshr i32 %223, 5
  %843 = lshr i32 %224, 5
  %844 = fcmp fast olt float %833, 0x3F10000000000000
  %845 = call i1 @dx.op.waveAllTrue(i32 114, i1 %844)  ; WaveAllTrue(cond)
  %846 = fcmp fast ogt float %833, 0x3FEFFF8000000000
  %847 = call i1 @dx.op.waveAllTrue(i32 114, i1 %846)  ; WaveAllTrue(cond)
  %848 = or i1 %845, %847
  %849 = xor i1 %848, true
  %850 = and i32 %224, 16
  %851 = lshr i32 %223, 1
  %852 = and i32 %851, 8
  %853 = icmp eq i32 %850, 0
  %854 = or i32 %852, %35
  %855 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %855, label %856, label %898, !dx.controlflow.hints !42

; <label>:856                                     ; preds = %832
  %857 = shl i32 1, %854
  %858 = select i1 %847, i32 %857, i32 0
  %859 = shl i32 65536, %854
  %860 = select i1 %845, i32 %859, i32 0
  %861 = or i32 %858, %860
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %868, label %863, !dx.controlflow.hints !43

; <label>:863                                     ; preds = %856
  br i1 %853, label %866, label %864, !dx.controlflow.hints !44

; <label>:864                                     ; preds = %863
  %865 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %842, i32 %843, i32 %282, i32 %861)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %868

; <label>:866                                     ; preds = %863
  %867 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %842, i32 %843, i32 %282, i32 %861)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %868

; <label>:868                                     ; preds = %866, %864, %856
  br i1 %848, label %898, label %869

; <label>:869                                     ; preds = %868
  br label %870

; <label>:870                                     ; preds = %895, %869
  %871 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %842, i32 %843, i32 %282, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %872 = and i32 %871, 3
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %874, label %895, !dx.controlflow.hints !45

; <label>:874                                     ; preds = %870
  %875 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.i32 %876, 3
  %878 = call i32 @dx.op.binary.i32(i32 40, i32 %877, i32 %875)  ; UMin(a,b)
  %879 = extractvalue %dx.types.CBufRet.i32 %876, 2
  %880 = udiv i32 %878, %879
  %881 = urem i32 %878, %879
  %882 = extractvalue %dx.types.CBufRet.i32 %876, 1
  %883 = urem i32 %881, %882
  %884 = udiv i32 %881, %882
  %885 = shl i32 %883, 6
  %886 = and i32 %885, 32704
  %887 = shl i32 %884, 15
  %888 = and i32 %887, 8355840
  %889 = shl i32 %880, 23
  %890 = and i32 %889, 2139095040
  %891 = or i32 %890, %886
  %892 = or i32 %891, %888
  %893 = or i32 %892, 3
  %894 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %842, i32 %843, i32 %282, i32 %893)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %898

; <label>:895                                     ; preds = %870
  %896 = icmp eq i32 %872, 3
  br i1 %896, label %897, label %870, !dx.controlflow.hints !46

; <label>:897                                     ; preds = %895
  br label %898

; <label>:898                                     ; preds = %897, %874, %868, %832
  %899 = phi i32 [ 0, %868 ], [ %893, %874 ], [ 0, %832 ], [ %871, %897 ]
  %900 = phi i1 [ false, %868 ], [ %849, %874 ], [ %849, %832 ], [ %849, %897 ]
  br i1 %900, label %901, label %917, !dx.controlflow.hints !47

; <label>:901                                     ; preds = %898
  %902 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %899)  ; WaveReadLaneFirst(value)
  %903 = lshr i32 %902, 23
  %904 = and i32 %903, 255
  %905 = and i32 %223, 31
  %906 = and i32 %224, 31
  %907 = lshr i32 %902, 1
  %908 = and i32 %907, 16352
  %909 = lshr i32 %902, 10
  %910 = and i32 %909, 8160
  %911 = or i32 %908, %905
  %912 = or i32 %910, %906
  %913 = fmul fast float %833, 2.550000e+02
  %914 = fadd fast float %913, %217
  %915 = call float @dx.op.unary.f32(i32 27, float %914)  ; Round_ni(value)
  %916 = fmul fast float %915, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %911, i32 %912, i32 %904, float %916, float %916, float %916, float %916, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %917

; <label>:917                                     ; preds = %901, %898
  %918 = icmp eq i32 %280, %284
  br i1 %918, label %919, label %278, !llvm.loop !48

; <label>:919                                     ; preds = %917
  br label %920

; <label>:920                                     ; preds = %919, %250
  %921 = phi i32 [ 0, %250 ], [ %841, %919 ]
  %922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.i32 %922, 0
  %924 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %923, i32 %251)  ; UMad(a,b,c)
  %925 = shl i32 %924, 2
  %926 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %925, i32 undef, i32 undef, i32 %921)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %927 = add i32 %251, 1
  %928 = icmp ugt i32 %927, %247
  br i1 %928, label %929, label %250

; <label>:929                                     ; preds = %920
  br label %930

; <label>:930                                     ; preds = %929, %222, %0
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
!29 = !{!30, !31}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !33}
!33 = !{i32 0, i64 524560, i32 4, !34}
!34 = !{i32 8, i32 4, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
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
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}

