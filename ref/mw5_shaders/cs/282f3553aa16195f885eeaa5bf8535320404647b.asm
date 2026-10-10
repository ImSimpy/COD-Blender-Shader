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
; shader hash: 90cf14573cb6d068380156668413c52c
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
;                                   sampler      NA          NA      S0             s1     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %18 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %19 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 0
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %24 = shl i32 %21, 2
  %25 = mul i32 %24, %23
  %26 = add i32 %25, %17
  %27 = shl i32 %26, 2
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = lshr i32 %29, 10
  %31 = and i32 %30, 262128
  %32 = shl i32 %29, 4
  %33 = and i32 %32, 262128
  %34 = lshr i32 %29, 25
  %35 = and i32 %34, 8
  %36 = lshr i32 %29, 26
  %37 = and i32 %36, 8
  %38 = or i32 %35, %18
  %39 = or i32 %38, %31
  %40 = or i32 %37, %19
  %41 = or i32 %40, %33
  %42 = uitofp i32 %39 to float
  %43 = uitofp i32 %41 to float
  %44 = fadd fast float %42, 5.000000e-01
  %45 = fadd fast float %43, 5.000000e-01
  %46 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %39, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = fcmp fast olt float %47, -1.000000e+00
  %49 = fcmp fast ogt float %47, -1.000000e+00
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %52 = select i1 %49, float %51, float 1.000000e+00
  %53 = fadd fast float %47, 1.000000e+00
  %54 = fmul fast float %52, %53
  %55 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %59 = fmul fast float %44, %57
  %60 = fmul fast float %45, %58
  %61 = fmul fast float %59, 2.000000e+00
  %62 = fmul fast float %60, 2.000000e+00
  %63 = fsub fast float 1.000000e+00, %61
  %64 = fsub fast float 1.000000e+00, %62
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = select i1 %48, float %66, float %70
  %74 = select i1 %48, float %67, float %71
  %75 = select i1 %48, float %68, float %72
  %76 = fmul fast float %73, %63
  %77 = fmul fast float %74, %63
  %78 = fmul fast float %75, %63
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = select i1 %48, float %80, float %84
  %88 = select i1 %48, float %81, float %85
  %89 = select i1 %48, float %82, float %86
  %90 = fmul fast float %87, %64
  %91 = fmul fast float %88, %64
  %92 = fmul fast float %89, %64
  %93 = fadd fast float %90, %76
  %94 = fadd fast float %91, %77
  %95 = fadd fast float %92, %78
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = select i1 %48, float %97, float %101
  %105 = select i1 %48, float %98, float %102
  %106 = select i1 %48, float %99, float %103
  %107 = fadd fast float %93, %104
  %108 = fadd fast float %94, %105
  %109 = fadd fast float %95, %106
  %110 = fmul fast float %107, %55
  %111 = fmul fast float %108, %55
  %112 = fmul fast float %109, %55
  %113 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %39, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = lshr i32 %114, 8
  %116 = and i32 %114, 255
  %117 = and i32 %115, 255
  %118 = uitofp i32 %116 to float
  %119 = uitofp i32 %117 to float
  %120 = fmul fast float %118, 0x3F80101020000000
  %121 = fmul fast float %119, 0x3F80101020000000
  %122 = fadd fast float %120, -1.000000e+00
  %123 = fadd fast float %121, -1.000000e+00
  %124 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %125 = fsub fast float 1.000000e+00, %124
  %126 = call float @dx.op.unary.f32(i32 6, float %123)  ; FAbs(value)
  %127 = fsub fast float %125, %126
  %128 = fsub fast float -0.000000e+00, %127
  %129 = call float @dx.op.binary.f32(i32 35, float %128, float 0.000000e+00)  ; FMax(a,b)
  %130 = fcmp fast ogt float %122, 0.000000e+00
  %131 = fsub fast float -0.000000e+00, %129
  %132 = select i1 %130, float %131, float %129
  %133 = fadd fast float %132, %122
  %134 = fcmp fast ogt float %123, 0.000000e+00
  %135 = select i1 %134, float %131, float %129
  %136 = fadd fast float %135, %123
  %137 = call float @dx.op.dot3.f32(i32 55, float %133, float %136, float %127, float %133, float %136, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = call float @dx.op.unary.f32(i32 25, float %137)  ; Rsqrt(value)
  %139 = fmul fast float %133, %138
  %140 = fmul fast float %136, %138
  %141 = fmul fast float %138, %127
  %142 = fmul fast float %57, %42
  %143 = fmul fast float %58, %43
  %144 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %14, float %142, float %143, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = extractvalue %dx.types.ResRet.f32 %144, 1
  %147 = extractvalue %dx.types.ResRet.f32 %144, 2
  %148 = fcmp fast ogt float %145, -1.000000e+00
  %149 = select i1 %148, float %51, float 1.000000e+00
  %150 = fadd fast float %145, 1.000000e+00
  %151 = fmul fast float %149, %150
  %152 = call float @dx.op.unary.f32(i32 6, float %151)  ; FAbs(value)
  %153 = fcmp fast ogt float %146, -1.000000e+00
  %154 = select i1 %153, float %51, float 1.000000e+00
  %155 = fadd fast float %146, 1.000000e+00
  %156 = fmul fast float %154, %155
  %157 = call float @dx.op.unary.f32(i32 6, float %156)  ; FAbs(value)
  %158 = fcmp fast ogt float %147, -1.000000e+00
  %159 = select i1 %158, float %51, float 1.000000e+00
  %160 = fadd fast float %147, 1.000000e+00
  %161 = fmul fast float %159, %160
  %162 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %163 = fadd fast float %42, 1.000000e+00
  %164 = fmul fast float %57, %163
  %165 = fadd fast float %43, 1.000000e+00
  %166 = fmul fast float %58, %165
  %167 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %14, float %164, float %166, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = extractvalue %dx.types.ResRet.f32 %167, 2
  %170 = fcmp fast ogt float %168, -1.000000e+00
  %171 = select i1 %170, float %51, float 1.000000e+00
  %172 = fadd fast float %168, 1.000000e+00
  %173 = fmul fast float %171, %172
  %174 = call float @dx.op.unary.f32(i32 6, float %173)  ; FAbs(value)
  %175 = fcmp fast ogt float %169, -1.000000e+00
  %176 = select i1 %175, float %51, float 1.000000e+00
  %177 = fadd fast float %169, 1.000000e+00
  %178 = fmul fast float %176, %177
  %179 = call float @dx.op.unary.f32(i32 6, float %178)  ; FAbs(value)
  %180 = fsub fast float %162, %157
  %181 = fsub fast float %174, %157
  %182 = fsub fast float %152, %157
  %183 = fsub fast float %179, %157
  %184 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %185 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %186 = call float @dx.op.binary.f32(i32 35, float %185, float %184)  ; FMax(a,b)
  %187 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %188 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %189 = call float @dx.op.binary.f32(i32 35, float %188, float %187)  ; FMax(a,b)
  %190 = fadd fast float %181, %180
  %191 = call float @dx.op.unary.f32(i32 6, float %190)  ; FAbs(value)
  %192 = fadd fast float %183, %182
  %193 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %194 = fsub fast float %189, %193
  %195 = call float @dx.op.unary.f32(i32 6, float %194)  ; FAbs(value)
  %196 = fsub fast float %186, %191
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = call float @dx.op.binary.f32(i32 35, float %197, float %195)  ; FMax(a,b)
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %201 = fmul fast float %200, 0x3FE3C6EF40000000
  %202 = frem fast float %44, 2.560000e+02
  %203 = frem fast float %45, 2.560000e+02
  %204 = fptoui float %202 to i32
  %205 = fptoui float %203 to i32
  %206 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %204, i32 %205, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = extractvalue %dx.types.ResRet.f32 %206, 2
  %209 = fadd fast float %207, %201
  %210 = fadd fast float %208, %201
  %211 = call float @dx.op.unary.f32(i32 22, float %209)  ; Frc(value)
  %212 = call float @dx.op.unary.f32(i32 22, float %210)  ; Frc(value)
  %213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.i32 %213, 0
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %845, label %216, !dx.controlflow.hints !30

; <label>:216                                     ; preds = %0
  %217 = fptoui float %44 to i32
  %218 = fptoui float %45 to i32
  %219 = lshr i32 %217, 4
  %220 = lshr i32 %218, 4
  %221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.i32 %221, 0
  %223 = call i32 @dx.op.tertiary.i32(i32 49, i32 %220, i32 %222, i32 %219)  ; UMad(a,b,c)
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 0
  %226 = add nsw i32 %225, -1
  %227 = call i32 @dx.op.binary.i32(i32 37, i32 %226, i32 0)  ; IMax(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float %55, float 0.000000e+00)  ; FMax(a,b)
  %229 = fptoui float %228 to i32
  %230 = lshr i32 %229, 5
  %231 = call i32 @dx.op.binary.i32(i32 40, i32 %230, i32 8191)  ; UMin(a,b)
  %232 = shl i32 %231, 2
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = lshr i32 %234, 16
  %236 = and i32 %234, 65535
  %237 = lshr i32 %234, 21
  %238 = lshr i32 %236, 5
  %239 = call i32 @dx.op.binary.i32(i32 40, i32 %238, i32 %227)  ; UMin(a,b)
  %240 = icmp ugt i32 %237, %239
  br i1 %240, label %845, label %241

; <label>:241                                     ; preds = %216
  br label %242

; <label>:242                                     ; preds = %841, %241
  %243 = phi i32 [ %842, %841 ], [ %237, %241 ]
  %244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.i32 %244, 0
  %246 = call i32 @dx.op.tertiary.i32(i32 49, i32 %223, i32 %245, i32 %243)  ; UMad(a,b,c)
  %247 = shl i32 %246, 2
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = shl i32 %243, 5
  %251 = sub nsw i32 %235, %250
  %252 = call i32 @dx.op.binary.i32(i32 37, i32 %251, i32 0)  ; IMax(a,b)
  %253 = call i32 @dx.op.binary.i32(i32 38, i32 %252, i32 31)  ; IMin(a,b)
  %254 = sub nsw i32 1, %235
  %255 = add nsw i32 %254, %236
  %256 = call i32 @dx.op.binary.i32(i32 37, i32 %255, i32 0)  ; IMax(a,b)
  %257 = call i32 @dx.op.binary.i32(i32 38, i32 %256, i32 32)  ; IMin(a,b)
  %258 = and i32 %257, 31
  %259 = shl i32 -1, %258
  %260 = xor i32 %259, -1
  %261 = and i32 %253, 31
  %262 = shl i32 %260, %261
  %263 = icmp eq i32 %257, 32
  %264 = select i1 %263, i32 -1, i32 %262
  %265 = and i32 %264, %249
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %841, label %267

; <label>:267                                     ; preds = %242
  br label %268

; <label>:268                                     ; preds = %819, %267
  %269 = phi i32 [ %274, %819 ], [ %265, %267 ]
  %270 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %269)  ; FirstbitLo(value)
  %271 = add i32 %270, %250
  %272 = and i32 %270, 31
  %273 = shl i32 1, %272
  %274 = xor i32 %273, %269
  %275 = mul i32 %271, 112
  %276 = add i32 %275, 16
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = add i32 %275, 28
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = add i32 %275, 32
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = add i32 %275, 44
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = add i32 %275, 48
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = extractvalue %dx.types.ResRet.f32 %293, 2
  %297 = extractvalue %dx.types.ResRet.f32 %293, 3
  %298 = add i32 %275, 64
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = extractvalue %dx.types.ResRet.f32 %299, 1
  %302 = extractvalue %dx.types.ResRet.f32 %299, 2
  %303 = extractvalue %dx.types.ResRet.f32 %299, 3
  %304 = add i32 %275, 92
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = uitofp i32 %307 to float
  %309 = lshr i32 %306, 16
  %310 = uitofp i32 %309 to float
  %311 = and i32 %283, 65535
  %312 = and i32 %283, 50331648
  %313 = icmp eq i32 %312, 33554432
  %314 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = fsub fast float %110, %294
  %316 = fsub fast float %111, %295
  %317 = fsub fast float %112, %296
  %318 = call float @dx.op.dot3.f32(i32 55, float %315, float %316, float %317, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = fdiv fast float %318, %314
  %320 = call float @dx.op.binary.f32(i32 35, float %319, float -1.000000e+00)  ; FMax(a,b)
  %321 = call float @dx.op.binary.f32(i32 36, float %320, float 1.000000e+00)  ; FMin(a,b)
  %322 = fmul fast float %321, %286
  %323 = fmul fast float %321, %287
  %324 = fmul fast float %321, %288
  %325 = fadd fast float %322, %294
  %326 = fadd fast float %323, %295
  %327 = fadd fast float %324, %296
  %328 = fsub fast float %325, %110
  %329 = fsub fast float %326, %111
  %330 = fsub fast float %327, %112
  %331 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float %328, float %329, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %332 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %333 = fdiv fast float 1.000000e+00, %332
  %334 = fmul fast float %328, %333
  %335 = fmul fast float %329, %333
  %336 = fmul fast float %330, %333
  br i1 %313, label %337, label %361, !dx.controlflow.hints !31

; <label>:337                                     ; preds = %268
  %338 = fmul fast float %302, %278
  %339 = fmul fast float %302, %279
  %340 = fmul fast float %302, %280
  %341 = fsub fast float %338, %110
  %342 = fadd fast float %341, %325
  %343 = fsub fast float %339, %111
  %344 = fadd fast float %343, %326
  %345 = fsub fast float %340, %112
  %346 = fadd fast float %345, %327
  %347 = call float @dx.op.dot3.f32(i32 55, float %342, float %344, float %346, float %342, float %344, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = call float @dx.op.unary.f32(i32 25, float %347)  ; Rsqrt(value)
  %349 = fmul fast float %348, %342
  %350 = fmul fast float %348, %344
  %351 = fmul fast float %348, %346
  %352 = fsub fast float %110, %325
  %353 = fsub fast float %111, %326
  %354 = fsub fast float %112, %327
  %355 = fsub fast float -0.000000e+00, %352
  %356 = fsub fast float -0.000000e+00, %353
  %357 = fsub fast float -0.000000e+00, %354
  %358 = call float @dx.op.dot3.f32(i32 55, float %355, float %356, float %357, float %278, float %279, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = fcmp fast ogt float %358, 0.000000e+00
  %360 = uitofp i1 %359 to float
  br label %361

; <label>:361                                     ; preds = %337, %268
  %362 = phi float [ %360, %337 ], [ 1.000000e+00, %268 ]
  %363 = phi float [ %349, %337 ], [ %334, %268 ]
  %364 = phi float [ %350, %337 ], [ %335, %268 ]
  %365 = phi float [ %351, %337 ], [ %336, %268 ]
  %366 = call float @dx.op.dot3.f32(i32 55, float %278, float %279, float %280, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %367 = fmul fast float %366, %366
  %368 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %369 = fsub fast float 1.000000e+00, %368
  %370 = fmul fast float %369, 5.000000e-01
  %371 = fcmp fast ogt float %366, 0.000000e+00
  %372 = fsub fast float 1.000000e+00, %370
  %373 = select i1 %371, float %370, float %372
  %374 = fmul fast float %373, %310
  %375 = fadd fast float %374, %308
  %376 = fmul fast float %375, 0x3EF0001000000000
  %377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %376, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = fmul fast float %366, %300
  %380 = fadd fast float %379, %301
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %382 = select i1 %313, float 1.000000e+00, float %381
  %383 = select i1 %313, float %381, float 1.000000e+00
  %384 = fmul fast float %332, %297
  %385 = fsub fast float 1.000000e+00, %384
  %386 = fmul fast float %385, %303
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = fmul fast float %387, %383
  %389 = fmul fast float %388, 2.000000e+00
  %390 = fsub fast float 3.000000e+00, %389
  %391 = fmul fast float %378, %362
  %392 = fmul fast float %388, %388
  %393 = fmul fast float %392, %391
  %394 = fmul fast float %393, %390
  %395 = icmp ne i32 %311, 255
  %396 = call float @dx.op.binary.f32(i32 36, float %394, float %394)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 36, float %394, float %396)  ; FMin(a,b)
  %398 = fcmp fast ogt float %397, 0.000000e+00
  %399 = and i1 %395, %398
  br i1 %399, label %400, label %544, !dx.controlflow.hints !32

; <label>:400                                     ; preds = %361
  %401 = mul nuw nsw i32 %311, 176
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add nuw nsw i32 %401, 16
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = add nuw nsw i32 %401, 32
  %412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = add nuw nsw i32 %401, 48
  %417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = extractvalue %dx.types.ResRet.f32 %417, 3
  %422 = add nuw nsw i32 %401, 64
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = extractvalue %dx.types.ResRet.f32 %423, 3
  %428 = add nuw nsw i32 %401, 80
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = extractvalue %dx.types.ResRet.f32 %429, 3
  %434 = add nuw nsw i32 %401, 96
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = bitcast float %410 to i32
  %441 = fmul fast float %415, %139
  %442 = fmul fast float %415, %140
  %443 = fmul fast float %415, %141
  %444 = fadd fast float %441, %110
  %445 = fadd fast float %442, %111
  %446 = fadd fast float %443, %112
  %447 = fmul fast float %444, %418
  %448 = call float @dx.op.tertiary.f32(i32 46, float %445, float %424, float %447)  ; FMad(a,b,c)
  %449 = call float @dx.op.tertiary.f32(i32 46, float %446, float %430, float %448)  ; FMad(a,b,c)
  %450 = fadd fast float %449, %436
  %451 = fmul fast float %444, %419
  %452 = call float @dx.op.tertiary.f32(i32 46, float %445, float %425, float %451)  ; FMad(a,b,c)
  %453 = call float @dx.op.tertiary.f32(i32 46, float %446, float %431, float %452)  ; FMad(a,b,c)
  %454 = fadd fast float %453, %437
  %455 = fmul fast float %444, %420
  %456 = call float @dx.op.tertiary.f32(i32 46, float %445, float %426, float %455)  ; FMad(a,b,c)
  %457 = call float @dx.op.tertiary.f32(i32 46, float %446, float %432, float %456)  ; FMad(a,b,c)
  %458 = fadd fast float %457, %438
  %459 = fmul fast float %444, %421
  %460 = call float @dx.op.tertiary.f32(i32 46, float %445, float %427, float %459)  ; FMad(a,b,c)
  %461 = call float @dx.op.tertiary.f32(i32 46, float %446, float %433, float %460)  ; FMad(a,b,c)
  %462 = fadd fast float %461, %439
  %463 = fdiv fast float %450, %462
  %464 = fdiv fast float %454, %462
  %465 = fdiv fast float %458, %462
  %466 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %465)  ; FMax(a,b)
  %467 = fmul fast float %211, 0x401921FB60000000
  %468 = call float @dx.op.unary.f32(i32 13, float %467)  ; Sin(value)
  %469 = call float @dx.op.unary.f32(i32 12, float %467)  ; Cos(value)
  %470 = fmul fast float %469, %414
  %471 = call float @dx.op.tertiary.f32(i32 46, float %468, float %414, float 0.000000e+00)  ; FMad(a,b,c)
  %472 = fmul fast float %414, %468
  %473 = fsub fast float -0.000000e+00, %472
  %474 = call float @dx.op.tertiary.f32(i32 46, float %469, float %414, float 0.000000e+00)  ; FMad(a,b,c)
  br label %475

; <label>:475                                     ; preds = %475, %400
  %476 = phi float [ 0.000000e+00, %400 ], [ %508, %475 ]
  %477 = phi float [ 0.000000e+00, %400 ], [ %510, %475 ]
  %478 = phi i32 [ 0, %400 ], [ %511, %475 ]
  %479 = mul i32 %478, 2
  %480 = add i32 0, %479
  %481 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %480
  %482 = load float, float* %481, align 4
  %483 = mul i32 %478, 2
  %484 = add i32 1, %483
  %485 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %484
  %486 = load float, float* %485, align 4
  %487 = fmul fast float %470, %482
  %488 = call float @dx.op.tertiary.f32(i32 46, float %486, float %473, float %487)  ; FMad(a,b,c)
  %489 = fmul fast float %482, %471
  %490 = call float @dx.op.tertiary.f32(i32 46, float %486, float %474, float %489)  ; FMad(a,b,c)
  %491 = fadd fast float %488, %463
  %492 = fadd fast float %490, %464
  %493 = fmul fast float %491, %409
  %494 = fmul fast float %492, %409
  %495 = call float @dx.op.binary.f32(i32 35, float %493, float %405)  ; FMax(a,b)
  %496 = call float @dx.op.binary.f32(i32 35, float %494, float %405)  ; FMax(a,b)
  %497 = call float @dx.op.binary.f32(i32 36, float %495, float %406)  ; FMin(a,b)
  %498 = call float @dx.op.binary.f32(i32 36, float %496, float %406)  ; FMin(a,b)
  %499 = fadd fast float %497, %403
  %500 = fadd fast float %498, %404
  %501 = uitofp i32 %440 to float
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %499, float %500, float %501, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = fsub fast float %503, %466
  %505 = fsub fast float %504, %413
  %506 = fcmp fast ogt float %505, 0.000000e+00
  %507 = select i1 %506, float 1.000000e+00, float 0.000000e+00
  %508 = fadd fast float %507, %476
  %509 = select i1 %506, float %505, float 0.000000e+00
  %510 = fadd fast float %509, %477
  %511 = add nuw nsw i32 %478, 1
  %512 = icmp eq i32 %511, 8
  br i1 %512, label %513, label %475

; <label>:513                                     ; preds = %475
  %514 = fdiv fast float 1.000000e+00, %508
  %515 = fmul fast float %514, %510
  %516 = fdiv fast float 1.000000e+00, %466
  %517 = fmul fast float %515, %516
  %518 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %519 = call float @dx.op.binary.f32(i32 35, float %518, float 0.000000e+00)  ; FMax(a,b)
  %520 = fmul fast float %508, 1.250000e-01
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %522 = fmul fast float %521, 2.000000e+00
  %523 = fadd fast float %522, -1.000000e+00
  %524 = fcmp fast ogt float %523, 0.000000e+00
  %525 = fcmp fast olt float %523, 0.000000e+00
  %526 = zext i1 %524 to i32
  %527 = zext i1 %525 to i32
  %528 = sub nsw i32 %526, %527
  %529 = sitofp i32 %528 to float
  %530 = fmul fast float %529, %523
  %531 = fsub fast float 1.000000e+00, %530
  %532 = fmul fast float %531, %531
  %533 = fmul fast float %532, %531
  %534 = fsub fast float %531, %533
  %535 = fmul fast float %534, %519
  %536 = fsub fast float 1.000000e+00, %533
  %537 = fsub fast float %536, %535
  %538 = fmul fast float %529, 5.000000e-01
  %539 = fmul fast float %538, %537
  %540 = fsub fast float -5.000000e-01, %539
  %541 = fmul fast float %540, %382
  %542 = fadd fast float %541, 1.000000e+00
  %543 = fmul fast float %542, %394
  br label %544

; <label>:544                                     ; preds = %513, %361
  %545 = phi float [ %543, %513 ], [ %394, %361 ]
  %546 = call float @dx.op.binary.f32(i32 36, float %545, float %545)  ; FMin(a,b)
  %547 = call float @dx.op.binary.f32(i32 36, float %545, float %546)  ; FMin(a,b)
  %548 = fcmp fast ogt float %547, 0.000000e+00
  %549 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %334, float %335, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = fcmp fast ogt float %549, 0.000000e+00
  %551 = and i1 %548, %550
  br i1 %551, label %552, label %819, !dx.controlflow.hints !33

; <label>:552                                     ; preds = %544
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %557 = select i1 %48, float %554, float %556
  %558 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %559 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %560 = select i1 %48, float %558, float %559
  %561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.i32 %561, 0
  %563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.i32 %563, 0
  %565 = select i1 %48, i32 %562, i32 %564
  %566 = fcmp fast olt float %557, 5.000000e-01
  %567 = icmp eq i32 %565, 0
  %568 = or i1 %566, %567
  br i1 %568, label %816, label %569, !dx.controlflow.hints !34

; <label>:569                                     ; preds = %552
  %570 = fsub fast float %294, %110
  %571 = fsub fast float %295, %111
  %572 = fsub fast float %296, %112
  %573 = fmul fast float %570, %570
  %574 = fmul fast float %571, %571
  %575 = fadd fast float %573, %574
  %576 = fmul fast float %572, %572
  %577 = fadd fast float %575, %576
  %578 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  %579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.i32 %579, 0
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %557, %291
  %583 = fdiv fast float %582, %578
  %584 = call float @dx.op.binary.f32(i32 36, float %583, float 1.000000e+01)  ; FMin(a,b)
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %587 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %588 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %589 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %593 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %594 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %598 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %599 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %603 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %604 = extractvalue %dx.types.CBufRet.f32 %600, 3
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %609 = extractvalue %dx.types.CBufRet.f32 %605, 3
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %614 = extractvalue %dx.types.CBufRet.f32 %610, 3
  %615 = select i1 %48, float %586, float %601
  %616 = select i1 %48, float %591, float %606
  %617 = select i1 %48, float %596, float %611
  %618 = select i1 %48, float %587, float %602
  %619 = select i1 %48, float %592, float %607
  %620 = select i1 %48, float %597, float %612
  %621 = select i1 %48, float %588, float %603
  %622 = select i1 %48, float %593, float %608
  %623 = select i1 %48, float %598, float %613
  %624 = select i1 %48, float %589, float %604
  %625 = select i1 %48, float %594, float %609
  %626 = select i1 %48, float %599, float %614
  %627 = fmul fast float %212, 0x401061CAC0000000
  %628 = fmul fast float %212, 0x4023E1D7E0000000
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 0
  %631 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %632 = extractvalue %dx.types.CBufRet.f32 %629, 2
  %633 = extractvalue %dx.types.CBufRet.f32 %629, 3
  %634 = fsub fast float -0.000000e+00, %334
  %635 = fmul fast float %336, %634
  %636 = fmul fast float %334, %634
  %637 = fmul fast float %335, %335
  %638 = fsub fast float %636, %637
  %639 = fdiv fast float 1.000000e+00, %55
  %640 = fmul fast float %632, %44
  %641 = fmul fast float %633, %45
  %642 = fmul fast float %557, %334
  %643 = fmul fast float %557, %336
  %644 = fadd fast float %642, %110
  %645 = fadd fast float %643, %112
  %646 = fadd fast float %628, 5.000000e-01
  %647 = call float @dx.op.unary.f32(i32 22, float %646)  ; Frc(value)
  %648 = bitcast float %647 to i32
  %649 = ashr i32 %648, 1
  %650 = add nsw i32 %649, 532487669
  %651 = bitcast i32 %650 to float
  %652 = fmul fast float %651, %584
  %653 = fadd fast float %627, 5.000000e-01
  %654 = call float @dx.op.unary.f32(i32 22, float %653)  ; Frc(value)
  %655 = fmul fast float %654, 0x401921FB60000000
  %656 = call float @dx.op.unary.f32(i32 12, float %655)  ; Cos(value)
  %657 = fmul fast float %656, %656
  %658 = fsub fast float 1.000000e+00, %657
  %659 = bitcast float %658 to i32
  %660 = ashr i32 %659, 1
  %661 = add nsw i32 %660, 532487669
  %662 = bitcast i32 %661 to float
  %663 = fmul fast float %652, %656
  %664 = fmul fast float %663, %335
  %665 = fmul fast float %663, %634
  %666 = fadd fast float %644, %664
  %667 = fmul fast float %662, %652
  %668 = fmul fast float %635, %667
  %669 = fmul fast float %667, %336
  %670 = fmul fast float %667, %638
  %671 = fsub fast float %666, %668
  %672 = fadd fast float %669, %557
  %673 = fmul fast float %672, %335
  %674 = fadd fast float %665, %111
  %675 = fadd fast float %674, %673
  %676 = fadd fast float %645, %670
  %677 = fmul fast float %671, %615
  %678 = call float @dx.op.tertiary.f32(i32 46, float %675, float %618, float %677)  ; FMad(a,b,c)
  %679 = call float @dx.op.tertiary.f32(i32 46, float %676, float %621, float %678)  ; FMad(a,b,c)
  %680 = fadd fast float %679, %624
  %681 = fmul fast float %671, %616
  %682 = call float @dx.op.tertiary.f32(i32 46, float %675, float %619, float %681)  ; FMad(a,b,c)
  %683 = call float @dx.op.tertiary.f32(i32 46, float %676, float %622, float %682)  ; FMad(a,b,c)
  %684 = fadd fast float %683, %625
  %685 = fmul fast float %671, %617
  %686 = call float @dx.op.tertiary.f32(i32 46, float %675, float %620, float %685)  ; FMad(a,b,c)
  %687 = call float @dx.op.tertiary.f32(i32 46, float %676, float %623, float %686)  ; FMad(a,b,c)
  %688 = fadd fast float %687, %626
  %689 = fdiv fast float 1.000000e+00, %688
  %690 = fmul fast float %680, 5.000000e-01
  %691 = fmul fast float %684, -5.000000e-01
  %692 = fmul fast float %690, %689
  %693 = fmul fast float %691, %689
  %694 = fsub fast float 5.000000e-01, %640
  %695 = fadd fast float %694, %692
  %696 = fsub fast float 5.000000e-01, %641
  %697 = fadd fast float %696, %693
  %698 = fsub fast float %689, %639
  %699 = call float @dx.op.dot2.f32(i32 54, float %695, float %697, float %695, float %697)  ; Dot2(ax,ay,bx,by)
  %700 = call float @dx.op.binary.f32(i32 35, float %699, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %701 = call float @dx.op.dot2.f32(i32 54, float %630, float %631, float %630, float %631)  ; Dot2(ax,ay,bx,by)
  %702 = fmul fast float %701, %700
  %703 = call float @dx.op.unary.f32(i32 25, float %702)  ; Rsqrt(value)
  %704 = fmul fast float %703, %695
  %705 = fmul fast float %703, %697
  %706 = fadd fast float %704, %640
  %707 = fadd fast float %705, %641
  %708 = fmul fast float %695, %630
  %709 = fmul fast float %697, %631
  %710 = fmul fast float %708, %708
  %711 = fmul fast float %709, %709
  %712 = fadd fast float %710, %711
  %713 = call float @dx.op.unary.f32(i32 24, float %712)  ; Sqrt(value)
  %714 = fdiv fast float 1.000000e+00, %713
  %715 = fmul fast float %713, 3.906250e-03
  %716 = fmul fast float %198, 0x3F70624DE0000000
  %717 = fadd fast float %716, 0x3F70624DE0000000
  %718 = icmp sgt i32 %565, -1
  br i1 %718, label %719, label %781

; <label>:719                                     ; preds = %569
  br label %720

; <label>:720                                     ; preds = %777, %719
  %721 = phi float [ %752, %777 ], [ %55, %719 ]
  %722 = phi float [ %739, %777 ], [ %55, %719 ]
  %723 = phi float [ %722, %777 ], [ %55, %719 ]
  %724 = phi i32 [ %778, %777 ], [ 0, %719 ]
  %725 = sitofp i32 %724 to float
  %726 = fadd fast float %212, 5.000000e-01
  %727 = call float @dx.op.unary.f32(i32 22, float %726)  ; Frc(value)
  %728 = fadd fast float %725, %727
  %729 = sitofp i32 %565 to float
  %730 = fdiv fast float %728, %729
  %731 = fmul fast float %730, %730
  %732 = call float @dx.op.binary.f32(i32 36, float %731, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %733 = fmul fast float %732, %695
  %734 = fmul fast float %732, %697
  %735 = fmul fast float %732, %698
  %736 = fadd fast float %733, %706
  %737 = fadd fast float %734, %707
  %738 = fadd fast float %735, %639
  %739 = fdiv fast float 1.000000e+00, %738
  %740 = icmp ne i32 %580, 0
  %741 = fmul fast float %715, %732
  %742 = call float @dx.op.binary.f32(i32 36, float %741, float %581)  ; FMin(a,b)
  %743 = select i1 %740, float %742, float 0.000000e+00
  %744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %736, float %737, float undef, float undef, i32 0, i32 0, i32 undef, float %743)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = fcmp fast ogt float %745, -1.000000e+00
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %749 = select i1 %746, float %748, float 1.000000e+00
  %750 = fadd fast float %745, 1.000000e+00
  %751 = fmul fast float %749, %750
  %752 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %753 = fmul fast float %752, %717
  %754 = fsub fast float %739, %752
  %755 = fsub fast float %754, %753
  %756 = fcmp fast ogt float %755, 0.000000e+00
  %757 = fcmp fast ogt float %560, 0.000000e+00
  br i1 %757, label %758, label %761, !dx.controlflow.hints !35

; <label>:758                                     ; preds = %720
  %759 = fsub fast float %739, %723
  %760 = call float @dx.op.binary.f32(i32 35, float %759, float %560)  ; FMax(a,b)
  br label %761

; <label>:761                                     ; preds = %758, %720
  %762 = phi float [ %760, %758 ], [ %557, %720 ]
  %763 = fcmp fast olt float %755, %762
  %764 = fcmp uge float %745, -1.000000e+00
  %765 = or i1 %48, %764
  %766 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %767 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %768 = fcmp fast oeq float %736, %766
  %769 = fcmp fast oeq float %737, %767
  %770 = and i1 %768, %769
  %771 = and i1 %765, %770
  %772 = and i1 %756, %763
  %773 = and i1 %772, %771
  %774 = fcmp fast ogt float %732, %714
  %775 = and i1 %774, %773
  %776 = zext i1 %775 to i32
  br i1 %775, label %780, label %777, !dx.controlflow.hints !36

; <label>:777                                     ; preds = %761
  %778 = add nuw nsw i32 %724, 1
  %779 = icmp slt i32 %724, %565
  br i1 %779, label %720, label %780

; <label>:780                                     ; preds = %777, %761
  br label %781

; <label>:781                                     ; preds = %780, %569
  %782 = phi i32 [ 0, %569 ], [ %776, %780 ]
  %783 = phi float [ %55, %569 ], [ %752, %780 ]
  %784 = phi float [ %55, %569 ], [ %721, %780 ]
  %785 = phi float [ %55, %569 ], [ %739, %780 ]
  %786 = phi float [ %55, %569 ], [ %722, %780 ]
  %787 = fsub fast float %786, %784
  %788 = fsub fast float %785, %783
  %789 = fsub fast float %787, %788
  %790 = fcmp fast une float %789, 0.000000e+00
  %791 = fmul fast float %787, %785
  %792 = fmul fast float %786, %788
  %793 = fsub fast float %791, %792
  %794 = fdiv fast float 1.000000e+00, %789
  %795 = fmul fast float %793, %794
  %796 = select i1 %790, float %795, float %785
  %797 = fdiv fast float 1.000000e+00, %796
  %798 = fsub fast float %797, %639
  %799 = fdiv fast float %798, %698
  %800 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %801 = fmul fast float %800, %695
  %802 = fmul fast float %800, %697
  %803 = fadd fast float %801, %706
  %804 = fadd fast float %802, %707
  %805 = fadd fast float %803, -5.000000e-01
  %806 = fadd fast float %804, -5.000000e-01
  %807 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %808 = call float @dx.op.unary.f32(i32 6, float %806)  ; FAbs(value)
  %809 = fadd fast float %807, -5.000000e-01
  %810 = fadd fast float %808, -5.000000e-01
  %811 = call float @dx.op.binary.f32(i32 35, float %809, float %810)  ; FMax(a,b)
  %812 = fcmp fast olt float %811, 0.000000e+00
  %813 = icmp ne i32 %782, 0
  %814 = and i1 %813, %812
  %815 = select i1 %814, float 0.000000e+00, float 1.000000e+00
  br label %816

; <label>:816                                     ; preds = %781, %552
  %817 = phi float [ %815, %781 ], [ 1.000000e+00, %552 ]
  %818 = fmul fast float %817, %545
  br label %819

; <label>:819                                     ; preds = %816, %544
  %820 = phi float [ %818, %816 ], [ %545, %544 ]
  %821 = lshr i32 %217, 5
  %822 = lshr i32 %218, 5
  %823 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %821, i32 %822, i32 %271, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = lshr i32 %824, 23
  %826 = and i32 %825, 255
  %827 = and i32 %217, 31
  %828 = and i32 %218, 31
  %829 = lshr i32 %824, 1
  %830 = and i32 %829, 16352
  %831 = lshr i32 %824, 10
  %832 = and i32 %831, 8160
  %833 = or i32 %830, %827
  %834 = or i32 %832, %828
  %835 = fmul fast float %820, 2.550000e+02
  %836 = fadd fast float %835, %211
  %837 = call float @dx.op.unary.f32(i32 27, float %836)  ; Round_ni(value)
  %838 = fmul fast float %837, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %833, i32 %834, i32 %826, float %838, float %838, float %838, float %838, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %839 = icmp eq i32 %269, %273
  br i1 %839, label %840, label %268, !llvm.loop !37

; <label>:840                                     ; preds = %819
  br label %841

; <label>:841                                     ; preds = %840, %242
  %842 = add i32 %243, 1
  %843 = icmp ugt i32 %842, %239
  br i1 %843, label %844, label %242

; <label>:844                                     ; preds = %841
  br label %845

; <label>:845                                     ; preds = %844, %216, %0
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !21, !24}
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
!19 = !{!20}
!20 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!21 = !{!22, !23}
!22 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!23 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!24 = !{!25, !26}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 8, i32 8, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}

