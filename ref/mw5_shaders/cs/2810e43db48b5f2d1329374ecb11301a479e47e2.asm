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
; shader hash: 0d1389f7ddf2d9b76c2cc9b7a4273364
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
;                                   texture     u32     2darray      T4            t10     1
;                                   texture    byte         r/o      T5            t19     1
;                                   texture    byte         r/o      T6            t20     1
;                                   texture     f32          1d      T7             t8     1
;                                   texture     f32          2d      T8            t13     1
;                                   texture     f32     2darray      T9             t1     1
;                                   texture    byte         r/o     T10             t6     1
;                                   texture    byte         r/o     T11             t7     1
;                                       UAV     f32     2darray      U0             u0     1
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

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %22 = alloca [4 x i32], align 4
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 0
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %27 = shl i32 %24, 2
  %28 = mul i32 %27, %26
  %29 = add i32 %28, %19
  %30 = shl i32 %29, 2
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = lshr i32 %32, 28
  %34 = and i32 %33, 3
  %35 = lshr i32 %32, 14
  %36 = and i32 %35, 16383
  %37 = and i32 %32, 16383
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %50, label %39, !dx.controlflow.hints !32

; <label>:39                                      ; preds = %0
  %40 = shl nuw nsw i32 %36, 3
  %41 = shl nuw nsw i32 %37, 3
  %42 = or i32 %40, %20
  %43 = or i32 %41, %21
  %44 = add nsw i32 %34, -1
  %45 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %42, i32 %43, i32 %44, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = lshr i32 %46, 4
  %48 = and i32 %47, 15
  %49 = and i32 %46, 15
  br label %55

; <label>:50                                      ; preds = %0
  %51 = shl i32 %20, 1
  %52 = shl i32 %21, 1
  %53 = and i32 %33, 1
  %54 = or i32 %53, %51
  br label %55

; <label>:55                                      ; preds = %50, %39
  %56 = phi i32 [ %48, %39 ], [ %54, %50 ]
  %57 = phi i32 [ %49, %39 ], [ %52, %50 ]
  %58 = shl nuw nsw i32 %36, 4
  %59 = shl nuw nsw i32 %37, 4
  %60 = or i32 %56, %58
  %61 = or i32 %57, %59
  %62 = uitofp i32 %60 to float
  %63 = uitofp i32 %61 to float
  %64 = fadd fast float %62, 5.000000e-01
  %65 = fadd fast float %63, 5.000000e-01
  %66 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %60, i32 %61, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = fcmp fast olt float %67, -1.000000e+00
  %69 = fcmp fast ogt float %67, -1.000000e+00
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %72 = select i1 %69, float %71, float 1.000000e+00
  %73 = fadd fast float %67, 1.000000e+00
  %74 = fmul fast float %72, %73
  %75 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 3
  %79 = fmul fast float %77, %64
  %80 = fmul fast float %78, %65
  %81 = fmul fast float %79, 2.000000e+00
  %82 = fmul fast float %80, 2.000000e+00
  %83 = fsub fast float 1.000000e+00, %81
  %84 = fsub fast float 1.000000e+00, %82
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = select i1 %68, float %86, float %90
  %94 = select i1 %68, float %87, float %91
  %95 = select i1 %68, float %88, float %92
  %96 = fmul fast float %93, %83
  %97 = fmul fast float %94, %83
  %98 = fmul fast float %95, %83
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = select i1 %68, float %100, float %104
  %108 = select i1 %68, float %101, float %105
  %109 = select i1 %68, float %102, float %106
  %110 = fmul fast float %107, %84
  %111 = fmul fast float %108, %84
  %112 = fmul fast float %109, %84
  %113 = fadd fast float %110, %96
  %114 = fadd fast float %111, %97
  %115 = fadd fast float %112, %98
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = select i1 %68, float %117, float %121
  %125 = select i1 %68, float %118, float %122
  %126 = select i1 %68, float %119, float %123
  %127 = fadd fast float %113, %124
  %128 = fadd fast float %114, %125
  %129 = fadd fast float %115, %126
  %130 = fmul fast float %127, %75
  %131 = fmul fast float %128, %75
  %132 = fmul fast float %129, %75
  %133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.i32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.i32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.i32 %133, 2
  %137 = extractvalue %dx.types.CBufRet.i32 %133, 3
  %138 = lshr i32 %60, 1
  %139 = lshr i32 %61, 1
  %140 = and i32 %56, 1
  %141 = shl i32 %57, 1
  %142 = and i32 %141, 2
  %143 = or i32 %142, %140
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %134, i32* %144, align 4
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %135, i32* %145, align 4
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %136, i32* %146, align 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %137, i32* %147, align 4
  %148 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %143
  %149 = load i32, i32* %148, align 4, !tbaa !33
  %150 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 %149, i32 %138, i32 %139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = lshr i32 %151, 8
  %153 = and i32 %151, 255
  %154 = and i32 %152, 255
  %155 = uitofp i32 %153 to float
  %156 = uitofp i32 %154 to float
  %157 = fmul fast float %155, 0x3F80101020000000
  %158 = fmul fast float %156, 0x3F80101020000000
  %159 = fadd fast float %157, -1.000000e+00
  %160 = fadd fast float %158, -1.000000e+00
  %161 = call float @dx.op.unary.f32(i32 6, float %159)  ; FAbs(value)
  %162 = fsub fast float 1.000000e+00, %161
  %163 = call float @dx.op.unary.f32(i32 6, float %160)  ; FAbs(value)
  %164 = fsub fast float %162, %163
  %165 = fsub fast float -0.000000e+00, %164
  %166 = call float @dx.op.binary.f32(i32 35, float %165, float 0.000000e+00)  ; FMax(a,b)
  %167 = fcmp fast ogt float %159, 0.000000e+00
  %168 = fsub fast float -0.000000e+00, %166
  %169 = select i1 %167, float %168, float %166
  %170 = fadd fast float %169, %159
  %171 = fcmp fast ogt float %160, 0.000000e+00
  %172 = select i1 %171, float %168, float %166
  %173 = fadd fast float %172, %160
  %174 = call float @dx.op.dot3.f32(i32 55, float %170, float %173, float %164, float %170, float %173, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = call float @dx.op.unary.f32(i32 25, float %174)  ; Rsqrt(value)
  %176 = fmul fast float %170, %175
  %177 = fmul fast float %173, %175
  %178 = fmul fast float %175, %164
  %179 = fmul fast float %77, %62
  %180 = fmul fast float %78, %63
  %181 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %179, float %180, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = extractvalue %dx.types.ResRet.f32 %181, 1
  %184 = extractvalue %dx.types.ResRet.f32 %181, 2
  %185 = fcmp fast ogt float %182, -1.000000e+00
  %186 = select i1 %185, float %71, float 1.000000e+00
  %187 = fadd fast float %182, 1.000000e+00
  %188 = fmul fast float %186, %187
  %189 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %190 = fcmp fast ogt float %183, -1.000000e+00
  %191 = select i1 %190, float %71, float 1.000000e+00
  %192 = fadd fast float %183, 1.000000e+00
  %193 = fmul fast float %191, %192
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = fcmp fast ogt float %184, -1.000000e+00
  %196 = select i1 %195, float %71, float 1.000000e+00
  %197 = fadd fast float %184, 1.000000e+00
  %198 = fmul fast float %196, %197
  %199 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %200 = fadd fast float %62, 1.000000e+00
  %201 = fmul fast float %77, %200
  %202 = fadd fast float %63, 1.000000e+00
  %203 = fmul fast float %78, %202
  %204 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %201, float %203, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = extractvalue %dx.types.ResRet.f32 %204, 2
  %207 = fcmp fast ogt float %205, -1.000000e+00
  %208 = select i1 %207, float %71, float 1.000000e+00
  %209 = fadd fast float %205, 1.000000e+00
  %210 = fmul fast float %208, %209
  %211 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %212 = fcmp fast ogt float %206, -1.000000e+00
  %213 = select i1 %212, float %71, float 1.000000e+00
  %214 = fadd fast float %206, 1.000000e+00
  %215 = fmul fast float %213, %214
  %216 = call float @dx.op.unary.f32(i32 6, float %215)  ; FAbs(value)
  %217 = fsub fast float %199, %194
  %218 = fsub fast float %211, %194
  %219 = fsub fast float %189, %194
  %220 = fsub fast float %216, %194
  %221 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %222 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %223 = call float @dx.op.binary.f32(i32 35, float %222, float %221)  ; FMax(a,b)
  %224 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %225 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float %224)  ; FMax(a,b)
  %227 = fadd fast float %218, %217
  %228 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %229 = fadd fast float %220, %219
  %230 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %231 = fsub fast float %226, %230
  %232 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %233 = fsub fast float %223, %228
  %234 = call float @dx.op.unary.f32(i32 6, float %233)  ; FAbs(value)
  %235 = call float @dx.op.binary.f32(i32 35, float %234, float %232)  ; FMax(a,b)
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %238 = fmul fast float %237, 0x3FE3C6EF40000000
  %239 = frem fast float %64, 2.560000e+02
  %240 = frem fast float %65, 2.560000e+02
  %241 = fptoui float %239 to i32
  %242 = fptoui float %240 to i32
  %243 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %241, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 2
  %246 = fadd fast float %244, %238
  %247 = fadd fast float %245, %238
  %248 = call float @dx.op.unary.f32(i32 22, float %246)  ; Frc(value)
  %249 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.i32 %250, 0
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %841, label %253, !dx.controlflow.hints !37

; <label>:253                                     ; preds = %55
  %254 = fptoui float %64 to i32
  %255 = fptoui float %65 to i32
  %256 = lshr i32 %254, 4
  %257 = lshr i32 %255, 4
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 0
  %260 = call i32 @dx.op.tertiary.i32(i32 49, i32 %257, i32 %259, i32 %256)  ; UMad(a,b,c)
  %261 = add nsw i32 %251, -1
  %262 = call i32 @dx.op.binary.i32(i32 37, i32 %261, i32 0)  ; IMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %264 = fptoui float %263 to i32
  %265 = lshr i32 %264, 5
  %266 = call i32 @dx.op.binary.i32(i32 40, i32 %265, i32 8191)  ; UMin(a,b)
  %267 = shl i32 %266, 2
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = lshr i32 %269, 16
  %271 = and i32 %269, 65535
  %272 = lshr i32 %269, 21
  %273 = lshr i32 %271, 5
  %274 = call i32 @dx.op.binary.i32(i32 40, i32 %273, i32 %262)  ; UMin(a,b)
  %275 = icmp ugt i32 %272, %274
  br i1 %275, label %841, label %276

; <label>:276                                     ; preds = %253
  br label %277

; <label>:277                                     ; preds = %837, %276
  %278 = phi i32 [ %838, %837 ], [ %272, %276 ]
  %279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.i32 %279, 0
  %281 = call i32 @dx.op.tertiary.i32(i32 49, i32 %260, i32 %280, i32 %278)  ; UMad(a,b,c)
  %282 = shl i32 %281, 2
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = shl i32 %278, 5
  %286 = sub nsw i32 %270, %285
  %287 = call i32 @dx.op.binary.i32(i32 37, i32 %286, i32 0)  ; IMax(a,b)
  %288 = call i32 @dx.op.binary.i32(i32 38, i32 %287, i32 31)  ; IMin(a,b)
  %289 = sub nsw i32 1, %270
  %290 = add nsw i32 %289, %271
  %291 = call i32 @dx.op.binary.i32(i32 37, i32 %290, i32 0)  ; IMax(a,b)
  %292 = call i32 @dx.op.binary.i32(i32 38, i32 %291, i32 32)  ; IMin(a,b)
  %293 = and i32 %292, 31
  %294 = shl i32 -1, %293
  %295 = xor i32 %294, -1
  %296 = and i32 %288, 31
  %297 = shl i32 %295, %296
  %298 = icmp eq i32 %292, 32
  %299 = select i1 %298, i32 -1, i32 %297
  %300 = and i32 %299, %284
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %837, label %302

; <label>:302                                     ; preds = %277
  br label %303

; <label>:303                                     ; preds = %808, %302
  %304 = phi i32 [ %309, %808 ], [ %300, %302 ]
  %305 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %304)  ; FirstbitLo(value)
  %306 = add i32 %305, %285
  %307 = and i32 %305, 31
  %308 = shl i32 1, %307
  %309 = xor i32 %308, %304
  %310 = mul i32 %306, 112
  %311 = add i32 %310, 16
  %312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 0
  %314 = extractvalue %dx.types.ResRet.f32 %312, 1
  %315 = extractvalue %dx.types.ResRet.f32 %312, 2
  %316 = add i32 %310, 28
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = add i32 %310, 32
  %320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = extractvalue %dx.types.ResRet.f32 %320, 1
  %323 = extractvalue %dx.types.ResRet.f32 %320, 2
  %324 = add i32 %310, 44
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = add i32 %310, 48
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = extractvalue %dx.types.ResRet.f32 %328, 3
  %333 = add i32 %310, 64
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = extractvalue %dx.types.ResRet.f32 %334, 3
  %339 = add i32 %310, 92
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = uitofp i32 %342 to float
  %344 = lshr i32 %341, 16
  %345 = uitofp i32 %344 to float
  %346 = and i32 %318, 65535
  %347 = and i32 %318, 50331648
  %348 = icmp eq i32 %347, 33554432
  %349 = call float @dx.op.dot3.f32(i32 55, float %321, float %322, float %323, float %321, float %322, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = fsub fast float %130, %329
  %351 = fsub fast float %131, %330
  %352 = fsub fast float %132, %331
  %353 = call float @dx.op.dot3.f32(i32 55, float %350, float %351, float %352, float %321, float %322, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = fdiv fast float %353, %349
  %355 = call float @dx.op.binary.f32(i32 35, float %354, float -1.000000e+00)  ; FMax(a,b)
  %356 = call float @dx.op.binary.f32(i32 36, float %355, float 1.000000e+00)  ; FMin(a,b)
  %357 = fmul fast float %356, %321
  %358 = fmul fast float %356, %322
  %359 = fmul fast float %356, %323
  %360 = fadd fast float %357, %329
  %361 = fadd fast float %358, %330
  %362 = fadd fast float %359, %331
  %363 = fsub fast float %360, %130
  %364 = fsub fast float %361, %131
  %365 = fsub fast float %362, %132
  %366 = call float @dx.op.dot3.f32(i32 55, float %363, float %364, float %365, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %367 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %368 = fdiv fast float 1.000000e+00, %367
  %369 = fmul fast float %363, %368
  %370 = fmul fast float %364, %368
  %371 = fmul fast float %365, %368
  br i1 %348, label %372, label %396, !dx.controlflow.hints !38

; <label>:372                                     ; preds = %303
  %373 = fmul fast float %337, %313
  %374 = fmul fast float %337, %314
  %375 = fmul fast float %337, %315
  %376 = fsub fast float %373, %130
  %377 = fadd fast float %376, %360
  %378 = fsub fast float %374, %131
  %379 = fadd fast float %378, %361
  %380 = fsub fast float %375, %132
  %381 = fadd fast float %380, %362
  %382 = call float @dx.op.dot3.f32(i32 55, float %377, float %379, float %381, float %377, float %379, float %381)  ; Dot3(ax,ay,az,bx,by,bz)
  %383 = call float @dx.op.unary.f32(i32 25, float %382)  ; Rsqrt(value)
  %384 = fmul fast float %383, %377
  %385 = fmul fast float %383, %379
  %386 = fmul fast float %383, %381
  %387 = fsub fast float %130, %360
  %388 = fsub fast float %131, %361
  %389 = fsub fast float %132, %362
  %390 = fsub fast float -0.000000e+00, %387
  %391 = fsub fast float -0.000000e+00, %388
  %392 = fsub fast float -0.000000e+00, %389
  %393 = call float @dx.op.dot3.f32(i32 55, float %390, float %391, float %392, float %313, float %314, float %315)  ; Dot3(ax,ay,az,bx,by,bz)
  %394 = fcmp fast ogt float %393, 0.000000e+00
  %395 = uitofp i1 %394 to float
  br label %396

; <label>:396                                     ; preds = %372, %303
  %397 = phi float [ %395, %372 ], [ 1.000000e+00, %303 ]
  %398 = phi float [ %384, %372 ], [ %369, %303 ]
  %399 = phi float [ %385, %372 ], [ %370, %303 ]
  %400 = phi float [ %386, %372 ], [ %371, %303 ]
  %401 = call float @dx.op.dot3.f32(i32 55, float %313, float %314, float %315, float %398, float %399, float %400)  ; Dot3(ax,ay,az,bx,by,bz)
  %402 = fmul fast float %401, %401
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = fsub fast float 1.000000e+00, %403
  %405 = fmul fast float %404, 5.000000e-01
  %406 = fcmp fast ogt float %401, 0.000000e+00
  %407 = fsub fast float 1.000000e+00, %405
  %408 = select i1 %406, float %405, float %407
  %409 = fmul fast float %408, %345
  %410 = fadd fast float %409, %343
  %411 = fmul fast float %410, 0x3EF0001000000000
  %412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %411, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = fmul fast float %401, %335
  %415 = fadd fast float %414, %336
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = select i1 %348, float %416, float 1.000000e+00
  %418 = fmul fast float %367, %332
  %419 = fsub fast float 1.000000e+00, %418
  %420 = fmul fast float %419, %338
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = fmul fast float %421, %417
  %423 = fmul fast float %422, 2.000000e+00
  %424 = fsub fast float 3.000000e+00, %423
  %425 = fmul fast float %413, %397
  %426 = fmul fast float %422, %422
  %427 = fmul fast float %426, %425
  %428 = fmul fast float %427, %424
  %429 = icmp ne i32 %346, 255
  %430 = call float @dx.op.binary.f32(i32 36, float %428, float %428)  ; FMin(a,b)
  %431 = call float @dx.op.binary.f32(i32 36, float %428, float %430)  ; FMin(a,b)
  %432 = fcmp fast ogt float %431, 0.000000e+00
  %433 = and i1 %429, %432
  br i1 %433, label %434, label %533, !dx.controlflow.hints !39

; <label>:434                                     ; preds = %396
  %435 = select i1 %348, float 1.000000e+00, float %416
  %436 = mul nuw nsw i32 %346, 176
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = extractvalue %dx.types.ResRet.f32 %437, 3
  %442 = add nuw nsw i32 %436, 16
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = add nuw nsw i32 %436, 32
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = add nuw nsw i32 %436, 48
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = extractvalue %dx.types.ResRet.f32 %452, 3
  %457 = add nuw nsw i32 %436, 64
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  %462 = extractvalue %dx.types.ResRet.f32 %458, 3
  %463 = add nuw nsw i32 %436, 80
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = extractvalue %dx.types.ResRet.f32 %464, 3
  %469 = add nuw nsw i32 %436, 96
  %470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  %472 = extractvalue %dx.types.ResRet.f32 %470, 1
  %473 = extractvalue %dx.types.ResRet.f32 %470, 2
  %474 = extractvalue %dx.types.ResRet.f32 %470, 3
  %475 = bitcast float %445 to i32
  %476 = fmul fast float %450, %176
  %477 = fmul fast float %450, %177
  %478 = fmul fast float %450, %178
  %479 = fadd fast float %476, %130
  %480 = fadd fast float %477, %131
  %481 = fadd fast float %478, %132
  %482 = fmul fast float %479, %453
  %483 = call float @dx.op.tertiary.f32(i32 46, float %480, float %459, float %482)  ; FMad(a,b,c)
  %484 = call float @dx.op.tertiary.f32(i32 46, float %481, float %465, float %483)  ; FMad(a,b,c)
  %485 = fadd fast float %484, %471
  %486 = fmul fast float %479, %454
  %487 = call float @dx.op.tertiary.f32(i32 46, float %480, float %460, float %486)  ; FMad(a,b,c)
  %488 = call float @dx.op.tertiary.f32(i32 46, float %481, float %466, float %487)  ; FMad(a,b,c)
  %489 = fadd fast float %488, %472
  %490 = fmul fast float %479, %455
  %491 = call float @dx.op.tertiary.f32(i32 46, float %480, float %461, float %490)  ; FMad(a,b,c)
  %492 = call float @dx.op.tertiary.f32(i32 46, float %481, float %467, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %492, %473
  %494 = fmul fast float %479, %456
  %495 = call float @dx.op.tertiary.f32(i32 46, float %480, float %462, float %494)  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %481, float %468, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %496, %474
  %498 = fdiv fast float %485, %497
  %499 = fdiv fast float %489, %497
  %500 = fdiv fast float %493, %497
  %501 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %500)  ; FMax(a,b)
  %502 = fmul fast float %248, 0x401921FB60000000
  %503 = call float @dx.op.unary.f32(i32 13, float %502)  ; Sin(value)
  %504 = call float @dx.op.unary.f32(i32 12, float %502)  ; Cos(value)
  %505 = fsub fast float -0.000000e+00, %503
  %506 = fmul fast float %440, 5.000000e-01
  %507 = call float @dx.op.dot2.f32(i32 54, float %248, float %248, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %508 = call float @dx.op.unary.f32(i32 22, float %507)  ; Frc(value)
  %509 = fmul fast float %508, 0x404A7DD040000000
  %510 = call float @dx.op.unary.f32(i32 22, float %509)  ; Frc(value)
  %511 = fmul fast float %510, %449
  %512 = fadd fast float %511, %506
  %513 = call float @dx.op.tertiary.f32(i32 46, float %512, float %505, float 0.000000e+00)  ; FMad(a,b,c)
  %514 = call float @dx.op.tertiary.f32(i32 46, float %512, float %504, float 0.000000e+00)  ; FMad(a,b,c)
  %515 = fadd fast float %513, %498
  %516 = fadd fast float %514, %499
  %517 = fmul fast float %515, %444
  %518 = fmul fast float %516, %444
  %519 = call float @dx.op.binary.f32(i32 35, float %517, float %440)  ; FMax(a,b)
  %520 = call float @dx.op.binary.f32(i32 35, float %518, float %440)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 36, float %519, float %441)  ; FMin(a,b)
  %522 = call float @dx.op.binary.f32(i32 36, float %520, float %441)  ; FMin(a,b)
  %523 = fadd fast float %521, %438
  %524 = fadd fast float %522, %439
  %525 = uitofp i32 %475 to float
  %526 = fadd fast float %501, %448
  %527 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %16, float %523, float %524, float %525, float undef, i32 0, i32 0, i32 undef, float %526)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = fadd fast float %528, -1.000000e+00
  %530 = fmul fast float %529, %435
  %531 = fadd fast float %530, 1.000000e+00
  %532 = fmul fast float %531, %428
  br label %533

; <label>:533                                     ; preds = %434, %396
  %534 = phi float [ %532, %434 ], [ %428, %396 ]
  %535 = call float @dx.op.binary.f32(i32 36, float %534, float %534)  ; FMin(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float %534, float %535)  ; FMin(a,b)
  %537 = fcmp fast ogt float %536, 0.000000e+00
  %538 = call float @dx.op.dot3.f32(i32 55, float %176, float %177, float %178, float %369, float %370, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %539 = fcmp fast ogt float %538, 0.000000e+00
  %540 = and i1 %537, %539
  br i1 %540, label %541, label %808, !dx.controlflow.hints !40

; <label>:541                                     ; preds = %533
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 1
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %546 = select i1 %68, float %543, float %545
  %547 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %548 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %549 = select i1 %68, float %547, float %548
  %550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.i32 %550, 0
  %552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.i32 %552, 0
  %554 = select i1 %68, i32 %551, i32 %553
  %555 = fcmp fast olt float %546, 5.000000e-01
  %556 = icmp eq i32 %554, 0
  %557 = or i1 %555, %556
  br i1 %557, label %805, label %558, !dx.controlflow.hints !41

; <label>:558                                     ; preds = %541
  %559 = fsub fast float %329, %130
  %560 = fsub fast float %330, %131
  %561 = fsub fast float %331, %132
  %562 = fmul fast float %559, %559
  %563 = fmul fast float %560, %560
  %564 = fadd fast float %562, %563
  %565 = fmul fast float %561, %561
  %566 = fadd fast float %564, %565
  %567 = call float @dx.op.unary.f32(i32 24, float %566)  ; Sqrt(value)
  %568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.i32 %568, 0
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %546, %326
  %572 = fdiv fast float %571, %567
  %573 = call float @dx.op.binary.f32(i32 36, float %572, float 1.000000e+01)  ; FMin(a,b)
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %578 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %582 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %583 = extractvalue %dx.types.CBufRet.f32 %579, 3
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %593 = extractvalue %dx.types.CBufRet.f32 %589, 3
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %597 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %598 = extractvalue %dx.types.CBufRet.f32 %594, 3
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %601 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %602 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %603 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %604 = select i1 %68, float %575, float %590
  %605 = select i1 %68, float %580, float %595
  %606 = select i1 %68, float %585, float %600
  %607 = select i1 %68, float %576, float %591
  %608 = select i1 %68, float %581, float %596
  %609 = select i1 %68, float %586, float %601
  %610 = select i1 %68, float %577, float %592
  %611 = select i1 %68, float %582, float %597
  %612 = select i1 %68, float %587, float %602
  %613 = select i1 %68, float %578, float %593
  %614 = select i1 %68, float %583, float %598
  %615 = select i1 %68, float %588, float %603
  %616 = fmul fast float %249, 0x401061CAC0000000
  %617 = fmul fast float %249, 0x4023E1D7E0000000
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %622 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %623 = fsub fast float -0.000000e+00, %369
  %624 = fmul fast float %371, %623
  %625 = fmul fast float %369, %623
  %626 = fmul fast float %370, %370
  %627 = fsub fast float %625, %626
  %628 = fdiv fast float 1.000000e+00, %75
  %629 = fmul fast float %621, %64
  %630 = fmul fast float %622, %65
  %631 = fmul fast float %546, %369
  %632 = fmul fast float %546, %371
  %633 = fadd fast float %631, %130
  %634 = fadd fast float %632, %132
  %635 = fadd fast float %617, 5.000000e-01
  %636 = call float @dx.op.unary.f32(i32 22, float %635)  ; Frc(value)
  %637 = bitcast float %636 to i32
  %638 = ashr i32 %637, 1
  %639 = add nsw i32 %638, 532487669
  %640 = bitcast i32 %639 to float
  %641 = fmul fast float %640, %573
  %642 = fadd fast float %616, 5.000000e-01
  %643 = call float @dx.op.unary.f32(i32 22, float %642)  ; Frc(value)
  %644 = fmul fast float %643, 0x401921FB60000000
  %645 = call float @dx.op.unary.f32(i32 12, float %644)  ; Cos(value)
  %646 = fmul fast float %645, %645
  %647 = fsub fast float 1.000000e+00, %646
  %648 = bitcast float %647 to i32
  %649 = ashr i32 %648, 1
  %650 = add nsw i32 %649, 532487669
  %651 = bitcast i32 %650 to float
  %652 = fmul fast float %641, %645
  %653 = fmul fast float %652, %370
  %654 = fmul fast float %652, %623
  %655 = fadd fast float %633, %653
  %656 = fmul fast float %651, %641
  %657 = fmul fast float %624, %656
  %658 = fmul fast float %656, %371
  %659 = fmul fast float %656, %627
  %660 = fsub fast float %655, %657
  %661 = fadd fast float %658, %546
  %662 = fmul fast float %661, %370
  %663 = fadd fast float %654, %131
  %664 = fadd fast float %663, %662
  %665 = fadd fast float %634, %659
  %666 = fmul fast float %660, %604
  %667 = call float @dx.op.tertiary.f32(i32 46, float %664, float %607, float %666)  ; FMad(a,b,c)
  %668 = call float @dx.op.tertiary.f32(i32 46, float %665, float %610, float %667)  ; FMad(a,b,c)
  %669 = fadd fast float %668, %613
  %670 = fmul fast float %660, %605
  %671 = call float @dx.op.tertiary.f32(i32 46, float %664, float %608, float %670)  ; FMad(a,b,c)
  %672 = call float @dx.op.tertiary.f32(i32 46, float %665, float %611, float %671)  ; FMad(a,b,c)
  %673 = fadd fast float %672, %614
  %674 = fmul fast float %660, %606
  %675 = call float @dx.op.tertiary.f32(i32 46, float %664, float %609, float %674)  ; FMad(a,b,c)
  %676 = call float @dx.op.tertiary.f32(i32 46, float %665, float %612, float %675)  ; FMad(a,b,c)
  %677 = fadd fast float %676, %615
  %678 = fdiv fast float 1.000000e+00, %677
  %679 = fmul fast float %669, 5.000000e-01
  %680 = fmul fast float %673, -5.000000e-01
  %681 = fmul fast float %679, %678
  %682 = fmul fast float %680, %678
  %683 = fsub fast float 5.000000e-01, %629
  %684 = fadd fast float %683, %681
  %685 = fsub fast float 5.000000e-01, %630
  %686 = fadd fast float %685, %682
  %687 = fsub fast float %678, %628
  %688 = call float @dx.op.dot2.f32(i32 54, float %684, float %686, float %684, float %686)  ; Dot2(ax,ay,bx,by)
  %689 = call float @dx.op.binary.f32(i32 35, float %688, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %690 = call float @dx.op.dot2.f32(i32 54, float %619, float %620, float %619, float %620)  ; Dot2(ax,ay,bx,by)
  %691 = fmul fast float %690, %689
  %692 = call float @dx.op.unary.f32(i32 25, float %691)  ; Rsqrt(value)
  %693 = fmul fast float %692, %684
  %694 = fmul fast float %692, %686
  %695 = fadd fast float %693, %629
  %696 = fadd fast float %694, %630
  %697 = fmul fast float %684, %619
  %698 = fmul fast float %686, %620
  %699 = fmul fast float %697, %697
  %700 = fmul fast float %698, %698
  %701 = fadd fast float %699, %700
  %702 = call float @dx.op.unary.f32(i32 24, float %701)  ; Sqrt(value)
  %703 = fdiv fast float 1.000000e+00, %702
  %704 = fmul fast float %702, 3.906250e-03
  %705 = fmul fast float %235, 0x3F70624DE0000000
  %706 = fadd fast float %705, 0x3F70624DE0000000
  %707 = icmp sgt i32 %554, -1
  br i1 %707, label %708, label %770

; <label>:708                                     ; preds = %558
  br label %709

; <label>:709                                     ; preds = %766, %708
  %710 = phi float [ %741, %766 ], [ %75, %708 ]
  %711 = phi float [ %728, %766 ], [ %75, %708 ]
  %712 = phi float [ %711, %766 ], [ %75, %708 ]
  %713 = phi i32 [ %767, %766 ], [ 0, %708 ]
  %714 = sitofp i32 %713 to float
  %715 = fadd fast float %249, 5.000000e-01
  %716 = call float @dx.op.unary.f32(i32 22, float %715)  ; Frc(value)
  %717 = fadd fast float %714, %716
  %718 = sitofp i32 %554 to float
  %719 = fdiv fast float %717, %718
  %720 = fmul fast float %719, %719
  %721 = call float @dx.op.binary.f32(i32 36, float %720, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %722 = fmul fast float %721, %684
  %723 = fmul fast float %721, %686
  %724 = fmul fast float %721, %687
  %725 = fadd fast float %722, %695
  %726 = fadd fast float %723, %696
  %727 = fadd fast float %724, %628
  %728 = fdiv fast float 1.000000e+00, %727
  %729 = icmp ne i32 %569, 0
  %730 = fmul fast float %704, %721
  %731 = call float @dx.op.binary.f32(i32 36, float %730, float %570)  ; FMin(a,b)
  %732 = select i1 %729, float %731, float 0.000000e+00
  %733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %725, float %726, float undef, float undef, i32 0, i32 0, i32 undef, float %732)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %734 = extractvalue %dx.types.ResRet.f32 %733, 0
  %735 = fcmp fast ogt float %734, -1.000000e+00
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %738 = select i1 %735, float %737, float 1.000000e+00
  %739 = fadd fast float %734, 1.000000e+00
  %740 = fmul fast float %738, %739
  %741 = call float @dx.op.unary.f32(i32 6, float %740)  ; FAbs(value)
  %742 = fmul fast float %741, %706
  %743 = fsub fast float %728, %741
  %744 = fsub fast float %743, %742
  %745 = fcmp fast ogt float %744, 0.000000e+00
  %746 = fcmp fast ogt float %549, 0.000000e+00
  br i1 %746, label %747, label %750, !dx.controlflow.hints !42

; <label>:747                                     ; preds = %709
  %748 = fsub fast float %728, %712
  %749 = call float @dx.op.binary.f32(i32 35, float %748, float %549)  ; FMax(a,b)
  br label %750

; <label>:750                                     ; preds = %747, %709
  %751 = phi float [ %749, %747 ], [ %546, %709 ]
  %752 = fcmp fast olt float %744, %751
  %753 = fcmp uge float %734, -1.000000e+00
  %754 = or i1 %68, %753
  %755 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %756 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %757 = fcmp fast oeq float %725, %755
  %758 = fcmp fast oeq float %726, %756
  %759 = and i1 %757, %758
  %760 = and i1 %754, %759
  %761 = and i1 %745, %752
  %762 = and i1 %761, %760
  %763 = fcmp fast ogt float %721, %703
  %764 = and i1 %763, %762
  %765 = zext i1 %764 to i32
  br i1 %764, label %769, label %766, !dx.controlflow.hints !43

; <label>:766                                     ; preds = %750
  %767 = add nuw nsw i32 %713, 1
  %768 = icmp slt i32 %713, %554
  br i1 %768, label %709, label %769

; <label>:769                                     ; preds = %766, %750
  br label %770

; <label>:770                                     ; preds = %769, %558
  %771 = phi i32 [ 0, %558 ], [ %765, %769 ]
  %772 = phi float [ %75, %558 ], [ %741, %769 ]
  %773 = phi float [ %75, %558 ], [ %710, %769 ]
  %774 = phi float [ %75, %558 ], [ %728, %769 ]
  %775 = phi float [ %75, %558 ], [ %711, %769 ]
  %776 = fsub fast float %775, %773
  %777 = fsub fast float %774, %772
  %778 = fsub fast float %776, %777
  %779 = fcmp fast une float %778, 0.000000e+00
  %780 = fmul fast float %776, %774
  %781 = fmul fast float %775, %777
  %782 = fsub fast float %780, %781
  %783 = fdiv fast float 1.000000e+00, %778
  %784 = fmul fast float %782, %783
  %785 = select i1 %779, float %784, float %774
  %786 = fdiv fast float 1.000000e+00, %785
  %787 = fsub fast float %786, %628
  %788 = fdiv fast float %787, %687
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = fmul fast float %789, %684
  %791 = fmul fast float %789, %686
  %792 = fadd fast float %790, %695
  %793 = fadd fast float %791, %696
  %794 = fadd fast float %792, -5.000000e-01
  %795 = fadd fast float %793, -5.000000e-01
  %796 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %797 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %798 = fadd fast float %796, -5.000000e-01
  %799 = fadd fast float %797, -5.000000e-01
  %800 = call float @dx.op.binary.f32(i32 35, float %798, float %799)  ; FMax(a,b)
  %801 = fcmp fast olt float %800, 0.000000e+00
  %802 = icmp ne i32 %771, 0
  %803 = and i1 %802, %801
  %804 = select i1 %803, float 0.000000e+00, float 1.000000e+00
  br label %805

; <label>:805                                     ; preds = %770, %541
  %806 = phi float [ %804, %770 ], [ 1.000000e+00, %541 ]
  %807 = fmul fast float %806, %534
  br label %808

; <label>:808                                     ; preds = %805, %533
  %809 = phi float [ %807, %805 ], [ %534, %533 ]
  %810 = lshr i32 %254, 5
  %811 = lshr i32 %255, 5
  %812 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %810, i32 %811, i32 %306, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %254, 1
  %815 = lshr i32 %255, 1
  %816 = and i32 %814, 15
  %817 = and i32 %815, 15
  %818 = and i32 %254, 1
  %819 = shl i32 %255, 1
  %820 = and i32 %819, 2
  %821 = or i32 %820, %818
  %822 = lshr i32 %813, 2
  %823 = and i32 %822, 8176
  %824 = lshr i32 %813, 11
  %825 = and i32 %824, 4080
  %826 = or i32 %823, %816
  %827 = or i32 %825, %817
  %828 = lshr i32 %813, 21
  %829 = and i32 %828, 1020
  %830 = or i32 %821, %829
  %831 = fmul fast float %809, 2.550000e+02
  %832 = fadd fast float %831, %248
  %833 = call float @dx.op.unary.f32(i32 27, float %832)  ; Round_ni(value)
  %834 = fmul fast float %833, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %826, i32 %827, i32 %830, float %834, float %834, float %834, float %834, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %835 = icmp eq i32 %304, %308
  br i1 %835, label %836, label %303, !llvm.loop !44

; <label>:836                                     ; preds = %808
  br label %837

; <label>:837                                     ; preds = %836, %277
  %838 = add i32 %278, 1
  %839 = icmp ugt i32 %838, %274
  br i1 %839, label %840, label %277

; <label>:840                                     ; preds = %837
  br label %841

; <label>:841                                     ; preds = %840, %253, %55
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !22, !25}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19}
!6 = !{i32 0, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 2, i32 1, i32 3, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 7, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 9}
!12 = !{i32 4, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %"class.Texture1D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 1, i32 0, !11}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !11}
!17 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !11}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!20 = !{!21}
!21 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !11}
!22 = !{!23, !24}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!25 = !{!26, !27, !28}
!26 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}

