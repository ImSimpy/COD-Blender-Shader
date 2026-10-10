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
; shader hash: c6a990dc03d73c63f9802e97abe91699
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
  br i1 %222, label %885, label %223, !dx.controlflow.hints !36

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
  br i1 %249, label %885, label %250

; <label>:250                                     ; preds = %223
  br label %251

; <label>:251                                     ; preds = %875, %250
  %252 = phi i32 [ %882, %875 ], [ %246, %250 ]
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
  br i1 %277, label %875, label %278

; <label>:278                                     ; preds = %251
  br label %279

; <label>:279                                     ; preds = %872, %278
  %280 = phi i32 [ %796, %872 ], [ 0, %278 ]
  %281 = phi i32 [ %286, %872 ], [ %276, %278 ]
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
  %394 = select i1 %325, float %393, float 1.000000e+00
  %395 = fmul fast float %344, %309
  %396 = fsub fast float 1.000000e+00, %395
  %397 = fmul fast float %396, %315
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %399 = fmul fast float %398, %394
  %400 = fmul fast float %399, 2.000000e+00
  %401 = fsub fast float 3.000000e+00, %400
  %402 = fmul fast float %390, %374
  %403 = fmul fast float %399, %399
  %404 = fmul fast float %403, %402
  %405 = fmul fast float %404, %401
  %406 = icmp ne i32 %323, 255
  %407 = call float @dx.op.binary.f32(i32 36, float %405, float %405)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 36, float %405, float %407)  ; FMin(a,b)
  %409 = fcmp fast ogt float %408, 0.000000e+00
  %410 = and i1 %406, %409
  br i1 %410, label %411, label %510, !dx.controlflow.hints !38

; <label>:411                                     ; preds = %373
  %412 = select i1 %325, float 1.000000e+00, float %393
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
  %428 = add nuw nsw i32 %413, 48
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = extractvalue %dx.types.ResRet.f32 %429, 3
  %434 = add nuw nsw i32 %413, 64
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = add nuw nsw i32 %413, 80
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = add nuw nsw i32 %413, 96
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = extractvalue %dx.types.ResRet.f32 %447, 3
  %452 = bitcast float %422 to i32
  %453 = fmul fast float %427, %146
  %454 = fmul fast float %427, %147
  %455 = fmul fast float %427, %148
  %456 = fadd fast float %453, %117
  %457 = fadd fast float %454, %118
  %458 = fadd fast float %455, %119
  %459 = fmul fast float %456, %430
  %460 = call float @dx.op.tertiary.f32(i32 46, float %457, float %436, float %459)  ; FMad(a,b,c)
  %461 = call float @dx.op.tertiary.f32(i32 46, float %458, float %442, float %460)  ; FMad(a,b,c)
  %462 = fadd fast float %461, %448
  %463 = fmul fast float %456, %431
  %464 = call float @dx.op.tertiary.f32(i32 46, float %457, float %437, float %463)  ; FMad(a,b,c)
  %465 = call float @dx.op.tertiary.f32(i32 46, float %458, float %443, float %464)  ; FMad(a,b,c)
  %466 = fadd fast float %465, %449
  %467 = fmul fast float %456, %432
  %468 = call float @dx.op.tertiary.f32(i32 46, float %457, float %438, float %467)  ; FMad(a,b,c)
  %469 = call float @dx.op.tertiary.f32(i32 46, float %458, float %444, float %468)  ; FMad(a,b,c)
  %470 = fadd fast float %469, %450
  %471 = fmul fast float %456, %433
  %472 = call float @dx.op.tertiary.f32(i32 46, float %457, float %439, float %471)  ; FMad(a,b,c)
  %473 = call float @dx.op.tertiary.f32(i32 46, float %458, float %445, float %472)  ; FMad(a,b,c)
  %474 = fadd fast float %473, %451
  %475 = fdiv fast float %462, %474
  %476 = fdiv fast float %466, %474
  %477 = fdiv fast float %470, %474
  %478 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %477)  ; FMax(a,b)
  %479 = fmul fast float %218, 0x401921FB60000000
  %480 = call float @dx.op.unary.f32(i32 13, float %479)  ; Sin(value)
  %481 = call float @dx.op.unary.f32(i32 12, float %479)  ; Cos(value)
  %482 = fsub fast float -0.000000e+00, %480
  %483 = fmul fast float %417, 5.000000e-01
  %484 = call float @dx.op.dot2.f32(i32 54, float %218, float %218, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %485 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %486 = fmul fast float %485, 0x404A7DD040000000
  %487 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %488 = fmul fast float %487, %426
  %489 = fadd fast float %488, %483
  %490 = call float @dx.op.tertiary.f32(i32 46, float %489, float %482, float 0.000000e+00)  ; FMad(a,b,c)
  %491 = call float @dx.op.tertiary.f32(i32 46, float %489, float %481, float 0.000000e+00)  ; FMad(a,b,c)
  %492 = fadd fast float %490, %475
  %493 = fadd fast float %491, %476
  %494 = fmul fast float %492, %421
  %495 = fmul fast float %493, %421
  %496 = call float @dx.op.binary.f32(i32 35, float %494, float %417)  ; FMax(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %495, float %417)  ; FMax(a,b)
  %498 = call float @dx.op.binary.f32(i32 36, float %496, float %418)  ; FMin(a,b)
  %499 = call float @dx.op.binary.f32(i32 36, float %497, float %418)  ; FMin(a,b)
  %500 = fadd fast float %498, %415
  %501 = fadd fast float %499, %416
  %502 = uitofp i32 %452 to float
  %503 = fadd fast float %478, %425
  %504 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %19, float %500, float %501, float %502, float undef, i32 0, i32 0, i32 undef, float %503)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = fadd fast float %505, -1.000000e+00
  %507 = fmul fast float %506, %412
  %508 = fadd fast float %507, 1.000000e+00
  %509 = fmul fast float %508, %405
  br label %510

; <label>:510                                     ; preds = %411, %373
  %511 = phi float [ %509, %411 ], [ %405, %373 ]
  %512 = call float @dx.op.binary.f32(i32 36, float %511, float %511)  ; FMin(a,b)
  %513 = call float @dx.op.binary.f32(i32 36, float %511, float %512)  ; FMin(a,b)
  %514 = fcmp fast ogt float %513, 0.000000e+00
  %515 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %346, float %347, float %348)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = fcmp fast ogt float %515, 0.000000e+00
  %517 = and i1 %514, %516
  br i1 %517, label %518, label %787, !dx.controlflow.hints !39

; <label>:518                                     ; preds = %510
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 1
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %523 = select i1 %55, float %520, float %522
  %524 = extractvalue %dx.types.CBufRet.f32 %519, 2
  %525 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %526 = select i1 %55, float %524, float %525
  %527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.i32 %527, 0
  %529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.i32 %529, 0
  %531 = select i1 %55, i32 %528, i32 %530
  %532 = fcmp fast olt float %523, 5.000000e-01
  %533 = icmp eq i32 %531, 0
  %534 = or i1 %532, %533
  br i1 %534, label %782, label %535, !dx.controlflow.hints !40

; <label>:535                                     ; preds = %518
  %536 = fsub fast float %306, %117
  %537 = fsub fast float %307, %118
  %538 = fsub fast float %308, %119
  %539 = fmul fast float %536, %536
  %540 = fmul fast float %537, %537
  %541 = fadd fast float %539, %540
  %542 = fmul fast float %538, %538
  %543 = fadd fast float %541, %542
  %544 = call float @dx.op.unary.f32(i32 24, float %543)  ; Sqrt(value)
  %545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.i32 %545, 0
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %523, %303
  %549 = fdiv fast float %548, %544
  %550 = call float @dx.op.binary.f32(i32 36, float %549, float 1.000000e+01)  ; FMin(a,b)
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %553 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %554 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %555 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 0
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %559 = extractvalue %dx.types.CBufRet.f32 %556, 2
  %560 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %565 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %570 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %575 = extractvalue %dx.types.CBufRet.f32 %571, 3
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = extractvalue %dx.types.CBufRet.f32 %576, 1
  %579 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %580 = extractvalue %dx.types.CBufRet.f32 %576, 3
  %581 = select i1 %55, float %552, float %567
  %582 = select i1 %55, float %557, float %572
  %583 = select i1 %55, float %562, float %577
  %584 = select i1 %55, float %553, float %568
  %585 = select i1 %55, float %558, float %573
  %586 = select i1 %55, float %563, float %578
  %587 = select i1 %55, float %554, float %569
  %588 = select i1 %55, float %559, float %574
  %589 = select i1 %55, float %564, float %579
  %590 = select i1 %55, float %555, float %570
  %591 = select i1 %55, float %560, float %575
  %592 = select i1 %55, float %565, float %580
  %593 = fmul fast float %219, 0x401061CAC0000000
  %594 = fmul fast float %219, 0x4023E1D7E0000000
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %598 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %599 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %600 = fsub fast float -0.000000e+00, %346
  %601 = fmul fast float %348, %600
  %602 = fmul fast float %346, %600
  %603 = fmul fast float %347, %347
  %604 = fsub fast float %602, %603
  %605 = fdiv fast float 1.000000e+00, %62
  %606 = fmul fast float %598, %51
  %607 = fmul fast float %599, %52
  %608 = fmul fast float %523, %346
  %609 = fmul fast float %523, %348
  %610 = fadd fast float %608, %117
  %611 = fadd fast float %609, %119
  %612 = fadd fast float %594, 5.000000e-01
  %613 = call float @dx.op.unary.f32(i32 22, float %612)  ; Frc(value)
  %614 = bitcast float %613 to i32
  %615 = ashr i32 %614, 1
  %616 = add nsw i32 %615, 532487669
  %617 = bitcast i32 %616 to float
  %618 = fmul fast float %617, %550
  %619 = fadd fast float %593, 5.000000e-01
  %620 = call float @dx.op.unary.f32(i32 22, float %619)  ; Frc(value)
  %621 = fmul fast float %620, 0x401921FB60000000
  %622 = call float @dx.op.unary.f32(i32 12, float %621)  ; Cos(value)
  %623 = fmul fast float %622, %622
  %624 = fsub fast float 1.000000e+00, %623
  %625 = bitcast float %624 to i32
  %626 = ashr i32 %625, 1
  %627 = add nsw i32 %626, 532487669
  %628 = bitcast i32 %627 to float
  %629 = fmul fast float %618, %622
  %630 = fmul fast float %629, %347
  %631 = fmul fast float %629, %600
  %632 = fadd fast float %610, %630
  %633 = fmul fast float %628, %618
  %634 = fmul fast float %601, %633
  %635 = fmul fast float %633, %348
  %636 = fmul fast float %633, %604
  %637 = fsub fast float %632, %634
  %638 = fadd fast float %635, %523
  %639 = fmul fast float %638, %347
  %640 = fadd fast float %631, %118
  %641 = fadd fast float %640, %639
  %642 = fadd fast float %611, %636
  %643 = fmul fast float %637, %581
  %644 = call float @dx.op.tertiary.f32(i32 46, float %641, float %584, float %643)  ; FMad(a,b,c)
  %645 = call float @dx.op.tertiary.f32(i32 46, float %642, float %587, float %644)  ; FMad(a,b,c)
  %646 = fadd fast float %645, %590
  %647 = fmul fast float %637, %582
  %648 = call float @dx.op.tertiary.f32(i32 46, float %641, float %585, float %647)  ; FMad(a,b,c)
  %649 = call float @dx.op.tertiary.f32(i32 46, float %642, float %588, float %648)  ; FMad(a,b,c)
  %650 = fadd fast float %649, %591
  %651 = fmul fast float %637, %583
  %652 = call float @dx.op.tertiary.f32(i32 46, float %641, float %586, float %651)  ; FMad(a,b,c)
  %653 = call float @dx.op.tertiary.f32(i32 46, float %642, float %589, float %652)  ; FMad(a,b,c)
  %654 = fadd fast float %653, %592
  %655 = fdiv fast float 1.000000e+00, %654
  %656 = fmul fast float %646, 5.000000e-01
  %657 = fmul fast float %650, -5.000000e-01
  %658 = fmul fast float %656, %655
  %659 = fmul fast float %657, %655
  %660 = fsub fast float 5.000000e-01, %606
  %661 = fadd fast float %660, %658
  %662 = fsub fast float 5.000000e-01, %607
  %663 = fadd fast float %662, %659
  %664 = fsub fast float %655, %605
  %665 = call float @dx.op.dot2.f32(i32 54, float %661, float %663, float %661, float %663)  ; Dot2(ax,ay,bx,by)
  %666 = call float @dx.op.binary.f32(i32 35, float %665, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %667 = call float @dx.op.dot2.f32(i32 54, float %596, float %597, float %596, float %597)  ; Dot2(ax,ay,bx,by)
  %668 = fmul fast float %667, %666
  %669 = call float @dx.op.unary.f32(i32 25, float %668)  ; Rsqrt(value)
  %670 = fmul fast float %669, %661
  %671 = fmul fast float %669, %663
  %672 = fadd fast float %670, %606
  %673 = fadd fast float %671, %607
  %674 = fmul fast float %661, %596
  %675 = fmul fast float %663, %597
  %676 = fmul fast float %674, %674
  %677 = fmul fast float %675, %675
  %678 = fadd fast float %676, %677
  %679 = call float @dx.op.unary.f32(i32 24, float %678)  ; Sqrt(value)
  %680 = fdiv fast float 1.000000e+00, %679
  %681 = fmul fast float %679, 3.906250e-03
  %682 = fmul fast float %205, 0x3F70624DE0000000
  %683 = fadd fast float %682, 0x3F70624DE0000000
  %684 = icmp sgt i32 %531, -1
  br i1 %684, label %685, label %747

; <label>:685                                     ; preds = %535
  br label %686

; <label>:686                                     ; preds = %743, %685
  %687 = phi float [ %718, %743 ], [ %62, %685 ]
  %688 = phi float [ %705, %743 ], [ %62, %685 ]
  %689 = phi float [ %688, %743 ], [ %62, %685 ]
  %690 = phi i32 [ %744, %743 ], [ 0, %685 ]
  %691 = sitofp i32 %690 to float
  %692 = fadd fast float %219, 5.000000e-01
  %693 = call float @dx.op.unary.f32(i32 22, float %692)  ; Frc(value)
  %694 = fadd fast float %691, %693
  %695 = sitofp i32 %531 to float
  %696 = fdiv fast float %694, %695
  %697 = fmul fast float %696, %696
  %698 = call float @dx.op.binary.f32(i32 36, float %697, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %699 = fmul fast float %698, %661
  %700 = fmul fast float %698, %663
  %701 = fmul fast float %698, %664
  %702 = fadd fast float %699, %672
  %703 = fadd fast float %700, %673
  %704 = fadd fast float %701, %605
  %705 = fdiv fast float 1.000000e+00, %704
  %706 = icmp ne i32 %546, 0
  %707 = fmul fast float %681, %698
  %708 = call float @dx.op.binary.f32(i32 36, float %707, float %547)  ; FMin(a,b)
  %709 = select i1 %706, float %708, float 0.000000e+00
  %710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %702, float %703, float undef, float undef, i32 0, i32 0, i32 undef, float %709)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %711 = extractvalue %dx.types.ResRet.f32 %710, 0
  %712 = fcmp fast ogt float %711, -1.000000e+00
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 1
  %715 = select i1 %712, float %714, float 1.000000e+00
  %716 = fadd fast float %711, 1.000000e+00
  %717 = fmul fast float %715, %716
  %718 = call float @dx.op.unary.f32(i32 6, float %717)  ; FAbs(value)
  %719 = fmul fast float %718, %683
  %720 = fsub fast float %705, %718
  %721 = fsub fast float %720, %719
  %722 = fcmp fast ogt float %721, 0.000000e+00
  %723 = fcmp fast ogt float %526, 0.000000e+00
  br i1 %723, label %724, label %727, !dx.controlflow.hints !41

; <label>:724                                     ; preds = %686
  %725 = fsub fast float %705, %689
  %726 = call float @dx.op.binary.f32(i32 35, float %725, float %526)  ; FMax(a,b)
  br label %727

; <label>:727                                     ; preds = %724, %686
  %728 = phi float [ %726, %724 ], [ %523, %686 ]
  %729 = fcmp fast olt float %721, %728
  %730 = fcmp uge float %711, -1.000000e+00
  %731 = or i1 %55, %730
  %732 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %733 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %734 = fcmp fast oeq float %702, %732
  %735 = fcmp fast oeq float %703, %733
  %736 = and i1 %734, %735
  %737 = and i1 %731, %736
  %738 = and i1 %722, %729
  %739 = and i1 %738, %737
  %740 = fcmp fast ogt float %698, %680
  %741 = and i1 %740, %739
  %742 = zext i1 %741 to i32
  br i1 %741, label %746, label %743, !dx.controlflow.hints !42

; <label>:743                                     ; preds = %727
  %744 = add nuw nsw i32 %690, 1
  %745 = icmp slt i32 %690, %531
  br i1 %745, label %686, label %746

; <label>:746                                     ; preds = %743, %727
  br label %747

; <label>:747                                     ; preds = %746, %535
  %748 = phi i32 [ 0, %535 ], [ %742, %746 ]
  %749 = phi float [ %62, %535 ], [ %718, %746 ]
  %750 = phi float [ %62, %535 ], [ %687, %746 ]
  %751 = phi float [ %62, %535 ], [ %705, %746 ]
  %752 = phi float [ %62, %535 ], [ %688, %746 ]
  %753 = fsub fast float %752, %750
  %754 = fsub fast float %751, %749
  %755 = fsub fast float %753, %754
  %756 = fcmp fast une float %755, 0.000000e+00
  %757 = fmul fast float %753, %751
  %758 = fmul fast float %752, %754
  %759 = fsub fast float %757, %758
  %760 = fdiv fast float 1.000000e+00, %755
  %761 = fmul fast float %759, %760
  %762 = select i1 %756, float %761, float %751
  %763 = fdiv fast float 1.000000e+00, %762
  %764 = fsub fast float %763, %605
  %765 = fdiv fast float %764, %664
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %767 = fmul fast float %766, %661
  %768 = fmul fast float %766, %663
  %769 = fadd fast float %767, %672
  %770 = fadd fast float %768, %673
  %771 = fadd fast float %769, -5.000000e-01
  %772 = fadd fast float %770, -5.000000e-01
  %773 = call float @dx.op.unary.f32(i32 6, float %771)  ; FAbs(value)
  %774 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %775 = fadd fast float %773, -5.000000e-01
  %776 = fadd fast float %774, -5.000000e-01
  %777 = call float @dx.op.binary.f32(i32 35, float %775, float %776)  ; FMax(a,b)
  %778 = fcmp fast olt float %777, 0.000000e+00
  %779 = icmp ne i32 %748, 0
  %780 = and i1 %779, %778
  %781 = select i1 %780, float 0.000000e+00, float 1.000000e+00
  br label %782

; <label>:782                                     ; preds = %747, %518
  %783 = phi float [ %781, %747 ], [ 1.000000e+00, %518 ]
  %784 = fmul fast float %783, %511
  %785 = fmul fast float %783, %511
  %786 = fmul fast float %783, %511
  br label %787

; <label>:787                                     ; preds = %782, %510
  %788 = phi float [ %784, %782 ], [ %511, %510 ]
  %789 = phi float [ %785, %782 ], [ %511, %510 ]
  %790 = phi float [ %786, %782 ], [ %511, %510 ]
  %791 = call float @dx.op.binary.f32(i32 36, float %789, float %790)  ; FMin(a,b)
  %792 = call float @dx.op.binary.f32(i32 36, float %788, float %791)  ; FMin(a,b)
  %793 = fcmp fast ogt float %792, 0x3F10000000000000
  %794 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %793)  ; WaveAnyTrue(cond)
  %795 = select i1 %794, i32 %285, i32 0
  %796 = or i32 %280, %795
  %797 = lshr i32 %224, 5
  %798 = lshr i32 %225, 5
  %799 = fcmp fast olt float %788, 0x3F10000000000000
  %800 = call i1 @dx.op.waveAllTrue(i32 114, i1 %799)  ; WaveAllTrue(cond)
  %801 = fcmp fast ogt float %788, 0x3FEFFF8000000000
  %802 = call i1 @dx.op.waveAllTrue(i32 114, i1 %801)  ; WaveAllTrue(cond)
  %803 = or i1 %800, %802
  %804 = xor i1 %803, true
  %805 = and i32 %225, 16
  %806 = lshr i32 %224, 1
  %807 = and i32 %806, 8
  %808 = icmp eq i32 %805, 0
  %809 = or i32 %807, %36
  %810 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %810, label %811, label %853, !dx.controlflow.hints !43

; <label>:811                                     ; preds = %787
  %812 = shl i32 1, %809
  %813 = select i1 %802, i32 %812, i32 0
  %814 = shl i32 65536, %809
  %815 = select i1 %800, i32 %814, i32 0
  %816 = or i32 %813, %815
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %823, label %818, !dx.controlflow.hints !44

; <label>:818                                     ; preds = %811
  br i1 %808, label %821, label %819, !dx.controlflow.hints !45

; <label>:819                                     ; preds = %818
  %820 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %797, i32 %798, i32 %283, i32 %816)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %823

; <label>:821                                     ; preds = %818
  %822 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %797, i32 %798, i32 %283, i32 %816)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %823

; <label>:823                                     ; preds = %821, %819, %811
  br i1 %803, label %853, label %824

; <label>:824                                     ; preds = %823
  br label %825

; <label>:825                                     ; preds = %850, %824
  %826 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %797, i32 %798, i32 %283, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %827 = and i32 %826, 3
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %850, !dx.controlflow.hints !46

; <label>:829                                     ; preds = %825
  %830 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.i32 %831, 3
  %833 = call i32 @dx.op.binary.i32(i32 40, i32 %832, i32 %830)  ; UMin(a,b)
  %834 = extractvalue %dx.types.CBufRet.i32 %831, 2
  %835 = udiv i32 %833, %834
  %836 = urem i32 %833, %834
  %837 = extractvalue %dx.types.CBufRet.i32 %831, 1
  %838 = urem i32 %836, %837
  %839 = udiv i32 %836, %837
  %840 = shl i32 %838, 6
  %841 = and i32 %840, 32704
  %842 = shl i32 %839, 15
  %843 = and i32 %842, 8355840
  %844 = shl i32 %835, 23
  %845 = and i32 %844, 2139095040
  %846 = or i32 %845, %841
  %847 = or i32 %846, %843
  %848 = or i32 %847, 3
  %849 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %797, i32 %798, i32 %283, i32 %848)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %853

; <label>:850                                     ; preds = %825
  %851 = icmp eq i32 %827, 3
  br i1 %851, label %852, label %825, !dx.controlflow.hints !47

; <label>:852                                     ; preds = %850
  br label %853

; <label>:853                                     ; preds = %852, %829, %823, %787
  %854 = phi i32 [ 0, %823 ], [ %848, %829 ], [ 0, %787 ], [ %826, %852 ]
  %855 = phi i1 [ false, %823 ], [ %804, %829 ], [ %804, %787 ], [ %804, %852 ]
  br i1 %855, label %856, label %872, !dx.controlflow.hints !48

; <label>:856                                     ; preds = %853
  %857 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %854)  ; WaveReadLaneFirst(value)
  %858 = lshr i32 %857, 23
  %859 = and i32 %858, 255
  %860 = and i32 %224, 31
  %861 = and i32 %225, 31
  %862 = lshr i32 %857, 1
  %863 = and i32 %862, 16352
  %864 = lshr i32 %857, 10
  %865 = and i32 %864, 8160
  %866 = or i32 %863, %860
  %867 = or i32 %865, %861
  %868 = fmul fast float %788, 2.550000e+02
  %869 = fadd fast float %868, %218
  %870 = call float @dx.op.unary.f32(i32 27, float %869)  ; Round_ni(value)
  %871 = fmul fast float %870, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %866, i32 %867, i32 %859, float %871, float %871, float %871, float %871, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %872

; <label>:872                                     ; preds = %856, %853
  %873 = icmp eq i32 %281, %285
  br i1 %873, label %874, label %279, !llvm.loop !49

; <label>:874                                     ; preds = %872
  br label %875

; <label>:875                                     ; preds = %874, %251
  %876 = phi i32 [ 0, %251 ], [ %796, %874 ]
  %877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.i32 %877, 0
  %879 = call i32 @dx.op.tertiary.i32(i32 49, i32 %230, i32 %878, i32 %252)  ; UMad(a,b,c)
  %880 = shl i32 %879, 2
  %881 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %880, i32 undef, i32 undef, i32 %876)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %882 = add i32 %252, 1
  %883 = icmp ugt i32 %882, %248
  br i1 %883, label %884, label %251

; <label>:884                                     ; preds = %875
  br label %885

; <label>:885                                     ; preds = %884, %223, %0
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
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
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

