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
; shader hash: d0aaab9f5b8b851edf747cd5ce9175b4
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
;                                   texture     u32        2dMS      T0             t2     1
;                                   texture     u32     2darray      T1             t4     1
;                                   texture    byte         r/o      T2             t9     1
;                                   texture     f32          2d      T3             t0     1
;                                   texture    byte         r/o      T4            t19     1
;                                   texture    byte         r/o      T5            t20     1
;                                   texture     f32          1d      T6             t8     1
;                                   texture     f32          2d      T7            t13     1
;                                   texture     f32     2darray      T8             t1     1
;                                   texture    byte         r/o      T9             t6     1
;                                   texture    byte         r/o     T10             t7     1
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
%"class.Texture2DMS<vector<unsigned int, 4>, 0>" = type { <4 x i32>, %"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?gsPackedTileData@@3IA" = external addrspace(3) global i32, align 4
@"\01?gsLightIterator@@3IA" = external addrspace(3) global i32, align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %25 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %26 = alloca [4 x i32], align 4
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = shl i32 %28, 2
  %32 = mul i32 %31, %30
  %33 = add i32 %32, %22
  %34 = shl i32 %33, 2
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = lshr i32 %36, 28
  %38 = and i32 %37, 3
  %39 = lshr i32 %36, 14
  %40 = and i32 %39, 16383
  %41 = and i32 %36, 16383
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %54, label %43, !dx.controlflow.hints !36

; <label>:43                                      ; preds = %0
  %44 = shl nuw nsw i32 %40, 3
  %45 = shl nuw nsw i32 %41, 3
  %46 = or i32 %44, %23
  %47 = or i32 %45, %24
  %48 = add nsw i32 %38, -1
  %49 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %46, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = lshr i32 %50, 4
  %52 = and i32 %51, 15
  %53 = and i32 %50, 15
  br label %59

; <label>:54                                      ; preds = %0
  %55 = shl i32 %23, 1
  %56 = shl i32 %24, 1
  %57 = and i32 %37, 1
  %58 = or i32 %57, %55
  br label %59

; <label>:59                                      ; preds = %54, %43
  %60 = phi i32 [ %52, %43 ], [ %58, %54 ]
  %61 = phi i32 [ %53, %43 ], [ %56, %54 ]
  %62 = shl nuw nsw i32 %40, 4
  %63 = shl nuw nsw i32 %41, 4
  %64 = or i32 %60, %62
  %65 = or i32 %61, %63
  %66 = uitofp i32 %64 to float
  %67 = uitofp i32 %65 to float
  %68 = fadd fast float %66, 5.000000e-01
  %69 = fadd fast float %67, 5.000000e-01
  %70 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %64, i32 %65, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = fcmp fast olt float %71, -1.000000e+00
  %73 = fcmp fast ogt float %71, -1.000000e+00
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %76 = select i1 %73, float %75, float 1.000000e+00
  %77 = fadd fast float %71, 1.000000e+00
  %78 = fmul fast float %76, %77
  %79 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %83 = fmul fast float %68, 2.000000e+00
  %84 = fmul fast float %83, %81
  %85 = fmul fast float %69, 2.000000e+00
  %86 = fmul fast float %85, %82
  %87 = fsub fast float 1.000000e+00, %84
  %88 = fsub fast float 1.000000e+00, %86
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = select i1 %72, float %90, float %94
  %98 = select i1 %72, float %91, float %95
  %99 = select i1 %72, float %92, float %96
  %100 = fmul fast float %97, %87
  %101 = fmul fast float %98, %87
  %102 = fmul fast float %99, %87
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = select i1 %72, float %104, float %108
  %112 = select i1 %72, float %105, float %109
  %113 = select i1 %72, float %106, float %110
  %114 = fmul fast float %111, %88
  %115 = fmul fast float %112, %88
  %116 = fmul fast float %113, %88
  %117 = fadd fast float %114, %100
  %118 = fadd fast float %115, %101
  %119 = fadd fast float %116, %102
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = select i1 %72, float %121, float %125
  %129 = select i1 %72, float %122, float %126
  %130 = select i1 %72, float %123, float %127
  %131 = fadd fast float %117, %128
  %132 = fadd fast float %118, %129
  %133 = fadd fast float %119, %130
  %134 = fmul fast float %131, %79
  %135 = fmul fast float %132, %79
  %136 = fmul fast float %133, %79
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.i32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.i32 %137, 2
  %141 = extractvalue %dx.types.CBufRet.i32 %137, 3
  %142 = lshr i32 %64, 1
  %143 = lshr i32 %65, 1
  %144 = and i32 %60, 1
  %145 = shl i32 %61, 1
  %146 = and i32 %145, 2
  %147 = or i32 %146, %144
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %138, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %139, i32* %149, align 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %140, i32* %150, align 4
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %141, i32* %151, align 4
  %152 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %147
  %153 = load i32, i32* %152, align 4, !tbaa !37
  %154 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 %153, i32 %142, i32 %143, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = lshr i32 %155, 8
  %157 = and i32 %155, 255
  %158 = and i32 %156, 255
  %159 = uitofp i32 %157 to float
  %160 = uitofp i32 %158 to float
  %161 = fmul fast float %159, 0x3F80101020000000
  %162 = fmul fast float %160, 0x3F80101020000000
  %163 = fadd fast float %161, -1.000000e+00
  %164 = fadd fast float %162, -1.000000e+00
  %165 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %166 = fsub fast float 1.000000e+00, %165
  %167 = call float @dx.op.unary.f32(i32 6, float %164)  ; FAbs(value)
  %168 = fsub fast float %166, %167
  %169 = fsub fast float -0.000000e+00, %168
  %170 = call float @dx.op.binary.f32(i32 35, float %169, float 0.000000e+00)  ; FMax(a,b)
  %171 = fcmp fast ogt float %163, 0.000000e+00
  %172 = fsub fast float -0.000000e+00, %170
  %173 = select i1 %171, float %172, float %170
  %174 = fadd fast float %173, %163
  %175 = fcmp fast ogt float %164, 0.000000e+00
  %176 = select i1 %175, float %172, float %170
  %177 = fadd fast float %176, %164
  %178 = call float @dx.op.dot3.f32(i32 55, float %174, float %177, float %168, float %174, float %177, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = call float @dx.op.unary.f32(i32 25, float %178)  ; Rsqrt(value)
  %180 = fmul fast float %174, %179
  %181 = fmul fast float %177, %179
  %182 = fmul fast float %179, %168
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %185 = fmul fast float %184, 0x3FE3C6EF40000000
  %186 = frem fast float %68, 2.560000e+02
  %187 = frem fast float %69, 2.560000e+02
  %188 = fptoui float %186 to i32
  %189 = fptoui float %187 to i32
  %190 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %188, i32 %189, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fadd fast float %191, %185
  %193 = call float @dx.op.unary.f32(i32 22, float %192)  ; Frc(value)
  %194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.i32 %194, 0
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %1374, label %197, !dx.controlflow.hints !41

; <label>:197                                     ; preds = %59
  %198 = fptoui float %68 to i32
  %199 = fptoui float %69 to i32
  %200 = lshr i32 %198, 4
  %201 = lshr i32 %199, 4
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 0
  %204 = call i32 @dx.op.tertiary.i32(i32 49, i32 %201, i32 %203, i32 %200)  ; UMad(a,b,c)
  %205 = add nsw i32 %195, -1
  %206 = call i32 @dx.op.binary.i32(i32 37, i32 %205, i32 0)  ; IMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %208 = fptoui float %207 to i32
  %209 = lshr i32 %208, 5
  %210 = call i32 @dx.op.binary.i32(i32 40, i32 %209, i32 8191)  ; UMin(a,b)
  %211 = shl i32 %210, 2
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = lshr i32 %213, 16
  %215 = and i32 %213, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %216 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %214 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %215 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %219 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  %220 = lshr i32 %217, 5
  %221 = lshr i32 %219, 5
  %222 = call i32 @dx.op.binary.i32(i32 40, i32 %221, i32 %206)  ; UMin(a,b)
  %223 = icmp ugt i32 %220, %222
  br i1 %223, label %1374, label %224

; <label>:224                                     ; preds = %197
  br label %225

; <label>:225                                     ; preds = %1364, %224
  %226 = phi i32 [ %1371, %1364 ], [ %220, %224 ]
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 0
  %229 = call i32 @dx.op.tertiary.i32(i32 49, i32 %204, i32 %228, i32 %226)  ; UMad(a,b,c)
  %230 = shl i32 %229, 2
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = shl i32 %226, 5
  %234 = sub nsw i32 %214, %233
  %235 = call i32 @dx.op.binary.i32(i32 37, i32 %234, i32 0)  ; IMax(a,b)
  %236 = call i32 @dx.op.binary.i32(i32 38, i32 %235, i32 31)  ; IMin(a,b)
  %237 = sub nsw i32 1, %214
  %238 = add nsw i32 %237, %215
  %239 = call i32 @dx.op.binary.i32(i32 37, i32 %238, i32 0)  ; IMax(a,b)
  %240 = call i32 @dx.op.binary.i32(i32 38, i32 %239, i32 32)  ; IMin(a,b)
  %241 = and i32 %240, 31
  %242 = shl i32 -1, %241
  %243 = xor i32 %242, -1
  %244 = and i32 %236, 31
  %245 = shl i32 %243, %244
  %246 = icmp eq i32 %240, 32
  %247 = select i1 %246, i32 -1, i32 %245
  %248 = and i32 %247, %232
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %248 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %250 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %251 = icmp eq i32 %25, 0
  br i1 %251, label %252, label %253, !dx.controlflow.hints !42

; <label>:252                                     ; preds = %225
  store i32 %250, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %253

; <label>:253                                     ; preds = %252, %225
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %254 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %1364, label %256

; <label>:256                                     ; preds = %253
  br label %257

; <label>:257                                     ; preds = %1361, %256
  %258 = phi i32 [ %1193, %1361 ], [ 0, %256 ]
  %259 = phi i32 [ %264, %1361 ], [ %254, %256 ]
  %260 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %259)  ; FirstbitLo(value)
  %261 = add i32 %260, %233
  %262 = and i32 %260, 31
  %263 = shl i32 1, %262
  %264 = xor i32 %263, %259
  %265 = mul i32 %261, 112
  %266 = add i32 %265, 16
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = extractvalue %dx.types.ResRet.f32 %267, 2
  %271 = add i32 %265, 28
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = add i32 %265, 32
  %275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = add i32 %265, 44
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = add i32 %265, 48
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = add i32 %265, 64
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = add i32 %265, 92
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = uitofp i32 %297 to float
  %299 = lshr i32 %296, 16
  %300 = uitofp i32 %299 to float
  %301 = and i32 %273, 65535
  %302 = and i32 %273, 50331648
  %303 = icmp eq i32 %302, 33554432
  %304 = call float @dx.op.dot3.f32(i32 55, float %276, float %277, float %278, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = fsub fast float %134, %284
  %306 = fsub fast float %135, %285
  %307 = fsub fast float %136, %286
  %308 = call float @dx.op.dot3.f32(i32 55, float %305, float %306, float %307, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %309 = fdiv fast float %308, %304
  %310 = call float @dx.op.binary.f32(i32 35, float %309, float -1.000000e+00)  ; FMax(a,b)
  %311 = call float @dx.op.binary.f32(i32 36, float %310, float 1.000000e+00)  ; FMin(a,b)
  %312 = fmul fast float %311, %276
  %313 = fmul fast float %311, %277
  %314 = fmul fast float %311, %278
  %315 = fadd fast float %312, %284
  %316 = fadd fast float %313, %285
  %317 = fadd fast float %314, %286
  %318 = fsub fast float %315, %134
  %319 = fsub fast float %316, %135
  %320 = fsub fast float %317, %136
  %321 = call float @dx.op.dot3.f32(i32 55, float %318, float %319, float %320, float %318, float %319, float %320)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %323 = fdiv fast float 1.000000e+00, %322
  %324 = fmul fast float %318, %323
  %325 = fmul fast float %319, %323
  %326 = fmul fast float %320, %323
  br i1 %303, label %327, label %351, !dx.controlflow.hints !43

; <label>:327                                     ; preds = %257
  %328 = fmul fast float %292, %268
  %329 = fmul fast float %292, %269
  %330 = fmul fast float %292, %270
  %331 = fsub fast float %328, %134
  %332 = fadd fast float %331, %315
  %333 = fsub fast float %329, %135
  %334 = fadd fast float %333, %316
  %335 = fsub fast float %330, %136
  %336 = fadd fast float %335, %317
  %337 = call float @dx.op.dot3.f32(i32 55, float %332, float %334, float %336, float %332, float %334, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = call float @dx.op.unary.f32(i32 25, float %337)  ; Rsqrt(value)
  %339 = fmul fast float %338, %332
  %340 = fmul fast float %338, %334
  %341 = fmul fast float %338, %336
  %342 = fsub fast float %134, %315
  %343 = fsub fast float %135, %316
  %344 = fsub fast float %136, %317
  %345 = fsub fast float -0.000000e+00, %342
  %346 = fsub fast float -0.000000e+00, %343
  %347 = fsub fast float -0.000000e+00, %344
  %348 = call float @dx.op.dot3.f32(i32 55, float %345, float %346, float %347, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %349 = fcmp fast ogt float %348, 0.000000e+00
  %350 = uitofp i1 %349 to float
  br label %351

; <label>:351                                     ; preds = %327, %257
  %352 = phi float [ %350, %327 ], [ 1.000000e+00, %257 ]
  %353 = phi float [ %339, %327 ], [ %324, %257 ]
  %354 = phi float [ %340, %327 ], [ %325, %257 ]
  %355 = phi float [ %341, %327 ], [ %326, %257 ]
  %356 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %353, float %354, float %355)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = fmul fast float %356, %356
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %359 = fsub fast float 1.000000e+00, %358
  %360 = fmul fast float %359, 5.000000e-01
  %361 = fcmp fast ogt float %356, 0.000000e+00
  %362 = fsub fast float 1.000000e+00, %360
  %363 = select i1 %361, float %360, float %362
  %364 = fmul fast float %363, %300
  %365 = fadd fast float %364, %298
  %366 = fmul fast float %365, 0x3EF0001000000000
  %367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %366, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = fmul fast float %356, %290
  %370 = fadd fast float %369, %291
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = select i1 %303, float 1.000000e+00, float %371
  %373 = select i1 %303, float %371, float 1.000000e+00
  %374 = fmul fast float %322, %287
  %375 = fsub fast float 1.000000e+00, %374
  %376 = fmul fast float %375, %293
  %377 = call float @dx.op.unary.f32(i32 7, float %376)  ; Saturate(value)
  %378 = fmul fast float %377, %373
  %379 = fmul fast float %378, 2.000000e+00
  %380 = fsub fast float 3.000000e+00, %379
  %381 = fmul fast float %368, %352
  %382 = fmul fast float %378, %378
  %383 = fmul fast float %382, %381
  %384 = fmul fast float %383, %380
  %385 = icmp ne i32 %301, 255
  %386 = call float @dx.op.binary.f32(i32 36, float %384, float %384)  ; FMin(a,b)
  %387 = call float @dx.op.binary.f32(i32 36, float %384, float %386)  ; FMin(a,b)
  %388 = fcmp fast ogt float %387, 0.000000e+00
  %389 = and i1 %385, %388
  br i1 %389, label %390, label %1183, !dx.controlflow.hints !44

; <label>:390                                     ; preds = %351
  %391 = mul nuw nsw i32 %301, 176
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = extractvalue %dx.types.ResRet.f32 %392, 3
  %397 = add nuw nsw i32 %391, 16
  %398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = add nuw nsw i32 %391, 32
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add nuw nsw i32 %391, 48
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = add nuw nsw i32 %391, 64
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = add nuw nsw i32 %391, 80
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = extractvalue %dx.types.ResRet.f32 %420, 3
  %425 = add nuw nsw i32 %391, 96
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = add nuw nsw i32 %391, 112
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = add nuw nsw i32 %391, 128
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = add nuw nsw i32 %391, 144
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  %449 = add nuw nsw i32 %391, 160
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = bitcast float %400 to i32
  %456 = bitcast float %406 to i32
  %457 = and i32 %456, 1
  %458 = icmp ne i32 %457, 0
  %459 = and i32 %456, 2
  %460 = fmul fast float %180, %405
  %461 = fmul fast float %181, %405
  %462 = fmul fast float %182, %405
  %463 = fadd fast float %460, %134
  %464 = fadd fast float %461, %135
  %465 = fadd fast float %462, %136
  %466 = fmul fast float %463, %409
  %467 = call float @dx.op.tertiary.f32(i32 46, float %464, float %415, float %466)  ; FMad(a,b,c)
  %468 = call float @dx.op.tertiary.f32(i32 46, float %465, float %421, float %467)  ; FMad(a,b,c)
  %469 = fadd fast float %468, %427
  %470 = fmul fast float %463, %410
  %471 = call float @dx.op.tertiary.f32(i32 46, float %464, float %416, float %470)  ; FMad(a,b,c)
  %472 = call float @dx.op.tertiary.f32(i32 46, float %465, float %422, float %471)  ; FMad(a,b,c)
  %473 = fadd fast float %472, %428
  %474 = fmul fast float %463, %411
  %475 = call float @dx.op.tertiary.f32(i32 46, float %464, float %417, float %474)  ; FMad(a,b,c)
  %476 = call float @dx.op.tertiary.f32(i32 46, float %465, float %423, float %475)  ; FMad(a,b,c)
  %477 = fadd fast float %476, %429
  %478 = fmul fast float %463, %412
  %479 = call float @dx.op.tertiary.f32(i32 46, float %464, float %418, float %478)  ; FMad(a,b,c)
  %480 = call float @dx.op.tertiary.f32(i32 46, float %465, float %424, float %479)  ; FMad(a,b,c)
  %481 = fadd fast float %480, %430
  %482 = fdiv fast float %469, %481
  %483 = fdiv fast float %473, %481
  %484 = fdiv fast float %477, %481
  %485 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %484)  ; FMax(a,b)
  %486 = fmul fast float %193, 0x401921FB60000000
  %487 = call float @dx.op.unary.f32(i32 13, float %486)  ; Sin(value)
  %488 = call float @dx.op.unary.f32(i32 12, float %486)  ; Cos(value)
  %489 = fsub fast float -0.000000e+00, %487
  %490 = icmp eq i32 %459, 0
  br i1 %490, label %491, label %562, !dx.controlflow.hints !45

; <label>:491                                     ; preds = %390
  %492 = fmul fast float %488, %404
  %493 = call float @dx.op.tertiary.f32(i32 46, float %487, float %404, float 0.000000e+00)  ; FMad(a,b,c)
  %494 = fmul fast float %404, %489
  %495 = call float @dx.op.tertiary.f32(i32 46, float %488, float %404, float 0.000000e+00)  ; FMad(a,b,c)
  br label %496

; <label>:496                                     ; preds = %496, %491
  %497 = phi float [ 0.000000e+00, %491 ], [ %529, %496 ]
  %498 = phi float [ 0.000000e+00, %491 ], [ %531, %496 ]
  %499 = phi i32 [ 0, %491 ], [ %532, %496 ]
  %500 = mul i32 %499, 2
  %501 = add i32 0, %500
  %502 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %501
  %503 = load float, float* %502, align 4
  %504 = mul i32 %499, 2
  %505 = add i32 1, %504
  %506 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %505
  %507 = load float, float* %506, align 4
  %508 = fmul fast float %492, %503
  %509 = call float @dx.op.tertiary.f32(i32 46, float %507, float %494, float %508)  ; FMad(a,b,c)
  %510 = fmul fast float %503, %493
  %511 = call float @dx.op.tertiary.f32(i32 46, float %507, float %495, float %510)  ; FMad(a,b,c)
  %512 = fadd fast float %509, %482
  %513 = fadd fast float %511, %483
  %514 = fmul fast float %512, %399
  %515 = fmul fast float %513, %399
  %516 = call float @dx.op.binary.f32(i32 35, float %514, float %395)  ; FMax(a,b)
  %517 = call float @dx.op.binary.f32(i32 35, float %515, float %395)  ; FMax(a,b)
  %518 = call float @dx.op.binary.f32(i32 36, float %516, float %396)  ; FMin(a,b)
  %519 = call float @dx.op.binary.f32(i32 36, float %517, float %396)  ; FMin(a,b)
  %520 = fadd fast float %518, %393
  %521 = fadd fast float %519, %394
  %522 = uitofp i32 %455 to float
  %523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %520, float %521, float %522, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  %525 = fsub fast float %524, %485
  %526 = fsub fast float %525, %403
  %527 = fcmp fast ogt float %526, 0.000000e+00
  %528 = select i1 %527, float 1.000000e+00, float 0.000000e+00
  %529 = fadd fast float %528, %497
  %530 = select i1 %527, float %526, float 0.000000e+00
  %531 = fadd fast float %530, %498
  %532 = add nuw nsw i32 %499, 1
  %533 = icmp eq i32 %532, 8
  br i1 %533, label %534, label %496

; <label>:534                                     ; preds = %496
  %535 = fdiv fast float 1.000000e+00, %529
  %536 = fmul fast float %535, %531
  %537 = fdiv fast float 1.000000e+00, %485
  %538 = fmul fast float %536, %537
  %539 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %540 = call float @dx.op.binary.f32(i32 35, float %539, float 0.000000e+00)  ; FMax(a,b)
  %541 = fmul fast float %529, 1.250000e-01
  %542 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %543 = fmul fast float %542, 2.000000e+00
  %544 = fadd fast float %543, -1.000000e+00
  %545 = fcmp fast ogt float %544, 0.000000e+00
  %546 = fcmp fast olt float %544, 0.000000e+00
  %547 = zext i1 %545 to i32
  %548 = zext i1 %546 to i32
  %549 = sub nsw i32 %547, %548
  %550 = sitofp i32 %549 to float
  %551 = fmul fast float %550, %544
  %552 = fsub fast float 1.000000e+00, %551
  %553 = fmul fast float %552, %552
  %554 = fmul fast float %553, %552
  %555 = fsub fast float %552, %554
  %556 = fmul fast float %555, %540
  %557 = fsub fast float 1.000000e+00, %554
  %558 = fsub fast float %557, %556
  %559 = fmul fast float %550, 5.000000e-01
  %560 = fmul fast float %559, %558
  %561 = fsub fast float 5.000000e-01, %560
  br label %1177

; <label>:562                                     ; preds = %390
  %563 = fsub fast float 1.000000e+00, %485
  %564 = fmul fast float %563, 5.000000e-01
  %565 = fadd fast float %564, %485
  %566 = fsub fast float %463, %284
  %567 = fsub fast float %464, %285
  %568 = fsub fast float %465, %286
  %569 = call float @dx.op.dot3.f32(i32 55, float %566, float %567, float %568, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %570 = fdiv fast float %569, %304
  %571 = call float @dx.op.binary.f32(i32 35, float %570, float -1.000000e+00)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float %571, float 1.000000e+00)  ; FMin(a,b)
  %573 = fmul fast float %572, %276
  %574 = fmul fast float %572, %277
  %575 = fmul fast float %572, %278
  %576 = fsub fast float %566, %573
  %577 = fsub fast float %567, %574
  %578 = fsub fast float %568, %575
  %579 = call float @dx.op.dot3.f32(i32 55, float %576, float %577, float %578, float %576, float %577, float %578)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 25, float %579)  ; Rsqrt(value)
  %581 = fmul fast float %576, %580
  %582 = fmul fast float %577, %580
  %583 = fmul fast float %578, %580
  %584 = call float @dx.op.unary.f32(i32 25, float %304)  ; Rsqrt(value)
  %585 = fmul fast float %584, %276
  %586 = fmul fast float %584, %277
  %587 = fmul fast float %584, %278
  br i1 %458, label %588, label %592, !dx.controlflow.hints !46

; <label>:588                                     ; preds = %562
  %589 = fcmp fast olt float %582, 0x3FE6666660000000
  %590 = select i1 %589, float 1.000000e+00, float 0.000000e+00
  %591 = select i1 %589, float 0.000000e+00, float 1.000000e+00
  br label %592

; <label>:592                                     ; preds = %588, %562
  %593 = phi float [ 0.000000e+00, %588 ], [ %585, %562 ]
  %594 = phi float [ %590, %588 ], [ %586, %562 ]
  %595 = phi float [ %591, %588 ], [ %587, %562 ]
  %596 = fmul fast float %594, %583
  %597 = fmul fast float %595, %582
  %598 = fsub fast float %596, %597
  %599 = fmul fast float %595, %581
  %600 = fmul fast float %593, %583
  %601 = fsub fast float %599, %600
  %602 = fmul fast float %593, %582
  %603 = fmul fast float %594, %581
  %604 = fsub fast float %602, %603
  %605 = call float @dx.op.dot3.f32(i32 55, float %598, float %601, float %604, float %598, float %601, float %604)  ; Dot3(ax,ay,az,bx,by,bz)
  %606 = call float @dx.op.unary.f32(i32 25, float %605)  ; Rsqrt(value)
  %607 = fmul fast float %606, %281
  %608 = fmul fast float %607, %598
  %609 = fmul fast float %607, %601
  %610 = fmul fast float %604, %281
  %611 = fmul fast float %610, %606
  %612 = fmul fast float %482, %433
  %613 = call float @dx.op.tertiary.f32(i32 46, float %483, float %439, float %612)  ; FMad(a,b,c)
  %614 = call float @dx.op.tertiary.f32(i32 46, float %565, float %445, float %613)  ; FMad(a,b,c)
  %615 = fadd fast float %614, %451
  %616 = fmul fast float %482, %434
  %617 = call float @dx.op.tertiary.f32(i32 46, float %483, float %440, float %616)  ; FMad(a,b,c)
  %618 = call float @dx.op.tertiary.f32(i32 46, float %565, float %446, float %617)  ; FMad(a,b,c)
  %619 = fadd fast float %618, %452
  %620 = fmul fast float %482, %435
  %621 = call float @dx.op.tertiary.f32(i32 46, float %483, float %441, float %620)  ; FMad(a,b,c)
  %622 = call float @dx.op.tertiary.f32(i32 46, float %565, float %447, float %621)  ; FMad(a,b,c)
  %623 = fadd fast float %622, %453
  %624 = fmul fast float %482, %436
  %625 = call float @dx.op.tertiary.f32(i32 46, float %483, float %442, float %624)  ; FMad(a,b,c)
  %626 = call float @dx.op.tertiary.f32(i32 46, float %565, float %448, float %625)  ; FMad(a,b,c)
  %627 = fadd fast float %626, %454
  %628 = fdiv fast float 1.000000e+00, %627
  %629 = fmul fast float %628, %615
  %630 = fmul fast float %628, %619
  %631 = fmul fast float %628, %623
  %632 = fsub fast float -0.000000e+00, %581
  %633 = fsub fast float -0.000000e+00, %582
  %634 = fsub fast float -0.000000e+00, %583
  %635 = fsub fast float %284, %608
  %636 = fsub fast float %285, %609
  %637 = fsub fast float %286, %611
  %638 = fsub fast float %629, %635
  %639 = fsub fast float %630, %636
  %640 = fsub fast float %631, %637
  %641 = call float @dx.op.dot3.f32(i32 55, float %638, float %639, float %640, float %638, float %639, float %640)  ; Dot3(ax,ay,az,bx,by,bz)
  %642 = call float @dx.op.unary.f32(i32 25, float %641)  ; Rsqrt(value)
  %643 = fmul fast float %638, %642
  %644 = fmul fast float %639, %642
  %645 = fmul fast float %640, %642
  %646 = fsub fast float %463, %635
  %647 = fsub fast float %464, %636
  %648 = fsub fast float %465, %637
  %649 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %646, float %647, float %648)  ; Dot3(ax,ay,az,bx,by,bz)
  %650 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %643, float %644, float %645)  ; Dot3(ax,ay,az,bx,by,bz)
  %651 = fdiv fast float 1.000000e+00, %650
  %652 = fmul fast float %651, %649
  %653 = fmul fast float %652, %643
  %654 = fmul fast float %652, %644
  %655 = fmul fast float %652, %645
  %656 = fadd fast float %653, %635
  %657 = fadd fast float %654, %636
  %658 = fadd fast float %655, %637
  %659 = fadd fast float %608, %284
  %660 = fadd fast float %609, %285
  %661 = fadd fast float %611, %286
  %662 = fsub fast float %629, %659
  %663 = fsub fast float %630, %660
  %664 = fsub fast float %631, %661
  %665 = call float @dx.op.dot3.f32(i32 55, float %662, float %663, float %664, float %662, float %663, float %664)  ; Dot3(ax,ay,az,bx,by,bz)
  %666 = call float @dx.op.unary.f32(i32 25, float %665)  ; Rsqrt(value)
  %667 = fmul fast float %666, %662
  %668 = fmul fast float %666, %663
  %669 = fmul fast float %666, %664
  %670 = fsub fast float %463, %659
  %671 = fsub fast float %464, %660
  %672 = fsub fast float %465, %661
  %673 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %670, float %671, float %672)  ; Dot3(ax,ay,az,bx,by,bz)
  %674 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %667, float %668, float %669)  ; Dot3(ax,ay,az,bx,by,bz)
  %675 = fdiv fast float 1.000000e+00, %674
  %676 = fmul fast float %675, %673
  %677 = fmul fast float %676, %667
  %678 = fmul fast float %676, %668
  %679 = fmul fast float %676, %669
  %680 = fadd fast float %677, %659
  %681 = fadd fast float %678, %660
  %682 = fadd fast float %679, %661
  %683 = fmul fast float %656, %409
  %684 = call float @dx.op.tertiary.f32(i32 46, float %657, float %415, float %683)  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float %658, float %421, float %684)  ; FMad(a,b,c)
  %686 = fadd fast float %685, %427
  %687 = fmul fast float %656, %410
  %688 = call float @dx.op.tertiary.f32(i32 46, float %657, float %416, float %687)  ; FMad(a,b,c)
  %689 = call float @dx.op.tertiary.f32(i32 46, float %658, float %422, float %688)  ; FMad(a,b,c)
  %690 = fadd fast float %689, %428
  %691 = fmul fast float %656, %412
  %692 = call float @dx.op.tertiary.f32(i32 46, float %657, float %418, float %691)  ; FMad(a,b,c)
  %693 = call float @dx.op.tertiary.f32(i32 46, float %658, float %424, float %692)  ; FMad(a,b,c)
  %694 = fadd fast float %693, %430
  %695 = fmul fast float %680, %409
  %696 = call float @dx.op.tertiary.f32(i32 46, float %681, float %415, float %695)  ; FMad(a,b,c)
  %697 = call float @dx.op.tertiary.f32(i32 46, float %682, float %421, float %696)  ; FMad(a,b,c)
  %698 = fadd fast float %697, %427
  %699 = fmul fast float %680, %410
  %700 = call float @dx.op.tertiary.f32(i32 46, float %681, float %416, float %699)  ; FMad(a,b,c)
  %701 = call float @dx.op.tertiary.f32(i32 46, float %682, float %422, float %700)  ; FMad(a,b,c)
  %702 = fadd fast float %701, %428
  %703 = fmul fast float %680, %412
  %704 = call float @dx.op.tertiary.f32(i32 46, float %681, float %418, float %703)  ; FMad(a,b,c)
  %705 = call float @dx.op.tertiary.f32(i32 46, float %682, float %424, float %704)  ; FMad(a,b,c)
  %706 = fadd fast float %705, %430
  %707 = fdiv fast float 1.000000e+00, %694
  %708 = fmul fast float %707, %686
  %709 = fmul fast float %707, %690
  %710 = fdiv fast float 1.000000e+00, %706
  %711 = fmul fast float %710, %698
  %712 = fmul fast float %710, %702
  %713 = fsub fast float %711, %708
  %714 = fsub fast float %712, %709
  %715 = call float @dx.op.dot2.f32(i32 54, float %713, float %714, float %713, float %714)  ; Dot2(ax,ay,bx,by)
  %716 = call float @dx.op.unary.f32(i32 25, float %715)  ; Rsqrt(value)
  %717 = fmul fast float %713, %716
  %718 = fmul fast float %714, %716
  %719 = fmul fast float %713, %713
  %720 = fmul fast float %714, %714
  %721 = fadd fast float %719, %720
  %722 = call float @dx.op.unary.f32(i32 24, float %721)  ; Sqrt(value)
  %723 = fmul fast float %722, 5.000000e-01
  br i1 %458, label %816, label %724, !dx.controlflow.hints !47

; <label>:724                                     ; preds = %592
  %725 = fsub fast float %284, %276
  %726 = fsub fast float %285, %277
  %727 = fsub fast float %286, %278
  %728 = fsub fast float %629, %725
  %729 = fsub fast float %630, %726
  %730 = fsub fast float %631, %727
  %731 = call float @dx.op.dot3.f32(i32 55, float %728, float %729, float %730, float %728, float %729, float %730)  ; Dot3(ax,ay,az,bx,by,bz)
  %732 = call float @dx.op.unary.f32(i32 25, float %731)  ; Rsqrt(value)
  %733 = fmul fast float %732, %728
  %734 = fmul fast float %732, %729
  %735 = fmul fast float %732, %730
  %736 = fsub fast float %463, %725
  %737 = fsub fast float %464, %726
  %738 = fsub fast float %465, %727
  %739 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %736, float %737, float %738)  ; Dot3(ax,ay,az,bx,by,bz)
  %740 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %733, float %734, float %735)  ; Dot3(ax,ay,az,bx,by,bz)
  %741 = fdiv fast float 1.000000e+00, %740
  %742 = fmul fast float %741, %739
  %743 = fmul fast float %742, %733
  %744 = fmul fast float %742, %734
  %745 = fmul fast float %742, %735
  %746 = fadd fast float %743, %725
  %747 = fadd fast float %744, %726
  %748 = fadd fast float %745, %727
  %749 = fadd fast float %284, %276
  %750 = fadd fast float %285, %277
  %751 = fadd fast float %286, %278
  %752 = fsub fast float %629, %749
  %753 = fsub fast float %630, %750
  %754 = fsub fast float %631, %751
  %755 = call float @dx.op.dot3.f32(i32 55, float %752, float %753, float %754, float %752, float %753, float %754)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = call float @dx.op.unary.f32(i32 25, float %755)  ; Rsqrt(value)
  %757 = fmul fast float %756, %752
  %758 = fmul fast float %756, %753
  %759 = fmul fast float %756, %754
  %760 = fsub fast float %463, %749
  %761 = fsub fast float %464, %750
  %762 = fsub fast float %465, %751
  %763 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %760, float %761, float %762)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %757, float %758, float %759)  ; Dot3(ax,ay,az,bx,by,bz)
  %765 = fdiv fast float 1.000000e+00, %764
  %766 = fmul fast float %765, %763
  %767 = fmul fast float %766, %757
  %768 = fmul fast float %766, %758
  %769 = fmul fast float %766, %759
  %770 = fadd fast float %767, %749
  %771 = fadd fast float %768, %750
  %772 = fadd fast float %769, %751
  %773 = fmul fast float %746, %409
  %774 = call float @dx.op.tertiary.f32(i32 46, float %747, float %415, float %773)  ; FMad(a,b,c)
  %775 = call float @dx.op.tertiary.f32(i32 46, float %748, float %421, float %774)  ; FMad(a,b,c)
  %776 = fadd fast float %775, %427
  %777 = fmul fast float %746, %410
  %778 = call float @dx.op.tertiary.f32(i32 46, float %747, float %416, float %777)  ; FMad(a,b,c)
  %779 = call float @dx.op.tertiary.f32(i32 46, float %748, float %422, float %778)  ; FMad(a,b,c)
  %780 = fadd fast float %779, %428
  %781 = fmul fast float %746, %412
  %782 = call float @dx.op.tertiary.f32(i32 46, float %747, float %418, float %781)  ; FMad(a,b,c)
  %783 = call float @dx.op.tertiary.f32(i32 46, float %748, float %424, float %782)  ; FMad(a,b,c)
  %784 = fadd fast float %783, %430
  %785 = fmul fast float %770, %409
  %786 = call float @dx.op.tertiary.f32(i32 46, float %771, float %415, float %785)  ; FMad(a,b,c)
  %787 = call float @dx.op.tertiary.f32(i32 46, float %772, float %421, float %786)  ; FMad(a,b,c)
  %788 = fadd fast float %787, %427
  %789 = fmul fast float %770, %410
  %790 = call float @dx.op.tertiary.f32(i32 46, float %771, float %416, float %789)  ; FMad(a,b,c)
  %791 = call float @dx.op.tertiary.f32(i32 46, float %772, float %422, float %790)  ; FMad(a,b,c)
  %792 = fadd fast float %791, %428
  %793 = fmul fast float %770, %412
  %794 = call float @dx.op.tertiary.f32(i32 46, float %771, float %418, float %793)  ; FMad(a,b,c)
  %795 = call float @dx.op.tertiary.f32(i32 46, float %772, float %424, float %794)  ; FMad(a,b,c)
  %796 = fadd fast float %795, %430
  %797 = fdiv fast float 1.000000e+00, %784
  %798 = fmul fast float %797, %776
  %799 = fmul fast float %797, %780
  %800 = fdiv fast float 1.000000e+00, %796
  %801 = fmul fast float %800, %788
  %802 = fmul fast float %800, %792
  %803 = fsub fast float %801, %798
  %804 = fsub fast float %802, %799
  %805 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %803, float %804)  ; Dot2(ax,ay,bx,by)
  %806 = call float @dx.op.unary.f32(i32 25, float %805)  ; Rsqrt(value)
  %807 = fmul fast float %803, %806
  %808 = fmul fast float %804, %806
  %809 = fmul fast float %803, %803
  %810 = fmul fast float %804, %804
  %811 = fadd fast float %809, %810
  %812 = call float @dx.op.unary.f32(i32 24, float %811)  ; Sqrt(value)
  %813 = fmul fast float %812, 5.000000e-01
  %814 = fcmp fast olt float %813, %723
  br i1 %814, label %815, label %816, !dx.controlflow.hints !48

; <label>:815                                     ; preds = %724
  br label %816

; <label>:816                                     ; preds = %815, %724, %592
  %817 = phi float [ %723, %592 ], [ %813, %815 ], [ %723, %724 ]
  %818 = phi float [ %723, %592 ], [ %723, %815 ], [ %813, %724 ]
  %819 = phi float [ %717, %592 ], [ %717, %815 ], [ %807, %724 ]
  %820 = phi float [ %718, %592 ], [ %718, %815 ], [ %808, %724 ]
  %821 = fmul fast float %817, %404
  %822 = fdiv fast float %821, %818
  %823 = fsub fast float %404, %822
  %824 = fmul fast float %819, %819
  %825 = fmul fast float %824, %823
  %826 = fadd fast float %825, %822
  %827 = fmul fast float %820, %819
  %828 = fmul fast float %827, %823
  %829 = fmul fast float %820, %820
  %830 = fmul fast float %829, %823
  %831 = fadd fast float %830, %822
  %832 = fmul fast float %826, %488
  %833 = call float @dx.op.tertiary.f32(i32 46, float %487, float %828, float %832)  ; FMad(a,b,c)
  %834 = fmul fast float %828, %488
  %835 = call float @dx.op.tertiary.f32(i32 46, float %487, float %831, float %834)  ; FMad(a,b,c)
  %836 = fmul fast float %826, %489
  %837 = call float @dx.op.tertiary.f32(i32 46, float %488, float %828, float %836)  ; FMad(a,b,c)
  %838 = fmul fast float %828, %489
  %839 = call float @dx.op.tertiary.f32(i32 46, float %488, float %831, float %838)  ; FMad(a,b,c)
  br label %840

; <label>:840                                     ; preds = %878, %816
  %841 = phi float [ 0.000000e+00, %816 ], [ %879, %878 ]
  %842 = phi float [ 0.000000e+00, %816 ], [ %880, %878 ]
  %843 = phi float [ 0.000000e+00, %816 ], [ %881, %878 ]
  %844 = phi float [ 0.000000e+00, %816 ], [ %882, %878 ]
  %845 = phi i32 [ 0, %816 ], [ %883, %878 ]
  %846 = mul i32 %845, 2
  %847 = add i32 0, %846
  %848 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %847
  %849 = load float, float* %848, align 4
  %850 = mul i32 %845, 2
  %851 = add i32 1, %850
  %852 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %851
  %853 = load float, float* %852, align 4
  %854 = fmul fast float %849, %833
  %855 = call float @dx.op.tertiary.f32(i32 46, float %853, float %837, float %854)  ; FMad(a,b,c)
  %856 = fmul fast float %849, %835
  %857 = call float @dx.op.tertiary.f32(i32 46, float %853, float %839, float %856)  ; FMad(a,b,c)
  %858 = fadd fast float %855, %482
  %859 = fadd fast float %857, %483
  %860 = fmul fast float %858, %399
  %861 = fmul fast float %859, %399
  %862 = call float @dx.op.binary.f32(i32 35, float %860, float %395)  ; FMax(a,b)
  %863 = call float @dx.op.binary.f32(i32 35, float %861, float %395)  ; FMax(a,b)
  %864 = call float @dx.op.binary.f32(i32 36, float %862, float %396)  ; FMin(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %863, float %396)  ; FMin(a,b)
  %866 = fadd fast float %864, %393
  %867 = fadd fast float %865, %394
  %868 = uitofp i32 %455 to float
  %869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %866, float %867, float %868, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = fadd fast float %485, %403
  %872 = fcmp fast olt float %871, %870
  br i1 %872, label %873, label %878, !dx.controlflow.hints !49

; <label>:873                                     ; preds = %840
  %874 = fadd fast float %870, %843
  %875 = fadd fast float %855, %841
  %876 = fadd fast float %857, %842
  %877 = fadd fast float %844, 1.000000e+00
  br label %878

; <label>:878                                     ; preds = %873, %840
  %879 = phi float [ %875, %873 ], [ %841, %840 ]
  %880 = phi float [ %876, %873 ], [ %842, %840 ]
  %881 = phi float [ %874, %873 ], [ %843, %840 ]
  %882 = phi float [ %877, %873 ], [ %844, %840 ]
  %883 = add nuw nsw i32 %845, 1
  %884 = icmp eq i32 %883, 8
  br i1 %884, label %885, label %840

; <label>:885                                     ; preds = %878
  %886 = fdiv fast float 1.000000e+00, %882
  %887 = fcmp fast oeq float %882, 0.000000e+00
  %888 = fmul fast float %886, %881
  %889 = select i1 %887, float -1.000000e+00, float %888
  %890 = fcmp fast olt float %889, 0.000000e+00
  br i1 %890, label %1177, label %891, !dx.controlflow.hints !50

; <label>:891                                     ; preds = %885
  %892 = fmul fast float %886, %880
  %893 = select i1 %887, float 0.000000e+00, float %892
  %894 = fmul fast float %886, %879
  %895 = select i1 %887, float 0.000000e+00, float %894
  %896 = fadd fast float %895, %482
  %897 = fadd fast float %893, %483
  br i1 %458, label %898, label %902, !dx.controlflow.hints !46

; <label>:898                                     ; preds = %891
  %899 = fcmp fast olt float %582, 0x3FE6666660000000
  %900 = select i1 %899, float 1.000000e+00, float 0.000000e+00
  %901 = select i1 %899, float 0.000000e+00, float 1.000000e+00
  br label %902

; <label>:902                                     ; preds = %898, %891
  %903 = phi float [ 0.000000e+00, %898 ], [ %585, %891 ]
  %904 = phi float [ %900, %898 ], [ %586, %891 ]
  %905 = phi float [ %901, %898 ], [ %587, %891 ]
  %906 = fmul fast float %904, %583
  %907 = fmul fast float %905, %582
  %908 = fsub fast float %906, %907
  %909 = fmul fast float %905, %581
  %910 = fmul fast float %903, %583
  %911 = fsub fast float %909, %910
  %912 = fmul fast float %903, %582
  %913 = fmul fast float %904, %581
  %914 = fsub fast float %912, %913
  %915 = call float @dx.op.dot3.f32(i32 55, float %908, float %911, float %914, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = call float @dx.op.unary.f32(i32 25, float %915)  ; Rsqrt(value)
  %917 = fmul fast float %916, %281
  %918 = fmul fast float %917, %908
  %919 = fmul fast float %917, %911
  %920 = fmul fast float %914, %281
  %921 = fmul fast float %920, %916
  %922 = fmul fast float %896, %433
  %923 = call float @dx.op.tertiary.f32(i32 46, float %897, float %439, float %922)  ; FMad(a,b,c)
  %924 = call float @dx.op.tertiary.f32(i32 46, float %889, float %445, float %923)  ; FMad(a,b,c)
  %925 = fadd fast float %924, %451
  %926 = fmul fast float %896, %434
  %927 = call float @dx.op.tertiary.f32(i32 46, float %897, float %440, float %926)  ; FMad(a,b,c)
  %928 = call float @dx.op.tertiary.f32(i32 46, float %889, float %446, float %927)  ; FMad(a,b,c)
  %929 = fadd fast float %928, %452
  %930 = fmul fast float %896, %435
  %931 = call float @dx.op.tertiary.f32(i32 46, float %897, float %441, float %930)  ; FMad(a,b,c)
  %932 = call float @dx.op.tertiary.f32(i32 46, float %889, float %447, float %931)  ; FMad(a,b,c)
  %933 = fadd fast float %932, %453
  %934 = fmul fast float %896, %436
  %935 = call float @dx.op.tertiary.f32(i32 46, float %897, float %442, float %934)  ; FMad(a,b,c)
  %936 = call float @dx.op.tertiary.f32(i32 46, float %889, float %448, float %935)  ; FMad(a,b,c)
  %937 = fadd fast float %936, %454
  %938 = fdiv fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %925
  %940 = fmul fast float %938, %929
  %941 = fmul fast float %938, %933
  %942 = fsub fast float %284, %918
  %943 = fsub fast float %285, %919
  %944 = fsub fast float %286, %921
  %945 = fsub fast float %939, %942
  %946 = fsub fast float %940, %943
  %947 = fsub fast float %941, %944
  %948 = call float @dx.op.dot3.f32(i32 55, float %945, float %946, float %947, float %945, float %946, float %947)  ; Dot3(ax,ay,az,bx,by,bz)
  %949 = call float @dx.op.unary.f32(i32 25, float %948)  ; Rsqrt(value)
  %950 = fmul fast float %945, %949
  %951 = fmul fast float %946, %949
  %952 = fmul fast float %947, %949
  %953 = fsub fast float %463, %942
  %954 = fsub fast float %464, %943
  %955 = fsub fast float %465, %944
  %956 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %953, float %954, float %955)  ; Dot3(ax,ay,az,bx,by,bz)
  %957 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %950, float %951, float %952)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = fdiv fast float 1.000000e+00, %957
  %959 = fmul fast float %958, %956
  %960 = fmul fast float %959, %950
  %961 = fmul fast float %959, %951
  %962 = fmul fast float %959, %952
  %963 = fadd fast float %960, %942
  %964 = fadd fast float %961, %943
  %965 = fadd fast float %962, %944
  %966 = fadd fast float %918, %284
  %967 = fadd fast float %919, %285
  %968 = fadd fast float %921, %286
  %969 = fsub fast float %939, %966
  %970 = fsub fast float %940, %967
  %971 = fsub fast float %941, %968
  %972 = call float @dx.op.dot3.f32(i32 55, float %969, float %970, float %971, float %969, float %970, float %971)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = call float @dx.op.unary.f32(i32 25, float %972)  ; Rsqrt(value)
  %974 = fmul fast float %973, %969
  %975 = fmul fast float %973, %970
  %976 = fmul fast float %973, %971
  %977 = fsub fast float %463, %966
  %978 = fsub fast float %464, %967
  %979 = fsub fast float %465, %968
  %980 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %977, float %978, float %979)  ; Dot3(ax,ay,az,bx,by,bz)
  %981 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %974, float %975, float %976)  ; Dot3(ax,ay,az,bx,by,bz)
  %982 = fdiv fast float 1.000000e+00, %981
  %983 = fmul fast float %982, %980
  %984 = fmul fast float %983, %974
  %985 = fmul fast float %983, %975
  %986 = fmul fast float %983, %976
  %987 = fadd fast float %984, %966
  %988 = fadd fast float %985, %967
  %989 = fadd fast float %986, %968
  %990 = fmul fast float %963, %409
  %991 = call float @dx.op.tertiary.f32(i32 46, float %964, float %415, float %990)  ; FMad(a,b,c)
  %992 = call float @dx.op.tertiary.f32(i32 46, float %965, float %421, float %991)  ; FMad(a,b,c)
  %993 = fadd fast float %992, %427
  %994 = fmul fast float %963, %410
  %995 = call float @dx.op.tertiary.f32(i32 46, float %964, float %416, float %994)  ; FMad(a,b,c)
  %996 = call float @dx.op.tertiary.f32(i32 46, float %965, float %422, float %995)  ; FMad(a,b,c)
  %997 = fadd fast float %996, %428
  %998 = fmul fast float %963, %412
  %999 = call float @dx.op.tertiary.f32(i32 46, float %964, float %418, float %998)  ; FMad(a,b,c)
  %1000 = call float @dx.op.tertiary.f32(i32 46, float %965, float %424, float %999)  ; FMad(a,b,c)
  %1001 = fadd fast float %1000, %430
  %1002 = fmul fast float %987, %409
  %1003 = call float @dx.op.tertiary.f32(i32 46, float %988, float %415, float %1002)  ; FMad(a,b,c)
  %1004 = call float @dx.op.tertiary.f32(i32 46, float %989, float %421, float %1003)  ; FMad(a,b,c)
  %1005 = fadd fast float %1004, %427
  %1006 = fmul fast float %987, %410
  %1007 = call float @dx.op.tertiary.f32(i32 46, float %988, float %416, float %1006)  ; FMad(a,b,c)
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %989, float %422, float %1007)  ; FMad(a,b,c)
  %1009 = fadd fast float %1008, %428
  %1010 = fmul fast float %987, %412
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %988, float %418, float %1010)  ; FMad(a,b,c)
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %989, float %424, float %1011)  ; FMad(a,b,c)
  %1013 = fadd fast float %1012, %430
  %1014 = fdiv fast float 1.000000e+00, %1001
  %1015 = fmul fast float %1014, %993
  %1016 = fmul fast float %1014, %997
  %1017 = fdiv fast float 1.000000e+00, %1013
  %1018 = fmul fast float %1017, %1005
  %1019 = fmul fast float %1017, %1009
  %1020 = fsub fast float %1018, %1015
  %1021 = fsub fast float %1019, %1016
  %1022 = call float @dx.op.dot2.f32(i32 54, float %1020, float %1021, float %1020, float %1021)  ; Dot2(ax,ay,bx,by)
  %1023 = call float @dx.op.unary.f32(i32 25, float %1022)  ; Rsqrt(value)
  %1024 = fmul fast float %1020, %1023
  %1025 = fmul fast float %1021, %1023
  %1026 = fmul fast float %1020, %1020
  %1027 = fmul fast float %1021, %1021
  %1028 = fadd fast float %1026, %1027
  %1029 = call float @dx.op.unary.f32(i32 24, float %1028)  ; Sqrt(value)
  %1030 = fmul fast float %1029, 5.000000e-01
  br i1 %458, label %1123, label %1031, !dx.controlflow.hints !47

; <label>:1031                                    ; preds = %902
  %1032 = fsub fast float %284, %276
  %1033 = fsub fast float %285, %277
  %1034 = fsub fast float %286, %278
  %1035 = fsub fast float %939, %1032
  %1036 = fsub fast float %940, %1033
  %1037 = fsub fast float %941, %1034
  %1038 = call float @dx.op.dot3.f32(i32 55, float %1035, float %1036, float %1037, float %1035, float %1036, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = call float @dx.op.unary.f32(i32 25, float %1038)  ; Rsqrt(value)
  %1040 = fmul fast float %1039, %1035
  %1041 = fmul fast float %1039, %1036
  %1042 = fmul fast float %1039, %1037
  %1043 = fsub fast float %463, %1032
  %1044 = fsub fast float %464, %1033
  %1045 = fsub fast float %465, %1034
  %1046 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %1043, float %1044, float %1045)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %1040, float %1041, float %1042)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = fdiv fast float 1.000000e+00, %1047
  %1049 = fmul fast float %1048, %1046
  %1050 = fmul fast float %1049, %1040
  %1051 = fmul fast float %1049, %1041
  %1052 = fmul fast float %1049, %1042
  %1053 = fadd fast float %1050, %1032
  %1054 = fadd fast float %1051, %1033
  %1055 = fadd fast float %1052, %1034
  %1056 = fadd fast float %284, %276
  %1057 = fadd fast float %285, %277
  %1058 = fadd fast float %286, %278
  %1059 = fsub fast float %939, %1056
  %1060 = fsub fast float %940, %1057
  %1061 = fsub fast float %941, %1058
  %1062 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1060, float %1061, float %1059, float %1060, float %1061)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = call float @dx.op.unary.f32(i32 25, float %1062)  ; Rsqrt(value)
  %1064 = fmul fast float %1063, %1059
  %1065 = fmul fast float %1063, %1060
  %1066 = fmul fast float %1063, %1061
  %1067 = fsub fast float %463, %1056
  %1068 = fsub fast float %464, %1057
  %1069 = fsub fast float %465, %1058
  %1070 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %1067, float %1068, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1071 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %1064, float %1065, float %1066)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = fdiv fast float 1.000000e+00, %1071
  %1073 = fmul fast float %1072, %1070
  %1074 = fmul fast float %1073, %1064
  %1075 = fmul fast float %1073, %1065
  %1076 = fmul fast float %1073, %1066
  %1077 = fadd fast float %1074, %1056
  %1078 = fadd fast float %1075, %1057
  %1079 = fadd fast float %1076, %1058
  %1080 = fmul fast float %1053, %409
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %415, float %1080)  ; FMad(a,b,c)
  %1082 = call float @dx.op.tertiary.f32(i32 46, float %1055, float %421, float %1081)  ; FMad(a,b,c)
  %1083 = fadd fast float %1082, %427
  %1084 = fmul fast float %1053, %410
  %1085 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %416, float %1084)  ; FMad(a,b,c)
  %1086 = call float @dx.op.tertiary.f32(i32 46, float %1055, float %422, float %1085)  ; FMad(a,b,c)
  %1087 = fadd fast float %1086, %428
  %1088 = fmul fast float %1053, %412
  %1089 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %418, float %1088)  ; FMad(a,b,c)
  %1090 = call float @dx.op.tertiary.f32(i32 46, float %1055, float %424, float %1089)  ; FMad(a,b,c)
  %1091 = fadd fast float %1090, %430
  %1092 = fmul fast float %1077, %409
  %1093 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %415, float %1092)  ; FMad(a,b,c)
  %1094 = call float @dx.op.tertiary.f32(i32 46, float %1079, float %421, float %1093)  ; FMad(a,b,c)
  %1095 = fadd fast float %1094, %427
  %1096 = fmul fast float %1077, %410
  %1097 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %416, float %1096)  ; FMad(a,b,c)
  %1098 = call float @dx.op.tertiary.f32(i32 46, float %1079, float %422, float %1097)  ; FMad(a,b,c)
  %1099 = fadd fast float %1098, %428
  %1100 = fmul fast float %1077, %412
  %1101 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %418, float %1100)  ; FMad(a,b,c)
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1079, float %424, float %1101)  ; FMad(a,b,c)
  %1103 = fadd fast float %1102, %430
  %1104 = fdiv fast float 1.000000e+00, %1091
  %1105 = fmul fast float %1104, %1083
  %1106 = fmul fast float %1104, %1087
  %1107 = fdiv fast float 1.000000e+00, %1103
  %1108 = fmul fast float %1107, %1095
  %1109 = fmul fast float %1107, %1099
  %1110 = fsub fast float %1108, %1105
  %1111 = fsub fast float %1109, %1106
  %1112 = call float @dx.op.dot2.f32(i32 54, float %1110, float %1111, float %1110, float %1111)  ; Dot2(ax,ay,bx,by)
  %1113 = call float @dx.op.unary.f32(i32 25, float %1112)  ; Rsqrt(value)
  %1114 = fmul fast float %1110, %1113
  %1115 = fmul fast float %1111, %1113
  %1116 = fmul fast float %1110, %1110
  %1117 = fmul fast float %1111, %1111
  %1118 = fadd fast float %1116, %1117
  %1119 = call float @dx.op.unary.f32(i32 24, float %1118)  ; Sqrt(value)
  %1120 = fmul fast float %1119, 5.000000e-01
  %1121 = fcmp fast olt float %1120, %1030
  br i1 %1121, label %1122, label %1123, !dx.controlflow.hints !48

; <label>:1122                                    ; preds = %1031
  br label %1123

; <label>:1123                                    ; preds = %1122, %1031, %902
  %1124 = phi float [ %1030, %902 ], [ %1120, %1122 ], [ %1030, %1031 ]
  %1125 = phi float [ %1030, %902 ], [ %1030, %1122 ], [ %1120, %1031 ]
  %1126 = phi float [ %1024, %902 ], [ %1024, %1122 ], [ %1114, %1031 ]
  %1127 = phi float [ %1025, %902 ], [ %1025, %1122 ], [ %1115, %1031 ]
  %1128 = fsub fast float %1125, %1124
  %1129 = fmul fast float %1126, %1126
  %1130 = fmul fast float %1129, %1128
  %1131 = fadd fast float %1130, %1124
  %1132 = fmul fast float %1126, %1128
  %1133 = fmul fast float %1132, %1127
  %1134 = fmul fast float %1127, %1127
  %1135 = fmul fast float %1134, %1128
  %1136 = fadd fast float %1135, %1124
  %1137 = fmul fast float %1131, %488
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %487, float %1133, float %1137)  ; FMad(a,b,c)
  %1139 = fmul fast float %1133, %488
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %487, float %1136, float %1139)  ; FMad(a,b,c)
  %1141 = fmul fast float %1131, %489
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %488, float %1133, float %1141)  ; FMad(a,b,c)
  %1143 = fmul fast float %1133, %489
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %488, float %1136, float %1143)  ; FMad(a,b,c)
  br label %1145

; <label>:1145                                    ; preds = %1145, %1123
  %1146 = phi float [ 0.000000e+00, %1123 ], [ %1172, %1145 ]
  %1147 = phi i32 [ 0, %1123 ], [ %1173, %1145 ]
  %1148 = mul i32 %1147, 2
  %1149 = add i32 0, %1148
  %1150 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1149
  %1151 = load float, float* %1150, align 4
  %1152 = mul i32 %1147, 2
  %1153 = add i32 1, %1152
  %1154 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1153
  %1155 = load float, float* %1154, align 4
  %1156 = fmul fast float %1151, %1138
  %1157 = call float @dx.op.tertiary.f32(i32 46, float %1155, float %1142, float %1156)  ; FMad(a,b,c)
  %1158 = fmul fast float %1151, %1140
  %1159 = call float @dx.op.tertiary.f32(i32 46, float %1155, float %1144, float %1158)  ; FMad(a,b,c)
  %1160 = fadd fast float %1157, %482
  %1161 = fadd fast float %1159, %483
  %1162 = fmul fast float %1160, %399
  %1163 = fmul fast float %1161, %399
  %1164 = call float @dx.op.binary.f32(i32 35, float %1162, float %395)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 35, float %1163, float %395)  ; FMax(a,b)
  %1166 = call float @dx.op.binary.f32(i32 36, float %1164, float %396)  ; FMin(a,b)
  %1167 = call float @dx.op.binary.f32(i32 36, float %1165, float %396)  ; FMin(a,b)
  %1168 = fadd fast float %1166, %393
  %1169 = fadd fast float %1167, %394
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %19, float %1168, float %1169, float %868, float undef, i32 0, i32 0, i32 undef, float %871)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = fadd fast float %1171, %1146
  %1173 = add nuw nsw i32 %1147, 1
  %1174 = icmp eq i32 %1173, 8
  br i1 %1174, label %1175, label %1145

; <label>:1175                                    ; preds = %1145
  %1176 = fmul fast float %1172, 1.250000e-01
  br label %1177

; <label>:1177                                    ; preds = %1175, %885, %534
  %1178 = phi float [ %561, %534 ], [ %1176, %1175 ], [ 1.000000e+00, %885 ]
  %1179 = fadd fast float %1178, -1.000000e+00
  %1180 = fmul fast float %1179, %372
  %1181 = fadd fast float %1180, 1.000000e+00
  %1182 = fmul fast float %1181, %384
  br label %1183

; <label>:1183                                    ; preds = %1177, %351
  %1184 = phi float [ %1182, %1177 ], [ %384, %351 ]
  %1185 = call float @dx.op.binary.f32(i32 36, float %1184, float %1184)  ; FMin(a,b)
  %1186 = call float @dx.op.binary.f32(i32 36, float %1184, float %1185)  ; FMin(a,b)
  %1187 = fcmp fast ogt float %1186, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1188 = zext i1 %1187 to i32
  %1189 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %1188 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1190 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  %1191 = icmp eq i32 %1190, 0
  %1192 = select i1 %1191, i32 0, i32 %263
  %1193 = or i32 %258, %1192
  %1194 = lshr i32 %198, 5
  %1195 = lshr i32 %199, 5
  %1196 = fcmp fast olt float %1184, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1197 = and i32 %25, 31
  %1198 = zext i1 %1196 to i32
  %1199 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %25
  store i32 %1198, i32 addrspace(3)* %1199, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1200 = icmp ult i32 %1197, 16
  br i1 %1200, label %1201, label %1207, !dx.controlflow.hints !51

; <label>:1201                                    ; preds = %1183
  %1202 = add i32 %25, 16
  %1203 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1202
  %1204 = load i32, i32 addrspace(3)* %1203, align 4, !tbaa !37
  %1205 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1206 = and i32 %1205, %1204
  store i32 %1206, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1207

; <label>:1207                                    ; preds = %1201, %1183
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1208 = icmp ult i32 %1197, 8
  br i1 %1208, label %1209, label %1215, !dx.controlflow.hints !52

; <label>:1209                                    ; preds = %1207
  %1210 = add i32 %25, 8
  %1211 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1210
  %1212 = load i32, i32 addrspace(3)* %1211, align 4, !tbaa !37
  %1213 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1214 = and i32 %1213, %1212
  store i32 %1214, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1215

; <label>:1215                                    ; preds = %1209, %1207
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1216 = icmp ult i32 %1197, 4
  br i1 %1216, label %1217, label %1223, !dx.controlflow.hints !53

; <label>:1217                                    ; preds = %1215
  %1218 = add i32 %25, 4
  %1219 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1218
  %1220 = load i32, i32 addrspace(3)* %1219, align 4, !tbaa !37
  %1221 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1222 = and i32 %1221, %1220
  store i32 %1222, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1223

; <label>:1223                                    ; preds = %1217, %1215
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1224 = icmp ult i32 %1197, 2
  br i1 %1224, label %1225, label %1231, !dx.controlflow.hints !54

; <label>:1225                                    ; preds = %1223
  %1226 = add i32 %25, 2
  %1227 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1226
  %1228 = load i32, i32 addrspace(3)* %1227, align 4, !tbaa !37
  %1229 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1230 = and i32 %1229, %1228
  store i32 %1230, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1231

; <label>:1231                                    ; preds = %1225, %1223
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1232 = icmp eq i32 %1197, 0
  br i1 %1232, label %1233, label %1239, !dx.controlflow.hints !55

; <label>:1233                                    ; preds = %1231
  %1234 = add i32 %25, 1
  %1235 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1234
  %1236 = load i32, i32 addrspace(3)* %1235, align 4, !tbaa !37
  %1237 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1238 = and i32 %1237, %1236
  store i32 %1238, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1239

; <label>:1239                                    ; preds = %1233, %1231
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1240 = and i32 %25, -64
  %1241 = or i32 %1240, 32
  %1242 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1240
  %1243 = load i32, i32 addrspace(3)* %1242, align 4, !tbaa !37
  %1244 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1241
  %1245 = load i32, i32 addrspace(3)* %1244, align 4, !tbaa !37
  %1246 = and i32 %1245, %1243
  %1247 = icmp ne i32 %1246, 0
  %1248 = fcmp fast ogt float %1184, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1249 = zext i1 %1248 to i32
  store i32 %1249, i32 addrspace(3)* %1199, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1200, label %1250, label %1256, !dx.controlflow.hints !51

; <label>:1250                                    ; preds = %1239
  %1251 = add i32 %25, 16
  %1252 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1251
  %1253 = load i32, i32 addrspace(3)* %1252, align 4, !tbaa !37
  %1254 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1255 = and i32 %1254, %1253
  store i32 %1255, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1256

; <label>:1256                                    ; preds = %1250, %1239
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1208, label %1257, label %1263, !dx.controlflow.hints !52

; <label>:1257                                    ; preds = %1256
  %1258 = add i32 %25, 8
  %1259 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1258
  %1260 = load i32, i32 addrspace(3)* %1259, align 4, !tbaa !37
  %1261 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1262 = and i32 %1261, %1260
  store i32 %1262, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1263

; <label>:1263                                    ; preds = %1257, %1256
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1216, label %1264, label %1270, !dx.controlflow.hints !53

; <label>:1264                                    ; preds = %1263
  %1265 = add i32 %25, 4
  %1266 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1265
  %1267 = load i32, i32 addrspace(3)* %1266, align 4, !tbaa !37
  %1268 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1269 = and i32 %1268, %1267
  store i32 %1269, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1270

; <label>:1270                                    ; preds = %1264, %1263
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1224, label %1271, label %1277, !dx.controlflow.hints !54

; <label>:1271                                    ; preds = %1270
  %1272 = add i32 %25, 2
  %1273 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1272
  %1274 = load i32, i32 addrspace(3)* %1273, align 4, !tbaa !37
  %1275 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1276 = and i32 %1275, %1274
  store i32 %1276, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1277

; <label>:1277                                    ; preds = %1271, %1270
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1232, label %1278, label %1284, !dx.controlflow.hints !55

; <label>:1278                                    ; preds = %1277
  %1279 = add i32 %25, 1
  %1280 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1279
  %1281 = load i32, i32 addrspace(3)* %1280, align 4, !tbaa !37
  %1282 = load i32, i32 addrspace(3)* %1199, align 4, !tbaa !37
  %1283 = and i32 %1282, %1281
  store i32 %1283, i32 addrspace(3)* %1199, align 4, !tbaa !37
  br label %1284

; <label>:1284                                    ; preds = %1278, %1277
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1285 = load i32, i32 addrspace(3)* %1242, align 4, !tbaa !37
  %1286 = load i32, i32 addrspace(3)* %1244, align 4, !tbaa !37
  %1287 = and i32 %1286, %1285
  %1288 = or i32 %1287, %1246
  %1289 = icmp eq i32 %1288, 0
  %1290 = lshr i32 %199, 1
  %1291 = and i32 %1290, 8
  %1292 = lshr i32 %198, 2
  %1293 = and i32 %1292, 4
  %1294 = or i32 %1293, %38
  %1295 = or i32 %1294, %1291
  br i1 %251, label %1296, label %1338, !dx.controlflow.hints !56

; <label>:1296                                    ; preds = %1284
  %1297 = icmp ne i32 %1287, 0
  %1298 = shl i32 1, %1295
  %1299 = select i1 %1297, i32 %1298, i32 0
  %1300 = shl i32 65536, %1295
  %1301 = select i1 %1247, i32 %1300, i32 0
  %1302 = or i32 %1299, %1301
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1306, label %1304, !dx.controlflow.hints !57

; <label>:1304                                    ; preds = %1296
  %1305 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1194, i32 %1195, i32 %261, i32 %1302)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1306

; <label>:1306                                    ; preds = %1304, %1296
  br i1 %1289, label %1307, label %1336

; <label>:1307                                    ; preds = %1306
  br label %1308

; <label>:1308                                    ; preds = %1333, %1307
  %1309 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1194, i32 %1195, i32 %261, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1310 = and i32 %1309, 3
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1312, label %1333, !dx.controlflow.hints !58

; <label>:1312                                    ; preds = %1308
  %1313 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.i32 %1314, 3
  %1316 = call i32 @dx.op.binary.i32(i32 40, i32 %1315, i32 %1313)  ; UMin(a,b)
  %1317 = extractvalue %dx.types.CBufRet.i32 %1314, 2
  %1318 = udiv i32 %1316, %1317
  %1319 = urem i32 %1316, %1317
  %1320 = extractvalue %dx.types.CBufRet.i32 %1314, 1
  %1321 = urem i32 %1319, %1320
  %1322 = udiv i32 %1319, %1320
  %1323 = shl i32 %1321, 6
  %1324 = and i32 %1323, 32704
  %1325 = shl i32 %1322, 15
  %1326 = and i32 %1325, 8355840
  %1327 = shl i32 %1318, 23
  %1328 = and i32 %1327, 2139095040
  %1329 = or i32 %1328, %1324
  %1330 = or i32 %1329, %1326
  %1331 = or i32 %1330, 3
  %1332 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1194, i32 %1195, i32 %261, i32 %1331)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1336

; <label>:1333                                    ; preds = %1308
  %1334 = icmp eq i32 %1310, 3
  br i1 %1334, label %1335, label %1308, !dx.controlflow.hints !59

; <label>:1335                                    ; preds = %1333
  br label %1336

; <label>:1336                                    ; preds = %1335, %1312, %1306
  %1337 = phi i32 [ 0, %1306 ], [ %1331, %1312 ], [ %1309, %1335 ]
  store i32 %1337, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1338

; <label>:1338                                    ; preds = %1336, %1284
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1339 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br i1 %1289, label %1340, label %1361, !dx.controlflow.hints !60

; <label>:1340                                    ; preds = %1338
  %1341 = lshr i32 %198, 1
  %1342 = and i32 %1341, 15
  %1343 = and i32 %1290, 15
  %1344 = and i32 %198, 1
  %1345 = shl i32 %199, 1
  %1346 = and i32 %1345, 2
  %1347 = or i32 %1346, %1344
  %1348 = lshr i32 %1339, 2
  %1349 = and i32 %1348, 8176
  %1350 = lshr i32 %1339, 11
  %1351 = and i32 %1350, 4080
  %1352 = or i32 %1349, %1342
  %1353 = or i32 %1351, %1343
  %1354 = lshr i32 %1339, 21
  %1355 = and i32 %1354, 1020
  %1356 = or i32 %1347, %1355
  %1357 = fmul fast float %1184, 2.550000e+02
  %1358 = fadd fast float %1357, %193
  %1359 = call float @dx.op.unary.f32(i32 27, float %1358)  ; Round_ni(value)
  %1360 = fmul fast float %1359, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1352, i32 %1353, i32 %1356, float %1360, float %1360, float %1360, float %1360, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1361

; <label>:1361                                    ; preds = %1340, %1338
  %1362 = icmp eq i32 %259, %263
  br i1 %1362, label %1363, label %257, !llvm.loop !61

; <label>:1363                                    ; preds = %1361
  br label %1364

; <label>:1364                                    ; preds = %1363, %253
  %1365 = phi i32 [ 0, %253 ], [ %1193, %1363 ]
  %1366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.i32 %1366, 0
  %1368 = call i32 @dx.op.tertiary.i32(i32 49, i32 %204, i32 %1367, i32 %226)  ; UMad(a,b,c)
  %1369 = shl i32 %1368, 2
  %1370 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1369, i32 undef, i32 undef, i32 %1365)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1371 = add i32 %226, 1
  %1372 = icmp ugt i32 %1371, %222
  br i1 %1372, label %1373, label %225

; <label>:1373                                    ; preds = %1364
  br label %1374

; <label>:1374                                    ; preds = %1373, %197, %59
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.atomicCompareExchange.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { noduplicate nounwind }

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
!4 = !{!5, !19, !26, !29}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 2, i32 1, i32 3, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 7, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 9}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %"class.Texture1D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 1, i32 0, !11}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !11}
!16 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !11}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!19 = !{!20, !21, !22, !23, !25}
!20 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !11}
!21 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !24}
!24 = !{i32 1, i32 4}
!25 = !{i32 4, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!29 = !{!30, !31, !32}
!30 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 8, i32 8, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}

