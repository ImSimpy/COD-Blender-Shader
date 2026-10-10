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
; shader hash: c0389982ae46aa39bbecaa74712b2916
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
  br i1 %256, label %1018, label %257, !dx.controlflow.hints !41

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
  br i1 %283, label %1018, label %284

; <label>:284                                     ; preds = %257
  br label %285

; <label>:285                                     ; preds = %1008, %284
  %286 = phi i32 [ %1015, %1008 ], [ %280, %284 ]
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
  br i1 %315, label %1008, label %316

; <label>:316                                     ; preds = %313
  br label %317

; <label>:317                                     ; preds = %1005, %316
  %318 = phi i32 [ %837, %1005 ], [ 0, %316 ]
  %319 = phi i32 [ %324, %1005 ], [ %314, %316 ]
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
  %432 = select i1 %363, float %431, float 1.000000e+00
  %433 = fmul fast float %382, %347
  %434 = fsub fast float 1.000000e+00, %433
  %435 = fmul fast float %434, %353
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, %432
  %438 = fmul fast float %437, 2.000000e+00
  %439 = fsub fast float 3.000000e+00, %438
  %440 = fmul fast float %428, %412
  %441 = fmul fast float %437, %437
  %442 = fmul fast float %441, %440
  %443 = fmul fast float %442, %439
  %444 = icmp ne i32 %361, 255
  %445 = call float @dx.op.binary.f32(i32 36, float %443, float %443)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float %443, float %445)  ; FMin(a,b)
  %447 = fcmp fast ogt float %446, 0.000000e+00
  %448 = and i1 %444, %447
  br i1 %448, label %449, label %548, !dx.controlflow.hints !44

; <label>:449                                     ; preds = %411
  %450 = select i1 %363, float 1.000000e+00, float %431
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
  %466 = add nuw nsw i32 %451, 48
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = add nuw nsw i32 %451, 64
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  %478 = add nuw nsw i32 %451, 80
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = extractvalue %dx.types.ResRet.f32 %479, 3
  %484 = add nuw nsw i32 %451, 96
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = extractvalue %dx.types.ResRet.f32 %485, 2
  %489 = extractvalue %dx.types.ResRet.f32 %485, 3
  %490 = bitcast float %460 to i32
  %491 = fmul fast float %465, %180
  %492 = fmul fast float %465, %181
  %493 = fmul fast float %465, %182
  %494 = fadd fast float %491, %134
  %495 = fadd fast float %492, %135
  %496 = fadd fast float %493, %136
  %497 = fmul fast float %494, %468
  %498 = call float @dx.op.tertiary.f32(i32 46, float %495, float %474, float %497)  ; FMad(a,b,c)
  %499 = call float @dx.op.tertiary.f32(i32 46, float %496, float %480, float %498)  ; FMad(a,b,c)
  %500 = fadd fast float %499, %486
  %501 = fmul fast float %494, %469
  %502 = call float @dx.op.tertiary.f32(i32 46, float %495, float %475, float %501)  ; FMad(a,b,c)
  %503 = call float @dx.op.tertiary.f32(i32 46, float %496, float %481, float %502)  ; FMad(a,b,c)
  %504 = fadd fast float %503, %487
  %505 = fmul fast float %494, %470
  %506 = call float @dx.op.tertiary.f32(i32 46, float %495, float %476, float %505)  ; FMad(a,b,c)
  %507 = call float @dx.op.tertiary.f32(i32 46, float %496, float %482, float %506)  ; FMad(a,b,c)
  %508 = fadd fast float %507, %488
  %509 = fmul fast float %494, %471
  %510 = call float @dx.op.tertiary.f32(i32 46, float %495, float %477, float %509)  ; FMad(a,b,c)
  %511 = call float @dx.op.tertiary.f32(i32 46, float %496, float %483, float %510)  ; FMad(a,b,c)
  %512 = fadd fast float %511, %489
  %513 = fdiv fast float %500, %512
  %514 = fdiv fast float %504, %512
  %515 = fdiv fast float %508, %512
  %516 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %515)  ; FMax(a,b)
  %517 = fmul fast float %252, 0x401921FB60000000
  %518 = call float @dx.op.unary.f32(i32 13, float %517)  ; Sin(value)
  %519 = call float @dx.op.unary.f32(i32 12, float %517)  ; Cos(value)
  %520 = fsub fast float -0.000000e+00, %518
  %521 = fmul fast float %455, 5.000000e-01
  %522 = call float @dx.op.dot2.f32(i32 54, float %252, float %252, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = fmul fast float %523, 0x404A7DD040000000
  %525 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %526 = fmul fast float %525, %464
  %527 = fadd fast float %526, %521
  %528 = call float @dx.op.tertiary.f32(i32 46, float %527, float %520, float 0.000000e+00)  ; FMad(a,b,c)
  %529 = call float @dx.op.tertiary.f32(i32 46, float %527, float %519, float 0.000000e+00)  ; FMad(a,b,c)
  %530 = fadd fast float %528, %513
  %531 = fadd fast float %529, %514
  %532 = fmul fast float %530, %459
  %533 = fmul fast float %531, %459
  %534 = call float @dx.op.binary.f32(i32 35, float %532, float %455)  ; FMax(a,b)
  %535 = call float @dx.op.binary.f32(i32 35, float %533, float %455)  ; FMax(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float %534, float %456)  ; FMin(a,b)
  %537 = call float @dx.op.binary.f32(i32 36, float %535, float %456)  ; FMin(a,b)
  %538 = fadd fast float %536, %453
  %539 = fadd fast float %537, %454
  %540 = uitofp i32 %490 to float
  %541 = fadd fast float %516, %463
  %542 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %19, float %538, float %539, float %540, float undef, i32 0, i32 0, i32 undef, float %541)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = fadd fast float %543, -1.000000e+00
  %545 = fmul fast float %544, %450
  %546 = fadd fast float %545, 1.000000e+00
  %547 = fmul fast float %546, %443
  br label %548

; <label>:548                                     ; preds = %449, %411
  %549 = phi float [ %547, %449 ], [ %443, %411 ]
  %550 = call float @dx.op.binary.f32(i32 36, float %549, float %549)  ; FMin(a,b)
  %551 = call float @dx.op.binary.f32(i32 36, float %549, float %550)  ; FMin(a,b)
  %552 = fcmp fast ogt float %551, 0.000000e+00
  %553 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %384, float %385, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %554 = fcmp fast ogt float %553, 0.000000e+00
  %555 = and i1 %552, %554
  br i1 %555, label %556, label %825, !dx.controlflow.hints !45

; <label>:556                                     ; preds = %548
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 1
  %561 = select i1 %72, float %558, float %560
  %562 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %563 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %564 = select i1 %72, float %562, float %563
  %565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.i32 %565, 0
  %567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.i32 %567, 0
  %569 = select i1 %72, i32 %566, i32 %568
  %570 = fcmp fast olt float %561, 5.000000e-01
  %571 = icmp eq i32 %569, 0
  %572 = or i1 %570, %571
  br i1 %572, label %820, label %573, !dx.controlflow.hints !46

; <label>:573                                     ; preds = %556
  %574 = fsub fast float %344, %134
  %575 = fsub fast float %345, %135
  %576 = fsub fast float %346, %136
  %577 = fmul fast float %574, %574
  %578 = fmul fast float %575, %575
  %579 = fadd fast float %577, %578
  %580 = fmul fast float %576, %576
  %581 = fadd fast float %579, %580
  %582 = call float @dx.op.unary.f32(i32 24, float %581)  ; Sqrt(value)
  %583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.i32 %583, 0
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %561, %341
  %587 = fdiv fast float %586, %582
  %588 = call float @dx.op.binary.f32(i32 36, float %587, float 1.000000e+01)  ; FMin(a,b)
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %593 = extractvalue %dx.types.CBufRet.f32 %589, 3
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %597 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %598 = extractvalue %dx.types.CBufRet.f32 %594, 3
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %601 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %602 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %603 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = extractvalue %dx.types.CBufRet.f32 %604, 1
  %607 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %608 = extractvalue %dx.types.CBufRet.f32 %604, 3
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 0
  %611 = extractvalue %dx.types.CBufRet.f32 %609, 1
  %612 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %613 = extractvalue %dx.types.CBufRet.f32 %609, 3
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 0
  %616 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %617 = extractvalue %dx.types.CBufRet.f32 %614, 2
  %618 = extractvalue %dx.types.CBufRet.f32 %614, 3
  %619 = select i1 %72, float %590, float %605
  %620 = select i1 %72, float %595, float %610
  %621 = select i1 %72, float %600, float %615
  %622 = select i1 %72, float %591, float %606
  %623 = select i1 %72, float %596, float %611
  %624 = select i1 %72, float %601, float %616
  %625 = select i1 %72, float %592, float %607
  %626 = select i1 %72, float %597, float %612
  %627 = select i1 %72, float %602, float %617
  %628 = select i1 %72, float %593, float %608
  %629 = select i1 %72, float %598, float %613
  %630 = select i1 %72, float %603, float %618
  %631 = fmul fast float %253, 0x401061CAC0000000
  %632 = fmul fast float %253, 0x4023E1D7E0000000
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = extractvalue %dx.types.CBufRet.f32 %633, 1
  %636 = extractvalue %dx.types.CBufRet.f32 %633, 2
  %637 = extractvalue %dx.types.CBufRet.f32 %633, 3
  %638 = fsub fast float -0.000000e+00, %384
  %639 = fmul fast float %386, %638
  %640 = fmul fast float %384, %638
  %641 = fmul fast float %385, %385
  %642 = fsub fast float %640, %641
  %643 = fdiv fast float 1.000000e+00, %79
  %644 = fmul fast float %636, %68
  %645 = fmul fast float %637, %69
  %646 = fmul fast float %561, %384
  %647 = fmul fast float %561, %386
  %648 = fadd fast float %646, %134
  %649 = fadd fast float %647, %136
  %650 = fadd fast float %632, 5.000000e-01
  %651 = call float @dx.op.unary.f32(i32 22, float %650)  ; Frc(value)
  %652 = bitcast float %651 to i32
  %653 = ashr i32 %652, 1
  %654 = add nsw i32 %653, 532487669
  %655 = bitcast i32 %654 to float
  %656 = fmul fast float %655, %588
  %657 = fadd fast float %631, 5.000000e-01
  %658 = call float @dx.op.unary.f32(i32 22, float %657)  ; Frc(value)
  %659 = fmul fast float %658, 0x401921FB60000000
  %660 = call float @dx.op.unary.f32(i32 12, float %659)  ; Cos(value)
  %661 = fmul fast float %660, %660
  %662 = fsub fast float 1.000000e+00, %661
  %663 = bitcast float %662 to i32
  %664 = ashr i32 %663, 1
  %665 = add nsw i32 %664, 532487669
  %666 = bitcast i32 %665 to float
  %667 = fmul fast float %656, %660
  %668 = fmul fast float %667, %385
  %669 = fmul fast float %667, %638
  %670 = fadd fast float %648, %668
  %671 = fmul fast float %666, %656
  %672 = fmul fast float %639, %671
  %673 = fmul fast float %671, %386
  %674 = fmul fast float %671, %642
  %675 = fsub fast float %670, %672
  %676 = fadd fast float %673, %561
  %677 = fmul fast float %676, %385
  %678 = fadd fast float %669, %135
  %679 = fadd fast float %678, %677
  %680 = fadd fast float %649, %674
  %681 = fmul fast float %675, %619
  %682 = call float @dx.op.tertiary.f32(i32 46, float %679, float %622, float %681)  ; FMad(a,b,c)
  %683 = call float @dx.op.tertiary.f32(i32 46, float %680, float %625, float %682)  ; FMad(a,b,c)
  %684 = fadd fast float %683, %628
  %685 = fmul fast float %675, %620
  %686 = call float @dx.op.tertiary.f32(i32 46, float %679, float %623, float %685)  ; FMad(a,b,c)
  %687 = call float @dx.op.tertiary.f32(i32 46, float %680, float %626, float %686)  ; FMad(a,b,c)
  %688 = fadd fast float %687, %629
  %689 = fmul fast float %675, %621
  %690 = call float @dx.op.tertiary.f32(i32 46, float %679, float %624, float %689)  ; FMad(a,b,c)
  %691 = call float @dx.op.tertiary.f32(i32 46, float %680, float %627, float %690)  ; FMad(a,b,c)
  %692 = fadd fast float %691, %630
  %693 = fdiv fast float 1.000000e+00, %692
  %694 = fmul fast float %684, 5.000000e-01
  %695 = fmul fast float %688, -5.000000e-01
  %696 = fmul fast float %694, %693
  %697 = fmul fast float %695, %693
  %698 = fsub fast float 5.000000e-01, %644
  %699 = fadd fast float %698, %696
  %700 = fsub fast float 5.000000e-01, %645
  %701 = fadd fast float %700, %697
  %702 = fsub fast float %693, %643
  %703 = call float @dx.op.dot2.f32(i32 54, float %699, float %701, float %699, float %701)  ; Dot2(ax,ay,bx,by)
  %704 = call float @dx.op.binary.f32(i32 35, float %703, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %705 = call float @dx.op.dot2.f32(i32 54, float %634, float %635, float %634, float %635)  ; Dot2(ax,ay,bx,by)
  %706 = fmul fast float %705, %704
  %707 = call float @dx.op.unary.f32(i32 25, float %706)  ; Rsqrt(value)
  %708 = fmul fast float %707, %699
  %709 = fmul fast float %707, %701
  %710 = fadd fast float %708, %644
  %711 = fadd fast float %709, %645
  %712 = fmul fast float %699, %634
  %713 = fmul fast float %701, %635
  %714 = fmul fast float %712, %712
  %715 = fmul fast float %713, %713
  %716 = fadd fast float %714, %715
  %717 = call float @dx.op.unary.f32(i32 24, float %716)  ; Sqrt(value)
  %718 = fdiv fast float 1.000000e+00, %717
  %719 = fmul fast float %717, 3.906250e-03
  %720 = fmul fast float %239, 0x3F70624DE0000000
  %721 = fadd fast float %720, 0x3F70624DE0000000
  %722 = icmp sgt i32 %569, -1
  br i1 %722, label %723, label %785

; <label>:723                                     ; preds = %573
  br label %724

; <label>:724                                     ; preds = %781, %723
  %725 = phi float [ %756, %781 ], [ %79, %723 ]
  %726 = phi float [ %743, %781 ], [ %79, %723 ]
  %727 = phi float [ %726, %781 ], [ %79, %723 ]
  %728 = phi i32 [ %782, %781 ], [ 0, %723 ]
  %729 = sitofp i32 %728 to float
  %730 = fadd fast float %253, 5.000000e-01
  %731 = call float @dx.op.unary.f32(i32 22, float %730)  ; Frc(value)
  %732 = fadd fast float %729, %731
  %733 = sitofp i32 %569 to float
  %734 = fdiv fast float %732, %733
  %735 = fmul fast float %734, %734
  %736 = call float @dx.op.binary.f32(i32 36, float %735, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %737 = fmul fast float %736, %699
  %738 = fmul fast float %736, %701
  %739 = fmul fast float %736, %702
  %740 = fadd fast float %737, %710
  %741 = fadd fast float %738, %711
  %742 = fadd fast float %739, %643
  %743 = fdiv fast float 1.000000e+00, %742
  %744 = icmp ne i32 %584, 0
  %745 = fmul fast float %719, %736
  %746 = call float @dx.op.binary.f32(i32 36, float %745, float %585)  ; FMin(a,b)
  %747 = select i1 %744, float %746, float 0.000000e+00
  %748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %740, float %741, float undef, float undef, i32 0, i32 0, i32 undef, float %747)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = fcmp fast ogt float %749, -1.000000e+00
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 1
  %753 = select i1 %750, float %752, float 1.000000e+00
  %754 = fadd fast float %749, 1.000000e+00
  %755 = fmul fast float %753, %754
  %756 = call float @dx.op.unary.f32(i32 6, float %755)  ; FAbs(value)
  %757 = fmul fast float %756, %721
  %758 = fsub fast float %743, %756
  %759 = fsub fast float %758, %757
  %760 = fcmp fast ogt float %759, 0.000000e+00
  %761 = fcmp fast ogt float %564, 0.000000e+00
  br i1 %761, label %762, label %765, !dx.controlflow.hints !47

; <label>:762                                     ; preds = %724
  %763 = fsub fast float %743, %727
  %764 = call float @dx.op.binary.f32(i32 35, float %763, float %564)  ; FMax(a,b)
  br label %765

; <label>:765                                     ; preds = %762, %724
  %766 = phi float [ %764, %762 ], [ %561, %724 ]
  %767 = fcmp fast olt float %759, %766
  %768 = fcmp uge float %749, -1.000000e+00
  %769 = or i1 %72, %768
  %770 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %771 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  %772 = fcmp fast oeq float %740, %770
  %773 = fcmp fast oeq float %741, %771
  %774 = and i1 %772, %773
  %775 = and i1 %769, %774
  %776 = and i1 %760, %767
  %777 = and i1 %776, %775
  %778 = fcmp fast ogt float %736, %718
  %779 = and i1 %778, %777
  %780 = zext i1 %779 to i32
  br i1 %779, label %784, label %781, !dx.controlflow.hints !48

; <label>:781                                     ; preds = %765
  %782 = add nuw nsw i32 %728, 1
  %783 = icmp slt i32 %728, %569
  br i1 %783, label %724, label %784

; <label>:784                                     ; preds = %781, %765
  br label %785

; <label>:785                                     ; preds = %784, %573
  %786 = phi i32 [ 0, %573 ], [ %780, %784 ]
  %787 = phi float [ %79, %573 ], [ %756, %784 ]
  %788 = phi float [ %79, %573 ], [ %725, %784 ]
  %789 = phi float [ %79, %573 ], [ %743, %784 ]
  %790 = phi float [ %79, %573 ], [ %726, %784 ]
  %791 = fsub fast float %790, %788
  %792 = fsub fast float %789, %787
  %793 = fsub fast float %791, %792
  %794 = fcmp fast une float %793, 0.000000e+00
  %795 = fmul fast float %791, %789
  %796 = fmul fast float %790, %792
  %797 = fsub fast float %795, %796
  %798 = fdiv fast float 1.000000e+00, %793
  %799 = fmul fast float %797, %798
  %800 = select i1 %794, float %799, float %789
  %801 = fdiv fast float 1.000000e+00, %800
  %802 = fsub fast float %801, %643
  %803 = fdiv fast float %802, %702
  %804 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %805 = fmul fast float %804, %699
  %806 = fmul fast float %804, %701
  %807 = fadd fast float %805, %710
  %808 = fadd fast float %806, %711
  %809 = fadd fast float %807, -5.000000e-01
  %810 = fadd fast float %808, -5.000000e-01
  %811 = call float @dx.op.unary.f32(i32 6, float %809)  ; FAbs(value)
  %812 = call float @dx.op.unary.f32(i32 6, float %810)  ; FAbs(value)
  %813 = fadd fast float %811, -5.000000e-01
  %814 = fadd fast float %812, -5.000000e-01
  %815 = call float @dx.op.binary.f32(i32 35, float %813, float %814)  ; FMax(a,b)
  %816 = fcmp fast olt float %815, 0.000000e+00
  %817 = icmp ne i32 %786, 0
  %818 = and i1 %817, %816
  %819 = select i1 %818, float 0.000000e+00, float 1.000000e+00
  br label %820

; <label>:820                                     ; preds = %785, %556
  %821 = phi float [ %819, %785 ], [ 1.000000e+00, %556 ]
  %822 = fmul fast float %821, %549
  %823 = fmul fast float %821, %549
  %824 = fmul fast float %821, %549
  br label %825

; <label>:825                                     ; preds = %820, %548
  %826 = phi float [ %822, %820 ], [ %549, %548 ]
  %827 = phi float [ %823, %820 ], [ %549, %548 ]
  %828 = phi float [ %824, %820 ], [ %549, %548 ]
  %829 = call float @dx.op.binary.f32(i32 36, float %827, float %828)  ; FMin(a,b)
  %830 = call float @dx.op.binary.f32(i32 36, float %826, float %829)  ; FMin(a,b)
  %831 = fcmp fast ogt float %830, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %832 = zext i1 %831 to i32
  %833 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %832 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %834 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !37
  %835 = icmp eq i32 %834, 0
  %836 = select i1 %835, i32 0, i32 %323
  %837 = or i32 %318, %836
  %838 = lshr i32 %258, 5
  %839 = lshr i32 %259, 5
  %840 = fcmp fast olt float %826, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %841 = and i32 %25, 31
  %842 = zext i1 %840 to i32
  %843 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %25
  store i32 %842, i32 addrspace(3)* %843, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %844 = icmp ult i32 %841, 16
  br i1 %844, label %845, label %851, !dx.controlflow.hints !49

; <label>:845                                     ; preds = %825
  %846 = add i32 %25, 16
  %847 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %846
  %848 = load i32, i32 addrspace(3)* %847, align 4, !tbaa !37
  %849 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %850 = and i32 %849, %848
  store i32 %850, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %851

; <label>:851                                     ; preds = %845, %825
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %852 = icmp ult i32 %841, 8
  br i1 %852, label %853, label %859, !dx.controlflow.hints !50

; <label>:853                                     ; preds = %851
  %854 = add i32 %25, 8
  %855 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %854
  %856 = load i32, i32 addrspace(3)* %855, align 4, !tbaa !37
  %857 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %858 = and i32 %857, %856
  store i32 %858, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %859

; <label>:859                                     ; preds = %853, %851
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %860 = icmp ult i32 %841, 4
  br i1 %860, label %861, label %867, !dx.controlflow.hints !51

; <label>:861                                     ; preds = %859
  %862 = add i32 %25, 4
  %863 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %862
  %864 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !37
  %865 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %866 = and i32 %865, %864
  store i32 %866, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %867

; <label>:867                                     ; preds = %861, %859
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %868 = icmp ult i32 %841, 2
  br i1 %868, label %869, label %875, !dx.controlflow.hints !52

; <label>:869                                     ; preds = %867
  %870 = add i32 %25, 2
  %871 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %870
  %872 = load i32, i32 addrspace(3)* %871, align 4, !tbaa !37
  %873 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %874 = and i32 %873, %872
  store i32 %874, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %875

; <label>:875                                     ; preds = %869, %867
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %876 = icmp eq i32 %841, 0
  br i1 %876, label %877, label %883, !dx.controlflow.hints !53

; <label>:877                                     ; preds = %875
  %878 = add i32 %25, 1
  %879 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %878
  %880 = load i32, i32 addrspace(3)* %879, align 4, !tbaa !37
  %881 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %882 = and i32 %881, %880
  store i32 %882, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %883

; <label>:883                                     ; preds = %877, %875
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %884 = and i32 %25, -64
  %885 = or i32 %884, 32
  %886 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %884
  %887 = load i32, i32 addrspace(3)* %886, align 4, !tbaa !37
  %888 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %885
  %889 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !37
  %890 = and i32 %889, %887
  %891 = icmp ne i32 %890, 0
  %892 = fcmp fast ogt float %826, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %893 = zext i1 %892 to i32
  store i32 %893, i32 addrspace(3)* %843, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %844, label %894, label %900, !dx.controlflow.hints !49

; <label>:894                                     ; preds = %883
  %895 = add i32 %25, 16
  %896 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %895
  %897 = load i32, i32 addrspace(3)* %896, align 4, !tbaa !37
  %898 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %899 = and i32 %898, %897
  store i32 %899, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %900

; <label>:900                                     ; preds = %894, %883
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %852, label %901, label %907, !dx.controlflow.hints !50

; <label>:901                                     ; preds = %900
  %902 = add i32 %25, 8
  %903 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %902
  %904 = load i32, i32 addrspace(3)* %903, align 4, !tbaa !37
  %905 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %906 = and i32 %905, %904
  store i32 %906, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %907

; <label>:907                                     ; preds = %901, %900
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %860, label %908, label %914, !dx.controlflow.hints !51

; <label>:908                                     ; preds = %907
  %909 = add i32 %25, 4
  %910 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %909
  %911 = load i32, i32 addrspace(3)* %910, align 4, !tbaa !37
  %912 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %913 = and i32 %912, %911
  store i32 %913, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %914

; <label>:914                                     ; preds = %908, %907
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %868, label %915, label %921, !dx.controlflow.hints !52

; <label>:915                                     ; preds = %914
  %916 = add i32 %25, 2
  %917 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %916
  %918 = load i32, i32 addrspace(3)* %917, align 4, !tbaa !37
  %919 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %920 = and i32 %919, %918
  store i32 %920, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %921

; <label>:921                                     ; preds = %915, %914
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %876, label %922, label %928, !dx.controlflow.hints !53

; <label>:922                                     ; preds = %921
  %923 = add i32 %25, 1
  %924 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %923
  %925 = load i32, i32 addrspace(3)* %924, align 4, !tbaa !37
  %926 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !37
  %927 = and i32 %926, %925
  store i32 %927, i32 addrspace(3)* %843, align 4, !tbaa !37
  br label %928

; <label>:928                                     ; preds = %922, %921
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %929 = load i32, i32 addrspace(3)* %886, align 4, !tbaa !37
  %930 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !37
  %931 = and i32 %930, %929
  %932 = or i32 %931, %890
  %933 = icmp eq i32 %932, 0
  %934 = lshr i32 %259, 1
  %935 = and i32 %934, 8
  %936 = lshr i32 %258, 2
  %937 = and i32 %936, 4
  %938 = or i32 %937, %38
  %939 = or i32 %938, %935
  br i1 %311, label %940, label %982, !dx.controlflow.hints !54

; <label>:940                                     ; preds = %928
  %941 = icmp ne i32 %931, 0
  %942 = shl i32 1, %939
  %943 = select i1 %941, i32 %942, i32 0
  %944 = shl i32 65536, %939
  %945 = select i1 %891, i32 %944, i32 0
  %946 = or i32 %943, %945
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %950, label %948, !dx.controlflow.hints !55

; <label>:948                                     ; preds = %940
  %949 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %838, i32 %839, i32 %321, i32 %946)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %950

; <label>:950                                     ; preds = %948, %940
  br i1 %933, label %951, label %980

; <label>:951                                     ; preds = %950
  br label %952

; <label>:952                                     ; preds = %977, %951
  %953 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %838, i32 %839, i32 %321, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %954 = and i32 %953, 3
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %977, !dx.controlflow.hints !56

; <label>:956                                     ; preds = %952
  %957 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.i32 %958, 3
  %960 = call i32 @dx.op.binary.i32(i32 40, i32 %959, i32 %957)  ; UMin(a,b)
  %961 = extractvalue %dx.types.CBufRet.i32 %958, 2
  %962 = udiv i32 %960, %961
  %963 = urem i32 %960, %961
  %964 = extractvalue %dx.types.CBufRet.i32 %958, 1
  %965 = urem i32 %963, %964
  %966 = udiv i32 %963, %964
  %967 = shl i32 %965, 6
  %968 = and i32 %967, 32704
  %969 = shl i32 %966, 15
  %970 = and i32 %969, 8355840
  %971 = shl i32 %962, 23
  %972 = and i32 %971, 2139095040
  %973 = or i32 %972, %968
  %974 = or i32 %973, %970
  %975 = or i32 %974, 3
  %976 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %838, i32 %839, i32 %321, i32 %975)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %980

; <label>:977                                     ; preds = %952
  %978 = icmp eq i32 %954, 3
  br i1 %978, label %979, label %952, !dx.controlflow.hints !57

; <label>:979                                     ; preds = %977
  br label %980

; <label>:980                                     ; preds = %979, %956, %950
  %981 = phi i32 [ 0, %950 ], [ %975, %956 ], [ %953, %979 ]
  store i32 %981, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %982

; <label>:982                                     ; preds = %980, %928
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %983 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br i1 %933, label %984, label %1005, !dx.controlflow.hints !58

; <label>:984                                     ; preds = %982
  %985 = lshr i32 %258, 1
  %986 = and i32 %985, 15
  %987 = and i32 %934, 15
  %988 = and i32 %258, 1
  %989 = shl i32 %259, 1
  %990 = and i32 %989, 2
  %991 = or i32 %990, %988
  %992 = lshr i32 %983, 2
  %993 = and i32 %992, 8176
  %994 = lshr i32 %983, 11
  %995 = and i32 %994, 4080
  %996 = or i32 %993, %986
  %997 = or i32 %995, %987
  %998 = lshr i32 %983, 21
  %999 = and i32 %998, 1020
  %1000 = or i32 %991, %999
  %1001 = fmul fast float %826, 2.550000e+02
  %1002 = fadd fast float %1001, %252
  %1003 = call float @dx.op.unary.f32(i32 27, float %1002)  ; Round_ni(value)
  %1004 = fmul fast float %1003, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %996, i32 %997, i32 %1000, float %1004, float %1004, float %1004, float %1004, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1005

; <label>:1005                                    ; preds = %984, %982
  %1006 = icmp eq i32 %319, %323
  br i1 %1006, label %1007, label %317, !llvm.loop !59

; <label>:1007                                    ; preds = %1005
  br label %1008

; <label>:1008                                    ; preds = %1007, %313
  %1009 = phi i32 [ 0, %313 ], [ %837, %1007 ]
  %1010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.i32 %1010, 0
  %1012 = call i32 @dx.op.tertiary.i32(i32 49, i32 %264, i32 %1011, i32 %286)  ; UMad(a,b,c)
  %1013 = shl i32 %1012, 2
  %1014 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1013, i32 undef, i32 undef, i32 %1009)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1015 = add i32 %286, 1
  %1016 = icmp ugt i32 %1015, %282
  br i1 %1016, label %1017, label %285

; <label>:1017                                    ; preds = %1008
  br label %1018

; <label>:1018                                    ; preds = %1017, %257, %59
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
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
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
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}

