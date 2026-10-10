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
; shader hash: 35704f3cecffa427f287f1bdf7e84202
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
  br i1 %256, label %1950, label %257, !dx.controlflow.hints !41

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
  %276 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %277 = udiv i32 %25, %276
  %278 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %274, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %279 = icmp eq i32 %276, 64
  br i1 %279, label %306, label %280, !dx.controlflow.hints !42

; <label>:280                                     ; preds = %257
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %281 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %281, label %282, label %284, !dx.controlflow.hints !43

; <label>:282                                     ; preds = %280
  %283 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  store i32 %278, i32 addrspace(3)* %283, align 4, !tbaa !37
  br label %284

; <label>:284                                     ; preds = %282, %280
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %285 = icmp eq i32 %276, 32
  br i1 %285, label %286, label %291, !dx.controlflow.hints !44

; <label>:286                                     ; preds = %284
  %287 = xor i32 %277, 1
  %288 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %287
  %289 = load i32, i32 addrspace(3)* %288, align 4, !tbaa !37
  %290 = call i32 @dx.op.binary.i32(i32 40, i32 %278, i32 %289)  ; UMin(a,b)
  br label %306

; <label>:291                                     ; preds = %284
  %292 = icmp eq i32 %276, 16
  br i1 %292, label %293, label %306, !dx.controlflow.hints !45

; <label>:293                                     ; preds = %291
  %294 = xor i32 %277, 3
  %295 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %294
  %296 = load i32, i32 addrspace(3)* %295, align 4, !tbaa !37
  %297 = xor i32 %277, 2
  %298 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %297
  %299 = load i32, i32 addrspace(3)* %298, align 4, !tbaa !37
  %300 = call i32 @dx.op.binary.i32(i32 40, i32 %299, i32 %296)  ; UMin(a,b)
  %301 = xor i32 %277, 1
  %302 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %301
  %303 = load i32, i32 addrspace(3)* %302, align 4, !tbaa !37
  %304 = call i32 @dx.op.binary.i32(i32 40, i32 %278, i32 %303)  ; UMin(a,b)
  %305 = call i32 @dx.op.binary.i32(i32 40, i32 %304, i32 %300)  ; UMin(a,b)
  br label %306

; <label>:306                                     ; preds = %293, %291, %286, %257
  %307 = phi i32 [ %290, %286 ], [ %305, %293 ], [ %278, %257 ], [ 0, %291 ]
  %308 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %275, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %279, label %335, label %309, !dx.controlflow.hints !46

; <label>:309                                     ; preds = %306
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %310 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %310, label %311, label %313, !dx.controlflow.hints !47

; <label>:311                                     ; preds = %309
  %312 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  store i32 %308, i32 addrspace(3)* %312, align 4, !tbaa !37
  br label %313

; <label>:313                                     ; preds = %311, %309
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %314 = icmp eq i32 %276, 32
  br i1 %314, label %315, label %320, !dx.controlflow.hints !48

; <label>:315                                     ; preds = %313
  %316 = xor i32 %277, 1
  %317 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %316
  %318 = load i32, i32 addrspace(3)* %317, align 4, !tbaa !37
  %319 = call i32 @dx.op.binary.i32(i32 39, i32 %308, i32 %318)  ; UMax(a,b)
  br label %335

; <label>:320                                     ; preds = %313
  %321 = icmp eq i32 %276, 16
  br i1 %321, label %322, label %335, !dx.controlflow.hints !49

; <label>:322                                     ; preds = %320
  %323 = xor i32 %277, 3
  %324 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %323
  %325 = load i32, i32 addrspace(3)* %324, align 4, !tbaa !37
  %326 = xor i32 %277, 2
  %327 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %326
  %328 = load i32, i32 addrspace(3)* %327, align 4, !tbaa !37
  %329 = call i32 @dx.op.binary.i32(i32 39, i32 %328, i32 %325)  ; UMax(a,b)
  %330 = xor i32 %277, 1
  %331 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %330
  %332 = load i32, i32 addrspace(3)* %331, align 4, !tbaa !37
  %333 = call i32 @dx.op.binary.i32(i32 39, i32 %308, i32 %332)  ; UMax(a,b)
  %334 = call i32 @dx.op.binary.i32(i32 39, i32 %333, i32 %329)  ; UMax(a,b)
  br label %335

; <label>:335                                     ; preds = %322, %320, %315, %306
  %336 = phi i32 [ %319, %315 ], [ %334, %322 ], [ %308, %306 ], [ 0, %320 ]
  %337 = lshr i32 %307, 5
  %338 = lshr i32 %336, 5
  %339 = call i32 @dx.op.binary.i32(i32 40, i32 %338, i32 %266)  ; UMin(a,b)
  %340 = icmp ugt i32 %337, %339
  br i1 %340, label %1950, label %341

; <label>:341                                     ; preds = %335
  br label %342

; <label>:342                                     ; preds = %1940, %341
  %343 = phi i32 [ %1947, %1940 ], [ %337, %341 ]
  %344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.i32 %344, 0
  %346 = call i32 @dx.op.tertiary.i32(i32 49, i32 %264, i32 %345, i32 %343)  ; UMad(a,b,c)
  %347 = shl i32 %346, 2
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = shl i32 %343, 5
  %351 = sub nsw i32 %274, %350
  %352 = call i32 @dx.op.binary.i32(i32 37, i32 %351, i32 0)  ; IMax(a,b)
  %353 = call i32 @dx.op.binary.i32(i32 38, i32 %352, i32 31)  ; IMin(a,b)
  %354 = sub nsw i32 1, %274
  %355 = add nsw i32 %354, %275
  %356 = call i32 @dx.op.binary.i32(i32 37, i32 %355, i32 0)  ; IMax(a,b)
  %357 = call i32 @dx.op.binary.i32(i32 38, i32 %356, i32 32)  ; IMin(a,b)
  %358 = and i32 %357, 31
  %359 = shl i32 -1, %358
  %360 = xor i32 %359, -1
  %361 = and i32 %353, 31
  %362 = shl i32 %360, %361
  %363 = icmp eq i32 %357, 32
  %364 = select i1 %363, i32 -1, i32 %362
  %365 = and i32 %364, %349
  %366 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %365, i8 1)  ; WaveActiveBit(value,op)
  br i1 %279, label %393, label %367, !dx.controlflow.hints !50

; <label>:367                                     ; preds = %342
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %368 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %368, label %369, label %371, !dx.controlflow.hints !51

; <label>:369                                     ; preds = %367
  %370 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  store i32 %366, i32 addrspace(3)* %370, align 4, !tbaa !37
  br label %371

; <label>:371                                     ; preds = %369, %367
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %372 = icmp eq i32 %276, 32
  br i1 %372, label %373, label %378, !dx.controlflow.hints !52

; <label>:373                                     ; preds = %371
  %374 = xor i32 %277, 1
  %375 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %374
  %376 = load i32, i32 addrspace(3)* %375, align 4, !tbaa !37
  %377 = or i32 %376, %366
  br label %393

; <label>:378                                     ; preds = %371
  %379 = icmp eq i32 %276, 16
  br i1 %379, label %380, label %393, !dx.controlflow.hints !53

; <label>:380                                     ; preds = %378
  %381 = xor i32 %277, 1
  %382 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %381
  %383 = load i32, i32 addrspace(3)* %382, align 4, !tbaa !37
  %384 = or i32 %383, %366
  %385 = xor i32 %277, 2
  %386 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %385
  %387 = load i32, i32 addrspace(3)* %386, align 4, !tbaa !37
  %388 = or i32 %384, %387
  %389 = xor i32 %277, 3
  %390 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %389
  %391 = load i32, i32 addrspace(3)* %390, align 4, !tbaa !37
  %392 = or i32 %388, %391
  br label %393

; <label>:393                                     ; preds = %380, %378, %373, %342
  %394 = phi i32 [ %377, %373 ], [ %392, %380 ], [ %366, %342 ], [ 0, %378 ]
  br i1 %279, label %395, label %397, !dx.controlflow.hints !54

; <label>:395                                     ; preds = %393
  %396 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %394)  ; WaveReadLaneFirst(value)
  br label %402

; <label>:397                                     ; preds = %393
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %398 = icmp eq i32 %25, 0
  br i1 %398, label %399, label %400, !dx.controlflow.hints !55

; <label>:399                                     ; preds = %397
  store i32 %394, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %400

; <label>:400                                     ; preds = %399, %397
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %401 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %402

; <label>:402                                     ; preds = %400, %395
  %403 = phi i32 [ %396, %395 ], [ %401, %400 ]
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %1940, label %405

; <label>:405                                     ; preds = %402
  br label %406

; <label>:406                                     ; preds = %1937, %405
  %407 = phi i32 [ %1785, %1937 ], [ 0, %405 ]
  %408 = phi i32 [ %413, %1937 ], [ %403, %405 ]
  %409 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %408)  ; FirstbitLo(value)
  %410 = add i32 %409, %350
  %411 = and i32 %409, 31
  %412 = shl i32 1, %411
  %413 = xor i32 %412, %408
  %414 = mul i32 %410, 112
  %415 = add i32 %414, 16
  %416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = add i32 %414, 28
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = add i32 %414, 32
  %424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = add i32 %414, 44
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = add i32 %414, 48
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = add i32 %414, 64
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = add i32 %414, 92
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 65535
  %447 = uitofp i32 %446 to float
  %448 = lshr i32 %445, 16
  %449 = uitofp i32 %448 to float
  %450 = and i32 %422, 65535
  %451 = and i32 %422, 50331648
  %452 = icmp eq i32 %451, 33554432
  %453 = call float @dx.op.dot3.f32(i32 55, float %425, float %426, float %427, float %425, float %426, float %427)  ; Dot3(ax,ay,az,bx,by,bz)
  %454 = fsub fast float %134, %433
  %455 = fsub fast float %135, %434
  %456 = fsub fast float %136, %435
  %457 = call float @dx.op.dot3.f32(i32 55, float %454, float %455, float %456, float %425, float %426, float %427)  ; Dot3(ax,ay,az,bx,by,bz)
  %458 = fdiv fast float %457, %453
  %459 = call float @dx.op.binary.f32(i32 35, float %458, float -1.000000e+00)  ; FMax(a,b)
  %460 = call float @dx.op.binary.f32(i32 36, float %459, float 1.000000e+00)  ; FMin(a,b)
  %461 = fmul fast float %460, %425
  %462 = fmul fast float %460, %426
  %463 = fmul fast float %460, %427
  %464 = fadd fast float %461, %433
  %465 = fadd fast float %462, %434
  %466 = fadd fast float %463, %435
  %467 = fsub fast float %464, %134
  %468 = fsub fast float %465, %135
  %469 = fsub fast float %466, %136
  %470 = call float @dx.op.dot3.f32(i32 55, float %467, float %468, float %469, float %467, float %468, float %469)  ; Dot3(ax,ay,az,bx,by,bz)
  %471 = call float @dx.op.unary.f32(i32 24, float %470)  ; Sqrt(value)
  %472 = fdiv fast float 1.000000e+00, %471
  %473 = fmul fast float %467, %472
  %474 = fmul fast float %468, %472
  %475 = fmul fast float %469, %472
  br i1 %452, label %476, label %500, !dx.controlflow.hints !56

; <label>:476                                     ; preds = %406
  %477 = fmul fast float %441, %417
  %478 = fmul fast float %441, %418
  %479 = fmul fast float %441, %419
  %480 = fsub fast float %477, %134
  %481 = fadd fast float %480, %464
  %482 = fsub fast float %478, %135
  %483 = fadd fast float %482, %465
  %484 = fsub fast float %479, %136
  %485 = fadd fast float %484, %466
  %486 = call float @dx.op.dot3.f32(i32 55, float %481, float %483, float %485, float %481, float %483, float %485)  ; Dot3(ax,ay,az,bx,by,bz)
  %487 = call float @dx.op.unary.f32(i32 25, float %486)  ; Rsqrt(value)
  %488 = fmul fast float %487, %481
  %489 = fmul fast float %487, %483
  %490 = fmul fast float %487, %485
  %491 = fsub fast float %134, %464
  %492 = fsub fast float %135, %465
  %493 = fsub fast float %136, %466
  %494 = fsub fast float -0.000000e+00, %491
  %495 = fsub fast float -0.000000e+00, %492
  %496 = fsub fast float -0.000000e+00, %493
  %497 = call float @dx.op.dot3.f32(i32 55, float %494, float %495, float %496, float %417, float %418, float %419)  ; Dot3(ax,ay,az,bx,by,bz)
  %498 = fcmp fast ogt float %497, 0.000000e+00
  %499 = uitofp i1 %498 to float
  br label %500

; <label>:500                                     ; preds = %476, %406
  %501 = phi float [ %499, %476 ], [ 1.000000e+00, %406 ]
  %502 = phi float [ %488, %476 ], [ %473, %406 ]
  %503 = phi float [ %489, %476 ], [ %474, %406 ]
  %504 = phi float [ %490, %476 ], [ %475, %406 ]
  %505 = call float @dx.op.dot3.f32(i32 55, float %417, float %418, float %419, float %502, float %503, float %504)  ; Dot3(ax,ay,az,bx,by,bz)
  %506 = fmul fast float %505, %505
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = fsub fast float 1.000000e+00, %507
  %509 = fmul fast float %508, 5.000000e-01
  %510 = fcmp fast ogt float %505, 0.000000e+00
  %511 = fsub fast float 1.000000e+00, %509
  %512 = select i1 %510, float %509, float %511
  %513 = fmul fast float %512, %449
  %514 = fadd fast float %513, %447
  %515 = fmul fast float %514, 0x3EF0001000000000
  %516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %515, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = fmul fast float %505, %439
  %519 = fadd fast float %518, %440
  %520 = call float @dx.op.unary.f32(i32 7, float %519)  ; Saturate(value)
  %521 = select i1 %452, float 1.000000e+00, float %520
  %522 = select i1 %452, float %520, float 1.000000e+00
  %523 = fmul fast float %471, %436
  %524 = fsub fast float 1.000000e+00, %523
  %525 = fmul fast float %524, %442
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %527 = fmul fast float %526, %522
  %528 = fmul fast float %527, 2.000000e+00
  %529 = fsub fast float 3.000000e+00, %528
  %530 = fmul fast float %517, %501
  %531 = fmul fast float %527, %527
  %532 = fmul fast float %531, %530
  %533 = fmul fast float %532, %529
  %534 = icmp ne i32 %450, 255
  %535 = call float @dx.op.binary.f32(i32 36, float %533, float %533)  ; FMin(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float %533, float %535)  ; FMin(a,b)
  %537 = fcmp fast ogt float %536, 0.000000e+00
  %538 = and i1 %534, %537
  br i1 %538, label %539, label %1453, !dx.controlflow.hints !57

; <label>:539                                     ; preds = %500
  %540 = mul nuw nsw i32 %450, 176
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = extractvalue %dx.types.ResRet.f32 %541, 3
  %546 = add nuw nsw i32 %540, 16
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = add nuw nsw i32 %540, 32
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = extractvalue %dx.types.ResRet.f32 %551, 3
  %556 = add nuw nsw i32 %540, 48
  %557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = extractvalue %dx.types.ResRet.f32 %557, 3
  %562 = add nuw nsw i32 %540, 64
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = extractvalue %dx.types.ResRet.f32 %563, 3
  %568 = add nuw nsw i32 %540, 80
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  %571 = extractvalue %dx.types.ResRet.f32 %569, 1
  %572 = extractvalue %dx.types.ResRet.f32 %569, 2
  %573 = extractvalue %dx.types.ResRet.f32 %569, 3
  %574 = add nuw nsw i32 %540, 96
  %575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = extractvalue %dx.types.ResRet.f32 %575, 2
  %579 = extractvalue %dx.types.ResRet.f32 %575, 3
  %580 = add nuw nsw i32 %540, 112
  %581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = extractvalue %dx.types.ResRet.f32 %581, 1
  %584 = extractvalue %dx.types.ResRet.f32 %581, 2
  %585 = extractvalue %dx.types.ResRet.f32 %581, 3
  %586 = add nuw nsw i32 %540, 128
  %587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = extractvalue %dx.types.ResRet.f32 %587, 1
  %590 = extractvalue %dx.types.ResRet.f32 %587, 2
  %591 = extractvalue %dx.types.ResRet.f32 %587, 3
  %592 = add nuw nsw i32 %540, 144
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = extractvalue %dx.types.ResRet.f32 %593, 3
  %598 = add nuw nsw i32 %540, 160
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = extractvalue %dx.types.ResRet.f32 %599, 3
  %604 = bitcast float %549 to i32
  %605 = bitcast float %555 to i32
  %606 = and i32 %605, 1
  %607 = icmp ne i32 %606, 0
  %608 = and i32 %605, 2
  %609 = fmul fast float %554, %180
  %610 = fmul fast float %554, %181
  %611 = fmul fast float %554, %182
  %612 = fadd fast float %609, %134
  %613 = fadd fast float %610, %135
  %614 = fadd fast float %611, %136
  %615 = fmul fast float %612, %558
  %616 = call float @dx.op.tertiary.f32(i32 46, float %613, float %564, float %615)  ; FMad(a,b,c)
  %617 = call float @dx.op.tertiary.f32(i32 46, float %614, float %570, float %616)  ; FMad(a,b,c)
  %618 = fadd fast float %617, %576
  %619 = fmul fast float %612, %559
  %620 = call float @dx.op.tertiary.f32(i32 46, float %613, float %565, float %619)  ; FMad(a,b,c)
  %621 = call float @dx.op.tertiary.f32(i32 46, float %614, float %571, float %620)  ; FMad(a,b,c)
  %622 = fadd fast float %621, %577
  %623 = fmul fast float %612, %560
  %624 = call float @dx.op.tertiary.f32(i32 46, float %613, float %566, float %623)  ; FMad(a,b,c)
  %625 = call float @dx.op.tertiary.f32(i32 46, float %614, float %572, float %624)  ; FMad(a,b,c)
  %626 = fadd fast float %625, %578
  %627 = fmul fast float %612, %561
  %628 = call float @dx.op.tertiary.f32(i32 46, float %613, float %567, float %627)  ; FMad(a,b,c)
  %629 = call float @dx.op.tertiary.f32(i32 46, float %614, float %573, float %628)  ; FMad(a,b,c)
  %630 = fadd fast float %629, %579
  %631 = fdiv fast float %618, %630
  %632 = fdiv fast float %622, %630
  %633 = fdiv fast float %626, %630
  %634 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %633)  ; FMax(a,b)
  %635 = fmul fast float %252, 0x401921FB60000000
  %636 = call float @dx.op.unary.f32(i32 13, float %635)  ; Sin(value)
  %637 = call float @dx.op.unary.f32(i32 12, float %635)  ; Cos(value)
  %638 = fsub fast float -0.000000e+00, %636
  %639 = icmp eq i32 %608, 0
  br i1 %639, label %640, label %711, !dx.controlflow.hints !58

; <label>:640                                     ; preds = %539
  %641 = fmul fast float %637, %553
  %642 = call float @dx.op.tertiary.f32(i32 46, float %636, float %553, float 0.000000e+00)  ; FMad(a,b,c)
  %643 = fmul fast float %553, %638
  %644 = call float @dx.op.tertiary.f32(i32 46, float %637, float %553, float 0.000000e+00)  ; FMad(a,b,c)
  br label %645

; <label>:645                                     ; preds = %645, %640
  %646 = phi float [ 0.000000e+00, %640 ], [ %678, %645 ]
  %647 = phi float [ 0.000000e+00, %640 ], [ %680, %645 ]
  %648 = phi i32 [ 0, %640 ], [ %681, %645 ]
  %649 = mul i32 %648, 2
  %650 = add i32 0, %649
  %651 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %650
  %652 = load float, float* %651, align 4
  %653 = mul i32 %648, 2
  %654 = add i32 1, %653
  %655 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %654
  %656 = load float, float* %655, align 4
  %657 = fmul fast float %641, %652
  %658 = call float @dx.op.tertiary.f32(i32 46, float %656, float %643, float %657)  ; FMad(a,b,c)
  %659 = fmul fast float %652, %642
  %660 = call float @dx.op.tertiary.f32(i32 46, float %656, float %644, float %659)  ; FMad(a,b,c)
  %661 = fadd fast float %658, %631
  %662 = fadd fast float %660, %632
  %663 = fmul fast float %661, %548
  %664 = fmul fast float %662, %548
  %665 = call float @dx.op.binary.f32(i32 35, float %663, float %544)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 35, float %664, float %544)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 36, float %665, float %545)  ; FMin(a,b)
  %668 = call float @dx.op.binary.f32(i32 36, float %666, float %545)  ; FMin(a,b)
  %669 = fadd fast float %667, %542
  %670 = fadd fast float %668, %543
  %671 = uitofp i32 %604 to float
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %669, float %670, float %671, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = fsub fast float %673, %634
  %675 = fsub fast float %674, %552
  %676 = fcmp fast ogt float %675, 0.000000e+00
  %677 = select i1 %676, float 1.000000e+00, float 0.000000e+00
  %678 = fadd fast float %677, %646
  %679 = select i1 %676, float %675, float 0.000000e+00
  %680 = fadd fast float %679, %647
  %681 = add nuw nsw i32 %648, 1
  %682 = icmp eq i32 %681, 8
  br i1 %682, label %683, label %645

; <label>:683                                     ; preds = %645
  %684 = fdiv fast float 1.000000e+00, %678
  %685 = fmul fast float %684, %680
  %686 = fdiv fast float 1.000000e+00, %634
  %687 = fmul fast float %685, %686
  %688 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %689 = call float @dx.op.binary.f32(i32 35, float %688, float 0.000000e+00)  ; FMax(a,b)
  %690 = fmul fast float %678, 1.250000e-01
  %691 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %692 = fmul fast float %691, 2.000000e+00
  %693 = fadd fast float %692, -1.000000e+00
  %694 = fcmp fast ogt float %693, 0.000000e+00
  %695 = fcmp fast olt float %693, 0.000000e+00
  %696 = zext i1 %694 to i32
  %697 = zext i1 %695 to i32
  %698 = sub nsw i32 %696, %697
  %699 = sitofp i32 %698 to float
  %700 = fmul fast float %699, %693
  %701 = fsub fast float 1.000000e+00, %700
  %702 = fmul fast float %701, %701
  %703 = fmul fast float %702, %701
  %704 = fsub fast float %701, %703
  %705 = fmul fast float %704, %689
  %706 = fsub fast float 1.000000e+00, %703
  %707 = fsub fast float %706, %705
  %708 = fmul fast float %699, 5.000000e-01
  %709 = fmul fast float %708, %707
  %710 = fsub fast float 5.000000e-01, %709
  br label %1326

; <label>:711                                     ; preds = %539
  %712 = fsub fast float 1.000000e+00, %634
  %713 = fmul fast float %712, 5.000000e-01
  %714 = fadd fast float %713, %634
  %715 = fsub fast float %612, %433
  %716 = fsub fast float %613, %434
  %717 = fsub fast float %614, %435
  %718 = call float @dx.op.dot3.f32(i32 55, float %715, float %716, float %717, float %425, float %426, float %427)  ; Dot3(ax,ay,az,bx,by,bz)
  %719 = fdiv fast float %718, %453
  %720 = call float @dx.op.binary.f32(i32 35, float %719, float -1.000000e+00)  ; FMax(a,b)
  %721 = call float @dx.op.binary.f32(i32 36, float %720, float 1.000000e+00)  ; FMin(a,b)
  %722 = fmul fast float %721, %425
  %723 = fmul fast float %721, %426
  %724 = fmul fast float %721, %427
  %725 = fsub fast float %715, %722
  %726 = fsub fast float %716, %723
  %727 = fsub fast float %717, %724
  %728 = call float @dx.op.dot3.f32(i32 55, float %725, float %726, float %727, float %725, float %726, float %727)  ; Dot3(ax,ay,az,bx,by,bz)
  %729 = call float @dx.op.unary.f32(i32 25, float %728)  ; Rsqrt(value)
  %730 = fmul fast float %725, %729
  %731 = fmul fast float %726, %729
  %732 = fmul fast float %727, %729
  %733 = call float @dx.op.unary.f32(i32 25, float %453)  ; Rsqrt(value)
  %734 = fmul fast float %733, %425
  %735 = fmul fast float %733, %426
  %736 = fmul fast float %733, %427
  br i1 %607, label %737, label %741, !dx.controlflow.hints !59

; <label>:737                                     ; preds = %711
  %738 = fcmp fast olt float %731, 0x3FE6666660000000
  %739 = select i1 %738, float 1.000000e+00, float 0.000000e+00
  %740 = select i1 %738, float 0.000000e+00, float 1.000000e+00
  br label %741

; <label>:741                                     ; preds = %737, %711
  %742 = phi float [ 0.000000e+00, %737 ], [ %734, %711 ]
  %743 = phi float [ %739, %737 ], [ %735, %711 ]
  %744 = phi float [ %740, %737 ], [ %736, %711 ]
  %745 = fmul fast float %743, %732
  %746 = fmul fast float %744, %731
  %747 = fsub fast float %745, %746
  %748 = fmul fast float %744, %730
  %749 = fmul fast float %742, %732
  %750 = fsub fast float %748, %749
  %751 = fmul fast float %742, %731
  %752 = fmul fast float %743, %730
  %753 = fsub fast float %751, %752
  %754 = call float @dx.op.dot3.f32(i32 55, float %747, float %750, float %753, float %747, float %750, float %753)  ; Dot3(ax,ay,az,bx,by,bz)
  %755 = call float @dx.op.unary.f32(i32 25, float %754)  ; Rsqrt(value)
  %756 = fmul fast float %755, %430
  %757 = fmul fast float %756, %747
  %758 = fmul fast float %756, %750
  %759 = fmul fast float %753, %430
  %760 = fmul fast float %759, %755
  %761 = fmul fast float %631, %582
  %762 = call float @dx.op.tertiary.f32(i32 46, float %632, float %588, float %761)  ; FMad(a,b,c)
  %763 = call float @dx.op.tertiary.f32(i32 46, float %714, float %594, float %762)  ; FMad(a,b,c)
  %764 = fadd fast float %763, %600
  %765 = fmul fast float %631, %583
  %766 = call float @dx.op.tertiary.f32(i32 46, float %632, float %589, float %765)  ; FMad(a,b,c)
  %767 = call float @dx.op.tertiary.f32(i32 46, float %714, float %595, float %766)  ; FMad(a,b,c)
  %768 = fadd fast float %767, %601
  %769 = fmul fast float %631, %584
  %770 = call float @dx.op.tertiary.f32(i32 46, float %632, float %590, float %769)  ; FMad(a,b,c)
  %771 = call float @dx.op.tertiary.f32(i32 46, float %714, float %596, float %770)  ; FMad(a,b,c)
  %772 = fadd fast float %771, %602
  %773 = fmul fast float %631, %585
  %774 = call float @dx.op.tertiary.f32(i32 46, float %632, float %591, float %773)  ; FMad(a,b,c)
  %775 = call float @dx.op.tertiary.f32(i32 46, float %714, float %597, float %774)  ; FMad(a,b,c)
  %776 = fadd fast float %775, %603
  %777 = fdiv fast float 1.000000e+00, %776
  %778 = fmul fast float %777, %764
  %779 = fmul fast float %777, %768
  %780 = fmul fast float %777, %772
  %781 = fsub fast float -0.000000e+00, %730
  %782 = fsub fast float -0.000000e+00, %731
  %783 = fsub fast float -0.000000e+00, %732
  %784 = fsub fast float %433, %757
  %785 = fsub fast float %434, %758
  %786 = fsub fast float %435, %760
  %787 = fsub fast float %778, %784
  %788 = fsub fast float %779, %785
  %789 = fsub fast float %780, %786
  %790 = call float @dx.op.dot3.f32(i32 55, float %787, float %788, float %789, float %787, float %788, float %789)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = call float @dx.op.unary.f32(i32 25, float %790)  ; Rsqrt(value)
  %792 = fmul fast float %787, %791
  %793 = fmul fast float %788, %791
  %794 = fmul fast float %789, %791
  %795 = fsub fast float %612, %784
  %796 = fsub fast float %613, %785
  %797 = fsub fast float %614, %786
  %798 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %795, float %796, float %797)  ; Dot3(ax,ay,az,bx,by,bz)
  %799 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %792, float %793, float %794)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = fdiv fast float 1.000000e+00, %799
  %801 = fmul fast float %800, %798
  %802 = fmul fast float %801, %792
  %803 = fmul fast float %801, %793
  %804 = fmul fast float %801, %794
  %805 = fadd fast float %802, %784
  %806 = fadd fast float %803, %785
  %807 = fadd fast float %804, %786
  %808 = fadd fast float %757, %433
  %809 = fadd fast float %758, %434
  %810 = fadd fast float %760, %435
  %811 = fsub fast float %778, %808
  %812 = fsub fast float %779, %809
  %813 = fsub fast float %780, %810
  %814 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float %811, float %812, float %813)  ; Dot3(ax,ay,az,bx,by,bz)
  %815 = call float @dx.op.unary.f32(i32 25, float %814)  ; Rsqrt(value)
  %816 = fmul fast float %815, %811
  %817 = fmul fast float %815, %812
  %818 = fmul fast float %815, %813
  %819 = fsub fast float %612, %808
  %820 = fsub fast float %613, %809
  %821 = fsub fast float %614, %810
  %822 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %819, float %820, float %821)  ; Dot3(ax,ay,az,bx,by,bz)
  %823 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %816, float %817, float %818)  ; Dot3(ax,ay,az,bx,by,bz)
  %824 = fdiv fast float 1.000000e+00, %823
  %825 = fmul fast float %824, %822
  %826 = fmul fast float %825, %816
  %827 = fmul fast float %825, %817
  %828 = fmul fast float %825, %818
  %829 = fadd fast float %826, %808
  %830 = fadd fast float %827, %809
  %831 = fadd fast float %828, %810
  %832 = fmul fast float %805, %558
  %833 = call float @dx.op.tertiary.f32(i32 46, float %806, float %564, float %832)  ; FMad(a,b,c)
  %834 = call float @dx.op.tertiary.f32(i32 46, float %807, float %570, float %833)  ; FMad(a,b,c)
  %835 = fadd fast float %834, %576
  %836 = fmul fast float %805, %559
  %837 = call float @dx.op.tertiary.f32(i32 46, float %806, float %565, float %836)  ; FMad(a,b,c)
  %838 = call float @dx.op.tertiary.f32(i32 46, float %807, float %571, float %837)  ; FMad(a,b,c)
  %839 = fadd fast float %838, %577
  %840 = fmul fast float %805, %561
  %841 = call float @dx.op.tertiary.f32(i32 46, float %806, float %567, float %840)  ; FMad(a,b,c)
  %842 = call float @dx.op.tertiary.f32(i32 46, float %807, float %573, float %841)  ; FMad(a,b,c)
  %843 = fadd fast float %842, %579
  %844 = fmul fast float %829, %558
  %845 = call float @dx.op.tertiary.f32(i32 46, float %830, float %564, float %844)  ; FMad(a,b,c)
  %846 = call float @dx.op.tertiary.f32(i32 46, float %831, float %570, float %845)  ; FMad(a,b,c)
  %847 = fadd fast float %846, %576
  %848 = fmul fast float %829, %559
  %849 = call float @dx.op.tertiary.f32(i32 46, float %830, float %565, float %848)  ; FMad(a,b,c)
  %850 = call float @dx.op.tertiary.f32(i32 46, float %831, float %571, float %849)  ; FMad(a,b,c)
  %851 = fadd fast float %850, %577
  %852 = fmul fast float %829, %561
  %853 = call float @dx.op.tertiary.f32(i32 46, float %830, float %567, float %852)  ; FMad(a,b,c)
  %854 = call float @dx.op.tertiary.f32(i32 46, float %831, float %573, float %853)  ; FMad(a,b,c)
  %855 = fadd fast float %854, %579
  %856 = fdiv fast float 1.000000e+00, %843
  %857 = fmul fast float %856, %835
  %858 = fmul fast float %856, %839
  %859 = fdiv fast float 1.000000e+00, %855
  %860 = fmul fast float %859, %847
  %861 = fmul fast float %859, %851
  %862 = fsub fast float %860, %857
  %863 = fsub fast float %861, %858
  %864 = call float @dx.op.dot2.f32(i32 54, float %862, float %863, float %862, float %863)  ; Dot2(ax,ay,bx,by)
  %865 = call float @dx.op.unary.f32(i32 25, float %864)  ; Rsqrt(value)
  %866 = fmul fast float %862, %865
  %867 = fmul fast float %863, %865
  %868 = fmul fast float %862, %862
  %869 = fmul fast float %863, %863
  %870 = fadd fast float %868, %869
  %871 = call float @dx.op.unary.f32(i32 24, float %870)  ; Sqrt(value)
  %872 = fmul fast float %871, 5.000000e-01
  br i1 %607, label %965, label %873, !dx.controlflow.hints !60

; <label>:873                                     ; preds = %741
  %874 = fsub fast float %433, %425
  %875 = fsub fast float %434, %426
  %876 = fsub fast float %435, %427
  %877 = fsub fast float %778, %874
  %878 = fsub fast float %779, %875
  %879 = fsub fast float %780, %876
  %880 = call float @dx.op.dot3.f32(i32 55, float %877, float %878, float %879, float %877, float %878, float %879)  ; Dot3(ax,ay,az,bx,by,bz)
  %881 = call float @dx.op.unary.f32(i32 25, float %880)  ; Rsqrt(value)
  %882 = fmul fast float %881, %877
  %883 = fmul fast float %881, %878
  %884 = fmul fast float %881, %879
  %885 = fsub fast float %612, %874
  %886 = fsub fast float %613, %875
  %887 = fsub fast float %614, %876
  %888 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %885, float %886, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %882, float %883, float %884)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = fdiv fast float 1.000000e+00, %889
  %891 = fmul fast float %890, %888
  %892 = fmul fast float %891, %882
  %893 = fmul fast float %891, %883
  %894 = fmul fast float %891, %884
  %895 = fadd fast float %892, %874
  %896 = fadd fast float %893, %875
  %897 = fadd fast float %894, %876
  %898 = fadd fast float %433, %425
  %899 = fadd fast float %434, %426
  %900 = fadd fast float %435, %427
  %901 = fsub fast float %778, %898
  %902 = fsub fast float %779, %899
  %903 = fsub fast float %780, %900
  %904 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float %901, float %902, float %903)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = call float @dx.op.unary.f32(i32 25, float %904)  ; Rsqrt(value)
  %906 = fmul fast float %905, %901
  %907 = fmul fast float %905, %902
  %908 = fmul fast float %905, %903
  %909 = fsub fast float %612, %898
  %910 = fsub fast float %613, %899
  %911 = fsub fast float %614, %900
  %912 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %909, float %910, float %911)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %906, float %907, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = fdiv fast float 1.000000e+00, %913
  %915 = fmul fast float %914, %912
  %916 = fmul fast float %915, %906
  %917 = fmul fast float %915, %907
  %918 = fmul fast float %915, %908
  %919 = fadd fast float %916, %898
  %920 = fadd fast float %917, %899
  %921 = fadd fast float %918, %900
  %922 = fmul fast float %895, %558
  %923 = call float @dx.op.tertiary.f32(i32 46, float %896, float %564, float %922)  ; FMad(a,b,c)
  %924 = call float @dx.op.tertiary.f32(i32 46, float %897, float %570, float %923)  ; FMad(a,b,c)
  %925 = fadd fast float %924, %576
  %926 = fmul fast float %895, %559
  %927 = call float @dx.op.tertiary.f32(i32 46, float %896, float %565, float %926)  ; FMad(a,b,c)
  %928 = call float @dx.op.tertiary.f32(i32 46, float %897, float %571, float %927)  ; FMad(a,b,c)
  %929 = fadd fast float %928, %577
  %930 = fmul fast float %895, %561
  %931 = call float @dx.op.tertiary.f32(i32 46, float %896, float %567, float %930)  ; FMad(a,b,c)
  %932 = call float @dx.op.tertiary.f32(i32 46, float %897, float %573, float %931)  ; FMad(a,b,c)
  %933 = fadd fast float %932, %579
  %934 = fmul fast float %919, %558
  %935 = call float @dx.op.tertiary.f32(i32 46, float %920, float %564, float %934)  ; FMad(a,b,c)
  %936 = call float @dx.op.tertiary.f32(i32 46, float %921, float %570, float %935)  ; FMad(a,b,c)
  %937 = fadd fast float %936, %576
  %938 = fmul fast float %919, %559
  %939 = call float @dx.op.tertiary.f32(i32 46, float %920, float %565, float %938)  ; FMad(a,b,c)
  %940 = call float @dx.op.tertiary.f32(i32 46, float %921, float %571, float %939)  ; FMad(a,b,c)
  %941 = fadd fast float %940, %577
  %942 = fmul fast float %919, %561
  %943 = call float @dx.op.tertiary.f32(i32 46, float %920, float %567, float %942)  ; FMad(a,b,c)
  %944 = call float @dx.op.tertiary.f32(i32 46, float %921, float %573, float %943)  ; FMad(a,b,c)
  %945 = fadd fast float %944, %579
  %946 = fdiv fast float 1.000000e+00, %933
  %947 = fmul fast float %946, %925
  %948 = fmul fast float %946, %929
  %949 = fdiv fast float 1.000000e+00, %945
  %950 = fmul fast float %949, %937
  %951 = fmul fast float %949, %941
  %952 = fsub fast float %950, %947
  %953 = fsub fast float %951, %948
  %954 = call float @dx.op.dot2.f32(i32 54, float %952, float %953, float %952, float %953)  ; Dot2(ax,ay,bx,by)
  %955 = call float @dx.op.unary.f32(i32 25, float %954)  ; Rsqrt(value)
  %956 = fmul fast float %952, %955
  %957 = fmul fast float %953, %955
  %958 = fmul fast float %952, %952
  %959 = fmul fast float %953, %953
  %960 = fadd fast float %958, %959
  %961 = call float @dx.op.unary.f32(i32 24, float %960)  ; Sqrt(value)
  %962 = fmul fast float %961, 5.000000e-01
  %963 = fcmp fast olt float %962, %872
  br i1 %963, label %964, label %965, !dx.controlflow.hints !61

; <label>:964                                     ; preds = %873
  br label %965

; <label>:965                                     ; preds = %964, %873, %741
  %966 = phi float [ %872, %741 ], [ %962, %964 ], [ %872, %873 ]
  %967 = phi float [ %872, %741 ], [ %872, %964 ], [ %962, %873 ]
  %968 = phi float [ %866, %741 ], [ %866, %964 ], [ %956, %873 ]
  %969 = phi float [ %867, %741 ], [ %867, %964 ], [ %957, %873 ]
  %970 = fmul fast float %966, %553
  %971 = fdiv fast float %970, %967
  %972 = fsub fast float %553, %971
  %973 = fmul fast float %968, %968
  %974 = fmul fast float %973, %972
  %975 = fadd fast float %974, %971
  %976 = fmul fast float %969, %968
  %977 = fmul fast float %976, %972
  %978 = fmul fast float %969, %969
  %979 = fmul fast float %978, %972
  %980 = fadd fast float %979, %971
  %981 = fmul fast float %975, %637
  %982 = call float @dx.op.tertiary.f32(i32 46, float %636, float %977, float %981)  ; FMad(a,b,c)
  %983 = fmul fast float %977, %637
  %984 = call float @dx.op.tertiary.f32(i32 46, float %636, float %980, float %983)  ; FMad(a,b,c)
  %985 = fmul fast float %975, %638
  %986 = call float @dx.op.tertiary.f32(i32 46, float %637, float %977, float %985)  ; FMad(a,b,c)
  %987 = fmul fast float %977, %638
  %988 = call float @dx.op.tertiary.f32(i32 46, float %637, float %980, float %987)  ; FMad(a,b,c)
  br label %989

; <label>:989                                     ; preds = %1027, %965
  %990 = phi float [ 0.000000e+00, %965 ], [ %1028, %1027 ]
  %991 = phi float [ 0.000000e+00, %965 ], [ %1029, %1027 ]
  %992 = phi float [ 0.000000e+00, %965 ], [ %1030, %1027 ]
  %993 = phi float [ 0.000000e+00, %965 ], [ %1031, %1027 ]
  %994 = phi i32 [ 0, %965 ], [ %1032, %1027 ]
  %995 = mul i32 %994, 2
  %996 = add i32 0, %995
  %997 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %996
  %998 = load float, float* %997, align 4
  %999 = mul i32 %994, 2
  %1000 = add i32 1, %999
  %1001 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1000
  %1002 = load float, float* %1001, align 4
  %1003 = fmul fast float %998, %982
  %1004 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %986, float %1003)  ; FMad(a,b,c)
  %1005 = fmul fast float %998, %984
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %988, float %1005)  ; FMad(a,b,c)
  %1007 = fadd fast float %1004, %631
  %1008 = fadd fast float %1006, %632
  %1009 = fmul fast float %1007, %548
  %1010 = fmul fast float %1008, %548
  %1011 = call float @dx.op.binary.f32(i32 35, float %1009, float %544)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 35, float %1010, float %544)  ; FMax(a,b)
  %1013 = call float @dx.op.binary.f32(i32 36, float %1011, float %545)  ; FMin(a,b)
  %1014 = call float @dx.op.binary.f32(i32 36, float %1012, float %545)  ; FMin(a,b)
  %1015 = fadd fast float %1013, %542
  %1016 = fadd fast float %1014, %543
  %1017 = uitofp i32 %604 to float
  %1018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1015, float %1016, float %1017, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = fadd fast float %634, %552
  %1021 = fcmp fast olt float %1020, %1019
  br i1 %1021, label %1022, label %1027, !dx.controlflow.hints !62

; <label>:1022                                    ; preds = %989
  %1023 = fadd fast float %1019, %992
  %1024 = fadd fast float %1004, %990
  %1025 = fadd fast float %1006, %991
  %1026 = fadd fast float %993, 1.000000e+00
  br label %1027

; <label>:1027                                    ; preds = %1022, %989
  %1028 = phi float [ %1024, %1022 ], [ %990, %989 ]
  %1029 = phi float [ %1025, %1022 ], [ %991, %989 ]
  %1030 = phi float [ %1023, %1022 ], [ %992, %989 ]
  %1031 = phi float [ %1026, %1022 ], [ %993, %989 ]
  %1032 = add nuw nsw i32 %994, 1
  %1033 = icmp eq i32 %1032, 8
  br i1 %1033, label %1034, label %989

; <label>:1034                                    ; preds = %1027
  %1035 = fdiv fast float 1.000000e+00, %1031
  %1036 = fcmp fast oeq float %1031, 0.000000e+00
  %1037 = fmul fast float %1035, %1030
  %1038 = select i1 %1036, float -1.000000e+00, float %1037
  %1039 = fcmp fast olt float %1038, 0.000000e+00
  br i1 %1039, label %1326, label %1040, !dx.controlflow.hints !63

; <label>:1040                                    ; preds = %1034
  %1041 = fmul fast float %1035, %1029
  %1042 = select i1 %1036, float 0.000000e+00, float %1041
  %1043 = fmul fast float %1035, %1028
  %1044 = select i1 %1036, float 0.000000e+00, float %1043
  %1045 = fadd fast float %1044, %631
  %1046 = fadd fast float %1042, %632
  br i1 %607, label %1047, label %1051, !dx.controlflow.hints !59

; <label>:1047                                    ; preds = %1040
  %1048 = fcmp fast olt float %731, 0x3FE6666660000000
  %1049 = select i1 %1048, float 1.000000e+00, float 0.000000e+00
  %1050 = select i1 %1048, float 0.000000e+00, float 1.000000e+00
  br label %1051

; <label>:1051                                    ; preds = %1047, %1040
  %1052 = phi float [ 0.000000e+00, %1047 ], [ %734, %1040 ]
  %1053 = phi float [ %1049, %1047 ], [ %735, %1040 ]
  %1054 = phi float [ %1050, %1047 ], [ %736, %1040 ]
  %1055 = fmul fast float %1053, %732
  %1056 = fmul fast float %1054, %731
  %1057 = fsub fast float %1055, %1056
  %1058 = fmul fast float %1054, %730
  %1059 = fmul fast float %1052, %732
  %1060 = fsub fast float %1058, %1059
  %1061 = fmul fast float %1052, %731
  %1062 = fmul fast float %1053, %730
  %1063 = fsub fast float %1061, %1062
  %1064 = call float @dx.op.dot3.f32(i32 55, float %1057, float %1060, float %1063, float %1057, float %1060, float %1063)  ; Dot3(ax,ay,az,bx,by,bz)
  %1065 = call float @dx.op.unary.f32(i32 25, float %1064)  ; Rsqrt(value)
  %1066 = fmul fast float %1065, %430
  %1067 = fmul fast float %1066, %1057
  %1068 = fmul fast float %1066, %1060
  %1069 = fmul fast float %1063, %430
  %1070 = fmul fast float %1069, %1065
  %1071 = fmul fast float %1045, %582
  %1072 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %588, float %1071)  ; FMad(a,b,c)
  %1073 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %594, float %1072)  ; FMad(a,b,c)
  %1074 = fadd fast float %1073, %600
  %1075 = fmul fast float %1045, %583
  %1076 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %589, float %1075)  ; FMad(a,b,c)
  %1077 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %595, float %1076)  ; FMad(a,b,c)
  %1078 = fadd fast float %1077, %601
  %1079 = fmul fast float %1045, %584
  %1080 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %590, float %1079)  ; FMad(a,b,c)
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %596, float %1080)  ; FMad(a,b,c)
  %1082 = fadd fast float %1081, %602
  %1083 = fmul fast float %1045, %585
  %1084 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %591, float %1083)  ; FMad(a,b,c)
  %1085 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %597, float %1084)  ; FMad(a,b,c)
  %1086 = fadd fast float %1085, %603
  %1087 = fdiv fast float 1.000000e+00, %1086
  %1088 = fmul fast float %1087, %1074
  %1089 = fmul fast float %1087, %1078
  %1090 = fmul fast float %1087, %1082
  %1091 = fsub fast float %433, %1067
  %1092 = fsub fast float %434, %1068
  %1093 = fsub fast float %435, %1070
  %1094 = fsub fast float %1088, %1091
  %1095 = fsub fast float %1089, %1092
  %1096 = fsub fast float %1090, %1093
  %1097 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1095, float %1096, float %1094, float %1095, float %1096)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = call float @dx.op.unary.f32(i32 25, float %1097)  ; Rsqrt(value)
  %1099 = fmul fast float %1094, %1098
  %1100 = fmul fast float %1095, %1098
  %1101 = fmul fast float %1096, %1098
  %1102 = fsub fast float %612, %1091
  %1103 = fsub fast float %613, %1092
  %1104 = fsub fast float %614, %1093
  %1105 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %1102, float %1103, float %1104)  ; Dot3(ax,ay,az,bx,by,bz)
  %1106 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %1099, float %1100, float %1101)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = fdiv fast float 1.000000e+00, %1106
  %1108 = fmul fast float %1107, %1105
  %1109 = fmul fast float %1108, %1099
  %1110 = fmul fast float %1108, %1100
  %1111 = fmul fast float %1108, %1101
  %1112 = fadd fast float %1109, %1091
  %1113 = fadd fast float %1110, %1092
  %1114 = fadd fast float %1111, %1093
  %1115 = fadd fast float %1067, %433
  %1116 = fadd fast float %1068, %434
  %1117 = fadd fast float %1070, %435
  %1118 = fsub fast float %1088, %1115
  %1119 = fsub fast float %1089, %1116
  %1120 = fsub fast float %1090, %1117
  %1121 = call float @dx.op.dot3.f32(i32 55, float %1118, float %1119, float %1120, float %1118, float %1119, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = call float @dx.op.unary.f32(i32 25, float %1121)  ; Rsqrt(value)
  %1123 = fmul fast float %1122, %1118
  %1124 = fmul fast float %1122, %1119
  %1125 = fmul fast float %1122, %1120
  %1126 = fsub fast float %612, %1115
  %1127 = fsub fast float %613, %1116
  %1128 = fsub fast float %614, %1117
  %1129 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %1126, float %1127, float %1128)  ; Dot3(ax,ay,az,bx,by,bz)
  %1130 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %1123, float %1124, float %1125)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = fdiv fast float 1.000000e+00, %1130
  %1132 = fmul fast float %1131, %1129
  %1133 = fmul fast float %1132, %1123
  %1134 = fmul fast float %1132, %1124
  %1135 = fmul fast float %1132, %1125
  %1136 = fadd fast float %1133, %1115
  %1137 = fadd fast float %1134, %1116
  %1138 = fadd fast float %1135, %1117
  %1139 = fmul fast float %1112, %558
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1113, float %564, float %1139)  ; FMad(a,b,c)
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1114, float %570, float %1140)  ; FMad(a,b,c)
  %1142 = fadd fast float %1141, %576
  %1143 = fmul fast float %1112, %559
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1113, float %565, float %1143)  ; FMad(a,b,c)
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1114, float %571, float %1144)  ; FMad(a,b,c)
  %1146 = fadd fast float %1145, %577
  %1147 = fmul fast float %1112, %561
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1113, float %567, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1114, float %573, float %1148)  ; FMad(a,b,c)
  %1150 = fadd fast float %1149, %579
  %1151 = fmul fast float %1136, %558
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %564, float %1151)  ; FMad(a,b,c)
  %1153 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %570, float %1152)  ; FMad(a,b,c)
  %1154 = fadd fast float %1153, %576
  %1155 = fmul fast float %1136, %559
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %565, float %1155)  ; FMad(a,b,c)
  %1157 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %571, float %1156)  ; FMad(a,b,c)
  %1158 = fadd fast float %1157, %577
  %1159 = fmul fast float %1136, %561
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %567, float %1159)  ; FMad(a,b,c)
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %573, float %1160)  ; FMad(a,b,c)
  %1162 = fadd fast float %1161, %579
  %1163 = fdiv fast float 1.000000e+00, %1150
  %1164 = fmul fast float %1163, %1142
  %1165 = fmul fast float %1163, %1146
  %1166 = fdiv fast float 1.000000e+00, %1162
  %1167 = fmul fast float %1166, %1154
  %1168 = fmul fast float %1166, %1158
  %1169 = fsub fast float %1167, %1164
  %1170 = fsub fast float %1168, %1165
  %1171 = call float @dx.op.dot2.f32(i32 54, float %1169, float %1170, float %1169, float %1170)  ; Dot2(ax,ay,bx,by)
  %1172 = call float @dx.op.unary.f32(i32 25, float %1171)  ; Rsqrt(value)
  %1173 = fmul fast float %1169, %1172
  %1174 = fmul fast float %1170, %1172
  %1175 = fmul fast float %1169, %1169
  %1176 = fmul fast float %1170, %1170
  %1177 = fadd fast float %1175, %1176
  %1178 = call float @dx.op.unary.f32(i32 24, float %1177)  ; Sqrt(value)
  %1179 = fmul fast float %1178, 5.000000e-01
  br i1 %607, label %1272, label %1180, !dx.controlflow.hints !60

; <label>:1180                                    ; preds = %1051
  %1181 = fsub fast float %433, %425
  %1182 = fsub fast float %434, %426
  %1183 = fsub fast float %435, %427
  %1184 = fsub fast float %1088, %1181
  %1185 = fsub fast float %1089, %1182
  %1186 = fsub fast float %1090, %1183
  %1187 = call float @dx.op.dot3.f32(i32 55, float %1184, float %1185, float %1186, float %1184, float %1185, float %1186)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = call float @dx.op.unary.f32(i32 25, float %1187)  ; Rsqrt(value)
  %1189 = fmul fast float %1188, %1184
  %1190 = fmul fast float %1188, %1185
  %1191 = fmul fast float %1188, %1186
  %1192 = fsub fast float %612, %1181
  %1193 = fsub fast float %613, %1182
  %1194 = fsub fast float %614, %1183
  %1195 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %1192, float %1193, float %1194)  ; Dot3(ax,ay,az,bx,by,bz)
  %1196 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %1189, float %1190, float %1191)  ; Dot3(ax,ay,az,bx,by,bz)
  %1197 = fdiv fast float 1.000000e+00, %1196
  %1198 = fmul fast float %1197, %1195
  %1199 = fmul fast float %1198, %1189
  %1200 = fmul fast float %1198, %1190
  %1201 = fmul fast float %1198, %1191
  %1202 = fadd fast float %1199, %1181
  %1203 = fadd fast float %1200, %1182
  %1204 = fadd fast float %1201, %1183
  %1205 = fadd fast float %433, %425
  %1206 = fadd fast float %434, %426
  %1207 = fadd fast float %435, %427
  %1208 = fsub fast float %1088, %1205
  %1209 = fsub fast float %1089, %1206
  %1210 = fsub fast float %1090, %1207
  %1211 = call float @dx.op.dot3.f32(i32 55, float %1208, float %1209, float %1210, float %1208, float %1209, float %1210)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = call float @dx.op.unary.f32(i32 25, float %1211)  ; Rsqrt(value)
  %1213 = fmul fast float %1212, %1208
  %1214 = fmul fast float %1212, %1209
  %1215 = fmul fast float %1212, %1210
  %1216 = fsub fast float %612, %1205
  %1217 = fsub fast float %613, %1206
  %1218 = fsub fast float %614, %1207
  %1219 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %1216, float %1217, float %1218)  ; Dot3(ax,ay,az,bx,by,bz)
  %1220 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %1213, float %1214, float %1215)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = fdiv fast float 1.000000e+00, %1220
  %1222 = fmul fast float %1221, %1219
  %1223 = fmul fast float %1222, %1213
  %1224 = fmul fast float %1222, %1214
  %1225 = fmul fast float %1222, %1215
  %1226 = fadd fast float %1223, %1205
  %1227 = fadd fast float %1224, %1206
  %1228 = fadd fast float %1225, %1207
  %1229 = fmul fast float %1202, %558
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1203, float %564, float %1229)  ; FMad(a,b,c)
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %570, float %1230)  ; FMad(a,b,c)
  %1232 = fadd fast float %1231, %576
  %1233 = fmul fast float %1202, %559
  %1234 = call float @dx.op.tertiary.f32(i32 46, float %1203, float %565, float %1233)  ; FMad(a,b,c)
  %1235 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %571, float %1234)  ; FMad(a,b,c)
  %1236 = fadd fast float %1235, %577
  %1237 = fmul fast float %1202, %561
  %1238 = call float @dx.op.tertiary.f32(i32 46, float %1203, float %567, float %1237)  ; FMad(a,b,c)
  %1239 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %573, float %1238)  ; FMad(a,b,c)
  %1240 = fadd fast float %1239, %579
  %1241 = fmul fast float %1226, %558
  %1242 = call float @dx.op.tertiary.f32(i32 46, float %1227, float %564, float %1241)  ; FMad(a,b,c)
  %1243 = call float @dx.op.tertiary.f32(i32 46, float %1228, float %570, float %1242)  ; FMad(a,b,c)
  %1244 = fadd fast float %1243, %576
  %1245 = fmul fast float %1226, %559
  %1246 = call float @dx.op.tertiary.f32(i32 46, float %1227, float %565, float %1245)  ; FMad(a,b,c)
  %1247 = call float @dx.op.tertiary.f32(i32 46, float %1228, float %571, float %1246)  ; FMad(a,b,c)
  %1248 = fadd fast float %1247, %577
  %1249 = fmul fast float %1226, %561
  %1250 = call float @dx.op.tertiary.f32(i32 46, float %1227, float %567, float %1249)  ; FMad(a,b,c)
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %1228, float %573, float %1250)  ; FMad(a,b,c)
  %1252 = fadd fast float %1251, %579
  %1253 = fdiv fast float 1.000000e+00, %1240
  %1254 = fmul fast float %1253, %1232
  %1255 = fmul fast float %1253, %1236
  %1256 = fdiv fast float 1.000000e+00, %1252
  %1257 = fmul fast float %1256, %1244
  %1258 = fmul fast float %1256, %1248
  %1259 = fsub fast float %1257, %1254
  %1260 = fsub fast float %1258, %1255
  %1261 = call float @dx.op.dot2.f32(i32 54, float %1259, float %1260, float %1259, float %1260)  ; Dot2(ax,ay,bx,by)
  %1262 = call float @dx.op.unary.f32(i32 25, float %1261)  ; Rsqrt(value)
  %1263 = fmul fast float %1259, %1262
  %1264 = fmul fast float %1260, %1262
  %1265 = fmul fast float %1259, %1259
  %1266 = fmul fast float %1260, %1260
  %1267 = fadd fast float %1265, %1266
  %1268 = call float @dx.op.unary.f32(i32 24, float %1267)  ; Sqrt(value)
  %1269 = fmul fast float %1268, 5.000000e-01
  %1270 = fcmp fast olt float %1269, %1179
  br i1 %1270, label %1271, label %1272, !dx.controlflow.hints !61

; <label>:1271                                    ; preds = %1180
  br label %1272

; <label>:1272                                    ; preds = %1271, %1180, %1051
  %1273 = phi float [ %1179, %1051 ], [ %1269, %1271 ], [ %1179, %1180 ]
  %1274 = phi float [ %1179, %1051 ], [ %1179, %1271 ], [ %1269, %1180 ]
  %1275 = phi float [ %1173, %1051 ], [ %1173, %1271 ], [ %1263, %1180 ]
  %1276 = phi float [ %1174, %1051 ], [ %1174, %1271 ], [ %1264, %1180 ]
  %1277 = fsub fast float %1274, %1273
  %1278 = fmul fast float %1275, %1275
  %1279 = fmul fast float %1278, %1277
  %1280 = fadd fast float %1279, %1273
  %1281 = fmul fast float %1275, %1277
  %1282 = fmul fast float %1281, %1276
  %1283 = fmul fast float %1276, %1276
  %1284 = fmul fast float %1283, %1277
  %1285 = fadd fast float %1284, %1273
  %1286 = fmul fast float %1280, %637
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %636, float %1282, float %1286)  ; FMad(a,b,c)
  %1288 = fmul fast float %1282, %637
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %636, float %1285, float %1288)  ; FMad(a,b,c)
  %1290 = fmul fast float %1280, %638
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %637, float %1282, float %1290)  ; FMad(a,b,c)
  %1292 = fmul fast float %1282, %638
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %637, float %1285, float %1292)  ; FMad(a,b,c)
  br label %1294

; <label>:1294                                    ; preds = %1294, %1272
  %1295 = phi float [ 0.000000e+00, %1272 ], [ %1321, %1294 ]
  %1296 = phi i32 [ 0, %1272 ], [ %1322, %1294 ]
  %1297 = mul i32 %1296, 2
  %1298 = add i32 0, %1297
  %1299 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1298
  %1300 = load float, float* %1299, align 4
  %1301 = mul i32 %1296, 2
  %1302 = add i32 1, %1301
  %1303 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1302
  %1304 = load float, float* %1303, align 4
  %1305 = fmul fast float %1300, %1287
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1304, float %1291, float %1305)  ; FMad(a,b,c)
  %1307 = fmul fast float %1300, %1289
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1304, float %1293, float %1307)  ; FMad(a,b,c)
  %1309 = fadd fast float %1306, %631
  %1310 = fadd fast float %1308, %632
  %1311 = fmul fast float %1309, %548
  %1312 = fmul fast float %1310, %548
  %1313 = call float @dx.op.binary.f32(i32 35, float %1311, float %544)  ; FMax(a,b)
  %1314 = call float @dx.op.binary.f32(i32 35, float %1312, float %544)  ; FMax(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float %1313, float %545)  ; FMin(a,b)
  %1316 = call float @dx.op.binary.f32(i32 36, float %1314, float %545)  ; FMin(a,b)
  %1317 = fadd fast float %1315, %542
  %1318 = fadd fast float %1316, %543
  %1319 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %19, float %1317, float %1318, float %1017, float undef, i32 0, i32 0, i32 undef, float %1020)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = fadd fast float %1320, %1295
  %1322 = add nuw nsw i32 %1296, 1
  %1323 = icmp eq i32 %1322, 8
  br i1 %1323, label %1324, label %1294

; <label>:1324                                    ; preds = %1294
  %1325 = fmul fast float %1321, 1.250000e-01
  br label %1326

; <label>:1326                                    ; preds = %1324, %1034, %683
  %1327 = phi float [ %710, %683 ], [ %1325, %1324 ], [ 1.000000e+00, %1034 ]
  %1328 = fcmp fast ogt float %1327, 0.000000e+00
  %1329 = xor i1 %72, true
  %1330 = and i1 %1328, %1329
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1333 = fcmp fast olt float %1332, 0.000000e+00
  %1334 = and i1 %1330, %1333
  br i1 %1334, label %1335, label %1446, !dx.controlflow.hints !64

; <label>:1335                                    ; preds = %1326
  %1336 = fadd fast float %631, %544
  %1337 = fadd fast float %632, %544
  %1338 = fadd fast float %634, %552
  %1339 = fmul fast float %631, %582
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %632, float %588, float %1339)  ; FMad(a,b,c)
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %634, float %594, float %1340)  ; FMad(a,b,c)
  %1342 = fadd fast float %1341, %600
  %1343 = fmul fast float %631, %583
  %1344 = call float @dx.op.tertiary.f32(i32 46, float %632, float %589, float %1343)  ; FMad(a,b,c)
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %634, float %595, float %1344)  ; FMad(a,b,c)
  %1346 = fadd fast float %1345, %601
  %1347 = fmul fast float %631, %584
  %1348 = call float @dx.op.tertiary.f32(i32 46, float %632, float %590, float %1347)  ; FMad(a,b,c)
  %1349 = call float @dx.op.tertiary.f32(i32 46, float %634, float %596, float %1348)  ; FMad(a,b,c)
  %1350 = fadd fast float %1349, %602
  %1351 = fmul fast float %631, %585
  %1352 = call float @dx.op.tertiary.f32(i32 46, float %632, float %591, float %1351)  ; FMad(a,b,c)
  %1353 = call float @dx.op.tertiary.f32(i32 46, float %634, float %597, float %1352)  ; FMad(a,b,c)
  %1354 = fadd fast float %1353, %603
  %1355 = fmul fast float %1336, %582
  %1356 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %588, float %1355)  ; FMad(a,b,c)
  %1357 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %594, float %1356)  ; FMad(a,b,c)
  %1358 = fadd fast float %1357, %600
  %1359 = fmul fast float %1336, %583
  %1360 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %589, float %1359)  ; FMad(a,b,c)
  %1361 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %595, float %1360)  ; FMad(a,b,c)
  %1362 = fadd fast float %1361, %601
  %1363 = fmul fast float %1336, %584
  %1364 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %590, float %1363)  ; FMad(a,b,c)
  %1365 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %596, float %1364)  ; FMad(a,b,c)
  %1366 = fadd fast float %1365, %602
  %1367 = fmul fast float %1336, %585
  %1368 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %591, float %1367)  ; FMad(a,b,c)
  %1369 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %597, float %1368)  ; FMad(a,b,c)
  %1370 = fadd fast float %1369, %603
  %1371 = fdiv fast float 1.000000e+00, %1354
  %1372 = fmul fast float %1371, %1342
  %1373 = fmul fast float %1371, %1346
  %1374 = fmul fast float %1371, %1350
  %1375 = fdiv fast float 1.000000e+00, %1370
  %1376 = fmul fast float %1375, %1358
  %1377 = fmul fast float %1375, %1362
  %1378 = fmul fast float %1375, %1366
  %1379 = fsub fast float %1372, %1376
  %1380 = fsub fast float %1373, %1377
  %1381 = fsub fast float %1374, %1378
  %1382 = fmul fast float %1379, %1379
  %1383 = fmul fast float %1380, %1380
  %1384 = fadd fast float %1382, %1383
  %1385 = fmul fast float %1381, %1381
  %1386 = fadd fast float %1384, %1385
  %1387 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.CBufRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.CBufRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.CBufRet.f32 %1388, 3
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1397 = extractvalue %dx.types.CBufRet.f32 %1393, 3
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1402 = extractvalue %dx.types.CBufRet.f32 %1398, 3
  %1403 = fmul fast float %1389, %1372
  %1404 = call float @dx.op.tertiary.f32(i32 46, float %1373, float %1390, float %1403)  ; FMad(a,b,c)
  %1405 = call float @dx.op.tertiary.f32(i32 46, float %1374, float %1391, float %1404)  ; FMad(a,b,c)
  %1406 = call float @dx.op.tertiary.f32(i32 46, float %1354, float %1392, float %1405)  ; FMad(a,b,c)
  %1407 = fmul fast float %1394, %1372
  %1408 = call float @dx.op.tertiary.f32(i32 46, float %1373, float %1395, float %1407)  ; FMad(a,b,c)
  %1409 = call float @dx.op.tertiary.f32(i32 46, float %1374, float %1396, float %1408)  ; FMad(a,b,c)
  %1410 = call float @dx.op.tertiary.f32(i32 46, float %1354, float %1397, float %1409)  ; FMad(a,b,c)
  %1411 = fmul fast float %1399, %1372
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1373, float %1400, float %1411)  ; FMad(a,b,c)
  %1413 = call float @dx.op.tertiary.f32(i32 46, float %1374, float %1401, float %1412)  ; FMad(a,b,c)
  %1414 = call float @dx.op.tertiary.f32(i32 46, float %1354, float %1402, float %1413)  ; FMad(a,b,c)
  %1415 = fmul fast float %1389, %1376
  %1416 = call float @dx.op.tertiary.f32(i32 46, float %1377, float %1390, float %1415)  ; FMad(a,b,c)
  %1417 = call float @dx.op.tertiary.f32(i32 46, float %1378, float %1391, float %1416)  ; FMad(a,b,c)
  %1418 = call float @dx.op.tertiary.f32(i32 46, float %1370, float %1392, float %1417)  ; FMad(a,b,c)
  %1419 = fmul fast float %1394, %1376
  %1420 = call float @dx.op.tertiary.f32(i32 46, float %1377, float %1395, float %1419)  ; FMad(a,b,c)
  %1421 = call float @dx.op.tertiary.f32(i32 46, float %1378, float %1396, float %1420)  ; FMad(a,b,c)
  %1422 = call float @dx.op.tertiary.f32(i32 46, float %1370, float %1397, float %1421)  ; FMad(a,b,c)
  %1423 = fmul fast float %1399, %1376
  %1424 = call float @dx.op.tertiary.f32(i32 46, float %1377, float %1400, float %1423)  ; FMad(a,b,c)
  %1425 = call float @dx.op.tertiary.f32(i32 46, float %1378, float %1401, float %1424)  ; FMad(a,b,c)
  %1426 = call float @dx.op.tertiary.f32(i32 46, float %1370, float %1402, float %1425)  ; FMad(a,b,c)
  %1427 = fdiv fast float 1.000000e+00, %1414
  %1428 = fmul fast float %1427, %1406
  %1429 = fmul fast float %1427, %1410
  %1430 = fdiv fast float 1.000000e+00, %1426
  %1431 = fmul fast float %1430, %1418
  %1432 = fmul fast float %1430, %1422
  %1433 = fsub fast float %1428, %1431
  %1434 = fsub fast float %1429, %1432
  %1435 = fmul fast float %1433, 5.000000e-01
  %1436 = fmul fast float %1434, 5.000000e-01
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.CBufRet.f32 %1437, 1
  %1440 = fmul fast float %1435, %1438
  %1441 = fmul fast float %1436, %1439
  %1442 = fmul fast float %1440, %1440
  %1443 = fmul fast float %1441, %1441
  %1444 = fadd fast float %1442, %1443
  %1445 = call float @dx.op.unary.f32(i32 24, float %1444)  ; Sqrt(value)
  br label %1446

; <label>:1446                                    ; preds = %1335, %1326
  %1447 = phi float [ %1387, %1335 ], [ 0.000000e+00, %1326 ]
  %1448 = phi float [ %1445, %1335 ], [ 0.000000e+00, %1326 ]
  %1449 = fadd fast float %1327, -1.000000e+00
  %1450 = fmul fast float %1449, %521
  %1451 = fadd fast float %1450, 1.000000e+00
  %1452 = fmul fast float %1451, %533
  br label %1453

; <label>:1453                                    ; preds = %1446, %500
  %1454 = phi float [ %1447, %1446 ], [ 0.000000e+00, %500 ]
  %1455 = phi float [ %1448, %1446 ], [ 0.000000e+00, %500 ]
  %1456 = phi float [ %1452, %1446 ], [ %533, %500 ]
  %1457 = call float @dx.op.binary.f32(i32 36, float %1456, float %1456)  ; FMin(a,b)
  %1458 = call float @dx.op.binary.f32(i32 36, float %1456, float %1457)  ; FMin(a,b)
  %1459 = fcmp fast ogt float %1458, 0.000000e+00
  %1460 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %473, float %474, float %475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1461 = fcmp fast ogt float %1460, 0.000000e+00
  %1462 = and i1 %1459, %1461
  br i1 %1462, label %1463, label %1744, !dx.controlflow.hints !65

; <label>:1463                                    ; preds = %1453
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1468 = select i1 %72, float %1465, float %1467
  %1469 = extractvalue %dx.types.CBufRet.f32 %1464, 2
  %1470 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1471 = select i1 %72, float %1469, float %1470
  %1472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.i32 %1472, 0
  %1474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.i32 %1474, 0
  %1476 = select i1 %72, i32 %1473, i32 %1475
  %1477 = fcmp fast ogt float %1454, 0.000000e+00
  br i1 %1477, label %1478, label %1482, !dx.controlflow.hints !66

; <label>:1478                                    ; preds = %1463
  %1479 = fptosi float %1455 to i32
  %1480 = call i32 @dx.op.binary.i32(i32 37, i32 %1479, i32 1)  ; IMax(a,b)
  %1481 = call i32 @dx.op.binary.i32(i32 38, i32 %1480, i32 16)  ; IMin(a,b)
  br label %1482

; <label>:1482                                    ; preds = %1478, %1463
  %1483 = phi float [ 0.000000e+00, %1478 ], [ 1.000000e+00, %1463 ]
  %1484 = phi float [ %1454, %1478 ], [ %1468, %1463 ]
  %1485 = phi i32 [ %1481, %1478 ], [ %1476, %1463 ]
  %1486 = fcmp fast olt float %1484, 5.000000e-01
  %1487 = icmp eq i32 %1485, 0
  %1488 = or i1 %1486, %1487
  br i1 %1488, label %1739, label %1489, !dx.controlflow.hints !67

; <label>:1489                                    ; preds = %1482
  %1490 = fsub fast float %433, %134
  %1491 = fsub fast float %434, %135
  %1492 = fsub fast float %435, %136
  %1493 = fmul fast float %1490, %1490
  %1494 = fmul fast float %1491, %1491
  %1495 = fadd fast float %1493, %1494
  %1496 = fmul fast float %1492, %1492
  %1497 = fadd fast float %1495, %1496
  %1498 = call float @dx.op.unary.f32(i32 24, float %1497)  ; Sqrt(value)
  %1499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.i32 %1499, 0
  %1501 = uitofp i32 %1500 to float
  %1502 = fmul fast float %1484, %430
  %1503 = fdiv fast float %1502, %1498
  %1504 = call float @dx.op.binary.f32(i32 36, float %1503, float 1.000000e+01)  ; FMin(a,b)
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1509 = extractvalue %dx.types.CBufRet.f32 %1505, 3
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1513 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1514 = extractvalue %dx.types.CBufRet.f32 %1510, 3
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.CBufRet.f32 %1515, 2
  %1519 = extractvalue %dx.types.CBufRet.f32 %1515, 3
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.CBufRet.f32 %1520, 2
  %1524 = extractvalue %dx.types.CBufRet.f32 %1520, 3
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.CBufRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.CBufRet.f32 %1525, 3
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.CBufRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.CBufRet.f32 %1530, 2
  %1534 = extractvalue %dx.types.CBufRet.f32 %1530, 3
  %1535 = select i1 %72, float %1506, float %1521
  %1536 = select i1 %72, float %1511, float %1526
  %1537 = select i1 %72, float %1516, float %1531
  %1538 = select i1 %72, float %1507, float %1522
  %1539 = select i1 %72, float %1512, float %1527
  %1540 = select i1 %72, float %1517, float %1532
  %1541 = select i1 %72, float %1508, float %1523
  %1542 = select i1 %72, float %1513, float %1528
  %1543 = select i1 %72, float %1518, float %1533
  %1544 = select i1 %72, float %1509, float %1524
  %1545 = select i1 %72, float %1514, float %1529
  %1546 = select i1 %72, float %1519, float %1534
  %1547 = fmul fast float %253, 0x401061CAC0000000
  %1548 = fmul fast float %253, 0x4023E1D7E0000000
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1553 = extractvalue %dx.types.CBufRet.f32 %1549, 3
  %1554 = fsub fast float -0.000000e+00, %473
  %1555 = fmul fast float %475, %1554
  %1556 = fmul fast float %473, %1554
  %1557 = fmul fast float %474, %474
  %1558 = fsub fast float %1556, %1557
  %1559 = fdiv fast float 1.000000e+00, %79
  %1560 = fmul fast float %1552, %68
  %1561 = fmul fast float %1553, %69
  %1562 = fmul fast float %1484, %473
  %1563 = fmul fast float %1484, %475
  %1564 = fadd fast float %1562, %134
  %1565 = fadd fast float %1563, %136
  %1566 = fadd fast float %1548, 5.000000e-01
  %1567 = call float @dx.op.unary.f32(i32 22, float %1566)  ; Frc(value)
  %1568 = bitcast float %1567 to i32
  %1569 = ashr i32 %1568, 1
  %1570 = add nsw i32 %1569, 532487669
  %1571 = bitcast i32 %1570 to float
  %1572 = fmul fast float %1571, %1504
  %1573 = fadd fast float %1547, 5.000000e-01
  %1574 = call float @dx.op.unary.f32(i32 22, float %1573)  ; Frc(value)
  %1575 = fmul fast float %1574, 0x401921FB60000000
  %1576 = call float @dx.op.unary.f32(i32 12, float %1575)  ; Cos(value)
  %1577 = fmul fast float %1576, %1576
  %1578 = fsub fast float 1.000000e+00, %1577
  %1579 = bitcast float %1578 to i32
  %1580 = ashr i32 %1579, 1
  %1581 = add nsw i32 %1580, 532487669
  %1582 = bitcast i32 %1581 to float
  %1583 = fmul fast float %1572, %1576
  %1584 = fmul fast float %1583, %474
  %1585 = fmul fast float %1583, %1554
  %1586 = fadd fast float %1564, %1584
  %1587 = fmul fast float %1582, %1572
  %1588 = fmul fast float %1555, %1587
  %1589 = fmul fast float %1587, %475
  %1590 = fmul fast float %1587, %1558
  %1591 = fsub fast float %1586, %1588
  %1592 = fadd fast float %1589, %1484
  %1593 = fmul fast float %1592, %474
  %1594 = fadd fast float %1585, %135
  %1595 = fadd fast float %1594, %1593
  %1596 = fadd fast float %1565, %1590
  %1597 = fmul fast float %1591, %1535
  %1598 = call float @dx.op.tertiary.f32(i32 46, float %1595, float %1538, float %1597)  ; FMad(a,b,c)
  %1599 = call float @dx.op.tertiary.f32(i32 46, float %1596, float %1541, float %1598)  ; FMad(a,b,c)
  %1600 = fadd fast float %1599, %1544
  %1601 = fmul fast float %1591, %1536
  %1602 = call float @dx.op.tertiary.f32(i32 46, float %1595, float %1539, float %1601)  ; FMad(a,b,c)
  %1603 = call float @dx.op.tertiary.f32(i32 46, float %1596, float %1542, float %1602)  ; FMad(a,b,c)
  %1604 = fadd fast float %1603, %1545
  %1605 = fmul fast float %1591, %1537
  %1606 = call float @dx.op.tertiary.f32(i32 46, float %1595, float %1540, float %1605)  ; FMad(a,b,c)
  %1607 = call float @dx.op.tertiary.f32(i32 46, float %1596, float %1543, float %1606)  ; FMad(a,b,c)
  %1608 = fadd fast float %1607, %1546
  %1609 = fdiv fast float 1.000000e+00, %1608
  %1610 = fmul fast float %1600, 5.000000e-01
  %1611 = fmul fast float %1604, -5.000000e-01
  %1612 = fmul fast float %1610, %1609
  %1613 = fmul fast float %1611, %1609
  %1614 = fsub fast float 5.000000e-01, %1560
  %1615 = fadd fast float %1614, %1612
  %1616 = fsub fast float 5.000000e-01, %1561
  %1617 = fadd fast float %1616, %1613
  %1618 = fsub fast float %1609, %1559
  %1619 = call float @dx.op.dot2.f32(i32 54, float %1615, float %1617, float %1615, float %1617)  ; Dot2(ax,ay,bx,by)
  %1620 = call float @dx.op.binary.f32(i32 35, float %1619, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1621 = call float @dx.op.dot2.f32(i32 54, float %1550, float %1551, float %1550, float %1551)  ; Dot2(ax,ay,bx,by)
  %1622 = fmul fast float %1621, %1620
  %1623 = call float @dx.op.unary.f32(i32 25, float %1622)  ; Rsqrt(value)
  %1624 = fmul fast float %1623, %1615
  %1625 = fmul fast float %1623, %1617
  %1626 = fadd fast float %1624, %1560
  %1627 = fadd fast float %1625, %1561
  %1628 = fmul fast float %1615, %1550
  %1629 = fmul fast float %1617, %1551
  %1630 = fmul fast float %1628, %1628
  %1631 = fmul fast float %1629, %1629
  %1632 = fadd fast float %1630, %1631
  %1633 = call float @dx.op.unary.f32(i32 24, float %1632)  ; Sqrt(value)
  %1634 = fdiv fast float 1.000000e+00, %1633
  %1635 = fmul fast float %1633, 3.906250e-03
  %1636 = fmul fast float %239, 0x3F70624DE0000000
  %1637 = fadd fast float %1636, 0x3F70624DE0000000
  %1638 = icmp sgt i32 %1485, -1
  br i1 %1638, label %1639, label %1704

; <label>:1639                                    ; preds = %1489
  br label %1640

; <label>:1640                                    ; preds = %1700, %1639
  %1641 = phi float [ %1675, %1700 ], [ %79, %1639 ]
  %1642 = phi float [ %1662, %1700 ], [ %79, %1639 ]
  %1643 = phi float [ %1642, %1700 ], [ %79, %1639 ]
  %1644 = phi i32 [ %1701, %1700 ], [ 0, %1639 ]
  %1645 = sitofp i32 %1644 to float
  %1646 = fadd fast float %253, 5.000000e-01
  %1647 = call float @dx.op.unary.f32(i32 22, float %1646)  ; Frc(value)
  %1648 = fadd fast float %1645, %1647
  %1649 = sitofp i32 %1485 to float
  %1650 = fdiv fast float %1648, %1649
  %1651 = fmul fast float %1650, %1650
  %1652 = fsub fast float %1651, %1650
  %1653 = fmul fast float %1652, %1483
  %1654 = fadd fast float %1653, %1650
  %1655 = call float @dx.op.binary.f32(i32 36, float %1654, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1656 = fmul fast float %1655, %1615
  %1657 = fmul fast float %1655, %1617
  %1658 = fmul fast float %1655, %1618
  %1659 = fadd fast float %1656, %1626
  %1660 = fadd fast float %1657, %1627
  %1661 = fadd fast float %1658, %1559
  %1662 = fdiv fast float 1.000000e+00, %1661
  %1663 = icmp ne i32 %1500, 0
  %1664 = fmul fast float %1635, %1655
  %1665 = call float @dx.op.binary.f32(i32 36, float %1664, float %1501)  ; FMin(a,b)
  %1666 = select i1 %1663, float %1665, float 0.000000e+00
  %1667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1659, float %1660, float undef, float undef, i32 0, i32 0, i32 undef, float %1666)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = fcmp fast ogt float %1668, -1.000000e+00
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1672 = select i1 %1669, float %1671, float 1.000000e+00
  %1673 = fadd fast float %1668, 1.000000e+00
  %1674 = fmul fast float %1672, %1673
  %1675 = call float @dx.op.unary.f32(i32 6, float %1674)  ; FAbs(value)
  %1676 = fmul fast float %1675, %1637
  %1677 = fsub fast float %1662, %1675
  %1678 = fsub fast float %1677, %1676
  %1679 = fcmp fast ogt float %1678, 0.000000e+00
  %1680 = fcmp fast ogt float %1471, 0.000000e+00
  br i1 %1680, label %1681, label %1684, !dx.controlflow.hints !68

; <label>:1681                                    ; preds = %1640
  %1682 = fsub fast float %1662, %1643
  %1683 = call float @dx.op.binary.f32(i32 35, float %1682, float %1471)  ; FMax(a,b)
  br label %1684

; <label>:1684                                    ; preds = %1681, %1640
  %1685 = phi float [ %1683, %1681 ], [ %1484, %1640 ]
  %1686 = fcmp fast olt float %1678, %1685
  %1687 = fcmp uge float %1668, -1.000000e+00
  %1688 = or i1 %72, %1687
  %1689 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1690 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1691 = fcmp fast oeq float %1659, %1689
  %1692 = fcmp fast oeq float %1660, %1690
  %1693 = and i1 %1691, %1692
  %1694 = and i1 %1688, %1693
  %1695 = and i1 %1679, %1686
  %1696 = and i1 %1695, %1694
  %1697 = fcmp fast ogt float %1655, %1634
  %1698 = and i1 %1697, %1696
  %1699 = zext i1 %1698 to i32
  br i1 %1698, label %1703, label %1700, !dx.controlflow.hints !69

; <label>:1700                                    ; preds = %1684
  %1701 = add nuw nsw i32 %1644, 1
  %1702 = icmp slt i32 %1644, %1485
  br i1 %1702, label %1640, label %1703

; <label>:1703                                    ; preds = %1700, %1684
  br label %1704

; <label>:1704                                    ; preds = %1703, %1489
  %1705 = phi i32 [ 0, %1489 ], [ %1699, %1703 ]
  %1706 = phi float [ %79, %1489 ], [ %1675, %1703 ]
  %1707 = phi float [ %79, %1489 ], [ %1641, %1703 ]
  %1708 = phi float [ %79, %1489 ], [ %1662, %1703 ]
  %1709 = phi float [ %79, %1489 ], [ %1642, %1703 ]
  %1710 = fsub fast float %1709, %1707
  %1711 = fsub fast float %1708, %1706
  %1712 = fsub fast float %1710, %1711
  %1713 = fcmp fast une float %1712, 0.000000e+00
  %1714 = fmul fast float %1710, %1708
  %1715 = fmul fast float %1709, %1711
  %1716 = fsub fast float %1714, %1715
  %1717 = fdiv fast float 1.000000e+00, %1712
  %1718 = fmul fast float %1716, %1717
  %1719 = select i1 %1713, float %1718, float %1708
  %1720 = fdiv fast float 1.000000e+00, %1719
  %1721 = fsub fast float %1720, %1559
  %1722 = fdiv fast float %1721, %1618
  %1723 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1724 = fmul fast float %1723, %1615
  %1725 = fmul fast float %1723, %1617
  %1726 = fadd fast float %1724, %1626
  %1727 = fadd fast float %1725, %1627
  %1728 = fadd fast float %1726, -5.000000e-01
  %1729 = fadd fast float %1727, -5.000000e-01
  %1730 = call float @dx.op.unary.f32(i32 6, float %1728)  ; FAbs(value)
  %1731 = call float @dx.op.unary.f32(i32 6, float %1729)  ; FAbs(value)
  %1732 = fadd fast float %1730, -5.000000e-01
  %1733 = fadd fast float %1731, -5.000000e-01
  %1734 = call float @dx.op.binary.f32(i32 35, float %1732, float %1733)  ; FMax(a,b)
  %1735 = fcmp fast olt float %1734, 0.000000e+00
  %1736 = icmp ne i32 %1705, 0
  %1737 = and i1 %1736, %1735
  %1738 = select i1 %1737, float 0.000000e+00, float 1.000000e+00
  br label %1739

; <label>:1739                                    ; preds = %1704, %1482
  %1740 = phi float [ %1738, %1704 ], [ 1.000000e+00, %1482 ]
  %1741 = fmul fast float %1740, %1456
  %1742 = fmul fast float %1740, %1456
  %1743 = fmul fast float %1740, %1456
  br label %1744

; <label>:1744                                    ; preds = %1739, %1453
  %1745 = phi float [ %1741, %1739 ], [ %1456, %1453 ]
  %1746 = phi float [ %1742, %1739 ], [ %1456, %1453 ]
  %1747 = phi float [ %1743, %1739 ], [ %1456, %1453 ]
  %1748 = call float @dx.op.binary.f32(i32 36, float %1746, float %1747)  ; FMin(a,b)
  %1749 = call float @dx.op.binary.f32(i32 36, float %1745, float %1748)  ; FMin(a,b)
  %1750 = fcmp fast ogt float %1749, 0x3F10000000000000
  %1751 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1750)  ; WaveAnyTrue(cond)
  %1752 = icmp ugt i32 %276, 63
  br i1 %1752, label %1782, label %1753, !dx.controlflow.hints !70

; <label>:1753                                    ; preds = %1744
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1754 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1754, label %1755, label %1758, !dx.controlflow.hints !71

; <label>:1755                                    ; preds = %1753
  %1756 = zext i1 %1751 to i32
  %1757 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  store i32 %1756, i32 addrspace(3)* %1757, align 4, !tbaa !37
  br label %1758

; <label>:1758                                    ; preds = %1755, %1753
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1759 = icmp eq i32 %276, 32
  br i1 %1759, label %1760, label %1766, !dx.controlflow.hints !72

; <label>:1760                                    ; preds = %1758
  %1761 = xor i32 %277, 1
  %1762 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1761
  %1763 = load i32, i32 addrspace(3)* %1762, align 4, !tbaa !37
  %1764 = icmp ne i32 %1763, 0
  %1765 = or i1 %1751, %1764
  br label %1782

; <label>:1766                                    ; preds = %1758
  %1767 = icmp eq i32 %276, 16
  br i1 %1767, label %1768, label %1782, !dx.controlflow.hints !73

; <label>:1768                                    ; preds = %1766
  %1769 = xor i32 %277, 1
  %1770 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1769
  %1771 = load i32, i32 addrspace(3)* %1770, align 4, !tbaa !37
  %1772 = xor i32 %277, 2
  %1773 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1772
  %1774 = load i32, i32 addrspace(3)* %1773, align 4, !tbaa !37
  %1775 = or i32 %1774, %1771
  %1776 = xor i32 %277, 3
  %1777 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1776
  %1778 = load i32, i32 addrspace(3)* %1777, align 4, !tbaa !37
  %1779 = or i32 %1775, %1778
  %1780 = icmp ne i32 %1779, 0
  %1781 = or i1 %1751, %1780
  br label %1782

; <label>:1782                                    ; preds = %1768, %1766, %1760, %1744
  %1783 = phi i1 [ %1765, %1760 ], [ %1781, %1768 ], [ %1751, %1744 ], [ false, %1766 ]
  %1784 = select i1 %1783, i32 %412, i32 0
  %1785 = or i32 %407, %1784
  %1786 = lshr i32 %258, 5
  %1787 = lshr i32 %259, 5
  %1788 = fcmp fast olt float %1745, 0x3F10000000000000
  %1789 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1788)  ; WaveAllTrue(cond)
  br i1 %1752, label %1821, label %1790, !dx.controlflow.hints !74

; <label>:1790                                    ; preds = %1782
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1791 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1791, label %1792, label %1795, !dx.controlflow.hints !75

; <label>:1792                                    ; preds = %1790
  %1793 = zext i1 %1789 to i32
  %1794 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  store i32 %1793, i32 addrspace(3)* %1794, align 4, !tbaa !37
  br label %1795

; <label>:1795                                    ; preds = %1792, %1790
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1796 = icmp eq i32 %276, 32
  br i1 %1796, label %1797, label %1803, !dx.controlflow.hints !76

; <label>:1797                                    ; preds = %1795
  %1798 = xor i32 %277, 1
  %1799 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1798
  %1800 = load i32, i32 addrspace(3)* %1799, align 4, !tbaa !37
  %1801 = icmp ne i32 %1800, 0
  %1802 = and i1 %1789, %1801
  br label %1821

; <label>:1803                                    ; preds = %1795
  %1804 = icmp eq i32 %276, 16
  br i1 %1804, label %1805, label %1821, !dx.controlflow.hints !77

; <label>:1805                                    ; preds = %1803
  %1806 = xor i32 %277, 1
  %1807 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1806
  %1808 = load i32, i32 addrspace(3)* %1807, align 4, !tbaa !37
  %1809 = icmp ne i32 %1808, 0
  %1810 = and i1 %1789, %1809
  %1811 = xor i32 %277, 2
  %1812 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1811
  %1813 = load i32, i32 addrspace(3)* %1812, align 4, !tbaa !37
  %1814 = icmp ne i32 %1813, 0
  %1815 = and i1 %1810, %1814
  %1816 = xor i32 %277, 3
  %1817 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1816
  %1818 = load i32, i32 addrspace(3)* %1817, align 4, !tbaa !37
  %1819 = icmp ne i32 %1818, 0
  %1820 = and i1 %1815, %1819
  br label %1821

; <label>:1821                                    ; preds = %1805, %1803, %1797, %1782
  %1822 = phi i1 [ %1802, %1797 ], [ %1820, %1805 ], [ %1789, %1782 ], [ false, %1803 ]
  %1823 = fcmp fast ogt float %1745, 0x3FEFFF8000000000
  %1824 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1823)  ; WaveAllTrue(cond)
  br i1 %1752, label %1856, label %1825, !dx.controlflow.hints !74

; <label>:1825                                    ; preds = %1821
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1826 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1826, label %1827, label %1830, !dx.controlflow.hints !75

; <label>:1827                                    ; preds = %1825
  %1828 = zext i1 %1824 to i32
  %1829 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  store i32 %1828, i32 addrspace(3)* %1829, align 4, !tbaa !37
  br label %1830

; <label>:1830                                    ; preds = %1827, %1825
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1831 = icmp eq i32 %276, 32
  br i1 %1831, label %1832, label %1838, !dx.controlflow.hints !76

; <label>:1832                                    ; preds = %1830
  %1833 = xor i32 %277, 1
  %1834 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1833
  %1835 = load i32, i32 addrspace(3)* %1834, align 4, !tbaa !37
  %1836 = icmp ne i32 %1835, 0
  %1837 = and i1 %1824, %1836
  br label %1856

; <label>:1838                                    ; preds = %1830
  %1839 = icmp eq i32 %276, 16
  br i1 %1839, label %1840, label %1856, !dx.controlflow.hints !77

; <label>:1840                                    ; preds = %1838
  %1841 = xor i32 %277, 1
  %1842 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1841
  %1843 = load i32, i32 addrspace(3)* %1842, align 4, !tbaa !37
  %1844 = icmp ne i32 %1843, 0
  %1845 = and i1 %1824, %1844
  %1846 = xor i32 %277, 2
  %1847 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1846
  %1848 = load i32, i32 addrspace(3)* %1847, align 4, !tbaa !37
  %1849 = icmp ne i32 %1848, 0
  %1850 = and i1 %1845, %1849
  %1851 = xor i32 %277, 3
  %1852 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1851
  %1853 = load i32, i32 addrspace(3)* %1852, align 4, !tbaa !37
  %1854 = icmp ne i32 %1853, 0
  %1855 = and i1 %1850, %1854
  br label %1856

; <label>:1856                                    ; preds = %1840, %1838, %1832, %1821
  %1857 = phi i1 [ %1837, %1832 ], [ %1855, %1840 ], [ %1824, %1821 ], [ false, %1838 ]
  %1858 = or i1 %1822, %1857
  %1859 = lshr i32 %259, 1
  %1860 = and i32 %1859, 8
  %1861 = lshr i32 %258, 2
  %1862 = and i32 %1861, 4
  %1863 = or i32 %1862, %38
  %1864 = or i32 %1863, %1860
  %1865 = icmp eq i32 %25, 0
  br i1 %1865, label %1866, label %1908, !dx.controlflow.hints !78

; <label>:1866                                    ; preds = %1856
  %1867 = shl i32 1, %1864
  %1868 = select i1 %1857, i32 %1867, i32 0
  %1869 = shl i32 65536, %1864
  %1870 = select i1 %1822, i32 %1869, i32 0
  %1871 = or i32 %1868, %1870
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %1875, label %1873, !dx.controlflow.hints !79

; <label>:1873                                    ; preds = %1866
  %1874 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1786, i32 %1787, i32 %410, i32 %1871)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1875

; <label>:1875                                    ; preds = %1873, %1866
  br i1 %1858, label %1905, label %1876

; <label>:1876                                    ; preds = %1875
  br label %1877

; <label>:1877                                    ; preds = %1902, %1876
  %1878 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1786, i32 %1787, i32 %410, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1879 = and i32 %1878, 3
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1881, label %1902, !dx.controlflow.hints !80

; <label>:1881                                    ; preds = %1877
  %1882 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.i32 %1883, 3
  %1885 = call i32 @dx.op.binary.i32(i32 40, i32 %1884, i32 %1882)  ; UMin(a,b)
  %1886 = extractvalue %dx.types.CBufRet.i32 %1883, 2
  %1887 = udiv i32 %1885, %1886
  %1888 = urem i32 %1885, %1886
  %1889 = extractvalue %dx.types.CBufRet.i32 %1883, 1
  %1890 = urem i32 %1888, %1889
  %1891 = udiv i32 %1888, %1889
  %1892 = shl i32 %1890, 6
  %1893 = and i32 %1892, 32704
  %1894 = shl i32 %1891, 15
  %1895 = and i32 %1894, 8355840
  %1896 = shl i32 %1887, 23
  %1897 = and i32 %1896, 2139095040
  %1898 = or i32 %1897, %1893
  %1899 = or i32 %1898, %1895
  %1900 = or i32 %1899, 3
  %1901 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1786, i32 %1787, i32 %410, i32 %1900)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1905

; <label>:1902                                    ; preds = %1877
  %1903 = icmp eq i32 %1879, 3
  br i1 %1903, label %1904, label %1877, !dx.controlflow.hints !81

; <label>:1904                                    ; preds = %1902
  br label %1905

; <label>:1905                                    ; preds = %1904, %1881, %1875
  %1906 = phi i32 [ 0, %1875 ], [ %1900, %1881 ], [ %1878, %1904 ]
  br i1 %279, label %1908, label %1907, !dx.controlflow.hints !82

; <label>:1907                                    ; preds = %1905
  store i32 %1906, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1908

; <label>:1908                                    ; preds = %1907, %1905, %1856
  %1909 = phi i32 [ %1906, %1905 ], [ %1906, %1907 ], [ 0, %1856 ]
  br i1 %279, label %1910, label %1912, !dx.controlflow.hints !83

; <label>:1910                                    ; preds = %1908
  %1911 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1909)  ; WaveReadLaneFirst(value)
  br label %1914

; <label>:1912                                    ; preds = %1908
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1913 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1914

; <label>:1914                                    ; preds = %1912, %1910
  %1915 = phi i32 [ %1913, %1912 ], [ %1911, %1910 ]
  br i1 %1858, label %1937, label %1916, !dx.controlflow.hints !84

; <label>:1916                                    ; preds = %1914
  %1917 = lshr i32 %258, 1
  %1918 = and i32 %1917, 15
  %1919 = and i32 %1859, 15
  %1920 = and i32 %258, 1
  %1921 = shl i32 %259, 1
  %1922 = and i32 %1921, 2
  %1923 = or i32 %1922, %1920
  %1924 = lshr i32 %1915, 2
  %1925 = and i32 %1924, 8176
  %1926 = lshr i32 %1915, 11
  %1927 = and i32 %1926, 4080
  %1928 = or i32 %1925, %1918
  %1929 = or i32 %1927, %1919
  %1930 = lshr i32 %1915, 21
  %1931 = and i32 %1930, 1020
  %1932 = or i32 %1923, %1931
  %1933 = fmul fast float %1745, 2.550000e+02
  %1934 = fadd fast float %1933, %252
  %1935 = call float @dx.op.unary.f32(i32 27, float %1934)  ; Round_ni(value)
  %1936 = fmul fast float %1935, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1928, i32 %1929, i32 %1932, float %1936, float %1936, float %1936, float %1936, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1937

; <label>:1937                                    ; preds = %1916, %1914
  %1938 = icmp eq i32 %408, %412
  br i1 %1938, label %1939, label %406, !llvm.loop !85

; <label>:1939                                    ; preds = %1937
  br label %1940

; <label>:1940                                    ; preds = %1939, %402
  %1941 = phi i32 [ 0, %402 ], [ %1785, %1939 ]
  %1942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.i32 %1942, 0
  %1944 = call i32 @dx.op.tertiary.i32(i32 49, i32 %264, i32 %1943, i32 %343)  ; UMad(a,b,c)
  %1945 = shl i32 %1944, 2
  %1946 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1945, i32 undef, i32 undef, i32 %1941)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1947 = add i32 %343, 1
  %1948 = icmp ugt i32 %1947, %339
  br i1 %1948, label %1949, label %342

; <label>:1949                                    ; preds = %1940
  br label %1950

; <label>:1950                                    ; preds = %1949, %335, %59
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #1

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveAllTrue(i32, i1) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #1

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
!34 = !{i32 0, i64 524560, i32 4, !35}
!35 = !{i32 8, i32 8, i32 1}
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
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}

