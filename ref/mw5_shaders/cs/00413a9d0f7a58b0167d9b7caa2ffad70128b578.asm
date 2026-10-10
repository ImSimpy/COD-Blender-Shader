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
; shader hash: 07e2f72da69f9c3b68de69ed808ce29d
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
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 1
  %25 = shl i32 %22, 3
  %26 = mul i32 %25, %24
  %27 = add i32 %26, %18
  %28 = shl i32 %27, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = lshr i32 %30, 25
  %32 = and i32 %31, 8
  %33 = lshr i32 %30, 27
  %34 = and i32 %33, 12
  %35 = lshr i32 %30, 10
  %36 = and i32 %35, 262128
  %37 = shl i32 %30, 4
  %38 = and i32 %37, 262128
  %39 = or i32 %32, %19
  %40 = or i32 %39, %36
  %41 = or i32 %34, %20
  %42 = or i32 %41, %38
  %43 = uitofp i32 %40 to float
  %44 = uitofp i32 %42 to float
  %45 = fadd fast float %43, 5.000000e-01
  %46 = fadd fast float %44, 5.000000e-01
  %47 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %40, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = fcmp fast olt float %48, -1.000000e+00
  %50 = fcmp fast ogt float %48, -1.000000e+00
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = select i1 %50, float %52, float 1.000000e+00
  %54 = fadd fast float %48, 1.000000e+00
  %55 = fmul fast float %53, %54
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %60 = fmul fast float %45, %58
  %61 = fmul fast float %46, %59
  %62 = fmul fast float %60, 2.000000e+00
  %63 = fmul fast float %61, 2.000000e+00
  %64 = fsub fast float 1.000000e+00, %62
  %65 = fsub fast float 1.000000e+00, %63
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = select i1 %49, float %67, float %71
  %75 = select i1 %49, float %68, float %72
  %76 = select i1 %49, float %69, float %73
  %77 = fmul fast float %74, %64
  %78 = fmul fast float %75, %64
  %79 = fmul fast float %76, %64
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = select i1 %49, float %81, float %85
  %89 = select i1 %49, float %82, float %86
  %90 = select i1 %49, float %83, float %87
  %91 = fmul fast float %88, %65
  %92 = fmul fast float %89, %65
  %93 = fmul fast float %90, %65
  %94 = fadd fast float %91, %77
  %95 = fadd fast float %92, %78
  %96 = fadd fast float %93, %79
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = select i1 %49, float %98, float %102
  %106 = select i1 %49, float %99, float %103
  %107 = select i1 %49, float %100, float %104
  %108 = fadd fast float %94, %105
  %109 = fadd fast float %95, %106
  %110 = fadd fast float %96, %107
  %111 = fmul fast float %108, %56
  %112 = fmul fast float %109, %56
  %113 = fmul fast float %110, %56
  %114 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %40, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = lshr i32 %115, 8
  %117 = and i32 %115, 255
  %118 = and i32 %116, 255
  %119 = uitofp i32 %117 to float
  %120 = uitofp i32 %118 to float
  %121 = fmul fast float %119, 0x3F80101020000000
  %122 = fmul fast float %120, 0x3F80101020000000
  %123 = fadd fast float %121, -1.000000e+00
  %124 = fadd fast float %122, -1.000000e+00
  %125 = call float @dx.op.unary.f32(i32 6, float %123)  ; FAbs(value)
  %126 = fsub fast float 1.000000e+00, %125
  %127 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %128 = fsub fast float %126, %127
  %129 = fsub fast float -0.000000e+00, %128
  %130 = call float @dx.op.binary.f32(i32 35, float %129, float 0.000000e+00)  ; FMax(a,b)
  %131 = fcmp fast ogt float %123, 0.000000e+00
  %132 = fsub fast float -0.000000e+00, %130
  %133 = select i1 %131, float %132, float %130
  %134 = fadd fast float %133, %123
  %135 = fcmp fast ogt float %124, 0.000000e+00
  %136 = select i1 %135, float %132, float %130
  %137 = fadd fast float %136, %124
  %138 = call float @dx.op.dot3.f32(i32 55, float %134, float %137, float %128, float %134, float %137, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = call float @dx.op.unary.f32(i32 25, float %138)  ; Rsqrt(value)
  %140 = fmul fast float %134, %139
  %141 = fmul fast float %137, %139
  %142 = fmul fast float %139, %128
  %143 = fmul fast float %58, %43
  %144 = fmul fast float %59, %44
  %145 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %143, float %144, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = extractvalue %dx.types.ResRet.f32 %145, 1
  %148 = extractvalue %dx.types.ResRet.f32 %145, 2
  %149 = fcmp fast ogt float %146, -1.000000e+00
  %150 = select i1 %149, float %52, float 1.000000e+00
  %151 = fadd fast float %146, 1.000000e+00
  %152 = fmul fast float %150, %151
  %153 = call float @dx.op.unary.f32(i32 6, float %152)  ; FAbs(value)
  %154 = fcmp fast ogt float %147, -1.000000e+00
  %155 = select i1 %154, float %52, float 1.000000e+00
  %156 = fadd fast float %147, 1.000000e+00
  %157 = fmul fast float %155, %156
  %158 = call float @dx.op.unary.f32(i32 6, float %157)  ; FAbs(value)
  %159 = fcmp fast ogt float %148, -1.000000e+00
  %160 = select i1 %159, float %52, float 1.000000e+00
  %161 = fadd fast float %148, 1.000000e+00
  %162 = fmul fast float %160, %161
  %163 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %164 = fadd fast float %43, 1.000000e+00
  %165 = fmul fast float %58, %164
  %166 = fadd fast float %44, 1.000000e+00
  %167 = fmul fast float %59, %166
  %168 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %15, float %165, float %167, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = extractvalue %dx.types.ResRet.f32 %168, 2
  %171 = fcmp fast ogt float %169, -1.000000e+00
  %172 = select i1 %171, float %52, float 1.000000e+00
  %173 = fadd fast float %169, 1.000000e+00
  %174 = fmul fast float %172, %173
  %175 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %176 = fcmp fast ogt float %170, -1.000000e+00
  %177 = select i1 %176, float %52, float 1.000000e+00
  %178 = fadd fast float %170, 1.000000e+00
  %179 = fmul fast float %177, %178
  %180 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %181 = fsub fast float %163, %158
  %182 = fsub fast float %175, %158
  %183 = fsub fast float %153, %158
  %184 = fsub fast float %180, %158
  %185 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %186 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %187 = call float @dx.op.binary.f32(i32 35, float %186, float %185)  ; FMax(a,b)
  %188 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %189 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %190 = call float @dx.op.binary.f32(i32 35, float %189, float %188)  ; FMax(a,b)
  %191 = fadd fast float %182, %181
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = fadd fast float %184, %183
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = fsub fast float %190, %194
  %196 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %197 = fsub fast float %187, %192
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = call float @dx.op.binary.f32(i32 35, float %198, float %196)  ; FMax(a,b)
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = fmul fast float %201, 0x3FE3C6EF40000000
  %203 = frem fast float %45, 2.560000e+02
  %204 = frem fast float %46, 2.560000e+02
  %205 = fptoui float %203 to i32
  %206 = fptoui float %204 to i32
  %207 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 2
  %210 = fadd fast float %208, %202
  %211 = fadd fast float %209, %202
  %212 = call float @dx.op.unary.f32(i32 22, float %210)  ; Frc(value)
  %213 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.i32 %214, 0
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %867, label %217, !dx.controlflow.hints !31

; <label>:217                                     ; preds = %0
  %218 = fptoui float %45 to i32
  %219 = fptoui float %46 to i32
  %220 = lshr i32 %218, 4
  %221 = lshr i32 %219, 4
  %222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.i32 %222, 0
  %224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %221, i32 %223, i32 %220)  ; UMad(a,b,c)
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 0
  %227 = add nsw i32 %226, -1
  %228 = call i32 @dx.op.binary.i32(i32 37, i32 %227, i32 0)  ; IMax(a,b)
  %229 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %230 = fptoui float %229 to i32
  %231 = lshr i32 %230, 5
  %232 = call i32 @dx.op.binary.i32(i32 40, i32 %231, i32 8191)  ; UMin(a,b)
  %233 = shl i32 %232, 2
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = lshr i32 %235, 16
  %237 = and i32 %235, 65535
  %238 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %236, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %239 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %237, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %240 = lshr i32 %238, 5
  %241 = lshr i32 %239, 5
  %242 = call i32 @dx.op.binary.i32(i32 40, i32 %241, i32 %228)  ; UMin(a,b)
  %243 = icmp ugt i32 %240, %242
  br i1 %243, label %867, label %244

; <label>:244                                     ; preds = %217
  br label %245

; <label>:245                                     ; preds = %857, %244
  %246 = phi i32 [ %864, %857 ], [ %240, %244 ]
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 0
  %249 = call i32 @dx.op.tertiary.i32(i32 49, i32 %224, i32 %248, i32 %246)  ; UMad(a,b,c)
  %250 = shl i32 %249, 2
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = shl i32 %246, 5
  %254 = sub nsw i32 %236, %253
  %255 = call i32 @dx.op.binary.i32(i32 37, i32 %254, i32 0)  ; IMax(a,b)
  %256 = call i32 @dx.op.binary.i32(i32 38, i32 %255, i32 31)  ; IMin(a,b)
  %257 = sub nsw i32 1, %236
  %258 = add nsw i32 %257, %237
  %259 = call i32 @dx.op.binary.i32(i32 37, i32 %258, i32 0)  ; IMax(a,b)
  %260 = call i32 @dx.op.binary.i32(i32 38, i32 %259, i32 32)  ; IMin(a,b)
  %261 = and i32 %260, 31
  %262 = shl i32 -1, %261
  %263 = xor i32 %262, -1
  %264 = and i32 %256, 31
  %265 = shl i32 %263, %264
  %266 = icmp eq i32 %260, 32
  %267 = select i1 %266, i32 -1, i32 %265
  %268 = and i32 %267, %252
  %269 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %268, i8 1)  ; WaveActiveBit(value,op)
  %270 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %269)  ; WaveReadLaneFirst(value)
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %857, label %272

; <label>:272                                     ; preds = %245
  br label %273

; <label>:273                                     ; preds = %827, %272
  %274 = phi i32 [ %836, %827 ], [ 0, %272 ]
  %275 = phi i32 [ %280, %827 ], [ %270, %272 ]
  %276 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %275)  ; FirstbitLo(value)
  %277 = add i32 %276, %253
  %278 = and i32 %276, 31
  %279 = shl i32 1, %278
  %280 = xor i32 %279, %275
  %281 = mul i32 %277, 112
  %282 = add i32 %281, 16
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = add i32 %281, 28
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = add i32 %281, 32
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = add i32 %281, 44
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = add i32 %281, 48
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = extractvalue %dx.types.ResRet.f32 %299, 1
  %302 = extractvalue %dx.types.ResRet.f32 %299, 2
  %303 = extractvalue %dx.types.ResRet.f32 %299, 3
  %304 = add i32 %281, 64
  %305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = extractvalue %dx.types.ResRet.f32 %305, 3
  %310 = add i32 %281, 92
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = uitofp i32 %313 to float
  %315 = lshr i32 %312, 16
  %316 = uitofp i32 %315 to float
  %317 = and i32 %289, 65535
  %318 = and i32 %289, 50331648
  %319 = icmp eq i32 %318, 33554432
  %320 = call float @dx.op.dot3.f32(i32 55, float %292, float %293, float %294, float %292, float %293, float %294)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = fsub fast float %111, %300
  %322 = fsub fast float %112, %301
  %323 = fsub fast float %113, %302
  %324 = call float @dx.op.dot3.f32(i32 55, float %321, float %322, float %323, float %292, float %293, float %294)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = fdiv fast float %324, %320
  %326 = call float @dx.op.binary.f32(i32 35, float %325, float -1.000000e+00)  ; FMax(a,b)
  %327 = call float @dx.op.binary.f32(i32 36, float %326, float 1.000000e+00)  ; FMin(a,b)
  %328 = fmul fast float %327, %292
  %329 = fmul fast float %327, %293
  %330 = fmul fast float %327, %294
  %331 = fadd fast float %328, %300
  %332 = fadd fast float %329, %301
  %333 = fadd fast float %330, %302
  %334 = fsub fast float %331, %111
  %335 = fsub fast float %332, %112
  %336 = fsub fast float %333, %113
  %337 = call float @dx.op.dot3.f32(i32 55, float %334, float %335, float %336, float %334, float %335, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %339 = fdiv fast float 1.000000e+00, %338
  %340 = fmul fast float %334, %339
  %341 = fmul fast float %335, %339
  %342 = fmul fast float %336, %339
  br i1 %319, label %343, label %367, !dx.controlflow.hints !32

; <label>:343                                     ; preds = %273
  %344 = fmul fast float %308, %284
  %345 = fmul fast float %308, %285
  %346 = fmul fast float %308, %286
  %347 = fsub fast float %344, %111
  %348 = fadd fast float %347, %331
  %349 = fsub fast float %345, %112
  %350 = fadd fast float %349, %332
  %351 = fsub fast float %346, %113
  %352 = fadd fast float %351, %333
  %353 = call float @dx.op.dot3.f32(i32 55, float %348, float %350, float %352, float %348, float %350, float %352)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = call float @dx.op.unary.f32(i32 25, float %353)  ; Rsqrt(value)
  %355 = fmul fast float %354, %348
  %356 = fmul fast float %354, %350
  %357 = fmul fast float %354, %352
  %358 = fsub fast float %111, %331
  %359 = fsub fast float %112, %332
  %360 = fsub fast float %113, %333
  %361 = fsub fast float -0.000000e+00, %358
  %362 = fsub fast float -0.000000e+00, %359
  %363 = fsub fast float -0.000000e+00, %360
  %364 = call float @dx.op.dot3.f32(i32 55, float %361, float %362, float %363, float %284, float %285, float %286)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = fcmp fast ogt float %364, 0.000000e+00
  %366 = uitofp i1 %365 to float
  br label %367

; <label>:367                                     ; preds = %343, %273
  %368 = phi float [ %366, %343 ], [ 1.000000e+00, %273 ]
  %369 = phi float [ %355, %343 ], [ %340, %273 ]
  %370 = phi float [ %356, %343 ], [ %341, %273 ]
  %371 = phi float [ %357, %343 ], [ %342, %273 ]
  %372 = call float @dx.op.dot3.f32(i32 55, float %284, float %285, float %286, float %369, float %370, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fmul fast float %372, %372
  %374 = call float @dx.op.unary.f32(i32 7, float %373)  ; Saturate(value)
  %375 = fsub fast float 1.000000e+00, %374
  %376 = fmul fast float %375, 5.000000e-01
  %377 = fcmp fast ogt float %372, 0.000000e+00
  %378 = fsub fast float 1.000000e+00, %376
  %379 = select i1 %377, float %376, float %378
  %380 = fmul fast float %379, %316
  %381 = fadd fast float %380, %314
  %382 = fmul fast float %381, 0x3EF0001000000000
  %383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %382, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = fmul fast float %372, %306
  %386 = fadd fast float %385, %307
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = select i1 %319, float 1.000000e+00, float %387
  %389 = select i1 %319, float %387, float 1.000000e+00
  %390 = fmul fast float %338, %303
  %391 = fsub fast float 1.000000e+00, %390
  %392 = fmul fast float %391, %309
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %394 = fmul fast float %393, %389
  %395 = fmul fast float %394, 2.000000e+00
  %396 = fsub fast float 3.000000e+00, %395
  %397 = fmul fast float %384, %368
  %398 = fmul fast float %394, %394
  %399 = fmul fast float %398, %397
  %400 = fmul fast float %399, %396
  %401 = icmp ne i32 %317, 255
  %402 = call float @dx.op.binary.f32(i32 36, float %400, float %400)  ; FMin(a,b)
  %403 = call float @dx.op.binary.f32(i32 36, float %400, float %402)  ; FMin(a,b)
  %404 = fcmp fast ogt float %403, 0.000000e+00
  %405 = and i1 %401, %404
  br i1 %405, label %406, label %550, !dx.controlflow.hints !33

; <label>:406                                     ; preds = %367
  %407 = mul nuw nsw i32 %317, 176
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = add nuw nsw i32 %407, 16
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = add nuw nsw i32 %407, 32
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = add nuw nsw i32 %407, 48
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = extractvalue %dx.types.ResRet.f32 %423, 3
  %428 = add nuw nsw i32 %407, 64
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = extractvalue %dx.types.ResRet.f32 %429, 3
  %434 = add nuw nsw i32 %407, 80
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = add nuw nsw i32 %407, 96
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = bitcast float %416 to i32
  %447 = fmul fast float %421, %140
  %448 = fmul fast float %421, %141
  %449 = fmul fast float %421, %142
  %450 = fadd fast float %447, %111
  %451 = fadd fast float %448, %112
  %452 = fadd fast float %449, %113
  %453 = fmul fast float %450, %424
  %454 = call float @dx.op.tertiary.f32(i32 46, float %451, float %430, float %453)  ; FMad(a,b,c)
  %455 = call float @dx.op.tertiary.f32(i32 46, float %452, float %436, float %454)  ; FMad(a,b,c)
  %456 = fadd fast float %455, %442
  %457 = fmul fast float %450, %425
  %458 = call float @dx.op.tertiary.f32(i32 46, float %451, float %431, float %457)  ; FMad(a,b,c)
  %459 = call float @dx.op.tertiary.f32(i32 46, float %452, float %437, float %458)  ; FMad(a,b,c)
  %460 = fadd fast float %459, %443
  %461 = fmul fast float %450, %426
  %462 = call float @dx.op.tertiary.f32(i32 46, float %451, float %432, float %461)  ; FMad(a,b,c)
  %463 = call float @dx.op.tertiary.f32(i32 46, float %452, float %438, float %462)  ; FMad(a,b,c)
  %464 = fadd fast float %463, %444
  %465 = fmul fast float %450, %427
  %466 = call float @dx.op.tertiary.f32(i32 46, float %451, float %433, float %465)  ; FMad(a,b,c)
  %467 = call float @dx.op.tertiary.f32(i32 46, float %452, float %439, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %467, %445
  %469 = fdiv fast float %456, %468
  %470 = fdiv fast float %460, %468
  %471 = fdiv fast float %464, %468
  %472 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %471)  ; FMax(a,b)
  %473 = fmul fast float %212, 0x401921FB60000000
  %474 = call float @dx.op.unary.f32(i32 13, float %473)  ; Sin(value)
  %475 = call float @dx.op.unary.f32(i32 12, float %473)  ; Cos(value)
  %476 = fmul fast float %475, %420
  %477 = call float @dx.op.tertiary.f32(i32 46, float %474, float %420, float 0.000000e+00)  ; FMad(a,b,c)
  %478 = fmul fast float %420, %474
  %479 = fsub fast float -0.000000e+00, %478
  %480 = call float @dx.op.tertiary.f32(i32 46, float %475, float %420, float 0.000000e+00)  ; FMad(a,b,c)
  br label %481

; <label>:481                                     ; preds = %481, %406
  %482 = phi float [ 0.000000e+00, %406 ], [ %514, %481 ]
  %483 = phi float [ 0.000000e+00, %406 ], [ %516, %481 ]
  %484 = phi i32 [ 0, %406 ], [ %517, %481 ]
  %485 = mul i32 %484, 2
  %486 = add i32 0, %485
  %487 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %486
  %488 = load float, float* %487, align 4
  %489 = mul i32 %484, 2
  %490 = add i32 1, %489
  %491 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %490
  %492 = load float, float* %491, align 4
  %493 = fmul fast float %476, %488
  %494 = call float @dx.op.tertiary.f32(i32 46, float %492, float %479, float %493)  ; FMad(a,b,c)
  %495 = fmul fast float %488, %477
  %496 = call float @dx.op.tertiary.f32(i32 46, float %492, float %480, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %494, %469
  %498 = fadd fast float %496, %470
  %499 = fmul fast float %497, %415
  %500 = fmul fast float %498, %415
  %501 = call float @dx.op.binary.f32(i32 35, float %499, float %411)  ; FMax(a,b)
  %502 = call float @dx.op.binary.f32(i32 35, float %500, float %411)  ; FMax(a,b)
  %503 = call float @dx.op.binary.f32(i32 36, float %501, float %412)  ; FMin(a,b)
  %504 = call float @dx.op.binary.f32(i32 36, float %502, float %412)  ; FMin(a,b)
  %505 = fadd fast float %503, %409
  %506 = fadd fast float %504, %410
  %507 = uitofp i32 %446 to float
  %508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %505, float %506, float %507, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = fsub fast float %509, %472
  %511 = fsub fast float %510, %419
  %512 = fcmp fast ogt float %511, 0.000000e+00
  %513 = select i1 %512, float 1.000000e+00, float 0.000000e+00
  %514 = fadd fast float %513, %482
  %515 = select i1 %512, float %511, float 0.000000e+00
  %516 = fadd fast float %515, %483
  %517 = add nuw nsw i32 %484, 1
  %518 = icmp eq i32 %517, 8
  br i1 %518, label %519, label %481

; <label>:519                                     ; preds = %481
  %520 = fdiv fast float 1.000000e+00, %514
  %521 = fmul fast float %520, %516
  %522 = fdiv fast float 1.000000e+00, %472
  %523 = fmul fast float %521, %522
  %524 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %525 = call float @dx.op.binary.f32(i32 35, float %524, float 0.000000e+00)  ; FMax(a,b)
  %526 = fmul fast float %514, 1.250000e-01
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = fmul fast float %527, 2.000000e+00
  %529 = fadd fast float %528, -1.000000e+00
  %530 = fcmp fast ogt float %529, 0.000000e+00
  %531 = fcmp fast olt float %529, 0.000000e+00
  %532 = zext i1 %530 to i32
  %533 = zext i1 %531 to i32
  %534 = sub nsw i32 %532, %533
  %535 = sitofp i32 %534 to float
  %536 = fmul fast float %535, %529
  %537 = fsub fast float 1.000000e+00, %536
  %538 = fmul fast float %537, %537
  %539 = fmul fast float %538, %537
  %540 = fsub fast float %537, %539
  %541 = fmul fast float %540, %525
  %542 = fsub fast float 1.000000e+00, %539
  %543 = fsub fast float %542, %541
  %544 = fmul fast float %535, 5.000000e-01
  %545 = fmul fast float %544, %543
  %546 = fsub fast float -5.000000e-01, %545
  %547 = fmul fast float %546, %388
  %548 = fadd fast float %547, 1.000000e+00
  %549 = fmul fast float %548, %400
  br label %550

; <label>:550                                     ; preds = %519, %367
  %551 = phi float [ %549, %519 ], [ %400, %367 ]
  %552 = call float @dx.op.binary.f32(i32 36, float %551, float %551)  ; FMin(a,b)
  %553 = call float @dx.op.binary.f32(i32 36, float %551, float %552)  ; FMin(a,b)
  %554 = fcmp fast ogt float %553, 0.000000e+00
  %555 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %340, float %341, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %556 = fcmp fast ogt float %555, 0.000000e+00
  %557 = and i1 %554, %556
  br i1 %557, label %558, label %827, !dx.controlflow.hints !34

; <label>:558                                     ; preds = %550
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 1
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %563 = select i1 %49, float %560, float %562
  %564 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %565 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %566 = select i1 %49, float %564, float %565
  %567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.i32 %567, 0
  %569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.i32 %569, 0
  %571 = select i1 %49, i32 %568, i32 %570
  %572 = fcmp fast olt float %563, 5.000000e-01
  %573 = icmp eq i32 %571, 0
  %574 = or i1 %572, %573
  br i1 %574, label %822, label %575, !dx.controlflow.hints !35

; <label>:575                                     ; preds = %558
  %576 = fsub fast float %300, %111
  %577 = fsub fast float %301, %112
  %578 = fsub fast float %302, %113
  %579 = fmul fast float %576, %576
  %580 = fmul fast float %577, %577
  %581 = fadd fast float %579, %580
  %582 = fmul fast float %578, %578
  %583 = fadd fast float %581, %582
  %584 = call float @dx.op.unary.f32(i32 24, float %583)  ; Sqrt(value)
  %585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.i32 %585, 0
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %563, %297
  %589 = fdiv fast float %588, %584
  %590 = call float @dx.op.binary.f32(i32 36, float %589, float 1.000000e+01)  ; FMin(a,b)
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %593 = extractvalue %dx.types.CBufRet.f32 %591, 1
  %594 = extractvalue %dx.types.CBufRet.f32 %591, 2
  %595 = extractvalue %dx.types.CBufRet.f32 %591, 3
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %599 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %600 = extractvalue %dx.types.CBufRet.f32 %596, 3
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %604 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %605 = extractvalue %dx.types.CBufRet.f32 %601, 3
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %610 = extractvalue %dx.types.CBufRet.f32 %606, 3
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %615 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %620 = extractvalue %dx.types.CBufRet.f32 %616, 3
  %621 = select i1 %49, float %592, float %607
  %622 = select i1 %49, float %597, float %612
  %623 = select i1 %49, float %602, float %617
  %624 = select i1 %49, float %593, float %608
  %625 = select i1 %49, float %598, float %613
  %626 = select i1 %49, float %603, float %618
  %627 = select i1 %49, float %594, float %609
  %628 = select i1 %49, float %599, float %614
  %629 = select i1 %49, float %604, float %619
  %630 = select i1 %49, float %595, float %610
  %631 = select i1 %49, float %600, float %615
  %632 = select i1 %49, float %605, float %620
  %633 = fmul fast float %213, 0x401061CAC0000000
  %634 = fmul fast float %213, 0x4023E1D7E0000000
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %639 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %640 = fsub fast float -0.000000e+00, %340
  %641 = fmul fast float %342, %640
  %642 = fmul fast float %340, %640
  %643 = fmul fast float %341, %341
  %644 = fsub fast float %642, %643
  %645 = fdiv fast float 1.000000e+00, %56
  %646 = fmul fast float %638, %45
  %647 = fmul fast float %639, %46
  %648 = fmul fast float %563, %340
  %649 = fmul fast float %563, %342
  %650 = fadd fast float %648, %111
  %651 = fadd fast float %649, %113
  %652 = fadd fast float %634, 5.000000e-01
  %653 = call float @dx.op.unary.f32(i32 22, float %652)  ; Frc(value)
  %654 = bitcast float %653 to i32
  %655 = ashr i32 %654, 1
  %656 = add nsw i32 %655, 532487669
  %657 = bitcast i32 %656 to float
  %658 = fmul fast float %657, %590
  %659 = fadd fast float %633, 5.000000e-01
  %660 = call float @dx.op.unary.f32(i32 22, float %659)  ; Frc(value)
  %661 = fmul fast float %660, 0x401921FB60000000
  %662 = call float @dx.op.unary.f32(i32 12, float %661)  ; Cos(value)
  %663 = fmul fast float %662, %662
  %664 = fsub fast float 1.000000e+00, %663
  %665 = bitcast float %664 to i32
  %666 = ashr i32 %665, 1
  %667 = add nsw i32 %666, 532487669
  %668 = bitcast i32 %667 to float
  %669 = fmul fast float %658, %662
  %670 = fmul fast float %669, %341
  %671 = fmul fast float %669, %640
  %672 = fadd fast float %650, %670
  %673 = fmul fast float %668, %658
  %674 = fmul fast float %641, %673
  %675 = fmul fast float %673, %342
  %676 = fmul fast float %673, %644
  %677 = fsub fast float %672, %674
  %678 = fadd fast float %675, %563
  %679 = fmul fast float %678, %341
  %680 = fadd fast float %671, %112
  %681 = fadd fast float %680, %679
  %682 = fadd fast float %651, %676
  %683 = fmul fast float %677, %621
  %684 = call float @dx.op.tertiary.f32(i32 46, float %681, float %624, float %683)  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float %682, float %627, float %684)  ; FMad(a,b,c)
  %686 = fadd fast float %685, %630
  %687 = fmul fast float %677, %622
  %688 = call float @dx.op.tertiary.f32(i32 46, float %681, float %625, float %687)  ; FMad(a,b,c)
  %689 = call float @dx.op.tertiary.f32(i32 46, float %682, float %628, float %688)  ; FMad(a,b,c)
  %690 = fadd fast float %689, %631
  %691 = fmul fast float %677, %623
  %692 = call float @dx.op.tertiary.f32(i32 46, float %681, float %626, float %691)  ; FMad(a,b,c)
  %693 = call float @dx.op.tertiary.f32(i32 46, float %682, float %629, float %692)  ; FMad(a,b,c)
  %694 = fadd fast float %693, %632
  %695 = fdiv fast float 1.000000e+00, %694
  %696 = fmul fast float %686, 5.000000e-01
  %697 = fmul fast float %690, -5.000000e-01
  %698 = fmul fast float %696, %695
  %699 = fmul fast float %697, %695
  %700 = fsub fast float 5.000000e-01, %646
  %701 = fadd fast float %700, %698
  %702 = fsub fast float 5.000000e-01, %647
  %703 = fadd fast float %702, %699
  %704 = fsub fast float %695, %645
  %705 = call float @dx.op.dot2.f32(i32 54, float %701, float %703, float %701, float %703)  ; Dot2(ax,ay,bx,by)
  %706 = call float @dx.op.binary.f32(i32 35, float %705, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %707 = call float @dx.op.dot2.f32(i32 54, float %636, float %637, float %636, float %637)  ; Dot2(ax,ay,bx,by)
  %708 = fmul fast float %707, %706
  %709 = call float @dx.op.unary.f32(i32 25, float %708)  ; Rsqrt(value)
  %710 = fmul fast float %709, %701
  %711 = fmul fast float %709, %703
  %712 = fadd fast float %710, %646
  %713 = fadd fast float %711, %647
  %714 = fmul fast float %701, %636
  %715 = fmul fast float %703, %637
  %716 = fmul fast float %714, %714
  %717 = fmul fast float %715, %715
  %718 = fadd fast float %716, %717
  %719 = call float @dx.op.unary.f32(i32 24, float %718)  ; Sqrt(value)
  %720 = fdiv fast float 1.000000e+00, %719
  %721 = fmul fast float %719, 3.906250e-03
  %722 = fmul fast float %199, 0x3F70624DE0000000
  %723 = fadd fast float %722, 0x3F70624DE0000000
  %724 = icmp sgt i32 %571, -1
  br i1 %724, label %725, label %787

; <label>:725                                     ; preds = %575
  br label %726

; <label>:726                                     ; preds = %783, %725
  %727 = phi float [ %758, %783 ], [ %56, %725 ]
  %728 = phi float [ %745, %783 ], [ %56, %725 ]
  %729 = phi float [ %728, %783 ], [ %56, %725 ]
  %730 = phi i32 [ %784, %783 ], [ 0, %725 ]
  %731 = sitofp i32 %730 to float
  %732 = fadd fast float %213, 5.000000e-01
  %733 = call float @dx.op.unary.f32(i32 22, float %732)  ; Frc(value)
  %734 = fadd fast float %731, %733
  %735 = sitofp i32 %571 to float
  %736 = fdiv fast float %734, %735
  %737 = fmul fast float %736, %736
  %738 = call float @dx.op.binary.f32(i32 36, float %737, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %739 = fmul fast float %738, %701
  %740 = fmul fast float %738, %703
  %741 = fmul fast float %738, %704
  %742 = fadd fast float %739, %712
  %743 = fadd fast float %740, %713
  %744 = fadd fast float %741, %645
  %745 = fdiv fast float 1.000000e+00, %744
  %746 = icmp ne i32 %586, 0
  %747 = fmul fast float %721, %738
  %748 = call float @dx.op.binary.f32(i32 36, float %747, float %587)  ; FMin(a,b)
  %749 = select i1 %746, float %748, float 0.000000e+00
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %742, float %743, float undef, float undef, i32 0, i32 0, i32 undef, float %749)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = fcmp fast ogt float %751, -1.000000e+00
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 1
  %755 = select i1 %752, float %754, float 1.000000e+00
  %756 = fadd fast float %751, 1.000000e+00
  %757 = fmul fast float %755, %756
  %758 = call float @dx.op.unary.f32(i32 6, float %757)  ; FAbs(value)
  %759 = fmul fast float %758, %723
  %760 = fsub fast float %745, %758
  %761 = fsub fast float %760, %759
  %762 = fcmp fast ogt float %761, 0.000000e+00
  %763 = fcmp fast ogt float %566, 0.000000e+00
  br i1 %763, label %764, label %767, !dx.controlflow.hints !36

; <label>:764                                     ; preds = %726
  %765 = fsub fast float %745, %729
  %766 = call float @dx.op.binary.f32(i32 35, float %765, float %566)  ; FMax(a,b)
  br label %767

; <label>:767                                     ; preds = %764, %726
  %768 = phi float [ %766, %764 ], [ %563, %726 ]
  %769 = fcmp fast olt float %761, %768
  %770 = fcmp uge float %751, -1.000000e+00
  %771 = or i1 %49, %770
  %772 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %773 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %774 = fcmp fast oeq float %742, %772
  %775 = fcmp fast oeq float %743, %773
  %776 = and i1 %774, %775
  %777 = and i1 %771, %776
  %778 = and i1 %762, %769
  %779 = and i1 %778, %777
  %780 = fcmp fast ogt float %738, %720
  %781 = and i1 %780, %779
  %782 = zext i1 %781 to i32
  br i1 %781, label %786, label %783, !dx.controlflow.hints !37

; <label>:783                                     ; preds = %767
  %784 = add nuw nsw i32 %730, 1
  %785 = icmp slt i32 %730, %571
  br i1 %785, label %726, label %786

; <label>:786                                     ; preds = %783, %767
  br label %787

; <label>:787                                     ; preds = %786, %575
  %788 = phi i32 [ 0, %575 ], [ %782, %786 ]
  %789 = phi float [ %56, %575 ], [ %758, %786 ]
  %790 = phi float [ %56, %575 ], [ %727, %786 ]
  %791 = phi float [ %56, %575 ], [ %745, %786 ]
  %792 = phi float [ %56, %575 ], [ %728, %786 ]
  %793 = fsub fast float %792, %790
  %794 = fsub fast float %791, %789
  %795 = fsub fast float %793, %794
  %796 = fcmp fast une float %795, 0.000000e+00
  %797 = fmul fast float %793, %791
  %798 = fmul fast float %792, %794
  %799 = fsub fast float %797, %798
  %800 = fdiv fast float 1.000000e+00, %795
  %801 = fmul fast float %799, %800
  %802 = select i1 %796, float %801, float %791
  %803 = fdiv fast float 1.000000e+00, %802
  %804 = fsub fast float %803, %645
  %805 = fdiv fast float %804, %704
  %806 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  %807 = fmul fast float %806, %701
  %808 = fmul fast float %806, %703
  %809 = fadd fast float %807, %712
  %810 = fadd fast float %808, %713
  %811 = fadd fast float %809, -5.000000e-01
  %812 = fadd fast float %810, -5.000000e-01
  %813 = call float @dx.op.unary.f32(i32 6, float %811)  ; FAbs(value)
  %814 = call float @dx.op.unary.f32(i32 6, float %812)  ; FAbs(value)
  %815 = fadd fast float %813, -5.000000e-01
  %816 = fadd fast float %814, -5.000000e-01
  %817 = call float @dx.op.binary.f32(i32 35, float %815, float %816)  ; FMax(a,b)
  %818 = fcmp fast olt float %817, 0.000000e+00
  %819 = icmp ne i32 %788, 0
  %820 = and i1 %819, %818
  %821 = select i1 %820, float 0.000000e+00, float 1.000000e+00
  br label %822

; <label>:822                                     ; preds = %787, %558
  %823 = phi float [ %821, %787 ], [ 1.000000e+00, %558 ]
  %824 = fmul fast float %823, %551
  %825 = fmul fast float %823, %551
  %826 = fmul fast float %823, %551
  br label %827

; <label>:827                                     ; preds = %822, %550
  %828 = phi float [ %824, %822 ], [ %551, %550 ]
  %829 = phi float [ %825, %822 ], [ %551, %550 ]
  %830 = phi float [ %826, %822 ], [ %551, %550 ]
  %831 = call float @dx.op.binary.f32(i32 36, float %829, float %830)  ; FMin(a,b)
  %832 = call float @dx.op.binary.f32(i32 36, float %828, float %831)  ; FMin(a,b)
  %833 = fcmp fast ogt float %832, 0x3F10000000000000
  %834 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %833)  ; WaveAnyTrue(cond)
  %835 = select i1 %834, i32 %279, i32 0
  %836 = or i32 %274, %835
  %837 = lshr i32 %218, 5
  %838 = lshr i32 %219, 5
  %839 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %837, i32 %838, i32 %277, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = lshr i32 %840, 23
  %842 = and i32 %841, 255
  %843 = and i32 %218, 31
  %844 = and i32 %219, 31
  %845 = lshr i32 %840, 1
  %846 = and i32 %845, 16352
  %847 = lshr i32 %840, 10
  %848 = and i32 %847, 8160
  %849 = or i32 %846, %843
  %850 = or i32 %848, %844
  %851 = fmul fast float %828, 2.550000e+02
  %852 = fadd fast float %851, %212
  %853 = call float @dx.op.unary.f32(i32 27, float %852)  ; Round_ni(value)
  %854 = fmul fast float %853, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %849, i32 %850, i32 %842, float %854, float %854, float %854, float %854, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %855 = icmp eq i32 %275, %279
  br i1 %855, label %856, label %273, !llvm.loop !38

; <label>:856                                     ; preds = %827
  br label %857

; <label>:857                                     ; preds = %856, %245
  %858 = phi i32 [ 0, %245 ], [ %836, %856 ]
  %859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.i32 %859, 0
  %861 = call i32 @dx.op.tertiary.i32(i32 49, i32 %224, i32 %860, i32 %246)  ; UMad(a,b,c)
  %862 = shl i32 %861, 2
  %863 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %862, i32 undef, i32 undef, i32 %858)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %864 = add i32 %246, 1
  %865 = icmp ugt i32 %864, %242
  br i1 %865, label %866, label %245

; <label>:866                                     ; preds = %857
  br label %867

; <label>:867                                     ; preds = %866, %217, %0
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
!30 = !{i32 8, i32 4, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}

