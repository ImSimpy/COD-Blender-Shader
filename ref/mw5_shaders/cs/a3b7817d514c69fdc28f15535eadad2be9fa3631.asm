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
; shader hash: 46b422d7abd1968b91810b77e67b6cba
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
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

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
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = fmul fast float %149, 0x3FE3C6EF40000000
  %151 = frem fast float %50, 2.560000e+02
  %152 = frem fast float %51, 2.560000e+02
  %153 = fptoui float %151 to i32
  %154 = fptoui float %152 to i32
  %155 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %153, i32 %154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = fadd fast float %156, %150
  %158 = call float @dx.op.unary.f32(i32 22, float %157)  ; Frc(value)
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %542, label %162, !dx.controlflow.hints !35

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
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = lshr i32 %180, 16
  %182 = and i32 %180, 65535
  %183 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %181, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %184 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %182, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %185 = lshr i32 %183, 5
  %186 = lshr i32 %184, 5
  %187 = call i32 @dx.op.binary.i32(i32 40, i32 %186, i32 %173)  ; UMin(a,b)
  %188 = icmp ugt i32 %185, %187
  br i1 %188, label %542, label %189

; <label>:189                                     ; preds = %162
  br label %190

; <label>:190                                     ; preds = %532, %189
  %191 = phi i32 [ %539, %532 ], [ %185, %189 ]
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 0
  %194 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %193, i32 %191)  ; UMad(a,b,c)
  %195 = shl i32 %194, 2
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %216, label %532, label %217

; <label>:217                                     ; preds = %190
  br label %218

; <label>:218                                     ; preds = %529, %217
  %219 = phi i32 [ %453, %529 ], [ 0, %217 ]
  %220 = phi i32 [ %225, %529 ], [ %215, %217 ]
  %221 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %220)  ; FirstbitLo(value)
  %222 = add i32 %221, %198
  %223 = and i32 %221, 31
  %224 = shl i32 1, %223
  %225 = xor i32 %224, %220
  %226 = mul i32 %222, 112
  %227 = add i32 %226, 16
  %228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = extractvalue %dx.types.ResRet.f32 %228, 2
  %232 = add i32 %226, 28
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = add i32 %226, 32
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = add i32 %226, 48
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = extractvalue %dx.types.ResRet.f32 %241, 1
  %244 = extractvalue %dx.types.ResRet.f32 %241, 2
  %245 = extractvalue %dx.types.ResRet.f32 %241, 3
  %246 = add i32 %226, 64
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = add i32 %226, 92
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 65535
  %256 = uitofp i32 %255 to float
  %257 = lshr i32 %254, 16
  %258 = uitofp i32 %257 to float
  %259 = and i32 %234, 65535
  %260 = and i32 %234, 50331648
  %261 = icmp eq i32 %260, 33554432
  %262 = call float @dx.op.dot3.f32(i32 55, float %237, float %238, float %239, float %237, float %238, float %239)  ; Dot3(ax,ay,az,bx,by,bz)
  %263 = fsub fast float %116, %242
  %264 = fsub fast float %117, %243
  %265 = fsub fast float %118, %244
  %266 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %237, float %238, float %239)  ; Dot3(ax,ay,az,bx,by,bz)
  %267 = fdiv fast float %266, %262
  %268 = call float @dx.op.binary.f32(i32 35, float %267, float -1.000000e+00)  ; FMax(a,b)
  %269 = call float @dx.op.binary.f32(i32 36, float %268, float 1.000000e+00)  ; FMin(a,b)
  %270 = fmul fast float %269, %237
  %271 = fmul fast float %269, %238
  %272 = fmul fast float %269, %239
  %273 = fadd fast float %270, %242
  %274 = fadd fast float %271, %243
  %275 = fadd fast float %272, %244
  %276 = fsub fast float %273, %116
  %277 = fsub fast float %274, %117
  %278 = fsub fast float %275, %118
  %279 = call float @dx.op.dot3.f32(i32 55, float %276, float %277, float %278, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %280 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %281 = fdiv fast float 1.000000e+00, %280
  %282 = fmul fast float %276, %281
  %283 = fmul fast float %277, %281
  %284 = fmul fast float %278, %281
  br i1 %261, label %285, label %309, !dx.controlflow.hints !36

; <label>:285                                     ; preds = %218
  %286 = fmul fast float %250, %229
  %287 = fmul fast float %250, %230
  %288 = fmul fast float %250, %231
  %289 = fsub fast float %286, %116
  %290 = fadd fast float %289, %273
  %291 = fsub fast float %287, %117
  %292 = fadd fast float %291, %274
  %293 = fsub fast float %288, %118
  %294 = fadd fast float %293, %275
  %295 = call float @dx.op.dot3.f32(i32 55, float %290, float %292, float %294, float %290, float %292, float %294)  ; Dot3(ax,ay,az,bx,by,bz)
  %296 = call float @dx.op.unary.f32(i32 25, float %295)  ; Rsqrt(value)
  %297 = fmul fast float %296, %290
  %298 = fmul fast float %296, %292
  %299 = fmul fast float %296, %294
  %300 = fsub fast float %116, %273
  %301 = fsub fast float %117, %274
  %302 = fsub fast float %118, %275
  %303 = fsub fast float -0.000000e+00, %300
  %304 = fsub fast float -0.000000e+00, %301
  %305 = fsub fast float -0.000000e+00, %302
  %306 = call float @dx.op.dot3.f32(i32 55, float %303, float %304, float %305, float %229, float %230, float %231)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = fcmp fast ogt float %306, 0.000000e+00
  %308 = uitofp i1 %307 to float
  br label %309

; <label>:309                                     ; preds = %285, %218
  %310 = phi float [ %308, %285 ], [ 1.000000e+00, %218 ]
  %311 = phi float [ %297, %285 ], [ %282, %218 ]
  %312 = phi float [ %298, %285 ], [ %283, %218 ]
  %313 = phi float [ %299, %285 ], [ %284, %218 ]
  %314 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %311, float %312, float %313)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = fmul fast float %314, %314
  %316 = call float @dx.op.unary.f32(i32 7, float %315)  ; Saturate(value)
  %317 = fsub fast float 1.000000e+00, %316
  %318 = fmul fast float %317, 5.000000e-01
  %319 = fcmp fast ogt float %314, 0.000000e+00
  %320 = fsub fast float 1.000000e+00, %318
  %321 = select i1 %319, float %318, float %320
  %322 = fmul fast float %321, %258
  %323 = fadd fast float %322, %256
  %324 = fmul fast float %323, 0x3EF0001000000000
  %325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %324, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = fmul fast float %314, %248
  %328 = fadd fast float %327, %249
  %329 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %330 = select i1 %261, float %329, float 1.000000e+00
  %331 = fmul fast float %280, %245
  %332 = fsub fast float 1.000000e+00, %331
  %333 = fmul fast float %332, %251
  %334 = call float @dx.op.unary.f32(i32 7, float %333)  ; Saturate(value)
  %335 = fmul fast float %334, %330
  %336 = fmul fast float %335, 2.000000e+00
  %337 = fsub fast float 3.000000e+00, %336
  %338 = fmul fast float %326, %310
  %339 = fmul fast float %335, %335
  %340 = fmul fast float %339, %338
  %341 = fmul fast float %340, %337
  %342 = icmp ne i32 %259, 255
  %343 = call float @dx.op.binary.f32(i32 36, float %341, float %341)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %341, float %343)  ; FMin(a,b)
  %345 = fcmp fast ogt float %344, 0.000000e+00
  %346 = and i1 %342, %345
  br i1 %346, label %347, label %446, !dx.controlflow.hints !37

; <label>:347                                     ; preds = %309
  %348 = select i1 %261, float 1.000000e+00, float %329
  %349 = mul nuw nsw i32 %259, 176
  %350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = extractvalue %dx.types.ResRet.f32 %350, 1
  %353 = extractvalue %dx.types.ResRet.f32 %350, 2
  %354 = extractvalue %dx.types.ResRet.f32 %350, 3
  %355 = add nuw nsw i32 %349, 16
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = add nuw nsw i32 %349, 32
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = add nuw nsw i32 %349, 48
  %365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  %369 = extractvalue %dx.types.ResRet.f32 %365, 3
  %370 = add nuw nsw i32 %349, 64
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  %376 = add nuw nsw i32 %349, 80
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = extractvalue %dx.types.ResRet.f32 %377, 2
  %381 = extractvalue %dx.types.ResRet.f32 %377, 3
  %382 = add nuw nsw i32 %349, 96
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = extractvalue %dx.types.ResRet.f32 %383, 3
  %388 = bitcast float %358 to i32
  %389 = fmul fast float %145, %363
  %390 = fmul fast float %146, %363
  %391 = fmul fast float %147, %363
  %392 = fadd fast float %389, %116
  %393 = fadd fast float %390, %117
  %394 = fadd fast float %391, %118
  %395 = fmul fast float %392, %366
  %396 = call float @dx.op.tertiary.f32(i32 46, float %393, float %372, float %395)  ; FMad(a,b,c)
  %397 = call float @dx.op.tertiary.f32(i32 46, float %394, float %378, float %396)  ; FMad(a,b,c)
  %398 = fadd fast float %397, %384
  %399 = fmul fast float %392, %367
  %400 = call float @dx.op.tertiary.f32(i32 46, float %393, float %373, float %399)  ; FMad(a,b,c)
  %401 = call float @dx.op.tertiary.f32(i32 46, float %394, float %379, float %400)  ; FMad(a,b,c)
  %402 = fadd fast float %401, %385
  %403 = fmul fast float %392, %368
  %404 = call float @dx.op.tertiary.f32(i32 46, float %393, float %374, float %403)  ; FMad(a,b,c)
  %405 = call float @dx.op.tertiary.f32(i32 46, float %394, float %380, float %404)  ; FMad(a,b,c)
  %406 = fadd fast float %405, %386
  %407 = fmul fast float %392, %369
  %408 = call float @dx.op.tertiary.f32(i32 46, float %393, float %375, float %407)  ; FMad(a,b,c)
  %409 = call float @dx.op.tertiary.f32(i32 46, float %394, float %381, float %408)  ; FMad(a,b,c)
  %410 = fadd fast float %409, %387
  %411 = fdiv fast float %398, %410
  %412 = fdiv fast float %402, %410
  %413 = fdiv fast float %406, %410
  %414 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %413)  ; FMax(a,b)
  %415 = fmul fast float %158, 0x401921FB60000000
  %416 = call float @dx.op.unary.f32(i32 13, float %415)  ; Sin(value)
  %417 = call float @dx.op.unary.f32(i32 12, float %415)  ; Cos(value)
  %418 = fsub fast float -0.000000e+00, %416
  %419 = fmul fast float %353, 5.000000e-01
  %420 = call float @dx.op.dot2.f32(i32 54, float %158, float %158, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %421 = call float @dx.op.unary.f32(i32 22, float %420)  ; Frc(value)
  %422 = fmul fast float %421, 0x404A7DD040000000
  %423 = call float @dx.op.unary.f32(i32 22, float %422)  ; Frc(value)
  %424 = fmul fast float %423, %362
  %425 = fadd fast float %424, %419
  %426 = call float @dx.op.tertiary.f32(i32 46, float %425, float %418, float 0.000000e+00)  ; FMad(a,b,c)
  %427 = call float @dx.op.tertiary.f32(i32 46, float %425, float %417, float 0.000000e+00)  ; FMad(a,b,c)
  %428 = fadd fast float %426, %411
  %429 = fadd fast float %427, %412
  %430 = fmul fast float %428, %357
  %431 = fmul fast float %429, %357
  %432 = call float @dx.op.binary.f32(i32 35, float %430, float %353)  ; FMax(a,b)
  %433 = call float @dx.op.binary.f32(i32 35, float %431, float %353)  ; FMax(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %432, float %354)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 36, float %433, float %354)  ; FMin(a,b)
  %436 = fadd fast float %434, %351
  %437 = fadd fast float %435, %352
  %438 = uitofp i32 %388 to float
  %439 = fadd fast float %414, %361
  %440 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %18, float %436, float %437, float %438, float undef, i32 0, i32 0, i32 undef, float %439)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = fadd fast float %441, -1.000000e+00
  %443 = fmul fast float %442, %348
  %444 = fadd fast float %443, 1.000000e+00
  %445 = fmul fast float %444, %341
  br label %446

; <label>:446                                     ; preds = %347, %309
  %447 = phi float [ %445, %347 ], [ %341, %309 ]
  %448 = call float @dx.op.binary.f32(i32 36, float %447, float %447)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 36, float %447, float %448)  ; FMin(a,b)
  %450 = fcmp fast ogt float %449, 0x3F10000000000000
  %451 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %450)  ; WaveAnyTrue(cond)
  %452 = select i1 %451, i32 %224, i32 0
  %453 = or i32 %219, %452
  %454 = lshr i32 %163, 5
  %455 = lshr i32 %164, 5
  %456 = fcmp fast olt float %447, 0x3F10000000000000
  %457 = call i1 @dx.op.waveAllTrue(i32 114, i1 %456)  ; WaveAllTrue(cond)
  %458 = fcmp fast ogt float %447, 0x3FEFFF8000000000
  %459 = call i1 @dx.op.waveAllTrue(i32 114, i1 %458)  ; WaveAllTrue(cond)
  %460 = or i1 %457, %459
  %461 = xor i1 %460, true
  %462 = and i32 %164, 16
  %463 = lshr i32 %163, 1
  %464 = and i32 %463, 8
  %465 = icmp eq i32 %462, 0
  %466 = or i32 %464, %35
  %467 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %467, label %468, label %510, !dx.controlflow.hints !38

; <label>:468                                     ; preds = %446
  %469 = shl i32 1, %466
  %470 = select i1 %459, i32 %469, i32 0
  %471 = shl i32 65536, %466
  %472 = select i1 %457, i32 %471, i32 0
  %473 = or i32 %470, %472
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %480, label %475, !dx.controlflow.hints !39

; <label>:475                                     ; preds = %468
  br i1 %465, label %478, label %476, !dx.controlflow.hints !40

; <label>:476                                     ; preds = %475
  %477 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %454, i32 %455, i32 %222, i32 %473)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %480

; <label>:478                                     ; preds = %475
  %479 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %454, i32 %455, i32 %222, i32 %473)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %480

; <label>:480                                     ; preds = %478, %476, %468
  br i1 %460, label %510, label %481

; <label>:481                                     ; preds = %480
  br label %482

; <label>:482                                     ; preds = %507, %481
  %483 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %454, i32 %455, i32 %222, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %484 = and i32 %483, 3
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %507, !dx.controlflow.hints !41

; <label>:486                                     ; preds = %482
  %487 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.i32 %488, 3
  %490 = call i32 @dx.op.binary.i32(i32 40, i32 %489, i32 %487)  ; UMin(a,b)
  %491 = extractvalue %dx.types.CBufRet.i32 %488, 2
  %492 = udiv i32 %490, %491
  %493 = urem i32 %490, %491
  %494 = extractvalue %dx.types.CBufRet.i32 %488, 1
  %495 = urem i32 %493, %494
  %496 = udiv i32 %493, %494
  %497 = shl i32 %495, 6
  %498 = and i32 %497, 32704
  %499 = shl i32 %496, 15
  %500 = and i32 %499, 8355840
  %501 = shl i32 %492, 23
  %502 = and i32 %501, 2139095040
  %503 = or i32 %502, %498
  %504 = or i32 %503, %500
  %505 = or i32 %504, 3
  %506 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %454, i32 %455, i32 %222, i32 %505)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %510

; <label>:507                                     ; preds = %482
  %508 = icmp eq i32 %484, 3
  br i1 %508, label %509, label %482, !dx.controlflow.hints !42

; <label>:509                                     ; preds = %507
  br label %510

; <label>:510                                     ; preds = %509, %486, %480, %446
  %511 = phi i32 [ 0, %480 ], [ %505, %486 ], [ 0, %446 ], [ %483, %509 ]
  %512 = phi i1 [ false, %480 ], [ %461, %486 ], [ %461, %446 ], [ %461, %509 ]
  br i1 %512, label %513, label %529, !dx.controlflow.hints !43

; <label>:513                                     ; preds = %510
  %514 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %511)  ; WaveReadLaneFirst(value)
  %515 = lshr i32 %514, 23
  %516 = and i32 %515, 255
  %517 = and i32 %163, 31
  %518 = and i32 %164, 31
  %519 = lshr i32 %514, 1
  %520 = and i32 %519, 16352
  %521 = lshr i32 %514, 10
  %522 = and i32 %521, 8160
  %523 = or i32 %520, %517
  %524 = or i32 %522, %518
  %525 = fmul fast float %447, 2.550000e+02
  %526 = fadd fast float %525, %158
  %527 = call float @dx.op.unary.f32(i32 27, float %526)  ; Round_ni(value)
  %528 = fmul fast float %527, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %523, i32 %524, i32 %516, float %528, float %528, float %528, float %528, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %529

; <label>:529                                     ; preds = %513, %510
  %530 = icmp eq i32 %220, %224
  br i1 %530, label %531, label %218, !llvm.loop !44

; <label>:531                                     ; preds = %529
  br label %532

; <label>:532                                     ; preds = %531, %190
  %533 = phi i32 [ 0, %190 ], [ %453, %531 ]
  %534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.i32 %534, 0
  %536 = call i32 @dx.op.tertiary.i32(i32 49, i32 %169, i32 %535, i32 %191)  ; UMad(a,b,c)
  %537 = shl i32 %536, 2
  %538 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %537, i32 undef, i32 undef, i32 %533)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %539 = add i32 %191, 1
  %540 = icmp ugt i32 %539, %187
  br i1 %540, label %541, label %190

; <label>:541                                     ; preds = %532
  br label %542

; <label>:542                                     ; preds = %541, %162, %0
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
!30 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !33}
!33 = !{i32 0, i64 524560, i32 4, !34}
!34 = !{i32 8, i32 4, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}

