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
; shader hash: 56e4620bd16e2c87b1622df93ff2f488
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
  br i1 %221, label %882, label %222, !dx.controlflow.hints !35

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
  br i1 %248, label %882, label %249

; <label>:249                                     ; preds = %222
  br label %250

; <label>:250                                     ; preds = %872, %249
  %251 = phi i32 [ %879, %872 ], [ %245, %249 ]
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
  br i1 %276, label %872, label %277

; <label>:277                                     ; preds = %250
  br label %278

; <label>:278                                     ; preds = %869, %277
  %279 = phi i32 [ %795, %869 ], [ 0, %277 ]
  %280 = phi i32 [ %285, %869 ], [ %275, %277 ]
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
  %393 = select i1 %324, float %392, float 1.000000e+00
  %394 = fmul fast float %343, %308
  %395 = fsub fast float 1.000000e+00, %394
  %396 = fmul fast float %395, %314
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %398 = fmul fast float %397, %393
  %399 = fmul fast float %398, 2.000000e+00
  %400 = fsub fast float 3.000000e+00, %399
  %401 = fmul fast float %389, %373
  %402 = fmul fast float %398, %398
  %403 = fmul fast float %402, %401
  %404 = fmul fast float %403, %400
  %405 = icmp ne i32 %322, 255
  %406 = call float @dx.op.binary.f32(i32 36, float %404, float %404)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %404, float %406)  ; FMin(a,b)
  %408 = fcmp fast ogt float %407, 0.000000e+00
  %409 = and i1 %405, %408
  br i1 %409, label %410, label %509, !dx.controlflow.hints !37

; <label>:410                                     ; preds = %372
  %411 = select i1 %324, float 1.000000e+00, float %392
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
  %427 = add nuw nsw i32 %412, 48
  %428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = extractvalue %dx.types.ResRet.f32 %428, 1
  %431 = extractvalue %dx.types.ResRet.f32 %428, 2
  %432 = extractvalue %dx.types.ResRet.f32 %428, 3
  %433 = add nuw nsw i32 %412, 64
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = extractvalue %dx.types.ResRet.f32 %434, 3
  %439 = add nuw nsw i32 %412, 80
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = extractvalue %dx.types.ResRet.f32 %440, 3
  %445 = add nuw nsw i32 %412, 96
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %481 = fsub fast float -0.000000e+00, %479
  %482 = fmul fast float %416, 5.000000e-01
  %483 = call float @dx.op.dot2.f32(i32 54, float %217, float %217, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %484 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %485 = fmul fast float %484, 0x404A7DD040000000
  %486 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %487 = fmul fast float %486, %425
  %488 = fadd fast float %487, %482
  %489 = call float @dx.op.tertiary.f32(i32 46, float %488, float %481, float 0.000000e+00)  ; FMad(a,b,c)
  %490 = call float @dx.op.tertiary.f32(i32 46, float %488, float %480, float 0.000000e+00)  ; FMad(a,b,c)
  %491 = fadd fast float %489, %474
  %492 = fadd fast float %490, %475
  %493 = fmul fast float %491, %420
  %494 = fmul fast float %492, %420
  %495 = call float @dx.op.binary.f32(i32 35, float %493, float %416)  ; FMax(a,b)
  %496 = call float @dx.op.binary.f32(i32 35, float %494, float %416)  ; FMax(a,b)
  %497 = call float @dx.op.binary.f32(i32 36, float %495, float %417)  ; FMin(a,b)
  %498 = call float @dx.op.binary.f32(i32 36, float %496, float %417)  ; FMin(a,b)
  %499 = fadd fast float %497, %414
  %500 = fadd fast float %498, %415
  %501 = uitofp i32 %451 to float
  %502 = fadd fast float %477, %424
  %503 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %499, float %500, float %501, float undef, i32 0, i32 0, i32 undef, float %502)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = fadd fast float %504, -1.000000e+00
  %506 = fmul fast float %505, %411
  %507 = fadd fast float %506, 1.000000e+00
  %508 = fmul fast float %507, %404
  br label %509

; <label>:509                                     ; preds = %410, %372
  %510 = phi float [ %508, %410 ], [ %404, %372 ]
  %511 = call float @dx.op.binary.f32(i32 36, float %510, float %510)  ; FMin(a,b)
  %512 = call float @dx.op.binary.f32(i32 36, float %510, float %511)  ; FMin(a,b)
  %513 = fcmp fast ogt float %512, 0.000000e+00
  %514 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %345, float %346, float %347)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = fcmp fast ogt float %514, 0.000000e+00
  %516 = and i1 %513, %515
  br i1 %516, label %517, label %786, !dx.controlflow.hints !38

; <label>:517                                     ; preds = %509
  %518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.f32 %518, 1
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %522 = select i1 %54, float %519, float %521
  %523 = extractvalue %dx.types.CBufRet.f32 %518, 2
  %524 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %525 = select i1 %54, float %523, float %524
  %526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.i32 %526, 0
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 0
  %530 = select i1 %54, i32 %527, i32 %529
  %531 = fcmp fast olt float %522, 5.000000e-01
  %532 = icmp eq i32 %530, 0
  %533 = or i1 %531, %532
  br i1 %533, label %781, label %534, !dx.controlflow.hints !39

; <label>:534                                     ; preds = %517
  %535 = fsub fast float %305, %116
  %536 = fsub fast float %306, %117
  %537 = fsub fast float %307, %118
  %538 = fmul fast float %535, %535
  %539 = fmul fast float %536, %536
  %540 = fadd fast float %538, %539
  %541 = fmul fast float %537, %537
  %542 = fadd fast float %540, %541
  %543 = call float @dx.op.unary.f32(i32 24, float %542)  ; Sqrt(value)
  %544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.i32 %544, 0
  %546 = uitofp i32 %545 to float
  %547 = fmul fast float %522, %302
  %548 = fdiv fast float %547, %543
  %549 = call float @dx.op.binary.f32(i32 36, float %548, float 1.000000e+01)  ; FMin(a,b)
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %553 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %554 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %558 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %559 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = extractvalue %dx.types.CBufRet.f32 %560, 1
  %563 = extractvalue %dx.types.CBufRet.f32 %560, 2
  %564 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %568 = extractvalue %dx.types.CBufRet.f32 %565, 2
  %569 = extractvalue %dx.types.CBufRet.f32 %565, 3
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %574 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %578 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %579 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %580 = select i1 %54, float %551, float %566
  %581 = select i1 %54, float %556, float %571
  %582 = select i1 %54, float %561, float %576
  %583 = select i1 %54, float %552, float %567
  %584 = select i1 %54, float %557, float %572
  %585 = select i1 %54, float %562, float %577
  %586 = select i1 %54, float %553, float %568
  %587 = select i1 %54, float %558, float %573
  %588 = select i1 %54, float %563, float %578
  %589 = select i1 %54, float %554, float %569
  %590 = select i1 %54, float %559, float %574
  %591 = select i1 %54, float %564, float %579
  %592 = fmul fast float %218, 0x401061CAC0000000
  %593 = fmul fast float %218, 0x4023E1D7E0000000
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %597 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %598 = extractvalue %dx.types.CBufRet.f32 %594, 3
  %599 = fsub fast float -0.000000e+00, %345
  %600 = fmul fast float %347, %599
  %601 = fmul fast float %345, %599
  %602 = fmul fast float %346, %346
  %603 = fsub fast float %601, %602
  %604 = fdiv fast float 1.000000e+00, %61
  %605 = fmul fast float %597, %50
  %606 = fmul fast float %598, %51
  %607 = fmul fast float %522, %345
  %608 = fmul fast float %522, %347
  %609 = fadd fast float %607, %116
  %610 = fadd fast float %608, %118
  %611 = fadd fast float %593, 5.000000e-01
  %612 = call float @dx.op.unary.f32(i32 22, float %611)  ; Frc(value)
  %613 = bitcast float %612 to i32
  %614 = ashr i32 %613, 1
  %615 = add nsw i32 %614, 532487669
  %616 = bitcast i32 %615 to float
  %617 = fmul fast float %616, %549
  %618 = fadd fast float %592, 5.000000e-01
  %619 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %620 = fmul fast float %619, 0x401921FB60000000
  %621 = call float @dx.op.unary.f32(i32 12, float %620)  ; Cos(value)
  %622 = fmul fast float %621, %621
  %623 = fsub fast float 1.000000e+00, %622
  %624 = bitcast float %623 to i32
  %625 = ashr i32 %624, 1
  %626 = add nsw i32 %625, 532487669
  %627 = bitcast i32 %626 to float
  %628 = fmul fast float %617, %621
  %629 = fmul fast float %628, %346
  %630 = fmul fast float %628, %599
  %631 = fadd fast float %609, %629
  %632 = fmul fast float %627, %617
  %633 = fmul fast float %600, %632
  %634 = fmul fast float %632, %347
  %635 = fmul fast float %632, %603
  %636 = fsub fast float %631, %633
  %637 = fadd fast float %634, %522
  %638 = fmul fast float %637, %346
  %639 = fadd fast float %630, %117
  %640 = fadd fast float %639, %638
  %641 = fadd fast float %610, %635
  %642 = fmul fast float %636, %580
  %643 = call float @dx.op.tertiary.f32(i32 46, float %640, float %583, float %642)  ; FMad(a,b,c)
  %644 = call float @dx.op.tertiary.f32(i32 46, float %641, float %586, float %643)  ; FMad(a,b,c)
  %645 = fadd fast float %644, %589
  %646 = fmul fast float %636, %581
  %647 = call float @dx.op.tertiary.f32(i32 46, float %640, float %584, float %646)  ; FMad(a,b,c)
  %648 = call float @dx.op.tertiary.f32(i32 46, float %641, float %587, float %647)  ; FMad(a,b,c)
  %649 = fadd fast float %648, %590
  %650 = fmul fast float %636, %582
  %651 = call float @dx.op.tertiary.f32(i32 46, float %640, float %585, float %650)  ; FMad(a,b,c)
  %652 = call float @dx.op.tertiary.f32(i32 46, float %641, float %588, float %651)  ; FMad(a,b,c)
  %653 = fadd fast float %652, %591
  %654 = fdiv fast float 1.000000e+00, %653
  %655 = fmul fast float %645, 5.000000e-01
  %656 = fmul fast float %649, -5.000000e-01
  %657 = fmul fast float %655, %654
  %658 = fmul fast float %656, %654
  %659 = fsub fast float 5.000000e-01, %605
  %660 = fadd fast float %659, %657
  %661 = fsub fast float 5.000000e-01, %606
  %662 = fadd fast float %661, %658
  %663 = fsub fast float %654, %604
  %664 = call float @dx.op.dot2.f32(i32 54, float %660, float %662, float %660, float %662)  ; Dot2(ax,ay,bx,by)
  %665 = call float @dx.op.binary.f32(i32 35, float %664, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %666 = call float @dx.op.dot2.f32(i32 54, float %595, float %596, float %595, float %596)  ; Dot2(ax,ay,bx,by)
  %667 = fmul fast float %666, %665
  %668 = call float @dx.op.unary.f32(i32 25, float %667)  ; Rsqrt(value)
  %669 = fmul fast float %668, %660
  %670 = fmul fast float %668, %662
  %671 = fadd fast float %669, %605
  %672 = fadd fast float %670, %606
  %673 = fmul fast float %660, %595
  %674 = fmul fast float %662, %596
  %675 = fmul fast float %673, %673
  %676 = fmul fast float %674, %674
  %677 = fadd fast float %675, %676
  %678 = call float @dx.op.unary.f32(i32 24, float %677)  ; Sqrt(value)
  %679 = fdiv fast float 1.000000e+00, %678
  %680 = fmul fast float %678, 3.906250e-03
  %681 = fmul fast float %204, 0x3F70624DE0000000
  %682 = fadd fast float %681, 0x3F70624DE0000000
  %683 = icmp sgt i32 %530, -1
  br i1 %683, label %684, label %746

; <label>:684                                     ; preds = %534
  br label %685

; <label>:685                                     ; preds = %742, %684
  %686 = phi float [ %717, %742 ], [ %61, %684 ]
  %687 = phi float [ %704, %742 ], [ %61, %684 ]
  %688 = phi float [ %687, %742 ], [ %61, %684 ]
  %689 = phi i32 [ %743, %742 ], [ 0, %684 ]
  %690 = sitofp i32 %689 to float
  %691 = fadd fast float %218, 5.000000e-01
  %692 = call float @dx.op.unary.f32(i32 22, float %691)  ; Frc(value)
  %693 = fadd fast float %690, %692
  %694 = sitofp i32 %530 to float
  %695 = fdiv fast float %693, %694
  %696 = fmul fast float %695, %695
  %697 = call float @dx.op.binary.f32(i32 36, float %696, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %698 = fmul fast float %697, %660
  %699 = fmul fast float %697, %662
  %700 = fmul fast float %697, %663
  %701 = fadd fast float %698, %671
  %702 = fadd fast float %699, %672
  %703 = fadd fast float %700, %604
  %704 = fdiv fast float 1.000000e+00, %703
  %705 = icmp ne i32 %545, 0
  %706 = fmul fast float %680, %697
  %707 = call float @dx.op.binary.f32(i32 36, float %706, float %546)  ; FMin(a,b)
  %708 = select i1 %705, float %707, float 0.000000e+00
  %709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %701, float %702, float undef, float undef, i32 0, i32 0, i32 undef, float %708)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = fcmp fast ogt float %710, -1.000000e+00
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 1
  %714 = select i1 %711, float %713, float 1.000000e+00
  %715 = fadd fast float %710, 1.000000e+00
  %716 = fmul fast float %714, %715
  %717 = call float @dx.op.unary.f32(i32 6, float %716)  ; FAbs(value)
  %718 = fmul fast float %717, %682
  %719 = fsub fast float %704, %717
  %720 = fsub fast float %719, %718
  %721 = fcmp fast ogt float %720, 0.000000e+00
  %722 = fcmp fast ogt float %525, 0.000000e+00
  br i1 %722, label %723, label %726, !dx.controlflow.hints !40

; <label>:723                                     ; preds = %685
  %724 = fsub fast float %704, %688
  %725 = call float @dx.op.binary.f32(i32 35, float %724, float %525)  ; FMax(a,b)
  br label %726

; <label>:726                                     ; preds = %723, %685
  %727 = phi float [ %725, %723 ], [ %522, %685 ]
  %728 = fcmp fast olt float %720, %727
  %729 = fcmp uge float %710, -1.000000e+00
  %730 = or i1 %54, %729
  %731 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %732 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %733 = fcmp fast oeq float %701, %731
  %734 = fcmp fast oeq float %702, %732
  %735 = and i1 %733, %734
  %736 = and i1 %730, %735
  %737 = and i1 %721, %728
  %738 = and i1 %737, %736
  %739 = fcmp fast ogt float %697, %679
  %740 = and i1 %739, %738
  %741 = zext i1 %740 to i32
  br i1 %740, label %745, label %742, !dx.controlflow.hints !41

; <label>:742                                     ; preds = %726
  %743 = add nuw nsw i32 %689, 1
  %744 = icmp slt i32 %689, %530
  br i1 %744, label %685, label %745

; <label>:745                                     ; preds = %742, %726
  br label %746

; <label>:746                                     ; preds = %745, %534
  %747 = phi i32 [ 0, %534 ], [ %741, %745 ]
  %748 = phi float [ %61, %534 ], [ %717, %745 ]
  %749 = phi float [ %61, %534 ], [ %686, %745 ]
  %750 = phi float [ %61, %534 ], [ %704, %745 ]
  %751 = phi float [ %61, %534 ], [ %687, %745 ]
  %752 = fsub fast float %751, %749
  %753 = fsub fast float %750, %748
  %754 = fsub fast float %752, %753
  %755 = fcmp fast une float %754, 0.000000e+00
  %756 = fmul fast float %752, %750
  %757 = fmul fast float %751, %753
  %758 = fsub fast float %756, %757
  %759 = fdiv fast float 1.000000e+00, %754
  %760 = fmul fast float %758, %759
  %761 = select i1 %755, float %760, float %750
  %762 = fdiv fast float 1.000000e+00, %761
  %763 = fsub fast float %762, %604
  %764 = fdiv fast float %763, %663
  %765 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %766 = fmul fast float %765, %660
  %767 = fmul fast float %765, %662
  %768 = fadd fast float %766, %671
  %769 = fadd fast float %767, %672
  %770 = fadd fast float %768, -5.000000e-01
  %771 = fadd fast float %769, -5.000000e-01
  %772 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %773 = call float @dx.op.unary.f32(i32 6, float %771)  ; FAbs(value)
  %774 = fadd fast float %772, -5.000000e-01
  %775 = fadd fast float %773, -5.000000e-01
  %776 = call float @dx.op.binary.f32(i32 35, float %774, float %775)  ; FMax(a,b)
  %777 = fcmp fast olt float %776, 0.000000e+00
  %778 = icmp ne i32 %747, 0
  %779 = and i1 %778, %777
  %780 = select i1 %779, float 0.000000e+00, float 1.000000e+00
  br label %781

; <label>:781                                     ; preds = %746, %517
  %782 = phi float [ %780, %746 ], [ 1.000000e+00, %517 ]
  %783 = fmul fast float %782, %510
  %784 = fmul fast float %782, %510
  %785 = fmul fast float %782, %510
  br label %786

; <label>:786                                     ; preds = %781, %509
  %787 = phi float [ %783, %781 ], [ %510, %509 ]
  %788 = phi float [ %784, %781 ], [ %510, %509 ]
  %789 = phi float [ %785, %781 ], [ %510, %509 ]
  %790 = call float @dx.op.binary.f32(i32 36, float %788, float %789)  ; FMin(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %787, float %790)  ; FMin(a,b)
  %792 = fcmp fast ogt float %791, 0x3F10000000000000
  %793 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %792)  ; WaveAnyTrue(cond)
  %794 = select i1 %793, i32 %284, i32 0
  %795 = or i32 %279, %794
  %796 = lshr i32 %223, 5
  %797 = lshr i32 %224, 5
  %798 = fcmp fast olt float %787, 0x3F10000000000000
  %799 = call i1 @dx.op.waveAllTrue(i32 114, i1 %798)  ; WaveAllTrue(cond)
  %800 = fcmp fast ogt float %787, 0x3FEFFF8000000000
  %801 = call i1 @dx.op.waveAllTrue(i32 114, i1 %800)  ; WaveAllTrue(cond)
  %802 = or i1 %799, %801
  %803 = xor i1 %802, true
  %804 = lshr i32 %224, 1
  %805 = and i32 %804, 8
  %806 = lshr i32 %223, 2
  %807 = and i32 %806, 4
  %808 = or i32 %805, %35
  %809 = or i32 %808, %807
  %810 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %810, label %811, label %850, !dx.controlflow.hints !42

; <label>:811                                     ; preds = %786
  %812 = shl i32 1, %809
  %813 = select i1 %801, i32 %812, i32 0
  %814 = shl i32 65536, %809
  %815 = select i1 %799, i32 %814, i32 0
  %816 = or i32 %813, %815
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %820, label %818, !dx.controlflow.hints !43

; <label>:818                                     ; preds = %811
  %819 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %796, i32 %797, i32 %282, i32 %816)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %820

; <label>:820                                     ; preds = %818, %811
  br i1 %802, label %850, label %821

; <label>:821                                     ; preds = %820
  br label %822

; <label>:822                                     ; preds = %847, %821
  %823 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %796, i32 %797, i32 %282, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %824 = and i32 %823, 3
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %847, !dx.controlflow.hints !44

; <label>:826                                     ; preds = %822
  %827 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.i32 %828, 3
  %830 = call i32 @dx.op.binary.i32(i32 40, i32 %829, i32 %827)  ; UMin(a,b)
  %831 = extractvalue %dx.types.CBufRet.i32 %828, 2
  %832 = udiv i32 %830, %831
  %833 = urem i32 %830, %831
  %834 = extractvalue %dx.types.CBufRet.i32 %828, 1
  %835 = urem i32 %833, %834
  %836 = udiv i32 %833, %834
  %837 = shl i32 %835, 6
  %838 = and i32 %837, 32704
  %839 = shl i32 %836, 15
  %840 = and i32 %839, 8355840
  %841 = shl i32 %832, 23
  %842 = and i32 %841, 2139095040
  %843 = or i32 %842, %838
  %844 = or i32 %843, %840
  %845 = or i32 %844, 3
  %846 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %796, i32 %797, i32 %282, i32 %845)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %850

; <label>:847                                     ; preds = %822
  %848 = icmp eq i32 %824, 3
  br i1 %848, label %849, label %822, !dx.controlflow.hints !45

; <label>:849                                     ; preds = %847
  br label %850

; <label>:850                                     ; preds = %849, %826, %820, %786
  %851 = phi i32 [ 0, %820 ], [ %845, %826 ], [ 0, %786 ], [ %823, %849 ]
  %852 = phi i1 [ false, %820 ], [ %803, %826 ], [ %803, %786 ], [ %803, %849 ]
  br i1 %852, label %853, label %869, !dx.controlflow.hints !46

; <label>:853                                     ; preds = %850
  %854 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %851)  ; WaveReadLaneFirst(value)
  %855 = lshr i32 %854, 23
  %856 = and i32 %855, 255
  %857 = and i32 %223, 31
  %858 = and i32 %224, 31
  %859 = lshr i32 %854, 1
  %860 = and i32 %859, 16352
  %861 = lshr i32 %854, 10
  %862 = and i32 %861, 8160
  %863 = or i32 %860, %857
  %864 = or i32 %862, %858
  %865 = fmul fast float %787, 2.550000e+02
  %866 = fadd fast float %865, %217
  %867 = call float @dx.op.unary.f32(i32 27, float %866)  ; Round_ni(value)
  %868 = fmul fast float %867, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %863, i32 %864, i32 %856, float %868, float %868, float %868, float %868, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %869

; <label>:869                                     ; preds = %853, %850
  %870 = icmp eq i32 %280, %284
  br i1 %870, label %871, label %278, !llvm.loop !47

; <label>:871                                     ; preds = %869
  br label %872

; <label>:872                                     ; preds = %871, %250
  %873 = phi i32 [ 0, %250 ], [ %795, %871 ]
  %874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.i32 %874, 0
  %876 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %875, i32 %251)  ; UMad(a,b,c)
  %877 = shl i32 %876, 2
  %878 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %877, i32 undef, i32 undef, i32 %873)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %879 = add i32 %251, 1
  %880 = icmp ugt i32 %879, %247
  br i1 %880, label %881, label %250

; <label>:881                                     ; preds = %872
  br label %882

; <label>:882                                     ; preds = %881, %222, %0
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
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}

