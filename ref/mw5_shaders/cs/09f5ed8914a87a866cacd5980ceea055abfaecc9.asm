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
; shader hash: cc7a6c534319feeb162b8b522be2274d
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
  %64 = fmul fast float %62, 2.000000e+00
  %65 = fmul fast float %64, %49
  %66 = fmul fast float %63, 2.000000e+00
  %67 = fmul fast float %66, %50
  %68 = fsub fast float 1.000000e+00, %65
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
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = fmul fast float %148, 0x3FE3C6EF40000000
  %150 = frem fast float %49, 2.560000e+02
  %151 = frem fast float %50, 2.560000e+02
  %152 = fptoui float %150 to i32
  %153 = fptoui float %151 to i32
  %154 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %152, i32 %153, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fadd fast float %155, %149
  %157 = call float @dx.op.unary.f32(i32 22, float %156)  ; Frc(value)
  %158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.i32 %158, 0
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %585, label %161, !dx.controlflow.hints !34

; <label>:161                                     ; preds = %0
  %162 = fptoui float %49 to i32
  %163 = fptoui float %50 to i32
  %164 = lshr i32 %162, 4
  %165 = lshr i32 %163, 4
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 0
  %168 = call i32 @dx.op.tertiary.i32(i32 49, i32 %165, i32 %167, i32 %164)  ; UMad(a,b,c)
  %169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.i32 %169, 0
  %171 = add nsw i32 %170, -1
  %172 = call i32 @dx.op.binary.i32(i32 37, i32 %171, i32 0)  ; IMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %60, float 0.000000e+00)  ; FMax(a,b)
  %174 = fptoui float %173 to i32
  %175 = lshr i32 %174, 5
  %176 = call i32 @dx.op.binary.i32(i32 40, i32 %175, i32 8191)  ; UMin(a,b)
  %177 = shl i32 %176, 2
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = lshr i32 %179, 16
  %181 = and i32 %179, 65535
  %182 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %180, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %183 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %181, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %184 = lshr i32 %182, 5
  %185 = lshr i32 %183, 5
  %186 = call i32 @dx.op.binary.i32(i32 40, i32 %185, i32 %172)  ; UMin(a,b)
  %187 = icmp ugt i32 %184, %186
  br i1 %187, label %585, label %188

; <label>:188                                     ; preds = %161
  br label %189

; <label>:189                                     ; preds = %575, %188
  %190 = phi i32 [ %582, %575 ], [ %184, %188 ]
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 0
  %193 = call i32 @dx.op.tertiary.i32(i32 49, i32 %168, i32 %192, i32 %190)  ; UMad(a,b,c)
  %194 = shl i32 %193, 2
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = shl i32 %190, 5
  %198 = sub nsw i32 %180, %197
  %199 = call i32 @dx.op.binary.i32(i32 37, i32 %198, i32 0)  ; IMax(a,b)
  %200 = call i32 @dx.op.binary.i32(i32 38, i32 %199, i32 31)  ; IMin(a,b)
  %201 = sub nsw i32 1, %180
  %202 = add nsw i32 %201, %181
  %203 = call i32 @dx.op.binary.i32(i32 37, i32 %202, i32 0)  ; IMax(a,b)
  %204 = call i32 @dx.op.binary.i32(i32 38, i32 %203, i32 32)  ; IMin(a,b)
  %205 = and i32 %204, 31
  %206 = shl i32 -1, %205
  %207 = xor i32 %206, -1
  %208 = and i32 %200, 31
  %209 = shl i32 %207, %208
  %210 = icmp eq i32 %204, 32
  %211 = select i1 %210, i32 -1, i32 %209
  %212 = and i32 %211, %196
  %213 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %212, i8 1)  ; WaveActiveBit(value,op)
  %214 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %213)  ; WaveReadLaneFirst(value)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %575, label %216

; <label>:216                                     ; preds = %189
  br label %217

; <label>:217                                     ; preds = %572, %216
  %218 = phi i32 [ %498, %572 ], [ 0, %216 ]
  %219 = phi i32 [ %224, %572 ], [ %214, %216 ]
  %220 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %219)  ; FirstbitLo(value)
  %221 = add i32 %220, %197
  %222 = and i32 %220, 31
  %223 = shl i32 1, %222
  %224 = xor i32 %223, %219
  %225 = mul i32 %221, 112
  %226 = add i32 %225, 16
  %227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = extractvalue %dx.types.ResRet.f32 %227, 1
  %230 = extractvalue %dx.types.ResRet.f32 %227, 2
  %231 = add i32 %225, 28
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = add i32 %225, 32
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = add i32 %225, 48
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = extractvalue %dx.types.ResRet.f32 %240, 3
  %245 = add i32 %225, 64
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = add i32 %225, 92
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = uitofp i32 %254 to float
  %256 = lshr i32 %253, 16
  %257 = uitofp i32 %256 to float
  %258 = and i32 %233, 65535
  %259 = and i32 %233, 50331648
  %260 = icmp eq i32 %259, 33554432
  %261 = call float @dx.op.dot3.f32(i32 55, float %236, float %237, float %238, float %236, float %237, float %238)  ; Dot3(ax,ay,az,bx,by,bz)
  %262 = fsub fast float %115, %241
  %263 = fsub fast float %116, %242
  %264 = fsub fast float %117, %243
  %265 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %236, float %237, float %238)  ; Dot3(ax,ay,az,bx,by,bz)
  %266 = fdiv fast float %265, %261
  %267 = call float @dx.op.binary.f32(i32 35, float %266, float -1.000000e+00)  ; FMax(a,b)
  %268 = call float @dx.op.binary.f32(i32 36, float %267, float 1.000000e+00)  ; FMin(a,b)
  %269 = fmul fast float %268, %236
  %270 = fmul fast float %268, %237
  %271 = fmul fast float %268, %238
  %272 = fadd fast float %269, %241
  %273 = fadd fast float %270, %242
  %274 = fadd fast float %271, %243
  %275 = fsub fast float %272, %115
  %276 = fsub fast float %273, %116
  %277 = fsub fast float %274, %117
  %278 = call float @dx.op.dot3.f32(i32 55, float %275, float %276, float %277, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %279 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %280 = fdiv fast float 1.000000e+00, %279
  %281 = fmul fast float %275, %280
  %282 = fmul fast float %276, %280
  %283 = fmul fast float %277, %280
  br i1 %260, label %284, label %308, !dx.controlflow.hints !35

; <label>:284                                     ; preds = %217
  %285 = fmul fast float %249, %228
  %286 = fmul fast float %249, %229
  %287 = fmul fast float %249, %230
  %288 = fsub fast float %285, %115
  %289 = fadd fast float %288, %272
  %290 = fsub fast float %286, %116
  %291 = fadd fast float %290, %273
  %292 = fsub fast float %287, %117
  %293 = fadd fast float %292, %274
  %294 = call float @dx.op.dot3.f32(i32 55, float %289, float %291, float %293, float %289, float %291, float %293)  ; Dot3(ax,ay,az,bx,by,bz)
  %295 = call float @dx.op.unary.f32(i32 25, float %294)  ; Rsqrt(value)
  %296 = fmul fast float %295, %289
  %297 = fmul fast float %295, %291
  %298 = fmul fast float %295, %293
  %299 = fsub fast float %115, %272
  %300 = fsub fast float %116, %273
  %301 = fsub fast float %117, %274
  %302 = fsub fast float -0.000000e+00, %299
  %303 = fsub fast float -0.000000e+00, %300
  %304 = fsub fast float -0.000000e+00, %301
  %305 = call float @dx.op.dot3.f32(i32 55, float %302, float %303, float %304, float %228, float %229, float %230)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fcmp fast ogt float %305, 0.000000e+00
  %307 = uitofp i1 %306 to float
  br label %308

; <label>:308                                     ; preds = %284, %217
  %309 = phi float [ %307, %284 ], [ 1.000000e+00, %217 ]
  %310 = phi float [ %296, %284 ], [ %281, %217 ]
  %311 = phi float [ %297, %284 ], [ %282, %217 ]
  %312 = phi float [ %298, %284 ], [ %283, %217 ]
  %313 = call float @dx.op.dot3.f32(i32 55, float %228, float %229, float %230, float %310, float %311, float %312)  ; Dot3(ax,ay,az,bx,by,bz)
  %314 = fmul fast float %313, %313
  %315 = call float @dx.op.unary.f32(i32 7, float %314)  ; Saturate(value)
  %316 = fsub fast float 1.000000e+00, %315
  %317 = fmul fast float %316, 5.000000e-01
  %318 = fcmp fast ogt float %313, 0.000000e+00
  %319 = fsub fast float 1.000000e+00, %317
  %320 = select i1 %318, float %317, float %319
  %321 = fmul fast float %320, %257
  %322 = fadd fast float %321, %255
  %323 = fmul fast float %322, 0x3EF0001000000000
  %324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %323, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = fmul fast float %313, %247
  %327 = fadd fast float %326, %248
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  %329 = select i1 %260, float 1.000000e+00, float %328
  %330 = select i1 %260, float %328, float 1.000000e+00
  %331 = fmul fast float %279, %244
  %332 = fsub fast float 1.000000e+00, %331
  %333 = fmul fast float %332, %250
  %334 = call float @dx.op.unary.f32(i32 7, float %333)  ; Saturate(value)
  %335 = fmul fast float %334, %330
  %336 = fmul fast float %335, 2.000000e+00
  %337 = fsub fast float 3.000000e+00, %336
  %338 = fmul fast float %325, %309
  %339 = fmul fast float %335, %335
  %340 = fmul fast float %339, %338
  %341 = fmul fast float %340, %337
  %342 = icmp ne i32 %258, 255
  %343 = call float @dx.op.binary.f32(i32 36, float %341, float %341)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %341, float %343)  ; FMin(a,b)
  %345 = fcmp fast ogt float %344, 0.000000e+00
  %346 = and i1 %342, %345
  br i1 %346, label %347, label %491, !dx.controlflow.hints !36

; <label>:347                                     ; preds = %308
  %348 = mul nuw nsw i32 %258, 176
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = extractvalue %dx.types.ResRet.f32 %349, 3
  %354 = add nuw nsw i32 %348, 16
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = add nuw nsw i32 %348, 32
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = add nuw nsw i32 %348, 48
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = extractvalue %dx.types.ResRet.f32 %364, 3
  %369 = add nuw nsw i32 %348, 64
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = extractvalue %dx.types.ResRet.f32 %370, 3
  %375 = add nuw nsw i32 %348, 80
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = extractvalue %dx.types.ResRet.f32 %376, 3
  %381 = add nuw nsw i32 %348, 96
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = extractvalue %dx.types.ResRet.f32 %382, 2
  %386 = extractvalue %dx.types.ResRet.f32 %382, 3
  %387 = bitcast float %357 to i32
  %388 = fmul fast float %144, %362
  %389 = fmul fast float %145, %362
  %390 = fmul fast float %146, %362
  %391 = fadd fast float %388, %115
  %392 = fadd fast float %389, %116
  %393 = fadd fast float %390, %117
  %394 = fmul fast float %391, %365
  %395 = call float @dx.op.tertiary.f32(i32 46, float %392, float %371, float %394)  ; FMad(a,b,c)
  %396 = call float @dx.op.tertiary.f32(i32 46, float %393, float %377, float %395)  ; FMad(a,b,c)
  %397 = fadd fast float %396, %383
  %398 = fmul fast float %391, %366
  %399 = call float @dx.op.tertiary.f32(i32 46, float %392, float %372, float %398)  ; FMad(a,b,c)
  %400 = call float @dx.op.tertiary.f32(i32 46, float %393, float %378, float %399)  ; FMad(a,b,c)
  %401 = fadd fast float %400, %384
  %402 = fmul fast float %391, %367
  %403 = call float @dx.op.tertiary.f32(i32 46, float %392, float %373, float %402)  ; FMad(a,b,c)
  %404 = call float @dx.op.tertiary.f32(i32 46, float %393, float %379, float %403)  ; FMad(a,b,c)
  %405 = fadd fast float %404, %385
  %406 = fmul fast float %391, %368
  %407 = call float @dx.op.tertiary.f32(i32 46, float %392, float %374, float %406)  ; FMad(a,b,c)
  %408 = call float @dx.op.tertiary.f32(i32 46, float %393, float %380, float %407)  ; FMad(a,b,c)
  %409 = fadd fast float %408, %386
  %410 = fdiv fast float %397, %409
  %411 = fdiv fast float %401, %409
  %412 = fdiv fast float %405, %409
  %413 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %412)  ; FMax(a,b)
  %414 = fmul fast float %157, 0x401921FB60000000
  %415 = call float @dx.op.unary.f32(i32 13, float %414)  ; Sin(value)
  %416 = call float @dx.op.unary.f32(i32 12, float %414)  ; Cos(value)
  %417 = fmul fast float %416, %361
  %418 = call float @dx.op.tertiary.f32(i32 46, float %415, float %361, float 0.000000e+00)  ; FMad(a,b,c)
  %419 = fmul fast float %361, %415
  %420 = fsub fast float -0.000000e+00, %419
  %421 = call float @dx.op.tertiary.f32(i32 46, float %416, float %361, float 0.000000e+00)  ; FMad(a,b,c)
  br label %422

; <label>:422                                     ; preds = %422, %347
  %423 = phi float [ 0.000000e+00, %347 ], [ %455, %422 ]
  %424 = phi float [ 0.000000e+00, %347 ], [ %457, %422 ]
  %425 = phi i32 [ 0, %347 ], [ %458, %422 ]
  %426 = mul i32 %425, 2
  %427 = add i32 0, %426
  %428 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %427
  %429 = load float, float* %428, align 4
  %430 = mul i32 %425, 2
  %431 = add i32 1, %430
  %432 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %431
  %433 = load float, float* %432, align 4
  %434 = fmul fast float %417, %429
  %435 = call float @dx.op.tertiary.f32(i32 46, float %433, float %420, float %434)  ; FMad(a,b,c)
  %436 = fmul fast float %429, %418
  %437 = call float @dx.op.tertiary.f32(i32 46, float %433, float %421, float %436)  ; FMad(a,b,c)
  %438 = fadd fast float %435, %410
  %439 = fadd fast float %437, %411
  %440 = fmul fast float %438, %356
  %441 = fmul fast float %439, %356
  %442 = call float @dx.op.binary.f32(i32 35, float %440, float %352)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %441, float %352)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %442, float %353)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %443, float %353)  ; FMin(a,b)
  %446 = fadd fast float %444, %350
  %447 = fadd fast float %445, %351
  %448 = uitofp i32 %387 to float
  %449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %446, float %447, float %448, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = fsub fast float %450, %413
  %452 = fsub fast float %451, %360
  %453 = fcmp fast ogt float %452, 0.000000e+00
  %454 = select i1 %453, float 1.000000e+00, float 0.000000e+00
  %455 = fadd fast float %454, %423
  %456 = select i1 %453, float %452, float 0.000000e+00
  %457 = fadd fast float %456, %424
  %458 = add nuw nsw i32 %425, 1
  %459 = icmp eq i32 %458, 8
  br i1 %459, label %460, label %422

; <label>:460                                     ; preds = %422
  %461 = fdiv fast float 1.000000e+00, %455
  %462 = fmul fast float %461, %457
  %463 = fdiv fast float 1.000000e+00, %413
  %464 = fmul fast float %462, %463
  %465 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %466 = call float @dx.op.binary.f32(i32 35, float %465, float 0.000000e+00)  ; FMax(a,b)
  %467 = fmul fast float %455, 1.250000e-01
  %468 = call float @dx.op.unary.f32(i32 7, float %467)  ; Saturate(value)
  %469 = fmul fast float %468, 2.000000e+00
  %470 = fadd fast float %469, -1.000000e+00
  %471 = fcmp fast ogt float %470, 0.000000e+00
  %472 = fcmp fast olt float %470, 0.000000e+00
  %473 = zext i1 %471 to i32
  %474 = zext i1 %472 to i32
  %475 = sub nsw i32 %473, %474
  %476 = sitofp i32 %475 to float
  %477 = fmul fast float %476, %470
  %478 = fsub fast float 1.000000e+00, %477
  %479 = fmul fast float %478, %478
  %480 = fmul fast float %479, %478
  %481 = fsub fast float %478, %480
  %482 = fmul fast float %481, %466
  %483 = fsub fast float 1.000000e+00, %480
  %484 = fsub fast float %483, %482
  %485 = fmul fast float %476, 5.000000e-01
  %486 = fmul fast float %485, %484
  %487 = fsub fast float -5.000000e-01, %486
  %488 = fmul fast float %487, %329
  %489 = fadd fast float %488, 1.000000e+00
  %490 = fmul fast float %489, %341
  br label %491

; <label>:491                                     ; preds = %460, %308
  %492 = phi float [ %490, %460 ], [ %341, %308 ]
  %493 = call float @dx.op.binary.f32(i32 36, float %492, float %492)  ; FMin(a,b)
  %494 = call float @dx.op.binary.f32(i32 36, float %492, float %493)  ; FMin(a,b)
  %495 = fcmp fast ogt float %494, 0x3F10000000000000
  %496 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %495)  ; WaveAnyTrue(cond)
  %497 = select i1 %496, i32 %223, i32 0
  %498 = or i32 %218, %497
  %499 = lshr i32 %162, 5
  %500 = lshr i32 %163, 5
  %501 = fcmp fast olt float %492, 0x3F10000000000000
  %502 = call i1 @dx.op.waveAllTrue(i32 114, i1 %501)  ; WaveAllTrue(cond)
  %503 = fcmp fast ogt float %492, 0x3FEFFF8000000000
  %504 = call i1 @dx.op.waveAllTrue(i32 114, i1 %503)  ; WaveAllTrue(cond)
  %505 = or i1 %502, %504
  %506 = xor i1 %505, true
  %507 = lshr i32 %163, 1
  %508 = and i32 %507, 8
  %509 = lshr i32 %162, 2
  %510 = and i32 %509, 4
  %511 = or i32 %508, %34
  %512 = or i32 %511, %510
  %513 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %513, label %514, label %553, !dx.controlflow.hints !37

; <label>:514                                     ; preds = %491
  %515 = shl i32 1, %512
  %516 = select i1 %504, i32 %515, i32 0
  %517 = shl i32 65536, %512
  %518 = select i1 %502, i32 %517, i32 0
  %519 = or i32 %516, %518
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %523, label %521, !dx.controlflow.hints !38

; <label>:521                                     ; preds = %514
  %522 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %499, i32 %500, i32 %221, i32 %519)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %523

; <label>:523                                     ; preds = %521, %514
  br i1 %505, label %553, label %524

; <label>:524                                     ; preds = %523
  br label %525

; <label>:525                                     ; preds = %550, %524
  %526 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %499, i32 %500, i32 %221, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %527 = and i32 %526, 3
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %550, !dx.controlflow.hints !39

; <label>:529                                     ; preds = %525
  %530 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.i32 %531, 3
  %533 = call i32 @dx.op.binary.i32(i32 40, i32 %532, i32 %530)  ; UMin(a,b)
  %534 = extractvalue %dx.types.CBufRet.i32 %531, 2
  %535 = udiv i32 %533, %534
  %536 = urem i32 %533, %534
  %537 = extractvalue %dx.types.CBufRet.i32 %531, 1
  %538 = urem i32 %536, %537
  %539 = udiv i32 %536, %537
  %540 = shl i32 %538, 6
  %541 = and i32 %540, 32704
  %542 = shl i32 %539, 15
  %543 = and i32 %542, 8355840
  %544 = shl i32 %535, 23
  %545 = and i32 %544, 2139095040
  %546 = or i32 %545, %541
  %547 = or i32 %546, %543
  %548 = or i32 %547, 3
  %549 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %499, i32 %500, i32 %221, i32 %548)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %553

; <label>:550                                     ; preds = %525
  %551 = icmp eq i32 %527, 3
  br i1 %551, label %552, label %525, !dx.controlflow.hints !40

; <label>:552                                     ; preds = %550
  br label %553

; <label>:553                                     ; preds = %552, %529, %523, %491
  %554 = phi i32 [ 0, %523 ], [ %548, %529 ], [ 0, %491 ], [ %526, %552 ]
  %555 = phi i1 [ false, %523 ], [ %506, %529 ], [ %506, %491 ], [ %506, %552 ]
  br i1 %555, label %556, label %572, !dx.controlflow.hints !41

; <label>:556                                     ; preds = %553
  %557 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %554)  ; WaveReadLaneFirst(value)
  %558 = lshr i32 %557, 23
  %559 = and i32 %558, 255
  %560 = and i32 %162, 31
  %561 = and i32 %163, 31
  %562 = lshr i32 %557, 1
  %563 = and i32 %562, 16352
  %564 = lshr i32 %557, 10
  %565 = and i32 %564, 8160
  %566 = or i32 %563, %560
  %567 = or i32 %565, %561
  %568 = fmul fast float %492, 2.550000e+02
  %569 = fadd fast float %568, %157
  %570 = call float @dx.op.unary.f32(i32 27, float %569)  ; Round_ni(value)
  %571 = fmul fast float %570, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %566, i32 %567, i32 %559, float %571, float %571, float %571, float %571, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %572

; <label>:572                                     ; preds = %556, %553
  %573 = icmp eq i32 %219, %223
  br i1 %573, label %574, label %217, !llvm.loop !42

; <label>:574                                     ; preds = %572
  br label %575

; <label>:575                                     ; preds = %574, %189
  %576 = phi i32 [ 0, %189 ], [ %498, %574 ]
  %577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.i32 %577, 0
  %579 = call i32 @dx.op.tertiary.i32(i32 49, i32 %168, i32 %578, i32 %190)  ; UMad(a,b,c)
  %580 = shl i32 %579, 2
  %581 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %580, i32 undef, i32 undef, i32 %576)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %582 = add i32 %190, 1
  %583 = icmp ugt i32 %582, %186
  br i1 %583, label %584, label %189

; <label>:584                                     ; preds = %575
  br label %585

; <label>:585                                     ; preds = %584, %161, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

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
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}

