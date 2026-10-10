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
; shader hash: 81662eb7f7dcb4f833a46e3fb4b782a6
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
%struct.SamplerState = type { i32 }

@"\01?gsLightIterator@@3IA" = external addrspace(3) global i32, align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = shl i32 %23, 2
  %27 = mul i32 %26, %25
  %28 = add i32 %27, %18
  %29 = shl i32 %28, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = lshr i32 %31, 10
  %33 = and i32 %32, 262128
  %34 = shl i32 %31, 4
  %35 = and i32 %34, 262128
  %36 = lshr i32 %31, 25
  %37 = and i32 %36, 8
  %38 = lshr i32 %31, 26
  %39 = and i32 %38, 8
  %40 = or i32 %37, %19
  %41 = or i32 %40, %33
  %42 = or i32 %39, %20
  %43 = or i32 %42, %35
  %44 = uitofp i32 %41 to float
  %45 = uitofp i32 %43 to float
  %46 = fadd fast float %44, 5.000000e-01
  %47 = fadd fast float %45, 5.000000e-01
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %41, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = fcmp fast olt float %49, -1.000000e+00
  %51 = fcmp fast ogt float %49, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = select i1 %51, float %53, float 1.000000e+00
  %55 = fadd fast float %49, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %46, %59
  %62 = fmul fast float %47, %60
  %63 = fmul fast float %61, 2.000000e+00
  %64 = fmul fast float %62, 2.000000e+00
  %65 = fsub fast float 1.000000e+00, %63
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = select i1 %50, float %68, float %72
  %76 = select i1 %50, float %69, float %73
  %77 = select i1 %50, float %70, float %74
  %78 = fmul fast float %75, %65
  %79 = fmul fast float %76, %65
  %80 = fmul fast float %77, %65
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = select i1 %50, float %82, float %86
  %90 = select i1 %50, float %83, float %87
  %91 = select i1 %50, float %84, float %88
  %92 = fmul fast float %89, %66
  %93 = fmul fast float %90, %66
  %94 = fmul fast float %91, %66
  %95 = fadd fast float %92, %78
  %96 = fadd fast float %93, %79
  %97 = fadd fast float %94, %80
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = select i1 %50, float %99, float %103
  %107 = select i1 %50, float %100, float %104
  %108 = select i1 %50, float %101, float %105
  %109 = fadd fast float %95, %106
  %110 = fadd fast float %96, %107
  %111 = fadd fast float %97, %108
  %112 = fmul fast float %109, %57
  %113 = fmul fast float %110, %57
  %114 = fmul fast float %111, %57
  %115 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %41, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = lshr i32 %116, 8
  %118 = and i32 %116, 255
  %119 = and i32 %117, 255
  %120 = uitofp i32 %118 to float
  %121 = uitofp i32 %119 to float
  %122 = fmul fast float %120, 0x3F80101020000000
  %123 = fmul fast float %121, 0x3F80101020000000
  %124 = fadd fast float %122, -1.000000e+00
  %125 = fadd fast float %123, -1.000000e+00
  %126 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %127 = fsub fast float 1.000000e+00, %126
  %128 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %129 = fsub fast float %127, %128
  %130 = fsub fast float -0.000000e+00, %129
  %131 = call float @dx.op.binary.f32(i32 35, float %130, float 0.000000e+00)  ; FMax(a,b)
  %132 = fcmp fast ogt float %124, 0.000000e+00
  %133 = fsub fast float -0.000000e+00, %131
  %134 = select i1 %132, float %133, float %131
  %135 = fadd fast float %134, %124
  %136 = fcmp fast ogt float %125, 0.000000e+00
  %137 = select i1 %136, float %133, float %131
  %138 = fadd fast float %137, %125
  %139 = call float @dx.op.dot3.f32(i32 55, float %135, float %138, float %129, float %135, float %138, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = call float @dx.op.unary.f32(i32 25, float %139)  ; Rsqrt(value)
  %141 = fmul fast float %135, %140
  %142 = fmul fast float %138, %140
  %143 = fmul fast float %140, %129
  %144 = fmul fast float %59, %44
  %145 = fmul fast float %60, %45
  %146 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = extractvalue %dx.types.ResRet.f32 %146, 1
  %149 = extractvalue %dx.types.ResRet.f32 %146, 2
  %150 = fcmp fast ogt float %147, -1.000000e+00
  %151 = select i1 %150, float %53, float 1.000000e+00
  %152 = fadd fast float %147, 1.000000e+00
  %153 = fmul fast float %151, %152
  %154 = call float @dx.op.unary.f32(i32 6, float %153)  ; FAbs(value)
  %155 = fcmp fast ogt float %148, -1.000000e+00
  %156 = select i1 %155, float %53, float 1.000000e+00
  %157 = fadd fast float %148, 1.000000e+00
  %158 = fmul fast float %156, %157
  %159 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %160 = fcmp fast ogt float %149, -1.000000e+00
  %161 = select i1 %160, float %53, float 1.000000e+00
  %162 = fadd fast float %149, 1.000000e+00
  %163 = fmul fast float %161, %162
  %164 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %165 = fadd fast float %44, 1.000000e+00
  %166 = fmul fast float %59, %165
  %167 = fadd fast float %45, 1.000000e+00
  %168 = fmul fast float %60, %167
  %169 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %166, float %168, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 2
  %172 = fcmp fast ogt float %170, -1.000000e+00
  %173 = select i1 %172, float %53, float 1.000000e+00
  %174 = fadd fast float %170, 1.000000e+00
  %175 = fmul fast float %173, %174
  %176 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %177 = fcmp fast ogt float %171, -1.000000e+00
  %178 = select i1 %177, float %53, float 1.000000e+00
  %179 = fadd fast float %171, 1.000000e+00
  %180 = fmul fast float %178, %179
  %181 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %182 = fsub fast float %164, %159
  %183 = fsub fast float %176, %159
  %184 = fsub fast float %154, %159
  %185 = fsub fast float %181, %159
  %186 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %187 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %188 = call float @dx.op.binary.f32(i32 35, float %187, float %186)  ; FMax(a,b)
  %189 = call float @dx.op.unary.f32(i32 6, float %185)  ; FAbs(value)
  %190 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %191 = call float @dx.op.binary.f32(i32 35, float %190, float %189)  ; FMax(a,b)
  %192 = fadd fast float %183, %182
  %193 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %194 = fadd fast float %185, %184
  %195 = call float @dx.op.unary.f32(i32 6, float %194)  ; FAbs(value)
  %196 = fsub fast float %191, %195
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fsub fast float %188, %193
  %199 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %200 = call float @dx.op.binary.f32(i32 35, float %199, float %197)  ; FMax(a,b)
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = fmul fast float %202, 0x3FE3C6EF40000000
  %204 = frem fast float %46, 2.560000e+02
  %205 = frem fast float %47, 2.560000e+02
  %206 = fptoui float %204 to i32
  %207 = fptoui float %205 to i32
  %208 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 2
  %211 = fadd fast float %209, %203
  %212 = fadd fast float %210, %203
  %213 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %214 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 0
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %877, label %218, !dx.controlflow.hints !31

; <label>:218                                     ; preds = %0
  %219 = fptoui float %46 to i32
  %220 = fptoui float %47 to i32
  %221 = lshr i32 %219, 4
  %222 = lshr i32 %220, 4
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 0
  %225 = call i32 @dx.op.tertiary.i32(i32 49, i32 %222, i32 %224, i32 %221)  ; UMad(a,b,c)
  %226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.i32 %226, 0
  %228 = add nsw i32 %227, -1
  %229 = call i32 @dx.op.binary.i32(i32 37, i32 %228, i32 0)  ; IMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %231 = fptoui float %230 to i32
  %232 = lshr i32 %231, 5
  %233 = call i32 @dx.op.binary.i32(i32 40, i32 %232, i32 8191)  ; UMin(a,b)
  %234 = shl i32 %233, 2
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 16
  %238 = and i32 %236, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %239 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %237 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %240 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %241 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %238 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %242 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  %243 = lshr i32 %240, 5
  %244 = lshr i32 %242, 5
  %245 = call i32 @dx.op.binary.i32(i32 40, i32 %244, i32 %229)  ; UMin(a,b)
  %246 = icmp ugt i32 %243, %245
  br i1 %246, label %877, label %247

; <label>:247                                     ; preds = %218
  br label %248

; <label>:248                                     ; preds = %867, %247
  %249 = phi i32 [ %874, %867 ], [ %243, %247 ]
  %250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.i32 %250, 0
  %252 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %251, i32 %249)  ; UMad(a,b,c)
  %253 = shl i32 %252, 2
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = shl i32 %249, 5
  %257 = sub nsw i32 %237, %256
  %258 = call i32 @dx.op.binary.i32(i32 37, i32 %257, i32 0)  ; IMax(a,b)
  %259 = call i32 @dx.op.binary.i32(i32 38, i32 %258, i32 31)  ; IMin(a,b)
  %260 = sub nsw i32 1, %237
  %261 = add nsw i32 %260, %238
  %262 = call i32 @dx.op.binary.i32(i32 37, i32 %261, i32 0)  ; IMax(a,b)
  %263 = call i32 @dx.op.binary.i32(i32 38, i32 %262, i32 32)  ; IMin(a,b)
  %264 = and i32 %263, 31
  %265 = shl i32 -1, %264
  %266 = xor i32 %265, -1
  %267 = and i32 %259, 31
  %268 = shl i32 %266, %267
  %269 = icmp eq i32 %263, 32
  %270 = select i1 %269, i32 -1, i32 %268
  %271 = and i32 %270, %255
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %272 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %271 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %273 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %274 = icmp eq i32 %21, 0
  br i1 %274, label %275, label %276, !dx.controlflow.hints !36

; <label>:275                                     ; preds = %248
  store i32 %273, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  br label %276

; <label>:276                                     ; preds = %275, %248
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %867, label %279

; <label>:279                                     ; preds = %276
  br label %280

; <label>:280                                     ; preds = %834, %279
  %281 = phi i32 [ %846, %834 ], [ 0, %279 ]
  %282 = phi i32 [ %287, %834 ], [ %277, %279 ]
  %283 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %282)  ; FirstbitLo(value)
  %284 = add i32 %283, %256
  %285 = and i32 %283, 31
  %286 = shl i32 1, %285
  %287 = xor i32 %286, %282
  %288 = mul i32 %284, 112
  %289 = add i32 %288, 16
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = add i32 %288, 28
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = add i32 %288, 32
  %298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = add i32 %288, 44
  %303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = add i32 %288, 48
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = extractvalue %dx.types.ResRet.f32 %306, 3
  %311 = add i32 %288, 64
  %312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 0
  %314 = extractvalue %dx.types.ResRet.f32 %312, 1
  %315 = extractvalue %dx.types.ResRet.f32 %312, 2
  %316 = extractvalue %dx.types.ResRet.f32 %312, 3
  %317 = add i32 %288, 92
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = uitofp i32 %320 to float
  %322 = lshr i32 %319, 16
  %323 = uitofp i32 %322 to float
  %324 = and i32 %296, 65535
  %325 = and i32 %296, 50331648
  %326 = icmp eq i32 %325, 33554432
  %327 = call float @dx.op.dot3.f32(i32 55, float %299, float %300, float %301, float %299, float %300, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = fsub fast float %112, %307
  %329 = fsub fast float %113, %308
  %330 = fsub fast float %114, %309
  %331 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float %299, float %300, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %332 = fdiv fast float %331, %327
  %333 = call float @dx.op.binary.f32(i32 35, float %332, float -1.000000e+00)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 36, float %333, float 1.000000e+00)  ; FMin(a,b)
  %335 = fmul fast float %334, %299
  %336 = fmul fast float %334, %300
  %337 = fmul fast float %334, %301
  %338 = fadd fast float %335, %307
  %339 = fadd fast float %336, %308
  %340 = fadd fast float %337, %309
  %341 = fsub fast float %338, %112
  %342 = fsub fast float %339, %113
  %343 = fsub fast float %340, %114
  %344 = call float @dx.op.dot3.f32(i32 55, float %341, float %342, float %343, float %341, float %342, float %343)  ; Dot3(ax,ay,az,bx,by,bz)
  %345 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %346 = fdiv fast float 1.000000e+00, %345
  %347 = fmul fast float %341, %346
  %348 = fmul fast float %342, %346
  %349 = fmul fast float %343, %346
  br i1 %326, label %350, label %374, !dx.controlflow.hints !37

; <label>:350                                     ; preds = %280
  %351 = fmul fast float %315, %291
  %352 = fmul fast float %315, %292
  %353 = fmul fast float %315, %293
  %354 = fsub fast float %351, %112
  %355 = fadd fast float %354, %338
  %356 = fsub fast float %352, %113
  %357 = fadd fast float %356, %339
  %358 = fsub fast float %353, %114
  %359 = fadd fast float %358, %340
  %360 = call float @dx.op.dot3.f32(i32 55, float %355, float %357, float %359, float %355, float %357, float %359)  ; Dot3(ax,ay,az,bx,by,bz)
  %361 = call float @dx.op.unary.f32(i32 25, float %360)  ; Rsqrt(value)
  %362 = fmul fast float %361, %355
  %363 = fmul fast float %361, %357
  %364 = fmul fast float %361, %359
  %365 = fsub fast float %112, %338
  %366 = fsub fast float %113, %339
  %367 = fsub fast float %114, %340
  %368 = fsub fast float -0.000000e+00, %365
  %369 = fsub fast float -0.000000e+00, %366
  %370 = fsub fast float -0.000000e+00, %367
  %371 = call float @dx.op.dot3.f32(i32 55, float %368, float %369, float %370, float %291, float %292, float %293)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = fcmp fast ogt float %371, 0.000000e+00
  %373 = uitofp i1 %372 to float
  br label %374

; <label>:374                                     ; preds = %350, %280
  %375 = phi float [ %373, %350 ], [ 1.000000e+00, %280 ]
  %376 = phi float [ %362, %350 ], [ %347, %280 ]
  %377 = phi float [ %363, %350 ], [ %348, %280 ]
  %378 = phi float [ %364, %350 ], [ %349, %280 ]
  %379 = call float @dx.op.dot3.f32(i32 55, float %291, float %292, float %293, float %376, float %377, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %380 = fmul fast float %379, %379
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %382 = fsub fast float 1.000000e+00, %381
  %383 = fmul fast float %382, 5.000000e-01
  %384 = fcmp fast ogt float %379, 0.000000e+00
  %385 = fsub fast float 1.000000e+00, %383
  %386 = select i1 %384, float %383, float %385
  %387 = fmul fast float %386, %323
  %388 = fadd fast float %387, %321
  %389 = fmul fast float %388, 0x3EF0001000000000
  %390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %389, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = fmul fast float %379, %313
  %393 = fadd fast float %392, %314
  %394 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %395 = select i1 %326, float 1.000000e+00, float %394
  %396 = select i1 %326, float %394, float 1.000000e+00
  %397 = fmul fast float %345, %310
  %398 = fsub fast float 1.000000e+00, %397
  %399 = fmul fast float %398, %316
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = fmul fast float %400, %396
  %402 = fmul fast float %401, 2.000000e+00
  %403 = fsub fast float 3.000000e+00, %402
  %404 = fmul fast float %391, %375
  %405 = fmul fast float %401, %401
  %406 = fmul fast float %405, %404
  %407 = fmul fast float %406, %403
  %408 = icmp ne i32 %324, 255
  %409 = call float @dx.op.binary.f32(i32 36, float %407, float %407)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 36, float %407, float %409)  ; FMin(a,b)
  %411 = fcmp fast ogt float %410, 0.000000e+00
  %412 = and i1 %408, %411
  br i1 %412, label %413, label %557, !dx.controlflow.hints !38

; <label>:413                                     ; preds = %374
  %414 = mul nuw nsw i32 %324, 176
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = extractvalue %dx.types.ResRet.f32 %415, 3
  %420 = add nuw nsw i32 %414, 16
  %421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = add nuw nsw i32 %414, 32
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = add nuw nsw i32 %414, 48
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = add nuw nsw i32 %414, 64
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = add nuw nsw i32 %414, 80
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = extractvalue %dx.types.ResRet.f32 %442, 3
  %447 = add nuw nsw i32 %414, 96
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = bitcast float %423 to i32
  %454 = fmul fast float %428, %141
  %455 = fmul fast float %428, %142
  %456 = fmul fast float %428, %143
  %457 = fadd fast float %454, %112
  %458 = fadd fast float %455, %113
  %459 = fadd fast float %456, %114
  %460 = fmul fast float %457, %431
  %461 = call float @dx.op.tertiary.f32(i32 46, float %458, float %437, float %460)  ; FMad(a,b,c)
  %462 = call float @dx.op.tertiary.f32(i32 46, float %459, float %443, float %461)  ; FMad(a,b,c)
  %463 = fadd fast float %462, %449
  %464 = fmul fast float %457, %432
  %465 = call float @dx.op.tertiary.f32(i32 46, float %458, float %438, float %464)  ; FMad(a,b,c)
  %466 = call float @dx.op.tertiary.f32(i32 46, float %459, float %444, float %465)  ; FMad(a,b,c)
  %467 = fadd fast float %466, %450
  %468 = fmul fast float %457, %433
  %469 = call float @dx.op.tertiary.f32(i32 46, float %458, float %439, float %468)  ; FMad(a,b,c)
  %470 = call float @dx.op.tertiary.f32(i32 46, float %459, float %445, float %469)  ; FMad(a,b,c)
  %471 = fadd fast float %470, %451
  %472 = fmul fast float %457, %434
  %473 = call float @dx.op.tertiary.f32(i32 46, float %458, float %440, float %472)  ; FMad(a,b,c)
  %474 = call float @dx.op.tertiary.f32(i32 46, float %459, float %446, float %473)  ; FMad(a,b,c)
  %475 = fadd fast float %474, %452
  %476 = fdiv fast float %463, %475
  %477 = fdiv fast float %467, %475
  %478 = fdiv fast float %471, %475
  %479 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %478)  ; FMax(a,b)
  %480 = fmul fast float %213, 0x401921FB60000000
  %481 = call float @dx.op.unary.f32(i32 13, float %480)  ; Sin(value)
  %482 = call float @dx.op.unary.f32(i32 12, float %480)  ; Cos(value)
  %483 = fmul fast float %482, %427
  %484 = call float @dx.op.tertiary.f32(i32 46, float %481, float %427, float 0.000000e+00)  ; FMad(a,b,c)
  %485 = fmul fast float %427, %481
  %486 = fsub fast float -0.000000e+00, %485
  %487 = call float @dx.op.tertiary.f32(i32 46, float %482, float %427, float 0.000000e+00)  ; FMad(a,b,c)
  br label %488

; <label>:488                                     ; preds = %488, %413
  %489 = phi float [ 0.000000e+00, %413 ], [ %521, %488 ]
  %490 = phi float [ 0.000000e+00, %413 ], [ %523, %488 ]
  %491 = phi i32 [ 0, %413 ], [ %524, %488 ]
  %492 = mul i32 %491, 2
  %493 = add i32 0, %492
  %494 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %493
  %495 = load float, float* %494, align 4
  %496 = mul i32 %491, 2
  %497 = add i32 1, %496
  %498 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %497
  %499 = load float, float* %498, align 4
  %500 = fmul fast float %483, %495
  %501 = call float @dx.op.tertiary.f32(i32 46, float %499, float %486, float %500)  ; FMad(a,b,c)
  %502 = fmul fast float %495, %484
  %503 = call float @dx.op.tertiary.f32(i32 46, float %499, float %487, float %502)  ; FMad(a,b,c)
  %504 = fadd fast float %501, %476
  %505 = fadd fast float %503, %477
  %506 = fmul fast float %504, %422
  %507 = fmul fast float %505, %422
  %508 = call float @dx.op.binary.f32(i32 35, float %506, float %418)  ; FMax(a,b)
  %509 = call float @dx.op.binary.f32(i32 35, float %507, float %418)  ; FMax(a,b)
  %510 = call float @dx.op.binary.f32(i32 36, float %508, float %419)  ; FMin(a,b)
  %511 = call float @dx.op.binary.f32(i32 36, float %509, float %419)  ; FMin(a,b)
  %512 = fadd fast float %510, %416
  %513 = fadd fast float %511, %417
  %514 = uitofp i32 %453 to float
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %512, float %513, float %514, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = fsub fast float %516, %479
  %518 = fsub fast float %517, %426
  %519 = fcmp fast ogt float %518, 0.000000e+00
  %520 = select i1 %519, float 1.000000e+00, float 0.000000e+00
  %521 = fadd fast float %520, %489
  %522 = select i1 %519, float %518, float 0.000000e+00
  %523 = fadd fast float %522, %490
  %524 = add nuw nsw i32 %491, 1
  %525 = icmp eq i32 %524, 8
  br i1 %525, label %526, label %488

; <label>:526                                     ; preds = %488
  %527 = fdiv fast float 1.000000e+00, %521
  %528 = fmul fast float %527, %523
  %529 = fdiv fast float 1.000000e+00, %479
  %530 = fmul fast float %528, %529
  %531 = call float @dx.op.unary.f32(i32 7, float %530)  ; Saturate(value)
  %532 = call float @dx.op.binary.f32(i32 35, float %531, float 0.000000e+00)  ; FMax(a,b)
  %533 = fmul fast float %521, 1.250000e-01
  %534 = call float @dx.op.unary.f32(i32 7, float %533)  ; Saturate(value)
  %535 = fmul fast float %534, 2.000000e+00
  %536 = fadd fast float %535, -1.000000e+00
  %537 = fcmp fast ogt float %536, 0.000000e+00
  %538 = fcmp fast olt float %536, 0.000000e+00
  %539 = zext i1 %537 to i32
  %540 = zext i1 %538 to i32
  %541 = sub nsw i32 %539, %540
  %542 = sitofp i32 %541 to float
  %543 = fmul fast float %542, %536
  %544 = fsub fast float 1.000000e+00, %543
  %545 = fmul fast float %544, %544
  %546 = fmul fast float %545, %544
  %547 = fsub fast float %544, %546
  %548 = fmul fast float %547, %532
  %549 = fsub fast float 1.000000e+00, %546
  %550 = fsub fast float %549, %548
  %551 = fmul fast float %542, 5.000000e-01
  %552 = fmul fast float %551, %550
  %553 = fsub fast float -5.000000e-01, %552
  %554 = fmul fast float %553, %395
  %555 = fadd fast float %554, 1.000000e+00
  %556 = fmul fast float %555, %407
  br label %557

; <label>:557                                     ; preds = %526, %374
  %558 = phi float [ %556, %526 ], [ %407, %374 ]
  %559 = call float @dx.op.binary.f32(i32 36, float %558, float %558)  ; FMin(a,b)
  %560 = call float @dx.op.binary.f32(i32 36, float %558, float %559)  ; FMin(a,b)
  %561 = fcmp fast ogt float %560, 0.000000e+00
  %562 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = fcmp fast ogt float %562, 0.000000e+00
  %564 = and i1 %561, %563
  br i1 %564, label %565, label %834, !dx.controlflow.hints !39

; <label>:565                                     ; preds = %557
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 1
  %570 = select i1 %50, float %567, float %569
  %571 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %572 = extractvalue %dx.types.CBufRet.f32 %568, 2
  %573 = select i1 %50, float %571, float %572
  %574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.i32 %574, 0
  %576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.i32 %576, 0
  %578 = select i1 %50, i32 %575, i32 %577
  %579 = fcmp fast olt float %570, 5.000000e-01
  %580 = icmp eq i32 %578, 0
  %581 = or i1 %579, %580
  br i1 %581, label %829, label %582, !dx.controlflow.hints !40

; <label>:582                                     ; preds = %565
  %583 = fsub fast float %307, %112
  %584 = fsub fast float %308, %113
  %585 = fsub fast float %309, %114
  %586 = fmul fast float %583, %583
  %587 = fmul fast float %584, %584
  %588 = fadd fast float %586, %587
  %589 = fmul fast float %585, %585
  %590 = fadd fast float %588, %589
  %591 = call float @dx.op.unary.f32(i32 24, float %590)  ; Sqrt(value)
  %592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.i32 %592, 0
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %570, %304
  %596 = fdiv fast float %595, %591
  %597 = call float @dx.op.binary.f32(i32 36, float %596, float 1.000000e+01)  ; FMin(a,b)
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %602 = extractvalue %dx.types.CBufRet.f32 %598, 3
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %607 = extractvalue %dx.types.CBufRet.f32 %603, 3
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 0
  %610 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %611 = extractvalue %dx.types.CBufRet.f32 %608, 2
  %612 = extractvalue %dx.types.CBufRet.f32 %608, 3
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %616 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %617 = extractvalue %dx.types.CBufRet.f32 %613, 3
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %622 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %626 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %627 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %628 = select i1 %50, float %599, float %614
  %629 = select i1 %50, float %604, float %619
  %630 = select i1 %50, float %609, float %624
  %631 = select i1 %50, float %600, float %615
  %632 = select i1 %50, float %605, float %620
  %633 = select i1 %50, float %610, float %625
  %634 = select i1 %50, float %601, float %616
  %635 = select i1 %50, float %606, float %621
  %636 = select i1 %50, float %611, float %626
  %637 = select i1 %50, float %602, float %617
  %638 = select i1 %50, float %607, float %622
  %639 = select i1 %50, float %612, float %627
  %640 = fmul fast float %214, 0x401061CAC0000000
  %641 = fmul fast float %214, 0x4023E1D7E0000000
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %647 = fsub fast float -0.000000e+00, %347
  %648 = fmul fast float %349, %647
  %649 = fmul fast float %347, %647
  %650 = fmul fast float %348, %348
  %651 = fsub fast float %649, %650
  %652 = fdiv fast float 1.000000e+00, %57
  %653 = fmul fast float %645, %46
  %654 = fmul fast float %646, %47
  %655 = fmul fast float %570, %347
  %656 = fmul fast float %570, %349
  %657 = fadd fast float %655, %112
  %658 = fadd fast float %656, %114
  %659 = fadd fast float %641, 5.000000e-01
  %660 = call float @dx.op.unary.f32(i32 22, float %659)  ; Frc(value)
  %661 = bitcast float %660 to i32
  %662 = ashr i32 %661, 1
  %663 = add nsw i32 %662, 532487669
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %664, %597
  %666 = fadd fast float %640, 5.000000e-01
  %667 = call float @dx.op.unary.f32(i32 22, float %666)  ; Frc(value)
  %668 = fmul fast float %667, 0x401921FB60000000
  %669 = call float @dx.op.unary.f32(i32 12, float %668)  ; Cos(value)
  %670 = fmul fast float %669, %669
  %671 = fsub fast float 1.000000e+00, %670
  %672 = bitcast float %671 to i32
  %673 = ashr i32 %672, 1
  %674 = add nsw i32 %673, 532487669
  %675 = bitcast i32 %674 to float
  %676 = fmul fast float %665, %669
  %677 = fmul fast float %676, %348
  %678 = fmul fast float %676, %647
  %679 = fadd fast float %657, %677
  %680 = fmul fast float %675, %665
  %681 = fmul fast float %648, %680
  %682 = fmul fast float %680, %349
  %683 = fmul fast float %680, %651
  %684 = fsub fast float %679, %681
  %685 = fadd fast float %682, %570
  %686 = fmul fast float %685, %348
  %687 = fadd fast float %678, %113
  %688 = fadd fast float %687, %686
  %689 = fadd fast float %658, %683
  %690 = fmul fast float %684, %628
  %691 = call float @dx.op.tertiary.f32(i32 46, float %688, float %631, float %690)  ; FMad(a,b,c)
  %692 = call float @dx.op.tertiary.f32(i32 46, float %689, float %634, float %691)  ; FMad(a,b,c)
  %693 = fadd fast float %692, %637
  %694 = fmul fast float %684, %629
  %695 = call float @dx.op.tertiary.f32(i32 46, float %688, float %632, float %694)  ; FMad(a,b,c)
  %696 = call float @dx.op.tertiary.f32(i32 46, float %689, float %635, float %695)  ; FMad(a,b,c)
  %697 = fadd fast float %696, %638
  %698 = fmul fast float %684, %630
  %699 = call float @dx.op.tertiary.f32(i32 46, float %688, float %633, float %698)  ; FMad(a,b,c)
  %700 = call float @dx.op.tertiary.f32(i32 46, float %689, float %636, float %699)  ; FMad(a,b,c)
  %701 = fadd fast float %700, %639
  %702 = fdiv fast float 1.000000e+00, %701
  %703 = fmul fast float %693, 5.000000e-01
  %704 = fmul fast float %697, -5.000000e-01
  %705 = fmul fast float %703, %702
  %706 = fmul fast float %704, %702
  %707 = fsub fast float 5.000000e-01, %653
  %708 = fadd fast float %707, %705
  %709 = fsub fast float 5.000000e-01, %654
  %710 = fadd fast float %709, %706
  %711 = fsub fast float %702, %652
  %712 = call float @dx.op.dot2.f32(i32 54, float %708, float %710, float %708, float %710)  ; Dot2(ax,ay,bx,by)
  %713 = call float @dx.op.binary.f32(i32 35, float %712, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %714 = call float @dx.op.dot2.f32(i32 54, float %643, float %644, float %643, float %644)  ; Dot2(ax,ay,bx,by)
  %715 = fmul fast float %714, %713
  %716 = call float @dx.op.unary.f32(i32 25, float %715)  ; Rsqrt(value)
  %717 = fmul fast float %716, %708
  %718 = fmul fast float %716, %710
  %719 = fadd fast float %717, %653
  %720 = fadd fast float %718, %654
  %721 = fmul fast float %708, %643
  %722 = fmul fast float %710, %644
  %723 = fmul fast float %721, %721
  %724 = fmul fast float %722, %722
  %725 = fadd fast float %723, %724
  %726 = call float @dx.op.unary.f32(i32 24, float %725)  ; Sqrt(value)
  %727 = fdiv fast float 1.000000e+00, %726
  %728 = fmul fast float %726, 3.906250e-03
  %729 = fmul fast float %200, 0x3F70624DE0000000
  %730 = fadd fast float %729, 0x3F70624DE0000000
  %731 = icmp sgt i32 %578, -1
  br i1 %731, label %732, label %794

; <label>:732                                     ; preds = %582
  br label %733

; <label>:733                                     ; preds = %790, %732
  %734 = phi float [ %765, %790 ], [ %57, %732 ]
  %735 = phi float [ %752, %790 ], [ %57, %732 ]
  %736 = phi float [ %735, %790 ], [ %57, %732 ]
  %737 = phi i32 [ %791, %790 ], [ 0, %732 ]
  %738 = sitofp i32 %737 to float
  %739 = fadd fast float %214, 5.000000e-01
  %740 = call float @dx.op.unary.f32(i32 22, float %739)  ; Frc(value)
  %741 = fadd fast float %738, %740
  %742 = sitofp i32 %578 to float
  %743 = fdiv fast float %741, %742
  %744 = fmul fast float %743, %743
  %745 = call float @dx.op.binary.f32(i32 36, float %744, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %746 = fmul fast float %745, %708
  %747 = fmul fast float %745, %710
  %748 = fmul fast float %745, %711
  %749 = fadd fast float %746, %719
  %750 = fadd fast float %747, %720
  %751 = fadd fast float %748, %652
  %752 = fdiv fast float 1.000000e+00, %751
  %753 = icmp ne i32 %593, 0
  %754 = fmul fast float %728, %745
  %755 = call float @dx.op.binary.f32(i32 36, float %754, float %594)  ; FMin(a,b)
  %756 = select i1 %753, float %755, float 0.000000e+00
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %749, float %750, float undef, float undef, i32 0, i32 0, i32 undef, float %756)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = fcmp fast ogt float %758, -1.000000e+00
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 1
  %762 = select i1 %759, float %761, float 1.000000e+00
  %763 = fadd fast float %758, 1.000000e+00
  %764 = fmul fast float %762, %763
  %765 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %766 = fmul fast float %765, %730
  %767 = fsub fast float %752, %765
  %768 = fsub fast float %767, %766
  %769 = fcmp fast ogt float %768, 0.000000e+00
  %770 = fcmp fast ogt float %573, 0.000000e+00
  br i1 %770, label %771, label %774, !dx.controlflow.hints !41

; <label>:771                                     ; preds = %733
  %772 = fsub fast float %752, %736
  %773 = call float @dx.op.binary.f32(i32 35, float %772, float %573)  ; FMax(a,b)
  br label %774

; <label>:774                                     ; preds = %771, %733
  %775 = phi float [ %773, %771 ], [ %570, %733 ]
  %776 = fcmp fast olt float %768, %775
  %777 = fcmp uge float %758, -1.000000e+00
  %778 = or i1 %50, %777
  %779 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  %780 = call float @dx.op.unary.f32(i32 7, float %750)  ; Saturate(value)
  %781 = fcmp fast oeq float %749, %779
  %782 = fcmp fast oeq float %750, %780
  %783 = and i1 %781, %782
  %784 = and i1 %778, %783
  %785 = and i1 %769, %776
  %786 = and i1 %785, %784
  %787 = fcmp fast ogt float %745, %727
  %788 = and i1 %787, %786
  %789 = zext i1 %788 to i32
  br i1 %788, label %793, label %790, !dx.controlflow.hints !42

; <label>:790                                     ; preds = %774
  %791 = add nuw nsw i32 %737, 1
  %792 = icmp slt i32 %737, %578
  br i1 %792, label %733, label %793

; <label>:793                                     ; preds = %790, %774
  br label %794

; <label>:794                                     ; preds = %793, %582
  %795 = phi i32 [ 0, %582 ], [ %789, %793 ]
  %796 = phi float [ %57, %582 ], [ %765, %793 ]
  %797 = phi float [ %57, %582 ], [ %734, %793 ]
  %798 = phi float [ %57, %582 ], [ %752, %793 ]
  %799 = phi float [ %57, %582 ], [ %735, %793 ]
  %800 = fsub fast float %799, %797
  %801 = fsub fast float %798, %796
  %802 = fsub fast float %800, %801
  %803 = fcmp fast une float %802, 0.000000e+00
  %804 = fmul fast float %800, %798
  %805 = fmul fast float %799, %801
  %806 = fsub fast float %804, %805
  %807 = fdiv fast float 1.000000e+00, %802
  %808 = fmul fast float %806, %807
  %809 = select i1 %803, float %808, float %798
  %810 = fdiv fast float 1.000000e+00, %809
  %811 = fsub fast float %810, %652
  %812 = fdiv fast float %811, %711
  %813 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %814 = fmul fast float %813, %708
  %815 = fmul fast float %813, %710
  %816 = fadd fast float %814, %719
  %817 = fadd fast float %815, %720
  %818 = fadd fast float %816, -5.000000e-01
  %819 = fadd fast float %817, -5.000000e-01
  %820 = call float @dx.op.unary.f32(i32 6, float %818)  ; FAbs(value)
  %821 = call float @dx.op.unary.f32(i32 6, float %819)  ; FAbs(value)
  %822 = fadd fast float %820, -5.000000e-01
  %823 = fadd fast float %821, -5.000000e-01
  %824 = call float @dx.op.binary.f32(i32 35, float %822, float %823)  ; FMax(a,b)
  %825 = fcmp fast olt float %824, 0.000000e+00
  %826 = icmp ne i32 %795, 0
  %827 = and i1 %826, %825
  %828 = select i1 %827, float 0.000000e+00, float 1.000000e+00
  br label %829

; <label>:829                                     ; preds = %794, %565
  %830 = phi float [ %828, %794 ], [ 1.000000e+00, %565 ]
  %831 = fmul fast float %830, %558
  %832 = fmul fast float %830, %558
  %833 = fmul fast float %830, %558
  br label %834

; <label>:834                                     ; preds = %829, %557
  %835 = phi float [ %831, %829 ], [ %558, %557 ]
  %836 = phi float [ %832, %829 ], [ %558, %557 ]
  %837 = phi float [ %833, %829 ], [ %558, %557 ]
  %838 = call float @dx.op.binary.f32(i32 36, float %836, float %837)  ; FMin(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %835, float %838)  ; FMin(a,b)
  %840 = fcmp fast ogt float %839, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %841 = zext i1 %840 to i32
  %842 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %841 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %843 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  %844 = icmp eq i32 %843, 0
  %845 = select i1 %844, i32 0, i32 %286
  %846 = or i32 %281, %845
  %847 = lshr i32 %219, 5
  %848 = lshr i32 %220, 5
  %849 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %847, i32 %848, i32 %284, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = lshr i32 %850, 23
  %852 = and i32 %851, 255
  %853 = and i32 %219, 31
  %854 = and i32 %220, 31
  %855 = lshr i32 %850, 1
  %856 = and i32 %855, 16352
  %857 = lshr i32 %850, 10
  %858 = and i32 %857, 8160
  %859 = or i32 %856, %853
  %860 = or i32 %858, %854
  %861 = fmul fast float %835, 2.550000e+02
  %862 = fadd fast float %861, %213
  %863 = call float @dx.op.unary.f32(i32 27, float %862)  ; Round_ni(value)
  %864 = fmul fast float %863, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %859, i32 %860, i32 %852, float %864, float %864, float %864, float %864, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %865 = icmp eq i32 %282, %286
  br i1 %865, label %866, label %280, !llvm.loop !43

; <label>:866                                     ; preds = %834
  br label %867

; <label>:867                                     ; preds = %866, %276
  %868 = phi i32 [ 0, %276 ], [ %846, %866 ]
  %869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.i32 %869, 0
  %871 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %870, i32 %249)  ; UMad(a,b,c)
  %872 = shl i32 %871, 2
  %873 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %872, i32 undef, i32 undef, i32 %868)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %874 = add i32 %249, 1
  %875 = icmp ugt i32 %874, %245
  br i1 %875, label %876, label %248

; <label>:876                                     ; preds = %867
  br label %877

; <label>:877                                     ; preds = %876, %218, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

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
attributes #3 = { noduplicate nounwind }

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
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}

