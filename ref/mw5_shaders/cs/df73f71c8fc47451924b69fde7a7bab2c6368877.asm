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
; shader hash: 6c616be35db581672e264571874a0860
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
  %83 = fmul fast float %81, %68
  %84 = fmul fast float %82, %69
  %85 = fmul fast float %83, 2.000000e+00
  %86 = fmul fast float %84, 2.000000e+00
  %87 = fsub fast float 1.000000e+00, %85
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
  %183 = fmul fast float %81, %66
  %184 = fmul fast float %82, %67
  %185 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %18, float %183, float %184, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = extractvalue %dx.types.ResRet.f32 %185, 1
  %188 = extractvalue %dx.types.ResRet.f32 %185, 2
  %189 = fcmp fast ogt float %186, -1.000000e+00
  %190 = select i1 %189, float %75, float 1.000000e+00
  %191 = fadd fast float %186, 1.000000e+00
  %192 = fmul fast float %190, %191
  %193 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %194 = fcmp fast ogt float %187, -1.000000e+00
  %195 = select i1 %194, float %75, float 1.000000e+00
  %196 = fadd fast float %187, 1.000000e+00
  %197 = fmul fast float %195, %196
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = fcmp fast ogt float %188, -1.000000e+00
  %200 = select i1 %199, float %75, float 1.000000e+00
  %201 = fadd fast float %188, 1.000000e+00
  %202 = fmul fast float %200, %201
  %203 = call float @dx.op.unary.f32(i32 6, float %202)  ; FAbs(value)
  %204 = fadd fast float %66, 1.000000e+00
  %205 = fmul fast float %81, %204
  %206 = fadd fast float %67, 1.000000e+00
  %207 = fmul fast float %82, %206
  %208 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %18, float %205, float %207, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 2
  %211 = fcmp fast ogt float %209, -1.000000e+00
  %212 = select i1 %211, float %75, float 1.000000e+00
  %213 = fadd fast float %209, 1.000000e+00
  %214 = fmul fast float %212, %213
  %215 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %216 = fcmp fast ogt float %210, -1.000000e+00
  %217 = select i1 %216, float %75, float 1.000000e+00
  %218 = fadd fast float %210, 1.000000e+00
  %219 = fmul fast float %217, %218
  %220 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %221 = fsub fast float %203, %198
  %222 = fsub fast float %215, %198
  %223 = fsub fast float %193, %198
  %224 = fsub fast float %220, %198
  %225 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %226 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %227 = call float @dx.op.binary.f32(i32 35, float %226, float %225)  ; FMax(a,b)
  %228 = call float @dx.op.unary.f32(i32 6, float %224)  ; FAbs(value)
  %229 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %230 = call float @dx.op.binary.f32(i32 35, float %229, float %228)  ; FMax(a,b)
  %231 = fadd fast float %222, %221
  %232 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %233 = fadd fast float %224, %223
  %234 = call float @dx.op.unary.f32(i32 6, float %233)  ; FAbs(value)
  %235 = fsub fast float %230, %234
  %236 = call float @dx.op.unary.f32(i32 6, float %235)  ; FAbs(value)
  %237 = fsub fast float %227, %232
  %238 = call float @dx.op.unary.f32(i32 6, float %237)  ; FAbs(value)
  %239 = call float @dx.op.binary.f32(i32 35, float %238, float %236)  ; FMax(a,b)
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = fmul fast float %241, 0x3FE3C6EF40000000
  %243 = frem fast float %68, 2.560000e+02
  %244 = frem fast float %69, 2.560000e+02
  %245 = fptoui float %243 to i32
  %246 = fptoui float %244 to i32
  %247 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %245, i32 %246, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 2
  %250 = fadd fast float %248, %242
  %251 = fadd fast float %249, %242
  %252 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %253 = call float @dx.op.unary.f32(i32 22, float %251)  ; Frc(value)
  %254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.i32 %254, 0
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %1848, label %257, !dx.controlflow.hints !41

; <label>:257                                     ; preds = %59
  %258 = fptoui float %68 to i32
  %259 = fptoui float %69 to i32
  %260 = lshr i32 %258, 4
  %261 = lshr i32 %259, 4
  %262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.i32 %262, 0
  %264 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %263, i32 %260)  ; UMad(a,b,c)
  %265 = add nsw i32 %255, -1
  %266 = call i32 @dx.op.binary.i32(i32 37, i32 %265, i32 0)  ; IMax(a,b)
  %267 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %268 = fptoui float %267 to i32
  %269 = lshr i32 %268, 5
  %270 = call i32 @dx.op.binary.i32(i32 40, i32 %269, i32 8191)  ; UMin(a,b)
  %271 = shl i32 %270, 2
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = lshr i32 %273, 16
  %275 = and i32 %273, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %274 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %275 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %279 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  %280 = lshr i32 %277, 5
  %281 = lshr i32 %279, 5
  %282 = call i32 @dx.op.binary.i32(i32 40, i32 %281, i32 %266)  ; UMin(a,b)
  %283 = icmp ugt i32 %280, %282
  br i1 %283, label %1848, label %284

; <label>:284                                     ; preds = %257
  br label %285

; <label>:285                                     ; preds = %1838, %284
  %286 = phi i32 [ %1845, %1838 ], [ %280, %284 ]
  %287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.i32 %287, 0
  %289 = call i32 @dx.op.tertiary.i32(i32 49, i32 %264, i32 %288, i32 %286)  ; UMad(a,b,c)
  %290 = shl i32 %289, 2
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = shl i32 %286, 5
  %294 = sub nsw i32 %274, %293
  %295 = call i32 @dx.op.binary.i32(i32 37, i32 %294, i32 0)  ; IMax(a,b)
  %296 = call i32 @dx.op.binary.i32(i32 38, i32 %295, i32 31)  ; IMin(a,b)
  %297 = sub nsw i32 1, %274
  %298 = add nsw i32 %297, %275
  %299 = call i32 @dx.op.binary.i32(i32 37, i32 %298, i32 0)  ; IMax(a,b)
  %300 = call i32 @dx.op.binary.i32(i32 38, i32 %299, i32 32)  ; IMin(a,b)
  %301 = and i32 %300, 31
  %302 = shl i32 -1, %301
  %303 = xor i32 %302, -1
  %304 = and i32 %296, 31
  %305 = shl i32 %303, %304
  %306 = icmp eq i32 %300, 32
  %307 = select i1 %306, i32 -1, i32 %305
  %308 = and i32 %307, %292
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %309 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %308 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %310 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %311 = icmp eq i32 %25, 0
  br i1 %311, label %312, label %313, !dx.controlflow.hints !42

; <label>:312                                     ; preds = %285
  store i32 %310, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %313

; <label>:313                                     ; preds = %312, %285
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %314 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %1838, label %316

; <label>:316                                     ; preds = %313
  br label %317

; <label>:317                                     ; preds = %1835, %316
  %318 = phi i32 [ %1667, %1835 ], [ 0, %316 ]
  %319 = phi i32 [ %324, %1835 ], [ %314, %316 ]
  %320 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %319)  ; FirstbitLo(value)
  %321 = add i32 %320, %293
  %322 = and i32 %320, 31
  %323 = shl i32 1, %322
  %324 = xor i32 %323, %319
  %325 = mul i32 %321, 112
  %326 = add i32 %325, 16
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = add i32 %325, 28
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = add i32 %325, 32
  %335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = extractvalue %dx.types.ResRet.f32 %335, 1
  %338 = extractvalue %dx.types.ResRet.f32 %335, 2
  %339 = add i32 %325, 44
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = add i32 %325, 48
  %343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  %347 = extractvalue %dx.types.ResRet.f32 %343, 3
  %348 = add i32 %325, 64
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = extractvalue %dx.types.ResRet.f32 %349, 3
  %354 = add i32 %325, 92
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = uitofp i32 %357 to float
  %359 = lshr i32 %356, 16
  %360 = uitofp i32 %359 to float
  %361 = and i32 %333, 65535
  %362 = and i32 %333, 50331648
  %363 = icmp eq i32 %362, 33554432
  %364 = call float @dx.op.dot3.f32(i32 55, float %336, float %337, float %338, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = fsub fast float %134, %344
  %366 = fsub fast float %135, %345
  %367 = fsub fast float %136, %346
  %368 = call float @dx.op.dot3.f32(i32 55, float %365, float %366, float %367, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = fdiv fast float %368, %364
  %370 = call float @dx.op.binary.f32(i32 35, float %369, float -1.000000e+00)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 36, float %370, float 1.000000e+00)  ; FMin(a,b)
  %372 = fmul fast float %371, %336
  %373 = fmul fast float %371, %337
  %374 = fmul fast float %371, %338
  %375 = fadd fast float %372, %344
  %376 = fadd fast float %373, %345
  %377 = fadd fast float %374, %346
  %378 = fsub fast float %375, %134
  %379 = fsub fast float %376, %135
  %380 = fsub fast float %377, %136
  %381 = call float @dx.op.dot3.f32(i32 55, float %378, float %379, float %380, float %378, float %379, float %380)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %383 = fdiv fast float 1.000000e+00, %382
  %384 = fmul fast float %378, %383
  %385 = fmul fast float %379, %383
  %386 = fmul fast float %380, %383
  br i1 %363, label %387, label %411, !dx.controlflow.hints !43

; <label>:387                                     ; preds = %317
  %388 = fmul fast float %352, %328
  %389 = fmul fast float %352, %329
  %390 = fmul fast float %352, %330
  %391 = fsub fast float %388, %134
  %392 = fadd fast float %391, %375
  %393 = fsub fast float %389, %135
  %394 = fadd fast float %393, %376
  %395 = fsub fast float %390, %136
  %396 = fadd fast float %395, %377
  %397 = call float @dx.op.dot3.f32(i32 55, float %392, float %394, float %396, float %392, float %394, float %396)  ; Dot3(ax,ay,az,bx,by,bz)
  %398 = call float @dx.op.unary.f32(i32 25, float %397)  ; Rsqrt(value)
  %399 = fmul fast float %398, %392
  %400 = fmul fast float %398, %394
  %401 = fmul fast float %398, %396
  %402 = fsub fast float %134, %375
  %403 = fsub fast float %135, %376
  %404 = fsub fast float %136, %377
  %405 = fsub fast float -0.000000e+00, %402
  %406 = fsub fast float -0.000000e+00, %403
  %407 = fsub fast float -0.000000e+00, %404
  %408 = call float @dx.op.dot3.f32(i32 55, float %405, float %406, float %407, float %328, float %329, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %409 = fcmp fast ogt float %408, 0.000000e+00
  %410 = uitofp i1 %409 to float
  br label %411

; <label>:411                                     ; preds = %387, %317
  %412 = phi float [ %410, %387 ], [ 1.000000e+00, %317 ]
  %413 = phi float [ %399, %387 ], [ %384, %317 ]
  %414 = phi float [ %400, %387 ], [ %385, %317 ]
  %415 = phi float [ %401, %387 ], [ %386, %317 ]
  %416 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float %413, float %414, float %415)  ; Dot3(ax,ay,az,bx,by,bz)
  %417 = fmul fast float %416, %416
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fsub fast float 1.000000e+00, %418
  %420 = fmul fast float %419, 5.000000e-01
  %421 = fcmp fast ogt float %416, 0.000000e+00
  %422 = fsub fast float 1.000000e+00, %420
  %423 = select i1 %421, float %420, float %422
  %424 = fmul fast float %423, %360
  %425 = fadd fast float %424, %358
  %426 = fmul fast float %425, 0x3EF0001000000000
  %427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %426, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = fmul fast float %416, %350
  %430 = fadd fast float %429, %351
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = select i1 %363, float 1.000000e+00, float %431
  %433 = select i1 %363, float %431, float 1.000000e+00
  %434 = fmul fast float %382, %347
  %435 = fsub fast float 1.000000e+00, %434
  %436 = fmul fast float %435, %353
  %437 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %438 = fmul fast float %437, %433
  %439 = fmul fast float %438, 2.000000e+00
  %440 = fsub fast float 3.000000e+00, %439
  %441 = fmul fast float %428, %412
  %442 = fmul fast float %438, %438
  %443 = fmul fast float %442, %441
  %444 = fmul fast float %443, %440
  %445 = icmp ne i32 %361, 255
  %446 = call float @dx.op.binary.f32(i32 36, float %444, float %444)  ; FMin(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float %444, float %446)  ; FMin(a,b)
  %448 = fcmp fast ogt float %447, 0.000000e+00
  %449 = and i1 %445, %448
  br i1 %449, label %450, label %1364, !dx.controlflow.hints !44

; <label>:450                                     ; preds = %411
  %451 = mul nuw nsw i32 %361, 176
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = extractvalue %dx.types.ResRet.f32 %452, 3
  %457 = add nuw nsw i32 %451, 16
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = add nuw nsw i32 %451, 32
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = add nuw nsw i32 %451, 48
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = add nuw nsw i32 %451, 64
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = add nuw nsw i32 %451, 80
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = extractvalue %dx.types.ResRet.f32 %480, 3
  %485 = add nuw nsw i32 %451, 96
  %486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = extractvalue %dx.types.ResRet.f32 %486, 3
  %491 = add nuw nsw i32 %451, 112
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  %496 = extractvalue %dx.types.ResRet.f32 %492, 3
  %497 = add nuw nsw i32 %451, 128
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = extractvalue %dx.types.ResRet.f32 %498, 3
  %503 = add nuw nsw i32 %451, 144
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = add nuw nsw i32 %451, 160
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = extractvalue %dx.types.ResRet.f32 %510, 3
  %515 = bitcast float %460 to i32
  %516 = bitcast float %466 to i32
  %517 = and i32 %516, 1
  %518 = icmp ne i32 %517, 0
  %519 = and i32 %516, 2
  %520 = fmul fast float %465, %180
  %521 = fmul fast float %465, %181
  %522 = fmul fast float %465, %182
  %523 = fadd fast float %520, %134
  %524 = fadd fast float %521, %135
  %525 = fadd fast float %522, %136
  %526 = fmul fast float %523, %469
  %527 = call float @dx.op.tertiary.f32(i32 46, float %524, float %475, float %526)  ; FMad(a,b,c)
  %528 = call float @dx.op.tertiary.f32(i32 46, float %525, float %481, float %527)  ; FMad(a,b,c)
  %529 = fadd fast float %528, %487
  %530 = fmul fast float %523, %470
  %531 = call float @dx.op.tertiary.f32(i32 46, float %524, float %476, float %530)  ; FMad(a,b,c)
  %532 = call float @dx.op.tertiary.f32(i32 46, float %525, float %482, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %532, %488
  %534 = fmul fast float %523, %471
  %535 = call float @dx.op.tertiary.f32(i32 46, float %524, float %477, float %534)  ; FMad(a,b,c)
  %536 = call float @dx.op.tertiary.f32(i32 46, float %525, float %483, float %535)  ; FMad(a,b,c)
  %537 = fadd fast float %536, %489
  %538 = fmul fast float %523, %472
  %539 = call float @dx.op.tertiary.f32(i32 46, float %524, float %478, float %538)  ; FMad(a,b,c)
  %540 = call float @dx.op.tertiary.f32(i32 46, float %525, float %484, float %539)  ; FMad(a,b,c)
  %541 = fadd fast float %540, %490
  %542 = fdiv fast float %529, %541
  %543 = fdiv fast float %533, %541
  %544 = fdiv fast float %537, %541
  %545 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %544)  ; FMax(a,b)
  %546 = fmul fast float %252, 0x401921FB60000000
  %547 = call float @dx.op.unary.f32(i32 13, float %546)  ; Sin(value)
  %548 = call float @dx.op.unary.f32(i32 12, float %546)  ; Cos(value)
  %549 = fsub fast float -0.000000e+00, %547
  %550 = icmp eq i32 %519, 0
  br i1 %550, label %551, label %622, !dx.controlflow.hints !45

; <label>:551                                     ; preds = %450
  %552 = fmul fast float %548, %464
  %553 = call float @dx.op.tertiary.f32(i32 46, float %547, float %464, float 0.000000e+00)  ; FMad(a,b,c)
  %554 = fmul fast float %464, %549
  %555 = call float @dx.op.tertiary.f32(i32 46, float %548, float %464, float 0.000000e+00)  ; FMad(a,b,c)
  br label %556

; <label>:556                                     ; preds = %556, %551
  %557 = phi float [ 0.000000e+00, %551 ], [ %589, %556 ]
  %558 = phi float [ 0.000000e+00, %551 ], [ %591, %556 ]
  %559 = phi i32 [ 0, %551 ], [ %592, %556 ]
  %560 = mul i32 %559, 2
  %561 = add i32 0, %560
  %562 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %561
  %563 = load float, float* %562, align 4
  %564 = mul i32 %559, 2
  %565 = add i32 1, %564
  %566 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %565
  %567 = load float, float* %566, align 4
  %568 = fmul fast float %552, %563
  %569 = call float @dx.op.tertiary.f32(i32 46, float %567, float %554, float %568)  ; FMad(a,b,c)
  %570 = fmul fast float %563, %553
  %571 = call float @dx.op.tertiary.f32(i32 46, float %567, float %555, float %570)  ; FMad(a,b,c)
  %572 = fadd fast float %569, %542
  %573 = fadd fast float %571, %543
  %574 = fmul fast float %572, %459
  %575 = fmul fast float %573, %459
  %576 = call float @dx.op.binary.f32(i32 35, float %574, float %455)  ; FMax(a,b)
  %577 = call float @dx.op.binary.f32(i32 35, float %575, float %455)  ; FMax(a,b)
  %578 = call float @dx.op.binary.f32(i32 36, float %576, float %456)  ; FMin(a,b)
  %579 = call float @dx.op.binary.f32(i32 36, float %577, float %456)  ; FMin(a,b)
  %580 = fadd fast float %578, %453
  %581 = fadd fast float %579, %454
  %582 = uitofp i32 %515 to float
  %583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %580, float %581, float %582, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = fsub fast float %584, %545
  %586 = fsub fast float %585, %463
  %587 = fcmp fast ogt float %586, 0.000000e+00
  %588 = select i1 %587, float 1.000000e+00, float 0.000000e+00
  %589 = fadd fast float %588, %557
  %590 = select i1 %587, float %586, float 0.000000e+00
  %591 = fadd fast float %590, %558
  %592 = add nuw nsw i32 %559, 1
  %593 = icmp eq i32 %592, 8
  br i1 %593, label %594, label %556

; <label>:594                                     ; preds = %556
  %595 = fdiv fast float 1.000000e+00, %589
  %596 = fmul fast float %595, %591
  %597 = fdiv fast float 1.000000e+00, %545
  %598 = fmul fast float %596, %597
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = call float @dx.op.binary.f32(i32 35, float %599, float 0.000000e+00)  ; FMax(a,b)
  %601 = fmul fast float %589, 1.250000e-01
  %602 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %603 = fmul fast float %602, 2.000000e+00
  %604 = fadd fast float %603, -1.000000e+00
  %605 = fcmp fast ogt float %604, 0.000000e+00
  %606 = fcmp fast olt float %604, 0.000000e+00
  %607 = zext i1 %605 to i32
  %608 = zext i1 %606 to i32
  %609 = sub nsw i32 %607, %608
  %610 = sitofp i32 %609 to float
  %611 = fmul fast float %610, %604
  %612 = fsub fast float 1.000000e+00, %611
  %613 = fmul fast float %612, %612
  %614 = fmul fast float %613, %612
  %615 = fsub fast float %612, %614
  %616 = fmul fast float %615, %600
  %617 = fsub fast float 1.000000e+00, %614
  %618 = fsub fast float %617, %616
  %619 = fmul fast float %610, 5.000000e-01
  %620 = fmul fast float %619, %618
  %621 = fsub fast float 5.000000e-01, %620
  br label %1237

; <label>:622                                     ; preds = %450
  %623 = fsub fast float 1.000000e+00, %545
  %624 = fmul fast float %623, 5.000000e-01
  %625 = fadd fast float %624, %545
  %626 = fsub fast float %523, %344
  %627 = fsub fast float %524, %345
  %628 = fsub fast float %525, %346
  %629 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %336, float %337, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = fdiv fast float %629, %364
  %631 = call float @dx.op.binary.f32(i32 35, float %630, float -1.000000e+00)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 36, float %631, float 1.000000e+00)  ; FMin(a,b)
  %633 = fmul fast float %632, %336
  %634 = fmul fast float %632, %337
  %635 = fmul fast float %632, %338
  %636 = fsub fast float %626, %633
  %637 = fsub fast float %627, %634
  %638 = fsub fast float %628, %635
  %639 = call float @dx.op.dot3.f32(i32 55, float %636, float %637, float %638, float %636, float %637, float %638)  ; Dot3(ax,ay,az,bx,by,bz)
  %640 = call float @dx.op.unary.f32(i32 25, float %639)  ; Rsqrt(value)
  %641 = fmul fast float %636, %640
  %642 = fmul fast float %637, %640
  %643 = fmul fast float %638, %640
  %644 = call float @dx.op.unary.f32(i32 25, float %364)  ; Rsqrt(value)
  %645 = fmul fast float %644, %336
  %646 = fmul fast float %644, %337
  %647 = fmul fast float %644, %338
  br i1 %518, label %648, label %652, !dx.controlflow.hints !46

; <label>:648                                     ; preds = %622
  %649 = fcmp fast olt float %642, 0x3FE6666660000000
  %650 = select i1 %649, float 1.000000e+00, float 0.000000e+00
  %651 = select i1 %649, float 0.000000e+00, float 1.000000e+00
  br label %652

; <label>:652                                     ; preds = %648, %622
  %653 = phi float [ 0.000000e+00, %648 ], [ %645, %622 ]
  %654 = phi float [ %650, %648 ], [ %646, %622 ]
  %655 = phi float [ %651, %648 ], [ %647, %622 ]
  %656 = fmul fast float %654, %643
  %657 = fmul fast float %655, %642
  %658 = fsub fast float %656, %657
  %659 = fmul fast float %655, %641
  %660 = fmul fast float %653, %643
  %661 = fsub fast float %659, %660
  %662 = fmul fast float %653, %642
  %663 = fmul fast float %654, %641
  %664 = fsub fast float %662, %663
  %665 = call float @dx.op.dot3.f32(i32 55, float %658, float %661, float %664, float %658, float %661, float %664)  ; Dot3(ax,ay,az,bx,by,bz)
  %666 = call float @dx.op.unary.f32(i32 25, float %665)  ; Rsqrt(value)
  %667 = fmul fast float %666, %341
  %668 = fmul fast float %667, %658
  %669 = fmul fast float %667, %661
  %670 = fmul fast float %664, %341
  %671 = fmul fast float %670, %666
  %672 = fmul fast float %542, %493
  %673 = call float @dx.op.tertiary.f32(i32 46, float %543, float %499, float %672)  ; FMad(a,b,c)
  %674 = call float @dx.op.tertiary.f32(i32 46, float %625, float %505, float %673)  ; FMad(a,b,c)
  %675 = fadd fast float %674, %511
  %676 = fmul fast float %542, %494
  %677 = call float @dx.op.tertiary.f32(i32 46, float %543, float %500, float %676)  ; FMad(a,b,c)
  %678 = call float @dx.op.tertiary.f32(i32 46, float %625, float %506, float %677)  ; FMad(a,b,c)
  %679 = fadd fast float %678, %512
  %680 = fmul fast float %542, %495
  %681 = call float @dx.op.tertiary.f32(i32 46, float %543, float %501, float %680)  ; FMad(a,b,c)
  %682 = call float @dx.op.tertiary.f32(i32 46, float %625, float %507, float %681)  ; FMad(a,b,c)
  %683 = fadd fast float %682, %513
  %684 = fmul fast float %542, %496
  %685 = call float @dx.op.tertiary.f32(i32 46, float %543, float %502, float %684)  ; FMad(a,b,c)
  %686 = call float @dx.op.tertiary.f32(i32 46, float %625, float %508, float %685)  ; FMad(a,b,c)
  %687 = fadd fast float %686, %514
  %688 = fdiv fast float 1.000000e+00, %687
  %689 = fmul fast float %688, %675
  %690 = fmul fast float %688, %679
  %691 = fmul fast float %688, %683
  %692 = fsub fast float -0.000000e+00, %641
  %693 = fsub fast float -0.000000e+00, %642
  %694 = fsub fast float -0.000000e+00, %643
  %695 = fsub fast float %344, %668
  %696 = fsub fast float %345, %669
  %697 = fsub fast float %346, %671
  %698 = fsub fast float %689, %695
  %699 = fsub fast float %690, %696
  %700 = fsub fast float %691, %697
  %701 = call float @dx.op.dot3.f32(i32 55, float %698, float %699, float %700, float %698, float %699, float %700)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = call float @dx.op.unary.f32(i32 25, float %701)  ; Rsqrt(value)
  %703 = fmul fast float %698, %702
  %704 = fmul fast float %699, %702
  %705 = fmul fast float %700, %702
  %706 = fsub fast float %523, %695
  %707 = fsub fast float %524, %696
  %708 = fsub fast float %525, %697
  %709 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %706, float %707, float %708)  ; Dot3(ax,ay,az,bx,by,bz)
  %710 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %703, float %704, float %705)  ; Dot3(ax,ay,az,bx,by,bz)
  %711 = fdiv fast float 1.000000e+00, %710
  %712 = fmul fast float %711, %709
  %713 = fmul fast float %712, %703
  %714 = fmul fast float %712, %704
  %715 = fmul fast float %712, %705
  %716 = fadd fast float %713, %695
  %717 = fadd fast float %714, %696
  %718 = fadd fast float %715, %697
  %719 = fadd fast float %668, %344
  %720 = fadd fast float %669, %345
  %721 = fadd fast float %671, %346
  %722 = fsub fast float %689, %719
  %723 = fsub fast float %690, %720
  %724 = fsub fast float %691, %721
  %725 = call float @dx.op.dot3.f32(i32 55, float %722, float %723, float %724, float %722, float %723, float %724)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = call float @dx.op.unary.f32(i32 25, float %725)  ; Rsqrt(value)
  %727 = fmul fast float %726, %722
  %728 = fmul fast float %726, %723
  %729 = fmul fast float %726, %724
  %730 = fsub fast float %523, %719
  %731 = fsub fast float %524, %720
  %732 = fsub fast float %525, %721
  %733 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %730, float %731, float %732)  ; Dot3(ax,ay,az,bx,by,bz)
  %734 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %727, float %728, float %729)  ; Dot3(ax,ay,az,bx,by,bz)
  %735 = fdiv fast float 1.000000e+00, %734
  %736 = fmul fast float %735, %733
  %737 = fmul fast float %736, %727
  %738 = fmul fast float %736, %728
  %739 = fmul fast float %736, %729
  %740 = fadd fast float %737, %719
  %741 = fadd fast float %738, %720
  %742 = fadd fast float %739, %721
  %743 = fmul fast float %716, %469
  %744 = call float @dx.op.tertiary.f32(i32 46, float %717, float %475, float %743)  ; FMad(a,b,c)
  %745 = call float @dx.op.tertiary.f32(i32 46, float %718, float %481, float %744)  ; FMad(a,b,c)
  %746 = fadd fast float %745, %487
  %747 = fmul fast float %716, %470
  %748 = call float @dx.op.tertiary.f32(i32 46, float %717, float %476, float %747)  ; FMad(a,b,c)
  %749 = call float @dx.op.tertiary.f32(i32 46, float %718, float %482, float %748)  ; FMad(a,b,c)
  %750 = fadd fast float %749, %488
  %751 = fmul fast float %716, %472
  %752 = call float @dx.op.tertiary.f32(i32 46, float %717, float %478, float %751)  ; FMad(a,b,c)
  %753 = call float @dx.op.tertiary.f32(i32 46, float %718, float %484, float %752)  ; FMad(a,b,c)
  %754 = fadd fast float %753, %490
  %755 = fmul fast float %740, %469
  %756 = call float @dx.op.tertiary.f32(i32 46, float %741, float %475, float %755)  ; FMad(a,b,c)
  %757 = call float @dx.op.tertiary.f32(i32 46, float %742, float %481, float %756)  ; FMad(a,b,c)
  %758 = fadd fast float %757, %487
  %759 = fmul fast float %740, %470
  %760 = call float @dx.op.tertiary.f32(i32 46, float %741, float %476, float %759)  ; FMad(a,b,c)
  %761 = call float @dx.op.tertiary.f32(i32 46, float %742, float %482, float %760)  ; FMad(a,b,c)
  %762 = fadd fast float %761, %488
  %763 = fmul fast float %740, %472
  %764 = call float @dx.op.tertiary.f32(i32 46, float %741, float %478, float %763)  ; FMad(a,b,c)
  %765 = call float @dx.op.tertiary.f32(i32 46, float %742, float %484, float %764)  ; FMad(a,b,c)
  %766 = fadd fast float %765, %490
  %767 = fdiv fast float 1.000000e+00, %754
  %768 = fmul fast float %767, %746
  %769 = fmul fast float %767, %750
  %770 = fdiv fast float 1.000000e+00, %766
  %771 = fmul fast float %770, %758
  %772 = fmul fast float %770, %762
  %773 = fsub fast float %771, %768
  %774 = fsub fast float %772, %769
  %775 = call float @dx.op.dot2.f32(i32 54, float %773, float %774, float %773, float %774)  ; Dot2(ax,ay,bx,by)
  %776 = call float @dx.op.unary.f32(i32 25, float %775)  ; Rsqrt(value)
  %777 = fmul fast float %773, %776
  %778 = fmul fast float %774, %776
  %779 = fmul fast float %773, %773
  %780 = fmul fast float %774, %774
  %781 = fadd fast float %779, %780
  %782 = call float @dx.op.unary.f32(i32 24, float %781)  ; Sqrt(value)
  %783 = fmul fast float %782, 5.000000e-01
  br i1 %518, label %876, label %784, !dx.controlflow.hints !47

; <label>:784                                     ; preds = %652
  %785 = fsub fast float %344, %336
  %786 = fsub fast float %345, %337
  %787 = fsub fast float %346, %338
  %788 = fsub fast float %689, %785
  %789 = fsub fast float %690, %786
  %790 = fsub fast float %691, %787
  %791 = call float @dx.op.dot3.f32(i32 55, float %788, float %789, float %790, float %788, float %789, float %790)  ; Dot3(ax,ay,az,bx,by,bz)
  %792 = call float @dx.op.unary.f32(i32 25, float %791)  ; Rsqrt(value)
  %793 = fmul fast float %792, %788
  %794 = fmul fast float %792, %789
  %795 = fmul fast float %792, %790
  %796 = fsub fast float %523, %785
  %797 = fsub fast float %524, %786
  %798 = fsub fast float %525, %787
  %799 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %796, float %797, float %798)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %793, float %794, float %795)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = fdiv fast float 1.000000e+00, %800
  %802 = fmul fast float %801, %799
  %803 = fmul fast float %802, %793
  %804 = fmul fast float %802, %794
  %805 = fmul fast float %802, %795
  %806 = fadd fast float %803, %785
  %807 = fadd fast float %804, %786
  %808 = fadd fast float %805, %787
  %809 = fadd fast float %344, %336
  %810 = fadd fast float %345, %337
  %811 = fadd fast float %346, %338
  %812 = fsub fast float %689, %809
  %813 = fsub fast float %690, %810
  %814 = fsub fast float %691, %811
  %815 = call float @dx.op.dot3.f32(i32 55, float %812, float %813, float %814, float %812, float %813, float %814)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = call float @dx.op.unary.f32(i32 25, float %815)  ; Rsqrt(value)
  %817 = fmul fast float %816, %812
  %818 = fmul fast float %816, %813
  %819 = fmul fast float %816, %814
  %820 = fsub fast float %523, %809
  %821 = fsub fast float %524, %810
  %822 = fsub fast float %525, %811
  %823 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %820, float %821, float %822)  ; Dot3(ax,ay,az,bx,by,bz)
  %824 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %817, float %818, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = fdiv fast float 1.000000e+00, %824
  %826 = fmul fast float %825, %823
  %827 = fmul fast float %826, %817
  %828 = fmul fast float %826, %818
  %829 = fmul fast float %826, %819
  %830 = fadd fast float %827, %809
  %831 = fadd fast float %828, %810
  %832 = fadd fast float %829, %811
  %833 = fmul fast float %806, %469
  %834 = call float @dx.op.tertiary.f32(i32 46, float %807, float %475, float %833)  ; FMad(a,b,c)
  %835 = call float @dx.op.tertiary.f32(i32 46, float %808, float %481, float %834)  ; FMad(a,b,c)
  %836 = fadd fast float %835, %487
  %837 = fmul fast float %806, %470
  %838 = call float @dx.op.tertiary.f32(i32 46, float %807, float %476, float %837)  ; FMad(a,b,c)
  %839 = call float @dx.op.tertiary.f32(i32 46, float %808, float %482, float %838)  ; FMad(a,b,c)
  %840 = fadd fast float %839, %488
  %841 = fmul fast float %806, %472
  %842 = call float @dx.op.tertiary.f32(i32 46, float %807, float %478, float %841)  ; FMad(a,b,c)
  %843 = call float @dx.op.tertiary.f32(i32 46, float %808, float %484, float %842)  ; FMad(a,b,c)
  %844 = fadd fast float %843, %490
  %845 = fmul fast float %830, %469
  %846 = call float @dx.op.tertiary.f32(i32 46, float %831, float %475, float %845)  ; FMad(a,b,c)
  %847 = call float @dx.op.tertiary.f32(i32 46, float %832, float %481, float %846)  ; FMad(a,b,c)
  %848 = fadd fast float %847, %487
  %849 = fmul fast float %830, %470
  %850 = call float @dx.op.tertiary.f32(i32 46, float %831, float %476, float %849)  ; FMad(a,b,c)
  %851 = call float @dx.op.tertiary.f32(i32 46, float %832, float %482, float %850)  ; FMad(a,b,c)
  %852 = fadd fast float %851, %488
  %853 = fmul fast float %830, %472
  %854 = call float @dx.op.tertiary.f32(i32 46, float %831, float %478, float %853)  ; FMad(a,b,c)
  %855 = call float @dx.op.tertiary.f32(i32 46, float %832, float %484, float %854)  ; FMad(a,b,c)
  %856 = fadd fast float %855, %490
  %857 = fdiv fast float 1.000000e+00, %844
  %858 = fmul fast float %857, %836
  %859 = fmul fast float %857, %840
  %860 = fdiv fast float 1.000000e+00, %856
  %861 = fmul fast float %860, %848
  %862 = fmul fast float %860, %852
  %863 = fsub fast float %861, %858
  %864 = fsub fast float %862, %859
  %865 = call float @dx.op.dot2.f32(i32 54, float %863, float %864, float %863, float %864)  ; Dot2(ax,ay,bx,by)
  %866 = call float @dx.op.unary.f32(i32 25, float %865)  ; Rsqrt(value)
  %867 = fmul fast float %863, %866
  %868 = fmul fast float %864, %866
  %869 = fmul fast float %863, %863
  %870 = fmul fast float %864, %864
  %871 = fadd fast float %869, %870
  %872 = call float @dx.op.unary.f32(i32 24, float %871)  ; Sqrt(value)
  %873 = fmul fast float %872, 5.000000e-01
  %874 = fcmp fast olt float %873, %783
  br i1 %874, label %875, label %876, !dx.controlflow.hints !48

; <label>:875                                     ; preds = %784
  br label %876

; <label>:876                                     ; preds = %875, %784, %652
  %877 = phi float [ %783, %652 ], [ %873, %875 ], [ %783, %784 ]
  %878 = phi float [ %783, %652 ], [ %783, %875 ], [ %873, %784 ]
  %879 = phi float [ %777, %652 ], [ %777, %875 ], [ %867, %784 ]
  %880 = phi float [ %778, %652 ], [ %778, %875 ], [ %868, %784 ]
  %881 = fmul fast float %877, %464
  %882 = fdiv fast float %881, %878
  %883 = fsub fast float %464, %882
  %884 = fmul fast float %879, %879
  %885 = fmul fast float %884, %883
  %886 = fadd fast float %885, %882
  %887 = fmul fast float %880, %879
  %888 = fmul fast float %887, %883
  %889 = fmul fast float %880, %880
  %890 = fmul fast float %889, %883
  %891 = fadd fast float %890, %882
  %892 = fmul fast float %886, %548
  %893 = call float @dx.op.tertiary.f32(i32 46, float %547, float %888, float %892)  ; FMad(a,b,c)
  %894 = fmul fast float %888, %548
  %895 = call float @dx.op.tertiary.f32(i32 46, float %547, float %891, float %894)  ; FMad(a,b,c)
  %896 = fmul fast float %886, %549
  %897 = call float @dx.op.tertiary.f32(i32 46, float %548, float %888, float %896)  ; FMad(a,b,c)
  %898 = fmul fast float %888, %549
  %899 = call float @dx.op.tertiary.f32(i32 46, float %548, float %891, float %898)  ; FMad(a,b,c)
  br label %900

; <label>:900                                     ; preds = %938, %876
  %901 = phi float [ 0.000000e+00, %876 ], [ %939, %938 ]
  %902 = phi float [ 0.000000e+00, %876 ], [ %940, %938 ]
  %903 = phi float [ 0.000000e+00, %876 ], [ %941, %938 ]
  %904 = phi float [ 0.000000e+00, %876 ], [ %942, %938 ]
  %905 = phi i32 [ 0, %876 ], [ %943, %938 ]
  %906 = mul i32 %905, 2
  %907 = add i32 0, %906
  %908 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %907
  %909 = load float, float* %908, align 4
  %910 = mul i32 %905, 2
  %911 = add i32 1, %910
  %912 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %911
  %913 = load float, float* %912, align 4
  %914 = fmul fast float %909, %893
  %915 = call float @dx.op.tertiary.f32(i32 46, float %913, float %897, float %914)  ; FMad(a,b,c)
  %916 = fmul fast float %909, %895
  %917 = call float @dx.op.tertiary.f32(i32 46, float %913, float %899, float %916)  ; FMad(a,b,c)
  %918 = fadd fast float %915, %542
  %919 = fadd fast float %917, %543
  %920 = fmul fast float %918, %459
  %921 = fmul fast float %919, %459
  %922 = call float @dx.op.binary.f32(i32 35, float %920, float %455)  ; FMax(a,b)
  %923 = call float @dx.op.binary.f32(i32 35, float %921, float %455)  ; FMax(a,b)
  %924 = call float @dx.op.binary.f32(i32 36, float %922, float %456)  ; FMin(a,b)
  %925 = call float @dx.op.binary.f32(i32 36, float %923, float %456)  ; FMin(a,b)
  %926 = fadd fast float %924, %453
  %927 = fadd fast float %925, %454
  %928 = uitofp i32 %515 to float
  %929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %926, float %927, float %928, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = fadd fast float %545, %463
  %932 = fcmp fast olt float %931, %930
  br i1 %932, label %933, label %938, !dx.controlflow.hints !49

; <label>:933                                     ; preds = %900
  %934 = fadd fast float %930, %903
  %935 = fadd fast float %915, %901
  %936 = fadd fast float %917, %902
  %937 = fadd fast float %904, 1.000000e+00
  br label %938

; <label>:938                                     ; preds = %933, %900
  %939 = phi float [ %935, %933 ], [ %901, %900 ]
  %940 = phi float [ %936, %933 ], [ %902, %900 ]
  %941 = phi float [ %934, %933 ], [ %903, %900 ]
  %942 = phi float [ %937, %933 ], [ %904, %900 ]
  %943 = add nuw nsw i32 %905, 1
  %944 = icmp eq i32 %943, 8
  br i1 %944, label %945, label %900

; <label>:945                                     ; preds = %938
  %946 = fdiv fast float 1.000000e+00, %942
  %947 = fcmp fast oeq float %942, 0.000000e+00
  %948 = fmul fast float %946, %941
  %949 = select i1 %947, float -1.000000e+00, float %948
  %950 = fcmp fast olt float %949, 0.000000e+00
  br i1 %950, label %1237, label %951, !dx.controlflow.hints !50

; <label>:951                                     ; preds = %945
  %952 = fmul fast float %946, %940
  %953 = select i1 %947, float 0.000000e+00, float %952
  %954 = fmul fast float %946, %939
  %955 = select i1 %947, float 0.000000e+00, float %954
  %956 = fadd fast float %955, %542
  %957 = fadd fast float %953, %543
  br i1 %518, label %958, label %962, !dx.controlflow.hints !46

; <label>:958                                     ; preds = %951
  %959 = fcmp fast olt float %642, 0x3FE6666660000000
  %960 = select i1 %959, float 1.000000e+00, float 0.000000e+00
  %961 = select i1 %959, float 0.000000e+00, float 1.000000e+00
  br label %962

; <label>:962                                     ; preds = %958, %951
  %963 = phi float [ 0.000000e+00, %958 ], [ %645, %951 ]
  %964 = phi float [ %960, %958 ], [ %646, %951 ]
  %965 = phi float [ %961, %958 ], [ %647, %951 ]
  %966 = fmul fast float %964, %643
  %967 = fmul fast float %965, %642
  %968 = fsub fast float %966, %967
  %969 = fmul fast float %965, %641
  %970 = fmul fast float %963, %643
  %971 = fsub fast float %969, %970
  %972 = fmul fast float %963, %642
  %973 = fmul fast float %964, %641
  %974 = fsub fast float %972, %973
  %975 = call float @dx.op.dot3.f32(i32 55, float %968, float %971, float %974, float %968, float %971, float %974)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = call float @dx.op.unary.f32(i32 25, float %975)  ; Rsqrt(value)
  %977 = fmul fast float %976, %341
  %978 = fmul fast float %977, %968
  %979 = fmul fast float %977, %971
  %980 = fmul fast float %974, %341
  %981 = fmul fast float %980, %976
  %982 = fmul fast float %956, %493
  %983 = call float @dx.op.tertiary.f32(i32 46, float %957, float %499, float %982)  ; FMad(a,b,c)
  %984 = call float @dx.op.tertiary.f32(i32 46, float %949, float %505, float %983)  ; FMad(a,b,c)
  %985 = fadd fast float %984, %511
  %986 = fmul fast float %956, %494
  %987 = call float @dx.op.tertiary.f32(i32 46, float %957, float %500, float %986)  ; FMad(a,b,c)
  %988 = call float @dx.op.tertiary.f32(i32 46, float %949, float %506, float %987)  ; FMad(a,b,c)
  %989 = fadd fast float %988, %512
  %990 = fmul fast float %956, %495
  %991 = call float @dx.op.tertiary.f32(i32 46, float %957, float %501, float %990)  ; FMad(a,b,c)
  %992 = call float @dx.op.tertiary.f32(i32 46, float %949, float %507, float %991)  ; FMad(a,b,c)
  %993 = fadd fast float %992, %513
  %994 = fmul fast float %956, %496
  %995 = call float @dx.op.tertiary.f32(i32 46, float %957, float %502, float %994)  ; FMad(a,b,c)
  %996 = call float @dx.op.tertiary.f32(i32 46, float %949, float %508, float %995)  ; FMad(a,b,c)
  %997 = fadd fast float %996, %514
  %998 = fdiv fast float 1.000000e+00, %997
  %999 = fmul fast float %998, %985
  %1000 = fmul fast float %998, %989
  %1001 = fmul fast float %998, %993
  %1002 = fsub fast float %344, %978
  %1003 = fsub fast float %345, %979
  %1004 = fsub fast float %346, %981
  %1005 = fsub fast float %999, %1002
  %1006 = fsub fast float %1000, %1003
  %1007 = fsub fast float %1001, %1004
  %1008 = call float @dx.op.dot3.f32(i32 55, float %1005, float %1006, float %1007, float %1005, float %1006, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = call float @dx.op.unary.f32(i32 25, float %1008)  ; Rsqrt(value)
  %1010 = fmul fast float %1005, %1009
  %1011 = fmul fast float %1006, %1009
  %1012 = fmul fast float %1007, %1009
  %1013 = fsub fast float %523, %1002
  %1014 = fsub fast float %524, %1003
  %1015 = fsub fast float %525, %1004
  %1016 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %1013, float %1014, float %1015)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %1010, float %1011, float %1012)  ; Dot3(ax,ay,az,bx,by,bz)
  %1018 = fdiv fast float 1.000000e+00, %1017
  %1019 = fmul fast float %1018, %1016
  %1020 = fmul fast float %1019, %1010
  %1021 = fmul fast float %1019, %1011
  %1022 = fmul fast float %1019, %1012
  %1023 = fadd fast float %1020, %1002
  %1024 = fadd fast float %1021, %1003
  %1025 = fadd fast float %1022, %1004
  %1026 = fadd fast float %978, %344
  %1027 = fadd fast float %979, %345
  %1028 = fadd fast float %981, %346
  %1029 = fsub fast float %999, %1026
  %1030 = fsub fast float %1000, %1027
  %1031 = fsub fast float %1001, %1028
  %1032 = call float @dx.op.dot3.f32(i32 55, float %1029, float %1030, float %1031, float %1029, float %1030, float %1031)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = call float @dx.op.unary.f32(i32 25, float %1032)  ; Rsqrt(value)
  %1034 = fmul fast float %1033, %1029
  %1035 = fmul fast float %1033, %1030
  %1036 = fmul fast float %1033, %1031
  %1037 = fsub fast float %523, %1026
  %1038 = fsub fast float %524, %1027
  %1039 = fsub fast float %525, %1028
  %1040 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %1037, float %1038, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %1034, float %1035, float %1036)  ; Dot3(ax,ay,az,bx,by,bz)
  %1042 = fdiv fast float 1.000000e+00, %1041
  %1043 = fmul fast float %1042, %1040
  %1044 = fmul fast float %1043, %1034
  %1045 = fmul fast float %1043, %1035
  %1046 = fmul fast float %1043, %1036
  %1047 = fadd fast float %1044, %1026
  %1048 = fadd fast float %1045, %1027
  %1049 = fadd fast float %1046, %1028
  %1050 = fmul fast float %1023, %469
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1024, float %475, float %1050)  ; FMad(a,b,c)
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1025, float %481, float %1051)  ; FMad(a,b,c)
  %1053 = fadd fast float %1052, %487
  %1054 = fmul fast float %1023, %470
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %1024, float %476, float %1054)  ; FMad(a,b,c)
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %1025, float %482, float %1055)  ; FMad(a,b,c)
  %1057 = fadd fast float %1056, %488
  %1058 = fmul fast float %1023, %472
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %1024, float %478, float %1058)  ; FMad(a,b,c)
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1025, float %484, float %1059)  ; FMad(a,b,c)
  %1061 = fadd fast float %1060, %490
  %1062 = fmul fast float %1047, %469
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %475, float %1062)  ; FMad(a,b,c)
  %1064 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %481, float %1063)  ; FMad(a,b,c)
  %1065 = fadd fast float %1064, %487
  %1066 = fmul fast float %1047, %470
  %1067 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %476, float %1066)  ; FMad(a,b,c)
  %1068 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %482, float %1067)  ; FMad(a,b,c)
  %1069 = fadd fast float %1068, %488
  %1070 = fmul fast float %1047, %472
  %1071 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %478, float %1070)  ; FMad(a,b,c)
  %1072 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %484, float %1071)  ; FMad(a,b,c)
  %1073 = fadd fast float %1072, %490
  %1074 = fdiv fast float 1.000000e+00, %1061
  %1075 = fmul fast float %1074, %1053
  %1076 = fmul fast float %1074, %1057
  %1077 = fdiv fast float 1.000000e+00, %1073
  %1078 = fmul fast float %1077, %1065
  %1079 = fmul fast float %1077, %1069
  %1080 = fsub fast float %1078, %1075
  %1081 = fsub fast float %1079, %1076
  %1082 = call float @dx.op.dot2.f32(i32 54, float %1080, float %1081, float %1080, float %1081)  ; Dot2(ax,ay,bx,by)
  %1083 = call float @dx.op.unary.f32(i32 25, float %1082)  ; Rsqrt(value)
  %1084 = fmul fast float %1080, %1083
  %1085 = fmul fast float %1081, %1083
  %1086 = fmul fast float %1080, %1080
  %1087 = fmul fast float %1081, %1081
  %1088 = fadd fast float %1086, %1087
  %1089 = call float @dx.op.unary.f32(i32 24, float %1088)  ; Sqrt(value)
  %1090 = fmul fast float %1089, 5.000000e-01
  br i1 %518, label %1183, label %1091, !dx.controlflow.hints !47

; <label>:1091                                    ; preds = %962
  %1092 = fsub fast float %344, %336
  %1093 = fsub fast float %345, %337
  %1094 = fsub fast float %346, %338
  %1095 = fsub fast float %999, %1092
  %1096 = fsub fast float %1000, %1093
  %1097 = fsub fast float %1001, %1094
  %1098 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1096, float %1097, float %1095, float %1096, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.unary.f32(i32 25, float %1098)  ; Rsqrt(value)
  %1100 = fmul fast float %1099, %1095
  %1101 = fmul fast float %1099, %1096
  %1102 = fmul fast float %1099, %1097
  %1103 = fsub fast float %523, %1092
  %1104 = fsub fast float %524, %1093
  %1105 = fsub fast float %525, %1094
  %1106 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %1103, float %1104, float %1105)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %1100, float %1101, float %1102)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = fdiv fast float 1.000000e+00, %1107
  %1109 = fmul fast float %1108, %1106
  %1110 = fmul fast float %1109, %1100
  %1111 = fmul fast float %1109, %1101
  %1112 = fmul fast float %1109, %1102
  %1113 = fadd fast float %1110, %1092
  %1114 = fadd fast float %1111, %1093
  %1115 = fadd fast float %1112, %1094
  %1116 = fadd fast float %344, %336
  %1117 = fadd fast float %345, %337
  %1118 = fadd fast float %346, %338
  %1119 = fsub fast float %999, %1116
  %1120 = fsub fast float %1000, %1117
  %1121 = fsub fast float %1001, %1118
  %1122 = call float @dx.op.dot3.f32(i32 55, float %1119, float %1120, float %1121, float %1119, float %1120, float %1121)  ; Dot3(ax,ay,az,bx,by,bz)
  %1123 = call float @dx.op.unary.f32(i32 25, float %1122)  ; Rsqrt(value)
  %1124 = fmul fast float %1123, %1119
  %1125 = fmul fast float %1123, %1120
  %1126 = fmul fast float %1123, %1121
  %1127 = fsub fast float %523, %1116
  %1128 = fsub fast float %524, %1117
  %1129 = fsub fast float %525, %1118
  %1130 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %1127, float %1128, float %1129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %1124, float %1125, float %1126)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = fdiv fast float 1.000000e+00, %1131
  %1133 = fmul fast float %1132, %1130
  %1134 = fmul fast float %1133, %1124
  %1135 = fmul fast float %1133, %1125
  %1136 = fmul fast float %1133, %1126
  %1137 = fadd fast float %1134, %1116
  %1138 = fadd fast float %1135, %1117
  %1139 = fadd fast float %1136, %1118
  %1140 = fmul fast float %1113, %469
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1114, float %475, float %1140)  ; FMad(a,b,c)
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1115, float %481, float %1141)  ; FMad(a,b,c)
  %1143 = fadd fast float %1142, %487
  %1144 = fmul fast float %1113, %470
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1114, float %476, float %1144)  ; FMad(a,b,c)
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1115, float %482, float %1145)  ; FMad(a,b,c)
  %1147 = fadd fast float %1146, %488
  %1148 = fmul fast float %1113, %472
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1114, float %478, float %1148)  ; FMad(a,b,c)
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1115, float %484, float %1149)  ; FMad(a,b,c)
  %1151 = fadd fast float %1150, %490
  %1152 = fmul fast float %1137, %469
  %1153 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %475, float %1152)  ; FMad(a,b,c)
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1139, float %481, float %1153)  ; FMad(a,b,c)
  %1155 = fadd fast float %1154, %487
  %1156 = fmul fast float %1137, %470
  %1157 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %476, float %1156)  ; FMad(a,b,c)
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %1139, float %482, float %1157)  ; FMad(a,b,c)
  %1159 = fadd fast float %1158, %488
  %1160 = fmul fast float %1137, %472
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %478, float %1160)  ; FMad(a,b,c)
  %1162 = call float @dx.op.tertiary.f32(i32 46, float %1139, float %484, float %1161)  ; FMad(a,b,c)
  %1163 = fadd fast float %1162, %490
  %1164 = fdiv fast float 1.000000e+00, %1151
  %1165 = fmul fast float %1164, %1143
  %1166 = fmul fast float %1164, %1147
  %1167 = fdiv fast float 1.000000e+00, %1163
  %1168 = fmul fast float %1167, %1155
  %1169 = fmul fast float %1167, %1159
  %1170 = fsub fast float %1168, %1165
  %1171 = fsub fast float %1169, %1166
  %1172 = call float @dx.op.dot2.f32(i32 54, float %1170, float %1171, float %1170, float %1171)  ; Dot2(ax,ay,bx,by)
  %1173 = call float @dx.op.unary.f32(i32 25, float %1172)  ; Rsqrt(value)
  %1174 = fmul fast float %1170, %1173
  %1175 = fmul fast float %1171, %1173
  %1176 = fmul fast float %1170, %1170
  %1177 = fmul fast float %1171, %1171
  %1178 = fadd fast float %1176, %1177
  %1179 = call float @dx.op.unary.f32(i32 24, float %1178)  ; Sqrt(value)
  %1180 = fmul fast float %1179, 5.000000e-01
  %1181 = fcmp fast olt float %1180, %1090
  br i1 %1181, label %1182, label %1183, !dx.controlflow.hints !48

; <label>:1182                                    ; preds = %1091
  br label %1183

; <label>:1183                                    ; preds = %1182, %1091, %962
  %1184 = phi float [ %1090, %962 ], [ %1180, %1182 ], [ %1090, %1091 ]
  %1185 = phi float [ %1090, %962 ], [ %1090, %1182 ], [ %1180, %1091 ]
  %1186 = phi float [ %1084, %962 ], [ %1084, %1182 ], [ %1174, %1091 ]
  %1187 = phi float [ %1085, %962 ], [ %1085, %1182 ], [ %1175, %1091 ]
  %1188 = fsub fast float %1185, %1184
  %1189 = fmul fast float %1186, %1186
  %1190 = fmul fast float %1189, %1188
  %1191 = fadd fast float %1190, %1184
  %1192 = fmul fast float %1186, %1188
  %1193 = fmul fast float %1192, %1187
  %1194 = fmul fast float %1187, %1187
  %1195 = fmul fast float %1194, %1188
  %1196 = fadd fast float %1195, %1184
  %1197 = fmul fast float %1191, %548
  %1198 = call float @dx.op.tertiary.f32(i32 46, float %547, float %1193, float %1197)  ; FMad(a,b,c)
  %1199 = fmul fast float %1193, %548
  %1200 = call float @dx.op.tertiary.f32(i32 46, float %547, float %1196, float %1199)  ; FMad(a,b,c)
  %1201 = fmul fast float %1191, %549
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %548, float %1193, float %1201)  ; FMad(a,b,c)
  %1203 = fmul fast float %1193, %549
  %1204 = call float @dx.op.tertiary.f32(i32 46, float %548, float %1196, float %1203)  ; FMad(a,b,c)
  br label %1205

; <label>:1205                                    ; preds = %1205, %1183
  %1206 = phi float [ 0.000000e+00, %1183 ], [ %1232, %1205 ]
  %1207 = phi i32 [ 0, %1183 ], [ %1233, %1205 ]
  %1208 = mul i32 %1207, 2
  %1209 = add i32 0, %1208
  %1210 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1209
  %1211 = load float, float* %1210, align 4
  %1212 = mul i32 %1207, 2
  %1213 = add i32 1, %1212
  %1214 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1213
  %1215 = load float, float* %1214, align 4
  %1216 = fmul fast float %1211, %1198
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %1202, float %1216)  ; FMad(a,b,c)
  %1218 = fmul fast float %1211, %1200
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %1204, float %1218)  ; FMad(a,b,c)
  %1220 = fadd fast float %1217, %542
  %1221 = fadd fast float %1219, %543
  %1222 = fmul fast float %1220, %459
  %1223 = fmul fast float %1221, %459
  %1224 = call float @dx.op.binary.f32(i32 35, float %1222, float %455)  ; FMax(a,b)
  %1225 = call float @dx.op.binary.f32(i32 35, float %1223, float %455)  ; FMax(a,b)
  %1226 = call float @dx.op.binary.f32(i32 36, float %1224, float %456)  ; FMin(a,b)
  %1227 = call float @dx.op.binary.f32(i32 36, float %1225, float %456)  ; FMin(a,b)
  %1228 = fadd fast float %1226, %453
  %1229 = fadd fast float %1227, %454
  %1230 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %19, float %1228, float %1229, float %928, float undef, i32 0, i32 0, i32 undef, float %931)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = fadd fast float %1231, %1206
  %1233 = add nuw nsw i32 %1207, 1
  %1234 = icmp eq i32 %1233, 8
  br i1 %1234, label %1235, label %1205

; <label>:1235                                    ; preds = %1205
  %1236 = fmul fast float %1232, 1.250000e-01
  br label %1237

; <label>:1237                                    ; preds = %1235, %945, %594
  %1238 = phi float [ %621, %594 ], [ %1236, %1235 ], [ 1.000000e+00, %945 ]
  %1239 = fcmp fast ogt float %1238, 0.000000e+00
  %1240 = xor i1 %72, true
  %1241 = and i1 %1239, %1240
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1244 = fcmp fast olt float %1243, 0.000000e+00
  %1245 = and i1 %1241, %1244
  br i1 %1245, label %1246, label %1357, !dx.controlflow.hints !51

; <label>:1246                                    ; preds = %1237
  %1247 = fadd fast float %542, %455
  %1248 = fadd fast float %543, %455
  %1249 = fadd fast float %545, %463
  %1250 = fmul fast float %542, %493
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %543, float %499, float %1250)  ; FMad(a,b,c)
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %545, float %505, float %1251)  ; FMad(a,b,c)
  %1253 = fadd fast float %1252, %511
  %1254 = fmul fast float %542, %494
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %543, float %500, float %1254)  ; FMad(a,b,c)
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %545, float %506, float %1255)  ; FMad(a,b,c)
  %1257 = fadd fast float %1256, %512
  %1258 = fmul fast float %542, %495
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %543, float %501, float %1258)  ; FMad(a,b,c)
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %545, float %507, float %1259)  ; FMad(a,b,c)
  %1261 = fadd fast float %1260, %513
  %1262 = fmul fast float %542, %496
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %543, float %502, float %1262)  ; FMad(a,b,c)
  %1264 = call float @dx.op.tertiary.f32(i32 46, float %545, float %508, float %1263)  ; FMad(a,b,c)
  %1265 = fadd fast float %1264, %514
  %1266 = fmul fast float %1247, %493
  %1267 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %499, float %1266)  ; FMad(a,b,c)
  %1268 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %505, float %1267)  ; FMad(a,b,c)
  %1269 = fadd fast float %1268, %511
  %1270 = fmul fast float %1247, %494
  %1271 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %500, float %1270)  ; FMad(a,b,c)
  %1272 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %506, float %1271)  ; FMad(a,b,c)
  %1273 = fadd fast float %1272, %512
  %1274 = fmul fast float %1247, %495
  %1275 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %501, float %1274)  ; FMad(a,b,c)
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %507, float %1275)  ; FMad(a,b,c)
  %1277 = fadd fast float %1276, %513
  %1278 = fmul fast float %1247, %496
  %1279 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %502, float %1278)  ; FMad(a,b,c)
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %508, float %1279)  ; FMad(a,b,c)
  %1281 = fadd fast float %1280, %514
  %1282 = fdiv fast float 1.000000e+00, %1265
  %1283 = fmul fast float %1282, %1253
  %1284 = fmul fast float %1282, %1257
  %1285 = fmul fast float %1282, %1261
  %1286 = fdiv fast float 1.000000e+00, %1281
  %1287 = fmul fast float %1286, %1269
  %1288 = fmul fast float %1286, %1273
  %1289 = fmul fast float %1286, %1277
  %1290 = fsub fast float %1283, %1287
  %1291 = fsub fast float %1284, %1288
  %1292 = fsub fast float %1285, %1289
  %1293 = fmul fast float %1290, %1290
  %1294 = fmul fast float %1291, %1291
  %1295 = fadd fast float %1293, %1294
  %1296 = fmul fast float %1292, %1292
  %1297 = fadd fast float %1295, %1296
  %1298 = call float @dx.op.unary.f32(i32 24, float %1297)  ; Sqrt(value)
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.CBufRet.f32 %1299, 2
  %1303 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.CBufRet.f32 %1304, 2
  %1308 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.CBufRet.f32 %1309, 2
  %1313 = extractvalue %dx.types.CBufRet.f32 %1309, 3
  %1314 = fmul fast float %1300, %1283
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1301, float %1314)  ; FMad(a,b,c)
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1302, float %1315)  ; FMad(a,b,c)
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1265, float %1303, float %1316)  ; FMad(a,b,c)
  %1318 = fmul fast float %1305, %1283
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1306, float %1318)  ; FMad(a,b,c)
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1307, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1265, float %1308, float %1320)  ; FMad(a,b,c)
  %1322 = fmul fast float %1310, %1283
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1311, float %1322)  ; FMad(a,b,c)
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1312, float %1323)  ; FMad(a,b,c)
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1265, float %1313, float %1324)  ; FMad(a,b,c)
  %1326 = fmul fast float %1300, %1287
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1288, float %1301, float %1326)  ; FMad(a,b,c)
  %1328 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1302, float %1327)  ; FMad(a,b,c)
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1303, float %1328)  ; FMad(a,b,c)
  %1330 = fmul fast float %1305, %1287
  %1331 = call float @dx.op.tertiary.f32(i32 46, float %1288, float %1306, float %1330)  ; FMad(a,b,c)
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1307, float %1331)  ; FMad(a,b,c)
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1308, float %1332)  ; FMad(a,b,c)
  %1334 = fmul fast float %1310, %1287
  %1335 = call float @dx.op.tertiary.f32(i32 46, float %1288, float %1311, float %1334)  ; FMad(a,b,c)
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1312, float %1335)  ; FMad(a,b,c)
  %1337 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1313, float %1336)  ; FMad(a,b,c)
  %1338 = fdiv fast float 1.000000e+00, %1325
  %1339 = fmul fast float %1338, %1317
  %1340 = fmul fast float %1338, %1321
  %1341 = fdiv fast float 1.000000e+00, %1337
  %1342 = fmul fast float %1341, %1329
  %1343 = fmul fast float %1341, %1333
  %1344 = fsub fast float %1339, %1342
  %1345 = fsub fast float %1340, %1343
  %1346 = fmul fast float %1344, 5.000000e-01
  %1347 = fmul fast float %1345, 5.000000e-01
  %1348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.f32 %1348, 0
  %1350 = extractvalue %dx.types.CBufRet.f32 %1348, 1
  %1351 = fmul fast float %1346, %1349
  %1352 = fmul fast float %1347, %1350
  %1353 = fmul fast float %1351, %1351
  %1354 = fmul fast float %1352, %1352
  %1355 = fadd fast float %1353, %1354
  %1356 = call float @dx.op.unary.f32(i32 24, float %1355)  ; Sqrt(value)
  br label %1357

; <label>:1357                                    ; preds = %1246, %1237
  %1358 = phi float [ %1298, %1246 ], [ 0.000000e+00, %1237 ]
  %1359 = phi float [ %1356, %1246 ], [ 0.000000e+00, %1237 ]
  %1360 = fadd fast float %1238, -1.000000e+00
  %1361 = fmul fast float %1360, %432
  %1362 = fadd fast float %1361, 1.000000e+00
  %1363 = fmul fast float %1362, %444
  br label %1364

; <label>:1364                                    ; preds = %1357, %411
  %1365 = phi float [ %1363, %1357 ], [ %444, %411 ]
  %1366 = phi float [ %1358, %1357 ], [ 0.000000e+00, %411 ]
  %1367 = phi float [ %1359, %1357 ], [ 0.000000e+00, %411 ]
  %1368 = call float @dx.op.binary.f32(i32 36, float %1365, float %1365)  ; FMin(a,b)
  %1369 = call float @dx.op.binary.f32(i32 36, float %1365, float %1368)  ; FMin(a,b)
  %1370 = fcmp fast ogt float %1369, 0.000000e+00
  %1371 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %384, float %385, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1372 = fcmp fast ogt float %1371, 0.000000e+00
  %1373 = and i1 %1370, %1372
  br i1 %1373, label %1374, label %1655, !dx.controlflow.hints !52

; <label>:1374                                    ; preds = %1364
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 1
  %1379 = select i1 %72, float %1376, float %1378
  %1380 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1381 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1382 = select i1 %72, float %1380, float %1381
  %1383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.i32 %1383, 0
  %1385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.i32 %1385, 0
  %1387 = select i1 %72, i32 %1384, i32 %1386
  %1388 = fcmp fast ogt float %1366, 0.000000e+00
  br i1 %1388, label %1389, label %1393, !dx.controlflow.hints !53

; <label>:1389                                    ; preds = %1374
  %1390 = fptosi float %1367 to i32
  %1391 = call i32 @dx.op.binary.i32(i32 37, i32 %1390, i32 1)  ; IMax(a,b)
  %1392 = call i32 @dx.op.binary.i32(i32 38, i32 %1391, i32 16)  ; IMin(a,b)
  br label %1393

; <label>:1393                                    ; preds = %1389, %1374
  %1394 = phi float [ 0.000000e+00, %1389 ], [ 1.000000e+00, %1374 ]
  %1395 = phi float [ %1366, %1389 ], [ %1379, %1374 ]
  %1396 = phi i32 [ %1392, %1389 ], [ %1387, %1374 ]
  %1397 = fcmp fast olt float %1395, 5.000000e-01
  %1398 = icmp eq i32 %1396, 0
  %1399 = or i1 %1397, %1398
  br i1 %1399, label %1650, label %1400, !dx.controlflow.hints !54

; <label>:1400                                    ; preds = %1393
  %1401 = fsub fast float %344, %134
  %1402 = fsub fast float %345, %135
  %1403 = fsub fast float %346, %136
  %1404 = fmul fast float %1401, %1401
  %1405 = fmul fast float %1402, %1402
  %1406 = fadd fast float %1404, %1405
  %1407 = fmul fast float %1403, %1403
  %1408 = fadd fast float %1406, %1407
  %1409 = call float @dx.op.unary.f32(i32 24, float %1408)  ; Sqrt(value)
  %1410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.i32 %1410, 0
  %1412 = uitofp i32 %1411 to float
  %1413 = fmul fast float %1395, %341
  %1414 = fdiv fast float %1413, %1409
  %1415 = call float @dx.op.binary.f32(i32 36, float %1414, float 1.000000e+01)  ; FMin(a,b)
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1420 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1425 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1430 = extractvalue %dx.types.CBufRet.f32 %1426, 3
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.CBufRet.f32 %1431, 1
  %1434 = extractvalue %dx.types.CBufRet.f32 %1431, 2
  %1435 = extractvalue %dx.types.CBufRet.f32 %1431, 3
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.CBufRet.f32 %1436, 1
  %1439 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1440 = extractvalue %dx.types.CBufRet.f32 %1436, 3
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.CBufRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.CBufRet.f32 %1441, 2
  %1445 = extractvalue %dx.types.CBufRet.f32 %1441, 3
  %1446 = select i1 %72, float %1417, float %1432
  %1447 = select i1 %72, float %1422, float %1437
  %1448 = select i1 %72, float %1427, float %1442
  %1449 = select i1 %72, float %1418, float %1433
  %1450 = select i1 %72, float %1423, float %1438
  %1451 = select i1 %72, float %1428, float %1443
  %1452 = select i1 %72, float %1419, float %1434
  %1453 = select i1 %72, float %1424, float %1439
  %1454 = select i1 %72, float %1429, float %1444
  %1455 = select i1 %72, float %1420, float %1435
  %1456 = select i1 %72, float %1425, float %1440
  %1457 = select i1 %72, float %1430, float %1445
  %1458 = fmul fast float %253, 0x401061CAC0000000
  %1459 = fmul fast float %253, 0x4023E1D7E0000000
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.CBufRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.CBufRet.f32 %1460, 2
  %1464 = extractvalue %dx.types.CBufRet.f32 %1460, 3
  %1465 = fsub fast float -0.000000e+00, %384
  %1466 = fmul fast float %386, %1465
  %1467 = fmul fast float %384, %1465
  %1468 = fmul fast float %385, %385
  %1469 = fsub fast float %1467, %1468
  %1470 = fdiv fast float 1.000000e+00, %79
  %1471 = fmul fast float %1463, %68
  %1472 = fmul fast float %1464, %69
  %1473 = fmul fast float %1395, %384
  %1474 = fmul fast float %1395, %386
  %1475 = fadd fast float %1473, %134
  %1476 = fadd fast float %1474, %136
  %1477 = fadd fast float %1459, 5.000000e-01
  %1478 = call float @dx.op.unary.f32(i32 22, float %1477)  ; Frc(value)
  %1479 = bitcast float %1478 to i32
  %1480 = ashr i32 %1479, 1
  %1481 = add nsw i32 %1480, 532487669
  %1482 = bitcast i32 %1481 to float
  %1483 = fmul fast float %1482, %1415
  %1484 = fadd fast float %1458, 5.000000e-01
  %1485 = call float @dx.op.unary.f32(i32 22, float %1484)  ; Frc(value)
  %1486 = fmul fast float %1485, 0x401921FB60000000
  %1487 = call float @dx.op.unary.f32(i32 12, float %1486)  ; Cos(value)
  %1488 = fmul fast float %1487, %1487
  %1489 = fsub fast float 1.000000e+00, %1488
  %1490 = bitcast float %1489 to i32
  %1491 = ashr i32 %1490, 1
  %1492 = add nsw i32 %1491, 532487669
  %1493 = bitcast i32 %1492 to float
  %1494 = fmul fast float %1483, %1487
  %1495 = fmul fast float %1494, %385
  %1496 = fmul fast float %1494, %1465
  %1497 = fadd fast float %1475, %1495
  %1498 = fmul fast float %1493, %1483
  %1499 = fmul fast float %1466, %1498
  %1500 = fmul fast float %1498, %386
  %1501 = fmul fast float %1498, %1469
  %1502 = fsub fast float %1497, %1499
  %1503 = fadd fast float %1500, %1395
  %1504 = fmul fast float %1503, %385
  %1505 = fadd fast float %1496, %135
  %1506 = fadd fast float %1505, %1504
  %1507 = fadd fast float %1476, %1501
  %1508 = fmul fast float %1502, %1446
  %1509 = call float @dx.op.tertiary.f32(i32 46, float %1506, float %1449, float %1508)  ; FMad(a,b,c)
  %1510 = call float @dx.op.tertiary.f32(i32 46, float %1507, float %1452, float %1509)  ; FMad(a,b,c)
  %1511 = fadd fast float %1510, %1455
  %1512 = fmul fast float %1502, %1447
  %1513 = call float @dx.op.tertiary.f32(i32 46, float %1506, float %1450, float %1512)  ; FMad(a,b,c)
  %1514 = call float @dx.op.tertiary.f32(i32 46, float %1507, float %1453, float %1513)  ; FMad(a,b,c)
  %1515 = fadd fast float %1514, %1456
  %1516 = fmul fast float %1502, %1448
  %1517 = call float @dx.op.tertiary.f32(i32 46, float %1506, float %1451, float %1516)  ; FMad(a,b,c)
  %1518 = call float @dx.op.tertiary.f32(i32 46, float %1507, float %1454, float %1517)  ; FMad(a,b,c)
  %1519 = fadd fast float %1518, %1457
  %1520 = fdiv fast float 1.000000e+00, %1519
  %1521 = fmul fast float %1511, 5.000000e-01
  %1522 = fmul fast float %1515, -5.000000e-01
  %1523 = fmul fast float %1521, %1520
  %1524 = fmul fast float %1522, %1520
  %1525 = fsub fast float 5.000000e-01, %1471
  %1526 = fadd fast float %1525, %1523
  %1527 = fsub fast float 5.000000e-01, %1472
  %1528 = fadd fast float %1527, %1524
  %1529 = fsub fast float %1520, %1470
  %1530 = call float @dx.op.dot2.f32(i32 54, float %1526, float %1528, float %1526, float %1528)  ; Dot2(ax,ay,bx,by)
  %1531 = call float @dx.op.binary.f32(i32 35, float %1530, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1532 = call float @dx.op.dot2.f32(i32 54, float %1461, float %1462, float %1461, float %1462)  ; Dot2(ax,ay,bx,by)
  %1533 = fmul fast float %1532, %1531
  %1534 = call float @dx.op.unary.f32(i32 25, float %1533)  ; Rsqrt(value)
  %1535 = fmul fast float %1534, %1526
  %1536 = fmul fast float %1534, %1528
  %1537 = fadd fast float %1535, %1471
  %1538 = fadd fast float %1536, %1472
  %1539 = fmul fast float %1526, %1461
  %1540 = fmul fast float %1528, %1462
  %1541 = fmul fast float %1539, %1539
  %1542 = fmul fast float %1540, %1540
  %1543 = fadd fast float %1541, %1542
  %1544 = call float @dx.op.unary.f32(i32 24, float %1543)  ; Sqrt(value)
  %1545 = fdiv fast float 1.000000e+00, %1544
  %1546 = fmul fast float %1544, 3.906250e-03
  %1547 = fmul fast float %239, 0x3F70624DE0000000
  %1548 = fadd fast float %1547, 0x3F70624DE0000000
  %1549 = icmp sgt i32 %1396, -1
  br i1 %1549, label %1550, label %1615

; <label>:1550                                    ; preds = %1400
  br label %1551

; <label>:1551                                    ; preds = %1611, %1550
  %1552 = phi float [ %1586, %1611 ], [ %79, %1550 ]
  %1553 = phi float [ %1573, %1611 ], [ %79, %1550 ]
  %1554 = phi float [ %1553, %1611 ], [ %79, %1550 ]
  %1555 = phi i32 [ %1612, %1611 ], [ 0, %1550 ]
  %1556 = sitofp i32 %1555 to float
  %1557 = fadd fast float %253, 5.000000e-01
  %1558 = call float @dx.op.unary.f32(i32 22, float %1557)  ; Frc(value)
  %1559 = fadd fast float %1556, %1558
  %1560 = sitofp i32 %1396 to float
  %1561 = fdiv fast float %1559, %1560
  %1562 = fmul fast float %1561, %1561
  %1563 = fsub fast float %1562, %1561
  %1564 = fmul fast float %1563, %1394
  %1565 = fadd fast float %1564, %1561
  %1566 = call float @dx.op.binary.f32(i32 36, float %1565, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1567 = fmul fast float %1566, %1526
  %1568 = fmul fast float %1566, %1528
  %1569 = fmul fast float %1566, %1529
  %1570 = fadd fast float %1567, %1537
  %1571 = fadd fast float %1568, %1538
  %1572 = fadd fast float %1569, %1470
  %1573 = fdiv fast float 1.000000e+00, %1572
  %1574 = icmp ne i32 %1411, 0
  %1575 = fmul fast float %1546, %1566
  %1576 = call float @dx.op.binary.f32(i32 36, float %1575, float %1412)  ; FMin(a,b)
  %1577 = select i1 %1574, float %1576, float 0.000000e+00
  %1578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1570, float %1571, float undef, float undef, i32 0, i32 0, i32 undef, float %1577)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1579 = extractvalue %dx.types.ResRet.f32 %1578, 0
  %1580 = fcmp fast ogt float %1579, -1.000000e+00
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1583 = select i1 %1580, float %1582, float 1.000000e+00
  %1584 = fadd fast float %1579, 1.000000e+00
  %1585 = fmul fast float %1583, %1584
  %1586 = call float @dx.op.unary.f32(i32 6, float %1585)  ; FAbs(value)
  %1587 = fmul fast float %1586, %1548
  %1588 = fsub fast float %1573, %1586
  %1589 = fsub fast float %1588, %1587
  %1590 = fcmp fast ogt float %1589, 0.000000e+00
  %1591 = fcmp fast ogt float %1382, 0.000000e+00
  br i1 %1591, label %1592, label %1595, !dx.controlflow.hints !55

; <label>:1592                                    ; preds = %1551
  %1593 = fsub fast float %1573, %1554
  %1594 = call float @dx.op.binary.f32(i32 35, float %1593, float %1382)  ; FMax(a,b)
  br label %1595

; <label>:1595                                    ; preds = %1592, %1551
  %1596 = phi float [ %1594, %1592 ], [ %1395, %1551 ]
  %1597 = fcmp fast olt float %1589, %1596
  %1598 = fcmp uge float %1579, -1.000000e+00
  %1599 = or i1 %72, %1598
  %1600 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1601 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1602 = fcmp fast oeq float %1570, %1600
  %1603 = fcmp fast oeq float %1571, %1601
  %1604 = and i1 %1602, %1603
  %1605 = and i1 %1599, %1604
  %1606 = and i1 %1590, %1597
  %1607 = and i1 %1606, %1605
  %1608 = fcmp fast ogt float %1566, %1545
  %1609 = and i1 %1608, %1607
  %1610 = zext i1 %1609 to i32
  br i1 %1609, label %1614, label %1611, !dx.controlflow.hints !56

; <label>:1611                                    ; preds = %1595
  %1612 = add nuw nsw i32 %1555, 1
  %1613 = icmp slt i32 %1555, %1396
  br i1 %1613, label %1551, label %1614

; <label>:1614                                    ; preds = %1611, %1595
  br label %1615

; <label>:1615                                    ; preds = %1614, %1400
  %1616 = phi i32 [ 0, %1400 ], [ %1610, %1614 ]
  %1617 = phi float [ %79, %1400 ], [ %1586, %1614 ]
  %1618 = phi float [ %79, %1400 ], [ %1552, %1614 ]
  %1619 = phi float [ %79, %1400 ], [ %1573, %1614 ]
  %1620 = phi float [ %79, %1400 ], [ %1553, %1614 ]
  %1621 = fsub fast float %1620, %1618
  %1622 = fsub fast float %1619, %1617
  %1623 = fsub fast float %1621, %1622
  %1624 = fcmp fast une float %1623, 0.000000e+00
  %1625 = fmul fast float %1621, %1619
  %1626 = fmul fast float %1620, %1622
  %1627 = fsub fast float %1625, %1626
  %1628 = fdiv fast float 1.000000e+00, %1623
  %1629 = fmul fast float %1627, %1628
  %1630 = select i1 %1624, float %1629, float %1619
  %1631 = fdiv fast float 1.000000e+00, %1630
  %1632 = fsub fast float %1631, %1470
  %1633 = fdiv fast float %1632, %1529
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = fmul fast float %1634, %1526
  %1636 = fmul fast float %1634, %1528
  %1637 = fadd fast float %1635, %1537
  %1638 = fadd fast float %1636, %1538
  %1639 = fadd fast float %1637, -5.000000e-01
  %1640 = fadd fast float %1638, -5.000000e-01
  %1641 = call float @dx.op.unary.f32(i32 6, float %1639)  ; FAbs(value)
  %1642 = call float @dx.op.unary.f32(i32 6, float %1640)  ; FAbs(value)
  %1643 = fadd fast float %1641, -5.000000e-01
  %1644 = fadd fast float %1642, -5.000000e-01
  %1645 = call float @dx.op.binary.f32(i32 35, float %1643, float %1644)  ; FMax(a,b)
  %1646 = fcmp fast olt float %1645, 0.000000e+00
  %1647 = icmp ne i32 %1616, 0
  %1648 = and i1 %1647, %1646
  %1649 = select i1 %1648, float 0.000000e+00, float 1.000000e+00
  br label %1650

; <label>:1650                                    ; preds = %1615, %1393
  %1651 = phi float [ %1649, %1615 ], [ 1.000000e+00, %1393 ]
  %1652 = fmul fast float %1651, %1365
  %1653 = fmul fast float %1651, %1365
  %1654 = fmul fast float %1651, %1365
  br label %1655

; <label>:1655                                    ; preds = %1650, %1364
  %1656 = phi float [ %1652, %1650 ], [ %1365, %1364 ]
  %1657 = phi float [ %1653, %1650 ], [ %1365, %1364 ]
  %1658 = phi float [ %1654, %1650 ], [ %1365, %1364 ]
  %1659 = call float @dx.op.binary.f32(i32 36, float %1657, float %1658)  ; FMin(a,b)
  %1660 = call float @dx.op.binary.f32(i32 36, float %1656, float %1659)  ; FMin(a,b)
  %1661 = fcmp fast ogt float %1660, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1662 = zext i1 %1661 to i32
  %1663 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %1662 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1664 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  %1665 = icmp eq i32 %1664, 0
  %1666 = select i1 %1665, i32 0, i32 %323
  %1667 = or i32 %318, %1666
  %1668 = lshr i32 %258, 5
  %1669 = lshr i32 %259, 5
  %1670 = fcmp fast olt float %1656, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1671 = and i32 %25, 31
  %1672 = zext i1 %1670 to i32
  %1673 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %25
  store i32 %1672, i32 addrspace(3)* %1673, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1674 = icmp ult i32 %1671, 16
  br i1 %1674, label %1675, label %1681, !dx.controlflow.hints !57

; <label>:1675                                    ; preds = %1655
  %1676 = add i32 %25, 16
  %1677 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1676
  %1678 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !37
  %1679 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1680 = and i32 %1679, %1678
  store i32 %1680, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1681

; <label>:1681                                    ; preds = %1675, %1655
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1682 = icmp ult i32 %1671, 8
  br i1 %1682, label %1683, label %1689, !dx.controlflow.hints !58

; <label>:1683                                    ; preds = %1681
  %1684 = add i32 %25, 8
  %1685 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1684
  %1686 = load i32, i32 addrspace(3)* %1685, align 4, !tbaa !37
  %1687 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1688 = and i32 %1687, %1686
  store i32 %1688, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1689

; <label>:1689                                    ; preds = %1683, %1681
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1690 = icmp ult i32 %1671, 4
  br i1 %1690, label %1691, label %1697, !dx.controlflow.hints !59

; <label>:1691                                    ; preds = %1689
  %1692 = add i32 %25, 4
  %1693 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1692
  %1694 = load i32, i32 addrspace(3)* %1693, align 4, !tbaa !37
  %1695 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1696 = and i32 %1695, %1694
  store i32 %1696, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1697

; <label>:1697                                    ; preds = %1691, %1689
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1698 = icmp ult i32 %1671, 2
  br i1 %1698, label %1699, label %1705, !dx.controlflow.hints !60

; <label>:1699                                    ; preds = %1697
  %1700 = add i32 %25, 2
  %1701 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1700
  %1702 = load i32, i32 addrspace(3)* %1701, align 4, !tbaa !37
  %1703 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1704 = and i32 %1703, %1702
  store i32 %1704, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1705

; <label>:1705                                    ; preds = %1699, %1697
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1706 = icmp eq i32 %1671, 0
  br i1 %1706, label %1707, label %1713, !dx.controlflow.hints !61

; <label>:1707                                    ; preds = %1705
  %1708 = add i32 %25, 1
  %1709 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1708
  %1710 = load i32, i32 addrspace(3)* %1709, align 4, !tbaa !37
  %1711 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1712 = and i32 %1711, %1710
  store i32 %1712, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1713

; <label>:1713                                    ; preds = %1707, %1705
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1714 = and i32 %25, -64
  %1715 = or i32 %1714, 32
  %1716 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1714
  %1717 = load i32, i32 addrspace(3)* %1716, align 4, !tbaa !37
  %1718 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1715
  %1719 = load i32, i32 addrspace(3)* %1718, align 4, !tbaa !37
  %1720 = and i32 %1719, %1717
  %1721 = icmp ne i32 %1720, 0
  %1722 = fcmp fast ogt float %1656, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1723 = zext i1 %1722 to i32
  store i32 %1723, i32 addrspace(3)* %1673, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1674, label %1724, label %1730, !dx.controlflow.hints !57

; <label>:1724                                    ; preds = %1713
  %1725 = add i32 %25, 16
  %1726 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1725
  %1727 = load i32, i32 addrspace(3)* %1726, align 4, !tbaa !37
  %1728 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1729 = and i32 %1728, %1727
  store i32 %1729, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1730

; <label>:1730                                    ; preds = %1724, %1713
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1682, label %1731, label %1737, !dx.controlflow.hints !58

; <label>:1731                                    ; preds = %1730
  %1732 = add i32 %25, 8
  %1733 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1732
  %1734 = load i32, i32 addrspace(3)* %1733, align 4, !tbaa !37
  %1735 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1736 = and i32 %1735, %1734
  store i32 %1736, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1737

; <label>:1737                                    ; preds = %1731, %1730
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1690, label %1738, label %1744, !dx.controlflow.hints !59

; <label>:1738                                    ; preds = %1737
  %1739 = add i32 %25, 4
  %1740 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1739
  %1741 = load i32, i32 addrspace(3)* %1740, align 4, !tbaa !37
  %1742 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1743 = and i32 %1742, %1741
  store i32 %1743, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1744

; <label>:1744                                    ; preds = %1738, %1737
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1698, label %1745, label %1751, !dx.controlflow.hints !60

; <label>:1745                                    ; preds = %1744
  %1746 = add i32 %25, 2
  %1747 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1746
  %1748 = load i32, i32 addrspace(3)* %1747, align 4, !tbaa !37
  %1749 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1750 = and i32 %1749, %1748
  store i32 %1750, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1751

; <label>:1751                                    ; preds = %1745, %1744
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1706, label %1752, label %1758, !dx.controlflow.hints !61

; <label>:1752                                    ; preds = %1751
  %1753 = add i32 %25, 1
  %1754 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1753
  %1755 = load i32, i32 addrspace(3)* %1754, align 4, !tbaa !37
  %1756 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !37
  %1757 = and i32 %1756, %1755
  store i32 %1757, i32 addrspace(3)* %1673, align 4, !tbaa !37
  br label %1758

; <label>:1758                                    ; preds = %1752, %1751
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1759 = load i32, i32 addrspace(3)* %1716, align 4, !tbaa !37
  %1760 = load i32, i32 addrspace(3)* %1718, align 4, !tbaa !37
  %1761 = and i32 %1760, %1759
  %1762 = or i32 %1761, %1720
  %1763 = icmp eq i32 %1762, 0
  %1764 = lshr i32 %259, 1
  %1765 = and i32 %1764, 8
  %1766 = lshr i32 %258, 2
  %1767 = and i32 %1766, 4
  %1768 = or i32 %1767, %38
  %1769 = or i32 %1768, %1765
  br i1 %311, label %1770, label %1812, !dx.controlflow.hints !62

; <label>:1770                                    ; preds = %1758
  %1771 = icmp ne i32 %1761, 0
  %1772 = shl i32 1, %1769
  %1773 = select i1 %1771, i32 %1772, i32 0
  %1774 = shl i32 65536, %1769
  %1775 = select i1 %1721, i32 %1774, i32 0
  %1776 = or i32 %1773, %1775
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %1780, label %1778, !dx.controlflow.hints !63

; <label>:1778                                    ; preds = %1770
  %1779 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1668, i32 %1669, i32 %321, i32 %1776)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1780

; <label>:1780                                    ; preds = %1778, %1770
  br i1 %1763, label %1781, label %1810

; <label>:1781                                    ; preds = %1780
  br label %1782

; <label>:1782                                    ; preds = %1807, %1781
  %1783 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1668, i32 %1669, i32 %321, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1784 = and i32 %1783, 3
  %1785 = icmp eq i32 %1784, 0
  br i1 %1785, label %1786, label %1807, !dx.controlflow.hints !64

; <label>:1786                                    ; preds = %1782
  %1787 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.i32 %1788, 3
  %1790 = call i32 @dx.op.binary.i32(i32 40, i32 %1789, i32 %1787)  ; UMin(a,b)
  %1791 = extractvalue %dx.types.CBufRet.i32 %1788, 2
  %1792 = udiv i32 %1790, %1791
  %1793 = urem i32 %1790, %1791
  %1794 = extractvalue %dx.types.CBufRet.i32 %1788, 1
  %1795 = urem i32 %1793, %1794
  %1796 = udiv i32 %1793, %1794
  %1797 = shl i32 %1795, 6
  %1798 = and i32 %1797, 32704
  %1799 = shl i32 %1796, 15
  %1800 = and i32 %1799, 8355840
  %1801 = shl i32 %1792, 23
  %1802 = and i32 %1801, 2139095040
  %1803 = or i32 %1802, %1798
  %1804 = or i32 %1803, %1800
  %1805 = or i32 %1804, 3
  %1806 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1668, i32 %1669, i32 %321, i32 %1805)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1810

; <label>:1807                                    ; preds = %1782
  %1808 = icmp eq i32 %1784, 3
  br i1 %1808, label %1809, label %1782, !dx.controlflow.hints !65

; <label>:1809                                    ; preds = %1807
  br label %1810

; <label>:1810                                    ; preds = %1809, %1786, %1780
  %1811 = phi i32 [ 0, %1780 ], [ %1805, %1786 ], [ %1783, %1809 ]
  store i32 %1811, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1812

; <label>:1812                                    ; preds = %1810, %1758
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1813 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br i1 %1763, label %1814, label %1835, !dx.controlflow.hints !66

; <label>:1814                                    ; preds = %1812
  %1815 = lshr i32 %258, 1
  %1816 = and i32 %1815, 15
  %1817 = and i32 %1764, 15
  %1818 = and i32 %258, 1
  %1819 = shl i32 %259, 1
  %1820 = and i32 %1819, 2
  %1821 = or i32 %1820, %1818
  %1822 = lshr i32 %1813, 2
  %1823 = and i32 %1822, 8176
  %1824 = lshr i32 %1813, 11
  %1825 = and i32 %1824, 4080
  %1826 = or i32 %1823, %1816
  %1827 = or i32 %1825, %1817
  %1828 = lshr i32 %1813, 21
  %1829 = and i32 %1828, 1020
  %1830 = or i32 %1821, %1829
  %1831 = fmul fast float %1656, 2.550000e+02
  %1832 = fadd fast float %1831, %252
  %1833 = call float @dx.op.unary.f32(i32 27, float %1832)  ; Round_ni(value)
  %1834 = fmul fast float %1833, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1826, i32 %1827, i32 %1830, float %1834, float %1834, float %1834, float %1834, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1835

; <label>:1835                                    ; preds = %1814, %1812
  %1836 = icmp eq i32 %319, %323
  br i1 %1836, label %1837, label %317, !llvm.loop !67

; <label>:1837                                    ; preds = %1835
  br label %1838

; <label>:1838                                    ; preds = %1837, %313
  %1839 = phi i32 [ 0, %313 ], [ %1667, %1837 ]
  %1840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.i32 %1840, 0
  %1842 = call i32 @dx.op.tertiary.i32(i32 49, i32 %264, i32 %1841, i32 %286)  ; UMad(a,b,c)
  %1843 = shl i32 %1842, 2
  %1844 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1843, i32 undef, i32 undef, i32 %1839)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1845 = add i32 %286, 1
  %1846 = icmp ugt i32 %1845, %282
  br i1 %1846, label %1847, label %285

; <label>:1847                                    ; preds = %1838
  br label %1848

; <label>:1848                                    ; preds = %1847, %257, %59
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
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
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.unroll.disable"}

