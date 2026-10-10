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
; shader hash: 89b0cfdb1fc2738ac002671a75404b3c
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

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %48 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %14, i32 0, i32 %45, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %82 = fmul fast float %80, %67
  %83 = fmul fast float %81, %68
  %84 = fmul fast float %82, 2.000000e+00
  %85 = fmul fast float %83, 2.000000e+00
  %86 = fsub fast float 1.000000e+00, %84
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
  %153 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 %152, i32 %141, i32 %142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %182 = fmul fast float %80, %65
  %183 = fmul fast float %81, %66
  %184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %17, float %182, float %183, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = extractvalue %dx.types.ResRet.f32 %184, 1
  %187 = extractvalue %dx.types.ResRet.f32 %184, 2
  %188 = fcmp fast ogt float %185, -1.000000e+00
  %189 = select i1 %188, float %74, float 1.000000e+00
  %190 = fadd fast float %185, 1.000000e+00
  %191 = fmul fast float %189, %190
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = fcmp fast ogt float %186, -1.000000e+00
  %194 = select i1 %193, float %74, float 1.000000e+00
  %195 = fadd fast float %186, 1.000000e+00
  %196 = fmul fast float %194, %195
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fcmp fast ogt float %187, -1.000000e+00
  %199 = select i1 %198, float %74, float 1.000000e+00
  %200 = fadd fast float %187, 1.000000e+00
  %201 = fmul fast float %199, %200
  %202 = call float @dx.op.unary.f32(i32 6, float %201)  ; FAbs(value)
  %203 = fadd fast float %65, 1.000000e+00
  %204 = fmul fast float %80, %203
  %205 = fadd fast float %66, 1.000000e+00
  %206 = fmul fast float %81, %205
  %207 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %17, float %204, float %206, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 2
  %210 = fcmp fast ogt float %208, -1.000000e+00
  %211 = select i1 %210, float %74, float 1.000000e+00
  %212 = fadd fast float %208, 1.000000e+00
  %213 = fmul fast float %211, %212
  %214 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %215 = fcmp fast ogt float %209, -1.000000e+00
  %216 = select i1 %215, float %74, float 1.000000e+00
  %217 = fadd fast float %209, 1.000000e+00
  %218 = fmul fast float %216, %217
  %219 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %220 = fsub fast float %202, %197
  %221 = fsub fast float %214, %197
  %222 = fsub fast float %192, %197
  %223 = fsub fast float %219, %197
  %224 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %225 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float %224)  ; FMax(a,b)
  %227 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %228 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %229 = call float @dx.op.binary.f32(i32 35, float %228, float %227)  ; FMax(a,b)
  %230 = fadd fast float %221, %220
  %231 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %232 = fadd fast float %223, %222
  %233 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %234 = fsub fast float %229, %233
  %235 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %236 = fsub fast float %226, %231
  %237 = call float @dx.op.unary.f32(i32 6, float %236)  ; FAbs(value)
  %238 = call float @dx.op.binary.f32(i32 35, float %237, float %235)  ; FMax(a,b)
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fmul fast float %240, 0x3FE3C6EF40000000
  %242 = frem fast float %67, 2.560000e+02
  %243 = frem fast float %68, 2.560000e+02
  %244 = fptoui float %242 to i32
  %245 = fptoui float %243 to i32
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %244, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 2
  %249 = fadd fast float %247, %241
  %250 = fadd fast float %248, %241
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 0
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %988, label %256, !dx.controlflow.hints !40

; <label>:256                                     ; preds = %58
  %257 = fptoui float %67 to i32
  %258 = fptoui float %68 to i32
  %259 = lshr i32 %257, 4
  %260 = lshr i32 %258, 4
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 0
  %263 = call i32 @dx.op.tertiary.i32(i32 49, i32 %260, i32 %262, i32 %259)  ; UMad(a,b,c)
  %264 = add nsw i32 %254, -1
  %265 = call i32 @dx.op.binary.i32(i32 37, i32 %264, i32 0)  ; IMax(a,b)
  %266 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %267 = fptoui float %266 to i32
  %268 = lshr i32 %267, 5
  %269 = call i32 @dx.op.binary.i32(i32 40, i32 %268, i32 8191)  ; UMin(a,b)
  %270 = shl i32 %269, 2
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 16
  %274 = and i32 %272, 65535
  %275 = lshr i32 %272, 21
  %276 = lshr i32 %274, 5
  %277 = call i32 @dx.op.binary.i32(i32 40, i32 %276, i32 %265)  ; UMin(a,b)
  %278 = icmp ugt i32 %275, %277
  br i1 %278, label %988, label %279

; <label>:279                                     ; preds = %256
  br label %280

; <label>:280                                     ; preds = %984, %279
  %281 = phi i32 [ %985, %984 ], [ %275, %279 ]
  %282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.i32 %282, 0
  %284 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %283, i32 %281)  ; UMad(a,b,c)
  %285 = shl i32 %284, 2
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %281, 5
  %289 = sub nsw i32 %273, %288
  %290 = call i32 @dx.op.binary.i32(i32 37, i32 %289, i32 0)  ; IMax(a,b)
  %291 = call i32 @dx.op.binary.i32(i32 38, i32 %290, i32 31)  ; IMin(a,b)
  %292 = sub nsw i32 1, %273
  %293 = add nsw i32 %292, %274
  %294 = call i32 @dx.op.binary.i32(i32 37, i32 %293, i32 0)  ; IMax(a,b)
  %295 = call i32 @dx.op.binary.i32(i32 38, i32 %294, i32 32)  ; IMin(a,b)
  %296 = and i32 %295, 31
  %297 = shl i32 -1, %296
  %298 = xor i32 %297, -1
  %299 = and i32 %291, 31
  %300 = shl i32 %298, %299
  %301 = icmp eq i32 %295, 32
  %302 = select i1 %301, i32 -1, i32 %300
  %303 = and i32 %302, %287
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %984, label %305

; <label>:305                                     ; preds = %280
  br label %306

; <label>:306                                     ; preds = %981, %305
  %307 = phi i32 [ %312, %981 ], [ %303, %305 ]
  %308 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %307)  ; FirstbitLo(value)
  %309 = add i32 %308, %288
  %310 = and i32 %308, 31
  %311 = shl i32 1, %310
  %312 = xor i32 %311, %307
  %313 = mul i32 %309, 112
  %314 = add i32 %313, 16
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = add i32 %313, 28
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = add i32 %313, 32
  %323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = extractvalue %dx.types.ResRet.f32 %323, 2
  %327 = add i32 %313, 44
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = add i32 %313, 48
  %331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = extractvalue %dx.types.ResRet.f32 %331, 1
  %334 = extractvalue %dx.types.ResRet.f32 %331, 2
  %335 = extractvalue %dx.types.ResRet.f32 %331, 3
  %336 = add i32 %313, 64
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = extractvalue %dx.types.ResRet.f32 %337, 1
  %340 = extractvalue %dx.types.ResRet.f32 %337, 2
  %341 = extractvalue %dx.types.ResRet.f32 %337, 3
  %342 = add i32 %313, 92
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = uitofp i32 %345 to float
  %347 = lshr i32 %344, 16
  %348 = uitofp i32 %347 to float
  %349 = and i32 %321, 65535
  %350 = and i32 %321, 50331648
  %351 = icmp eq i32 %350, 33554432
  %352 = call float @dx.op.dot3.f32(i32 55, float %324, float %325, float %326, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %353 = fsub fast float %133, %332
  %354 = fsub fast float %134, %333
  %355 = fsub fast float %135, %334
  %356 = call float @dx.op.dot3.f32(i32 55, float %353, float %354, float %355, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = fdiv fast float %356, %352
  %358 = call float @dx.op.binary.f32(i32 35, float %357, float -1.000000e+00)  ; FMax(a,b)
  %359 = call float @dx.op.binary.f32(i32 36, float %358, float 1.000000e+00)  ; FMin(a,b)
  %360 = fmul fast float %359, %324
  %361 = fmul fast float %359, %325
  %362 = fmul fast float %359, %326
  %363 = fadd fast float %360, %332
  %364 = fadd fast float %361, %333
  %365 = fadd fast float %362, %334
  %366 = fsub fast float %363, %133
  %367 = fsub fast float %364, %134
  %368 = fsub fast float %365, %135
  %369 = call float @dx.op.dot3.f32(i32 55, float %366, float %367, float %368, float %366, float %367, float %368)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %371 = fdiv fast float 1.000000e+00, %370
  %372 = fmul fast float %366, %371
  %373 = fmul fast float %367, %371
  %374 = fmul fast float %368, %371
  br i1 %351, label %375, label %399, !dx.controlflow.hints !41

; <label>:375                                     ; preds = %306
  %376 = fmul fast float %340, %316
  %377 = fmul fast float %340, %317
  %378 = fmul fast float %340, %318
  %379 = fsub fast float %376, %133
  %380 = fadd fast float %379, %363
  %381 = fsub fast float %377, %134
  %382 = fadd fast float %381, %364
  %383 = fsub fast float %378, %135
  %384 = fadd fast float %383, %365
  %385 = call float @dx.op.dot3.f32(i32 55, float %380, float %382, float %384, float %380, float %382, float %384)  ; Dot3(ax,ay,az,bx,by,bz)
  %386 = call float @dx.op.unary.f32(i32 25, float %385)  ; Rsqrt(value)
  %387 = fmul fast float %386, %380
  %388 = fmul fast float %386, %382
  %389 = fmul fast float %386, %384
  %390 = fsub fast float %133, %363
  %391 = fsub fast float %134, %364
  %392 = fsub fast float %135, %365
  %393 = fsub fast float -0.000000e+00, %390
  %394 = fsub fast float -0.000000e+00, %391
  %395 = fsub fast float -0.000000e+00, %392
  %396 = call float @dx.op.dot3.f32(i32 55, float %393, float %394, float %395, float %316, float %317, float %318)  ; Dot3(ax,ay,az,bx,by,bz)
  %397 = fcmp fast ogt float %396, 0.000000e+00
  %398 = uitofp i1 %397 to float
  br label %399

; <label>:399                                     ; preds = %375, %306
  %400 = phi float [ %398, %375 ], [ 1.000000e+00, %306 ]
  %401 = phi float [ %387, %375 ], [ %372, %306 ]
  %402 = phi float [ %388, %375 ], [ %373, %306 ]
  %403 = phi float [ %389, %375 ], [ %374, %306 ]
  %404 = call float @dx.op.dot3.f32(i32 55, float %316, float %317, float %318, float %401, float %402, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = fmul fast float %404, %404
  %406 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  %407 = fsub fast float 1.000000e+00, %406
  %408 = fmul fast float %407, 5.000000e-01
  %409 = fcmp fast ogt float %404, 0.000000e+00
  %410 = fsub fast float 1.000000e+00, %408
  %411 = select i1 %409, float %408, float %410
  %412 = fmul fast float %411, %348
  %413 = fadd fast float %412, %346
  %414 = fmul fast float %413, 0x3EF0001000000000
  %415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %414, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = fmul fast float %404, %338
  %418 = fadd fast float %417, %339
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = select i1 %351, float %419, float 1.000000e+00
  %421 = fmul fast float %370, %335
  %422 = fsub fast float 1.000000e+00, %421
  %423 = fmul fast float %422, %341
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = fmul fast float %424, %420
  %426 = fmul fast float %425, 2.000000e+00
  %427 = fsub fast float 3.000000e+00, %426
  %428 = fmul fast float %416, %400
  %429 = fmul fast float %425, %425
  %430 = fmul fast float %429, %428
  %431 = fmul fast float %430, %427
  %432 = icmp ne i32 %349, 255
  %433 = call float @dx.op.binary.f32(i32 36, float %431, float %431)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %431, float %433)  ; FMin(a,b)
  %435 = fcmp fast ogt float %434, 0.000000e+00
  %436 = and i1 %432, %435
  br i1 %436, label %437, label %536, !dx.controlflow.hints !42

; <label>:437                                     ; preds = %399
  %438 = select i1 %351, float 1.000000e+00, float %419
  %439 = mul nuw nsw i32 %349, 176
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = extractvalue %dx.types.ResRet.f32 %440, 3
  %445 = add nuw nsw i32 %439, 16
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = add nuw nsw i32 %439, 32
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = add nuw nsw i32 %439, 48
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = extractvalue %dx.types.ResRet.f32 %455, 3
  %460 = add nuw nsw i32 %439, 64
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = add nuw nsw i32 %439, 80
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = add nuw nsw i32 %439, 96
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  %478 = bitcast float %448 to i32
  %479 = fmul fast float %453, %179
  %480 = fmul fast float %453, %180
  %481 = fmul fast float %453, %181
  %482 = fadd fast float %479, %133
  %483 = fadd fast float %480, %134
  %484 = fadd fast float %481, %135
  %485 = fmul fast float %482, %456
  %486 = call float @dx.op.tertiary.f32(i32 46, float %483, float %462, float %485)  ; FMad(a,b,c)
  %487 = call float @dx.op.tertiary.f32(i32 46, float %484, float %468, float %486)  ; FMad(a,b,c)
  %488 = fadd fast float %487, %474
  %489 = fmul fast float %482, %457
  %490 = call float @dx.op.tertiary.f32(i32 46, float %483, float %463, float %489)  ; FMad(a,b,c)
  %491 = call float @dx.op.tertiary.f32(i32 46, float %484, float %469, float %490)  ; FMad(a,b,c)
  %492 = fadd fast float %491, %475
  %493 = fmul fast float %482, %458
  %494 = call float @dx.op.tertiary.f32(i32 46, float %483, float %464, float %493)  ; FMad(a,b,c)
  %495 = call float @dx.op.tertiary.f32(i32 46, float %484, float %470, float %494)  ; FMad(a,b,c)
  %496 = fadd fast float %495, %476
  %497 = fmul fast float %482, %459
  %498 = call float @dx.op.tertiary.f32(i32 46, float %483, float %465, float %497)  ; FMad(a,b,c)
  %499 = call float @dx.op.tertiary.f32(i32 46, float %484, float %471, float %498)  ; FMad(a,b,c)
  %500 = fadd fast float %499, %477
  %501 = fdiv fast float %488, %500
  %502 = fdiv fast float %492, %500
  %503 = fdiv fast float %496, %500
  %504 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %503)  ; FMax(a,b)
  %505 = fmul fast float %251, 0x401921FB60000000
  %506 = call float @dx.op.unary.f32(i32 13, float %505)  ; Sin(value)
  %507 = call float @dx.op.unary.f32(i32 12, float %505)  ; Cos(value)
  %508 = fsub fast float -0.000000e+00, %506
  %509 = fmul fast float %443, 5.000000e-01
  %510 = call float @dx.op.dot2.f32(i32 54, float %251, float %251, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %511 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %512 = fmul fast float %511, 0x404A7DD040000000
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = fmul fast float %513, %452
  %515 = fadd fast float %514, %509
  %516 = call float @dx.op.tertiary.f32(i32 46, float %515, float %508, float 0.000000e+00)  ; FMad(a,b,c)
  %517 = call float @dx.op.tertiary.f32(i32 46, float %515, float %507, float 0.000000e+00)  ; FMad(a,b,c)
  %518 = fadd fast float %516, %501
  %519 = fadd fast float %517, %502
  %520 = fmul fast float %518, %447
  %521 = fmul fast float %519, %447
  %522 = call float @dx.op.binary.f32(i32 35, float %520, float %443)  ; FMax(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %521, float %443)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 36, float %522, float %444)  ; FMin(a,b)
  %525 = call float @dx.op.binary.f32(i32 36, float %523, float %444)  ; FMin(a,b)
  %526 = fadd fast float %524, %441
  %527 = fadd fast float %525, %442
  %528 = uitofp i32 %478 to float
  %529 = fadd fast float %504, %451
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %18, float %526, float %527, float %528, float undef, i32 0, i32 0, i32 undef, float %529)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = fadd fast float %531, -1.000000e+00
  %533 = fmul fast float %532, %438
  %534 = fadd fast float %533, 1.000000e+00
  %535 = fmul fast float %534, %431
  br label %536

; <label>:536                                     ; preds = %437, %399
  %537 = phi float [ %535, %437 ], [ %431, %399 ]
  %538 = call float @dx.op.binary.f32(i32 36, float %537, float %537)  ; FMin(a,b)
  %539 = call float @dx.op.binary.f32(i32 36, float %537, float %538)  ; FMin(a,b)
  %540 = fcmp fast ogt float %539, 0.000000e+00
  %541 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %372, float %373, float %374)  ; Dot3(ax,ay,az,bx,by,bz)
  %542 = fcmp fast ogt float %541, 0.000000e+00
  %543 = and i1 %540, %542
  br i1 %543, label %544, label %811, !dx.controlflow.hints !43

; <label>:544                                     ; preds = %536
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %549 = select i1 %71, float %546, float %548
  %550 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %551 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %552 = select i1 %71, float %550, float %551
  %553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.i32 %553, 0
  %555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.i32 %555, 0
  %557 = select i1 %71, i32 %554, i32 %556
  %558 = fcmp fast olt float %549, 5.000000e-01
  %559 = icmp eq i32 %557, 0
  %560 = or i1 %558, %559
  br i1 %560, label %808, label %561, !dx.controlflow.hints !44

; <label>:561                                     ; preds = %544
  %562 = fsub fast float %332, %133
  %563 = fsub fast float %333, %134
  %564 = fsub fast float %334, %135
  %565 = fmul fast float %562, %562
  %566 = fmul fast float %563, %563
  %567 = fadd fast float %565, %566
  %568 = fmul fast float %564, %564
  %569 = fadd fast float %567, %568
  %570 = call float @dx.op.unary.f32(i32 24, float %569)  ; Sqrt(value)
  %571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.i32 %571, 0
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %549, %329
  %575 = fdiv fast float %574, %570
  %576 = call float @dx.op.binary.f32(i32 36, float %575, float 1.000000e+01)  ; FMin(a,b)
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %581 = extractvalue %dx.types.CBufRet.f32 %577, 3
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %596 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %600 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %601 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = extractvalue %dx.types.CBufRet.f32 %602, 3
  %607 = select i1 %71, float %578, float %593
  %608 = select i1 %71, float %583, float %598
  %609 = select i1 %71, float %588, float %603
  %610 = select i1 %71, float %579, float %594
  %611 = select i1 %71, float %584, float %599
  %612 = select i1 %71, float %589, float %604
  %613 = select i1 %71, float %580, float %595
  %614 = select i1 %71, float %585, float %600
  %615 = select i1 %71, float %590, float %605
  %616 = select i1 %71, float %581, float %596
  %617 = select i1 %71, float %586, float %601
  %618 = select i1 %71, float %591, float %606
  %619 = fmul fast float %252, 0x401061CAC0000000
  %620 = fmul fast float %252, 0x4023E1D7E0000000
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %624 = extractvalue %dx.types.CBufRet.f32 %621, 2
  %625 = extractvalue %dx.types.CBufRet.f32 %621, 3
  %626 = fsub fast float -0.000000e+00, %372
  %627 = fmul fast float %374, %626
  %628 = fmul fast float %372, %626
  %629 = fmul fast float %373, %373
  %630 = fsub fast float %628, %629
  %631 = fdiv fast float 1.000000e+00, %78
  %632 = fmul fast float %624, %67
  %633 = fmul fast float %625, %68
  %634 = fmul fast float %549, %372
  %635 = fmul fast float %549, %374
  %636 = fadd fast float %634, %133
  %637 = fadd fast float %635, %135
  %638 = fadd fast float %620, 5.000000e-01
  %639 = call float @dx.op.unary.f32(i32 22, float %638)  ; Frc(value)
  %640 = bitcast float %639 to i32
  %641 = ashr i32 %640, 1
  %642 = add nsw i32 %641, 532487669
  %643 = bitcast i32 %642 to float
  %644 = fmul fast float %643, %576
  %645 = fadd fast float %619, 5.000000e-01
  %646 = call float @dx.op.unary.f32(i32 22, float %645)  ; Frc(value)
  %647 = fmul fast float %646, 0x401921FB60000000
  %648 = call float @dx.op.unary.f32(i32 12, float %647)  ; Cos(value)
  %649 = fmul fast float %648, %648
  %650 = fsub fast float 1.000000e+00, %649
  %651 = bitcast float %650 to i32
  %652 = ashr i32 %651, 1
  %653 = add nsw i32 %652, 532487669
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %644, %648
  %656 = fmul fast float %655, %373
  %657 = fmul fast float %655, %626
  %658 = fadd fast float %636, %656
  %659 = fmul fast float %654, %644
  %660 = fmul fast float %627, %659
  %661 = fmul fast float %659, %374
  %662 = fmul fast float %659, %630
  %663 = fsub fast float %658, %660
  %664 = fadd fast float %661, %549
  %665 = fmul fast float %664, %373
  %666 = fadd fast float %657, %134
  %667 = fadd fast float %666, %665
  %668 = fadd fast float %637, %662
  %669 = fmul fast float %663, %607
  %670 = call float @dx.op.tertiary.f32(i32 46, float %667, float %610, float %669)  ; FMad(a,b,c)
  %671 = call float @dx.op.tertiary.f32(i32 46, float %668, float %613, float %670)  ; FMad(a,b,c)
  %672 = fadd fast float %671, %616
  %673 = fmul fast float %663, %608
  %674 = call float @dx.op.tertiary.f32(i32 46, float %667, float %611, float %673)  ; FMad(a,b,c)
  %675 = call float @dx.op.tertiary.f32(i32 46, float %668, float %614, float %674)  ; FMad(a,b,c)
  %676 = fadd fast float %675, %617
  %677 = fmul fast float %663, %609
  %678 = call float @dx.op.tertiary.f32(i32 46, float %667, float %612, float %677)  ; FMad(a,b,c)
  %679 = call float @dx.op.tertiary.f32(i32 46, float %668, float %615, float %678)  ; FMad(a,b,c)
  %680 = fadd fast float %679, %618
  %681 = fdiv fast float 1.000000e+00, %680
  %682 = fmul fast float %672, 5.000000e-01
  %683 = fmul fast float %676, -5.000000e-01
  %684 = fmul fast float %682, %681
  %685 = fmul fast float %683, %681
  %686 = fsub fast float 5.000000e-01, %632
  %687 = fadd fast float %686, %684
  %688 = fsub fast float 5.000000e-01, %633
  %689 = fadd fast float %688, %685
  %690 = fsub fast float %681, %631
  %691 = call float @dx.op.dot2.f32(i32 54, float %687, float %689, float %687, float %689)  ; Dot2(ax,ay,bx,by)
  %692 = call float @dx.op.binary.f32(i32 35, float %691, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %693 = call float @dx.op.dot2.f32(i32 54, float %622, float %623, float %622, float %623)  ; Dot2(ax,ay,bx,by)
  %694 = fmul fast float %693, %692
  %695 = call float @dx.op.unary.f32(i32 25, float %694)  ; Rsqrt(value)
  %696 = fmul fast float %695, %687
  %697 = fmul fast float %695, %689
  %698 = fadd fast float %696, %632
  %699 = fadd fast float %697, %633
  %700 = fmul fast float %687, %622
  %701 = fmul fast float %689, %623
  %702 = fmul fast float %700, %700
  %703 = fmul fast float %701, %701
  %704 = fadd fast float %702, %703
  %705 = call float @dx.op.unary.f32(i32 24, float %704)  ; Sqrt(value)
  %706 = fdiv fast float 1.000000e+00, %705
  %707 = fmul fast float %705, 3.906250e-03
  %708 = fmul fast float %238, 0x3F70624DE0000000
  %709 = fadd fast float %708, 0x3F70624DE0000000
  %710 = icmp sgt i32 %557, -1
  br i1 %710, label %711, label %773

; <label>:711                                     ; preds = %561
  br label %712

; <label>:712                                     ; preds = %769, %711
  %713 = phi float [ %744, %769 ], [ %78, %711 ]
  %714 = phi float [ %731, %769 ], [ %78, %711 ]
  %715 = phi float [ %714, %769 ], [ %78, %711 ]
  %716 = phi i32 [ %770, %769 ], [ 0, %711 ]
  %717 = sitofp i32 %716 to float
  %718 = fadd fast float %252, 5.000000e-01
  %719 = call float @dx.op.unary.f32(i32 22, float %718)  ; Frc(value)
  %720 = fadd fast float %717, %719
  %721 = sitofp i32 %557 to float
  %722 = fdiv fast float %720, %721
  %723 = fmul fast float %722, %722
  %724 = call float @dx.op.binary.f32(i32 36, float %723, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %725 = fmul fast float %724, %687
  %726 = fmul fast float %724, %689
  %727 = fmul fast float %724, %690
  %728 = fadd fast float %725, %698
  %729 = fadd fast float %726, %699
  %730 = fadd fast float %727, %631
  %731 = fdiv fast float 1.000000e+00, %730
  %732 = icmp ne i32 %572, 0
  %733 = fmul fast float %707, %724
  %734 = call float @dx.op.binary.f32(i32 36, float %733, float %573)  ; FMin(a,b)
  %735 = select i1 %732, float %734, float 0.000000e+00
  %736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %728, float %729, float undef, float undef, i32 0, i32 0, i32 undef, float %735)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = fcmp fast ogt float %737, -1.000000e+00
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %741 = select i1 %738, float %740, float 1.000000e+00
  %742 = fadd fast float %737, 1.000000e+00
  %743 = fmul fast float %741, %742
  %744 = call float @dx.op.unary.f32(i32 6, float %743)  ; FAbs(value)
  %745 = fmul fast float %744, %709
  %746 = fsub fast float %731, %744
  %747 = fsub fast float %746, %745
  %748 = fcmp fast ogt float %747, 0.000000e+00
  %749 = fcmp fast ogt float %552, 0.000000e+00
  br i1 %749, label %750, label %753, !dx.controlflow.hints !45

; <label>:750                                     ; preds = %712
  %751 = fsub fast float %731, %715
  %752 = call float @dx.op.binary.f32(i32 35, float %751, float %552)  ; FMax(a,b)
  br label %753

; <label>:753                                     ; preds = %750, %712
  %754 = phi float [ %752, %750 ], [ %549, %712 ]
  %755 = fcmp fast olt float %747, %754
  %756 = fcmp uge float %737, -1.000000e+00
  %757 = or i1 %71, %756
  %758 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %759 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %760 = fcmp fast oeq float %728, %758
  %761 = fcmp fast oeq float %729, %759
  %762 = and i1 %760, %761
  %763 = and i1 %757, %762
  %764 = and i1 %748, %755
  %765 = and i1 %764, %763
  %766 = fcmp fast ogt float %724, %706
  %767 = and i1 %766, %765
  %768 = zext i1 %767 to i32
  br i1 %767, label %772, label %769, !dx.controlflow.hints !46

; <label>:769                                     ; preds = %753
  %770 = add nuw nsw i32 %716, 1
  %771 = icmp slt i32 %716, %557
  br i1 %771, label %712, label %772

; <label>:772                                     ; preds = %769, %753
  br label %773

; <label>:773                                     ; preds = %772, %561
  %774 = phi i32 [ 0, %561 ], [ %768, %772 ]
  %775 = phi float [ %78, %561 ], [ %744, %772 ]
  %776 = phi float [ %78, %561 ], [ %713, %772 ]
  %777 = phi float [ %78, %561 ], [ %731, %772 ]
  %778 = phi float [ %78, %561 ], [ %714, %772 ]
  %779 = fsub fast float %778, %776
  %780 = fsub fast float %777, %775
  %781 = fsub fast float %779, %780
  %782 = fcmp fast une float %781, 0.000000e+00
  %783 = fmul fast float %779, %777
  %784 = fmul fast float %778, %780
  %785 = fsub fast float %783, %784
  %786 = fdiv fast float 1.000000e+00, %781
  %787 = fmul fast float %785, %786
  %788 = select i1 %782, float %787, float %777
  %789 = fdiv fast float 1.000000e+00, %788
  %790 = fsub fast float %789, %631
  %791 = fdiv fast float %790, %690
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %793 = fmul fast float %792, %687
  %794 = fmul fast float %792, %689
  %795 = fadd fast float %793, %698
  %796 = fadd fast float %794, %699
  %797 = fadd fast float %795, -5.000000e-01
  %798 = fadd fast float %796, -5.000000e-01
  %799 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %800 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %801 = fadd fast float %799, -5.000000e-01
  %802 = fadd fast float %800, -5.000000e-01
  %803 = call float @dx.op.binary.f32(i32 35, float %801, float %802)  ; FMax(a,b)
  %804 = fcmp fast olt float %803, 0.000000e+00
  %805 = icmp ne i32 %774, 0
  %806 = and i1 %805, %804
  %807 = select i1 %806, float 0.000000e+00, float 1.000000e+00
  br label %808

; <label>:808                                     ; preds = %773, %544
  %809 = phi float [ %807, %773 ], [ 1.000000e+00, %544 ]
  %810 = fmul fast float %809, %537
  br label %811

; <label>:811                                     ; preds = %808, %536
  %812 = phi float [ %810, %808 ], [ %537, %536 ]
  %813 = lshr i32 %257, 5
  %814 = lshr i32 %258, 5
  %815 = fcmp fast olt float %812, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %816 = and i32 %24, 31
  %817 = zext i1 %815 to i32
  %818 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %817, i32 addrspace(3)* %818, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %819 = icmp ult i32 %816, 16
  br i1 %819, label %820, label %826, !dx.controlflow.hints !47

; <label>:820                                     ; preds = %811
  %821 = add i32 %24, 16
  %822 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %821
  %823 = load i32, i32 addrspace(3)* %822, align 4, !tbaa !36
  %824 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %825 = and i32 %824, %823
  store i32 %825, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %826

; <label>:826                                     ; preds = %820, %811
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %827 = icmp ult i32 %816, 8
  br i1 %827, label %828, label %834, !dx.controlflow.hints !48

; <label>:828                                     ; preds = %826
  %829 = add i32 %24, 8
  %830 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %829
  %831 = load i32, i32 addrspace(3)* %830, align 4, !tbaa !36
  %832 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %833 = and i32 %832, %831
  store i32 %833, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %834

; <label>:834                                     ; preds = %828, %826
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %835 = icmp ult i32 %816, 4
  br i1 %835, label %836, label %842, !dx.controlflow.hints !49

; <label>:836                                     ; preds = %834
  %837 = add i32 %24, 4
  %838 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %837
  %839 = load i32, i32 addrspace(3)* %838, align 4, !tbaa !36
  %840 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %841 = and i32 %840, %839
  store i32 %841, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %842

; <label>:842                                     ; preds = %836, %834
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %843 = icmp ult i32 %816, 2
  br i1 %843, label %844, label %850, !dx.controlflow.hints !50

; <label>:844                                     ; preds = %842
  %845 = add i32 %24, 2
  %846 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %845
  %847 = load i32, i32 addrspace(3)* %846, align 4, !tbaa !36
  %848 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %849 = and i32 %848, %847
  store i32 %849, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %850

; <label>:850                                     ; preds = %844, %842
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %851 = icmp eq i32 %816, 0
  br i1 %851, label %852, label %858, !dx.controlflow.hints !51

; <label>:852                                     ; preds = %850
  %853 = add i32 %24, 1
  %854 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %853
  %855 = load i32, i32 addrspace(3)* %854, align 4, !tbaa !36
  %856 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %857 = and i32 %856, %855
  store i32 %857, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %858

; <label>:858                                     ; preds = %852, %850
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %859 = and i32 %24, -64
  %860 = or i32 %859, 32
  %861 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %859
  %862 = load i32, i32 addrspace(3)* %861, align 4, !tbaa !36
  %863 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %860
  %864 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !36
  %865 = and i32 %864, %862
  %866 = icmp ne i32 %865, 0
  %867 = fcmp fast ogt float %812, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %868 = zext i1 %867 to i32
  store i32 %868, i32 addrspace(3)* %818, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %819, label %869, label %875, !dx.controlflow.hints !47

; <label>:869                                     ; preds = %858
  %870 = add i32 %24, 16
  %871 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %870
  %872 = load i32, i32 addrspace(3)* %871, align 4, !tbaa !36
  %873 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %874 = and i32 %873, %872
  store i32 %874, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %875

; <label>:875                                     ; preds = %869, %858
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %827, label %876, label %882, !dx.controlflow.hints !48

; <label>:876                                     ; preds = %875
  %877 = add i32 %24, 8
  %878 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %877
  %879 = load i32, i32 addrspace(3)* %878, align 4, !tbaa !36
  %880 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %881 = and i32 %880, %879
  store i32 %881, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %882

; <label>:882                                     ; preds = %876, %875
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %835, label %883, label %889, !dx.controlflow.hints !49

; <label>:883                                     ; preds = %882
  %884 = add i32 %24, 4
  %885 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %884
  %886 = load i32, i32 addrspace(3)* %885, align 4, !tbaa !36
  %887 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %888 = and i32 %887, %886
  store i32 %888, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %889

; <label>:889                                     ; preds = %883, %882
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %843, label %890, label %896, !dx.controlflow.hints !50

; <label>:890                                     ; preds = %889
  %891 = add i32 %24, 2
  %892 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %891
  %893 = load i32, i32 addrspace(3)* %892, align 4, !tbaa !36
  %894 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %895 = and i32 %894, %893
  store i32 %895, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %896

; <label>:896                                     ; preds = %890, %889
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %851, label %897, label %903, !dx.controlflow.hints !51

; <label>:897                                     ; preds = %896
  %898 = add i32 %24, 1
  %899 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %898
  %900 = load i32, i32 addrspace(3)* %899, align 4, !tbaa !36
  %901 = load i32, i32 addrspace(3)* %818, align 4, !tbaa !36
  %902 = and i32 %901, %900
  store i32 %902, i32 addrspace(3)* %818, align 4, !tbaa !36
  br label %903

; <label>:903                                     ; preds = %897, %896
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %904 = load i32, i32 addrspace(3)* %861, align 4, !tbaa !36
  %905 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !36
  %906 = and i32 %905, %904
  %907 = or i32 %906, %865
  %908 = icmp eq i32 %907, 0
  %909 = lshr i32 %258, 1
  %910 = and i32 %909, 8
  %911 = lshr i32 %257, 2
  %912 = and i32 %911, 4
  %913 = or i32 %912, %37
  %914 = or i32 %913, %910
  %915 = icmp eq i32 %24, 0
  br i1 %915, label %916, label %958, !dx.controlflow.hints !52

; <label>:916                                     ; preds = %903
  %917 = icmp ne i32 %906, 0
  %918 = shl i32 1, %914
  %919 = select i1 %917, i32 %918, i32 0
  %920 = shl i32 65536, %914
  %921 = select i1 %866, i32 %920, i32 0
  %922 = or i32 %919, %921
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %926, label %924, !dx.controlflow.hints !53

; <label>:924                                     ; preds = %916
  %925 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %813, i32 %814, i32 %309, i32 %922)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %926

; <label>:926                                     ; preds = %924, %916
  br i1 %908, label %927, label %956

; <label>:927                                     ; preds = %926
  br label %928

; <label>:928                                     ; preds = %953, %927
  %929 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %3, i32 %813, i32 %814, i32 %309, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %930 = and i32 %929, 3
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %932, label %953, !dx.controlflow.hints !54

; <label>:932                                     ; preds = %928
  %933 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.i32 %934, 3
  %936 = call i32 @dx.op.binary.i32(i32 40, i32 %935, i32 %933)  ; UMin(a,b)
  %937 = extractvalue %dx.types.CBufRet.i32 %934, 2
  %938 = udiv i32 %936, %937
  %939 = urem i32 %936, %937
  %940 = extractvalue %dx.types.CBufRet.i32 %934, 1
  %941 = urem i32 %939, %940
  %942 = udiv i32 %939, %940
  %943 = shl i32 %941, 6
  %944 = and i32 %943, 32704
  %945 = shl i32 %942, 15
  %946 = and i32 %945, 8355840
  %947 = shl i32 %938, 23
  %948 = and i32 %947, 2139095040
  %949 = or i32 %948, %944
  %950 = or i32 %949, %946
  %951 = or i32 %950, 3
  %952 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 8, i32 %813, i32 %814, i32 %309, i32 %951)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %956

; <label>:953                                     ; preds = %928
  %954 = icmp eq i32 %930, 3
  br i1 %954, label %955, label %928, !dx.controlflow.hints !55

; <label>:955                                     ; preds = %953
  br label %956

; <label>:956                                     ; preds = %955, %932, %926
  %957 = phi i32 [ 0, %926 ], [ %951, %932 ], [ %929, %955 ]
  store i32 %957, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %958

; <label>:958                                     ; preds = %956, %903
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %959 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br i1 %908, label %960, label %981, !dx.controlflow.hints !56

; <label>:960                                     ; preds = %958
  %961 = lshr i32 %257, 1
  %962 = and i32 %961, 15
  %963 = and i32 %909, 15
  %964 = and i32 %257, 1
  %965 = shl i32 %258, 1
  %966 = and i32 %965, 2
  %967 = or i32 %966, %964
  %968 = lshr i32 %959, 2
  %969 = and i32 %968, 8176
  %970 = lshr i32 %959, 11
  %971 = and i32 %970, 4080
  %972 = or i32 %969, %962
  %973 = or i32 %971, %963
  %974 = lshr i32 %959, 21
  %975 = and i32 %974, 1020
  %976 = or i32 %967, %975
  %977 = fmul fast float %812, 2.550000e+02
  %978 = fadd fast float %977, %251
  %979 = call float @dx.op.unary.f32(i32 27, float %978)  ; Round_ni(value)
  %980 = fmul fast float %979, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %972, i32 %973, i32 %976, float %980, float %980, float %980, float %980, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %981

; <label>:981                                     ; preds = %960, %958
  %982 = icmp eq i32 %307, %311
  br i1 %982, label %983, label %306, !llvm.loop !57

; <label>:983                                     ; preds = %981
  br label %984

; <label>:984                                     ; preds = %983, %280
  %985 = add i32 %281, 1
  %986 = icmp ugt i32 %985, %277
  br i1 %986, label %987, label %280

; <label>:987                                     ; preds = %984
  br label %988

; <label>:988                                     ; preds = %987, %256, %58
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

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
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !25, !28}
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
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !11}
!21 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !24}
!24 = !{i32 1, i32 4}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
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
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}

