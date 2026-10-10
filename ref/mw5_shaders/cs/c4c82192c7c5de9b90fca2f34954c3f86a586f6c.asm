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
; shader hash: 22a1443140680aa3b4a4e3f7b2d261b2
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
  br i1 %196, label %1476, label %197, !dx.controlflow.hints !41

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
  %216 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %217 = udiv i32 %25, %216
  %218 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %214, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %219 = icmp eq i32 %216, 64
  br i1 %219, label %246, label %220, !dx.controlflow.hints !42

; <label>:220                                     ; preds = %197
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %221 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %221, label %222, label %224, !dx.controlflow.hints !43

; <label>:222                                     ; preds = %220
  %223 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %217
  store i32 %218, i32 addrspace(3)* %223, align 4, !tbaa !37
  br label %224

; <label>:224                                     ; preds = %222, %220
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %225 = icmp eq i32 %216, 32
  br i1 %225, label %226, label %231, !dx.controlflow.hints !44

; <label>:226                                     ; preds = %224
  %227 = xor i32 %217, 1
  %228 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %227
  %229 = load i32, i32 addrspace(3)* %228, align 4, !tbaa !37
  %230 = call i32 @dx.op.binary.i32(i32 40, i32 %218, i32 %229)  ; UMin(a,b)
  br label %246

; <label>:231                                     ; preds = %224
  %232 = icmp eq i32 %216, 16
  br i1 %232, label %233, label %246, !dx.controlflow.hints !45

; <label>:233                                     ; preds = %231
  %234 = xor i32 %217, 3
  %235 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %234
  %236 = load i32, i32 addrspace(3)* %235, align 4, !tbaa !37
  %237 = xor i32 %217, 2
  %238 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %237
  %239 = load i32, i32 addrspace(3)* %238, align 4, !tbaa !37
  %240 = call i32 @dx.op.binary.i32(i32 40, i32 %239, i32 %236)  ; UMin(a,b)
  %241 = xor i32 %217, 1
  %242 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  %243 = load i32, i32 addrspace(3)* %242, align 4, !tbaa !37
  %244 = call i32 @dx.op.binary.i32(i32 40, i32 %218, i32 %243)  ; UMin(a,b)
  %245 = call i32 @dx.op.binary.i32(i32 40, i32 %244, i32 %240)  ; UMin(a,b)
  br label %246

; <label>:246                                     ; preds = %233, %231, %226, %197
  %247 = phi i32 [ %230, %226 ], [ %245, %233 ], [ %218, %197 ], [ 0, %231 ]
  %248 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %215, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %219, label %275, label %249, !dx.controlflow.hints !46

; <label>:249                                     ; preds = %246
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %250 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %250, label %251, label %253, !dx.controlflow.hints !47

; <label>:251                                     ; preds = %249
  %252 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %217
  store i32 %248, i32 addrspace(3)* %252, align 4, !tbaa !37
  br label %253

; <label>:253                                     ; preds = %251, %249
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %254 = icmp eq i32 %216, 32
  br i1 %254, label %255, label %260, !dx.controlflow.hints !48

; <label>:255                                     ; preds = %253
  %256 = xor i32 %217, 1
  %257 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %256
  %258 = load i32, i32 addrspace(3)* %257, align 4, !tbaa !37
  %259 = call i32 @dx.op.binary.i32(i32 39, i32 %248, i32 %258)  ; UMax(a,b)
  br label %275

; <label>:260                                     ; preds = %253
  %261 = icmp eq i32 %216, 16
  br i1 %261, label %262, label %275, !dx.controlflow.hints !49

; <label>:262                                     ; preds = %260
  %263 = xor i32 %217, 3
  %264 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %263
  %265 = load i32, i32 addrspace(3)* %264, align 4, !tbaa !37
  %266 = xor i32 %217, 2
  %267 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %266
  %268 = load i32, i32 addrspace(3)* %267, align 4, !tbaa !37
  %269 = call i32 @dx.op.binary.i32(i32 39, i32 %268, i32 %265)  ; UMax(a,b)
  %270 = xor i32 %217, 1
  %271 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %270
  %272 = load i32, i32 addrspace(3)* %271, align 4, !tbaa !37
  %273 = call i32 @dx.op.binary.i32(i32 39, i32 %248, i32 %272)  ; UMax(a,b)
  %274 = call i32 @dx.op.binary.i32(i32 39, i32 %273, i32 %269)  ; UMax(a,b)
  br label %275

; <label>:275                                     ; preds = %262, %260, %255, %246
  %276 = phi i32 [ %259, %255 ], [ %274, %262 ], [ %248, %246 ], [ 0, %260 ]
  %277 = lshr i32 %247, 5
  %278 = lshr i32 %276, 5
  %279 = call i32 @dx.op.binary.i32(i32 40, i32 %278, i32 %206)  ; UMin(a,b)
  %280 = icmp ugt i32 %277, %279
  br i1 %280, label %1476, label %281

; <label>:281                                     ; preds = %275
  br label %282

; <label>:282                                     ; preds = %1466, %281
  %283 = phi i32 [ %1473, %1466 ], [ %277, %281 ]
  %284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.i32 %284, 0
  %286 = call i32 @dx.op.tertiary.i32(i32 49, i32 %204, i32 %285, i32 %283)  ; UMad(a,b,c)
  %287 = shl i32 %286, 2
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %283, 5
  %291 = sub nsw i32 %214, %290
  %292 = call i32 @dx.op.binary.i32(i32 37, i32 %291, i32 0)  ; IMax(a,b)
  %293 = call i32 @dx.op.binary.i32(i32 38, i32 %292, i32 31)  ; IMin(a,b)
  %294 = sub nsw i32 1, %214
  %295 = add nsw i32 %294, %215
  %296 = call i32 @dx.op.binary.i32(i32 37, i32 %295, i32 0)  ; IMax(a,b)
  %297 = call i32 @dx.op.binary.i32(i32 38, i32 %296, i32 32)  ; IMin(a,b)
  %298 = and i32 %297, 31
  %299 = shl i32 -1, %298
  %300 = xor i32 %299, -1
  %301 = and i32 %293, 31
  %302 = shl i32 %300, %301
  %303 = icmp eq i32 %297, 32
  %304 = select i1 %303, i32 -1, i32 %302
  %305 = and i32 %304, %289
  %306 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %305, i8 1)  ; WaveActiveBit(value,op)
  br i1 %219, label %333, label %307, !dx.controlflow.hints !50

; <label>:307                                     ; preds = %282
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %308 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %308, label %309, label %311, !dx.controlflow.hints !51

; <label>:309                                     ; preds = %307
  %310 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %217
  store i32 %306, i32 addrspace(3)* %310, align 4, !tbaa !37
  br label %311

; <label>:311                                     ; preds = %309, %307
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %312 = icmp eq i32 %216, 32
  br i1 %312, label %313, label %318, !dx.controlflow.hints !52

; <label>:313                                     ; preds = %311
  %314 = xor i32 %217, 1
  %315 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %314
  %316 = load i32, i32 addrspace(3)* %315, align 4, !tbaa !37
  %317 = or i32 %316, %306
  br label %333

; <label>:318                                     ; preds = %311
  %319 = icmp eq i32 %216, 16
  br i1 %319, label %320, label %333, !dx.controlflow.hints !53

; <label>:320                                     ; preds = %318
  %321 = xor i32 %217, 1
  %322 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %321
  %323 = load i32, i32 addrspace(3)* %322, align 4, !tbaa !37
  %324 = or i32 %323, %306
  %325 = xor i32 %217, 2
  %326 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %325
  %327 = load i32, i32 addrspace(3)* %326, align 4, !tbaa !37
  %328 = or i32 %324, %327
  %329 = xor i32 %217, 3
  %330 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %329
  %331 = load i32, i32 addrspace(3)* %330, align 4, !tbaa !37
  %332 = or i32 %328, %331
  br label %333

; <label>:333                                     ; preds = %320, %318, %313, %282
  %334 = phi i32 [ %317, %313 ], [ %332, %320 ], [ %306, %282 ], [ 0, %318 ]
  br i1 %219, label %335, label %337, !dx.controlflow.hints !54

; <label>:335                                     ; preds = %333
  %336 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %334)  ; WaveReadLaneFirst(value)
  br label %342

; <label>:337                                     ; preds = %333
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %338 = icmp eq i32 %25, 0
  br i1 %338, label %339, label %340, !dx.controlflow.hints !55

; <label>:339                                     ; preds = %337
  store i32 %334, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %340

; <label>:340                                     ; preds = %339, %337
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %341 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  br label %342

; <label>:342                                     ; preds = %340, %335
  %343 = phi i32 [ %336, %335 ], [ %341, %340 ]
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %1466, label %345

; <label>:345                                     ; preds = %342
  br label %346

; <label>:346                                     ; preds = %1463, %345
  %347 = phi i32 [ %1311, %1463 ], [ 0, %345 ]
  %348 = phi i32 [ %353, %1463 ], [ %343, %345 ]
  %349 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %348)  ; FirstbitLo(value)
  %350 = add i32 %349, %290
  %351 = and i32 %349, 31
  %352 = shl i32 1, %351
  %353 = xor i32 %352, %348
  %354 = mul i32 %350, 112
  %355 = add i32 %354, 16
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = add i32 %354, 28
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = add i32 %354, 32
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = add i32 %354, 44
  %369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = add i32 %354, 48
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = extractvalue %dx.types.ResRet.f32 %372, 3
  %377 = add i32 %354, 64
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = extractvalue %dx.types.ResRet.f32 %378, 2
  %382 = extractvalue %dx.types.ResRet.f32 %378, 3
  %383 = add i32 %354, 92
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 65535
  %387 = uitofp i32 %386 to float
  %388 = lshr i32 %385, 16
  %389 = uitofp i32 %388 to float
  %390 = and i32 %362, 65535
  %391 = and i32 %362, 50331648
  %392 = icmp eq i32 %391, 33554432
  %393 = call float @dx.op.dot3.f32(i32 55, float %365, float %366, float %367, float %365, float %366, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %394 = fsub fast float %134, %373
  %395 = fsub fast float %135, %374
  %396 = fsub fast float %136, %375
  %397 = call float @dx.op.dot3.f32(i32 55, float %394, float %395, float %396, float %365, float %366, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %398 = fdiv fast float %397, %393
  %399 = call float @dx.op.binary.f32(i32 35, float %398, float -1.000000e+00)  ; FMax(a,b)
  %400 = call float @dx.op.binary.f32(i32 36, float %399, float 1.000000e+00)  ; FMin(a,b)
  %401 = fmul fast float %400, %365
  %402 = fmul fast float %400, %366
  %403 = fmul fast float %400, %367
  %404 = fadd fast float %401, %373
  %405 = fadd fast float %402, %374
  %406 = fadd fast float %403, %375
  %407 = fsub fast float %404, %134
  %408 = fsub fast float %405, %135
  %409 = fsub fast float %406, %136
  %410 = call float @dx.op.dot3.f32(i32 55, float %407, float %408, float %409, float %407, float %408, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %411 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %412 = fdiv fast float 1.000000e+00, %411
  %413 = fmul fast float %407, %412
  %414 = fmul fast float %408, %412
  %415 = fmul fast float %409, %412
  br i1 %392, label %416, label %440, !dx.controlflow.hints !56

; <label>:416                                     ; preds = %346
  %417 = fmul fast float %381, %357
  %418 = fmul fast float %381, %358
  %419 = fmul fast float %381, %359
  %420 = fsub fast float %417, %134
  %421 = fadd fast float %420, %404
  %422 = fsub fast float %418, %135
  %423 = fadd fast float %422, %405
  %424 = fsub fast float %419, %136
  %425 = fadd fast float %424, %406
  %426 = call float @dx.op.dot3.f32(i32 55, float %421, float %423, float %425, float %421, float %423, float %425)  ; Dot3(ax,ay,az,bx,by,bz)
  %427 = call float @dx.op.unary.f32(i32 25, float %426)  ; Rsqrt(value)
  %428 = fmul fast float %427, %421
  %429 = fmul fast float %427, %423
  %430 = fmul fast float %427, %425
  %431 = fsub fast float %134, %404
  %432 = fsub fast float %135, %405
  %433 = fsub fast float %136, %406
  %434 = fsub fast float -0.000000e+00, %431
  %435 = fsub fast float -0.000000e+00, %432
  %436 = fsub fast float -0.000000e+00, %433
  %437 = call float @dx.op.dot3.f32(i32 55, float %434, float %435, float %436, float %357, float %358, float %359)  ; Dot3(ax,ay,az,bx,by,bz)
  %438 = fcmp fast ogt float %437, 0.000000e+00
  %439 = uitofp i1 %438 to float
  br label %440

; <label>:440                                     ; preds = %416, %346
  %441 = phi float [ %439, %416 ], [ 1.000000e+00, %346 ]
  %442 = phi float [ %428, %416 ], [ %413, %346 ]
  %443 = phi float [ %429, %416 ], [ %414, %346 ]
  %444 = phi float [ %430, %416 ], [ %415, %346 ]
  %445 = call float @dx.op.dot3.f32(i32 55, float %357, float %358, float %359, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = fmul fast float %445, %445
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = fsub fast float 1.000000e+00, %447
  %449 = fmul fast float %448, 5.000000e-01
  %450 = fcmp fast ogt float %445, 0.000000e+00
  %451 = fsub fast float 1.000000e+00, %449
  %452 = select i1 %450, float %449, float %451
  %453 = fmul fast float %452, %389
  %454 = fadd fast float %453, %387
  %455 = fmul fast float %454, 0x3EF0001000000000
  %456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %455, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = fmul fast float %445, %379
  %459 = fadd fast float %458, %380
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %461 = select i1 %392, float 1.000000e+00, float %460
  %462 = select i1 %392, float %460, float 1.000000e+00
  %463 = fmul fast float %411, %376
  %464 = fsub fast float 1.000000e+00, %463
  %465 = fmul fast float %464, %382
  %466 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  %467 = fmul fast float %466, %462
  %468 = fmul fast float %467, 2.000000e+00
  %469 = fsub fast float 3.000000e+00, %468
  %470 = fmul fast float %457, %441
  %471 = fmul fast float %467, %467
  %472 = fmul fast float %471, %470
  %473 = fmul fast float %472, %469
  %474 = icmp ne i32 %390, 255
  %475 = call float @dx.op.binary.f32(i32 36, float %473, float %473)  ; FMin(a,b)
  %476 = call float @dx.op.binary.f32(i32 36, float %473, float %475)  ; FMin(a,b)
  %477 = fcmp fast ogt float %476, 0.000000e+00
  %478 = and i1 %474, %477
  br i1 %478, label %479, label %1272, !dx.controlflow.hints !57

; <label>:479                                     ; preds = %440
  %480 = mul nuw nsw i32 %390, 176
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = add nuw nsw i32 %480, 16
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = add nuw nsw i32 %480, 32
  %491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = extractvalue %dx.types.ResRet.f32 %491, 3
  %496 = add nuw nsw i32 %480, 48
  %497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = extractvalue %dx.types.ResRet.f32 %497, 3
  %502 = add nuw nsw i32 %480, 64
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = extractvalue %dx.types.ResRet.f32 %503, 1
  %506 = extractvalue %dx.types.ResRet.f32 %503, 2
  %507 = extractvalue %dx.types.ResRet.f32 %503, 3
  %508 = add nuw nsw i32 %480, 80
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = extractvalue %dx.types.ResRet.f32 %509, 3
  %514 = add nuw nsw i32 %480, 96
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = extractvalue %dx.types.ResRet.f32 %515, 3
  %520 = add nuw nsw i32 %480, 112
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = extractvalue %dx.types.ResRet.f32 %521, 2
  %525 = extractvalue %dx.types.ResRet.f32 %521, 3
  %526 = add nuw nsw i32 %480, 128
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = extractvalue %dx.types.ResRet.f32 %527, 3
  %532 = add nuw nsw i32 %480, 144
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = extractvalue %dx.types.ResRet.f32 %533, 2
  %537 = extractvalue %dx.types.ResRet.f32 %533, 3
  %538 = add nuw nsw i32 %480, 160
  %539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = extractvalue %dx.types.ResRet.f32 %539, 1
  %542 = extractvalue %dx.types.ResRet.f32 %539, 2
  %543 = extractvalue %dx.types.ResRet.f32 %539, 3
  %544 = bitcast float %489 to i32
  %545 = bitcast float %495 to i32
  %546 = and i32 %545, 1
  %547 = icmp ne i32 %546, 0
  %548 = and i32 %545, 2
  %549 = fmul fast float %180, %494
  %550 = fmul fast float %181, %494
  %551 = fmul fast float %182, %494
  %552 = fadd fast float %549, %134
  %553 = fadd fast float %550, %135
  %554 = fadd fast float %551, %136
  %555 = fmul fast float %552, %498
  %556 = call float @dx.op.tertiary.f32(i32 46, float %553, float %504, float %555)  ; FMad(a,b,c)
  %557 = call float @dx.op.tertiary.f32(i32 46, float %554, float %510, float %556)  ; FMad(a,b,c)
  %558 = fadd fast float %557, %516
  %559 = fmul fast float %552, %499
  %560 = call float @dx.op.tertiary.f32(i32 46, float %553, float %505, float %559)  ; FMad(a,b,c)
  %561 = call float @dx.op.tertiary.f32(i32 46, float %554, float %511, float %560)  ; FMad(a,b,c)
  %562 = fadd fast float %561, %517
  %563 = fmul fast float %552, %500
  %564 = call float @dx.op.tertiary.f32(i32 46, float %553, float %506, float %563)  ; FMad(a,b,c)
  %565 = call float @dx.op.tertiary.f32(i32 46, float %554, float %512, float %564)  ; FMad(a,b,c)
  %566 = fadd fast float %565, %518
  %567 = fmul fast float %552, %501
  %568 = call float @dx.op.tertiary.f32(i32 46, float %553, float %507, float %567)  ; FMad(a,b,c)
  %569 = call float @dx.op.tertiary.f32(i32 46, float %554, float %513, float %568)  ; FMad(a,b,c)
  %570 = fadd fast float %569, %519
  %571 = fdiv fast float %558, %570
  %572 = fdiv fast float %562, %570
  %573 = fdiv fast float %566, %570
  %574 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %573)  ; FMax(a,b)
  %575 = fmul fast float %193, 0x401921FB60000000
  %576 = call float @dx.op.unary.f32(i32 13, float %575)  ; Sin(value)
  %577 = call float @dx.op.unary.f32(i32 12, float %575)  ; Cos(value)
  %578 = fsub fast float -0.000000e+00, %576
  %579 = icmp eq i32 %548, 0
  br i1 %579, label %580, label %651, !dx.controlflow.hints !58

; <label>:580                                     ; preds = %479
  %581 = fmul fast float %577, %493
  %582 = call float @dx.op.tertiary.f32(i32 46, float %576, float %493, float 0.000000e+00)  ; FMad(a,b,c)
  %583 = fmul fast float %493, %578
  %584 = call float @dx.op.tertiary.f32(i32 46, float %577, float %493, float 0.000000e+00)  ; FMad(a,b,c)
  br label %585

; <label>:585                                     ; preds = %585, %580
  %586 = phi float [ 0.000000e+00, %580 ], [ %618, %585 ]
  %587 = phi float [ 0.000000e+00, %580 ], [ %620, %585 ]
  %588 = phi i32 [ 0, %580 ], [ %621, %585 ]
  %589 = mul i32 %588, 2
  %590 = add i32 0, %589
  %591 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %590
  %592 = load float, float* %591, align 4
  %593 = mul i32 %588, 2
  %594 = add i32 1, %593
  %595 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %594
  %596 = load float, float* %595, align 4
  %597 = fmul fast float %581, %592
  %598 = call float @dx.op.tertiary.f32(i32 46, float %596, float %583, float %597)  ; FMad(a,b,c)
  %599 = fmul fast float %592, %582
  %600 = call float @dx.op.tertiary.f32(i32 46, float %596, float %584, float %599)  ; FMad(a,b,c)
  %601 = fadd fast float %598, %571
  %602 = fadd fast float %600, %572
  %603 = fmul fast float %601, %488
  %604 = fmul fast float %602, %488
  %605 = call float @dx.op.binary.f32(i32 35, float %603, float %484)  ; FMax(a,b)
  %606 = call float @dx.op.binary.f32(i32 35, float %604, float %484)  ; FMax(a,b)
  %607 = call float @dx.op.binary.f32(i32 36, float %605, float %485)  ; FMin(a,b)
  %608 = call float @dx.op.binary.f32(i32 36, float %606, float %485)  ; FMin(a,b)
  %609 = fadd fast float %607, %482
  %610 = fadd fast float %608, %483
  %611 = uitofp i32 %544 to float
  %612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %609, float %610, float %611, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = fsub fast float %613, %574
  %615 = fsub fast float %614, %492
  %616 = fcmp fast ogt float %615, 0.000000e+00
  %617 = select i1 %616, float 1.000000e+00, float 0.000000e+00
  %618 = fadd fast float %617, %586
  %619 = select i1 %616, float %615, float 0.000000e+00
  %620 = fadd fast float %619, %587
  %621 = add nuw nsw i32 %588, 1
  %622 = icmp eq i32 %621, 8
  br i1 %622, label %623, label %585

; <label>:623                                     ; preds = %585
  %624 = fdiv fast float 1.000000e+00, %618
  %625 = fmul fast float %624, %620
  %626 = fdiv fast float 1.000000e+00, %574
  %627 = fmul fast float %625, %626
  %628 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %629 = call float @dx.op.binary.f32(i32 35, float %628, float 0.000000e+00)  ; FMax(a,b)
  %630 = fmul fast float %618, 1.250000e-01
  %631 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %632 = fmul fast float %631, 2.000000e+00
  %633 = fadd fast float %632, -1.000000e+00
  %634 = fcmp fast ogt float %633, 0.000000e+00
  %635 = fcmp fast olt float %633, 0.000000e+00
  %636 = zext i1 %634 to i32
  %637 = zext i1 %635 to i32
  %638 = sub nsw i32 %636, %637
  %639 = sitofp i32 %638 to float
  %640 = fmul fast float %639, %633
  %641 = fsub fast float 1.000000e+00, %640
  %642 = fmul fast float %641, %641
  %643 = fmul fast float %642, %641
  %644 = fsub fast float %641, %643
  %645 = fmul fast float %644, %629
  %646 = fsub fast float 1.000000e+00, %643
  %647 = fsub fast float %646, %645
  %648 = fmul fast float %639, 5.000000e-01
  %649 = fmul fast float %648, %647
  %650 = fsub fast float 5.000000e-01, %649
  br label %1266

; <label>:651                                     ; preds = %479
  %652 = fsub fast float 1.000000e+00, %574
  %653 = fmul fast float %652, 5.000000e-01
  %654 = fadd fast float %653, %574
  %655 = fsub fast float %552, %373
  %656 = fsub fast float %553, %374
  %657 = fsub fast float %554, %375
  %658 = call float @dx.op.dot3.f32(i32 55, float %655, float %656, float %657, float %365, float %366, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = fdiv fast float %658, %393
  %660 = call float @dx.op.binary.f32(i32 35, float %659, float -1.000000e+00)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 36, float %660, float 1.000000e+00)  ; FMin(a,b)
  %662 = fmul fast float %661, %365
  %663 = fmul fast float %661, %366
  %664 = fmul fast float %661, %367
  %665 = fsub fast float %655, %662
  %666 = fsub fast float %656, %663
  %667 = fsub fast float %657, %664
  %668 = call float @dx.op.dot3.f32(i32 55, float %665, float %666, float %667, float %665, float %666, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %669 = call float @dx.op.unary.f32(i32 25, float %668)  ; Rsqrt(value)
  %670 = fmul fast float %665, %669
  %671 = fmul fast float %666, %669
  %672 = fmul fast float %667, %669
  %673 = call float @dx.op.unary.f32(i32 25, float %393)  ; Rsqrt(value)
  %674 = fmul fast float %673, %365
  %675 = fmul fast float %673, %366
  %676 = fmul fast float %673, %367
  br i1 %547, label %677, label %681, !dx.controlflow.hints !59

; <label>:677                                     ; preds = %651
  %678 = fcmp fast olt float %671, 0x3FE6666660000000
  %679 = select i1 %678, float 1.000000e+00, float 0.000000e+00
  %680 = select i1 %678, float 0.000000e+00, float 1.000000e+00
  br label %681

; <label>:681                                     ; preds = %677, %651
  %682 = phi float [ 0.000000e+00, %677 ], [ %674, %651 ]
  %683 = phi float [ %679, %677 ], [ %675, %651 ]
  %684 = phi float [ %680, %677 ], [ %676, %651 ]
  %685 = fmul fast float %683, %672
  %686 = fmul fast float %684, %671
  %687 = fsub fast float %685, %686
  %688 = fmul fast float %684, %670
  %689 = fmul fast float %682, %672
  %690 = fsub fast float %688, %689
  %691 = fmul fast float %682, %671
  %692 = fmul fast float %683, %670
  %693 = fsub fast float %691, %692
  %694 = call float @dx.op.dot3.f32(i32 55, float %687, float %690, float %693, float %687, float %690, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.unary.f32(i32 25, float %694)  ; Rsqrt(value)
  %696 = fmul fast float %695, %370
  %697 = fmul fast float %696, %687
  %698 = fmul fast float %696, %690
  %699 = fmul fast float %693, %370
  %700 = fmul fast float %699, %695
  %701 = fmul fast float %571, %522
  %702 = call float @dx.op.tertiary.f32(i32 46, float %572, float %528, float %701)  ; FMad(a,b,c)
  %703 = call float @dx.op.tertiary.f32(i32 46, float %654, float %534, float %702)  ; FMad(a,b,c)
  %704 = fadd fast float %703, %540
  %705 = fmul fast float %571, %523
  %706 = call float @dx.op.tertiary.f32(i32 46, float %572, float %529, float %705)  ; FMad(a,b,c)
  %707 = call float @dx.op.tertiary.f32(i32 46, float %654, float %535, float %706)  ; FMad(a,b,c)
  %708 = fadd fast float %707, %541
  %709 = fmul fast float %571, %524
  %710 = call float @dx.op.tertiary.f32(i32 46, float %572, float %530, float %709)  ; FMad(a,b,c)
  %711 = call float @dx.op.tertiary.f32(i32 46, float %654, float %536, float %710)  ; FMad(a,b,c)
  %712 = fadd fast float %711, %542
  %713 = fmul fast float %571, %525
  %714 = call float @dx.op.tertiary.f32(i32 46, float %572, float %531, float %713)  ; FMad(a,b,c)
  %715 = call float @dx.op.tertiary.f32(i32 46, float %654, float %537, float %714)  ; FMad(a,b,c)
  %716 = fadd fast float %715, %543
  %717 = fdiv fast float 1.000000e+00, %716
  %718 = fmul fast float %717, %704
  %719 = fmul fast float %717, %708
  %720 = fmul fast float %717, %712
  %721 = fsub fast float -0.000000e+00, %670
  %722 = fsub fast float -0.000000e+00, %671
  %723 = fsub fast float -0.000000e+00, %672
  %724 = fsub fast float %373, %697
  %725 = fsub fast float %374, %698
  %726 = fsub fast float %375, %700
  %727 = fsub fast float %718, %724
  %728 = fsub fast float %719, %725
  %729 = fsub fast float %720, %726
  %730 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float %727, float %728, float %729)  ; Dot3(ax,ay,az,bx,by,bz)
  %731 = call float @dx.op.unary.f32(i32 25, float %730)  ; Rsqrt(value)
  %732 = fmul fast float %727, %731
  %733 = fmul fast float %728, %731
  %734 = fmul fast float %729, %731
  %735 = fsub fast float %552, %724
  %736 = fsub fast float %553, %725
  %737 = fsub fast float %554, %726
  %738 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %735, float %736, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %739 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %732, float %733, float %734)  ; Dot3(ax,ay,az,bx,by,bz)
  %740 = fdiv fast float 1.000000e+00, %739
  %741 = fmul fast float %740, %738
  %742 = fmul fast float %741, %732
  %743 = fmul fast float %741, %733
  %744 = fmul fast float %741, %734
  %745 = fadd fast float %742, %724
  %746 = fadd fast float %743, %725
  %747 = fadd fast float %744, %726
  %748 = fadd fast float %697, %373
  %749 = fadd fast float %698, %374
  %750 = fadd fast float %700, %375
  %751 = fsub fast float %718, %748
  %752 = fsub fast float %719, %749
  %753 = fsub fast float %720, %750
  %754 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float %751, float %752, float %753)  ; Dot3(ax,ay,az,bx,by,bz)
  %755 = call float @dx.op.unary.f32(i32 25, float %754)  ; Rsqrt(value)
  %756 = fmul fast float %755, %751
  %757 = fmul fast float %755, %752
  %758 = fmul fast float %755, %753
  %759 = fsub fast float %552, %748
  %760 = fsub fast float %553, %749
  %761 = fsub fast float %554, %750
  %762 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %759, float %760, float %761)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %756, float %757, float %758)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = fdiv fast float 1.000000e+00, %763
  %765 = fmul fast float %764, %762
  %766 = fmul fast float %765, %756
  %767 = fmul fast float %765, %757
  %768 = fmul fast float %765, %758
  %769 = fadd fast float %766, %748
  %770 = fadd fast float %767, %749
  %771 = fadd fast float %768, %750
  %772 = fmul fast float %745, %498
  %773 = call float @dx.op.tertiary.f32(i32 46, float %746, float %504, float %772)  ; FMad(a,b,c)
  %774 = call float @dx.op.tertiary.f32(i32 46, float %747, float %510, float %773)  ; FMad(a,b,c)
  %775 = fadd fast float %774, %516
  %776 = fmul fast float %745, %499
  %777 = call float @dx.op.tertiary.f32(i32 46, float %746, float %505, float %776)  ; FMad(a,b,c)
  %778 = call float @dx.op.tertiary.f32(i32 46, float %747, float %511, float %777)  ; FMad(a,b,c)
  %779 = fadd fast float %778, %517
  %780 = fmul fast float %745, %501
  %781 = call float @dx.op.tertiary.f32(i32 46, float %746, float %507, float %780)  ; FMad(a,b,c)
  %782 = call float @dx.op.tertiary.f32(i32 46, float %747, float %513, float %781)  ; FMad(a,b,c)
  %783 = fadd fast float %782, %519
  %784 = fmul fast float %769, %498
  %785 = call float @dx.op.tertiary.f32(i32 46, float %770, float %504, float %784)  ; FMad(a,b,c)
  %786 = call float @dx.op.tertiary.f32(i32 46, float %771, float %510, float %785)  ; FMad(a,b,c)
  %787 = fadd fast float %786, %516
  %788 = fmul fast float %769, %499
  %789 = call float @dx.op.tertiary.f32(i32 46, float %770, float %505, float %788)  ; FMad(a,b,c)
  %790 = call float @dx.op.tertiary.f32(i32 46, float %771, float %511, float %789)  ; FMad(a,b,c)
  %791 = fadd fast float %790, %517
  %792 = fmul fast float %769, %501
  %793 = call float @dx.op.tertiary.f32(i32 46, float %770, float %507, float %792)  ; FMad(a,b,c)
  %794 = call float @dx.op.tertiary.f32(i32 46, float %771, float %513, float %793)  ; FMad(a,b,c)
  %795 = fadd fast float %794, %519
  %796 = fdiv fast float 1.000000e+00, %783
  %797 = fmul fast float %796, %775
  %798 = fmul fast float %796, %779
  %799 = fdiv fast float 1.000000e+00, %795
  %800 = fmul fast float %799, %787
  %801 = fmul fast float %799, %791
  %802 = fsub fast float %800, %797
  %803 = fsub fast float %801, %798
  %804 = call float @dx.op.dot2.f32(i32 54, float %802, float %803, float %802, float %803)  ; Dot2(ax,ay,bx,by)
  %805 = call float @dx.op.unary.f32(i32 25, float %804)  ; Rsqrt(value)
  %806 = fmul fast float %802, %805
  %807 = fmul fast float %803, %805
  %808 = fmul fast float %802, %802
  %809 = fmul fast float %803, %803
  %810 = fadd fast float %808, %809
  %811 = call float @dx.op.unary.f32(i32 24, float %810)  ; Sqrt(value)
  %812 = fmul fast float %811, 5.000000e-01
  br i1 %547, label %905, label %813, !dx.controlflow.hints !60

; <label>:813                                     ; preds = %681
  %814 = fsub fast float %373, %365
  %815 = fsub fast float %374, %366
  %816 = fsub fast float %375, %367
  %817 = fsub fast float %718, %814
  %818 = fsub fast float %719, %815
  %819 = fsub fast float %720, %816
  %820 = call float @dx.op.dot3.f32(i32 55, float %817, float %818, float %819, float %817, float %818, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %821 = call float @dx.op.unary.f32(i32 25, float %820)  ; Rsqrt(value)
  %822 = fmul fast float %821, %817
  %823 = fmul fast float %821, %818
  %824 = fmul fast float %821, %819
  %825 = fsub fast float %552, %814
  %826 = fsub fast float %553, %815
  %827 = fsub fast float %554, %816
  %828 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %825, float %826, float %827)  ; Dot3(ax,ay,az,bx,by,bz)
  %829 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %822, float %823, float %824)  ; Dot3(ax,ay,az,bx,by,bz)
  %830 = fdiv fast float 1.000000e+00, %829
  %831 = fmul fast float %830, %828
  %832 = fmul fast float %831, %822
  %833 = fmul fast float %831, %823
  %834 = fmul fast float %831, %824
  %835 = fadd fast float %832, %814
  %836 = fadd fast float %833, %815
  %837 = fadd fast float %834, %816
  %838 = fadd fast float %373, %365
  %839 = fadd fast float %374, %366
  %840 = fadd fast float %375, %367
  %841 = fsub fast float %718, %838
  %842 = fsub fast float %719, %839
  %843 = fsub fast float %720, %840
  %844 = call float @dx.op.dot3.f32(i32 55, float %841, float %842, float %843, float %841, float %842, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = call float @dx.op.unary.f32(i32 25, float %844)  ; Rsqrt(value)
  %846 = fmul fast float %845, %841
  %847 = fmul fast float %845, %842
  %848 = fmul fast float %845, %843
  %849 = fsub fast float %552, %838
  %850 = fsub fast float %553, %839
  %851 = fsub fast float %554, %840
  %852 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %849, float %850, float %851)  ; Dot3(ax,ay,az,bx,by,bz)
  %853 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %846, float %847, float %848)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = fdiv fast float 1.000000e+00, %853
  %855 = fmul fast float %854, %852
  %856 = fmul fast float %855, %846
  %857 = fmul fast float %855, %847
  %858 = fmul fast float %855, %848
  %859 = fadd fast float %856, %838
  %860 = fadd fast float %857, %839
  %861 = fadd fast float %858, %840
  %862 = fmul fast float %835, %498
  %863 = call float @dx.op.tertiary.f32(i32 46, float %836, float %504, float %862)  ; FMad(a,b,c)
  %864 = call float @dx.op.tertiary.f32(i32 46, float %837, float %510, float %863)  ; FMad(a,b,c)
  %865 = fadd fast float %864, %516
  %866 = fmul fast float %835, %499
  %867 = call float @dx.op.tertiary.f32(i32 46, float %836, float %505, float %866)  ; FMad(a,b,c)
  %868 = call float @dx.op.tertiary.f32(i32 46, float %837, float %511, float %867)  ; FMad(a,b,c)
  %869 = fadd fast float %868, %517
  %870 = fmul fast float %835, %501
  %871 = call float @dx.op.tertiary.f32(i32 46, float %836, float %507, float %870)  ; FMad(a,b,c)
  %872 = call float @dx.op.tertiary.f32(i32 46, float %837, float %513, float %871)  ; FMad(a,b,c)
  %873 = fadd fast float %872, %519
  %874 = fmul fast float %859, %498
  %875 = call float @dx.op.tertiary.f32(i32 46, float %860, float %504, float %874)  ; FMad(a,b,c)
  %876 = call float @dx.op.tertiary.f32(i32 46, float %861, float %510, float %875)  ; FMad(a,b,c)
  %877 = fadd fast float %876, %516
  %878 = fmul fast float %859, %499
  %879 = call float @dx.op.tertiary.f32(i32 46, float %860, float %505, float %878)  ; FMad(a,b,c)
  %880 = call float @dx.op.tertiary.f32(i32 46, float %861, float %511, float %879)  ; FMad(a,b,c)
  %881 = fadd fast float %880, %517
  %882 = fmul fast float %859, %501
  %883 = call float @dx.op.tertiary.f32(i32 46, float %860, float %507, float %882)  ; FMad(a,b,c)
  %884 = call float @dx.op.tertiary.f32(i32 46, float %861, float %513, float %883)  ; FMad(a,b,c)
  %885 = fadd fast float %884, %519
  %886 = fdiv fast float 1.000000e+00, %873
  %887 = fmul fast float %886, %865
  %888 = fmul fast float %886, %869
  %889 = fdiv fast float 1.000000e+00, %885
  %890 = fmul fast float %889, %877
  %891 = fmul fast float %889, %881
  %892 = fsub fast float %890, %887
  %893 = fsub fast float %891, %888
  %894 = call float @dx.op.dot2.f32(i32 54, float %892, float %893, float %892, float %893)  ; Dot2(ax,ay,bx,by)
  %895 = call float @dx.op.unary.f32(i32 25, float %894)  ; Rsqrt(value)
  %896 = fmul fast float %892, %895
  %897 = fmul fast float %893, %895
  %898 = fmul fast float %892, %892
  %899 = fmul fast float %893, %893
  %900 = fadd fast float %898, %899
  %901 = call float @dx.op.unary.f32(i32 24, float %900)  ; Sqrt(value)
  %902 = fmul fast float %901, 5.000000e-01
  %903 = fcmp fast olt float %902, %812
  br i1 %903, label %904, label %905, !dx.controlflow.hints !61

; <label>:904                                     ; preds = %813
  br label %905

; <label>:905                                     ; preds = %904, %813, %681
  %906 = phi float [ %812, %681 ], [ %902, %904 ], [ %812, %813 ]
  %907 = phi float [ %812, %681 ], [ %812, %904 ], [ %902, %813 ]
  %908 = phi float [ %806, %681 ], [ %806, %904 ], [ %896, %813 ]
  %909 = phi float [ %807, %681 ], [ %807, %904 ], [ %897, %813 ]
  %910 = fmul fast float %906, %493
  %911 = fdiv fast float %910, %907
  %912 = fsub fast float %493, %911
  %913 = fmul fast float %908, %908
  %914 = fmul fast float %913, %912
  %915 = fadd fast float %914, %911
  %916 = fmul fast float %909, %908
  %917 = fmul fast float %916, %912
  %918 = fmul fast float %909, %909
  %919 = fmul fast float %918, %912
  %920 = fadd fast float %919, %911
  %921 = fmul fast float %915, %577
  %922 = call float @dx.op.tertiary.f32(i32 46, float %576, float %917, float %921)  ; FMad(a,b,c)
  %923 = fmul fast float %917, %577
  %924 = call float @dx.op.tertiary.f32(i32 46, float %576, float %920, float %923)  ; FMad(a,b,c)
  %925 = fmul fast float %915, %578
  %926 = call float @dx.op.tertiary.f32(i32 46, float %577, float %917, float %925)  ; FMad(a,b,c)
  %927 = fmul fast float %917, %578
  %928 = call float @dx.op.tertiary.f32(i32 46, float %577, float %920, float %927)  ; FMad(a,b,c)
  br label %929

; <label>:929                                     ; preds = %967, %905
  %930 = phi float [ 0.000000e+00, %905 ], [ %968, %967 ]
  %931 = phi float [ 0.000000e+00, %905 ], [ %969, %967 ]
  %932 = phi float [ 0.000000e+00, %905 ], [ %970, %967 ]
  %933 = phi float [ 0.000000e+00, %905 ], [ %971, %967 ]
  %934 = phi i32 [ 0, %905 ], [ %972, %967 ]
  %935 = mul i32 %934, 2
  %936 = add i32 0, %935
  %937 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %936
  %938 = load float, float* %937, align 4
  %939 = mul i32 %934, 2
  %940 = add i32 1, %939
  %941 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %940
  %942 = load float, float* %941, align 4
  %943 = fmul fast float %938, %922
  %944 = call float @dx.op.tertiary.f32(i32 46, float %942, float %926, float %943)  ; FMad(a,b,c)
  %945 = fmul fast float %938, %924
  %946 = call float @dx.op.tertiary.f32(i32 46, float %942, float %928, float %945)  ; FMad(a,b,c)
  %947 = fadd fast float %944, %571
  %948 = fadd fast float %946, %572
  %949 = fmul fast float %947, %488
  %950 = fmul fast float %948, %488
  %951 = call float @dx.op.binary.f32(i32 35, float %949, float %484)  ; FMax(a,b)
  %952 = call float @dx.op.binary.f32(i32 35, float %950, float %484)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 36, float %951, float %485)  ; FMin(a,b)
  %954 = call float @dx.op.binary.f32(i32 36, float %952, float %485)  ; FMin(a,b)
  %955 = fadd fast float %953, %482
  %956 = fadd fast float %954, %483
  %957 = uitofp i32 %544 to float
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %955, float %956, float %957, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = fadd fast float %574, %492
  %961 = fcmp fast olt float %960, %959
  br i1 %961, label %962, label %967, !dx.controlflow.hints !62

; <label>:962                                     ; preds = %929
  %963 = fadd fast float %959, %932
  %964 = fadd fast float %944, %930
  %965 = fadd fast float %946, %931
  %966 = fadd fast float %933, 1.000000e+00
  br label %967

; <label>:967                                     ; preds = %962, %929
  %968 = phi float [ %964, %962 ], [ %930, %929 ]
  %969 = phi float [ %965, %962 ], [ %931, %929 ]
  %970 = phi float [ %963, %962 ], [ %932, %929 ]
  %971 = phi float [ %966, %962 ], [ %933, %929 ]
  %972 = add nuw nsw i32 %934, 1
  %973 = icmp eq i32 %972, 8
  br i1 %973, label %974, label %929

; <label>:974                                     ; preds = %967
  %975 = fdiv fast float 1.000000e+00, %971
  %976 = fcmp fast oeq float %971, 0.000000e+00
  %977 = fmul fast float %975, %970
  %978 = select i1 %976, float -1.000000e+00, float %977
  %979 = fcmp fast olt float %978, 0.000000e+00
  br i1 %979, label %1266, label %980, !dx.controlflow.hints !63

; <label>:980                                     ; preds = %974
  %981 = fmul fast float %975, %969
  %982 = select i1 %976, float 0.000000e+00, float %981
  %983 = fmul fast float %975, %968
  %984 = select i1 %976, float 0.000000e+00, float %983
  %985 = fadd fast float %984, %571
  %986 = fadd fast float %982, %572
  br i1 %547, label %987, label %991, !dx.controlflow.hints !59

; <label>:987                                     ; preds = %980
  %988 = fcmp fast olt float %671, 0x3FE6666660000000
  %989 = select i1 %988, float 1.000000e+00, float 0.000000e+00
  %990 = select i1 %988, float 0.000000e+00, float 1.000000e+00
  br label %991

; <label>:991                                     ; preds = %987, %980
  %992 = phi float [ 0.000000e+00, %987 ], [ %674, %980 ]
  %993 = phi float [ %989, %987 ], [ %675, %980 ]
  %994 = phi float [ %990, %987 ], [ %676, %980 ]
  %995 = fmul fast float %993, %672
  %996 = fmul fast float %994, %671
  %997 = fsub fast float %995, %996
  %998 = fmul fast float %994, %670
  %999 = fmul fast float %992, %672
  %1000 = fsub fast float %998, %999
  %1001 = fmul fast float %992, %671
  %1002 = fmul fast float %993, %670
  %1003 = fsub fast float %1001, %1002
  %1004 = call float @dx.op.dot3.f32(i32 55, float %997, float %1000, float %1003, float %997, float %1000, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = call float @dx.op.unary.f32(i32 25, float %1004)  ; Rsqrt(value)
  %1006 = fmul fast float %1005, %370
  %1007 = fmul fast float %1006, %997
  %1008 = fmul fast float %1006, %1000
  %1009 = fmul fast float %1003, %370
  %1010 = fmul fast float %1009, %1005
  %1011 = fmul fast float %985, %522
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %986, float %528, float %1011)  ; FMad(a,b,c)
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %978, float %534, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %1013, %540
  %1015 = fmul fast float %985, %523
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %986, float %529, float %1015)  ; FMad(a,b,c)
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %978, float %535, float %1016)  ; FMad(a,b,c)
  %1018 = fadd fast float %1017, %541
  %1019 = fmul fast float %985, %524
  %1020 = call float @dx.op.tertiary.f32(i32 46, float %986, float %530, float %1019)  ; FMad(a,b,c)
  %1021 = call float @dx.op.tertiary.f32(i32 46, float %978, float %536, float %1020)  ; FMad(a,b,c)
  %1022 = fadd fast float %1021, %542
  %1023 = fmul fast float %985, %525
  %1024 = call float @dx.op.tertiary.f32(i32 46, float %986, float %531, float %1023)  ; FMad(a,b,c)
  %1025 = call float @dx.op.tertiary.f32(i32 46, float %978, float %537, float %1024)  ; FMad(a,b,c)
  %1026 = fadd fast float %1025, %543
  %1027 = fdiv fast float 1.000000e+00, %1026
  %1028 = fmul fast float %1027, %1014
  %1029 = fmul fast float %1027, %1018
  %1030 = fmul fast float %1027, %1022
  %1031 = fsub fast float %373, %1007
  %1032 = fsub fast float %374, %1008
  %1033 = fsub fast float %375, %1010
  %1034 = fsub fast float %1028, %1031
  %1035 = fsub fast float %1029, %1032
  %1036 = fsub fast float %1030, %1033
  %1037 = call float @dx.op.dot3.f32(i32 55, float %1034, float %1035, float %1036, float %1034, float %1035, float %1036)  ; Dot3(ax,ay,az,bx,by,bz)
  %1038 = call float @dx.op.unary.f32(i32 25, float %1037)  ; Rsqrt(value)
  %1039 = fmul fast float %1034, %1038
  %1040 = fmul fast float %1035, %1038
  %1041 = fmul fast float %1036, %1038
  %1042 = fsub fast float %552, %1031
  %1043 = fsub fast float %553, %1032
  %1044 = fsub fast float %554, %1033
  %1045 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %1042, float %1043, float %1044)  ; Dot3(ax,ay,az,bx,by,bz)
  %1046 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %1039, float %1040, float %1041)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = fdiv fast float 1.000000e+00, %1046
  %1048 = fmul fast float %1047, %1045
  %1049 = fmul fast float %1048, %1039
  %1050 = fmul fast float %1048, %1040
  %1051 = fmul fast float %1048, %1041
  %1052 = fadd fast float %1049, %1031
  %1053 = fadd fast float %1050, %1032
  %1054 = fadd fast float %1051, %1033
  %1055 = fadd fast float %1007, %373
  %1056 = fadd fast float %1008, %374
  %1057 = fadd fast float %1010, %375
  %1058 = fsub fast float %1028, %1055
  %1059 = fsub fast float %1029, %1056
  %1060 = fsub fast float %1030, %1057
  %1061 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1059, float %1060, float %1058, float %1059, float %1060)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = call float @dx.op.unary.f32(i32 25, float %1061)  ; Rsqrt(value)
  %1063 = fmul fast float %1062, %1058
  %1064 = fmul fast float %1062, %1059
  %1065 = fmul fast float %1062, %1060
  %1066 = fsub fast float %552, %1055
  %1067 = fsub fast float %553, %1056
  %1068 = fsub fast float %554, %1057
  %1069 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %1066, float %1067, float %1068)  ; Dot3(ax,ay,az,bx,by,bz)
  %1070 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %1063, float %1064, float %1065)  ; Dot3(ax,ay,az,bx,by,bz)
  %1071 = fdiv fast float 1.000000e+00, %1070
  %1072 = fmul fast float %1071, %1069
  %1073 = fmul fast float %1072, %1063
  %1074 = fmul fast float %1072, %1064
  %1075 = fmul fast float %1072, %1065
  %1076 = fadd fast float %1073, %1055
  %1077 = fadd fast float %1074, %1056
  %1078 = fadd fast float %1075, %1057
  %1079 = fmul fast float %1052, %498
  %1080 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %504, float %1079)  ; FMad(a,b,c)
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %510, float %1080)  ; FMad(a,b,c)
  %1082 = fadd fast float %1081, %516
  %1083 = fmul fast float %1052, %499
  %1084 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %505, float %1083)  ; FMad(a,b,c)
  %1085 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %511, float %1084)  ; FMad(a,b,c)
  %1086 = fadd fast float %1085, %517
  %1087 = fmul fast float %1052, %501
  %1088 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %507, float %1087)  ; FMad(a,b,c)
  %1089 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %513, float %1088)  ; FMad(a,b,c)
  %1090 = fadd fast float %1089, %519
  %1091 = fmul fast float %1076, %498
  %1092 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %504, float %1091)  ; FMad(a,b,c)
  %1093 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %510, float %1092)  ; FMad(a,b,c)
  %1094 = fadd fast float %1093, %516
  %1095 = fmul fast float %1076, %499
  %1096 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %505, float %1095)  ; FMad(a,b,c)
  %1097 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %511, float %1096)  ; FMad(a,b,c)
  %1098 = fadd fast float %1097, %517
  %1099 = fmul fast float %1076, %501
  %1100 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %507, float %1099)  ; FMad(a,b,c)
  %1101 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %513, float %1100)  ; FMad(a,b,c)
  %1102 = fadd fast float %1101, %519
  %1103 = fdiv fast float 1.000000e+00, %1090
  %1104 = fmul fast float %1103, %1082
  %1105 = fmul fast float %1103, %1086
  %1106 = fdiv fast float 1.000000e+00, %1102
  %1107 = fmul fast float %1106, %1094
  %1108 = fmul fast float %1106, %1098
  %1109 = fsub fast float %1107, %1104
  %1110 = fsub fast float %1108, %1105
  %1111 = call float @dx.op.dot2.f32(i32 54, float %1109, float %1110, float %1109, float %1110)  ; Dot2(ax,ay,bx,by)
  %1112 = call float @dx.op.unary.f32(i32 25, float %1111)  ; Rsqrt(value)
  %1113 = fmul fast float %1109, %1112
  %1114 = fmul fast float %1110, %1112
  %1115 = fmul fast float %1109, %1109
  %1116 = fmul fast float %1110, %1110
  %1117 = fadd fast float %1115, %1116
  %1118 = call float @dx.op.unary.f32(i32 24, float %1117)  ; Sqrt(value)
  %1119 = fmul fast float %1118, 5.000000e-01
  br i1 %547, label %1212, label %1120, !dx.controlflow.hints !60

; <label>:1120                                    ; preds = %991
  %1121 = fsub fast float %373, %365
  %1122 = fsub fast float %374, %366
  %1123 = fsub fast float %375, %367
  %1124 = fsub fast float %1028, %1121
  %1125 = fsub fast float %1029, %1122
  %1126 = fsub fast float %1030, %1123
  %1127 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1125, float %1126, float %1124, float %1125, float %1126)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = call float @dx.op.unary.f32(i32 25, float %1127)  ; Rsqrt(value)
  %1129 = fmul fast float %1128, %1124
  %1130 = fmul fast float %1128, %1125
  %1131 = fmul fast float %1128, %1126
  %1132 = fsub fast float %552, %1121
  %1133 = fsub fast float %553, %1122
  %1134 = fsub fast float %554, %1123
  %1135 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %1132, float %1133, float %1134)  ; Dot3(ax,ay,az,bx,by,bz)
  %1136 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %1129, float %1130, float %1131)  ; Dot3(ax,ay,az,bx,by,bz)
  %1137 = fdiv fast float 1.000000e+00, %1136
  %1138 = fmul fast float %1137, %1135
  %1139 = fmul fast float %1138, %1129
  %1140 = fmul fast float %1138, %1130
  %1141 = fmul fast float %1138, %1131
  %1142 = fadd fast float %1139, %1121
  %1143 = fadd fast float %1140, %1122
  %1144 = fadd fast float %1141, %1123
  %1145 = fadd fast float %373, %365
  %1146 = fadd fast float %374, %366
  %1147 = fadd fast float %375, %367
  %1148 = fsub fast float %1028, %1145
  %1149 = fsub fast float %1029, %1146
  %1150 = fsub fast float %1030, %1147
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1148, float %1149, float %1150, float %1148, float %1149, float %1150)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = call float @dx.op.unary.f32(i32 25, float %1151)  ; Rsqrt(value)
  %1153 = fmul fast float %1152, %1148
  %1154 = fmul fast float %1152, %1149
  %1155 = fmul fast float %1152, %1150
  %1156 = fsub fast float %552, %1145
  %1157 = fsub fast float %553, %1146
  %1158 = fsub fast float %554, %1147
  %1159 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %1156, float %1157, float %1158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %1153, float %1154, float %1155)  ; Dot3(ax,ay,az,bx,by,bz)
  %1161 = fdiv fast float 1.000000e+00, %1160
  %1162 = fmul fast float %1161, %1159
  %1163 = fmul fast float %1162, %1153
  %1164 = fmul fast float %1162, %1154
  %1165 = fmul fast float %1162, %1155
  %1166 = fadd fast float %1163, %1145
  %1167 = fadd fast float %1164, %1146
  %1168 = fadd fast float %1165, %1147
  %1169 = fmul fast float %1142, %498
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %504, float %1169)  ; FMad(a,b,c)
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1144, float %510, float %1170)  ; FMad(a,b,c)
  %1172 = fadd fast float %1171, %516
  %1173 = fmul fast float %1142, %499
  %1174 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %505, float %1173)  ; FMad(a,b,c)
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1144, float %511, float %1174)  ; FMad(a,b,c)
  %1176 = fadd fast float %1175, %517
  %1177 = fmul fast float %1142, %501
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %507, float %1177)  ; FMad(a,b,c)
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1144, float %513, float %1178)  ; FMad(a,b,c)
  %1180 = fadd fast float %1179, %519
  %1181 = fmul fast float %1166, %498
  %1182 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %504, float %1181)  ; FMad(a,b,c)
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %510, float %1182)  ; FMad(a,b,c)
  %1184 = fadd fast float %1183, %516
  %1185 = fmul fast float %1166, %499
  %1186 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %505, float %1185)  ; FMad(a,b,c)
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %511, float %1186)  ; FMad(a,b,c)
  %1188 = fadd fast float %1187, %517
  %1189 = fmul fast float %1166, %501
  %1190 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %507, float %1189)  ; FMad(a,b,c)
  %1191 = call float @dx.op.tertiary.f32(i32 46, float %1168, float %513, float %1190)  ; FMad(a,b,c)
  %1192 = fadd fast float %1191, %519
  %1193 = fdiv fast float 1.000000e+00, %1180
  %1194 = fmul fast float %1193, %1172
  %1195 = fmul fast float %1193, %1176
  %1196 = fdiv fast float 1.000000e+00, %1192
  %1197 = fmul fast float %1196, %1184
  %1198 = fmul fast float %1196, %1188
  %1199 = fsub fast float %1197, %1194
  %1200 = fsub fast float %1198, %1195
  %1201 = call float @dx.op.dot2.f32(i32 54, float %1199, float %1200, float %1199, float %1200)  ; Dot2(ax,ay,bx,by)
  %1202 = call float @dx.op.unary.f32(i32 25, float %1201)  ; Rsqrt(value)
  %1203 = fmul fast float %1199, %1202
  %1204 = fmul fast float %1200, %1202
  %1205 = fmul fast float %1199, %1199
  %1206 = fmul fast float %1200, %1200
  %1207 = fadd fast float %1205, %1206
  %1208 = call float @dx.op.unary.f32(i32 24, float %1207)  ; Sqrt(value)
  %1209 = fmul fast float %1208, 5.000000e-01
  %1210 = fcmp fast olt float %1209, %1119
  br i1 %1210, label %1211, label %1212, !dx.controlflow.hints !61

; <label>:1211                                    ; preds = %1120
  br label %1212

; <label>:1212                                    ; preds = %1211, %1120, %991
  %1213 = phi float [ %1119, %991 ], [ %1209, %1211 ], [ %1119, %1120 ]
  %1214 = phi float [ %1119, %991 ], [ %1119, %1211 ], [ %1209, %1120 ]
  %1215 = phi float [ %1113, %991 ], [ %1113, %1211 ], [ %1203, %1120 ]
  %1216 = phi float [ %1114, %991 ], [ %1114, %1211 ], [ %1204, %1120 ]
  %1217 = fsub fast float %1214, %1213
  %1218 = fmul fast float %1215, %1215
  %1219 = fmul fast float %1218, %1217
  %1220 = fadd fast float %1219, %1213
  %1221 = fmul fast float %1215, %1217
  %1222 = fmul fast float %1221, %1216
  %1223 = fmul fast float %1216, %1216
  %1224 = fmul fast float %1223, %1217
  %1225 = fadd fast float %1224, %1213
  %1226 = fmul fast float %1220, %577
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %576, float %1222, float %1226)  ; FMad(a,b,c)
  %1228 = fmul fast float %1222, %577
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %576, float %1225, float %1228)  ; FMad(a,b,c)
  %1230 = fmul fast float %1220, %578
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %577, float %1222, float %1230)  ; FMad(a,b,c)
  %1232 = fmul fast float %1222, %578
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %577, float %1225, float %1232)  ; FMad(a,b,c)
  br label %1234

; <label>:1234                                    ; preds = %1234, %1212
  %1235 = phi float [ 0.000000e+00, %1212 ], [ %1261, %1234 ]
  %1236 = phi i32 [ 0, %1212 ], [ %1262, %1234 ]
  %1237 = mul i32 %1236, 2
  %1238 = add i32 0, %1237
  %1239 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1238
  %1240 = load float, float* %1239, align 4
  %1241 = mul i32 %1236, 2
  %1242 = add i32 1, %1241
  %1243 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1242
  %1244 = load float, float* %1243, align 4
  %1245 = fmul fast float %1240, %1227
  %1246 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1231, float %1245)  ; FMad(a,b,c)
  %1247 = fmul fast float %1240, %1229
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1233, float %1247)  ; FMad(a,b,c)
  %1249 = fadd fast float %1246, %571
  %1250 = fadd fast float %1248, %572
  %1251 = fmul fast float %1249, %488
  %1252 = fmul fast float %1250, %488
  %1253 = call float @dx.op.binary.f32(i32 35, float %1251, float %484)  ; FMax(a,b)
  %1254 = call float @dx.op.binary.f32(i32 35, float %1252, float %484)  ; FMax(a,b)
  %1255 = call float @dx.op.binary.f32(i32 36, float %1253, float %485)  ; FMin(a,b)
  %1256 = call float @dx.op.binary.f32(i32 36, float %1254, float %485)  ; FMin(a,b)
  %1257 = fadd fast float %1255, %482
  %1258 = fadd fast float %1256, %483
  %1259 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %19, float %1257, float %1258, float %957, float undef, i32 0, i32 0, i32 undef, float %960)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = fadd fast float %1260, %1235
  %1262 = add nuw nsw i32 %1236, 1
  %1263 = icmp eq i32 %1262, 8
  br i1 %1263, label %1264, label %1234

; <label>:1264                                    ; preds = %1234
  %1265 = fmul fast float %1261, 1.250000e-01
  br label %1266

; <label>:1266                                    ; preds = %1264, %974, %623
  %1267 = phi float [ %650, %623 ], [ %1265, %1264 ], [ 1.000000e+00, %974 ]
  %1268 = fadd fast float %1267, -1.000000e+00
  %1269 = fmul fast float %1268, %461
  %1270 = fadd fast float %1269, 1.000000e+00
  %1271 = fmul fast float %1270, %473
  br label %1272

; <label>:1272                                    ; preds = %1266, %440
  %1273 = phi float [ %1271, %1266 ], [ %473, %440 ]
  %1274 = call float @dx.op.binary.f32(i32 36, float %1273, float %1273)  ; FMin(a,b)
  %1275 = call float @dx.op.binary.f32(i32 36, float %1273, float %1274)  ; FMin(a,b)
  %1276 = fcmp fast ogt float %1275, 0x3F10000000000000
  %1277 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1276)  ; WaveAnyTrue(cond)
  %1278 = icmp ugt i32 %216, 63
  br i1 %1278, label %1308, label %1279, !dx.controlflow.hints !64

; <label>:1279                                    ; preds = %1272
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1280 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1280, label %1281, label %1284, !dx.controlflow.hints !65

; <label>:1281                                    ; preds = %1279
  %1282 = zext i1 %1277 to i32
  %1283 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %217
  store i32 %1282, i32 addrspace(3)* %1283, align 4, !tbaa !37
  br label %1284

; <label>:1284                                    ; preds = %1281, %1279
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1285 = icmp eq i32 %216, 32
  br i1 %1285, label %1286, label %1292, !dx.controlflow.hints !66

; <label>:1286                                    ; preds = %1284
  %1287 = xor i32 %217, 1
  %1288 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1287
  %1289 = load i32, i32 addrspace(3)* %1288, align 4, !tbaa !37
  %1290 = icmp ne i32 %1289, 0
  %1291 = or i1 %1277, %1290
  br label %1308

; <label>:1292                                    ; preds = %1284
  %1293 = icmp eq i32 %216, 16
  br i1 %1293, label %1294, label %1308, !dx.controlflow.hints !67

; <label>:1294                                    ; preds = %1292
  %1295 = xor i32 %217, 1
  %1296 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1295
  %1297 = load i32, i32 addrspace(3)* %1296, align 4, !tbaa !37
  %1298 = xor i32 %217, 2
  %1299 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1298
  %1300 = load i32, i32 addrspace(3)* %1299, align 4, !tbaa !37
  %1301 = or i32 %1300, %1297
  %1302 = xor i32 %217, 3
  %1303 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1302
  %1304 = load i32, i32 addrspace(3)* %1303, align 4, !tbaa !37
  %1305 = or i32 %1301, %1304
  %1306 = icmp ne i32 %1305, 0
  %1307 = or i1 %1277, %1306
  br label %1308

; <label>:1308                                    ; preds = %1294, %1292, %1286, %1272
  %1309 = phi i1 [ %1291, %1286 ], [ %1307, %1294 ], [ %1277, %1272 ], [ false, %1292 ]
  %1310 = select i1 %1309, i32 %352, i32 0
  %1311 = or i32 %347, %1310
  %1312 = lshr i32 %198, 5
  %1313 = lshr i32 %199, 5
  %1314 = fcmp fast olt float %1273, 0x3F10000000000000
  %1315 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1314)  ; WaveAllTrue(cond)
  br i1 %1278, label %1347, label %1316, !dx.controlflow.hints !68

; <label>:1316                                    ; preds = %1308
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1317 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1317, label %1318, label %1321, !dx.controlflow.hints !69

; <label>:1318                                    ; preds = %1316
  %1319 = zext i1 %1315 to i32
  %1320 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %217
  store i32 %1319, i32 addrspace(3)* %1320, align 4, !tbaa !37
  br label %1321

; <label>:1321                                    ; preds = %1318, %1316
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1322 = icmp eq i32 %216, 32
  br i1 %1322, label %1323, label %1329, !dx.controlflow.hints !70

; <label>:1323                                    ; preds = %1321
  %1324 = xor i32 %217, 1
  %1325 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1324
  %1326 = load i32, i32 addrspace(3)* %1325, align 4, !tbaa !37
  %1327 = icmp ne i32 %1326, 0
  %1328 = and i1 %1315, %1327
  br label %1347

; <label>:1329                                    ; preds = %1321
  %1330 = icmp eq i32 %216, 16
  br i1 %1330, label %1331, label %1347, !dx.controlflow.hints !71

; <label>:1331                                    ; preds = %1329
  %1332 = xor i32 %217, 1
  %1333 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1332
  %1334 = load i32, i32 addrspace(3)* %1333, align 4, !tbaa !37
  %1335 = icmp ne i32 %1334, 0
  %1336 = and i1 %1315, %1335
  %1337 = xor i32 %217, 2
  %1338 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1337
  %1339 = load i32, i32 addrspace(3)* %1338, align 4, !tbaa !37
  %1340 = icmp ne i32 %1339, 0
  %1341 = and i1 %1336, %1340
  %1342 = xor i32 %217, 3
  %1343 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1342
  %1344 = load i32, i32 addrspace(3)* %1343, align 4, !tbaa !37
  %1345 = icmp ne i32 %1344, 0
  %1346 = and i1 %1341, %1345
  br label %1347

; <label>:1347                                    ; preds = %1331, %1329, %1323, %1308
  %1348 = phi i1 [ %1328, %1323 ], [ %1346, %1331 ], [ %1315, %1308 ], [ false, %1329 ]
  %1349 = fcmp fast ogt float %1273, 0x3FEFFF8000000000
  %1350 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1349)  ; WaveAllTrue(cond)
  br i1 %1278, label %1382, label %1351, !dx.controlflow.hints !68

; <label>:1351                                    ; preds = %1347
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1352 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1352, label %1353, label %1356, !dx.controlflow.hints !69

; <label>:1353                                    ; preds = %1351
  %1354 = zext i1 %1350 to i32
  %1355 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %217
  store i32 %1354, i32 addrspace(3)* %1355, align 4, !tbaa !37
  br label %1356

; <label>:1356                                    ; preds = %1353, %1351
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1357 = icmp eq i32 %216, 32
  br i1 %1357, label %1358, label %1364, !dx.controlflow.hints !70

; <label>:1358                                    ; preds = %1356
  %1359 = xor i32 %217, 1
  %1360 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1359
  %1361 = load i32, i32 addrspace(3)* %1360, align 4, !tbaa !37
  %1362 = icmp ne i32 %1361, 0
  %1363 = and i1 %1350, %1362
  br label %1382

; <label>:1364                                    ; preds = %1356
  %1365 = icmp eq i32 %216, 16
  br i1 %1365, label %1366, label %1382, !dx.controlflow.hints !71

; <label>:1366                                    ; preds = %1364
  %1367 = xor i32 %217, 1
  %1368 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1367
  %1369 = load i32, i32 addrspace(3)* %1368, align 4, !tbaa !37
  %1370 = icmp ne i32 %1369, 0
  %1371 = and i1 %1350, %1370
  %1372 = xor i32 %217, 2
  %1373 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1372
  %1374 = load i32, i32 addrspace(3)* %1373, align 4, !tbaa !37
  %1375 = icmp ne i32 %1374, 0
  %1376 = and i1 %1371, %1375
  %1377 = xor i32 %217, 3
  %1378 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1377
  %1379 = load i32, i32 addrspace(3)* %1378, align 4, !tbaa !37
  %1380 = icmp ne i32 %1379, 0
  %1381 = and i1 %1376, %1380
  br label %1382

; <label>:1382                                    ; preds = %1366, %1364, %1358, %1347
  %1383 = phi i1 [ %1363, %1358 ], [ %1381, %1366 ], [ %1350, %1347 ], [ false, %1364 ]
  %1384 = or i1 %1348, %1383
  %1385 = lshr i32 %199, 1
  %1386 = and i32 %1385, 8
  %1387 = lshr i32 %198, 2
  %1388 = and i32 %1387, 4
  %1389 = or i32 %1388, %38
  %1390 = or i32 %1389, %1386
  %1391 = icmp eq i32 %25, 0
  br i1 %1391, label %1392, label %1434, !dx.controlflow.hints !72

; <label>:1392                                    ; preds = %1382
  %1393 = shl i32 1, %1390
  %1394 = select i1 %1383, i32 %1393, i32 0
  %1395 = shl i32 65536, %1390
  %1396 = select i1 %1348, i32 %1395, i32 0
  %1397 = or i32 %1394, %1396
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1401, label %1399, !dx.controlflow.hints !73

; <label>:1399                                    ; preds = %1392
  %1400 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1312, i32 %1313, i32 %350, i32 %1397)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1401

; <label>:1401                                    ; preds = %1399, %1392
  br i1 %1384, label %1431, label %1402

; <label>:1402                                    ; preds = %1401
  br label %1403

; <label>:1403                                    ; preds = %1428, %1402
  %1404 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1312, i32 %1313, i32 %350, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1405 = and i32 %1404, 3
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1407, label %1428, !dx.controlflow.hints !74

; <label>:1407                                    ; preds = %1403
  %1408 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.i32 %1409, 3
  %1411 = call i32 @dx.op.binary.i32(i32 40, i32 %1410, i32 %1408)  ; UMin(a,b)
  %1412 = extractvalue %dx.types.CBufRet.i32 %1409, 2
  %1413 = udiv i32 %1411, %1412
  %1414 = urem i32 %1411, %1412
  %1415 = extractvalue %dx.types.CBufRet.i32 %1409, 1
  %1416 = urem i32 %1414, %1415
  %1417 = udiv i32 %1414, %1415
  %1418 = shl i32 %1416, 6
  %1419 = and i32 %1418, 32704
  %1420 = shl i32 %1417, 15
  %1421 = and i32 %1420, 8355840
  %1422 = shl i32 %1413, 23
  %1423 = and i32 %1422, 2139095040
  %1424 = or i32 %1423, %1419
  %1425 = or i32 %1424, %1421
  %1426 = or i32 %1425, 3
  %1427 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1312, i32 %1313, i32 %350, i32 %1426)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1431

; <label>:1428                                    ; preds = %1403
  %1429 = icmp eq i32 %1405, 3
  br i1 %1429, label %1430, label %1403, !dx.controlflow.hints !75

; <label>:1430                                    ; preds = %1428
  br label %1431

; <label>:1431                                    ; preds = %1430, %1407, %1401
  %1432 = phi i32 [ 0, %1401 ], [ %1426, %1407 ], [ %1404, %1430 ]
  br i1 %219, label %1434, label %1433, !dx.controlflow.hints !76

; <label>:1433                                    ; preds = %1431
  store i32 %1432, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1434

; <label>:1434                                    ; preds = %1433, %1431, %1382
  %1435 = phi i32 [ %1432, %1431 ], [ %1432, %1433 ], [ 0, %1382 ]
  br i1 %219, label %1436, label %1438, !dx.controlflow.hints !77

; <label>:1436                                    ; preds = %1434
  %1437 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1435)  ; WaveReadLaneFirst(value)
  br label %1440

; <label>:1438                                    ; preds = %1434
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1439 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1440

; <label>:1440                                    ; preds = %1438, %1436
  %1441 = phi i32 [ %1439, %1438 ], [ %1437, %1436 ]
  br i1 %1384, label %1463, label %1442, !dx.controlflow.hints !78

; <label>:1442                                    ; preds = %1440
  %1443 = lshr i32 %198, 1
  %1444 = and i32 %1443, 15
  %1445 = and i32 %1385, 15
  %1446 = and i32 %198, 1
  %1447 = shl i32 %199, 1
  %1448 = and i32 %1447, 2
  %1449 = or i32 %1448, %1446
  %1450 = lshr i32 %1441, 2
  %1451 = and i32 %1450, 8176
  %1452 = lshr i32 %1441, 11
  %1453 = and i32 %1452, 4080
  %1454 = or i32 %1451, %1444
  %1455 = or i32 %1453, %1445
  %1456 = lshr i32 %1441, 21
  %1457 = and i32 %1456, 1020
  %1458 = or i32 %1449, %1457
  %1459 = fmul fast float %1273, 2.550000e+02
  %1460 = fadd fast float %1459, %193
  %1461 = call float @dx.op.unary.f32(i32 27, float %1460)  ; Round_ni(value)
  %1462 = fmul fast float %1461, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1454, i32 %1455, i32 %1458, float %1462, float %1462, float %1462, float %1462, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1463

; <label>:1463                                    ; preds = %1442, %1440
  %1464 = icmp eq i32 %348, %352
  br i1 %1464, label %1465, label %346, !llvm.loop !79

; <label>:1465                                    ; preds = %1463
  br label %1466

; <label>:1466                                    ; preds = %1465, %342
  %1467 = phi i32 [ 0, %342 ], [ %1311, %1465 ]
  %1468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.i32 %1468, 0
  %1470 = call i32 @dx.op.tertiary.i32(i32 49, i32 %204, i32 %1469, i32 %283)  ; UMad(a,b,c)
  %1471 = shl i32 %1470, 2
  %1472 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1471, i32 undef, i32 undef, i32 %1467)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1473 = add i32 %283, 1
  %1474 = icmp ugt i32 %1473, %279
  br i1 %1474, label %1475, label %282

; <label>:1475                                    ; preds = %1466
  br label %1476

; <label>:1476                                    ; preds = %1475, %275, %59
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
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
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
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}

