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
; shader hash: d98120647927484ca39bb3cb7f1817b0
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

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4
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
  br i1 %217, label %995, label %218, !dx.controlflow.hints !31

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
  %239 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %240 = udiv i32 %21, %239
  %241 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %237, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %242 = icmp eq i32 %239, 64
  br i1 %242, label %269, label %243, !dx.controlflow.hints !32

; <label>:243                                     ; preds = %218
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %244 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %244, label %245, label %247, !dx.controlflow.hints !33

; <label>:245                                     ; preds = %243
  %246 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %240
  store i32 %241, i32 addrspace(3)* %246, align 4, !tbaa !34
  br label %247

; <label>:247                                     ; preds = %245, %243
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %248 = icmp eq i32 %239, 32
  br i1 %248, label %249, label %254, !dx.controlflow.hints !38

; <label>:249                                     ; preds = %247
  %250 = xor i32 %240, 1
  %251 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %250
  %252 = load i32, i32 addrspace(3)* %251, align 4, !tbaa !34
  %253 = call i32 @dx.op.binary.i32(i32 40, i32 %241, i32 %252)  ; UMin(a,b)
  br label %269

; <label>:254                                     ; preds = %247
  %255 = icmp eq i32 %239, 16
  br i1 %255, label %256, label %269, !dx.controlflow.hints !39

; <label>:256                                     ; preds = %254
  %257 = xor i32 %240, 3
  %258 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %257
  %259 = load i32, i32 addrspace(3)* %258, align 4, !tbaa !34
  %260 = xor i32 %240, 2
  %261 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %260
  %262 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !34
  %263 = call i32 @dx.op.binary.i32(i32 40, i32 %262, i32 %259)  ; UMin(a,b)
  %264 = xor i32 %240, 1
  %265 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %264
  %266 = load i32, i32 addrspace(3)* %265, align 4, !tbaa !34
  %267 = call i32 @dx.op.binary.i32(i32 40, i32 %241, i32 %266)  ; UMin(a,b)
  %268 = call i32 @dx.op.binary.i32(i32 40, i32 %267, i32 %263)  ; UMin(a,b)
  br label %269

; <label>:269                                     ; preds = %256, %254, %249, %218
  %270 = phi i32 [ %253, %249 ], [ %268, %256 ], [ %241, %218 ], [ 0, %254 ]
  %271 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %238, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %242, label %298, label %272, !dx.controlflow.hints !40

; <label>:272                                     ; preds = %269
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %273 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %273, label %274, label %276, !dx.controlflow.hints !41

; <label>:274                                     ; preds = %272
  %275 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %240
  store i32 %271, i32 addrspace(3)* %275, align 4, !tbaa !34
  br label %276

; <label>:276                                     ; preds = %274, %272
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = icmp eq i32 %239, 32
  br i1 %277, label %278, label %283, !dx.controlflow.hints !42

; <label>:278                                     ; preds = %276
  %279 = xor i32 %240, 1
  %280 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %279
  %281 = load i32, i32 addrspace(3)* %280, align 4, !tbaa !34
  %282 = call i32 @dx.op.binary.i32(i32 39, i32 %271, i32 %281)  ; UMax(a,b)
  br label %298

; <label>:283                                     ; preds = %276
  %284 = icmp eq i32 %239, 16
  br i1 %284, label %285, label %298, !dx.controlflow.hints !43

; <label>:285                                     ; preds = %283
  %286 = xor i32 %240, 3
  %287 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %286
  %288 = load i32, i32 addrspace(3)* %287, align 4, !tbaa !34
  %289 = xor i32 %240, 2
  %290 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %289
  %291 = load i32, i32 addrspace(3)* %290, align 4, !tbaa !34
  %292 = call i32 @dx.op.binary.i32(i32 39, i32 %291, i32 %288)  ; UMax(a,b)
  %293 = xor i32 %240, 1
  %294 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %293
  %295 = load i32, i32 addrspace(3)* %294, align 4, !tbaa !34
  %296 = call i32 @dx.op.binary.i32(i32 39, i32 %271, i32 %295)  ; UMax(a,b)
  %297 = call i32 @dx.op.binary.i32(i32 39, i32 %296, i32 %292)  ; UMax(a,b)
  br label %298

; <label>:298                                     ; preds = %285, %283, %278, %269
  %299 = phi i32 [ %282, %278 ], [ %297, %285 ], [ %271, %269 ], [ 0, %283 ]
  %300 = lshr i32 %270, 5
  %301 = lshr i32 %299, 5
  %302 = call i32 @dx.op.binary.i32(i32 40, i32 %301, i32 %229)  ; UMin(a,b)
  %303 = icmp ugt i32 %300, %302
  br i1 %303, label %995, label %304

; <label>:304                                     ; preds = %298
  br label %305

; <label>:305                                     ; preds = %985, %304
  %306 = phi i32 [ %992, %985 ], [ %300, %304 ]
  %307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.i32 %307, 0
  %309 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %308, i32 %306)  ; UMad(a,b,c)
  %310 = shl i32 %309, 2
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = shl i32 %306, 5
  %314 = sub nsw i32 %237, %313
  %315 = call i32 @dx.op.binary.i32(i32 37, i32 %314, i32 0)  ; IMax(a,b)
  %316 = call i32 @dx.op.binary.i32(i32 38, i32 %315, i32 31)  ; IMin(a,b)
  %317 = sub nsw i32 1, %237
  %318 = add nsw i32 %317, %238
  %319 = call i32 @dx.op.binary.i32(i32 37, i32 %318, i32 0)  ; IMax(a,b)
  %320 = call i32 @dx.op.binary.i32(i32 38, i32 %319, i32 32)  ; IMin(a,b)
  %321 = and i32 %320, 31
  %322 = shl i32 -1, %321
  %323 = xor i32 %322, -1
  %324 = and i32 %316, 31
  %325 = shl i32 %323, %324
  %326 = icmp eq i32 %320, 32
  %327 = select i1 %326, i32 -1, i32 %325
  %328 = and i32 %327, %312
  %329 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %328, i8 1)  ; WaveActiveBit(value,op)
  br i1 %242, label %356, label %330, !dx.controlflow.hints !44

; <label>:330                                     ; preds = %305
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %331 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %331, label %332, label %334, !dx.controlflow.hints !45

; <label>:332                                     ; preds = %330
  %333 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %240
  store i32 %329, i32 addrspace(3)* %333, align 4, !tbaa !34
  br label %334

; <label>:334                                     ; preds = %332, %330
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %335 = icmp eq i32 %239, 32
  br i1 %335, label %336, label %341, !dx.controlflow.hints !46

; <label>:336                                     ; preds = %334
  %337 = xor i32 %240, 1
  %338 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %337
  %339 = load i32, i32 addrspace(3)* %338, align 4, !tbaa !34
  %340 = or i32 %339, %329
  br label %356

; <label>:341                                     ; preds = %334
  %342 = icmp eq i32 %239, 16
  br i1 %342, label %343, label %356, !dx.controlflow.hints !47

; <label>:343                                     ; preds = %341
  %344 = xor i32 %240, 1
  %345 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %344
  %346 = load i32, i32 addrspace(3)* %345, align 4, !tbaa !34
  %347 = or i32 %346, %329
  %348 = xor i32 %240, 2
  %349 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %348
  %350 = load i32, i32 addrspace(3)* %349, align 4, !tbaa !34
  %351 = or i32 %347, %350
  %352 = xor i32 %240, 3
  %353 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %352
  %354 = load i32, i32 addrspace(3)* %353, align 4, !tbaa !34
  %355 = or i32 %351, %354
  br label %356

; <label>:356                                     ; preds = %343, %341, %336, %305
  %357 = phi i32 [ %340, %336 ], [ %355, %343 ], [ %329, %305 ], [ 0, %341 ]
  br i1 %242, label %358, label %360, !dx.controlflow.hints !48

; <label>:358                                     ; preds = %356
  %359 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %357)  ; WaveReadLaneFirst(value)
  br label %365

; <label>:360                                     ; preds = %356
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %361 = icmp eq i32 %21, 0
  br i1 %361, label %362, label %363, !dx.controlflow.hints !49

; <label>:362                                     ; preds = %360
  store i32 %357, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %363

; <label>:363                                     ; preds = %362, %360
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %364 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %365

; <label>:365                                     ; preds = %363, %358
  %366 = phi i32 [ %359, %358 ], [ %364, %363 ]
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %985, label %368

; <label>:368                                     ; preds = %365
  br label %369

; <label>:369                                     ; preds = %961, %368
  %370 = phi i32 [ %964, %961 ], [ 0, %368 ]
  %371 = phi i32 [ %376, %961 ], [ %366, %368 ]
  %372 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %371)  ; FirstbitLo(value)
  %373 = add i32 %372, %313
  %374 = and i32 %372, 31
  %375 = shl i32 1, %374
  %376 = xor i32 %375, %371
  %377 = mul i32 %373, 112
  %378 = add i32 %377, 16
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = extractvalue %dx.types.ResRet.f32 %379, 2
  %383 = add i32 %377, 28
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = add i32 %377, 32
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = extractvalue %dx.types.ResRet.f32 %387, 2
  %391 = add i32 %377, 44
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = add i32 %377, 48
  %395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = extractvalue %dx.types.ResRet.f32 %395, 3
  %400 = add i32 %377, 64
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = extractvalue %dx.types.ResRet.f32 %401, 3
  %406 = add i32 %377, 92
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 65535
  %410 = uitofp i32 %409 to float
  %411 = lshr i32 %408, 16
  %412 = uitofp i32 %411 to float
  %413 = and i32 %385, 65535
  %414 = and i32 %385, 50331648
  %415 = icmp eq i32 %414, 33554432
  %416 = call float @dx.op.dot3.f32(i32 55, float %388, float %389, float %390, float %388, float %389, float %390)  ; Dot3(ax,ay,az,bx,by,bz)
  %417 = fsub fast float %112, %396
  %418 = fsub fast float %113, %397
  %419 = fsub fast float %114, %398
  %420 = call float @dx.op.dot3.f32(i32 55, float %417, float %418, float %419, float %388, float %389, float %390)  ; Dot3(ax,ay,az,bx,by,bz)
  %421 = fdiv fast float %420, %416
  %422 = call float @dx.op.binary.f32(i32 35, float %421, float -1.000000e+00)  ; FMax(a,b)
  %423 = call float @dx.op.binary.f32(i32 36, float %422, float 1.000000e+00)  ; FMin(a,b)
  %424 = fmul fast float %423, %388
  %425 = fmul fast float %423, %389
  %426 = fmul fast float %423, %390
  %427 = fadd fast float %424, %396
  %428 = fadd fast float %425, %397
  %429 = fadd fast float %426, %398
  %430 = fsub fast float %427, %112
  %431 = fsub fast float %428, %113
  %432 = fsub fast float %429, %114
  %433 = call float @dx.op.dot3.f32(i32 55, float %430, float %431, float %432, float %430, float %431, float %432)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = call float @dx.op.unary.f32(i32 24, float %433)  ; Sqrt(value)
  %435 = fdiv fast float 1.000000e+00, %434
  %436 = fmul fast float %430, %435
  %437 = fmul fast float %431, %435
  %438 = fmul fast float %432, %435
  br i1 %415, label %439, label %463, !dx.controlflow.hints !50

; <label>:439                                     ; preds = %369
  %440 = fmul fast float %404, %380
  %441 = fmul fast float %404, %381
  %442 = fmul fast float %404, %382
  %443 = fsub fast float %440, %112
  %444 = fadd fast float %443, %427
  %445 = fsub fast float %441, %113
  %446 = fadd fast float %445, %428
  %447 = fsub fast float %442, %114
  %448 = fadd fast float %447, %429
  %449 = call float @dx.op.dot3.f32(i32 55, float %444, float %446, float %448, float %444, float %446, float %448)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = call float @dx.op.unary.f32(i32 25, float %449)  ; Rsqrt(value)
  %451 = fmul fast float %450, %444
  %452 = fmul fast float %450, %446
  %453 = fmul fast float %450, %448
  %454 = fsub fast float %112, %427
  %455 = fsub fast float %113, %428
  %456 = fsub fast float %114, %429
  %457 = fsub fast float -0.000000e+00, %454
  %458 = fsub fast float -0.000000e+00, %455
  %459 = fsub fast float -0.000000e+00, %456
  %460 = call float @dx.op.dot3.f32(i32 55, float %457, float %458, float %459, float %380, float %381, float %382)  ; Dot3(ax,ay,az,bx,by,bz)
  %461 = fcmp fast ogt float %460, 0.000000e+00
  %462 = uitofp i1 %461 to float
  br label %463

; <label>:463                                     ; preds = %439, %369
  %464 = phi float [ %462, %439 ], [ 1.000000e+00, %369 ]
  %465 = phi float [ %451, %439 ], [ %436, %369 ]
  %466 = phi float [ %452, %439 ], [ %437, %369 ]
  %467 = phi float [ %453, %439 ], [ %438, %369 ]
  %468 = call float @dx.op.dot3.f32(i32 55, float %380, float %381, float %382, float %465, float %466, float %467)  ; Dot3(ax,ay,az,bx,by,bz)
  %469 = fmul fast float %468, %468
  %470 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  %471 = fsub fast float 1.000000e+00, %470
  %472 = fmul fast float %471, 5.000000e-01
  %473 = fcmp fast ogt float %468, 0.000000e+00
  %474 = fsub fast float 1.000000e+00, %472
  %475 = select i1 %473, float %472, float %474
  %476 = fmul fast float %475, %412
  %477 = fadd fast float %476, %410
  %478 = fmul fast float %477, 0x3EF0001000000000
  %479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %478, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = fmul fast float %468, %402
  %482 = fadd fast float %481, %403
  %483 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  %484 = select i1 %415, float 1.000000e+00, float %483
  %485 = select i1 %415, float %483, float 1.000000e+00
  %486 = fmul fast float %434, %399
  %487 = fsub fast float 1.000000e+00, %486
  %488 = fmul fast float %487, %405
  %489 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %490 = fmul fast float %489, %485
  %491 = fmul fast float %490, 2.000000e+00
  %492 = fsub fast float 3.000000e+00, %491
  %493 = fmul fast float %480, %464
  %494 = fmul fast float %490, %490
  %495 = fmul fast float %494, %493
  %496 = fmul fast float %495, %492
  %497 = icmp ne i32 %413, 255
  %498 = call float @dx.op.binary.f32(i32 36, float %496, float %496)  ; FMin(a,b)
  %499 = call float @dx.op.binary.f32(i32 36, float %496, float %498)  ; FMin(a,b)
  %500 = fcmp fast ogt float %499, 0.000000e+00
  %501 = and i1 %497, %500
  br i1 %501, label %502, label %646, !dx.controlflow.hints !51

; <label>:502                                     ; preds = %463
  %503 = mul nuw nsw i32 %413, 176
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = add nuw nsw i32 %503, 16
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = add nuw nsw i32 %503, 32
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = add nuw nsw i32 %503, 48
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  %524 = add nuw nsw i32 %503, 64
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = extractvalue %dx.types.ResRet.f32 %525, 3
  %530 = add nuw nsw i32 %503, 80
  %531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = extractvalue %dx.types.ResRet.f32 %531, 3
  %536 = add nuw nsw i32 %503, 96
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = extractvalue %dx.types.ResRet.f32 %537, 2
  %541 = extractvalue %dx.types.ResRet.f32 %537, 3
  %542 = bitcast float %512 to i32
  %543 = fmul fast float %517, %141
  %544 = fmul fast float %517, %142
  %545 = fmul fast float %517, %143
  %546 = fadd fast float %543, %112
  %547 = fadd fast float %544, %113
  %548 = fadd fast float %545, %114
  %549 = fmul fast float %546, %520
  %550 = call float @dx.op.tertiary.f32(i32 46, float %547, float %526, float %549)  ; FMad(a,b,c)
  %551 = call float @dx.op.tertiary.f32(i32 46, float %548, float %532, float %550)  ; FMad(a,b,c)
  %552 = fadd fast float %551, %538
  %553 = fmul fast float %546, %521
  %554 = call float @dx.op.tertiary.f32(i32 46, float %547, float %527, float %553)  ; FMad(a,b,c)
  %555 = call float @dx.op.tertiary.f32(i32 46, float %548, float %533, float %554)  ; FMad(a,b,c)
  %556 = fadd fast float %555, %539
  %557 = fmul fast float %546, %522
  %558 = call float @dx.op.tertiary.f32(i32 46, float %547, float %528, float %557)  ; FMad(a,b,c)
  %559 = call float @dx.op.tertiary.f32(i32 46, float %548, float %534, float %558)  ; FMad(a,b,c)
  %560 = fadd fast float %559, %540
  %561 = fmul fast float %546, %523
  %562 = call float @dx.op.tertiary.f32(i32 46, float %547, float %529, float %561)  ; FMad(a,b,c)
  %563 = call float @dx.op.tertiary.f32(i32 46, float %548, float %535, float %562)  ; FMad(a,b,c)
  %564 = fadd fast float %563, %541
  %565 = fdiv fast float %552, %564
  %566 = fdiv fast float %556, %564
  %567 = fdiv fast float %560, %564
  %568 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %567)  ; FMax(a,b)
  %569 = fmul fast float %213, 0x401921FB60000000
  %570 = call float @dx.op.unary.f32(i32 13, float %569)  ; Sin(value)
  %571 = call float @dx.op.unary.f32(i32 12, float %569)  ; Cos(value)
  %572 = fmul fast float %571, %516
  %573 = call float @dx.op.tertiary.f32(i32 46, float %570, float %516, float 0.000000e+00)  ; FMad(a,b,c)
  %574 = fmul fast float %516, %570
  %575 = fsub fast float -0.000000e+00, %574
  %576 = call float @dx.op.tertiary.f32(i32 46, float %571, float %516, float 0.000000e+00)  ; FMad(a,b,c)
  br label %577

; <label>:577                                     ; preds = %577, %502
  %578 = phi float [ 0.000000e+00, %502 ], [ %610, %577 ]
  %579 = phi float [ 0.000000e+00, %502 ], [ %612, %577 ]
  %580 = phi i32 [ 0, %502 ], [ %613, %577 ]
  %581 = mul i32 %580, 2
  %582 = add i32 0, %581
  %583 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %582
  %584 = load float, float* %583, align 4
  %585 = mul i32 %580, 2
  %586 = add i32 1, %585
  %587 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %586
  %588 = load float, float* %587, align 4
  %589 = fmul fast float %572, %584
  %590 = call float @dx.op.tertiary.f32(i32 46, float %588, float %575, float %589)  ; FMad(a,b,c)
  %591 = fmul fast float %584, %573
  %592 = call float @dx.op.tertiary.f32(i32 46, float %588, float %576, float %591)  ; FMad(a,b,c)
  %593 = fadd fast float %590, %565
  %594 = fadd fast float %592, %566
  %595 = fmul fast float %593, %511
  %596 = fmul fast float %594, %511
  %597 = call float @dx.op.binary.f32(i32 35, float %595, float %507)  ; FMax(a,b)
  %598 = call float @dx.op.binary.f32(i32 35, float %596, float %507)  ; FMax(a,b)
  %599 = call float @dx.op.binary.f32(i32 36, float %597, float %508)  ; FMin(a,b)
  %600 = call float @dx.op.binary.f32(i32 36, float %598, float %508)  ; FMin(a,b)
  %601 = fadd fast float %599, %505
  %602 = fadd fast float %600, %506
  %603 = uitofp i32 %542 to float
  %604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %601, float %602, float %603, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = fsub fast float %605, %568
  %607 = fsub fast float %606, %515
  %608 = fcmp fast ogt float %607, 0.000000e+00
  %609 = select i1 %608, float 1.000000e+00, float 0.000000e+00
  %610 = fadd fast float %609, %578
  %611 = select i1 %608, float %607, float 0.000000e+00
  %612 = fadd fast float %611, %579
  %613 = add nuw nsw i32 %580, 1
  %614 = icmp eq i32 %613, 8
  br i1 %614, label %615, label %577

; <label>:615                                     ; preds = %577
  %616 = fdiv fast float 1.000000e+00, %610
  %617 = fmul fast float %616, %612
  %618 = fdiv fast float 1.000000e+00, %568
  %619 = fmul fast float %617, %618
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = call float @dx.op.binary.f32(i32 35, float %620, float 0.000000e+00)  ; FMax(a,b)
  %622 = fmul fast float %610, 1.250000e-01
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %624 = fmul fast float %623, 2.000000e+00
  %625 = fadd fast float %624, -1.000000e+00
  %626 = fcmp fast ogt float %625, 0.000000e+00
  %627 = fcmp fast olt float %625, 0.000000e+00
  %628 = zext i1 %626 to i32
  %629 = zext i1 %627 to i32
  %630 = sub nsw i32 %628, %629
  %631 = sitofp i32 %630 to float
  %632 = fmul fast float %631, %625
  %633 = fsub fast float 1.000000e+00, %632
  %634 = fmul fast float %633, %633
  %635 = fmul fast float %634, %633
  %636 = fsub fast float %633, %635
  %637 = fmul fast float %636, %621
  %638 = fsub fast float 1.000000e+00, %635
  %639 = fsub fast float %638, %637
  %640 = fmul fast float %631, 5.000000e-01
  %641 = fmul fast float %640, %639
  %642 = fsub fast float -5.000000e-01, %641
  %643 = fmul fast float %642, %484
  %644 = fadd fast float %643, 1.000000e+00
  %645 = fmul fast float %644, %496
  br label %646

; <label>:646                                     ; preds = %615, %463
  %647 = phi float [ %645, %615 ], [ %496, %463 ]
  %648 = call float @dx.op.binary.f32(i32 36, float %647, float %647)  ; FMin(a,b)
  %649 = call float @dx.op.binary.f32(i32 36, float %647, float %648)  ; FMin(a,b)
  %650 = fcmp fast ogt float %649, 0.000000e+00
  %651 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %436, float %437, float %438)  ; Dot3(ax,ay,az,bx,by,bz)
  %652 = fcmp fast ogt float %651, 0.000000e+00
  %653 = and i1 %650, %652
  br i1 %653, label %654, label %923, !dx.controlflow.hints !52

; <label>:654                                     ; preds = %646
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %659 = select i1 %50, float %656, float %658
  %660 = extractvalue %dx.types.CBufRet.f32 %655, 2
  %661 = extractvalue %dx.types.CBufRet.f32 %657, 2
  %662 = select i1 %50, float %660, float %661
  %663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.i32 %663, 0
  %665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.i32 %665, 0
  %667 = select i1 %50, i32 %664, i32 %666
  %668 = fcmp fast olt float %659, 5.000000e-01
  %669 = icmp eq i32 %667, 0
  %670 = or i1 %668, %669
  br i1 %670, label %918, label %671, !dx.controlflow.hints !53

; <label>:671                                     ; preds = %654
  %672 = fsub fast float %396, %112
  %673 = fsub fast float %397, %113
  %674 = fsub fast float %398, %114
  %675 = fmul fast float %672, %672
  %676 = fmul fast float %673, %673
  %677 = fadd fast float %675, %676
  %678 = fmul fast float %674, %674
  %679 = fadd fast float %677, %678
  %680 = call float @dx.op.unary.f32(i32 24, float %679)  ; Sqrt(value)
  %681 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.i32 %681, 0
  %683 = uitofp i32 %682 to float
  %684 = fmul fast float %659, %393
  %685 = fdiv fast float %684, %680
  %686 = call float @dx.op.binary.f32(i32 36, float %685, float 1.000000e+01)  ; FMin(a,b)
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 0
  %689 = extractvalue %dx.types.CBufRet.f32 %687, 1
  %690 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %691 = extractvalue %dx.types.CBufRet.f32 %687, 3
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %695 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %696 = extractvalue %dx.types.CBufRet.f32 %692, 3
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 0
  %699 = extractvalue %dx.types.CBufRet.f32 %697, 1
  %700 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %701 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 0
  %704 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %705 = extractvalue %dx.types.CBufRet.f32 %702, 2
  %706 = extractvalue %dx.types.CBufRet.f32 %702, 3
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %710 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %711 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %714 = extractvalue %dx.types.CBufRet.f32 %712, 1
  %715 = extractvalue %dx.types.CBufRet.f32 %712, 2
  %716 = extractvalue %dx.types.CBufRet.f32 %712, 3
  %717 = select i1 %50, float %688, float %703
  %718 = select i1 %50, float %693, float %708
  %719 = select i1 %50, float %698, float %713
  %720 = select i1 %50, float %689, float %704
  %721 = select i1 %50, float %694, float %709
  %722 = select i1 %50, float %699, float %714
  %723 = select i1 %50, float %690, float %705
  %724 = select i1 %50, float %695, float %710
  %725 = select i1 %50, float %700, float %715
  %726 = select i1 %50, float %691, float %706
  %727 = select i1 %50, float %696, float %711
  %728 = select i1 %50, float %701, float %716
  %729 = fmul fast float %214, 0x401061CAC0000000
  %730 = fmul fast float %214, 0x4023E1D7E0000000
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %734 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %735 = extractvalue %dx.types.CBufRet.f32 %731, 3
  %736 = fsub fast float -0.000000e+00, %436
  %737 = fmul fast float %438, %736
  %738 = fmul fast float %436, %736
  %739 = fmul fast float %437, %437
  %740 = fsub fast float %738, %739
  %741 = fdiv fast float 1.000000e+00, %57
  %742 = fmul fast float %734, %46
  %743 = fmul fast float %735, %47
  %744 = fmul fast float %659, %436
  %745 = fmul fast float %659, %438
  %746 = fadd fast float %744, %112
  %747 = fadd fast float %745, %114
  %748 = fadd fast float %730, 5.000000e-01
  %749 = call float @dx.op.unary.f32(i32 22, float %748)  ; Frc(value)
  %750 = bitcast float %749 to i32
  %751 = ashr i32 %750, 1
  %752 = add nsw i32 %751, 532487669
  %753 = bitcast i32 %752 to float
  %754 = fmul fast float %753, %686
  %755 = fadd fast float %729, 5.000000e-01
  %756 = call float @dx.op.unary.f32(i32 22, float %755)  ; Frc(value)
  %757 = fmul fast float %756, 0x401921FB60000000
  %758 = call float @dx.op.unary.f32(i32 12, float %757)  ; Cos(value)
  %759 = fmul fast float %758, %758
  %760 = fsub fast float 1.000000e+00, %759
  %761 = bitcast float %760 to i32
  %762 = ashr i32 %761, 1
  %763 = add nsw i32 %762, 532487669
  %764 = bitcast i32 %763 to float
  %765 = fmul fast float %754, %758
  %766 = fmul fast float %765, %437
  %767 = fmul fast float %765, %736
  %768 = fadd fast float %746, %766
  %769 = fmul fast float %764, %754
  %770 = fmul fast float %737, %769
  %771 = fmul fast float %769, %438
  %772 = fmul fast float %769, %740
  %773 = fsub fast float %768, %770
  %774 = fadd fast float %771, %659
  %775 = fmul fast float %774, %437
  %776 = fadd fast float %767, %113
  %777 = fadd fast float %776, %775
  %778 = fadd fast float %747, %772
  %779 = fmul fast float %773, %717
  %780 = call float @dx.op.tertiary.f32(i32 46, float %777, float %720, float %779)  ; FMad(a,b,c)
  %781 = call float @dx.op.tertiary.f32(i32 46, float %778, float %723, float %780)  ; FMad(a,b,c)
  %782 = fadd fast float %781, %726
  %783 = fmul fast float %773, %718
  %784 = call float @dx.op.tertiary.f32(i32 46, float %777, float %721, float %783)  ; FMad(a,b,c)
  %785 = call float @dx.op.tertiary.f32(i32 46, float %778, float %724, float %784)  ; FMad(a,b,c)
  %786 = fadd fast float %785, %727
  %787 = fmul fast float %773, %719
  %788 = call float @dx.op.tertiary.f32(i32 46, float %777, float %722, float %787)  ; FMad(a,b,c)
  %789 = call float @dx.op.tertiary.f32(i32 46, float %778, float %725, float %788)  ; FMad(a,b,c)
  %790 = fadd fast float %789, %728
  %791 = fdiv fast float 1.000000e+00, %790
  %792 = fmul fast float %782, 5.000000e-01
  %793 = fmul fast float %786, -5.000000e-01
  %794 = fmul fast float %792, %791
  %795 = fmul fast float %793, %791
  %796 = fsub fast float 5.000000e-01, %742
  %797 = fadd fast float %796, %794
  %798 = fsub fast float 5.000000e-01, %743
  %799 = fadd fast float %798, %795
  %800 = fsub fast float %791, %741
  %801 = call float @dx.op.dot2.f32(i32 54, float %797, float %799, float %797, float %799)  ; Dot2(ax,ay,bx,by)
  %802 = call float @dx.op.binary.f32(i32 35, float %801, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %803 = call float @dx.op.dot2.f32(i32 54, float %732, float %733, float %732, float %733)  ; Dot2(ax,ay,bx,by)
  %804 = fmul fast float %803, %802
  %805 = call float @dx.op.unary.f32(i32 25, float %804)  ; Rsqrt(value)
  %806 = fmul fast float %805, %797
  %807 = fmul fast float %805, %799
  %808 = fadd fast float %806, %742
  %809 = fadd fast float %807, %743
  %810 = fmul fast float %797, %732
  %811 = fmul fast float %799, %733
  %812 = fmul fast float %810, %810
  %813 = fmul fast float %811, %811
  %814 = fadd fast float %812, %813
  %815 = call float @dx.op.unary.f32(i32 24, float %814)  ; Sqrt(value)
  %816 = fdiv fast float 1.000000e+00, %815
  %817 = fmul fast float %815, 3.906250e-03
  %818 = fmul fast float %200, 0x3F70624DE0000000
  %819 = fadd fast float %818, 0x3F70624DE0000000
  %820 = icmp sgt i32 %667, -1
  br i1 %820, label %821, label %883

; <label>:821                                     ; preds = %671
  br label %822

; <label>:822                                     ; preds = %879, %821
  %823 = phi float [ %854, %879 ], [ %57, %821 ]
  %824 = phi float [ %841, %879 ], [ %57, %821 ]
  %825 = phi float [ %824, %879 ], [ %57, %821 ]
  %826 = phi i32 [ %880, %879 ], [ 0, %821 ]
  %827 = sitofp i32 %826 to float
  %828 = fadd fast float %214, 5.000000e-01
  %829 = call float @dx.op.unary.f32(i32 22, float %828)  ; Frc(value)
  %830 = fadd fast float %827, %829
  %831 = sitofp i32 %667 to float
  %832 = fdiv fast float %830, %831
  %833 = fmul fast float %832, %832
  %834 = call float @dx.op.binary.f32(i32 36, float %833, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %835 = fmul fast float %834, %797
  %836 = fmul fast float %834, %799
  %837 = fmul fast float %834, %800
  %838 = fadd fast float %835, %808
  %839 = fadd fast float %836, %809
  %840 = fadd fast float %837, %741
  %841 = fdiv fast float 1.000000e+00, %840
  %842 = icmp ne i32 %682, 0
  %843 = fmul fast float %817, %834
  %844 = call float @dx.op.binary.f32(i32 36, float %843, float %683)  ; FMin(a,b)
  %845 = select i1 %842, float %844, float 0.000000e+00
  %846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %838, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float %845)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = fcmp fast ogt float %847, -1.000000e+00
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %851 = select i1 %848, float %850, float 1.000000e+00
  %852 = fadd fast float %847, 1.000000e+00
  %853 = fmul fast float %851, %852
  %854 = call float @dx.op.unary.f32(i32 6, float %853)  ; FAbs(value)
  %855 = fmul fast float %854, %819
  %856 = fsub fast float %841, %854
  %857 = fsub fast float %856, %855
  %858 = fcmp fast ogt float %857, 0.000000e+00
  %859 = fcmp fast ogt float %662, 0.000000e+00
  br i1 %859, label %860, label %863, !dx.controlflow.hints !54

; <label>:860                                     ; preds = %822
  %861 = fsub fast float %841, %825
  %862 = call float @dx.op.binary.f32(i32 35, float %861, float %662)  ; FMax(a,b)
  br label %863

; <label>:863                                     ; preds = %860, %822
  %864 = phi float [ %862, %860 ], [ %659, %822 ]
  %865 = fcmp fast olt float %857, %864
  %866 = fcmp uge float %847, -1.000000e+00
  %867 = or i1 %50, %866
  %868 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %869 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %870 = fcmp fast oeq float %838, %868
  %871 = fcmp fast oeq float %839, %869
  %872 = and i1 %870, %871
  %873 = and i1 %867, %872
  %874 = and i1 %858, %865
  %875 = and i1 %874, %873
  %876 = fcmp fast ogt float %834, %816
  %877 = and i1 %876, %875
  %878 = zext i1 %877 to i32
  br i1 %877, label %882, label %879, !dx.controlflow.hints !55

; <label>:879                                     ; preds = %863
  %880 = add nuw nsw i32 %826, 1
  %881 = icmp slt i32 %826, %667
  br i1 %881, label %822, label %882

; <label>:882                                     ; preds = %879, %863
  br label %883

; <label>:883                                     ; preds = %882, %671
  %884 = phi i32 [ 0, %671 ], [ %878, %882 ]
  %885 = phi float [ %57, %671 ], [ %854, %882 ]
  %886 = phi float [ %57, %671 ], [ %823, %882 ]
  %887 = phi float [ %57, %671 ], [ %841, %882 ]
  %888 = phi float [ %57, %671 ], [ %824, %882 ]
  %889 = fsub fast float %888, %886
  %890 = fsub fast float %887, %885
  %891 = fsub fast float %889, %890
  %892 = fcmp fast une float %891, 0.000000e+00
  %893 = fmul fast float %889, %887
  %894 = fmul fast float %888, %890
  %895 = fsub fast float %893, %894
  %896 = fdiv fast float 1.000000e+00, %891
  %897 = fmul fast float %895, %896
  %898 = select i1 %892, float %897, float %887
  %899 = fdiv fast float 1.000000e+00, %898
  %900 = fsub fast float %899, %741
  %901 = fdiv fast float %900, %800
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fmul fast float %902, %797
  %904 = fmul fast float %902, %799
  %905 = fadd fast float %903, %808
  %906 = fadd fast float %904, %809
  %907 = fadd fast float %905, -5.000000e-01
  %908 = fadd fast float %906, -5.000000e-01
  %909 = call float @dx.op.unary.f32(i32 6, float %907)  ; FAbs(value)
  %910 = call float @dx.op.unary.f32(i32 6, float %908)  ; FAbs(value)
  %911 = fadd fast float %909, -5.000000e-01
  %912 = fadd fast float %910, -5.000000e-01
  %913 = call float @dx.op.binary.f32(i32 35, float %911, float %912)  ; FMax(a,b)
  %914 = fcmp fast olt float %913, 0.000000e+00
  %915 = icmp ne i32 %884, 0
  %916 = and i1 %915, %914
  %917 = select i1 %916, float 0.000000e+00, float 1.000000e+00
  br label %918

; <label>:918                                     ; preds = %883, %654
  %919 = phi float [ %917, %883 ], [ 1.000000e+00, %654 ]
  %920 = fmul fast float %919, %647
  %921 = fmul fast float %919, %647
  %922 = fmul fast float %919, %647
  br label %923

; <label>:923                                     ; preds = %918, %646
  %924 = phi float [ %920, %918 ], [ %647, %646 ]
  %925 = phi float [ %921, %918 ], [ %647, %646 ]
  %926 = phi float [ %922, %918 ], [ %647, %646 ]
  %927 = call float @dx.op.binary.f32(i32 36, float %925, float %926)  ; FMin(a,b)
  %928 = call float @dx.op.binary.f32(i32 36, float %924, float %927)  ; FMin(a,b)
  %929 = fcmp fast ogt float %928, 0x3F10000000000000
  %930 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %929)  ; WaveAnyTrue(cond)
  %931 = icmp ugt i32 %239, 63
  br i1 %931, label %961, label %932, !dx.controlflow.hints !56

; <label>:932                                     ; preds = %923
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %933 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %933, label %934, label %937, !dx.controlflow.hints !57

; <label>:934                                     ; preds = %932
  %935 = zext i1 %930 to i32
  %936 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %240
  store i32 %935, i32 addrspace(3)* %936, align 4, !tbaa !34
  br label %937

; <label>:937                                     ; preds = %934, %932
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %938 = icmp eq i32 %239, 32
  br i1 %938, label %939, label %945, !dx.controlflow.hints !58

; <label>:939                                     ; preds = %937
  %940 = xor i32 %240, 1
  %941 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %940
  %942 = load i32, i32 addrspace(3)* %941, align 4, !tbaa !34
  %943 = icmp ne i32 %942, 0
  %944 = or i1 %930, %943
  br label %961

; <label>:945                                     ; preds = %937
  %946 = icmp eq i32 %239, 16
  br i1 %946, label %947, label %961, !dx.controlflow.hints !59

; <label>:947                                     ; preds = %945
  %948 = xor i32 %240, 1
  %949 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %948
  %950 = load i32, i32 addrspace(3)* %949, align 4, !tbaa !34
  %951 = xor i32 %240, 2
  %952 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %951
  %953 = load i32, i32 addrspace(3)* %952, align 4, !tbaa !34
  %954 = or i32 %953, %950
  %955 = xor i32 %240, 3
  %956 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %955
  %957 = load i32, i32 addrspace(3)* %956, align 4, !tbaa !34
  %958 = or i32 %954, %957
  %959 = icmp ne i32 %958, 0
  %960 = or i1 %930, %959
  br label %961

; <label>:961                                     ; preds = %947, %945, %939, %923
  %962 = phi i1 [ %944, %939 ], [ %960, %947 ], [ %930, %923 ], [ false, %945 ]
  %963 = select i1 %962, i32 %375, i32 0
  %964 = or i32 %370, %963
  %965 = lshr i32 %219, 5
  %966 = lshr i32 %220, 5
  %967 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %965, i32 %966, i32 %373, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = lshr i32 %968, 23
  %970 = and i32 %969, 255
  %971 = and i32 %219, 31
  %972 = and i32 %220, 31
  %973 = lshr i32 %968, 1
  %974 = and i32 %973, 16352
  %975 = lshr i32 %968, 10
  %976 = and i32 %975, 8160
  %977 = or i32 %974, %971
  %978 = or i32 %976, %972
  %979 = fmul fast float %924, 2.550000e+02
  %980 = fadd fast float %979, %213
  %981 = call float @dx.op.unary.f32(i32 27, float %980)  ; Round_ni(value)
  %982 = fmul fast float %981, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %977, i32 %978, i32 %970, float %982, float %982, float %982, float %982, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %983 = icmp eq i32 %371, %375
  br i1 %983, label %984, label %369, !llvm.loop !60

; <label>:984                                     ; preds = %961
  br label %985

; <label>:985                                     ; preds = %984, %365
  %986 = phi i32 [ 0, %365 ], [ %964, %984 ]
  %987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.i32 %987, 0
  %989 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %988, i32 %306)  ; UMad(a,b,c)
  %990 = shl i32 %989, 2
  %991 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %990, i32 undef, i32 undef, i32 %986)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %992 = add i32 %306, 1
  %993 = icmp ugt i32 %992, %302
  br i1 %993, label %994, label %305

; <label>:994                                     ; preds = %985
  br label %995

; <label>:995                                     ; preds = %994, %298, %0
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

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
!29 = !{i32 0, i64 524560, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
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
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}

