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
; shader hash: 05f0a53e8458530d14ea145553f45099
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

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4
@"\01?gsPackedTileData@@3IA" = external addrspace(3) global i32, align 4
@"\01?gsLightIterator@@3IA" = external addrspace(3) global i32, align 4
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
  %23 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = shl i32 %25, 2
  %29 = mul i32 %28, %27
  %30 = add i32 %29, %20
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
  %44 = or i32 %37, %21
  %45 = or i32 %44, %41
  %46 = or i32 %43, %22
  %47 = or i32 %46, %39
  %48 = uitofp i32 %45 to float
  %49 = uitofp i32 %47 to float
  %50 = fadd fast float %48, 5.000000e-01
  %51 = fadd fast float %49, 5.000000e-01
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %45, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = fcmp fast olt float %53, -1.000000e+00
  %55 = fcmp fast ogt float %53, -1.000000e+00
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %58 = select i1 %55, float %57, float 1.000000e+00
  %59 = fadd fast float %53, 1.000000e+00
  %60 = fmul fast float %58, %59
  %61 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %65 = fmul fast float %50, %63
  %66 = fmul fast float %51, %64
  %67 = fmul fast float %65, 2.000000e+00
  %68 = fmul fast float %66, 2.000000e+00
  %69 = fsub fast float 1.000000e+00, %67
  %70 = fsub fast float 1.000000e+00, %68
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = select i1 %54, float %72, float %76
  %80 = select i1 %54, float %73, float %77
  %81 = select i1 %54, float %74, float %78
  %82 = fmul fast float %69, %79
  %83 = fmul fast float %69, %80
  %84 = fmul fast float %69, %81
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
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
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 0
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %1127, label %222, !dx.controlflow.hints !34

; <label>:222                                     ; preds = %0
  %223 = fptoui float %50 to i32
  %224 = fptoui float %51 to i32
  %225 = lshr i32 %223, 4
  %226 = lshr i32 %224, 4
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 0
  %229 = call i32 @dx.op.tertiary.i32(i32 49, i32 %226, i32 %228, i32 %225)  ; UMad(a,b,c)
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
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
  %243 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %244 = udiv i32 %23, %243
  %245 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %241, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %246 = icmp eq i32 %243, 64
  br i1 %246, label %273, label %247, !dx.controlflow.hints !35

; <label>:247                                     ; preds = %222
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %248 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %248, label %249, label %251, !dx.controlflow.hints !36

; <label>:249                                     ; preds = %247
  %250 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %244
  store i32 %245, i32 addrspace(3)* %250, align 4, !tbaa !37
  br label %251

; <label>:251                                     ; preds = %249, %247
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %252 = icmp eq i32 %243, 32
  br i1 %252, label %253, label %258, !dx.controlflow.hints !41

; <label>:253                                     ; preds = %251
  %254 = xor i32 %244, 1
  %255 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %254
  %256 = load i32, i32 addrspace(3)* %255, align 4, !tbaa !37
  %257 = call i32 @dx.op.binary.i32(i32 40, i32 %245, i32 %256)  ; UMin(a,b)
  br label %273

; <label>:258                                     ; preds = %251
  %259 = icmp eq i32 %243, 16
  br i1 %259, label %260, label %273, !dx.controlflow.hints !42

; <label>:260                                     ; preds = %258
  %261 = xor i32 %244, 3
  %262 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %261
  %263 = load i32, i32 addrspace(3)* %262, align 4, !tbaa !37
  %264 = xor i32 %244, 2
  %265 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %264
  %266 = load i32, i32 addrspace(3)* %265, align 4, !tbaa !37
  %267 = call i32 @dx.op.binary.i32(i32 40, i32 %266, i32 %263)  ; UMin(a,b)
  %268 = xor i32 %244, 1
  %269 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %268
  %270 = load i32, i32 addrspace(3)* %269, align 4, !tbaa !37
  %271 = call i32 @dx.op.binary.i32(i32 40, i32 %245, i32 %270)  ; UMin(a,b)
  %272 = call i32 @dx.op.binary.i32(i32 40, i32 %271, i32 %267)  ; UMin(a,b)
  br label %273

; <label>:273                                     ; preds = %260, %258, %253, %222
  %274 = phi i32 [ %257, %253 ], [ %272, %260 ], [ %245, %222 ], [ 0, %258 ]
  %275 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %242, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %246, label %302, label %276, !dx.controlflow.hints !43

; <label>:276                                     ; preds = %273
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %277, label %278, label %280, !dx.controlflow.hints !44

; <label>:278                                     ; preds = %276
  %279 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %244
  store i32 %275, i32 addrspace(3)* %279, align 4, !tbaa !37
  br label %280

; <label>:280                                     ; preds = %278, %276
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %281 = icmp eq i32 %243, 32
  br i1 %281, label %282, label %287, !dx.controlflow.hints !45

; <label>:282                                     ; preds = %280
  %283 = xor i32 %244, 1
  %284 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %283
  %285 = load i32, i32 addrspace(3)* %284, align 4, !tbaa !37
  %286 = call i32 @dx.op.binary.i32(i32 39, i32 %275, i32 %285)  ; UMax(a,b)
  br label %302

; <label>:287                                     ; preds = %280
  %288 = icmp eq i32 %243, 16
  br i1 %288, label %289, label %302, !dx.controlflow.hints !46

; <label>:289                                     ; preds = %287
  %290 = xor i32 %244, 3
  %291 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %290
  %292 = load i32, i32 addrspace(3)* %291, align 4, !tbaa !37
  %293 = xor i32 %244, 2
  %294 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %293
  %295 = load i32, i32 addrspace(3)* %294, align 4, !tbaa !37
  %296 = call i32 @dx.op.binary.i32(i32 39, i32 %295, i32 %292)  ; UMax(a,b)
  %297 = xor i32 %244, 1
  %298 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %297
  %299 = load i32, i32 addrspace(3)* %298, align 4, !tbaa !37
  %300 = call i32 @dx.op.binary.i32(i32 39, i32 %275, i32 %299)  ; UMax(a,b)
  %301 = call i32 @dx.op.binary.i32(i32 39, i32 %300, i32 %296)  ; UMax(a,b)
  br label %302

; <label>:302                                     ; preds = %289, %287, %282, %273
  %303 = phi i32 [ %286, %282 ], [ %301, %289 ], [ %275, %273 ], [ 0, %287 ]
  %304 = lshr i32 %274, 5
  %305 = lshr i32 %303, 5
  %306 = call i32 @dx.op.binary.i32(i32 40, i32 %305, i32 %233)  ; UMin(a,b)
  %307 = icmp ugt i32 %304, %306
  br i1 %307, label %1127, label %308

; <label>:308                                     ; preds = %302
  br label %309

; <label>:309                                     ; preds = %1117, %308
  %310 = phi i32 [ %1124, %1117 ], [ %304, %308 ]
  %311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.i32 %311, 0
  %313 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %312, i32 %310)  ; UMad(a,b,c)
  %314 = shl i32 %313, 2
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %310, 5
  %318 = sub nsw i32 %241, %317
  %319 = call i32 @dx.op.binary.i32(i32 37, i32 %318, i32 0)  ; IMax(a,b)
  %320 = call i32 @dx.op.binary.i32(i32 38, i32 %319, i32 31)  ; IMin(a,b)
  %321 = sub nsw i32 1, %241
  %322 = add nsw i32 %321, %242
  %323 = call i32 @dx.op.binary.i32(i32 37, i32 %322, i32 0)  ; IMax(a,b)
  %324 = call i32 @dx.op.binary.i32(i32 38, i32 %323, i32 32)  ; IMin(a,b)
  %325 = and i32 %324, 31
  %326 = shl i32 -1, %325
  %327 = xor i32 %326, -1
  %328 = and i32 %320, 31
  %329 = shl i32 %327, %328
  %330 = icmp eq i32 %324, 32
  %331 = select i1 %330, i32 -1, i32 %329
  %332 = and i32 %331, %316
  %333 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %332, i8 1)  ; WaveActiveBit(value,op)
  br i1 %246, label %360, label %334, !dx.controlflow.hints !47

; <label>:334                                     ; preds = %309
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %335 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %335, label %336, label %338, !dx.controlflow.hints !48

; <label>:336                                     ; preds = %334
  %337 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %244
  store i32 %333, i32 addrspace(3)* %337, align 4, !tbaa !37
  br label %338

; <label>:338                                     ; preds = %336, %334
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %339 = icmp eq i32 %243, 32
  br i1 %339, label %340, label %345, !dx.controlflow.hints !49

; <label>:340                                     ; preds = %338
  %341 = xor i32 %244, 1
  %342 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %341
  %343 = load i32, i32 addrspace(3)* %342, align 4, !tbaa !37
  %344 = or i32 %343, %333
  br label %360

; <label>:345                                     ; preds = %338
  %346 = icmp eq i32 %243, 16
  br i1 %346, label %347, label %360, !dx.controlflow.hints !50

; <label>:347                                     ; preds = %345
  %348 = xor i32 %244, 1
  %349 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %348
  %350 = load i32, i32 addrspace(3)* %349, align 4, !tbaa !37
  %351 = or i32 %350, %333
  %352 = xor i32 %244, 2
  %353 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %352
  %354 = load i32, i32 addrspace(3)* %353, align 4, !tbaa !37
  %355 = or i32 %351, %354
  %356 = xor i32 %244, 3
  %357 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %356
  %358 = load i32, i32 addrspace(3)* %357, align 4, !tbaa !37
  %359 = or i32 %355, %358
  br label %360

; <label>:360                                     ; preds = %347, %345, %340, %309
  %361 = phi i32 [ %344, %340 ], [ %359, %347 ], [ %333, %309 ], [ 0, %345 ]
  br i1 %246, label %362, label %364, !dx.controlflow.hints !51

; <label>:362                                     ; preds = %360
  %363 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %361)  ; WaveReadLaneFirst(value)
  br label %369

; <label>:364                                     ; preds = %360
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %365 = icmp eq i32 %23, 0
  br i1 %365, label %366, label %367, !dx.controlflow.hints !52

; <label>:366                                     ; preds = %364
  store i32 %361, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %367

; <label>:367                                     ; preds = %366, %364
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %368 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %369

; <label>:369                                     ; preds = %367, %362
  %370 = phi i32 [ %363, %362 ], [ %368, %367 ]
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %1117, label %372

; <label>:372                                     ; preds = %369
  br label %373

; <label>:373                                     ; preds = %1114, %372
  %374 = phi i32 [ %968, %1114 ], [ 0, %372 ]
  %375 = phi i32 [ %380, %1114 ], [ %370, %372 ]
  %376 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %375)  ; FirstbitLo(value)
  %377 = add i32 %376, %317
  %378 = and i32 %376, 31
  %379 = shl i32 1, %378
  %380 = xor i32 %379, %375
  %381 = mul i32 %377, 112
  %382 = add i32 %381, 16
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = add i32 %381, 28
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = add i32 %381, 32
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = add i32 %381, 44
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = add i32 %381, 48
  %399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = extractvalue %dx.types.ResRet.f32 %399, 2
  %403 = extractvalue %dx.types.ResRet.f32 %399, 3
  %404 = add i32 %381, 64
  %405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = extractvalue %dx.types.ResRet.f32 %405, 3
  %410 = add i32 %381, 92
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 65535
  %414 = uitofp i32 %413 to float
  %415 = lshr i32 %412, 16
  %416 = uitofp i32 %415 to float
  %417 = and i32 %389, 65535
  %418 = and i32 %389, 50331648
  %419 = icmp eq i32 %418, 33554432
  %420 = call float @dx.op.dot3.f32(i32 55, float %392, float %393, float %394, float %392, float %393, float %394)  ; Dot3(ax,ay,az,bx,by,bz)
  %421 = fsub fast float %116, %400
  %422 = fsub fast float %117, %401
  %423 = fsub fast float %118, %402
  %424 = call float @dx.op.dot3.f32(i32 55, float %421, float %422, float %423, float %392, float %393, float %394)  ; Dot3(ax,ay,az,bx,by,bz)
  %425 = fdiv fast float %424, %420
  %426 = call float @dx.op.binary.f32(i32 35, float %425, float -1.000000e+00)  ; FMax(a,b)
  %427 = call float @dx.op.binary.f32(i32 36, float %426, float 1.000000e+00)  ; FMin(a,b)
  %428 = fmul fast float %427, %392
  %429 = fmul fast float %427, %393
  %430 = fmul fast float %427, %394
  %431 = fadd fast float %428, %400
  %432 = fadd fast float %429, %401
  %433 = fadd fast float %430, %402
  %434 = fsub fast float %431, %116
  %435 = fsub fast float %432, %117
  %436 = fsub fast float %433, %118
  %437 = call float @dx.op.dot3.f32(i32 55, float %434, float %435, float %436, float %434, float %435, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %438 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %439 = fdiv fast float 1.000000e+00, %438
  %440 = fmul fast float %434, %439
  %441 = fmul fast float %435, %439
  %442 = fmul fast float %436, %439
  br i1 %419, label %443, label %467, !dx.controlflow.hints !53

; <label>:443                                     ; preds = %373
  %444 = fmul fast float %408, %384
  %445 = fmul fast float %408, %385
  %446 = fmul fast float %408, %386
  %447 = fsub fast float %444, %116
  %448 = fadd fast float %447, %431
  %449 = fsub fast float %445, %117
  %450 = fadd fast float %449, %432
  %451 = fsub fast float %446, %118
  %452 = fadd fast float %451, %433
  %453 = call float @dx.op.dot3.f32(i32 55, float %448, float %450, float %452, float %448, float %450, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %454 = call float @dx.op.unary.f32(i32 25, float %453)  ; Rsqrt(value)
  %455 = fmul fast float %454, %448
  %456 = fmul fast float %454, %450
  %457 = fmul fast float %454, %452
  %458 = fsub fast float %116, %431
  %459 = fsub fast float %117, %432
  %460 = fsub fast float %118, %433
  %461 = fsub fast float -0.000000e+00, %458
  %462 = fsub fast float -0.000000e+00, %459
  %463 = fsub fast float -0.000000e+00, %460
  %464 = call float @dx.op.dot3.f32(i32 55, float %461, float %462, float %463, float %384, float %385, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = fcmp fast ogt float %464, 0.000000e+00
  %466 = uitofp i1 %465 to float
  br label %467

; <label>:467                                     ; preds = %443, %373
  %468 = phi float [ %466, %443 ], [ 1.000000e+00, %373 ]
  %469 = phi float [ %455, %443 ], [ %440, %373 ]
  %470 = phi float [ %456, %443 ], [ %441, %373 ]
  %471 = phi float [ %457, %443 ], [ %442, %373 ]
  %472 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float %469, float %470, float %471)  ; Dot3(ax,ay,az,bx,by,bz)
  %473 = fmul fast float %472, %472
  %474 = call float @dx.op.unary.f32(i32 7, float %473)  ; Saturate(value)
  %475 = fsub fast float 1.000000e+00, %474
  %476 = fmul fast float %475, 5.000000e-01
  %477 = fcmp fast ogt float %472, 0.000000e+00
  %478 = fsub fast float 1.000000e+00, %476
  %479 = select i1 %477, float %476, float %478
  %480 = fmul fast float %479, %416
  %481 = fadd fast float %480, %414
  %482 = fmul fast float %481, 0x3EF0001000000000
  %483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %482, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = fmul fast float %472, %406
  %486 = fadd fast float %485, %407
  %487 = call float @dx.op.unary.f32(i32 7, float %486)  ; Saturate(value)
  %488 = select i1 %419, float 1.000000e+00, float %487
  %489 = select i1 %419, float %487, float 1.000000e+00
  %490 = fmul fast float %438, %403
  %491 = fsub fast float 1.000000e+00, %490
  %492 = fmul fast float %491, %409
  %493 = call float @dx.op.unary.f32(i32 7, float %492)  ; Saturate(value)
  %494 = fmul fast float %493, %489
  %495 = fmul fast float %494, 2.000000e+00
  %496 = fsub fast float 3.000000e+00, %495
  %497 = fmul fast float %484, %468
  %498 = fmul fast float %494, %494
  %499 = fmul fast float %498, %497
  %500 = fmul fast float %499, %496
  %501 = icmp ne i32 %417, 255
  %502 = call float @dx.op.binary.f32(i32 36, float %500, float %500)  ; FMin(a,b)
  %503 = call float @dx.op.binary.f32(i32 36, float %500, float %502)  ; FMin(a,b)
  %504 = fcmp fast ogt float %503, 0.000000e+00
  %505 = and i1 %501, %504
  br i1 %505, label %506, label %650, !dx.controlflow.hints !54

; <label>:506                                     ; preds = %467
  %507 = mul nuw nsw i32 %417, 176
  %508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = add nuw nsw i32 %507, 16
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = add nuw nsw i32 %507, 32
  %518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = extractvalue %dx.types.ResRet.f32 %518, 2
  %522 = add nuw nsw i32 %507, 48
  %523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  %525 = extractvalue %dx.types.ResRet.f32 %523, 1
  %526 = extractvalue %dx.types.ResRet.f32 %523, 2
  %527 = extractvalue %dx.types.ResRet.f32 %523, 3
  %528 = add nuw nsw i32 %507, 64
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = extractvalue %dx.types.ResRet.f32 %529, 3
  %534 = add nuw nsw i32 %507, 80
  %535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = extractvalue %dx.types.ResRet.f32 %535, 1
  %538 = extractvalue %dx.types.ResRet.f32 %535, 2
  %539 = extractvalue %dx.types.ResRet.f32 %535, 3
  %540 = add nuw nsw i32 %507, 96
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = extractvalue %dx.types.ResRet.f32 %541, 3
  %546 = bitcast float %516 to i32
  %547 = fmul fast float %521, %145
  %548 = fmul fast float %521, %146
  %549 = fmul fast float %521, %147
  %550 = fadd fast float %547, %116
  %551 = fadd fast float %548, %117
  %552 = fadd fast float %549, %118
  %553 = fmul fast float %550, %524
  %554 = call float @dx.op.tertiary.f32(i32 46, float %551, float %530, float %553)  ; FMad(a,b,c)
  %555 = call float @dx.op.tertiary.f32(i32 46, float %552, float %536, float %554)  ; FMad(a,b,c)
  %556 = fadd fast float %555, %542
  %557 = fmul fast float %550, %525
  %558 = call float @dx.op.tertiary.f32(i32 46, float %551, float %531, float %557)  ; FMad(a,b,c)
  %559 = call float @dx.op.tertiary.f32(i32 46, float %552, float %537, float %558)  ; FMad(a,b,c)
  %560 = fadd fast float %559, %543
  %561 = fmul fast float %550, %526
  %562 = call float @dx.op.tertiary.f32(i32 46, float %551, float %532, float %561)  ; FMad(a,b,c)
  %563 = call float @dx.op.tertiary.f32(i32 46, float %552, float %538, float %562)  ; FMad(a,b,c)
  %564 = fadd fast float %563, %544
  %565 = fmul fast float %550, %527
  %566 = call float @dx.op.tertiary.f32(i32 46, float %551, float %533, float %565)  ; FMad(a,b,c)
  %567 = call float @dx.op.tertiary.f32(i32 46, float %552, float %539, float %566)  ; FMad(a,b,c)
  %568 = fadd fast float %567, %545
  %569 = fdiv fast float %556, %568
  %570 = fdiv fast float %560, %568
  %571 = fdiv fast float %564, %568
  %572 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %571)  ; FMax(a,b)
  %573 = fmul fast float %217, 0x401921FB60000000
  %574 = call float @dx.op.unary.f32(i32 13, float %573)  ; Sin(value)
  %575 = call float @dx.op.unary.f32(i32 12, float %573)  ; Cos(value)
  %576 = fmul fast float %575, %520
  %577 = call float @dx.op.tertiary.f32(i32 46, float %574, float %520, float 0.000000e+00)  ; FMad(a,b,c)
  %578 = fmul fast float %520, %574
  %579 = fsub fast float -0.000000e+00, %578
  %580 = call float @dx.op.tertiary.f32(i32 46, float %575, float %520, float 0.000000e+00)  ; FMad(a,b,c)
  br label %581

; <label>:581                                     ; preds = %581, %506
  %582 = phi float [ 0.000000e+00, %506 ], [ %614, %581 ]
  %583 = phi float [ 0.000000e+00, %506 ], [ %616, %581 ]
  %584 = phi i32 [ 0, %506 ], [ %617, %581 ]
  %585 = mul i32 %584, 2
  %586 = add i32 0, %585
  %587 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %586
  %588 = load float, float* %587, align 4
  %589 = mul i32 %584, 2
  %590 = add i32 1, %589
  %591 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %590
  %592 = load float, float* %591, align 4
  %593 = fmul fast float %576, %588
  %594 = call float @dx.op.tertiary.f32(i32 46, float %592, float %579, float %593)  ; FMad(a,b,c)
  %595 = fmul fast float %588, %577
  %596 = call float @dx.op.tertiary.f32(i32 46, float %592, float %580, float %595)  ; FMad(a,b,c)
  %597 = fadd fast float %594, %569
  %598 = fadd fast float %596, %570
  %599 = fmul fast float %597, %515
  %600 = fmul fast float %598, %515
  %601 = call float @dx.op.binary.f32(i32 35, float %599, float %511)  ; FMax(a,b)
  %602 = call float @dx.op.binary.f32(i32 35, float %600, float %511)  ; FMax(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float %601, float %512)  ; FMin(a,b)
  %604 = call float @dx.op.binary.f32(i32 36, float %602, float %512)  ; FMin(a,b)
  %605 = fadd fast float %603, %509
  %606 = fadd fast float %604, %510
  %607 = uitofp i32 %546 to float
  %608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %605, float %606, float %607, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = fsub fast float %609, %572
  %611 = fsub fast float %610, %519
  %612 = fcmp fast ogt float %611, 0.000000e+00
  %613 = select i1 %612, float 1.000000e+00, float 0.000000e+00
  %614 = fadd fast float %613, %582
  %615 = select i1 %612, float %611, float 0.000000e+00
  %616 = fadd fast float %615, %583
  %617 = add nuw nsw i32 %584, 1
  %618 = icmp eq i32 %617, 8
  br i1 %618, label %619, label %581

; <label>:619                                     ; preds = %581
  %620 = fdiv fast float 1.000000e+00, %614
  %621 = fmul fast float %620, %616
  %622 = fdiv fast float 1.000000e+00, %572
  %623 = fmul fast float %621, %622
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %625 = call float @dx.op.binary.f32(i32 35, float %624, float 0.000000e+00)  ; FMax(a,b)
  %626 = fmul fast float %614, 1.250000e-01
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = fmul fast float %627, 2.000000e+00
  %629 = fadd fast float %628, -1.000000e+00
  %630 = fcmp fast ogt float %629, 0.000000e+00
  %631 = fcmp fast olt float %629, 0.000000e+00
  %632 = zext i1 %630 to i32
  %633 = zext i1 %631 to i32
  %634 = sub nsw i32 %632, %633
  %635 = sitofp i32 %634 to float
  %636 = fmul fast float %635, %629
  %637 = fsub fast float 1.000000e+00, %636
  %638 = fmul fast float %637, %637
  %639 = fmul fast float %638, %637
  %640 = fsub fast float %637, %639
  %641 = fmul fast float %640, %625
  %642 = fsub fast float 1.000000e+00, %639
  %643 = fsub fast float %642, %641
  %644 = fmul fast float %635, 5.000000e-01
  %645 = fmul fast float %644, %643
  %646 = fsub fast float -5.000000e-01, %645
  %647 = fmul fast float %646, %488
  %648 = fadd fast float %647, 1.000000e+00
  %649 = fmul fast float %648, %500
  br label %650

; <label>:650                                     ; preds = %619, %467
  %651 = phi float [ %649, %619 ], [ %500, %467 ]
  %652 = call float @dx.op.binary.f32(i32 36, float %651, float %651)  ; FMin(a,b)
  %653 = call float @dx.op.binary.f32(i32 36, float %651, float %652)  ; FMin(a,b)
  %654 = fcmp fast ogt float %653, 0.000000e+00
  %655 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %440, float %441, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %656 = fcmp fast ogt float %655, 0.000000e+00
  %657 = and i1 %654, %656
  br i1 %657, label %658, label %927, !dx.controlflow.hints !55

; <label>:658                                     ; preds = %650
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %663 = select i1 %54, float %660, float %662
  %664 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %665 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %666 = select i1 %54, float %664, float %665
  %667 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.i32 %667, 0
  %669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.i32 %669, 0
  %671 = select i1 %54, i32 %668, i32 %670
  %672 = fcmp fast olt float %663, 5.000000e-01
  %673 = icmp eq i32 %671, 0
  %674 = or i1 %672, %673
  br i1 %674, label %922, label %675, !dx.controlflow.hints !56

; <label>:675                                     ; preds = %658
  %676 = fsub fast float %400, %116
  %677 = fsub fast float %401, %117
  %678 = fsub fast float %402, %118
  %679 = fmul fast float %676, %676
  %680 = fmul fast float %677, %677
  %681 = fadd fast float %679, %680
  %682 = fmul fast float %678, %678
  %683 = fadd fast float %681, %682
  %684 = call float @dx.op.unary.f32(i32 24, float %683)  ; Sqrt(value)
  %685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.i32 %685, 0
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %663, %397
  %689 = fdiv fast float %688, %684
  %690 = call float @dx.op.binary.f32(i32 36, float %689, float 1.000000e+01)  ; FMin(a,b)
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %694 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %691, 3
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %699 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %700 = extractvalue %dx.types.CBufRet.f32 %696, 3
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %703 = extractvalue %dx.types.CBufRet.f32 %701, 1
  %704 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %705 = extractvalue %dx.types.CBufRet.f32 %701, 3
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %709 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %710 = extractvalue %dx.types.CBufRet.f32 %706, 3
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 0
  %713 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %714 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %715 = extractvalue %dx.types.CBufRet.f32 %711, 3
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 0
  %718 = extractvalue %dx.types.CBufRet.f32 %716, 1
  %719 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %720 = extractvalue %dx.types.CBufRet.f32 %716, 3
  %721 = select i1 %54, float %692, float %707
  %722 = select i1 %54, float %697, float %712
  %723 = select i1 %54, float %702, float %717
  %724 = select i1 %54, float %693, float %708
  %725 = select i1 %54, float %698, float %713
  %726 = select i1 %54, float %703, float %718
  %727 = select i1 %54, float %694, float %709
  %728 = select i1 %54, float %699, float %714
  %729 = select i1 %54, float %704, float %719
  %730 = select i1 %54, float %695, float %710
  %731 = select i1 %54, float %700, float %715
  %732 = select i1 %54, float %705, float %720
  %733 = fmul fast float %218, 0x401061CAC0000000
  %734 = fmul fast float %218, 0x4023E1D7E0000000
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %738 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %739 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %740 = fsub fast float -0.000000e+00, %440
  %741 = fmul fast float %442, %740
  %742 = fmul fast float %440, %740
  %743 = fmul fast float %441, %441
  %744 = fsub fast float %742, %743
  %745 = fdiv fast float 1.000000e+00, %61
  %746 = fmul fast float %738, %50
  %747 = fmul fast float %739, %51
  %748 = fmul fast float %663, %440
  %749 = fmul fast float %663, %442
  %750 = fadd fast float %748, %116
  %751 = fadd fast float %749, %118
  %752 = fadd fast float %734, 5.000000e-01
  %753 = call float @dx.op.unary.f32(i32 22, float %752)  ; Frc(value)
  %754 = bitcast float %753 to i32
  %755 = ashr i32 %754, 1
  %756 = add nsw i32 %755, 532487669
  %757 = bitcast i32 %756 to float
  %758 = fmul fast float %757, %690
  %759 = fadd fast float %733, 5.000000e-01
  %760 = call float @dx.op.unary.f32(i32 22, float %759)  ; Frc(value)
  %761 = fmul fast float %760, 0x401921FB60000000
  %762 = call float @dx.op.unary.f32(i32 12, float %761)  ; Cos(value)
  %763 = fmul fast float %762, %762
  %764 = fsub fast float 1.000000e+00, %763
  %765 = bitcast float %764 to i32
  %766 = ashr i32 %765, 1
  %767 = add nsw i32 %766, 532487669
  %768 = bitcast i32 %767 to float
  %769 = fmul fast float %758, %762
  %770 = fmul fast float %769, %441
  %771 = fmul fast float %769, %740
  %772 = fadd fast float %750, %770
  %773 = fmul fast float %768, %758
  %774 = fmul fast float %741, %773
  %775 = fmul fast float %773, %442
  %776 = fmul fast float %773, %744
  %777 = fsub fast float %772, %774
  %778 = fadd fast float %775, %663
  %779 = fmul fast float %778, %441
  %780 = fadd fast float %771, %117
  %781 = fadd fast float %780, %779
  %782 = fadd fast float %751, %776
  %783 = fmul fast float %777, %721
  %784 = call float @dx.op.tertiary.f32(i32 46, float %781, float %724, float %783)  ; FMad(a,b,c)
  %785 = call float @dx.op.tertiary.f32(i32 46, float %782, float %727, float %784)  ; FMad(a,b,c)
  %786 = fadd fast float %785, %730
  %787 = fmul fast float %777, %722
  %788 = call float @dx.op.tertiary.f32(i32 46, float %781, float %725, float %787)  ; FMad(a,b,c)
  %789 = call float @dx.op.tertiary.f32(i32 46, float %782, float %728, float %788)  ; FMad(a,b,c)
  %790 = fadd fast float %789, %731
  %791 = fmul fast float %777, %723
  %792 = call float @dx.op.tertiary.f32(i32 46, float %781, float %726, float %791)  ; FMad(a,b,c)
  %793 = call float @dx.op.tertiary.f32(i32 46, float %782, float %729, float %792)  ; FMad(a,b,c)
  %794 = fadd fast float %793, %732
  %795 = fdiv fast float 1.000000e+00, %794
  %796 = fmul fast float %786, 5.000000e-01
  %797 = fmul fast float %790, -5.000000e-01
  %798 = fmul fast float %796, %795
  %799 = fmul fast float %797, %795
  %800 = fsub fast float 5.000000e-01, %746
  %801 = fadd fast float %800, %798
  %802 = fsub fast float 5.000000e-01, %747
  %803 = fadd fast float %802, %799
  %804 = fsub fast float %795, %745
  %805 = call float @dx.op.dot2.f32(i32 54, float %801, float %803, float %801, float %803)  ; Dot2(ax,ay,bx,by)
  %806 = call float @dx.op.binary.f32(i32 35, float %805, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %807 = call float @dx.op.dot2.f32(i32 54, float %736, float %737, float %736, float %737)  ; Dot2(ax,ay,bx,by)
  %808 = fmul fast float %807, %806
  %809 = call float @dx.op.unary.f32(i32 25, float %808)  ; Rsqrt(value)
  %810 = fmul fast float %809, %801
  %811 = fmul fast float %809, %803
  %812 = fadd fast float %810, %746
  %813 = fadd fast float %811, %747
  %814 = fmul fast float %801, %736
  %815 = fmul fast float %803, %737
  %816 = fmul fast float %814, %814
  %817 = fmul fast float %815, %815
  %818 = fadd fast float %816, %817
  %819 = call float @dx.op.unary.f32(i32 24, float %818)  ; Sqrt(value)
  %820 = fdiv fast float 1.000000e+00, %819
  %821 = fmul fast float %819, 3.906250e-03
  %822 = fmul fast float %204, 0x3F70624DE0000000
  %823 = fadd fast float %822, 0x3F70624DE0000000
  %824 = icmp sgt i32 %671, -1
  br i1 %824, label %825, label %887

; <label>:825                                     ; preds = %675
  br label %826

; <label>:826                                     ; preds = %883, %825
  %827 = phi float [ %858, %883 ], [ %61, %825 ]
  %828 = phi float [ %845, %883 ], [ %61, %825 ]
  %829 = phi float [ %828, %883 ], [ %61, %825 ]
  %830 = phi i32 [ %884, %883 ], [ 0, %825 ]
  %831 = sitofp i32 %830 to float
  %832 = fadd fast float %218, 5.000000e-01
  %833 = call float @dx.op.unary.f32(i32 22, float %832)  ; Frc(value)
  %834 = fadd fast float %831, %833
  %835 = sitofp i32 %671 to float
  %836 = fdiv fast float %834, %835
  %837 = fmul fast float %836, %836
  %838 = call float @dx.op.binary.f32(i32 36, float %837, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %839 = fmul fast float %838, %801
  %840 = fmul fast float %838, %803
  %841 = fmul fast float %838, %804
  %842 = fadd fast float %839, %812
  %843 = fadd fast float %840, %813
  %844 = fadd fast float %841, %745
  %845 = fdiv fast float 1.000000e+00, %844
  %846 = icmp ne i32 %686, 0
  %847 = fmul fast float %821, %838
  %848 = call float @dx.op.binary.f32(i32 36, float %847, float %687)  ; FMin(a,b)
  %849 = select i1 %846, float %848, float 0.000000e+00
  %850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %842, float %843, float undef, float undef, i32 0, i32 0, i32 undef, float %849)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = fcmp fast ogt float %851, -1.000000e+00
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %855 = select i1 %852, float %854, float 1.000000e+00
  %856 = fadd fast float %851, 1.000000e+00
  %857 = fmul fast float %855, %856
  %858 = call float @dx.op.unary.f32(i32 6, float %857)  ; FAbs(value)
  %859 = fmul fast float %858, %823
  %860 = fsub fast float %845, %858
  %861 = fsub fast float %860, %859
  %862 = fcmp fast ogt float %861, 0.000000e+00
  %863 = fcmp fast ogt float %666, 0.000000e+00
  br i1 %863, label %864, label %867, !dx.controlflow.hints !57

; <label>:864                                     ; preds = %826
  %865 = fsub fast float %845, %829
  %866 = call float @dx.op.binary.f32(i32 35, float %865, float %666)  ; FMax(a,b)
  br label %867

; <label>:867                                     ; preds = %864, %826
  %868 = phi float [ %866, %864 ], [ %663, %826 ]
  %869 = fcmp fast olt float %861, %868
  %870 = fcmp uge float %851, -1.000000e+00
  %871 = or i1 %54, %870
  %872 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %873 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %874 = fcmp fast oeq float %842, %872
  %875 = fcmp fast oeq float %843, %873
  %876 = and i1 %874, %875
  %877 = and i1 %871, %876
  %878 = and i1 %862, %869
  %879 = and i1 %878, %877
  %880 = fcmp fast ogt float %838, %820
  %881 = and i1 %880, %879
  %882 = zext i1 %881 to i32
  br i1 %881, label %886, label %883, !dx.controlflow.hints !58

; <label>:883                                     ; preds = %867
  %884 = add nuw nsw i32 %830, 1
  %885 = icmp slt i32 %830, %671
  br i1 %885, label %826, label %886

; <label>:886                                     ; preds = %883, %867
  br label %887

; <label>:887                                     ; preds = %886, %675
  %888 = phi i32 [ 0, %675 ], [ %882, %886 ]
  %889 = phi float [ %61, %675 ], [ %858, %886 ]
  %890 = phi float [ %61, %675 ], [ %827, %886 ]
  %891 = phi float [ %61, %675 ], [ %845, %886 ]
  %892 = phi float [ %61, %675 ], [ %828, %886 ]
  %893 = fsub fast float %892, %890
  %894 = fsub fast float %891, %889
  %895 = fsub fast float %893, %894
  %896 = fcmp fast une float %895, 0.000000e+00
  %897 = fmul fast float %893, %891
  %898 = fmul fast float %892, %894
  %899 = fsub fast float %897, %898
  %900 = fdiv fast float 1.000000e+00, %895
  %901 = fmul fast float %899, %900
  %902 = select i1 %896, float %901, float %891
  %903 = fdiv fast float 1.000000e+00, %902
  %904 = fsub fast float %903, %745
  %905 = fdiv fast float %904, %804
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = fmul fast float %906, %801
  %908 = fmul fast float %906, %803
  %909 = fadd fast float %907, %812
  %910 = fadd fast float %908, %813
  %911 = fadd fast float %909, -5.000000e-01
  %912 = fadd fast float %910, -5.000000e-01
  %913 = call float @dx.op.unary.f32(i32 6, float %911)  ; FAbs(value)
  %914 = call float @dx.op.unary.f32(i32 6, float %912)  ; FAbs(value)
  %915 = fadd fast float %913, -5.000000e-01
  %916 = fadd fast float %914, -5.000000e-01
  %917 = call float @dx.op.binary.f32(i32 35, float %915, float %916)  ; FMax(a,b)
  %918 = fcmp fast olt float %917, 0.000000e+00
  %919 = icmp ne i32 %888, 0
  %920 = and i1 %919, %918
  %921 = select i1 %920, float 0.000000e+00, float 1.000000e+00
  br label %922

; <label>:922                                     ; preds = %887, %658
  %923 = phi float [ %921, %887 ], [ 1.000000e+00, %658 ]
  %924 = fmul fast float %923, %651
  %925 = fmul fast float %923, %651
  %926 = fmul fast float %923, %651
  br label %927

; <label>:927                                     ; preds = %922, %650
  %928 = phi float [ %924, %922 ], [ %651, %650 ]
  %929 = phi float [ %925, %922 ], [ %651, %650 ]
  %930 = phi float [ %926, %922 ], [ %651, %650 ]
  %931 = call float @dx.op.binary.f32(i32 36, float %929, float %930)  ; FMin(a,b)
  %932 = call float @dx.op.binary.f32(i32 36, float %928, float %931)  ; FMin(a,b)
  %933 = fcmp fast ogt float %932, 0x3F10000000000000
  %934 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %933)  ; WaveAnyTrue(cond)
  %935 = icmp ugt i32 %243, 63
  br i1 %935, label %965, label %936, !dx.controlflow.hints !59

; <label>:936                                     ; preds = %927
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %937 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %937, label %938, label %941, !dx.controlflow.hints !60

; <label>:938                                     ; preds = %936
  %939 = zext i1 %934 to i32
  %940 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %244
  store i32 %939, i32 addrspace(3)* %940, align 4, !tbaa !37
  br label %941

; <label>:941                                     ; preds = %938, %936
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %942 = icmp eq i32 %243, 32
  br i1 %942, label %943, label %949, !dx.controlflow.hints !61

; <label>:943                                     ; preds = %941
  %944 = xor i32 %244, 1
  %945 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %944
  %946 = load i32, i32 addrspace(3)* %945, align 4, !tbaa !37
  %947 = icmp ne i32 %946, 0
  %948 = or i1 %934, %947
  br label %965

; <label>:949                                     ; preds = %941
  %950 = icmp eq i32 %243, 16
  br i1 %950, label %951, label %965, !dx.controlflow.hints !62

; <label>:951                                     ; preds = %949
  %952 = xor i32 %244, 1
  %953 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %952
  %954 = load i32, i32 addrspace(3)* %953, align 4, !tbaa !37
  %955 = xor i32 %244, 2
  %956 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %955
  %957 = load i32, i32 addrspace(3)* %956, align 4, !tbaa !37
  %958 = or i32 %957, %954
  %959 = xor i32 %244, 3
  %960 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %959
  %961 = load i32, i32 addrspace(3)* %960, align 4, !tbaa !37
  %962 = or i32 %958, %961
  %963 = icmp ne i32 %962, 0
  %964 = or i1 %934, %963
  br label %965

; <label>:965                                     ; preds = %951, %949, %943, %927
  %966 = phi i1 [ %948, %943 ], [ %964, %951 ], [ %934, %927 ], [ false, %949 ]
  %967 = select i1 %966, i32 %379, i32 0
  %968 = or i32 %374, %967
  %969 = lshr i32 %223, 5
  %970 = lshr i32 %224, 5
  %971 = fcmp fast olt float %928, 0x3F10000000000000
  %972 = call i1 @dx.op.waveAllTrue(i32 114, i1 %971)  ; WaveAllTrue(cond)
  br i1 %935, label %1004, label %973, !dx.controlflow.hints !63

; <label>:973                                     ; preds = %965
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %974 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %974, label %975, label %978, !dx.controlflow.hints !64

; <label>:975                                     ; preds = %973
  %976 = zext i1 %972 to i32
  %977 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %244
  store i32 %976, i32 addrspace(3)* %977, align 4, !tbaa !37
  br label %978

; <label>:978                                     ; preds = %975, %973
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %979 = icmp eq i32 %243, 32
  br i1 %979, label %980, label %986, !dx.controlflow.hints !65

; <label>:980                                     ; preds = %978
  %981 = xor i32 %244, 1
  %982 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %981
  %983 = load i32, i32 addrspace(3)* %982, align 4, !tbaa !37
  %984 = icmp ne i32 %983, 0
  %985 = and i1 %972, %984
  br label %1004

; <label>:986                                     ; preds = %978
  %987 = icmp eq i32 %243, 16
  br i1 %987, label %988, label %1004, !dx.controlflow.hints !66

; <label>:988                                     ; preds = %986
  %989 = xor i32 %244, 1
  %990 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %989
  %991 = load i32, i32 addrspace(3)* %990, align 4, !tbaa !37
  %992 = icmp ne i32 %991, 0
  %993 = and i1 %972, %992
  %994 = xor i32 %244, 2
  %995 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %994
  %996 = load i32, i32 addrspace(3)* %995, align 4, !tbaa !37
  %997 = icmp ne i32 %996, 0
  %998 = and i1 %993, %997
  %999 = xor i32 %244, 3
  %1000 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %999
  %1001 = load i32, i32 addrspace(3)* %1000, align 4, !tbaa !37
  %1002 = icmp ne i32 %1001, 0
  %1003 = and i1 %998, %1002
  br label %1004

; <label>:1004                                    ; preds = %988, %986, %980, %965
  %1005 = phi i1 [ %985, %980 ], [ %1003, %988 ], [ %972, %965 ], [ false, %986 ]
  %1006 = fcmp fast ogt float %928, 0x3FEFFF8000000000
  %1007 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1006)  ; WaveAllTrue(cond)
  br i1 %935, label %1039, label %1008, !dx.controlflow.hints !63

; <label>:1008                                    ; preds = %1004
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1009 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1009, label %1010, label %1013, !dx.controlflow.hints !64

; <label>:1010                                    ; preds = %1008
  %1011 = zext i1 %1007 to i32
  %1012 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %244
  store i32 %1011, i32 addrspace(3)* %1012, align 4, !tbaa !37
  br label %1013

; <label>:1013                                    ; preds = %1010, %1008
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1014 = icmp eq i32 %243, 32
  br i1 %1014, label %1015, label %1021, !dx.controlflow.hints !65

; <label>:1015                                    ; preds = %1013
  %1016 = xor i32 %244, 1
  %1017 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1016
  %1018 = load i32, i32 addrspace(3)* %1017, align 4, !tbaa !37
  %1019 = icmp ne i32 %1018, 0
  %1020 = and i1 %1007, %1019
  br label %1039

; <label>:1021                                    ; preds = %1013
  %1022 = icmp eq i32 %243, 16
  br i1 %1022, label %1023, label %1039, !dx.controlflow.hints !66

; <label>:1023                                    ; preds = %1021
  %1024 = xor i32 %244, 1
  %1025 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1024
  %1026 = load i32, i32 addrspace(3)* %1025, align 4, !tbaa !37
  %1027 = icmp ne i32 %1026, 0
  %1028 = and i1 %1007, %1027
  %1029 = xor i32 %244, 2
  %1030 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1029
  %1031 = load i32, i32 addrspace(3)* %1030, align 4, !tbaa !37
  %1032 = icmp ne i32 %1031, 0
  %1033 = and i1 %1028, %1032
  %1034 = xor i32 %244, 3
  %1035 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1034
  %1036 = load i32, i32 addrspace(3)* %1035, align 4, !tbaa !37
  %1037 = icmp ne i32 %1036, 0
  %1038 = and i1 %1033, %1037
  br label %1039

; <label>:1039                                    ; preds = %1023, %1021, %1015, %1004
  %1040 = phi i1 [ %1020, %1015 ], [ %1038, %1023 ], [ %1007, %1004 ], [ false, %1021 ]
  %1041 = or i1 %1005, %1040
  %1042 = lshr i32 %224, 1
  %1043 = and i32 %1042, 8
  %1044 = lshr i32 %223, 2
  %1045 = and i32 %1044, 4
  %1046 = or i32 %1043, %35
  %1047 = or i32 %1046, %1045
  %1048 = icmp eq i32 %23, 0
  br i1 %1048, label %1049, label %1091, !dx.controlflow.hints !67

; <label>:1049                                    ; preds = %1039
  %1050 = shl i32 1, %1047
  %1051 = select i1 %1040, i32 %1050, i32 0
  %1052 = shl i32 65536, %1047
  %1053 = select i1 %1005, i32 %1052, i32 0
  %1054 = or i32 %1051, %1053
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1058, label %1056, !dx.controlflow.hints !68

; <label>:1056                                    ; preds = %1049
  %1057 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %969, i32 %970, i32 %377, i32 %1054)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1058

; <label>:1058                                    ; preds = %1056, %1049
  br i1 %1041, label %1088, label %1059

; <label>:1059                                    ; preds = %1058
  br label %1060

; <label>:1060                                    ; preds = %1085, %1059
  %1061 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %969, i32 %970, i32 %377, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1062 = and i32 %1061, 3
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1064, label %1085, !dx.controlflow.hints !69

; <label>:1064                                    ; preds = %1060
  %1065 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.i32 %1066, 3
  %1068 = call i32 @dx.op.binary.i32(i32 40, i32 %1067, i32 %1065)  ; UMin(a,b)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1066, 2
  %1070 = udiv i32 %1068, %1069
  %1071 = urem i32 %1068, %1069
  %1072 = extractvalue %dx.types.CBufRet.i32 %1066, 1
  %1073 = urem i32 %1071, %1072
  %1074 = udiv i32 %1071, %1072
  %1075 = shl i32 %1073, 6
  %1076 = and i32 %1075, 32704
  %1077 = shl i32 %1074, 15
  %1078 = and i32 %1077, 8355840
  %1079 = shl i32 %1070, 23
  %1080 = and i32 %1079, 2139095040
  %1081 = or i32 %1080, %1076
  %1082 = or i32 %1081, %1078
  %1083 = or i32 %1082, 3
  %1084 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %969, i32 %970, i32 %377, i32 %1083)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1088

; <label>:1085                                    ; preds = %1060
  %1086 = icmp eq i32 %1062, 3
  br i1 %1086, label %1087, label %1060, !dx.controlflow.hints !70

; <label>:1087                                    ; preds = %1085
  br label %1088

; <label>:1088                                    ; preds = %1087, %1064, %1058
  %1089 = phi i32 [ 0, %1058 ], [ %1083, %1064 ], [ %1061, %1087 ]
  br i1 %246, label %1091, label %1090, !dx.controlflow.hints !71

; <label>:1090                                    ; preds = %1088
  store i32 %1089, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1091

; <label>:1091                                    ; preds = %1090, %1088, %1039
  %1092 = phi i32 [ %1089, %1088 ], [ %1089, %1090 ], [ 0, %1039 ]
  br i1 %246, label %1093, label %1095, !dx.controlflow.hints !72

; <label>:1093                                    ; preds = %1091
  %1094 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1092)  ; WaveReadLaneFirst(value)
  br label %1097

; <label>:1095                                    ; preds = %1091
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1096 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1097

; <label>:1097                                    ; preds = %1095, %1093
  %1098 = phi i32 [ %1096, %1095 ], [ %1094, %1093 ]
  br i1 %1041, label %1114, label %1099, !dx.controlflow.hints !73

; <label>:1099                                    ; preds = %1097
  %1100 = lshr i32 %1098, 23
  %1101 = and i32 %1100, 255
  %1102 = and i32 %223, 31
  %1103 = and i32 %224, 31
  %1104 = lshr i32 %1098, 1
  %1105 = and i32 %1104, 16352
  %1106 = lshr i32 %1098, 10
  %1107 = and i32 %1106, 8160
  %1108 = or i32 %1105, %1102
  %1109 = or i32 %1107, %1103
  %1110 = fmul fast float %928, 2.550000e+02
  %1111 = fadd fast float %1110, %217
  %1112 = call float @dx.op.unary.f32(i32 27, float %1111)  ; Round_ni(value)
  %1113 = fmul fast float %1112, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1108, i32 %1109, i32 %1101, float %1113, float %1113, float %1113, float %1113, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1114

; <label>:1114                                    ; preds = %1099, %1097
  %1115 = icmp eq i32 %375, %379
  br i1 %1115, label %1116, label %373, !llvm.loop !74

; <label>:1116                                    ; preds = %1114
  br label %1117

; <label>:1117                                    ; preds = %1116, %369
  %1118 = phi i32 [ 0, %369 ], [ %968, %1116 ]
  %1119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.i32 %1119, 0
  %1121 = call i32 @dx.op.tertiary.i32(i32 49, i32 %229, i32 %1120, i32 %310)  ; UMad(a,b,c)
  %1122 = shl i32 %1121, 2
  %1123 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1122, i32 undef, i32 undef, i32 %1118)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1124 = add i32 %310, 1
  %1125 = icmp ugt i32 %1124, %306
  br i1 %1125, label %1126, label %309

; <label>:1126                                    ; preds = %1117
  br label %1127

; <label>:1127                                    ; preds = %1126, %302, %0
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
declare i1 @dx.op.waveAllTrue(i32, i1) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

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
attributes #3 = { noduplicate nounwind }

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
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.unroll.disable"}

