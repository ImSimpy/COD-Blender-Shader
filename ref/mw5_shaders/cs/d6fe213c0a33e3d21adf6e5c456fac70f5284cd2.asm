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
; shader hash: 3d032b9bbfae7ae15145cf9b18eb5274
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 0
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %27 = shl i32 %24, 2
  %28 = mul i32 %27, %26
  %29 = add i32 %28, %20
  %30 = shl i32 %29, 2
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = lshr i32 %32, 28
  %34 = and i32 %33, 3
  %35 = lshr i32 %32, 10
  %36 = and i32 %35, 262128
  %37 = shl i32 %32, 4
  %38 = and i32 %37, 262128
  %39 = shl nuw nsw i32 %33, 3
  %40 = and i32 %39, 8
  %41 = lshr i32 %32, 26
  %42 = and i32 %41, 8
  %43 = or i32 %36, %21
  %44 = or i32 %43, %40
  %45 = or i32 %42, %22
  %46 = or i32 %45, %38
  %47 = uitofp i32 %44 to float
  %48 = uitofp i32 %46 to float
  %49 = fadd fast float %47, 5.000000e-01
  %50 = fadd fast float %48, 5.000000e-01
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %44, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = fcmp fast olt float %52, -1.000000e+00
  %54 = fcmp fast ogt float %52, -1.000000e+00
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %57 = select i1 %54, float %56, float 1.000000e+00
  %58 = fadd fast float %52, 1.000000e+00
  %59 = fmul fast float %57, %58
  %60 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 3
  %64 = fmul fast float %49, %62
  %65 = fmul fast float %50, %63
  %66 = fmul fast float %64, 2.000000e+00
  %67 = fmul fast float %65, 2.000000e+00
  %68 = fsub fast float 1.000000e+00, %66
  %69 = fsub fast float 1.000000e+00, %67
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = select i1 %53, float %71, float %75
  %79 = select i1 %53, float %72, float %76
  %80 = select i1 %53, float %73, float %77
  %81 = fmul fast float %68, %78
  %82 = fmul fast float %68, %79
  %83 = fmul fast float %68, %80
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = select i1 %53, float %85, float %89
  %93 = select i1 %53, float %86, float %90
  %94 = select i1 %53, float %87, float %91
  %95 = fmul fast float %92, %69
  %96 = fmul fast float %93, %69
  %97 = fmul fast float %94, %69
  %98 = fadd fast float %95, %81
  %99 = fadd fast float %96, %82
  %100 = fadd fast float %97, %83
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = select i1 %53, float %102, float %106
  %110 = select i1 %53, float %103, float %107
  %111 = select i1 %53, float %104, float %108
  %112 = fadd fast float %98, %109
  %113 = fadd fast float %99, %110
  %114 = fadd fast float %100, %111
  %115 = fmul fast float %112, %60
  %116 = fmul fast float %113, %60
  %117 = fmul fast float %114, %60
  %118 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %44, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = lshr i32 %119, 8
  %121 = and i32 %119, 255
  %122 = and i32 %120, 255
  %123 = uitofp i32 %121 to float
  %124 = uitofp i32 %122 to float
  %125 = fmul fast float %123, 0x3F80101020000000
  %126 = fmul fast float %124, 0x3F80101020000000
  %127 = fadd fast float %125, -1.000000e+00
  %128 = fadd fast float %126, -1.000000e+00
  %129 = call float @dx.op.unary.f32(i32 6, float %127)  ; FAbs(value)
  %130 = fsub fast float 1.000000e+00, %129
  %131 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %132 = fsub fast float %130, %131
  %133 = fsub fast float -0.000000e+00, %132
  %134 = call float @dx.op.binary.f32(i32 35, float %133, float 0.000000e+00)  ; FMax(a,b)
  %135 = fcmp fast ogt float %127, 0.000000e+00
  %136 = fsub fast float -0.000000e+00, %134
  %137 = select i1 %135, float %136, float %134
  %138 = fadd fast float %137, %127
  %139 = fcmp fast ogt float %128, 0.000000e+00
  %140 = select i1 %139, float %136, float %134
  %141 = fadd fast float %140, %128
  %142 = call float @dx.op.dot3.f32(i32 55, float %138, float %141, float %132, float %138, float %141, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %143 = call float @dx.op.unary.f32(i32 25, float %142)  ; Rsqrt(value)
  %144 = fmul fast float %138, %143
  %145 = fmul fast float %141, %143
  %146 = fmul fast float %143, %132
  %147 = fmul fast float %62, %47
  %148 = fmul fast float %63, %48
  %149 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %17, float %147, float %148, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = extractvalue %dx.types.ResRet.f32 %149, 1
  %152 = extractvalue %dx.types.ResRet.f32 %149, 2
  %153 = fcmp fast ogt float %150, -1.000000e+00
  %154 = select i1 %153, float %56, float 1.000000e+00
  %155 = fadd fast float %150, 1.000000e+00
  %156 = fmul fast float %154, %155
  %157 = call float @dx.op.unary.f32(i32 6, float %156)  ; FAbs(value)
  %158 = fcmp fast ogt float %151, -1.000000e+00
  %159 = select i1 %158, float %56, float 1.000000e+00
  %160 = fadd fast float %151, 1.000000e+00
  %161 = fmul fast float %159, %160
  %162 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %163 = fcmp fast ogt float %152, -1.000000e+00
  %164 = select i1 %163, float %56, float 1.000000e+00
  %165 = fadd fast float %152, 1.000000e+00
  %166 = fmul fast float %164, %165
  %167 = call float @dx.op.unary.f32(i32 6, float %166)  ; FAbs(value)
  %168 = fadd fast float %47, 1.000000e+00
  %169 = fmul fast float %62, %168
  %170 = fadd fast float %48, 1.000000e+00
  %171 = fmul fast float %63, %170
  %172 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %17, float %169, float %171, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = extractvalue %dx.types.ResRet.f32 %172, 2
  %175 = fcmp fast ogt float %173, -1.000000e+00
  %176 = select i1 %175, float %56, float 1.000000e+00
  %177 = fadd fast float %173, 1.000000e+00
  %178 = fmul fast float %176, %177
  %179 = call float @dx.op.unary.f32(i32 6, float %178)  ; FAbs(value)
  %180 = fcmp fast ogt float %174, -1.000000e+00
  %181 = select i1 %180, float %56, float 1.000000e+00
  %182 = fadd fast float %174, 1.000000e+00
  %183 = fmul fast float %181, %182
  %184 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %185 = fsub fast float %167, %162
  %186 = fsub fast float %179, %162
  %187 = fsub fast float %157, %162
  %188 = fsub fast float %184, %162
  %189 = call float @dx.op.unary.f32(i32 6, float %186)  ; FAbs(value)
  %190 = call float @dx.op.unary.f32(i32 6, float %185)  ; FAbs(value)
  %191 = call float @dx.op.binary.f32(i32 35, float %190, float %189)  ; FMax(a,b)
  %192 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %193 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %194 = call float @dx.op.binary.f32(i32 35, float %193, float %192)  ; FMax(a,b)
  %195 = fadd fast float %186, %185
  %196 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %197 = fadd fast float %188, %187
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = fsub fast float %194, %198
  %200 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %201 = fsub fast float %191, %196
  %202 = call float @dx.op.unary.f32(i32 6, float %201)  ; FAbs(value)
  %203 = call float @dx.op.binary.f32(i32 35, float %202, float %200)  ; FMax(a,b)
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fmul fast float %205, 0x3FE3C6EF40000000
  %207 = frem fast float %49, 2.560000e+02
  %208 = frem fast float %50, 2.560000e+02
  %209 = fptoui float %207 to i32
  %210 = fptoui float %208 to i32
  %211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %209, i32 %210, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 2
  %214 = fadd fast float %212, %206
  %215 = fadd fast float %213, %206
  %216 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %217 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.i32 %218, 0
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %927, label %221, !dx.controlflow.hints !34

; <label>:221                                     ; preds = %0
  %222 = fptoui float %49 to i32
  %223 = fptoui float %50 to i32
  %224 = lshr i32 %222, 4
  %225 = lshr i32 %223, 4
  %226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.i32 %226, 0
  %228 = call i32 @dx.op.tertiary.i32(i32 49, i32 %225, i32 %227, i32 %224)  ; UMad(a,b,c)
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 0
  %231 = add nsw i32 %230, -1
  %232 = call i32 @dx.op.binary.i32(i32 37, i32 %231, i32 0)  ; IMax(a,b)
  %233 = call float @dx.op.binary.f32(i32 35, float %60, float 0.000000e+00)  ; FMax(a,b)
  %234 = fptoui float %233 to i32
  %235 = lshr i32 %234, 5
  %236 = call i32 @dx.op.binary.i32(i32 40, i32 %235, i32 8191)  ; UMin(a,b)
  %237 = shl i32 %236, 2
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = lshr i32 %239, 16
  %241 = and i32 %239, 65535
  %242 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %240, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %243 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %241, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %244 = lshr i32 %242, 5
  %245 = lshr i32 %243, 5
  %246 = call i32 @dx.op.binary.i32(i32 40, i32 %245, i32 %232)  ; UMin(a,b)
  %247 = icmp ugt i32 %244, %246
  br i1 %247, label %927, label %248

; <label>:248                                     ; preds = %221
  br label %249

; <label>:249                                     ; preds = %917, %248
  %250 = phi i32 [ %924, %917 ], [ %244, %248 ]
  %251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.i32 %251, 0
  %253 = call i32 @dx.op.tertiary.i32(i32 49, i32 %228, i32 %252, i32 %250)  ; UMad(a,b,c)
  %254 = shl i32 %253, 2
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = shl i32 %250, 5
  %258 = sub nsw i32 %240, %257
  %259 = call i32 @dx.op.binary.i32(i32 37, i32 %258, i32 0)  ; IMax(a,b)
  %260 = call i32 @dx.op.binary.i32(i32 38, i32 %259, i32 31)  ; IMin(a,b)
  %261 = sub nsw i32 1, %240
  %262 = add nsw i32 %261, %241
  %263 = call i32 @dx.op.binary.i32(i32 37, i32 %262, i32 0)  ; IMax(a,b)
  %264 = call i32 @dx.op.binary.i32(i32 38, i32 %263, i32 32)  ; IMin(a,b)
  %265 = and i32 %264, 31
  %266 = shl i32 -1, %265
  %267 = xor i32 %266, -1
  %268 = and i32 %260, 31
  %269 = shl i32 %267, %268
  %270 = icmp eq i32 %264, 32
  %271 = select i1 %270, i32 -1, i32 %269
  %272 = and i32 %271, %256
  %273 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %272, i8 1)  ; WaveActiveBit(value,op)
  %274 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %273)  ; WaveReadLaneFirst(value)
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %917, label %276

; <label>:276                                     ; preds = %249
  br label %277

; <label>:277                                     ; preds = %914, %276
  %278 = phi i32 [ %840, %914 ], [ 0, %276 ]
  %279 = phi i32 [ %284, %914 ], [ %274, %276 ]
  %280 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %279)  ; FirstbitLo(value)
  %281 = add i32 %280, %257
  %282 = and i32 %280, 31
  %283 = shl i32 1, %282
  %284 = xor i32 %283, %279
  %285 = mul i32 %281, 112
  %286 = add i32 %285, 16
  %287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = add i32 %285, 28
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = add i32 %285, 32
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = add i32 %285, 44
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = add i32 %285, 48
  %303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  %307 = extractvalue %dx.types.ResRet.f32 %303, 3
  %308 = add i32 %285, 64
  %309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = extractvalue %dx.types.ResRet.f32 %309, 1
  %312 = extractvalue %dx.types.ResRet.f32 %309, 2
  %313 = extractvalue %dx.types.ResRet.f32 %309, 3
  %314 = add i32 %285, 92
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = uitofp i32 %317 to float
  %319 = lshr i32 %316, 16
  %320 = uitofp i32 %319 to float
  %321 = and i32 %293, 65535
  %322 = and i32 %293, 50331648
  %323 = icmp eq i32 %322, 33554432
  %324 = call float @dx.op.dot3.f32(i32 55, float %296, float %297, float %298, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = fsub fast float %115, %304
  %326 = fsub fast float %116, %305
  %327 = fsub fast float %117, %306
  %328 = call float @dx.op.dot3.f32(i32 55, float %325, float %326, float %327, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %329 = fdiv fast float %328, %324
  %330 = call float @dx.op.binary.f32(i32 35, float %329, float -1.000000e+00)  ; FMax(a,b)
  %331 = call float @dx.op.binary.f32(i32 36, float %330, float 1.000000e+00)  ; FMin(a,b)
  %332 = fmul fast float %331, %296
  %333 = fmul fast float %331, %297
  %334 = fmul fast float %331, %298
  %335 = fadd fast float %332, %304
  %336 = fadd fast float %333, %305
  %337 = fadd fast float %334, %306
  %338 = fsub fast float %335, %115
  %339 = fsub fast float %336, %116
  %340 = fsub fast float %337, %117
  %341 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %343 = fdiv fast float 1.000000e+00, %342
  %344 = fmul fast float %338, %343
  %345 = fmul fast float %339, %343
  %346 = fmul fast float %340, %343
  br i1 %323, label %347, label %371, !dx.controlflow.hints !35

; <label>:347                                     ; preds = %277
  %348 = fmul fast float %312, %288
  %349 = fmul fast float %312, %289
  %350 = fmul fast float %312, %290
  %351 = fsub fast float %348, %115
  %352 = fadd fast float %351, %335
  %353 = fsub fast float %349, %116
  %354 = fadd fast float %353, %336
  %355 = fsub fast float %350, %117
  %356 = fadd fast float %355, %337
  %357 = call float @dx.op.dot3.f32(i32 55, float %352, float %354, float %356, float %352, float %354, float %356)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = call float @dx.op.unary.f32(i32 25, float %357)  ; Rsqrt(value)
  %359 = fmul fast float %358, %352
  %360 = fmul fast float %358, %354
  %361 = fmul fast float %358, %356
  %362 = fsub fast float %115, %335
  %363 = fsub fast float %116, %336
  %364 = fsub fast float %117, %337
  %365 = fsub fast float -0.000000e+00, %362
  %366 = fsub fast float -0.000000e+00, %363
  %367 = fsub fast float -0.000000e+00, %364
  %368 = call float @dx.op.dot3.f32(i32 55, float %365, float %366, float %367, float %288, float %289, float %290)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = fcmp fast ogt float %368, 0.000000e+00
  %370 = uitofp i1 %369 to float
  br label %371

; <label>:371                                     ; preds = %347, %277
  %372 = phi float [ %370, %347 ], [ 1.000000e+00, %277 ]
  %373 = phi float [ %359, %347 ], [ %344, %277 ]
  %374 = phi float [ %360, %347 ], [ %345, %277 ]
  %375 = phi float [ %361, %347 ], [ %346, %277 ]
  %376 = call float @dx.op.dot3.f32(i32 55, float %288, float %289, float %290, float %373, float %374, float %375)  ; Dot3(ax,ay,az,bx,by,bz)
  %377 = fmul fast float %376, %376
  %378 = call float @dx.op.unary.f32(i32 7, float %377)  ; Saturate(value)
  %379 = fsub fast float 1.000000e+00, %378
  %380 = fmul fast float %379, 5.000000e-01
  %381 = fcmp fast ogt float %376, 0.000000e+00
  %382 = fsub fast float 1.000000e+00, %380
  %383 = select i1 %381, float %380, float %382
  %384 = fmul fast float %383, %320
  %385 = fadd fast float %384, %318
  %386 = fmul fast float %385, 0x3EF0001000000000
  %387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %386, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = fmul fast float %376, %310
  %390 = fadd fast float %389, %311
  %391 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %392 = select i1 %323, float 1.000000e+00, float %391
  %393 = select i1 %323, float %391, float 1.000000e+00
  %394 = fmul fast float %342, %307
  %395 = fsub fast float 1.000000e+00, %394
  %396 = fmul fast float %395, %313
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %398 = fmul fast float %397, %393
  %399 = fmul fast float %398, 2.000000e+00
  %400 = fsub fast float 3.000000e+00, %399
  %401 = fmul fast float %388, %372
  %402 = fmul fast float %398, %398
  %403 = fmul fast float %402, %401
  %404 = fmul fast float %403, %400
  %405 = icmp ne i32 %321, 255
  %406 = call float @dx.op.binary.f32(i32 36, float %404, float %404)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %404, float %406)  ; FMin(a,b)
  %408 = fcmp fast ogt float %407, 0.000000e+00
  %409 = and i1 %405, %408
  br i1 %409, label %410, label %554, !dx.controlflow.hints !36

; <label>:410                                     ; preds = %371
  %411 = mul nuw nsw i32 %321, 176
  %412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = add nuw nsw i32 %411, 16
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = add nuw nsw i32 %411, 32
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = add nuw nsw i32 %411, 48
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = extractvalue %dx.types.ResRet.f32 %427, 3
  %432 = add nuw nsw i32 %411, 64
  %433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = extractvalue %dx.types.ResRet.f32 %433, 2
  %437 = extractvalue %dx.types.ResRet.f32 %433, 3
  %438 = add nuw nsw i32 %411, 80
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = extractvalue %dx.types.ResRet.f32 %439, 3
  %444 = add nuw nsw i32 %411, 96
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = extractvalue %dx.types.ResRet.f32 %445, 3
  %450 = bitcast float %420 to i32
  %451 = fmul fast float %425, %144
  %452 = fmul fast float %425, %145
  %453 = fmul fast float %425, %146
  %454 = fadd fast float %451, %115
  %455 = fadd fast float %452, %116
  %456 = fadd fast float %453, %117
  %457 = fmul fast float %454, %428
  %458 = call float @dx.op.tertiary.f32(i32 46, float %455, float %434, float %457)  ; FMad(a,b,c)
  %459 = call float @dx.op.tertiary.f32(i32 46, float %456, float %440, float %458)  ; FMad(a,b,c)
  %460 = fadd fast float %459, %446
  %461 = fmul fast float %454, %429
  %462 = call float @dx.op.tertiary.f32(i32 46, float %455, float %435, float %461)  ; FMad(a,b,c)
  %463 = call float @dx.op.tertiary.f32(i32 46, float %456, float %441, float %462)  ; FMad(a,b,c)
  %464 = fadd fast float %463, %447
  %465 = fmul fast float %454, %430
  %466 = call float @dx.op.tertiary.f32(i32 46, float %455, float %436, float %465)  ; FMad(a,b,c)
  %467 = call float @dx.op.tertiary.f32(i32 46, float %456, float %442, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %467, %448
  %469 = fmul fast float %454, %431
  %470 = call float @dx.op.tertiary.f32(i32 46, float %455, float %437, float %469)  ; FMad(a,b,c)
  %471 = call float @dx.op.tertiary.f32(i32 46, float %456, float %443, float %470)  ; FMad(a,b,c)
  %472 = fadd fast float %471, %449
  %473 = fdiv fast float %460, %472
  %474 = fdiv fast float %464, %472
  %475 = fdiv fast float %468, %472
  %476 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %475)  ; FMax(a,b)
  %477 = fmul fast float %216, 0x401921FB60000000
  %478 = call float @dx.op.unary.f32(i32 13, float %477)  ; Sin(value)
  %479 = call float @dx.op.unary.f32(i32 12, float %477)  ; Cos(value)
  %480 = fmul fast float %479, %424
  %481 = call float @dx.op.tertiary.f32(i32 46, float %478, float %424, float 0.000000e+00)  ; FMad(a,b,c)
  %482 = fmul fast float %424, %478
  %483 = fsub fast float -0.000000e+00, %482
  %484 = call float @dx.op.tertiary.f32(i32 46, float %479, float %424, float 0.000000e+00)  ; FMad(a,b,c)
  br label %485

; <label>:485                                     ; preds = %485, %410
  %486 = phi float [ 0.000000e+00, %410 ], [ %518, %485 ]
  %487 = phi float [ 0.000000e+00, %410 ], [ %520, %485 ]
  %488 = phi i32 [ 0, %410 ], [ %521, %485 ]
  %489 = mul i32 %488, 2
  %490 = add i32 0, %489
  %491 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %490
  %492 = load float, float* %491, align 4
  %493 = mul i32 %488, 2
  %494 = add i32 1, %493
  %495 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %494
  %496 = load float, float* %495, align 4
  %497 = fmul fast float %480, %492
  %498 = call float @dx.op.tertiary.f32(i32 46, float %496, float %483, float %497)  ; FMad(a,b,c)
  %499 = fmul fast float %492, %481
  %500 = call float @dx.op.tertiary.f32(i32 46, float %496, float %484, float %499)  ; FMad(a,b,c)
  %501 = fadd fast float %498, %473
  %502 = fadd fast float %500, %474
  %503 = fmul fast float %501, %419
  %504 = fmul fast float %502, %419
  %505 = call float @dx.op.binary.f32(i32 35, float %503, float %415)  ; FMax(a,b)
  %506 = call float @dx.op.binary.f32(i32 35, float %504, float %415)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 36, float %505, float %416)  ; FMin(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %506, float %416)  ; FMin(a,b)
  %509 = fadd fast float %507, %413
  %510 = fadd fast float %508, %414
  %511 = uitofp i32 %450 to float
  %512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %509, float %510, float %511, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = fsub fast float %513, %476
  %515 = fsub fast float %514, %423
  %516 = fcmp fast ogt float %515, 0.000000e+00
  %517 = select i1 %516, float 1.000000e+00, float 0.000000e+00
  %518 = fadd fast float %517, %486
  %519 = select i1 %516, float %515, float 0.000000e+00
  %520 = fadd fast float %519, %487
  %521 = add nuw nsw i32 %488, 1
  %522 = icmp eq i32 %521, 8
  br i1 %522, label %523, label %485

; <label>:523                                     ; preds = %485
  %524 = fdiv fast float 1.000000e+00, %518
  %525 = fmul fast float %524, %520
  %526 = fdiv fast float 1.000000e+00, %476
  %527 = fmul fast float %525, %526
  %528 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %529 = call float @dx.op.binary.f32(i32 35, float %528, float 0.000000e+00)  ; FMax(a,b)
  %530 = fmul fast float %518, 1.250000e-01
  %531 = call float @dx.op.unary.f32(i32 7, float %530)  ; Saturate(value)
  %532 = fmul fast float %531, 2.000000e+00
  %533 = fadd fast float %532, -1.000000e+00
  %534 = fcmp fast ogt float %533, 0.000000e+00
  %535 = fcmp fast olt float %533, 0.000000e+00
  %536 = zext i1 %534 to i32
  %537 = zext i1 %535 to i32
  %538 = sub nsw i32 %536, %537
  %539 = sitofp i32 %538 to float
  %540 = fmul fast float %539, %533
  %541 = fsub fast float 1.000000e+00, %540
  %542 = fmul fast float %541, %541
  %543 = fmul fast float %542, %541
  %544 = fsub fast float %541, %543
  %545 = fmul fast float %544, %529
  %546 = fsub fast float 1.000000e+00, %543
  %547 = fsub fast float %546, %545
  %548 = fmul fast float %539, 5.000000e-01
  %549 = fmul fast float %548, %547
  %550 = fsub fast float -5.000000e-01, %549
  %551 = fmul fast float %550, %392
  %552 = fadd fast float %551, 1.000000e+00
  %553 = fmul fast float %552, %404
  br label %554

; <label>:554                                     ; preds = %523, %371
  %555 = phi float [ %553, %523 ], [ %404, %371 ]
  %556 = call float @dx.op.binary.f32(i32 36, float %555, float %555)  ; FMin(a,b)
  %557 = call float @dx.op.binary.f32(i32 36, float %555, float %556)  ; FMin(a,b)
  %558 = fcmp fast ogt float %557, 0.000000e+00
  %559 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %344, float %345, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %560 = fcmp fast ogt float %559, 0.000000e+00
  %561 = and i1 %558, %560
  br i1 %561, label %562, label %831, !dx.controlflow.hints !37

; <label>:562                                     ; preds = %554
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %567 = select i1 %53, float %564, float %566
  %568 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %569 = extractvalue %dx.types.CBufRet.f32 %565, 2
  %570 = select i1 %53, float %568, float %569
  %571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.i32 %571, 0
  %573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.i32 %573, 0
  %575 = select i1 %53, i32 %572, i32 %574
  %576 = fcmp fast olt float %567, 5.000000e-01
  %577 = icmp eq i32 %575, 0
  %578 = or i1 %576, %577
  br i1 %578, label %826, label %579, !dx.controlflow.hints !38

; <label>:579                                     ; preds = %562
  %580 = fsub fast float %304, %115
  %581 = fsub fast float %305, %116
  %582 = fsub fast float %306, %117
  %583 = fmul fast float %580, %580
  %584 = fmul fast float %581, %581
  %585 = fadd fast float %583, %584
  %586 = fmul fast float %582, %582
  %587 = fadd fast float %585, %586
  %588 = call float @dx.op.unary.f32(i32 24, float %587)  ; Sqrt(value)
  %589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.i32 %589, 0
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %567, %301
  %593 = fdiv fast float %592, %588
  %594 = call float @dx.op.binary.f32(i32 36, float %593, float 1.000000e+01)  ; FMin(a,b)
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %598 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %599 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %603 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %604 = extractvalue %dx.types.CBufRet.f32 %600, 3
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %609 = extractvalue %dx.types.CBufRet.f32 %605, 3
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %614 = extractvalue %dx.types.CBufRet.f32 %610, 3
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %618 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %619 = extractvalue %dx.types.CBufRet.f32 %615, 3
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %622 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %623 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %624 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %625 = select i1 %53, float %596, float %611
  %626 = select i1 %53, float %601, float %616
  %627 = select i1 %53, float %606, float %621
  %628 = select i1 %53, float %597, float %612
  %629 = select i1 %53, float %602, float %617
  %630 = select i1 %53, float %607, float %622
  %631 = select i1 %53, float %598, float %613
  %632 = select i1 %53, float %603, float %618
  %633 = select i1 %53, float %608, float %623
  %634 = select i1 %53, float %599, float %614
  %635 = select i1 %53, float %604, float %619
  %636 = select i1 %53, float %609, float %624
  %637 = fmul fast float %217, 0x401061CAC0000000
  %638 = fmul fast float %217, 0x4023E1D7E0000000
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %642 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %643 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %644 = fsub fast float -0.000000e+00, %344
  %645 = fmul fast float %346, %644
  %646 = fmul fast float %344, %644
  %647 = fmul fast float %345, %345
  %648 = fsub fast float %646, %647
  %649 = fdiv fast float 1.000000e+00, %60
  %650 = fmul fast float %642, %49
  %651 = fmul fast float %643, %50
  %652 = fmul fast float %567, %344
  %653 = fmul fast float %567, %346
  %654 = fadd fast float %652, %115
  %655 = fadd fast float %653, %117
  %656 = fadd fast float %638, 5.000000e-01
  %657 = call float @dx.op.unary.f32(i32 22, float %656)  ; Frc(value)
  %658 = bitcast float %657 to i32
  %659 = ashr i32 %658, 1
  %660 = add nsw i32 %659, 532487669
  %661 = bitcast i32 %660 to float
  %662 = fmul fast float %661, %594
  %663 = fadd fast float %637, 5.000000e-01
  %664 = call float @dx.op.unary.f32(i32 22, float %663)  ; Frc(value)
  %665 = fmul fast float %664, 0x401921FB60000000
  %666 = call float @dx.op.unary.f32(i32 12, float %665)  ; Cos(value)
  %667 = fmul fast float %666, %666
  %668 = fsub fast float 1.000000e+00, %667
  %669 = bitcast float %668 to i32
  %670 = ashr i32 %669, 1
  %671 = add nsw i32 %670, 532487669
  %672 = bitcast i32 %671 to float
  %673 = fmul fast float %662, %666
  %674 = fmul fast float %673, %345
  %675 = fmul fast float %673, %644
  %676 = fadd fast float %654, %674
  %677 = fmul fast float %672, %662
  %678 = fmul fast float %645, %677
  %679 = fmul fast float %677, %346
  %680 = fmul fast float %677, %648
  %681 = fsub fast float %676, %678
  %682 = fadd fast float %679, %567
  %683 = fmul fast float %682, %345
  %684 = fadd fast float %675, %116
  %685 = fadd fast float %684, %683
  %686 = fadd fast float %655, %680
  %687 = fmul fast float %681, %625
  %688 = call float @dx.op.tertiary.f32(i32 46, float %685, float %628, float %687)  ; FMad(a,b,c)
  %689 = call float @dx.op.tertiary.f32(i32 46, float %686, float %631, float %688)  ; FMad(a,b,c)
  %690 = fadd fast float %689, %634
  %691 = fmul fast float %681, %626
  %692 = call float @dx.op.tertiary.f32(i32 46, float %685, float %629, float %691)  ; FMad(a,b,c)
  %693 = call float @dx.op.tertiary.f32(i32 46, float %686, float %632, float %692)  ; FMad(a,b,c)
  %694 = fadd fast float %693, %635
  %695 = fmul fast float %681, %627
  %696 = call float @dx.op.tertiary.f32(i32 46, float %685, float %630, float %695)  ; FMad(a,b,c)
  %697 = call float @dx.op.tertiary.f32(i32 46, float %686, float %633, float %696)  ; FMad(a,b,c)
  %698 = fadd fast float %697, %636
  %699 = fdiv fast float 1.000000e+00, %698
  %700 = fmul fast float %690, 5.000000e-01
  %701 = fmul fast float %694, -5.000000e-01
  %702 = fmul fast float %700, %699
  %703 = fmul fast float %701, %699
  %704 = fsub fast float 5.000000e-01, %650
  %705 = fadd fast float %704, %702
  %706 = fsub fast float 5.000000e-01, %651
  %707 = fadd fast float %706, %703
  %708 = fsub fast float %699, %649
  %709 = call float @dx.op.dot2.f32(i32 54, float %705, float %707, float %705, float %707)  ; Dot2(ax,ay,bx,by)
  %710 = call float @dx.op.binary.f32(i32 35, float %709, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %711 = call float @dx.op.dot2.f32(i32 54, float %640, float %641, float %640, float %641)  ; Dot2(ax,ay,bx,by)
  %712 = fmul fast float %711, %710
  %713 = call float @dx.op.unary.f32(i32 25, float %712)  ; Rsqrt(value)
  %714 = fmul fast float %713, %705
  %715 = fmul fast float %713, %707
  %716 = fadd fast float %714, %650
  %717 = fadd fast float %715, %651
  %718 = fmul fast float %705, %640
  %719 = fmul fast float %707, %641
  %720 = fmul fast float %718, %718
  %721 = fmul fast float %719, %719
  %722 = fadd fast float %720, %721
  %723 = call float @dx.op.unary.f32(i32 24, float %722)  ; Sqrt(value)
  %724 = fdiv fast float 1.000000e+00, %723
  %725 = fmul fast float %723, 3.906250e-03
  %726 = fmul fast float %203, 0x3F70624DE0000000
  %727 = fadd fast float %726, 0x3F70624DE0000000
  %728 = icmp sgt i32 %575, -1
  br i1 %728, label %729, label %791

; <label>:729                                     ; preds = %579
  br label %730

; <label>:730                                     ; preds = %787, %729
  %731 = phi float [ %762, %787 ], [ %60, %729 ]
  %732 = phi float [ %749, %787 ], [ %60, %729 ]
  %733 = phi float [ %732, %787 ], [ %60, %729 ]
  %734 = phi i32 [ %788, %787 ], [ 0, %729 ]
  %735 = sitofp i32 %734 to float
  %736 = fadd fast float %217, 5.000000e-01
  %737 = call float @dx.op.unary.f32(i32 22, float %736)  ; Frc(value)
  %738 = fadd fast float %735, %737
  %739 = sitofp i32 %575 to float
  %740 = fdiv fast float %738, %739
  %741 = fmul fast float %740, %740
  %742 = call float @dx.op.binary.f32(i32 36, float %741, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %743 = fmul fast float %742, %705
  %744 = fmul fast float %742, %707
  %745 = fmul fast float %742, %708
  %746 = fadd fast float %743, %716
  %747 = fadd fast float %744, %717
  %748 = fadd fast float %745, %649
  %749 = fdiv fast float 1.000000e+00, %748
  %750 = icmp ne i32 %590, 0
  %751 = fmul fast float %725, %742
  %752 = call float @dx.op.binary.f32(i32 36, float %751, float %591)  ; FMin(a,b)
  %753 = select i1 %750, float %752, float 0.000000e+00
  %754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %746, float %747, float undef, float undef, i32 0, i32 0, i32 undef, float %753)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  %756 = fcmp fast ogt float %755, -1.000000e+00
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %759 = select i1 %756, float %758, float 1.000000e+00
  %760 = fadd fast float %755, 1.000000e+00
  %761 = fmul fast float %759, %760
  %762 = call float @dx.op.unary.f32(i32 6, float %761)  ; FAbs(value)
  %763 = fmul fast float %762, %727
  %764 = fsub fast float %749, %762
  %765 = fsub fast float %764, %763
  %766 = fcmp fast ogt float %765, 0.000000e+00
  %767 = fcmp fast ogt float %570, 0.000000e+00
  br i1 %767, label %768, label %771, !dx.controlflow.hints !39

; <label>:768                                     ; preds = %730
  %769 = fsub fast float %749, %733
  %770 = call float @dx.op.binary.f32(i32 35, float %769, float %570)  ; FMax(a,b)
  br label %771

; <label>:771                                     ; preds = %768, %730
  %772 = phi float [ %770, %768 ], [ %567, %730 ]
  %773 = fcmp fast olt float %765, %772
  %774 = fcmp uge float %755, -1.000000e+00
  %775 = or i1 %53, %774
  %776 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %777 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  %778 = fcmp fast oeq float %746, %776
  %779 = fcmp fast oeq float %747, %777
  %780 = and i1 %778, %779
  %781 = and i1 %775, %780
  %782 = and i1 %766, %773
  %783 = and i1 %782, %781
  %784 = fcmp fast ogt float %742, %724
  %785 = and i1 %784, %783
  %786 = zext i1 %785 to i32
  br i1 %785, label %790, label %787, !dx.controlflow.hints !40

; <label>:787                                     ; preds = %771
  %788 = add nuw nsw i32 %734, 1
  %789 = icmp slt i32 %734, %575
  br i1 %789, label %730, label %790

; <label>:790                                     ; preds = %787, %771
  br label %791

; <label>:791                                     ; preds = %790, %579
  %792 = phi i32 [ 0, %579 ], [ %786, %790 ]
  %793 = phi float [ %60, %579 ], [ %762, %790 ]
  %794 = phi float [ %60, %579 ], [ %731, %790 ]
  %795 = phi float [ %60, %579 ], [ %749, %790 ]
  %796 = phi float [ %60, %579 ], [ %732, %790 ]
  %797 = fsub fast float %796, %794
  %798 = fsub fast float %795, %793
  %799 = fsub fast float %797, %798
  %800 = fcmp fast une float %799, 0.000000e+00
  %801 = fmul fast float %797, %795
  %802 = fmul fast float %796, %798
  %803 = fsub fast float %801, %802
  %804 = fdiv fast float 1.000000e+00, %799
  %805 = fmul fast float %803, %804
  %806 = select i1 %800, float %805, float %795
  %807 = fdiv fast float 1.000000e+00, %806
  %808 = fsub fast float %807, %649
  %809 = fdiv fast float %808, %708
  %810 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %811 = fmul fast float %810, %705
  %812 = fmul fast float %810, %707
  %813 = fadd fast float %811, %716
  %814 = fadd fast float %812, %717
  %815 = fadd fast float %813, -5.000000e-01
  %816 = fadd fast float %814, -5.000000e-01
  %817 = call float @dx.op.unary.f32(i32 6, float %815)  ; FAbs(value)
  %818 = call float @dx.op.unary.f32(i32 6, float %816)  ; FAbs(value)
  %819 = fadd fast float %817, -5.000000e-01
  %820 = fadd fast float %818, -5.000000e-01
  %821 = call float @dx.op.binary.f32(i32 35, float %819, float %820)  ; FMax(a,b)
  %822 = fcmp fast olt float %821, 0.000000e+00
  %823 = icmp ne i32 %792, 0
  %824 = and i1 %823, %822
  %825 = select i1 %824, float 0.000000e+00, float 1.000000e+00
  br label %826

; <label>:826                                     ; preds = %791, %562
  %827 = phi float [ %825, %791 ], [ 1.000000e+00, %562 ]
  %828 = fmul fast float %827, %555
  %829 = fmul fast float %827, %555
  %830 = fmul fast float %827, %555
  br label %831

; <label>:831                                     ; preds = %826, %554
  %832 = phi float [ %828, %826 ], [ %555, %554 ]
  %833 = phi float [ %829, %826 ], [ %555, %554 ]
  %834 = phi float [ %830, %826 ], [ %555, %554 ]
  %835 = call float @dx.op.binary.f32(i32 36, float %833, float %834)  ; FMin(a,b)
  %836 = call float @dx.op.binary.f32(i32 36, float %832, float %835)  ; FMin(a,b)
  %837 = fcmp fast ogt float %836, 0x3F10000000000000
  %838 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %837)  ; WaveAnyTrue(cond)
  %839 = select i1 %838, i32 %283, i32 0
  %840 = or i32 %278, %839
  %841 = lshr i32 %222, 5
  %842 = lshr i32 %223, 5
  %843 = fcmp fast olt float %832, 0x3F10000000000000
  %844 = call i1 @dx.op.waveAllTrue(i32 114, i1 %843)  ; WaveAllTrue(cond)
  %845 = fcmp fast ogt float %832, 0x3FEFFF8000000000
  %846 = call i1 @dx.op.waveAllTrue(i32 114, i1 %845)  ; WaveAllTrue(cond)
  %847 = or i1 %844, %846
  %848 = xor i1 %847, true
  %849 = lshr i32 %223, 1
  %850 = and i32 %849, 8
  %851 = lshr i32 %222, 2
  %852 = and i32 %851, 4
  %853 = or i32 %850, %34
  %854 = or i32 %853, %852
  %855 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %855, label %856, label %895, !dx.controlflow.hints !41

; <label>:856                                     ; preds = %831
  %857 = shl i32 1, %854
  %858 = select i1 %846, i32 %857, i32 0
  %859 = shl i32 65536, %854
  %860 = select i1 %844, i32 %859, i32 0
  %861 = or i32 %858, %860
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %865, label %863, !dx.controlflow.hints !42

; <label>:863                                     ; preds = %856
  %864 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %841, i32 %842, i32 %281, i32 %861)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %865

; <label>:865                                     ; preds = %863, %856
  br i1 %847, label %895, label %866

; <label>:866                                     ; preds = %865
  br label %867

; <label>:867                                     ; preds = %892, %866
  %868 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %841, i32 %842, i32 %281, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %869 = and i32 %868, 3
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %871, label %892, !dx.controlflow.hints !43

; <label>:871                                     ; preds = %867
  %872 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.i32 %873, 3
  %875 = call i32 @dx.op.binary.i32(i32 40, i32 %874, i32 %872)  ; UMin(a,b)
  %876 = extractvalue %dx.types.CBufRet.i32 %873, 2
  %877 = udiv i32 %875, %876
  %878 = urem i32 %875, %876
  %879 = extractvalue %dx.types.CBufRet.i32 %873, 1
  %880 = urem i32 %878, %879
  %881 = udiv i32 %878, %879
  %882 = shl i32 %880, 6
  %883 = and i32 %882, 32704
  %884 = shl i32 %881, 15
  %885 = and i32 %884, 8355840
  %886 = shl i32 %877, 23
  %887 = and i32 %886, 2139095040
  %888 = or i32 %887, %883
  %889 = or i32 %888, %885
  %890 = or i32 %889, 3
  %891 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %841, i32 %842, i32 %281, i32 %890)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %895

; <label>:892                                     ; preds = %867
  %893 = icmp eq i32 %869, 3
  br i1 %893, label %894, label %867, !dx.controlflow.hints !44

; <label>:894                                     ; preds = %892
  br label %895

; <label>:895                                     ; preds = %894, %871, %865, %831
  %896 = phi i32 [ 0, %865 ], [ %890, %871 ], [ 0, %831 ], [ %868, %894 ]
  %897 = phi i1 [ false, %865 ], [ %848, %871 ], [ %848, %831 ], [ %848, %894 ]
  br i1 %897, label %898, label %914, !dx.controlflow.hints !45

; <label>:898                                     ; preds = %895
  %899 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %896)  ; WaveReadLaneFirst(value)
  %900 = lshr i32 %899, 23
  %901 = and i32 %900, 255
  %902 = and i32 %222, 31
  %903 = and i32 %223, 31
  %904 = lshr i32 %899, 1
  %905 = and i32 %904, 16352
  %906 = lshr i32 %899, 10
  %907 = and i32 %906, 8160
  %908 = or i32 %905, %902
  %909 = or i32 %907, %903
  %910 = fmul fast float %832, 2.550000e+02
  %911 = fadd fast float %910, %216
  %912 = call float @dx.op.unary.f32(i32 27, float %911)  ; Round_ni(value)
  %913 = fmul fast float %912, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %908, i32 %909, i32 %901, float %913, float %913, float %913, float %913, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %914

; <label>:914                                     ; preds = %898, %895
  %915 = icmp eq i32 %279, %283
  br i1 %915, label %916, label %277, !llvm.loop !46

; <label>:916                                     ; preds = %914
  br label %917

; <label>:917                                     ; preds = %916, %249
  %918 = phi i32 [ 0, %249 ], [ %840, %916 ]
  %919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.i32 %919, 0
  %921 = call i32 @dx.op.tertiary.i32(i32 49, i32 %228, i32 %920, i32 %250)  ; UMad(a,b,c)
  %922 = shl i32 %921, 2
  %923 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %922, i32 undef, i32 undef, i32 %918)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %924 = add i32 %250, 1
  %925 = icmp ugt i32 %924, %246
  br i1 %925, label %926, label %249

; <label>:926                                     ; preds = %917
  br label %927

; <label>:927                                     ; preds = %926, %221, %0
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
!dx.entryPoints = !{!31}

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
!28 = !{!29, !30}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !32}
!32 = !{i32 0, i64 524560, i32 4, !33}
!33 = !{i32 8, i32 8, i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}

