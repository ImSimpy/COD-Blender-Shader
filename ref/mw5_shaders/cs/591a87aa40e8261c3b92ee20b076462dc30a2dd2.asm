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
; shader hash: ff7d0a9737ebde1766465f4e4523dfed
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
  %61 = fmul fast float %59, 2.000000e+00
  %62 = fmul fast float %61, %46
  %63 = fmul fast float %60, 2.000000e+00
  %64 = fmul fast float %63, %47
  %65 = fsub fast float 1.000000e+00, %62
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
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = fmul fast float %145, 0x3FE3C6EF40000000
  %147 = frem fast float %46, 2.560000e+02
  %148 = frem fast float %47, 2.560000e+02
  %149 = fptoui float %147 to i32
  %150 = fptoui float %148 to i32
  %151 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %149, i32 %150, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fadd fast float %152, %146
  %154 = call float @dx.op.unary.f32(i32 22, float %153)  ; Frc(value)
  %155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.i32 %155, 0
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %535, label %158, !dx.controlflow.hints !31

; <label>:158                                     ; preds = %0
  %159 = fptoui float %46 to i32
  %160 = fptoui float %47 to i32
  %161 = lshr i32 %159, 4
  %162 = lshr i32 %160, 4
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 0
  %165 = call i32 @dx.op.tertiary.i32(i32 49, i32 %162, i32 %164, i32 %161)  ; UMad(a,b,c)
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 0
  %168 = add nsw i32 %167, -1
  %169 = call i32 @dx.op.binary.i32(i32 37, i32 %168, i32 0)  ; IMax(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %171 = fptoui float %170 to i32
  %172 = lshr i32 %171, 5
  %173 = call i32 @dx.op.binary.i32(i32 40, i32 %172, i32 8191)  ; UMin(a,b)
  %174 = shl i32 %173, 2
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = lshr i32 %176, 16
  %178 = and i32 %176, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %179 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %177 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %180 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %181 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %178 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %182 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  %183 = lshr i32 %180, 5
  %184 = lshr i32 %182, 5
  %185 = call i32 @dx.op.binary.i32(i32 40, i32 %184, i32 %169)  ; UMin(a,b)
  %186 = icmp ugt i32 %183, %185
  br i1 %186, label %535, label %187

; <label>:187                                     ; preds = %158
  br label %188

; <label>:188                                     ; preds = %525, %187
  %189 = phi i32 [ %532, %525 ], [ %183, %187 ]
  %190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.i32 %190, 0
  %192 = call i32 @dx.op.tertiary.i32(i32 49, i32 %165, i32 %191, i32 %189)  ; UMad(a,b,c)
  %193 = shl i32 %192, 2
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = shl i32 %189, 5
  %197 = sub nsw i32 %177, %196
  %198 = call i32 @dx.op.binary.i32(i32 37, i32 %197, i32 0)  ; IMax(a,b)
  %199 = call i32 @dx.op.binary.i32(i32 38, i32 %198, i32 31)  ; IMin(a,b)
  %200 = sub nsw i32 1, %177
  %201 = add nsw i32 %200, %178
  %202 = call i32 @dx.op.binary.i32(i32 37, i32 %201, i32 0)  ; IMax(a,b)
  %203 = call i32 @dx.op.binary.i32(i32 38, i32 %202, i32 32)  ; IMin(a,b)
  %204 = and i32 %203, 31
  %205 = shl i32 -1, %204
  %206 = xor i32 %205, -1
  %207 = and i32 %199, 31
  %208 = shl i32 %206, %207
  %209 = icmp eq i32 %203, 32
  %210 = select i1 %209, i32 -1, i32 %208
  %211 = and i32 %210, %195
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %212 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %211 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %213 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = icmp eq i32 %21, 0
  br i1 %214, label %215, label %216, !dx.controlflow.hints !36

; <label>:215                                     ; preds = %188
  store i32 %213, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  br label %216

; <label>:216                                     ; preds = %215, %188
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %525, label %219

; <label>:219                                     ; preds = %216
  br label %220

; <label>:220                                     ; preds = %494, %219
  %221 = phi i32 [ %504, %494 ], [ 0, %219 ]
  %222 = phi i32 [ %227, %494 ], [ %217, %219 ]
  %223 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %222)  ; FirstbitLo(value)
  %224 = add i32 %223, %196
  %225 = and i32 %223, 31
  %226 = shl i32 1, %225
  %227 = xor i32 %226, %222
  %228 = mul i32 %224, 112
  %229 = add i32 %228, 16
  %230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = extractvalue %dx.types.ResRet.f32 %230, 1
  %233 = extractvalue %dx.types.ResRet.f32 %230, 2
  %234 = add i32 %228, 28
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = add i32 %228, 32
  %238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = add i32 %228, 48
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = extractvalue %dx.types.ResRet.f32 %243, 3
  %248 = add i32 %228, 64
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = extractvalue %dx.types.ResRet.f32 %249, 1
  %252 = extractvalue %dx.types.ResRet.f32 %249, 2
  %253 = extractvalue %dx.types.ResRet.f32 %249, 3
  %254 = add i32 %228, 92
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = uitofp i32 %257 to float
  %259 = lshr i32 %256, 16
  %260 = uitofp i32 %259 to float
  %261 = and i32 %236, 65535
  %262 = and i32 %236, 50331648
  %263 = icmp eq i32 %262, 33554432
  %264 = call float @dx.op.dot3.f32(i32 55, float %239, float %240, float %241, float %239, float %240, float %241)  ; Dot3(ax,ay,az,bx,by,bz)
  %265 = fsub fast float %112, %244
  %266 = fsub fast float %113, %245
  %267 = fsub fast float %114, %246
  %268 = call float @dx.op.dot3.f32(i32 55, float %265, float %266, float %267, float %239, float %240, float %241)  ; Dot3(ax,ay,az,bx,by,bz)
  %269 = fdiv fast float %268, %264
  %270 = call float @dx.op.binary.f32(i32 35, float %269, float -1.000000e+00)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 36, float %270, float 1.000000e+00)  ; FMin(a,b)
  %272 = fmul fast float %271, %239
  %273 = fmul fast float %271, %240
  %274 = fmul fast float %271, %241
  %275 = fadd fast float %272, %244
  %276 = fadd fast float %273, %245
  %277 = fadd fast float %274, %246
  %278 = fsub fast float %275, %112
  %279 = fsub fast float %276, %113
  %280 = fsub fast float %277, %114
  %281 = call float @dx.op.dot3.f32(i32 55, float %278, float %279, float %280, float %278, float %279, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %282 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %283 = fdiv fast float 1.000000e+00, %282
  %284 = fmul fast float %278, %283
  %285 = fmul fast float %279, %283
  %286 = fmul fast float %280, %283
  br i1 %263, label %287, label %311, !dx.controlflow.hints !37

; <label>:287                                     ; preds = %220
  %288 = fmul fast float %252, %231
  %289 = fmul fast float %252, %232
  %290 = fmul fast float %252, %233
  %291 = fsub fast float %288, %112
  %292 = fadd fast float %291, %275
  %293 = fsub fast float %289, %113
  %294 = fadd fast float %293, %276
  %295 = fsub fast float %290, %114
  %296 = fadd fast float %295, %277
  %297 = call float @dx.op.dot3.f32(i32 55, float %292, float %294, float %296, float %292, float %294, float %296)  ; Dot3(ax,ay,az,bx,by,bz)
  %298 = call float @dx.op.unary.f32(i32 25, float %297)  ; Rsqrt(value)
  %299 = fmul fast float %298, %292
  %300 = fmul fast float %298, %294
  %301 = fmul fast float %298, %296
  %302 = fsub fast float %112, %275
  %303 = fsub fast float %113, %276
  %304 = fsub fast float %114, %277
  %305 = fsub fast float -0.000000e+00, %302
  %306 = fsub fast float -0.000000e+00, %303
  %307 = fsub fast float -0.000000e+00, %304
  %308 = call float @dx.op.dot3.f32(i32 55, float %305, float %306, float %307, float %231, float %232, float %233)  ; Dot3(ax,ay,az,bx,by,bz)
  %309 = fcmp fast ogt float %308, 0.000000e+00
  %310 = uitofp i1 %309 to float
  br label %311

; <label>:311                                     ; preds = %287, %220
  %312 = phi float [ %310, %287 ], [ 1.000000e+00, %220 ]
  %313 = phi float [ %299, %287 ], [ %284, %220 ]
  %314 = phi float [ %300, %287 ], [ %285, %220 ]
  %315 = phi float [ %301, %287 ], [ %286, %220 ]
  %316 = call float @dx.op.dot3.f32(i32 55, float %231, float %232, float %233, float %313, float %314, float %315)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fmul fast float %316, %316
  %318 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %319 = fsub fast float 1.000000e+00, %318
  %320 = fmul fast float %319, 5.000000e-01
  %321 = fcmp fast ogt float %316, 0.000000e+00
  %322 = fsub fast float 1.000000e+00, %320
  %323 = select i1 %321, float %320, float %322
  %324 = fmul fast float %323, %260
  %325 = fadd fast float %324, %258
  %326 = fmul fast float %325, 0x3EF0001000000000
  %327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %326, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = fmul fast float %316, %250
  %330 = fadd fast float %329, %251
  %331 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %332 = select i1 %263, float 1.000000e+00, float %331
  %333 = select i1 %263, float %331, float 1.000000e+00
  %334 = fmul fast float %282, %247
  %335 = fsub fast float 1.000000e+00, %334
  %336 = fmul fast float %335, %253
  %337 = call float @dx.op.unary.f32(i32 7, float %336)  ; Saturate(value)
  %338 = fmul fast float %337, %333
  %339 = fmul fast float %338, 2.000000e+00
  %340 = fsub fast float 3.000000e+00, %339
  %341 = fmul fast float %328, %312
  %342 = fmul fast float %338, %338
  %343 = fmul fast float %342, %341
  %344 = fmul fast float %343, %340
  %345 = icmp ne i32 %261, 255
  %346 = call float @dx.op.binary.f32(i32 36, float %344, float %344)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 36, float %344, float %346)  ; FMin(a,b)
  %348 = fcmp fast ogt float %347, 0.000000e+00
  %349 = and i1 %345, %348
  br i1 %349, label %350, label %494, !dx.controlflow.hints !38

; <label>:350                                     ; preds = %311
  %351 = mul nuw nsw i32 %261, 176
  %352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = extractvalue %dx.types.ResRet.f32 %352, 2
  %356 = extractvalue %dx.types.ResRet.f32 %352, 3
  %357 = add nuw nsw i32 %351, 16
  %358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = add nuw nsw i32 %351, 32
  %362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = extractvalue %dx.types.ResRet.f32 %362, 1
  %365 = extractvalue %dx.types.ResRet.f32 %362, 2
  %366 = add nuw nsw i32 %351, 48
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  %371 = extractvalue %dx.types.ResRet.f32 %367, 3
  %372 = add nuw nsw i32 %351, 64
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = extractvalue %dx.types.ResRet.f32 %373, 1
  %376 = extractvalue %dx.types.ResRet.f32 %373, 2
  %377 = extractvalue %dx.types.ResRet.f32 %373, 3
  %378 = add nuw nsw i32 %351, 80
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = extractvalue %dx.types.ResRet.f32 %379, 2
  %383 = extractvalue %dx.types.ResRet.f32 %379, 3
  %384 = add nuw nsw i32 %351, 96
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  %390 = bitcast float %360 to i32
  %391 = fmul fast float %141, %365
  %392 = fmul fast float %142, %365
  %393 = fmul fast float %143, %365
  %394 = fadd fast float %391, %112
  %395 = fadd fast float %392, %113
  %396 = fadd fast float %393, %114
  %397 = fmul fast float %394, %368
  %398 = call float @dx.op.tertiary.f32(i32 46, float %395, float %374, float %397)  ; FMad(a,b,c)
  %399 = call float @dx.op.tertiary.f32(i32 46, float %396, float %380, float %398)  ; FMad(a,b,c)
  %400 = fadd fast float %399, %386
  %401 = fmul fast float %394, %369
  %402 = call float @dx.op.tertiary.f32(i32 46, float %395, float %375, float %401)  ; FMad(a,b,c)
  %403 = call float @dx.op.tertiary.f32(i32 46, float %396, float %381, float %402)  ; FMad(a,b,c)
  %404 = fadd fast float %403, %387
  %405 = fmul fast float %394, %370
  %406 = call float @dx.op.tertiary.f32(i32 46, float %395, float %376, float %405)  ; FMad(a,b,c)
  %407 = call float @dx.op.tertiary.f32(i32 46, float %396, float %382, float %406)  ; FMad(a,b,c)
  %408 = fadd fast float %407, %388
  %409 = fmul fast float %394, %371
  %410 = call float @dx.op.tertiary.f32(i32 46, float %395, float %377, float %409)  ; FMad(a,b,c)
  %411 = call float @dx.op.tertiary.f32(i32 46, float %396, float %383, float %410)  ; FMad(a,b,c)
  %412 = fadd fast float %411, %389
  %413 = fdiv fast float %400, %412
  %414 = fdiv fast float %404, %412
  %415 = fdiv fast float %408, %412
  %416 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %415)  ; FMax(a,b)
  %417 = fmul fast float %154, 0x401921FB60000000
  %418 = call float @dx.op.unary.f32(i32 13, float %417)  ; Sin(value)
  %419 = call float @dx.op.unary.f32(i32 12, float %417)  ; Cos(value)
  %420 = fmul fast float %419, %364
  %421 = call float @dx.op.tertiary.f32(i32 46, float %418, float %364, float 0.000000e+00)  ; FMad(a,b,c)
  %422 = fmul fast float %364, %418
  %423 = fsub fast float -0.000000e+00, %422
  %424 = call float @dx.op.tertiary.f32(i32 46, float %419, float %364, float 0.000000e+00)  ; FMad(a,b,c)
  br label %425

; <label>:425                                     ; preds = %425, %350
  %426 = phi float [ 0.000000e+00, %350 ], [ %458, %425 ]
  %427 = phi float [ 0.000000e+00, %350 ], [ %460, %425 ]
  %428 = phi i32 [ 0, %350 ], [ %461, %425 ]
  %429 = mul i32 %428, 2
  %430 = add i32 0, %429
  %431 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %430
  %432 = load float, float* %431, align 4
  %433 = mul i32 %428, 2
  %434 = add i32 1, %433
  %435 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %434
  %436 = load float, float* %435, align 4
  %437 = fmul fast float %420, %432
  %438 = call float @dx.op.tertiary.f32(i32 46, float %436, float %423, float %437)  ; FMad(a,b,c)
  %439 = fmul fast float %432, %421
  %440 = call float @dx.op.tertiary.f32(i32 46, float %436, float %424, float %439)  ; FMad(a,b,c)
  %441 = fadd fast float %438, %413
  %442 = fadd fast float %440, %414
  %443 = fmul fast float %441, %359
  %444 = fmul fast float %442, %359
  %445 = call float @dx.op.binary.f32(i32 35, float %443, float %355)  ; FMax(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %444, float %355)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float %445, float %356)  ; FMin(a,b)
  %448 = call float @dx.op.binary.f32(i32 36, float %446, float %356)  ; FMin(a,b)
  %449 = fadd fast float %447, %353
  %450 = fadd fast float %448, %354
  %451 = uitofp i32 %390 to float
  %452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %449, float %450, float %451, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = fsub fast float %453, %416
  %455 = fsub fast float %454, %363
  %456 = fcmp fast ogt float %455, 0.000000e+00
  %457 = select i1 %456, float 1.000000e+00, float 0.000000e+00
  %458 = fadd fast float %457, %426
  %459 = select i1 %456, float %455, float 0.000000e+00
  %460 = fadd fast float %459, %427
  %461 = add nuw nsw i32 %428, 1
  %462 = icmp eq i32 %461, 8
  br i1 %462, label %463, label %425

; <label>:463                                     ; preds = %425
  %464 = fdiv fast float 1.000000e+00, %458
  %465 = fmul fast float %464, %460
  %466 = fdiv fast float 1.000000e+00, %416
  %467 = fmul fast float %465, %466
  %468 = call float @dx.op.unary.f32(i32 7, float %467)  ; Saturate(value)
  %469 = call float @dx.op.binary.f32(i32 35, float %468, float 0.000000e+00)  ; FMax(a,b)
  %470 = fmul fast float %458, 1.250000e-01
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fmul fast float %471, 2.000000e+00
  %473 = fadd fast float %472, -1.000000e+00
  %474 = fcmp fast ogt float %473, 0.000000e+00
  %475 = fcmp fast olt float %473, 0.000000e+00
  %476 = zext i1 %474 to i32
  %477 = zext i1 %475 to i32
  %478 = sub nsw i32 %476, %477
  %479 = sitofp i32 %478 to float
  %480 = fmul fast float %479, %473
  %481 = fsub fast float 1.000000e+00, %480
  %482 = fmul fast float %481, %481
  %483 = fmul fast float %482, %481
  %484 = fsub fast float %481, %483
  %485 = fmul fast float %484, %469
  %486 = fsub fast float 1.000000e+00, %483
  %487 = fsub fast float %486, %485
  %488 = fmul fast float %479, 5.000000e-01
  %489 = fmul fast float %488, %487
  %490 = fsub fast float -5.000000e-01, %489
  %491 = fmul fast float %490, %332
  %492 = fadd fast float %491, 1.000000e+00
  %493 = fmul fast float %492, %344
  br label %494

; <label>:494                                     ; preds = %463, %311
  %495 = phi float [ %493, %463 ], [ %344, %311 ]
  %496 = call float @dx.op.binary.f32(i32 36, float %495, float %495)  ; FMin(a,b)
  %497 = call float @dx.op.binary.f32(i32 36, float %495, float %496)  ; FMin(a,b)
  %498 = fcmp fast ogt float %497, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %499 = zext i1 %498 to i32
  %500 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %499 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %501 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !32
  %502 = icmp eq i32 %501, 0
  %503 = select i1 %502, i32 0, i32 %226
  %504 = or i32 %221, %503
  %505 = lshr i32 %159, 5
  %506 = lshr i32 %160, 5
  %507 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %505, i32 %506, i32 %224, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = lshr i32 %508, 23
  %510 = and i32 %509, 255
  %511 = and i32 %159, 31
  %512 = and i32 %160, 31
  %513 = lshr i32 %508, 1
  %514 = and i32 %513, 16352
  %515 = lshr i32 %508, 10
  %516 = and i32 %515, 8160
  %517 = or i32 %514, %511
  %518 = or i32 %516, %512
  %519 = fmul fast float %495, 2.550000e+02
  %520 = fadd fast float %519, %154
  %521 = call float @dx.op.unary.f32(i32 27, float %520)  ; Round_ni(value)
  %522 = fmul fast float %521, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %517, i32 %518, i32 %510, float %522, float %522, float %522, float %522, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %523 = icmp eq i32 %222, %226
  br i1 %523, label %524, label %220, !llvm.loop !39

; <label>:524                                     ; preds = %494
  br label %525

; <label>:525                                     ; preds = %524, %216
  %526 = phi i32 [ 0, %216 ], [ %504, %524 ]
  %527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.i32 %527, 0
  %529 = call i32 @dx.op.tertiary.i32(i32 49, i32 %165, i32 %528, i32 %189)  ; UMad(a,b,c)
  %530 = shl i32 %529, 2
  %531 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %530, i32 undef, i32 undef, i32 %526)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %532 = add i32 %189, 1
  %533 = icmp ugt i32 %532, %185
  br i1 %533, label %534, label %188

; <label>:534                                     ; preds = %525
  br label %535

; <label>:535                                     ; preds = %534, %158, %0
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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}

