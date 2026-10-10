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
; shader hash: bd6e15b8b0d1386d4a8d3bf9fbefdfac
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
;                                   sampler      NA          NA      S1             s2     1
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
;                                       UAV    byte         r/w      U1             u6     1
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

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %27 = shl i32 %24, 3
  %28 = mul i32 %27, %26
  %29 = add i32 %28, %19
  %30 = shl i32 %29, 2
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = lshr i32 %32, 28
  %34 = and i32 %33, 7
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
  %45 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %42, i32 %43, i32 %44, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %66 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %60, i32 %61, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %79 = fmul fast float %64, 2.000000e+00
  %80 = fmul fast float %79, %77
  %81 = fmul fast float %65, 2.000000e+00
  %82 = fmul fast float %81, %78
  %83 = fsub fast float 1.000000e+00, %80
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
  %150 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %14, i32 %149, i32 %138, i32 %139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = fmul fast float %180, 0x3FE3C6EF40000000
  %182 = frem fast float %64, 2.560000e+02
  %183 = frem fast float %65, 2.560000e+02
  %184 = fptoui float %182 to i32
  %185 = fptoui float %183 to i32
  %186 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %184, i32 %185, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fadd fast float %187, %181
  %189 = call float @dx.op.unary.f32(i32 22, float %188)  ; Frc(value)
  %190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.i32 %190, 0
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %520, label %193, !dx.controlflow.hints !37

; <label>:193                                     ; preds = %55
  %194 = fptoui float %64 to i32
  %195 = fptoui float %65 to i32
  %196 = lshr i32 %194, 4
  %197 = lshr i32 %195, 4
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 0
  %200 = call i32 @dx.op.tertiary.i32(i32 49, i32 %197, i32 %199, i32 %196)  ; UMad(a,b,c)
  %201 = add nsw i32 %191, -1
  %202 = call i32 @dx.op.binary.i32(i32 37, i32 %201, i32 0)  ; IMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %204 = fptoui float %203 to i32
  %205 = lshr i32 %204, 5
  %206 = call i32 @dx.op.binary.i32(i32 40, i32 %205, i32 8191)  ; UMin(a,b)
  %207 = shl i32 %206, 2
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 16
  %211 = and i32 %209, 65535
  %212 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %210, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %213 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %211, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %214 = lshr i32 %212, 5
  %215 = lshr i32 %213, 5
  %216 = call i32 @dx.op.binary.i32(i32 40, i32 %215, i32 %202)  ; UMin(a,b)
  %217 = icmp ugt i32 %214, %216
  br i1 %217, label %520, label %218

; <label>:218                                     ; preds = %193
  br label %219

; <label>:219                                     ; preds = %510, %218
  %220 = phi i32 [ %517, %510 ], [ %214, %218 ]
  %221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.i32 %221, 0
  %223 = call i32 @dx.op.tertiary.i32(i32 49, i32 %200, i32 %222, i32 %220)  ; UMad(a,b,c)
  %224 = shl i32 %223, 2
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = shl i32 %220, 5
  %228 = sub nsw i32 %210, %227
  %229 = call i32 @dx.op.binary.i32(i32 37, i32 %228, i32 0)  ; IMax(a,b)
  %230 = call i32 @dx.op.binary.i32(i32 38, i32 %229, i32 31)  ; IMin(a,b)
  %231 = sub nsw i32 1, %210
  %232 = add nsw i32 %231, %211
  %233 = call i32 @dx.op.binary.i32(i32 37, i32 %232, i32 0)  ; IMax(a,b)
  %234 = call i32 @dx.op.binary.i32(i32 38, i32 %233, i32 32)  ; IMin(a,b)
  %235 = and i32 %234, 31
  %236 = shl i32 -1, %235
  %237 = xor i32 %236, -1
  %238 = and i32 %230, 31
  %239 = shl i32 %237, %238
  %240 = icmp eq i32 %234, 32
  %241 = select i1 %240, i32 -1, i32 %239
  %242 = and i32 %241, %226
  %243 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %242, i8 1)  ; WaveActiveBit(value,op)
  %244 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %243)  ; WaveReadLaneFirst(value)
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %510, label %246

; <label>:246                                     ; preds = %219
  br label %247

; <label>:247                                     ; preds = %475, %246
  %248 = phi i32 [ %482, %475 ], [ 0, %246 ]
  %249 = phi i32 [ %254, %475 ], [ %244, %246 ]
  %250 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %249)  ; FirstbitLo(value)
  %251 = add i32 %250, %227
  %252 = and i32 %250, 31
  %253 = shl i32 1, %252
  %254 = xor i32 %253, %249
  %255 = mul i32 %251, 112
  %256 = add i32 %255, 16
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = add i32 %255, 28
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = add i32 %255, 32
  %265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = add i32 %255, 48
  %270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = extractvalue %dx.types.ResRet.f32 %270, 1
  %273 = extractvalue %dx.types.ResRet.f32 %270, 2
  %274 = extractvalue %dx.types.ResRet.f32 %270, 3
  %275 = add i32 %255, 64
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = add i32 %255, 92
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 65535
  %285 = uitofp i32 %284 to float
  %286 = lshr i32 %283, 16
  %287 = uitofp i32 %286 to float
  %288 = and i32 %263, 65535
  %289 = and i32 %263, 50331648
  %290 = icmp eq i32 %289, 33554432
  %291 = call float @dx.op.dot3.f32(i32 55, float %266, float %267, float %268, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %292 = fsub fast float %130, %271
  %293 = fsub fast float %131, %272
  %294 = fsub fast float %132, %273
  %295 = call float @dx.op.dot3.f32(i32 55, float %292, float %293, float %294, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %296 = fdiv fast float %295, %291
  %297 = call float @dx.op.binary.f32(i32 35, float %296, float -1.000000e+00)  ; FMax(a,b)
  %298 = call float @dx.op.binary.f32(i32 36, float %297, float 1.000000e+00)  ; FMin(a,b)
  %299 = fmul fast float %298, %266
  %300 = fmul fast float %298, %267
  %301 = fmul fast float %298, %268
  %302 = fadd fast float %299, %271
  %303 = fadd fast float %300, %272
  %304 = fadd fast float %301, %273
  %305 = fsub fast float %302, %130
  %306 = fsub fast float %303, %131
  %307 = fsub fast float %304, %132
  %308 = call float @dx.op.dot3.f32(i32 55, float %305, float %306, float %307, float %305, float %306, float %307)  ; Dot3(ax,ay,az,bx,by,bz)
  %309 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %310 = fdiv fast float 1.000000e+00, %309
  %311 = fmul fast float %305, %310
  %312 = fmul fast float %306, %310
  %313 = fmul fast float %307, %310
  br i1 %290, label %314, label %338, !dx.controlflow.hints !38

; <label>:314                                     ; preds = %247
  %315 = fmul fast float %279, %258
  %316 = fmul fast float %279, %259
  %317 = fmul fast float %279, %260
  %318 = fsub fast float %315, %130
  %319 = fadd fast float %318, %302
  %320 = fsub fast float %316, %131
  %321 = fadd fast float %320, %303
  %322 = fsub fast float %317, %132
  %323 = fadd fast float %322, %304
  %324 = call float @dx.op.dot3.f32(i32 55, float %319, float %321, float %323, float %319, float %321, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = call float @dx.op.unary.f32(i32 25, float %324)  ; Rsqrt(value)
  %326 = fmul fast float %325, %319
  %327 = fmul fast float %325, %321
  %328 = fmul fast float %325, %323
  %329 = fsub fast float %130, %302
  %330 = fsub fast float %131, %303
  %331 = fsub fast float %132, %304
  %332 = fsub fast float -0.000000e+00, %329
  %333 = fsub fast float -0.000000e+00, %330
  %334 = fsub fast float -0.000000e+00, %331
  %335 = call float @dx.op.dot3.f32(i32 55, float %332, float %333, float %334, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fcmp fast ogt float %335, 0.000000e+00
  %337 = uitofp i1 %336 to float
  br label %338

; <label>:338                                     ; preds = %314, %247
  %339 = phi float [ %337, %314 ], [ 1.000000e+00, %247 ]
  %340 = phi float [ %326, %314 ], [ %311, %247 ]
  %341 = phi float [ %327, %314 ], [ %312, %247 ]
  %342 = phi float [ %328, %314 ], [ %313, %247 ]
  %343 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %340, float %341, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %344 = fmul fast float %343, %343
  %345 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %346 = fsub fast float 1.000000e+00, %345
  %347 = fmul fast float %346, 5.000000e-01
  %348 = fcmp fast ogt float %343, 0.000000e+00
  %349 = fsub fast float 1.000000e+00, %347
  %350 = select i1 %348, float %347, float %349
  %351 = fmul fast float %350, %287
  %352 = fadd fast float %351, %285
  %353 = fmul fast float %352, 0x3EF0001000000000
  %354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %353, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = fmul fast float %343, %277
  %357 = fadd fast float %356, %278
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %359 = select i1 %290, float %358, float 1.000000e+00
  %360 = fmul fast float %309, %274
  %361 = fsub fast float 1.000000e+00, %360
  %362 = fmul fast float %361, %280
  %363 = call float @dx.op.unary.f32(i32 7, float %362)  ; Saturate(value)
  %364 = fmul fast float %363, %359
  %365 = fmul fast float %364, 2.000000e+00
  %366 = fsub fast float 3.000000e+00, %365
  %367 = fmul fast float %355, %339
  %368 = fmul fast float %364, %364
  %369 = fmul fast float %368, %367
  %370 = fmul fast float %369, %366
  %371 = icmp ne i32 %288, 255
  %372 = call float @dx.op.binary.f32(i32 36, float %370, float %370)  ; FMin(a,b)
  %373 = call float @dx.op.binary.f32(i32 36, float %370, float %372)  ; FMin(a,b)
  %374 = fcmp fast ogt float %373, 0.000000e+00
  %375 = and i1 %371, %374
  br i1 %375, label %376, label %475, !dx.controlflow.hints !39

; <label>:376                                     ; preds = %338
  %377 = select i1 %290, float 1.000000e+00, float %358
  %378 = mul nuw nsw i32 %288, 176
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = extractvalue %dx.types.ResRet.f32 %379, 2
  %383 = extractvalue %dx.types.ResRet.f32 %379, 3
  %384 = add nuw nsw i32 %378, 16
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = add nuw nsw i32 %378, 32
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = add nuw nsw i32 %378, 48
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = extractvalue %dx.types.ResRet.f32 %394, 2
  %398 = extractvalue %dx.types.ResRet.f32 %394, 3
  %399 = add nuw nsw i32 %378, 64
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = extractvalue %dx.types.ResRet.f32 %400, 3
  %405 = add nuw nsw i32 %378, 80
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = extractvalue %dx.types.ResRet.f32 %406, 3
  %411 = add nuw nsw i32 %378, 96
  %412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = bitcast float %387 to i32
  %418 = fmul fast float %176, %392
  %419 = fmul fast float %177, %392
  %420 = fmul fast float %178, %392
  %421 = fadd fast float %418, %130
  %422 = fadd fast float %419, %131
  %423 = fadd fast float %420, %132
  %424 = fmul fast float %421, %395
  %425 = call float @dx.op.tertiary.f32(i32 46, float %422, float %401, float %424)  ; FMad(a,b,c)
  %426 = call float @dx.op.tertiary.f32(i32 46, float %423, float %407, float %425)  ; FMad(a,b,c)
  %427 = fadd fast float %426, %413
  %428 = fmul fast float %421, %396
  %429 = call float @dx.op.tertiary.f32(i32 46, float %422, float %402, float %428)  ; FMad(a,b,c)
  %430 = call float @dx.op.tertiary.f32(i32 46, float %423, float %408, float %429)  ; FMad(a,b,c)
  %431 = fadd fast float %430, %414
  %432 = fmul fast float %421, %397
  %433 = call float @dx.op.tertiary.f32(i32 46, float %422, float %403, float %432)  ; FMad(a,b,c)
  %434 = call float @dx.op.tertiary.f32(i32 46, float %423, float %409, float %433)  ; FMad(a,b,c)
  %435 = fadd fast float %434, %415
  %436 = fmul fast float %421, %398
  %437 = call float @dx.op.tertiary.f32(i32 46, float %422, float %404, float %436)  ; FMad(a,b,c)
  %438 = call float @dx.op.tertiary.f32(i32 46, float %423, float %410, float %437)  ; FMad(a,b,c)
  %439 = fadd fast float %438, %416
  %440 = fdiv fast float %427, %439
  %441 = fdiv fast float %431, %439
  %442 = fdiv fast float %435, %439
  %443 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %442)  ; FMax(a,b)
  %444 = fmul fast float %189, 0x401921FB60000000
  %445 = call float @dx.op.unary.f32(i32 13, float %444)  ; Sin(value)
  %446 = call float @dx.op.unary.f32(i32 12, float %444)  ; Cos(value)
  %447 = fsub fast float -0.000000e+00, %445
  %448 = fmul fast float %382, 5.000000e-01
  %449 = call float @dx.op.dot2.f32(i32 54, float %189, float %189, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %450 = call float @dx.op.unary.f32(i32 22, float %449)  ; Frc(value)
  %451 = fmul fast float %450, 0x404A7DD040000000
  %452 = call float @dx.op.unary.f32(i32 22, float %451)  ; Frc(value)
  %453 = fmul fast float %452, %391
  %454 = fadd fast float %453, %448
  %455 = call float @dx.op.tertiary.f32(i32 46, float %454, float %447, float 0.000000e+00)  ; FMad(a,b,c)
  %456 = call float @dx.op.tertiary.f32(i32 46, float %454, float %446, float 0.000000e+00)  ; FMad(a,b,c)
  %457 = fadd fast float %455, %440
  %458 = fadd fast float %456, %441
  %459 = fmul fast float %457, %386
  %460 = fmul fast float %458, %386
  %461 = call float @dx.op.binary.f32(i32 35, float %459, float %382)  ; FMax(a,b)
  %462 = call float @dx.op.binary.f32(i32 35, float %460, float %382)  ; FMax(a,b)
  %463 = call float @dx.op.binary.f32(i32 36, float %461, float %383)  ; FMin(a,b)
  %464 = call float @dx.op.binary.f32(i32 36, float %462, float %383)  ; FMin(a,b)
  %465 = fadd fast float %463, %380
  %466 = fadd fast float %464, %381
  %467 = uitofp i32 %417 to float
  %468 = fadd fast float %443, %390
  %469 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %465, float %466, float %467, float undef, i32 0, i32 0, i32 undef, float %468)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = fadd fast float %470, -1.000000e+00
  %472 = fmul fast float %471, %377
  %473 = fadd fast float %472, 1.000000e+00
  %474 = fmul fast float %473, %370
  br label %475

; <label>:475                                     ; preds = %376, %338
  %476 = phi float [ %474, %376 ], [ %370, %338 ]
  %477 = call float @dx.op.binary.f32(i32 36, float %476, float %476)  ; FMin(a,b)
  %478 = call float @dx.op.binary.f32(i32 36, float %476, float %477)  ; FMin(a,b)
  %479 = fcmp fast ogt float %478, 0x3F10000000000000
  %480 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %479)  ; WaveAnyTrue(cond)
  %481 = select i1 %480, i32 %253, i32 0
  %482 = or i32 %248, %481
  %483 = lshr i32 %194, 5
  %484 = lshr i32 %195, 5
  %485 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %483, i32 %484, i32 %251, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %194, 1
  %488 = lshr i32 %195, 1
  %489 = and i32 %487, 15
  %490 = and i32 %488, 15
  %491 = and i32 %194, 1
  %492 = shl i32 %195, 1
  %493 = and i32 %492, 2
  %494 = or i32 %493, %491
  %495 = lshr i32 %486, 2
  %496 = and i32 %495, 8176
  %497 = lshr i32 %486, 11
  %498 = and i32 %497, 4080
  %499 = or i32 %496, %489
  %500 = or i32 %498, %490
  %501 = lshr i32 %486, 21
  %502 = and i32 %501, 1020
  %503 = or i32 %494, %502
  %504 = fmul fast float %476, 2.550000e+02
  %505 = fadd fast float %504, %189
  %506 = call float @dx.op.unary.f32(i32 27, float %505)  ; Round_ni(value)
  %507 = fmul fast float %506, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %499, i32 %500, i32 %503, float %507, float %507, float %507, float %507, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %508 = icmp eq i32 %249, %253
  br i1 %508, label %509, label %247, !llvm.loop !40

; <label>:509                                     ; preds = %475
  br label %510

; <label>:510                                     ; preds = %509, %219
  %511 = phi i32 [ 0, %219 ], [ %482, %509 ]
  %512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.i32 %512, 0
  %514 = call i32 @dx.op.tertiary.i32(i32 49, i32 %200, i32 %513, i32 %220)  ; UMad(a,b,c)
  %515 = shl i32 %514, 2
  %516 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %515, i32 undef, i32 undef, i32 %511)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %517 = add i32 %220, 1
  %518 = icmp ugt i32 %517, %216
  br i1 %518, label %519, label %219

; <label>:519                                     ; preds = %510
  br label %520

; <label>:520                                     ; preds = %519, %193, %55
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

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!4 = !{!5, !20, !23, !26}
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
!20 = !{!21, !22}
!21 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !11}
!22 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!23 = !{!24, !25}
!24 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!25 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!26 = !{!27, !28}
!27 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !30}
!30 = !{i32 0, i64 524560, i32 4, !31}
!31 = !{i32 8, i32 4, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}

