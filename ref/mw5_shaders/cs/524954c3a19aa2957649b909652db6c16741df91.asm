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
; shader hash: 8174f7b698b6fbb867562eca2ce7b8e9
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
;                                   sampler      NA          NA      S1             s2     1
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
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = alloca [4 x i32], align 4
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %30 = shl i32 %27, 2
  %31 = mul i32 %30, %29
  %32 = add i32 %31, %21
  %33 = shl i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = lshr i32 %35, 28
  %37 = and i32 %36, 3
  %38 = lshr i32 %35, 14
  %39 = and i32 %38, 16383
  %40 = and i32 %35, 16383
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %53, label %42, !dx.controlflow.hints !35

; <label>:42                                      ; preds = %0
  %43 = shl nuw nsw i32 %39, 3
  %44 = shl nuw nsw i32 %40, 3
  %45 = or i32 %43, %22
  %46 = or i32 %44, %23
  %47 = add nsw i32 %37, -1
  %48 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %45, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = lshr i32 %49, 4
  %51 = and i32 %50, 15
  %52 = and i32 %49, 15
  br label %58

; <label>:53                                      ; preds = %0
  %54 = shl i32 %22, 1
  %55 = shl i32 %23, 1
  %56 = and i32 %36, 1
  %57 = or i32 %56, %54
  br label %58

; <label>:58                                      ; preds = %53, %42
  %59 = phi i32 [ %51, %42 ], [ %57, %53 ]
  %60 = phi i32 [ %52, %42 ], [ %55, %53 ]
  %61 = shl nuw nsw i32 %39, 4
  %62 = shl nuw nsw i32 %40, 4
  %63 = or i32 %59, %61
  %64 = or i32 %60, %62
  %65 = uitofp i32 %63 to float
  %66 = uitofp i32 %64 to float
  %67 = fadd fast float %65, 5.000000e-01
  %68 = fadd fast float %66, 5.000000e-01
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = fcmp fast olt float %70, -1.000000e+00
  %72 = fcmp fast ogt float %70, -1.000000e+00
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %75 = select i1 %72, float %74, float 1.000000e+00
  %76 = fadd fast float %70, 1.000000e+00
  %77 = fmul fast float %75, %76
  %78 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 3
  %82 = fmul fast float %67, 2.000000e+00
  %83 = fmul fast float %82, %80
  %84 = fmul fast float %68, 2.000000e+00
  %85 = fmul fast float %84, %81
  %86 = fsub fast float 1.000000e+00, %83
  %87 = fsub fast float 1.000000e+00, %85
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = select i1 %71, float %89, float %93
  %97 = select i1 %71, float %90, float %94
  %98 = select i1 %71, float %91, float %95
  %99 = fmul fast float %96, %86
  %100 = fmul fast float %97, %86
  %101 = fmul fast float %98, %86
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = select i1 %71, float %103, float %107
  %111 = select i1 %71, float %104, float %108
  %112 = select i1 %71, float %105, float %109
  %113 = fmul fast float %110, %87
  %114 = fmul fast float %111, %87
  %115 = fmul fast float %112, %87
  %116 = fadd fast float %113, %99
  %117 = fadd fast float %114, %100
  %118 = fadd fast float %115, %101
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = select i1 %71, float %120, float %124
  %128 = select i1 %71, float %121, float %125
  %129 = select i1 %71, float %122, float %126
  %130 = fadd fast float %116, %127
  %131 = fadd fast float %117, %128
  %132 = fadd fast float %118, %129
  %133 = fmul fast float %130, %78
  %134 = fmul fast float %131, %78
  %135 = fmul fast float %132, %78
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.i32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.i32 %136, 2
  %140 = extractvalue %dx.types.CBufRet.i32 %136, 3
  %141 = lshr i32 %63, 1
  %142 = lshr i32 %64, 1
  %143 = and i32 %59, 1
  %144 = shl i32 %60, 1
  %145 = and i32 %144, 2
  %146 = or i32 %145, %143
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %137, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %138, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %139, i32* %149, align 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %140, i32* %150, align 4
  %151 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %146
  %152 = load i32, i32* %151, align 4, !tbaa !36
  %153 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 %152, i32 %141, i32 %142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = lshr i32 %154, 8
  %156 = and i32 %154, 255
  %157 = and i32 %155, 255
  %158 = uitofp i32 %156 to float
  %159 = uitofp i32 %157 to float
  %160 = fmul fast float %158, 0x3F80101020000000
  %161 = fmul fast float %159, 0x3F80101020000000
  %162 = fadd fast float %160, -1.000000e+00
  %163 = fadd fast float %161, -1.000000e+00
  %164 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %165 = fsub fast float 1.000000e+00, %164
  %166 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %167 = fsub fast float %165, %166
  %168 = fsub fast float -0.000000e+00, %167
  %169 = call float @dx.op.binary.f32(i32 35, float %168, float 0.000000e+00)  ; FMax(a,b)
  %170 = fcmp fast ogt float %162, 0.000000e+00
  %171 = fsub fast float -0.000000e+00, %169
  %172 = select i1 %170, float %171, float %169
  %173 = fadd fast float %172, %162
  %174 = fcmp fast ogt float %163, 0.000000e+00
  %175 = select i1 %174, float %171, float %169
  %176 = fadd fast float %175, %163
  %177 = call float @dx.op.dot3.f32(i32 55, float %173, float %176, float %167, float %173, float %176, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = call float @dx.op.unary.f32(i32 25, float %177)  ; Rsqrt(value)
  %179 = fmul fast float %173, %178
  %180 = fmul fast float %176, %178
  %181 = fmul fast float %178, %167
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fmul fast float %183, 0x3FE3C6EF40000000
  %185 = frem fast float %67, 2.560000e+02
  %186 = frem fast float %68, 2.560000e+02
  %187 = fptoui float %185 to i32
  %188 = fptoui float %186 to i32
  %189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %187, i32 %188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fadd fast float %190, %184
  %192 = call float @dx.op.unary.f32(i32 22, float %191)  ; Frc(value)
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 0
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %777, label %196, !dx.controlflow.hints !40

; <label>:196                                     ; preds = %58
  %197 = fptoui float %67 to i32
  %198 = fptoui float %68 to i32
  %199 = lshr i32 %197, 4
  %200 = lshr i32 %198, 4
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 0
  %203 = call i32 @dx.op.tertiary.i32(i32 49, i32 %200, i32 %202, i32 %199)  ; UMad(a,b,c)
  %204 = add nsw i32 %194, -1
  %205 = call i32 @dx.op.binary.i32(i32 37, i32 %204, i32 0)  ; IMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %207 = fptoui float %206 to i32
  %208 = lshr i32 %207, 5
  %209 = call i32 @dx.op.binary.i32(i32 40, i32 %208, i32 8191)  ; UMin(a,b)
  %210 = shl i32 %209, 2
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = lshr i32 %212, 16
  %214 = and i32 %212, 65535
  %215 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %216 = udiv i32 %24, %215
  %217 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %213, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %218 = icmp eq i32 %215, 64
  br i1 %218, label %245, label %219, !dx.controlflow.hints !41

; <label>:219                                     ; preds = %196
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %220 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %220, label %221, label %223, !dx.controlflow.hints !42

; <label>:221                                     ; preds = %219
  %222 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %216
  store i32 %217, i32 addrspace(3)* %222, align 4, !tbaa !36
  br label %223

; <label>:223                                     ; preds = %221, %219
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %224 = icmp eq i32 %215, 32
  br i1 %224, label %225, label %230, !dx.controlflow.hints !43

; <label>:225                                     ; preds = %223
  %226 = xor i32 %216, 1
  %227 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %226
  %228 = load i32, i32 addrspace(3)* %227, align 4, !tbaa !36
  %229 = call i32 @dx.op.binary.i32(i32 40, i32 %217, i32 %228)  ; UMin(a,b)
  br label %245

; <label>:230                                     ; preds = %223
  %231 = icmp eq i32 %215, 16
  br i1 %231, label %232, label %245, !dx.controlflow.hints !44

; <label>:232                                     ; preds = %230
  %233 = xor i32 %216, 3
  %234 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %233
  %235 = load i32, i32 addrspace(3)* %234, align 4, !tbaa !36
  %236 = xor i32 %216, 2
  %237 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %236
  %238 = load i32, i32 addrspace(3)* %237, align 4, !tbaa !36
  %239 = call i32 @dx.op.binary.i32(i32 40, i32 %238, i32 %235)  ; UMin(a,b)
  %240 = xor i32 %216, 1
  %241 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %240
  %242 = load i32, i32 addrspace(3)* %241, align 4, !tbaa !36
  %243 = call i32 @dx.op.binary.i32(i32 40, i32 %217, i32 %242)  ; UMin(a,b)
  %244 = call i32 @dx.op.binary.i32(i32 40, i32 %243, i32 %239)  ; UMin(a,b)
  br label %245

; <label>:245                                     ; preds = %232, %230, %225, %196
  %246 = phi i32 [ %229, %225 ], [ %244, %232 ], [ %217, %196 ], [ 0, %230 ]
  %247 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %214, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %218, label %274, label %248, !dx.controlflow.hints !45

; <label>:248                                     ; preds = %245
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %249, label %250, label %252, !dx.controlflow.hints !46

; <label>:250                                     ; preds = %248
  %251 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %216
  store i32 %247, i32 addrspace(3)* %251, align 4, !tbaa !36
  br label %252

; <label>:252                                     ; preds = %250, %248
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %253 = icmp eq i32 %215, 32
  br i1 %253, label %254, label %259, !dx.controlflow.hints !47

; <label>:254                                     ; preds = %252
  %255 = xor i32 %216, 1
  %256 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %255
  %257 = load i32, i32 addrspace(3)* %256, align 4, !tbaa !36
  %258 = call i32 @dx.op.binary.i32(i32 39, i32 %247, i32 %257)  ; UMax(a,b)
  br label %274

; <label>:259                                     ; preds = %252
  %260 = icmp eq i32 %215, 16
  br i1 %260, label %261, label %274, !dx.controlflow.hints !48

; <label>:261                                     ; preds = %259
  %262 = xor i32 %216, 3
  %263 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %262
  %264 = load i32, i32 addrspace(3)* %263, align 4, !tbaa !36
  %265 = xor i32 %216, 2
  %266 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %265
  %267 = load i32, i32 addrspace(3)* %266, align 4, !tbaa !36
  %268 = call i32 @dx.op.binary.i32(i32 39, i32 %267, i32 %264)  ; UMax(a,b)
  %269 = xor i32 %216, 1
  %270 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %269
  %271 = load i32, i32 addrspace(3)* %270, align 4, !tbaa !36
  %272 = call i32 @dx.op.binary.i32(i32 39, i32 %247, i32 %271)  ; UMax(a,b)
  %273 = call i32 @dx.op.binary.i32(i32 39, i32 %272, i32 %268)  ; UMax(a,b)
  br label %274

; <label>:274                                     ; preds = %261, %259, %254, %245
  %275 = phi i32 [ %258, %254 ], [ %273, %261 ], [ %247, %245 ], [ 0, %259 ]
  %276 = lshr i32 %246, 5
  %277 = lshr i32 %275, 5
  %278 = call i32 @dx.op.binary.i32(i32 40, i32 %277, i32 %205)  ; UMin(a,b)
  %279 = icmp ugt i32 %276, %278
  br i1 %279, label %777, label %280

; <label>:280                                     ; preds = %274
  br label %281

; <label>:281                                     ; preds = %767, %280
  %282 = phi i32 [ %774, %767 ], [ %276, %280 ]
  %283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.i32 %283, 0
  %285 = call i32 @dx.op.tertiary.i32(i32 49, i32 %203, i32 %284, i32 %282)  ; UMad(a,b,c)
  %286 = shl i32 %285, 2
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = shl i32 %282, 5
  %290 = sub nsw i32 %213, %289
  %291 = call i32 @dx.op.binary.i32(i32 37, i32 %290, i32 0)  ; IMax(a,b)
  %292 = call i32 @dx.op.binary.i32(i32 38, i32 %291, i32 31)  ; IMin(a,b)
  %293 = sub nsw i32 1, %213
  %294 = add nsw i32 %293, %214
  %295 = call i32 @dx.op.binary.i32(i32 37, i32 %294, i32 0)  ; IMax(a,b)
  %296 = call i32 @dx.op.binary.i32(i32 38, i32 %295, i32 32)  ; IMin(a,b)
  %297 = and i32 %296, 31
  %298 = shl i32 -1, %297
  %299 = xor i32 %298, -1
  %300 = and i32 %292, 31
  %301 = shl i32 %299, %300
  %302 = icmp eq i32 %296, 32
  %303 = select i1 %302, i32 -1, i32 %301
  %304 = and i32 %303, %288
  %305 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %304, i8 1)  ; WaveActiveBit(value,op)
  br i1 %218, label %332, label %306, !dx.controlflow.hints !49

; <label>:306                                     ; preds = %281
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %307 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %307, label %308, label %310, !dx.controlflow.hints !50

; <label>:308                                     ; preds = %306
  %309 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %216
  store i32 %305, i32 addrspace(3)* %309, align 4, !tbaa !36
  br label %310

; <label>:310                                     ; preds = %308, %306
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %311 = icmp eq i32 %215, 32
  br i1 %311, label %312, label %317, !dx.controlflow.hints !51

; <label>:312                                     ; preds = %310
  %313 = xor i32 %216, 1
  %314 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %313
  %315 = load i32, i32 addrspace(3)* %314, align 4, !tbaa !36
  %316 = or i32 %315, %305
  br label %332

; <label>:317                                     ; preds = %310
  %318 = icmp eq i32 %215, 16
  br i1 %318, label %319, label %332, !dx.controlflow.hints !52

; <label>:319                                     ; preds = %317
  %320 = xor i32 %216, 1
  %321 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %320
  %322 = load i32, i32 addrspace(3)* %321, align 4, !tbaa !36
  %323 = or i32 %322, %305
  %324 = xor i32 %216, 2
  %325 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %324
  %326 = load i32, i32 addrspace(3)* %325, align 4, !tbaa !36
  %327 = or i32 %323, %326
  %328 = xor i32 %216, 3
  %329 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %328
  %330 = load i32, i32 addrspace(3)* %329, align 4, !tbaa !36
  %331 = or i32 %327, %330
  br label %332

; <label>:332                                     ; preds = %319, %317, %312, %281
  %333 = phi i32 [ %316, %312 ], [ %331, %319 ], [ %305, %281 ], [ 0, %317 ]
  br i1 %218, label %334, label %336, !dx.controlflow.hints !53

; <label>:334                                     ; preds = %332
  %335 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %333)  ; WaveReadLaneFirst(value)
  br label %341

; <label>:336                                     ; preds = %332
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %337 = icmp eq i32 %24, 0
  br i1 %337, label %338, label %339, !dx.controlflow.hints !54

; <label>:338                                     ; preds = %336
  store i32 %333, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  br label %339

; <label>:339                                     ; preds = %338, %336
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %340 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  br label %341

; <label>:341                                     ; preds = %339, %334
  %342 = phi i32 [ %335, %334 ], [ %340, %339 ]
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %767, label %344

; <label>:344                                     ; preds = %341
  br label %345

; <label>:345                                     ; preds = %764, %344
  %346 = phi i32 [ %612, %764 ], [ 0, %344 ]
  %347 = phi i32 [ %352, %764 ], [ %342, %344 ]
  %348 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %347)  ; FirstbitLo(value)
  %349 = add i32 %348, %289
  %350 = and i32 %348, 31
  %351 = shl i32 1, %350
  %352 = xor i32 %351, %347
  %353 = mul i32 %349, 112
  %354 = add i32 %353, 16
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = add i32 %353, 28
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = add i32 %353, 32
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = add i32 %353, 48
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = extractvalue %dx.types.ResRet.f32 %368, 2
  %372 = extractvalue %dx.types.ResRet.f32 %368, 3
  %373 = add i32 %353, 64
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = extractvalue %dx.types.ResRet.f32 %374, 1
  %377 = extractvalue %dx.types.ResRet.f32 %374, 2
  %378 = extractvalue %dx.types.ResRet.f32 %374, 3
  %379 = add i32 %353, 92
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = uitofp i32 %382 to float
  %384 = lshr i32 %381, 16
  %385 = uitofp i32 %384 to float
  %386 = and i32 %361, 65535
  %387 = and i32 %361, 50331648
  %388 = icmp eq i32 %387, 33554432
  %389 = call float @dx.op.dot3.f32(i32 55, float %364, float %365, float %366, float %364, float %365, float %366)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = fsub fast float %133, %369
  %391 = fsub fast float %134, %370
  %392 = fsub fast float %135, %371
  %393 = call float @dx.op.dot3.f32(i32 55, float %390, float %391, float %392, float %364, float %365, float %366)  ; Dot3(ax,ay,az,bx,by,bz)
  %394 = fdiv fast float %393, %389
  %395 = call float @dx.op.binary.f32(i32 35, float %394, float -1.000000e+00)  ; FMax(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float %395, float 1.000000e+00)  ; FMin(a,b)
  %397 = fmul fast float %396, %364
  %398 = fmul fast float %396, %365
  %399 = fmul fast float %396, %366
  %400 = fadd fast float %397, %369
  %401 = fadd fast float %398, %370
  %402 = fadd fast float %399, %371
  %403 = fsub fast float %400, %133
  %404 = fsub fast float %401, %134
  %405 = fsub fast float %402, %135
  %406 = call float @dx.op.dot3.f32(i32 55, float %403, float %404, float %405, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %407 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %408 = fdiv fast float 1.000000e+00, %407
  %409 = fmul fast float %403, %408
  %410 = fmul fast float %404, %408
  %411 = fmul fast float %405, %408
  br i1 %388, label %412, label %436, !dx.controlflow.hints !55

; <label>:412                                     ; preds = %345
  %413 = fmul fast float %377, %356
  %414 = fmul fast float %377, %357
  %415 = fmul fast float %377, %358
  %416 = fsub fast float %413, %133
  %417 = fadd fast float %416, %400
  %418 = fsub fast float %414, %134
  %419 = fadd fast float %418, %401
  %420 = fsub fast float %415, %135
  %421 = fadd fast float %420, %402
  %422 = call float @dx.op.dot3.f32(i32 55, float %417, float %419, float %421, float %417, float %419, float %421)  ; Dot3(ax,ay,az,bx,by,bz)
  %423 = call float @dx.op.unary.f32(i32 25, float %422)  ; Rsqrt(value)
  %424 = fmul fast float %423, %417
  %425 = fmul fast float %423, %419
  %426 = fmul fast float %423, %421
  %427 = fsub fast float %133, %400
  %428 = fsub fast float %134, %401
  %429 = fsub fast float %135, %402
  %430 = fsub fast float -0.000000e+00, %427
  %431 = fsub fast float -0.000000e+00, %428
  %432 = fsub fast float -0.000000e+00, %429
  %433 = call float @dx.op.dot3.f32(i32 55, float %430, float %431, float %432, float %356, float %357, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = fcmp fast ogt float %433, 0.000000e+00
  %435 = uitofp i1 %434 to float
  br label %436

; <label>:436                                     ; preds = %412, %345
  %437 = phi float [ %435, %412 ], [ 1.000000e+00, %345 ]
  %438 = phi float [ %424, %412 ], [ %409, %345 ]
  %439 = phi float [ %425, %412 ], [ %410, %345 ]
  %440 = phi float [ %426, %412 ], [ %411, %345 ]
  %441 = call float @dx.op.dot3.f32(i32 55, float %356, float %357, float %358, float %438, float %439, float %440)  ; Dot3(ax,ay,az,bx,by,bz)
  %442 = fmul fast float %441, %441
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %444 = fsub fast float 1.000000e+00, %443
  %445 = fmul fast float %444, 5.000000e-01
  %446 = fcmp fast ogt float %441, 0.000000e+00
  %447 = fsub fast float 1.000000e+00, %445
  %448 = select i1 %446, float %445, float %447
  %449 = fmul fast float %448, %385
  %450 = fadd fast float %449, %383
  %451 = fmul fast float %450, 0x3EF0001000000000
  %452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %451, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = fmul fast float %441, %375
  %455 = fadd fast float %454, %376
  %456 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  %457 = select i1 %388, float %456, float 1.000000e+00
  %458 = fmul fast float %407, %372
  %459 = fsub fast float 1.000000e+00, %458
  %460 = fmul fast float %459, %378
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fmul fast float %461, %457
  %463 = fmul fast float %462, 2.000000e+00
  %464 = fsub fast float 3.000000e+00, %463
  %465 = fmul fast float %453, %437
  %466 = fmul fast float %462, %462
  %467 = fmul fast float %466, %465
  %468 = fmul fast float %467, %464
  %469 = icmp ne i32 %386, 255
  %470 = call float @dx.op.binary.f32(i32 36, float %468, float %468)  ; FMin(a,b)
  %471 = call float @dx.op.binary.f32(i32 36, float %468, float %470)  ; FMin(a,b)
  %472 = fcmp fast ogt float %471, 0.000000e+00
  %473 = and i1 %469, %472
  br i1 %473, label %474, label %573, !dx.controlflow.hints !56

; <label>:474                                     ; preds = %436
  %475 = select i1 %388, float 1.000000e+00, float %456
  %476 = mul nuw nsw i32 %386, 176
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = add nuw nsw i32 %476, 16
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = add nuw nsw i32 %476, 32
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  %491 = add nuw nsw i32 %476, 48
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  %496 = extractvalue %dx.types.ResRet.f32 %492, 3
  %497 = add nuw nsw i32 %476, 64
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = extractvalue %dx.types.ResRet.f32 %498, 3
  %503 = add nuw nsw i32 %476, 80
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = add nuw nsw i32 %476, 96
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = extractvalue %dx.types.ResRet.f32 %510, 3
  %515 = bitcast float %485 to i32
  %516 = fmul fast float %179, %490
  %517 = fmul fast float %180, %490
  %518 = fmul fast float %181, %490
  %519 = fadd fast float %516, %133
  %520 = fadd fast float %517, %134
  %521 = fadd fast float %518, %135
  %522 = fmul fast float %519, %493
  %523 = call float @dx.op.tertiary.f32(i32 46, float %520, float %499, float %522)  ; FMad(a,b,c)
  %524 = call float @dx.op.tertiary.f32(i32 46, float %521, float %505, float %523)  ; FMad(a,b,c)
  %525 = fadd fast float %524, %511
  %526 = fmul fast float %519, %494
  %527 = call float @dx.op.tertiary.f32(i32 46, float %520, float %500, float %526)  ; FMad(a,b,c)
  %528 = call float @dx.op.tertiary.f32(i32 46, float %521, float %506, float %527)  ; FMad(a,b,c)
  %529 = fadd fast float %528, %512
  %530 = fmul fast float %519, %495
  %531 = call float @dx.op.tertiary.f32(i32 46, float %520, float %501, float %530)  ; FMad(a,b,c)
  %532 = call float @dx.op.tertiary.f32(i32 46, float %521, float %507, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %532, %513
  %534 = fmul fast float %519, %496
  %535 = call float @dx.op.tertiary.f32(i32 46, float %520, float %502, float %534)  ; FMad(a,b,c)
  %536 = call float @dx.op.tertiary.f32(i32 46, float %521, float %508, float %535)  ; FMad(a,b,c)
  %537 = fadd fast float %536, %514
  %538 = fdiv fast float %525, %537
  %539 = fdiv fast float %529, %537
  %540 = fdiv fast float %533, %537
  %541 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %540)  ; FMax(a,b)
  %542 = fmul fast float %192, 0x401921FB60000000
  %543 = call float @dx.op.unary.f32(i32 13, float %542)  ; Sin(value)
  %544 = call float @dx.op.unary.f32(i32 12, float %542)  ; Cos(value)
  %545 = fsub fast float -0.000000e+00, %543
  %546 = fmul fast float %480, 5.000000e-01
  %547 = call float @dx.op.dot2.f32(i32 54, float %192, float %192, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = fmul fast float %548, 0x404A7DD040000000
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = fmul fast float %550, %489
  %552 = fadd fast float %551, %546
  %553 = call float @dx.op.tertiary.f32(i32 46, float %552, float %545, float 0.000000e+00)  ; FMad(a,b,c)
  %554 = call float @dx.op.tertiary.f32(i32 46, float %552, float %544, float 0.000000e+00)  ; FMad(a,b,c)
  %555 = fadd fast float %553, %538
  %556 = fadd fast float %554, %539
  %557 = fmul fast float %555, %484
  %558 = fmul fast float %556, %484
  %559 = call float @dx.op.binary.f32(i32 35, float %557, float %480)  ; FMax(a,b)
  %560 = call float @dx.op.binary.f32(i32 35, float %558, float %480)  ; FMax(a,b)
  %561 = call float @dx.op.binary.f32(i32 36, float %559, float %481)  ; FMin(a,b)
  %562 = call float @dx.op.binary.f32(i32 36, float %560, float %481)  ; FMin(a,b)
  %563 = fadd fast float %561, %478
  %564 = fadd fast float %562, %479
  %565 = uitofp i32 %515 to float
  %566 = fadd fast float %541, %488
  %567 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %18, float %563, float %564, float %565, float undef, i32 0, i32 0, i32 undef, float %566)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = fadd fast float %568, -1.000000e+00
  %570 = fmul fast float %569, %475
  %571 = fadd fast float %570, 1.000000e+00
  %572 = fmul fast float %571, %468
  br label %573

; <label>:573                                     ; preds = %474, %436
  %574 = phi float [ %572, %474 ], [ %468, %436 ]
  %575 = call float @dx.op.binary.f32(i32 36, float %574, float %574)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float %574, float %575)  ; FMin(a,b)
  %577 = fcmp fast ogt float %576, 0x3F10000000000000
  %578 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %577)  ; WaveAnyTrue(cond)
  %579 = icmp ugt i32 %215, 63
  br i1 %579, label %609, label %580, !dx.controlflow.hints !57

; <label>:580                                     ; preds = %573
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %581 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %581, label %582, label %585, !dx.controlflow.hints !58

; <label>:582                                     ; preds = %580
  %583 = zext i1 %578 to i32
  %584 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %216
  store i32 %583, i32 addrspace(3)* %584, align 4, !tbaa !36
  br label %585

; <label>:585                                     ; preds = %582, %580
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %586 = icmp eq i32 %215, 32
  br i1 %586, label %587, label %593, !dx.controlflow.hints !59

; <label>:587                                     ; preds = %585
  %588 = xor i32 %216, 1
  %589 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %588
  %590 = load i32, i32 addrspace(3)* %589, align 4, !tbaa !36
  %591 = icmp ne i32 %590, 0
  %592 = or i1 %578, %591
  br label %609

; <label>:593                                     ; preds = %585
  %594 = icmp eq i32 %215, 16
  br i1 %594, label %595, label %609, !dx.controlflow.hints !60

; <label>:595                                     ; preds = %593
  %596 = xor i32 %216, 1
  %597 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %596
  %598 = load i32, i32 addrspace(3)* %597, align 4, !tbaa !36
  %599 = xor i32 %216, 2
  %600 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %599
  %601 = load i32, i32 addrspace(3)* %600, align 4, !tbaa !36
  %602 = or i32 %601, %598
  %603 = xor i32 %216, 3
  %604 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %603
  %605 = load i32, i32 addrspace(3)* %604, align 4, !tbaa !36
  %606 = or i32 %602, %605
  %607 = icmp ne i32 %606, 0
  %608 = or i1 %578, %607
  br label %609

; <label>:609                                     ; preds = %595, %593, %587, %573
  %610 = phi i1 [ %592, %587 ], [ %608, %595 ], [ %578, %573 ], [ false, %593 ]
  %611 = select i1 %610, i32 %351, i32 0
  %612 = or i32 %346, %611
  %613 = lshr i32 %197, 5
  %614 = lshr i32 %198, 5
  %615 = fcmp fast olt float %574, 0x3F10000000000000
  %616 = call i1 @dx.op.waveAllTrue(i32 114, i1 %615)  ; WaveAllTrue(cond)
  br i1 %579, label %648, label %617, !dx.controlflow.hints !61

; <label>:617                                     ; preds = %609
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %618 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %618, label %619, label %622, !dx.controlflow.hints !62

; <label>:619                                     ; preds = %617
  %620 = zext i1 %616 to i32
  %621 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %216
  store i32 %620, i32 addrspace(3)* %621, align 4, !tbaa !36
  br label %622

; <label>:622                                     ; preds = %619, %617
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %623 = icmp eq i32 %215, 32
  br i1 %623, label %624, label %630, !dx.controlflow.hints !63

; <label>:624                                     ; preds = %622
  %625 = xor i32 %216, 1
  %626 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %625
  %627 = load i32, i32 addrspace(3)* %626, align 4, !tbaa !36
  %628 = icmp ne i32 %627, 0
  %629 = and i1 %616, %628
  br label %648

; <label>:630                                     ; preds = %622
  %631 = icmp eq i32 %215, 16
  br i1 %631, label %632, label %648, !dx.controlflow.hints !64

; <label>:632                                     ; preds = %630
  %633 = xor i32 %216, 1
  %634 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %633
  %635 = load i32, i32 addrspace(3)* %634, align 4, !tbaa !36
  %636 = icmp ne i32 %635, 0
  %637 = and i1 %616, %636
  %638 = xor i32 %216, 2
  %639 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %638
  %640 = load i32, i32 addrspace(3)* %639, align 4, !tbaa !36
  %641 = icmp ne i32 %640, 0
  %642 = and i1 %637, %641
  %643 = xor i32 %216, 3
  %644 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %643
  %645 = load i32, i32 addrspace(3)* %644, align 4, !tbaa !36
  %646 = icmp ne i32 %645, 0
  %647 = and i1 %642, %646
  br label %648

; <label>:648                                     ; preds = %632, %630, %624, %609
  %649 = phi i1 [ %629, %624 ], [ %647, %632 ], [ %616, %609 ], [ false, %630 ]
  %650 = fcmp fast ogt float %574, 0x3FEFFF8000000000
  %651 = call i1 @dx.op.waveAllTrue(i32 114, i1 %650)  ; WaveAllTrue(cond)
  br i1 %579, label %683, label %652, !dx.controlflow.hints !61

; <label>:652                                     ; preds = %648
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %653 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %653, label %654, label %657, !dx.controlflow.hints !62

; <label>:654                                     ; preds = %652
  %655 = zext i1 %651 to i32
  %656 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %216
  store i32 %655, i32 addrspace(3)* %656, align 4, !tbaa !36
  br label %657

; <label>:657                                     ; preds = %654, %652
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %658 = icmp eq i32 %215, 32
  br i1 %658, label %659, label %665, !dx.controlflow.hints !63

; <label>:659                                     ; preds = %657
  %660 = xor i32 %216, 1
  %661 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %660
  %662 = load i32, i32 addrspace(3)* %661, align 4, !tbaa !36
  %663 = icmp ne i32 %662, 0
  %664 = and i1 %651, %663
  br label %683

; <label>:665                                     ; preds = %657
  %666 = icmp eq i32 %215, 16
  br i1 %666, label %667, label %683, !dx.controlflow.hints !64

; <label>:667                                     ; preds = %665
  %668 = xor i32 %216, 1
  %669 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %668
  %670 = load i32, i32 addrspace(3)* %669, align 4, !tbaa !36
  %671 = icmp ne i32 %670, 0
  %672 = and i1 %651, %671
  %673 = xor i32 %216, 2
  %674 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %673
  %675 = load i32, i32 addrspace(3)* %674, align 4, !tbaa !36
  %676 = icmp ne i32 %675, 0
  %677 = and i1 %672, %676
  %678 = xor i32 %216, 3
  %679 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %678
  %680 = load i32, i32 addrspace(3)* %679, align 4, !tbaa !36
  %681 = icmp ne i32 %680, 0
  %682 = and i1 %677, %681
  br label %683

; <label>:683                                     ; preds = %667, %665, %659, %648
  %684 = phi i1 [ %664, %659 ], [ %682, %667 ], [ %651, %648 ], [ false, %665 ]
  %685 = or i1 %649, %684
  %686 = lshr i32 %198, 1
  %687 = and i32 %686, 8
  %688 = lshr i32 %197, 2
  %689 = and i32 %688, 4
  %690 = or i32 %689, %37
  %691 = or i32 %690, %687
  %692 = icmp eq i32 %24, 0
  br i1 %692, label %693, label %735, !dx.controlflow.hints !65

; <label>:693                                     ; preds = %683
  %694 = shl i32 1, %691
  %695 = select i1 %684, i32 %694, i32 0
  %696 = shl i32 65536, %691
  %697 = select i1 %649, i32 %696, i32 0
  %698 = or i32 %695, %697
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %702, label %700, !dx.controlflow.hints !66

; <label>:700                                     ; preds = %693
  %701 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %613, i32 %614, i32 %349, i32 %698)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %702

; <label>:702                                     ; preds = %700, %693
  br i1 %685, label %732, label %703

; <label>:703                                     ; preds = %702
  br label %704

; <label>:704                                     ; preds = %729, %703
  %705 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %613, i32 %614, i32 %349, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %706 = and i32 %705, 3
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %729, !dx.controlflow.hints !67

; <label>:708                                     ; preds = %704
  %709 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.i32 %710, 3
  %712 = call i32 @dx.op.binary.i32(i32 40, i32 %711, i32 %709)  ; UMin(a,b)
  %713 = extractvalue %dx.types.CBufRet.i32 %710, 2
  %714 = udiv i32 %712, %713
  %715 = urem i32 %712, %713
  %716 = extractvalue %dx.types.CBufRet.i32 %710, 1
  %717 = urem i32 %715, %716
  %718 = udiv i32 %715, %716
  %719 = shl i32 %717, 6
  %720 = and i32 %719, 32704
  %721 = shl i32 %718, 15
  %722 = and i32 %721, 8355840
  %723 = shl i32 %714, 23
  %724 = and i32 %723, 2139095040
  %725 = or i32 %724, %720
  %726 = or i32 %725, %722
  %727 = or i32 %726, 3
  %728 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %613, i32 %614, i32 %349, i32 %727)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %732

; <label>:729                                     ; preds = %704
  %730 = icmp eq i32 %706, 3
  br i1 %730, label %731, label %704, !dx.controlflow.hints !68

; <label>:731                                     ; preds = %729
  br label %732

; <label>:732                                     ; preds = %731, %708, %702
  %733 = phi i32 [ 0, %702 ], [ %727, %708 ], [ %705, %731 ]
  br i1 %218, label %735, label %734, !dx.controlflow.hints !69

; <label>:734                                     ; preds = %732
  store i32 %733, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %735

; <label>:735                                     ; preds = %734, %732, %683
  %736 = phi i32 [ %733, %732 ], [ %733, %734 ], [ 0, %683 ]
  br i1 %218, label %737, label %739, !dx.controlflow.hints !70

; <label>:737                                     ; preds = %735
  %738 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %736)  ; WaveReadLaneFirst(value)
  br label %741

; <label>:739                                     ; preds = %735
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %740 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %741

; <label>:741                                     ; preds = %739, %737
  %742 = phi i32 [ %740, %739 ], [ %738, %737 ]
  br i1 %685, label %764, label %743, !dx.controlflow.hints !71

; <label>:743                                     ; preds = %741
  %744 = lshr i32 %197, 1
  %745 = and i32 %744, 15
  %746 = and i32 %686, 15
  %747 = and i32 %197, 1
  %748 = shl i32 %198, 1
  %749 = and i32 %748, 2
  %750 = or i32 %749, %747
  %751 = lshr i32 %742, 2
  %752 = and i32 %751, 8176
  %753 = lshr i32 %742, 11
  %754 = and i32 %753, 4080
  %755 = or i32 %752, %745
  %756 = or i32 %754, %746
  %757 = lshr i32 %742, 21
  %758 = and i32 %757, 1020
  %759 = or i32 %750, %758
  %760 = fmul fast float %574, 2.550000e+02
  %761 = fadd fast float %760, %192
  %762 = call float @dx.op.unary.f32(i32 27, float %761)  ; Round_ni(value)
  %763 = fmul fast float %762, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %755, i32 %756, i32 %759, float %763, float %763, float %763, float %763, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %764

; <label>:764                                     ; preds = %743, %741
  %765 = icmp eq i32 %347, %351
  br i1 %765, label %766, label %345, !llvm.loop !72

; <label>:766                                     ; preds = %764
  br label %767

; <label>:767                                     ; preds = %766, %341
  %768 = phi i32 [ 0, %341 ], [ %612, %766 ]
  %769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.i32 %769, 0
  %771 = call i32 @dx.op.tertiary.i32(i32 49, i32 %203, i32 %770, i32 %282)  ; UMad(a,b,c)
  %772 = shl i32 %771, 2
  %773 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %772, i32 undef, i32 undef, i32 %768)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %774 = add i32 %282, 1
  %775 = icmp ugt i32 %774, %278
  br i1 %775, label %776, label %281

; <label>:776                                     ; preds = %767
  br label %777

; <label>:777                                     ; preds = %776, %274, %58
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
!dx.entryPoints = !{!32}

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
!29 = !{!30, !31}
!30 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !33}
!33 = !{i32 0, i64 524560, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
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
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
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
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}

