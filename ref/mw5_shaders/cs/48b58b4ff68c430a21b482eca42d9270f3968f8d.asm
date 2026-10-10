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
; shader hash: b999d310db6aa95004fe797289da91be
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
  br i1 %256, label %1120, label %257, !dx.controlflow.hints !41

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
  br i1 %340, label %1120, label %341

; <label>:341                                     ; preds = %335
  br label %342

; <label>:342                                     ; preds = %1110, %341
  %343 = phi i32 [ %1117, %1110 ], [ %337, %341 ]
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
  br i1 %404, label %1110, label %405

; <label>:405                                     ; preds = %402
  br label %406

; <label>:406                                     ; preds = %1107, %405
  %407 = phi i32 [ %955, %1107 ], [ 0, %405 ]
  %408 = phi i32 [ %413, %1107 ], [ %403, %405 ]
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
  %521 = select i1 %452, float %520, float 1.000000e+00
  %522 = fmul fast float %471, %436
  %523 = fsub fast float 1.000000e+00, %522
  %524 = fmul fast float %523, %442
  %525 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %526 = fmul fast float %525, %521
  %527 = fmul fast float %526, 2.000000e+00
  %528 = fsub fast float 3.000000e+00, %527
  %529 = fmul fast float %517, %501
  %530 = fmul fast float %526, %526
  %531 = fmul fast float %530, %529
  %532 = fmul fast float %531, %528
  %533 = icmp ne i32 %450, 255
  %534 = call float @dx.op.binary.f32(i32 36, float %532, float %532)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float %532, float %534)  ; FMin(a,b)
  %536 = fcmp fast ogt float %535, 0.000000e+00
  %537 = and i1 %533, %536
  br i1 %537, label %538, label %637, !dx.controlflow.hints !57

; <label>:538                                     ; preds = %500
  %539 = select i1 %452, float 1.000000e+00, float %520
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
  %555 = add nuw nsw i32 %540, 48
  %556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = extractvalue %dx.types.ResRet.f32 %556, 3
  %561 = add nuw nsw i32 %540, 64
  %562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = extractvalue %dx.types.ResRet.f32 %562, 2
  %566 = extractvalue %dx.types.ResRet.f32 %562, 3
  %567 = add nuw nsw i32 %540, 80
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = extractvalue %dx.types.ResRet.f32 %568, 3
  %573 = add nuw nsw i32 %540, 96
  %574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = extractvalue %dx.types.ResRet.f32 %574, 3
  %579 = bitcast float %549 to i32
  %580 = fmul fast float %554, %180
  %581 = fmul fast float %554, %181
  %582 = fmul fast float %554, %182
  %583 = fadd fast float %580, %134
  %584 = fadd fast float %581, %135
  %585 = fadd fast float %582, %136
  %586 = fmul fast float %583, %557
  %587 = call float @dx.op.tertiary.f32(i32 46, float %584, float %563, float %586)  ; FMad(a,b,c)
  %588 = call float @dx.op.tertiary.f32(i32 46, float %585, float %569, float %587)  ; FMad(a,b,c)
  %589 = fadd fast float %588, %575
  %590 = fmul fast float %583, %558
  %591 = call float @dx.op.tertiary.f32(i32 46, float %584, float %564, float %590)  ; FMad(a,b,c)
  %592 = call float @dx.op.tertiary.f32(i32 46, float %585, float %570, float %591)  ; FMad(a,b,c)
  %593 = fadd fast float %592, %576
  %594 = fmul fast float %583, %559
  %595 = call float @dx.op.tertiary.f32(i32 46, float %584, float %565, float %594)  ; FMad(a,b,c)
  %596 = call float @dx.op.tertiary.f32(i32 46, float %585, float %571, float %595)  ; FMad(a,b,c)
  %597 = fadd fast float %596, %577
  %598 = fmul fast float %583, %560
  %599 = call float @dx.op.tertiary.f32(i32 46, float %584, float %566, float %598)  ; FMad(a,b,c)
  %600 = call float @dx.op.tertiary.f32(i32 46, float %585, float %572, float %599)  ; FMad(a,b,c)
  %601 = fadd fast float %600, %578
  %602 = fdiv fast float %589, %601
  %603 = fdiv fast float %593, %601
  %604 = fdiv fast float %597, %601
  %605 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %604)  ; FMax(a,b)
  %606 = fmul fast float %252, 0x401921FB60000000
  %607 = call float @dx.op.unary.f32(i32 13, float %606)  ; Sin(value)
  %608 = call float @dx.op.unary.f32(i32 12, float %606)  ; Cos(value)
  %609 = fsub fast float -0.000000e+00, %607
  %610 = fmul fast float %544, 5.000000e-01
  %611 = call float @dx.op.dot2.f32(i32 54, float %252, float %252, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %612 = call float @dx.op.unary.f32(i32 22, float %611)  ; Frc(value)
  %613 = fmul fast float %612, 0x404A7DD040000000
  %614 = call float @dx.op.unary.f32(i32 22, float %613)  ; Frc(value)
  %615 = fmul fast float %614, %553
  %616 = fadd fast float %615, %610
  %617 = call float @dx.op.tertiary.f32(i32 46, float %616, float %609, float 0.000000e+00)  ; FMad(a,b,c)
  %618 = call float @dx.op.tertiary.f32(i32 46, float %616, float %608, float 0.000000e+00)  ; FMad(a,b,c)
  %619 = fadd fast float %617, %602
  %620 = fadd fast float %618, %603
  %621 = fmul fast float %619, %548
  %622 = fmul fast float %620, %548
  %623 = call float @dx.op.binary.f32(i32 35, float %621, float %544)  ; FMax(a,b)
  %624 = call float @dx.op.binary.f32(i32 35, float %622, float %544)  ; FMax(a,b)
  %625 = call float @dx.op.binary.f32(i32 36, float %623, float %545)  ; FMin(a,b)
  %626 = call float @dx.op.binary.f32(i32 36, float %624, float %545)  ; FMin(a,b)
  %627 = fadd fast float %625, %542
  %628 = fadd fast float %626, %543
  %629 = uitofp i32 %579 to float
  %630 = fadd fast float %605, %552
  %631 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %19, float %627, float %628, float %629, float undef, i32 0, i32 0, i32 undef, float %630)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = fadd fast float %632, -1.000000e+00
  %634 = fmul fast float %633, %539
  %635 = fadd fast float %634, 1.000000e+00
  %636 = fmul fast float %635, %532
  br label %637

; <label>:637                                     ; preds = %538, %500
  %638 = phi float [ %636, %538 ], [ %532, %500 ]
  %639 = call float @dx.op.binary.f32(i32 36, float %638, float %638)  ; FMin(a,b)
  %640 = call float @dx.op.binary.f32(i32 36, float %638, float %639)  ; FMin(a,b)
  %641 = fcmp fast ogt float %640, 0.000000e+00
  %642 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %473, float %474, float %475)  ; Dot3(ax,ay,az,bx,by,bz)
  %643 = fcmp fast ogt float %642, 0.000000e+00
  %644 = and i1 %641, %643
  br i1 %644, label %645, label %914, !dx.controlflow.hints !58

; <label>:645                                     ; preds = %637
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 1
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %650 = select i1 %72, float %647, float %649
  %651 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %652 = extractvalue %dx.types.CBufRet.f32 %648, 2
  %653 = select i1 %72, float %651, float %652
  %654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.i32 %654, 0
  %656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.i32 %656, 0
  %658 = select i1 %72, i32 %655, i32 %657
  %659 = fcmp fast olt float %650, 5.000000e-01
  %660 = icmp eq i32 %658, 0
  %661 = or i1 %659, %660
  br i1 %661, label %909, label %662, !dx.controlflow.hints !59

; <label>:662                                     ; preds = %645
  %663 = fsub fast float %433, %134
  %664 = fsub fast float %434, %135
  %665 = fsub fast float %435, %136
  %666 = fmul fast float %663, %663
  %667 = fmul fast float %664, %664
  %668 = fadd fast float %666, %667
  %669 = fmul fast float %665, %665
  %670 = fadd fast float %668, %669
  %671 = call float @dx.op.unary.f32(i32 24, float %670)  ; Sqrt(value)
  %672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.i32 %672, 0
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %650, %430
  %676 = fdiv fast float %675, %671
  %677 = call float @dx.op.binary.f32(i32 36, float %676, float 1.000000e+01)  ; FMin(a,b)
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %681 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %682 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %685 = extractvalue %dx.types.CBufRet.f32 %683, 1
  %686 = extractvalue %dx.types.CBufRet.f32 %683, 2
  %687 = extractvalue %dx.types.CBufRet.f32 %683, 3
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %691 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %692 = extractvalue %dx.types.CBufRet.f32 %688, 3
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %696 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %697 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %701 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %702 = extractvalue %dx.types.CBufRet.f32 %698, 3
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 0
  %705 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %706 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %707 = extractvalue %dx.types.CBufRet.f32 %703, 3
  %708 = select i1 %72, float %679, float %694
  %709 = select i1 %72, float %684, float %699
  %710 = select i1 %72, float %689, float %704
  %711 = select i1 %72, float %680, float %695
  %712 = select i1 %72, float %685, float %700
  %713 = select i1 %72, float %690, float %705
  %714 = select i1 %72, float %681, float %696
  %715 = select i1 %72, float %686, float %701
  %716 = select i1 %72, float %691, float %706
  %717 = select i1 %72, float %682, float %697
  %718 = select i1 %72, float %687, float %702
  %719 = select i1 %72, float %692, float %707
  %720 = fmul fast float %253, 0x401061CAC0000000
  %721 = fmul fast float %253, 0x4023E1D7E0000000
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %724 = extractvalue %dx.types.CBufRet.f32 %722, 1
  %725 = extractvalue %dx.types.CBufRet.f32 %722, 2
  %726 = extractvalue %dx.types.CBufRet.f32 %722, 3
  %727 = fsub fast float -0.000000e+00, %473
  %728 = fmul fast float %475, %727
  %729 = fmul fast float %473, %727
  %730 = fmul fast float %474, %474
  %731 = fsub fast float %729, %730
  %732 = fdiv fast float 1.000000e+00, %79
  %733 = fmul fast float %725, %68
  %734 = fmul fast float %726, %69
  %735 = fmul fast float %650, %473
  %736 = fmul fast float %650, %475
  %737 = fadd fast float %735, %134
  %738 = fadd fast float %736, %136
  %739 = fadd fast float %721, 5.000000e-01
  %740 = call float @dx.op.unary.f32(i32 22, float %739)  ; Frc(value)
  %741 = bitcast float %740 to i32
  %742 = ashr i32 %741, 1
  %743 = add nsw i32 %742, 532487669
  %744 = bitcast i32 %743 to float
  %745 = fmul fast float %744, %677
  %746 = fadd fast float %720, 5.000000e-01
  %747 = call float @dx.op.unary.f32(i32 22, float %746)  ; Frc(value)
  %748 = fmul fast float %747, 0x401921FB60000000
  %749 = call float @dx.op.unary.f32(i32 12, float %748)  ; Cos(value)
  %750 = fmul fast float %749, %749
  %751 = fsub fast float 1.000000e+00, %750
  %752 = bitcast float %751 to i32
  %753 = ashr i32 %752, 1
  %754 = add nsw i32 %753, 532487669
  %755 = bitcast i32 %754 to float
  %756 = fmul fast float %745, %749
  %757 = fmul fast float %756, %474
  %758 = fmul fast float %756, %727
  %759 = fadd fast float %737, %757
  %760 = fmul fast float %755, %745
  %761 = fmul fast float %728, %760
  %762 = fmul fast float %760, %475
  %763 = fmul fast float %760, %731
  %764 = fsub fast float %759, %761
  %765 = fadd fast float %762, %650
  %766 = fmul fast float %765, %474
  %767 = fadd fast float %758, %135
  %768 = fadd fast float %767, %766
  %769 = fadd fast float %738, %763
  %770 = fmul fast float %764, %708
  %771 = call float @dx.op.tertiary.f32(i32 46, float %768, float %711, float %770)  ; FMad(a,b,c)
  %772 = call float @dx.op.tertiary.f32(i32 46, float %769, float %714, float %771)  ; FMad(a,b,c)
  %773 = fadd fast float %772, %717
  %774 = fmul fast float %764, %709
  %775 = call float @dx.op.tertiary.f32(i32 46, float %768, float %712, float %774)  ; FMad(a,b,c)
  %776 = call float @dx.op.tertiary.f32(i32 46, float %769, float %715, float %775)  ; FMad(a,b,c)
  %777 = fadd fast float %776, %718
  %778 = fmul fast float %764, %710
  %779 = call float @dx.op.tertiary.f32(i32 46, float %768, float %713, float %778)  ; FMad(a,b,c)
  %780 = call float @dx.op.tertiary.f32(i32 46, float %769, float %716, float %779)  ; FMad(a,b,c)
  %781 = fadd fast float %780, %719
  %782 = fdiv fast float 1.000000e+00, %781
  %783 = fmul fast float %773, 5.000000e-01
  %784 = fmul fast float %777, -5.000000e-01
  %785 = fmul fast float %783, %782
  %786 = fmul fast float %784, %782
  %787 = fsub fast float 5.000000e-01, %733
  %788 = fadd fast float %787, %785
  %789 = fsub fast float 5.000000e-01, %734
  %790 = fadd fast float %789, %786
  %791 = fsub fast float %782, %732
  %792 = call float @dx.op.dot2.f32(i32 54, float %788, float %790, float %788, float %790)  ; Dot2(ax,ay,bx,by)
  %793 = call float @dx.op.binary.f32(i32 35, float %792, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %794 = call float @dx.op.dot2.f32(i32 54, float %723, float %724, float %723, float %724)  ; Dot2(ax,ay,bx,by)
  %795 = fmul fast float %794, %793
  %796 = call float @dx.op.unary.f32(i32 25, float %795)  ; Rsqrt(value)
  %797 = fmul fast float %796, %788
  %798 = fmul fast float %796, %790
  %799 = fadd fast float %797, %733
  %800 = fadd fast float %798, %734
  %801 = fmul fast float %788, %723
  %802 = fmul fast float %790, %724
  %803 = fmul fast float %801, %801
  %804 = fmul fast float %802, %802
  %805 = fadd fast float %803, %804
  %806 = call float @dx.op.unary.f32(i32 24, float %805)  ; Sqrt(value)
  %807 = fdiv fast float 1.000000e+00, %806
  %808 = fmul fast float %806, 3.906250e-03
  %809 = fmul fast float %239, 0x3F70624DE0000000
  %810 = fadd fast float %809, 0x3F70624DE0000000
  %811 = icmp sgt i32 %658, -1
  br i1 %811, label %812, label %874

; <label>:812                                     ; preds = %662
  br label %813

; <label>:813                                     ; preds = %870, %812
  %814 = phi float [ %845, %870 ], [ %79, %812 ]
  %815 = phi float [ %832, %870 ], [ %79, %812 ]
  %816 = phi float [ %815, %870 ], [ %79, %812 ]
  %817 = phi i32 [ %871, %870 ], [ 0, %812 ]
  %818 = sitofp i32 %817 to float
  %819 = fadd fast float %253, 5.000000e-01
  %820 = call float @dx.op.unary.f32(i32 22, float %819)  ; Frc(value)
  %821 = fadd fast float %818, %820
  %822 = sitofp i32 %658 to float
  %823 = fdiv fast float %821, %822
  %824 = fmul fast float %823, %823
  %825 = call float @dx.op.binary.f32(i32 36, float %824, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %826 = fmul fast float %825, %788
  %827 = fmul fast float %825, %790
  %828 = fmul fast float %825, %791
  %829 = fadd fast float %826, %799
  %830 = fadd fast float %827, %800
  %831 = fadd fast float %828, %732
  %832 = fdiv fast float 1.000000e+00, %831
  %833 = icmp ne i32 %673, 0
  %834 = fmul fast float %808, %825
  %835 = call float @dx.op.binary.f32(i32 36, float %834, float %674)  ; FMin(a,b)
  %836 = select i1 %833, float %835, float 0.000000e+00
  %837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %829, float %830, float undef, float undef, i32 0, i32 0, i32 undef, float %836)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = fcmp fast ogt float %838, -1.000000e+00
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %842 = select i1 %839, float %841, float 1.000000e+00
  %843 = fadd fast float %838, 1.000000e+00
  %844 = fmul fast float %842, %843
  %845 = call float @dx.op.unary.f32(i32 6, float %844)  ; FAbs(value)
  %846 = fmul fast float %845, %810
  %847 = fsub fast float %832, %845
  %848 = fsub fast float %847, %846
  %849 = fcmp fast ogt float %848, 0.000000e+00
  %850 = fcmp fast ogt float %653, 0.000000e+00
  br i1 %850, label %851, label %854, !dx.controlflow.hints !60

; <label>:851                                     ; preds = %813
  %852 = fsub fast float %832, %816
  %853 = call float @dx.op.binary.f32(i32 35, float %852, float %653)  ; FMax(a,b)
  br label %854

; <label>:854                                     ; preds = %851, %813
  %855 = phi float [ %853, %851 ], [ %650, %813 ]
  %856 = fcmp fast olt float %848, %855
  %857 = fcmp uge float %838, -1.000000e+00
  %858 = or i1 %72, %857
  %859 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %860 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %861 = fcmp fast oeq float %829, %859
  %862 = fcmp fast oeq float %830, %860
  %863 = and i1 %861, %862
  %864 = and i1 %858, %863
  %865 = and i1 %849, %856
  %866 = and i1 %865, %864
  %867 = fcmp fast ogt float %825, %807
  %868 = and i1 %867, %866
  %869 = zext i1 %868 to i32
  br i1 %868, label %873, label %870, !dx.controlflow.hints !61

; <label>:870                                     ; preds = %854
  %871 = add nuw nsw i32 %817, 1
  %872 = icmp slt i32 %817, %658
  br i1 %872, label %813, label %873

; <label>:873                                     ; preds = %870, %854
  br label %874

; <label>:874                                     ; preds = %873, %662
  %875 = phi i32 [ 0, %662 ], [ %869, %873 ]
  %876 = phi float [ %79, %662 ], [ %845, %873 ]
  %877 = phi float [ %79, %662 ], [ %814, %873 ]
  %878 = phi float [ %79, %662 ], [ %832, %873 ]
  %879 = phi float [ %79, %662 ], [ %815, %873 ]
  %880 = fsub fast float %879, %877
  %881 = fsub fast float %878, %876
  %882 = fsub fast float %880, %881
  %883 = fcmp fast une float %882, 0.000000e+00
  %884 = fmul fast float %880, %878
  %885 = fmul fast float %879, %881
  %886 = fsub fast float %884, %885
  %887 = fdiv fast float 1.000000e+00, %882
  %888 = fmul fast float %886, %887
  %889 = select i1 %883, float %888, float %878
  %890 = fdiv fast float 1.000000e+00, %889
  %891 = fsub fast float %890, %732
  %892 = fdiv fast float %891, %791
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = fmul fast float %893, %788
  %895 = fmul fast float %893, %790
  %896 = fadd fast float %894, %799
  %897 = fadd fast float %895, %800
  %898 = fadd fast float %896, -5.000000e-01
  %899 = fadd fast float %897, -5.000000e-01
  %900 = call float @dx.op.unary.f32(i32 6, float %898)  ; FAbs(value)
  %901 = call float @dx.op.unary.f32(i32 6, float %899)  ; FAbs(value)
  %902 = fadd fast float %900, -5.000000e-01
  %903 = fadd fast float %901, -5.000000e-01
  %904 = call float @dx.op.binary.f32(i32 35, float %902, float %903)  ; FMax(a,b)
  %905 = fcmp fast olt float %904, 0.000000e+00
  %906 = icmp ne i32 %875, 0
  %907 = and i1 %906, %905
  %908 = select i1 %907, float 0.000000e+00, float 1.000000e+00
  br label %909

; <label>:909                                     ; preds = %874, %645
  %910 = phi float [ %908, %874 ], [ 1.000000e+00, %645 ]
  %911 = fmul fast float %910, %638
  %912 = fmul fast float %910, %638
  %913 = fmul fast float %910, %638
  br label %914

; <label>:914                                     ; preds = %909, %637
  %915 = phi float [ %911, %909 ], [ %638, %637 ]
  %916 = phi float [ %912, %909 ], [ %638, %637 ]
  %917 = phi float [ %913, %909 ], [ %638, %637 ]
  %918 = call float @dx.op.binary.f32(i32 36, float %916, float %917)  ; FMin(a,b)
  %919 = call float @dx.op.binary.f32(i32 36, float %915, float %918)  ; FMin(a,b)
  %920 = fcmp fast ogt float %919, 0x3F10000000000000
  %921 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %920)  ; WaveAnyTrue(cond)
  %922 = icmp ugt i32 %276, 63
  br i1 %922, label %952, label %923, !dx.controlflow.hints !62

; <label>:923                                     ; preds = %914
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %924 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %924, label %925, label %928, !dx.controlflow.hints !63

; <label>:925                                     ; preds = %923
  %926 = zext i1 %921 to i32
  %927 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  store i32 %926, i32 addrspace(3)* %927, align 4, !tbaa !37
  br label %928

; <label>:928                                     ; preds = %925, %923
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %929 = icmp eq i32 %276, 32
  br i1 %929, label %930, label %936, !dx.controlflow.hints !64

; <label>:930                                     ; preds = %928
  %931 = xor i32 %277, 1
  %932 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %931
  %933 = load i32, i32 addrspace(3)* %932, align 4, !tbaa !37
  %934 = icmp ne i32 %933, 0
  %935 = or i1 %921, %934
  br label %952

; <label>:936                                     ; preds = %928
  %937 = icmp eq i32 %276, 16
  br i1 %937, label %938, label %952, !dx.controlflow.hints !65

; <label>:938                                     ; preds = %936
  %939 = xor i32 %277, 1
  %940 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %939
  %941 = load i32, i32 addrspace(3)* %940, align 4, !tbaa !37
  %942 = xor i32 %277, 2
  %943 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %942
  %944 = load i32, i32 addrspace(3)* %943, align 4, !tbaa !37
  %945 = or i32 %944, %941
  %946 = xor i32 %277, 3
  %947 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %946
  %948 = load i32, i32 addrspace(3)* %947, align 4, !tbaa !37
  %949 = or i32 %945, %948
  %950 = icmp ne i32 %949, 0
  %951 = or i1 %921, %950
  br label %952

; <label>:952                                     ; preds = %938, %936, %930, %914
  %953 = phi i1 [ %935, %930 ], [ %951, %938 ], [ %921, %914 ], [ false, %936 ]
  %954 = select i1 %953, i32 %412, i32 0
  %955 = or i32 %407, %954
  %956 = lshr i32 %258, 5
  %957 = lshr i32 %259, 5
  %958 = fcmp fast olt float %915, 0x3F10000000000000
  %959 = call i1 @dx.op.waveAllTrue(i32 114, i1 %958)  ; WaveAllTrue(cond)
  br i1 %922, label %991, label %960, !dx.controlflow.hints !66

; <label>:960                                     ; preds = %952
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %961 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %961, label %962, label %965, !dx.controlflow.hints !67

; <label>:962                                     ; preds = %960
  %963 = zext i1 %959 to i32
  %964 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  store i32 %963, i32 addrspace(3)* %964, align 4, !tbaa !37
  br label %965

; <label>:965                                     ; preds = %962, %960
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %966 = icmp eq i32 %276, 32
  br i1 %966, label %967, label %973, !dx.controlflow.hints !68

; <label>:967                                     ; preds = %965
  %968 = xor i32 %277, 1
  %969 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %968
  %970 = load i32, i32 addrspace(3)* %969, align 4, !tbaa !37
  %971 = icmp ne i32 %970, 0
  %972 = and i1 %959, %971
  br label %991

; <label>:973                                     ; preds = %965
  %974 = icmp eq i32 %276, 16
  br i1 %974, label %975, label %991, !dx.controlflow.hints !69

; <label>:975                                     ; preds = %973
  %976 = xor i32 %277, 1
  %977 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %976
  %978 = load i32, i32 addrspace(3)* %977, align 4, !tbaa !37
  %979 = icmp ne i32 %978, 0
  %980 = and i1 %959, %979
  %981 = xor i32 %277, 2
  %982 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %981
  %983 = load i32, i32 addrspace(3)* %982, align 4, !tbaa !37
  %984 = icmp ne i32 %983, 0
  %985 = and i1 %980, %984
  %986 = xor i32 %277, 3
  %987 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %986
  %988 = load i32, i32 addrspace(3)* %987, align 4, !tbaa !37
  %989 = icmp ne i32 %988, 0
  %990 = and i1 %985, %989
  br label %991

; <label>:991                                     ; preds = %975, %973, %967, %952
  %992 = phi i1 [ %972, %967 ], [ %990, %975 ], [ %959, %952 ], [ false, %973 ]
  %993 = fcmp fast ogt float %915, 0x3FEFFF8000000000
  %994 = call i1 @dx.op.waveAllTrue(i32 114, i1 %993)  ; WaveAllTrue(cond)
  br i1 %922, label %1026, label %995, !dx.controlflow.hints !66

; <label>:995                                     ; preds = %991
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %996 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %996, label %997, label %1000, !dx.controlflow.hints !67

; <label>:997                                     ; preds = %995
  %998 = zext i1 %994 to i32
  %999 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %277
  store i32 %998, i32 addrspace(3)* %999, align 4, !tbaa !37
  br label %1000

; <label>:1000                                    ; preds = %997, %995
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1001 = icmp eq i32 %276, 32
  br i1 %1001, label %1002, label %1008, !dx.controlflow.hints !68

; <label>:1002                                    ; preds = %1000
  %1003 = xor i32 %277, 1
  %1004 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1003
  %1005 = load i32, i32 addrspace(3)* %1004, align 4, !tbaa !37
  %1006 = icmp ne i32 %1005, 0
  %1007 = and i1 %994, %1006
  br label %1026

; <label>:1008                                    ; preds = %1000
  %1009 = icmp eq i32 %276, 16
  br i1 %1009, label %1010, label %1026, !dx.controlflow.hints !69

; <label>:1010                                    ; preds = %1008
  %1011 = xor i32 %277, 1
  %1012 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1011
  %1013 = load i32, i32 addrspace(3)* %1012, align 4, !tbaa !37
  %1014 = icmp ne i32 %1013, 0
  %1015 = and i1 %994, %1014
  %1016 = xor i32 %277, 2
  %1017 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1016
  %1018 = load i32, i32 addrspace(3)* %1017, align 4, !tbaa !37
  %1019 = icmp ne i32 %1018, 0
  %1020 = and i1 %1015, %1019
  %1021 = xor i32 %277, 3
  %1022 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1021
  %1023 = load i32, i32 addrspace(3)* %1022, align 4, !tbaa !37
  %1024 = icmp ne i32 %1023, 0
  %1025 = and i1 %1020, %1024
  br label %1026

; <label>:1026                                    ; preds = %1010, %1008, %1002, %991
  %1027 = phi i1 [ %1007, %1002 ], [ %1025, %1010 ], [ %994, %991 ], [ false, %1008 ]
  %1028 = or i1 %992, %1027
  %1029 = lshr i32 %259, 1
  %1030 = and i32 %1029, 8
  %1031 = lshr i32 %258, 2
  %1032 = and i32 %1031, 4
  %1033 = or i32 %1032, %38
  %1034 = or i32 %1033, %1030
  %1035 = icmp eq i32 %25, 0
  br i1 %1035, label %1036, label %1078, !dx.controlflow.hints !70

; <label>:1036                                    ; preds = %1026
  %1037 = shl i32 1, %1034
  %1038 = select i1 %1027, i32 %1037, i32 0
  %1039 = shl i32 65536, %1034
  %1040 = select i1 %992, i32 %1039, i32 0
  %1041 = or i32 %1038, %1040
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1045, label %1043, !dx.controlflow.hints !71

; <label>:1043                                    ; preds = %1036
  %1044 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %956, i32 %957, i32 %410, i32 %1041)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1045

; <label>:1045                                    ; preds = %1043, %1036
  br i1 %1028, label %1075, label %1046

; <label>:1046                                    ; preds = %1045
  br label %1047

; <label>:1047                                    ; preds = %1072, %1046
  %1048 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %956, i32 %957, i32 %410, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1049 = and i32 %1048, 3
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1072, !dx.controlflow.hints !72

; <label>:1051                                    ; preds = %1047
  %1052 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.i32 %1053, 3
  %1055 = call i32 @dx.op.binary.i32(i32 40, i32 %1054, i32 %1052)  ; UMin(a,b)
  %1056 = extractvalue %dx.types.CBufRet.i32 %1053, 2
  %1057 = udiv i32 %1055, %1056
  %1058 = urem i32 %1055, %1056
  %1059 = extractvalue %dx.types.CBufRet.i32 %1053, 1
  %1060 = urem i32 %1058, %1059
  %1061 = udiv i32 %1058, %1059
  %1062 = shl i32 %1060, 6
  %1063 = and i32 %1062, 32704
  %1064 = shl i32 %1061, 15
  %1065 = and i32 %1064, 8355840
  %1066 = shl i32 %1057, 23
  %1067 = and i32 %1066, 2139095040
  %1068 = or i32 %1067, %1063
  %1069 = or i32 %1068, %1065
  %1070 = or i32 %1069, 3
  %1071 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %956, i32 %957, i32 %410, i32 %1070)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1075

; <label>:1072                                    ; preds = %1047
  %1073 = icmp eq i32 %1049, 3
  br i1 %1073, label %1074, label %1047, !dx.controlflow.hints !73

; <label>:1074                                    ; preds = %1072
  br label %1075

; <label>:1075                                    ; preds = %1074, %1051, %1045
  %1076 = phi i32 [ 0, %1045 ], [ %1070, %1051 ], [ %1048, %1074 ]
  br i1 %279, label %1078, label %1077, !dx.controlflow.hints !74

; <label>:1077                                    ; preds = %1075
  store i32 %1076, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1078

; <label>:1078                                    ; preds = %1077, %1075, %1026
  %1079 = phi i32 [ %1076, %1075 ], [ %1076, %1077 ], [ 0, %1026 ]
  br i1 %279, label %1080, label %1082, !dx.controlflow.hints !75

; <label>:1080                                    ; preds = %1078
  %1081 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1079)  ; WaveReadLaneFirst(value)
  br label %1084

; <label>:1082                                    ; preds = %1078
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1083 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !37
  br label %1084

; <label>:1084                                    ; preds = %1082, %1080
  %1085 = phi i32 [ %1083, %1082 ], [ %1081, %1080 ]
  br i1 %1028, label %1107, label %1086, !dx.controlflow.hints !76

; <label>:1086                                    ; preds = %1084
  %1087 = lshr i32 %258, 1
  %1088 = and i32 %1087, 15
  %1089 = and i32 %1029, 15
  %1090 = and i32 %258, 1
  %1091 = shl i32 %259, 1
  %1092 = and i32 %1091, 2
  %1093 = or i32 %1092, %1090
  %1094 = lshr i32 %1085, 2
  %1095 = and i32 %1094, 8176
  %1096 = lshr i32 %1085, 11
  %1097 = and i32 %1096, 4080
  %1098 = or i32 %1095, %1088
  %1099 = or i32 %1097, %1089
  %1100 = lshr i32 %1085, 21
  %1101 = and i32 %1100, 1020
  %1102 = or i32 %1093, %1101
  %1103 = fmul fast float %915, 2.550000e+02
  %1104 = fadd fast float %1103, %252
  %1105 = call float @dx.op.unary.f32(i32 27, float %1104)  ; Round_ni(value)
  %1106 = fmul fast float %1105, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1098, i32 %1099, i32 %1102, float %1106, float %1106, float %1106, float %1106, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1107

; <label>:1107                                    ; preds = %1086, %1084
  %1108 = icmp eq i32 %408, %412
  br i1 %1108, label %1109, label %406, !llvm.loop !77

; <label>:1109                                    ; preds = %1107
  br label %1110

; <label>:1110                                    ; preds = %1109, %402
  %1111 = phi i32 [ 0, %402 ], [ %955, %1109 ]
  %1112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.i32 %1112, 0
  %1114 = call i32 @dx.op.tertiary.i32(i32 49, i32 %264, i32 %1113, i32 %343)  ; UMad(a,b,c)
  %1115 = shl i32 %1114, 2
  %1116 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1115, i32 undef, i32 undef, i32 %1111)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1117 = add i32 %343, 1
  %1118 = icmp ugt i32 %1117, %339
  br i1 %1118, label %1119, label %342

; <label>:1119                                    ; preds = %1110
  br label %1120

; <label>:1120                                    ; preds = %1119, %335, %59
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
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
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
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}

