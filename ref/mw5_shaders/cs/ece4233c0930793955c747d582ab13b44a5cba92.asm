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
; shader hash: 5b18ffd5ea9120b05b3a75614a82b837
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %23 = alloca [4 x i32], align 4
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = shl i32 %25, 2
  %29 = mul i32 %28, %27
  %30 = add i32 %29, %20
  %31 = shl i32 %30, 2
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = lshr i32 %33, 28
  %35 = and i32 %34, 3
  %36 = lshr i32 %33, 14
  %37 = and i32 %36, 16383
  %38 = and i32 %33, 16383
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %51, label %40, !dx.controlflow.hints !33

; <label>:40                                      ; preds = %0
  %41 = shl nuw nsw i32 %37, 3
  %42 = shl nuw nsw i32 %38, 3
  %43 = or i32 %41, %21
  %44 = or i32 %42, %22
  %45 = add nsw i32 %35, -1
  %46 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %43, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 15
  %50 = and i32 %47, 15
  br label %56

; <label>:51                                      ; preds = %0
  %52 = shl i32 %21, 1
  %53 = shl i32 %22, 1
  %54 = and i32 %34, 1
  %55 = or i32 %54, %52
  br label %56

; <label>:56                                      ; preds = %51, %40
  %57 = phi i32 [ %49, %40 ], [ %55, %51 ]
  %58 = phi i32 [ %50, %40 ], [ %53, %51 ]
  %59 = shl nuw nsw i32 %37, 4
  %60 = shl nuw nsw i32 %38, 4
  %61 = or i32 %57, %59
  %62 = or i32 %58, %60
  %63 = uitofp i32 %61 to float
  %64 = uitofp i32 %62 to float
  %65 = fadd fast float %63, 5.000000e-01
  %66 = fadd fast float %64, 5.000000e-01
  %67 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %61, i32 %62, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = fcmp fast olt float %68, -1.000000e+00
  %70 = fcmp fast ogt float %68, -1.000000e+00
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %73 = select i1 %70, float %72, float 1.000000e+00
  %74 = fadd fast float %68, 1.000000e+00
  %75 = fmul fast float %73, %74
  %76 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 3
  %80 = fmul fast float %78, %65
  %81 = fmul fast float %79, %66
  %82 = fmul fast float %80, 2.000000e+00
  %83 = fmul fast float %81, 2.000000e+00
  %84 = fsub fast float 1.000000e+00, %82
  %85 = fsub fast float 1.000000e+00, %83
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = select i1 %69, float %87, float %91
  %95 = select i1 %69, float %88, float %92
  %96 = select i1 %69, float %89, float %93
  %97 = fmul fast float %94, %84
  %98 = fmul fast float %95, %84
  %99 = fmul fast float %96, %84
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %108 = select i1 %69, float %101, float %105
  %109 = select i1 %69, float %102, float %106
  %110 = select i1 %69, float %103, float %107
  %111 = fmul fast float %108, %85
  %112 = fmul fast float %109, %85
  %113 = fmul fast float %110, %85
  %114 = fadd fast float %111, %97
  %115 = fadd fast float %112, %98
  %116 = fadd fast float %113, %99
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = select i1 %69, float %118, float %122
  %126 = select i1 %69, float %119, float %123
  %127 = select i1 %69, float %120, float %124
  %128 = fadd fast float %114, %125
  %129 = fadd fast float %115, %126
  %130 = fadd fast float %116, %127
  %131 = fmul fast float %128, %76
  %132 = fmul fast float %129, %76
  %133 = fmul fast float %130, %76
  %134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.i32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.i32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.i32 %134, 2
  %138 = extractvalue %dx.types.CBufRet.i32 %134, 3
  %139 = lshr i32 %61, 1
  %140 = lshr i32 %62, 1
  %141 = and i32 %57, 1
  %142 = shl i32 %58, 1
  %143 = and i32 %142, 2
  %144 = or i32 %143, %141
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %135, i32* %145, align 4
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %136, i32* %146, align 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %137, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %138, i32* %148, align 4
  %149 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %144
  %150 = load i32, i32* %149, align 4, !tbaa !34
  %151 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %14, i32 %150, i32 %139, i32 %140, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = lshr i32 %152, 8
  %154 = and i32 %152, 255
  %155 = and i32 %153, 255
  %156 = uitofp i32 %154 to float
  %157 = uitofp i32 %155 to float
  %158 = fmul fast float %156, 0x3F80101020000000
  %159 = fmul fast float %157, 0x3F80101020000000
  %160 = fadd fast float %158, -1.000000e+00
  %161 = fadd fast float %159, -1.000000e+00
  %162 = call float @dx.op.unary.f32(i32 6, float %160)  ; FAbs(value)
  %163 = fsub fast float 1.000000e+00, %162
  %164 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %165 = fsub fast float %163, %164
  %166 = fsub fast float -0.000000e+00, %165
  %167 = call float @dx.op.binary.f32(i32 35, float %166, float 0.000000e+00)  ; FMax(a,b)
  %168 = fcmp fast ogt float %160, 0.000000e+00
  %169 = fsub fast float -0.000000e+00, %167
  %170 = select i1 %168, float %169, float %167
  %171 = fadd fast float %170, %160
  %172 = fcmp fast ogt float %161, 0.000000e+00
  %173 = select i1 %172, float %169, float %167
  %174 = fadd fast float %173, %161
  %175 = call float @dx.op.dot3.f32(i32 55, float %171, float %174, float %165, float %171, float %174, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = call float @dx.op.unary.f32(i32 25, float %175)  ; Rsqrt(value)
  %177 = fmul fast float %171, %176
  %178 = fmul fast float %174, %176
  %179 = fmul fast float %176, %165
  %180 = fmul fast float %78, %63
  %181 = fmul fast float %79, %64
  %182 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %180, float %181, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = extractvalue %dx.types.ResRet.f32 %182, 1
  %185 = extractvalue %dx.types.ResRet.f32 %182, 2
  %186 = fcmp fast ogt float %183, -1.000000e+00
  %187 = select i1 %186, float %72, float 1.000000e+00
  %188 = fadd fast float %183, 1.000000e+00
  %189 = fmul fast float %187, %188
  %190 = call float @dx.op.unary.f32(i32 6, float %189)  ; FAbs(value)
  %191 = fcmp fast ogt float %184, -1.000000e+00
  %192 = select i1 %191, float %72, float 1.000000e+00
  %193 = fadd fast float %184, 1.000000e+00
  %194 = fmul fast float %192, %193
  %195 = call float @dx.op.unary.f32(i32 6, float %194)  ; FAbs(value)
  %196 = fcmp fast ogt float %185, -1.000000e+00
  %197 = select i1 %196, float %72, float 1.000000e+00
  %198 = fadd fast float %185, 1.000000e+00
  %199 = fmul fast float %197, %198
  %200 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %201 = fadd fast float %63, 1.000000e+00
  %202 = fmul fast float %78, %201
  %203 = fadd fast float %64, 1.000000e+00
  %204 = fmul fast float %79, %203
  %205 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %202, float %204, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = extractvalue %dx.types.ResRet.f32 %205, 2
  %208 = fcmp fast ogt float %206, -1.000000e+00
  %209 = select i1 %208, float %72, float 1.000000e+00
  %210 = fadd fast float %206, 1.000000e+00
  %211 = fmul fast float %209, %210
  %212 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %213 = fcmp fast ogt float %207, -1.000000e+00
  %214 = select i1 %213, float %72, float 1.000000e+00
  %215 = fadd fast float %207, 1.000000e+00
  %216 = fmul fast float %214, %215
  %217 = call float @dx.op.unary.f32(i32 6, float %216)  ; FAbs(value)
  %218 = fsub fast float %200, %195
  %219 = fsub fast float %212, %195
  %220 = fsub fast float %190, %195
  %221 = fsub fast float %217, %195
  %222 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %223 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %224 = call float @dx.op.binary.f32(i32 35, float %223, float %222)  ; FMax(a,b)
  %225 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %226 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %227 = call float @dx.op.binary.f32(i32 35, float %226, float %225)  ; FMax(a,b)
  %228 = fadd fast float %219, %218
  %229 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %230 = fadd fast float %221, %220
  %231 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %232 = fsub fast float %227, %231
  %233 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %234 = fsub fast float %224, %229
  %235 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %236 = call float @dx.op.binary.f32(i32 35, float %235, float %233)  ; FMax(a,b)
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = fmul fast float %238, 0x3FE3C6EF40000000
  %240 = frem fast float %65, 2.560000e+02
  %241 = frem fast float %66, 2.560000e+02
  %242 = fptoui float %240 to i32
  %243 = fptoui float %241 to i32
  %244 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %242, i32 %243, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 2
  %247 = fadd fast float %245, %239
  %248 = fadd fast float %246, %239
  %249 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %250 = call float @dx.op.unary.f32(i32 22, float %248)  ; Frc(value)
  %251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.i32 %251, 0
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %863, label %254, !dx.controlflow.hints !38

; <label>:254                                     ; preds = %56
  %255 = fptoui float %65 to i32
  %256 = fptoui float %66 to i32
  %257 = lshr i32 %255, 4
  %258 = lshr i32 %256, 4
  %259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.i32 %259, 0
  %261 = call i32 @dx.op.tertiary.i32(i32 49, i32 %258, i32 %260, i32 %257)  ; UMad(a,b,c)
  %262 = add nsw i32 %252, -1
  %263 = call i32 @dx.op.binary.i32(i32 37, i32 %262, i32 0)  ; IMax(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %265 = fptoui float %264 to i32
  %266 = lshr i32 %265, 5
  %267 = call i32 @dx.op.binary.i32(i32 40, i32 %266, i32 8191)  ; UMin(a,b)
  %268 = shl i32 %267, 2
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = lshr i32 %270, 16
  %272 = and i32 %270, 65535
  %273 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %271, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %274 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %272, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %275 = lshr i32 %273, 5
  %276 = lshr i32 %274, 5
  %277 = call i32 @dx.op.binary.i32(i32 40, i32 %276, i32 %263)  ; UMin(a,b)
  %278 = icmp ugt i32 %275, %277
  br i1 %278, label %863, label %279

; <label>:279                                     ; preds = %254
  br label %280

; <label>:280                                     ; preds = %853, %279
  %281 = phi i32 [ %860, %853 ], [ %275, %279 ]
  %282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.i32 %282, 0
  %284 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %283, i32 %281)  ; UMad(a,b,c)
  %285 = shl i32 %284, 2
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %281, 5
  %289 = sub nsw i32 %271, %288
  %290 = call i32 @dx.op.binary.i32(i32 37, i32 %289, i32 0)  ; IMax(a,b)
  %291 = call i32 @dx.op.binary.i32(i32 38, i32 %290, i32 31)  ; IMin(a,b)
  %292 = sub nsw i32 1, %271
  %293 = add nsw i32 %292, %272
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
  %304 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %303, i8 1)  ; WaveActiveBit(value,op)
  %305 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %304)  ; WaveReadLaneFirst(value)
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %853, label %307

; <label>:307                                     ; preds = %280
  br label %308

; <label>:308                                     ; preds = %816, %307
  %309 = phi i32 [ %825, %816 ], [ 0, %307 ]
  %310 = phi i32 [ %315, %816 ], [ %305, %307 ]
  %311 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %310)  ; FirstbitLo(value)
  %312 = add i32 %311, %288
  %313 = and i32 %311, 31
  %314 = shl i32 1, %313
  %315 = xor i32 %314, %310
  %316 = mul i32 %312, 112
  %317 = add i32 %316, 16
  %318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  %320 = extractvalue %dx.types.ResRet.f32 %318, 1
  %321 = extractvalue %dx.types.ResRet.f32 %318, 2
  %322 = add i32 %316, 28
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = add i32 %316, 32
  %326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = extractvalue %dx.types.ResRet.f32 %326, 1
  %329 = extractvalue %dx.types.ResRet.f32 %326, 2
  %330 = add i32 %316, 44
  %331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = add i32 %316, 48
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = extractvalue %dx.types.ResRet.f32 %334, 3
  %339 = add i32 %316, 64
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = extractvalue %dx.types.ResRet.f32 %340, 1
  %343 = extractvalue %dx.types.ResRet.f32 %340, 2
  %344 = extractvalue %dx.types.ResRet.f32 %340, 3
  %345 = add i32 %316, 92
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = uitofp i32 %348 to float
  %350 = lshr i32 %347, 16
  %351 = uitofp i32 %350 to float
  %352 = and i32 %324, 65535
  %353 = and i32 %324, 50331648
  %354 = icmp eq i32 %353, 33554432
  %355 = call float @dx.op.dot3.f32(i32 55, float %327, float %328, float %329, float %327, float %328, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = fsub fast float %131, %335
  %357 = fsub fast float %132, %336
  %358 = fsub fast float %133, %337
  %359 = call float @dx.op.dot3.f32(i32 55, float %356, float %357, float %358, float %327, float %328, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %360 = fdiv fast float %359, %355
  %361 = call float @dx.op.binary.f32(i32 35, float %360, float -1.000000e+00)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 36, float %361, float 1.000000e+00)  ; FMin(a,b)
  %363 = fmul fast float %362, %327
  %364 = fmul fast float %362, %328
  %365 = fmul fast float %362, %329
  %366 = fadd fast float %363, %335
  %367 = fadd fast float %364, %336
  %368 = fadd fast float %365, %337
  %369 = fsub fast float %366, %131
  %370 = fsub fast float %367, %132
  %371 = fsub fast float %368, %133
  %372 = call float @dx.op.dot3.f32(i32 55, float %369, float %370, float %371, float %369, float %370, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %374 = fdiv fast float 1.000000e+00, %373
  %375 = fmul fast float %369, %374
  %376 = fmul fast float %370, %374
  %377 = fmul fast float %371, %374
  br i1 %354, label %378, label %402, !dx.controlflow.hints !39

; <label>:378                                     ; preds = %308
  %379 = fmul fast float %343, %319
  %380 = fmul fast float %343, %320
  %381 = fmul fast float %343, %321
  %382 = fsub fast float %379, %131
  %383 = fadd fast float %382, %366
  %384 = fsub fast float %380, %132
  %385 = fadd fast float %384, %367
  %386 = fsub fast float %381, %133
  %387 = fadd fast float %386, %368
  %388 = call float @dx.op.dot3.f32(i32 55, float %383, float %385, float %387, float %383, float %385, float %387)  ; Dot3(ax,ay,az,bx,by,bz)
  %389 = call float @dx.op.unary.f32(i32 25, float %388)  ; Rsqrt(value)
  %390 = fmul fast float %389, %383
  %391 = fmul fast float %389, %385
  %392 = fmul fast float %389, %387
  %393 = fsub fast float %131, %366
  %394 = fsub fast float %132, %367
  %395 = fsub fast float %133, %368
  %396 = fsub fast float -0.000000e+00, %393
  %397 = fsub fast float -0.000000e+00, %394
  %398 = fsub fast float -0.000000e+00, %395
  %399 = call float @dx.op.dot3.f32(i32 55, float %396, float %397, float %398, float %319, float %320, float %321)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = fcmp fast ogt float %399, 0.000000e+00
  %401 = uitofp i1 %400 to float
  br label %402

; <label>:402                                     ; preds = %378, %308
  %403 = phi float [ %401, %378 ], [ 1.000000e+00, %308 ]
  %404 = phi float [ %390, %378 ], [ %375, %308 ]
  %405 = phi float [ %391, %378 ], [ %376, %308 ]
  %406 = phi float [ %392, %378 ], [ %377, %308 ]
  %407 = call float @dx.op.dot3.f32(i32 55, float %319, float %320, float %321, float %404, float %405, float %406)  ; Dot3(ax,ay,az,bx,by,bz)
  %408 = fmul fast float %407, %407
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %410 = fsub fast float 1.000000e+00, %409
  %411 = fmul fast float %410, 5.000000e-01
  %412 = fcmp fast ogt float %407, 0.000000e+00
  %413 = fsub fast float 1.000000e+00, %411
  %414 = select i1 %412, float %411, float %413
  %415 = fmul fast float %414, %351
  %416 = fadd fast float %415, %349
  %417 = fmul fast float %416, 0x3EF0001000000000
  %418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %417, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = fmul fast float %407, %341
  %421 = fadd fast float %420, %342
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = select i1 %354, float %422, float 1.000000e+00
  %424 = fmul fast float %373, %338
  %425 = fsub fast float 1.000000e+00, %424
  %426 = fmul fast float %425, %344
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = fmul fast float %427, %423
  %429 = fmul fast float %428, 2.000000e+00
  %430 = fsub fast float 3.000000e+00, %429
  %431 = fmul fast float %419, %403
  %432 = fmul fast float %428, %428
  %433 = fmul fast float %432, %431
  %434 = fmul fast float %433, %430
  %435 = icmp ne i32 %352, 255
  %436 = call float @dx.op.binary.f32(i32 36, float %434, float %434)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 36, float %434, float %436)  ; FMin(a,b)
  %438 = fcmp fast ogt float %437, 0.000000e+00
  %439 = and i1 %435, %438
  br i1 %439, label %440, label %539, !dx.controlflow.hints !40

; <label>:440                                     ; preds = %402
  %441 = select i1 %354, float 1.000000e+00, float %422
  %442 = mul nuw nsw i32 %352, 176
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = extractvalue %dx.types.ResRet.f32 %443, 2
  %447 = extractvalue %dx.types.ResRet.f32 %443, 3
  %448 = add nuw nsw i32 %442, 16
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = add nuw nsw i32 %442, 32
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = add nuw nsw i32 %442, 48
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  %462 = extractvalue %dx.types.ResRet.f32 %458, 3
  %463 = add nuw nsw i32 %442, 64
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = extractvalue %dx.types.ResRet.f32 %464, 3
  %469 = add nuw nsw i32 %442, 80
  %470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  %472 = extractvalue %dx.types.ResRet.f32 %470, 1
  %473 = extractvalue %dx.types.ResRet.f32 %470, 2
  %474 = extractvalue %dx.types.ResRet.f32 %470, 3
  %475 = add nuw nsw i32 %442, 96
  %476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = extractvalue %dx.types.ResRet.f32 %476, 1
  %479 = extractvalue %dx.types.ResRet.f32 %476, 2
  %480 = extractvalue %dx.types.ResRet.f32 %476, 3
  %481 = bitcast float %451 to i32
  %482 = fmul fast float %456, %177
  %483 = fmul fast float %456, %178
  %484 = fmul fast float %456, %179
  %485 = fadd fast float %482, %131
  %486 = fadd fast float %483, %132
  %487 = fadd fast float %484, %133
  %488 = fmul fast float %485, %459
  %489 = call float @dx.op.tertiary.f32(i32 46, float %486, float %465, float %488)  ; FMad(a,b,c)
  %490 = call float @dx.op.tertiary.f32(i32 46, float %487, float %471, float %489)  ; FMad(a,b,c)
  %491 = fadd fast float %490, %477
  %492 = fmul fast float %485, %460
  %493 = call float @dx.op.tertiary.f32(i32 46, float %486, float %466, float %492)  ; FMad(a,b,c)
  %494 = call float @dx.op.tertiary.f32(i32 46, float %487, float %472, float %493)  ; FMad(a,b,c)
  %495 = fadd fast float %494, %478
  %496 = fmul fast float %485, %461
  %497 = call float @dx.op.tertiary.f32(i32 46, float %486, float %467, float %496)  ; FMad(a,b,c)
  %498 = call float @dx.op.tertiary.f32(i32 46, float %487, float %473, float %497)  ; FMad(a,b,c)
  %499 = fadd fast float %498, %479
  %500 = fmul fast float %485, %462
  %501 = call float @dx.op.tertiary.f32(i32 46, float %486, float %468, float %500)  ; FMad(a,b,c)
  %502 = call float @dx.op.tertiary.f32(i32 46, float %487, float %474, float %501)  ; FMad(a,b,c)
  %503 = fadd fast float %502, %480
  %504 = fdiv fast float %491, %503
  %505 = fdiv fast float %495, %503
  %506 = fdiv fast float %499, %503
  %507 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %506)  ; FMax(a,b)
  %508 = fmul fast float %249, 0x401921FB60000000
  %509 = call float @dx.op.unary.f32(i32 13, float %508)  ; Sin(value)
  %510 = call float @dx.op.unary.f32(i32 12, float %508)  ; Cos(value)
  %511 = fsub fast float -0.000000e+00, %509
  %512 = fmul fast float %446, 5.000000e-01
  %513 = call float @dx.op.dot2.f32(i32 54, float %249, float %249, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = fmul fast float %514, 0x404A7DD040000000
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = fmul fast float %516, %455
  %518 = fadd fast float %517, %512
  %519 = call float @dx.op.tertiary.f32(i32 46, float %518, float %511, float 0.000000e+00)  ; FMad(a,b,c)
  %520 = call float @dx.op.tertiary.f32(i32 46, float %518, float %510, float 0.000000e+00)  ; FMad(a,b,c)
  %521 = fadd fast float %519, %504
  %522 = fadd fast float %520, %505
  %523 = fmul fast float %521, %450
  %524 = fmul fast float %522, %450
  %525 = call float @dx.op.binary.f32(i32 35, float %523, float %446)  ; FMax(a,b)
  %526 = call float @dx.op.binary.f32(i32 35, float %524, float %446)  ; FMax(a,b)
  %527 = call float @dx.op.binary.f32(i32 36, float %525, float %447)  ; FMin(a,b)
  %528 = call float @dx.op.binary.f32(i32 36, float %526, float %447)  ; FMin(a,b)
  %529 = fadd fast float %527, %444
  %530 = fadd fast float %528, %445
  %531 = uitofp i32 %481 to float
  %532 = fadd fast float %507, %454
  %533 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %17, float %529, float %530, float %531, float undef, i32 0, i32 0, i32 undef, float %532)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = fadd fast float %534, -1.000000e+00
  %536 = fmul fast float %535, %441
  %537 = fadd fast float %536, 1.000000e+00
  %538 = fmul fast float %537, %434
  br label %539

; <label>:539                                     ; preds = %440, %402
  %540 = phi float [ %538, %440 ], [ %434, %402 ]
  %541 = call float @dx.op.binary.f32(i32 36, float %540, float %540)  ; FMin(a,b)
  %542 = call float @dx.op.binary.f32(i32 36, float %540, float %541)  ; FMin(a,b)
  %543 = fcmp fast ogt float %542, 0.000000e+00
  %544 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %375, float %376, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %545 = fcmp fast ogt float %544, 0.000000e+00
  %546 = and i1 %543, %545
  br i1 %546, label %547, label %816, !dx.controlflow.hints !41

; <label>:547                                     ; preds = %539
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %552 = select i1 %69, float %549, float %551
  %553 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %554 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %555 = select i1 %69, float %553, float %554
  %556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.i32 %556, 0
  %558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.i32 %558, 0
  %560 = select i1 %69, i32 %557, i32 %559
  %561 = fcmp fast olt float %552, 5.000000e-01
  %562 = icmp eq i32 %560, 0
  %563 = or i1 %561, %562
  br i1 %563, label %811, label %564, !dx.controlflow.hints !42

; <label>:564                                     ; preds = %547
  %565 = fsub fast float %335, %131
  %566 = fsub fast float %336, %132
  %567 = fsub fast float %337, %133
  %568 = fmul fast float %565, %565
  %569 = fmul fast float %566, %566
  %570 = fadd fast float %568, %569
  %571 = fmul fast float %567, %567
  %572 = fadd fast float %570, %571
  %573 = call float @dx.op.unary.f32(i32 24, float %572)  ; Sqrt(value)
  %574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.i32 %574, 0
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %552, %332
  %578 = fdiv fast float %577, %573
  %579 = call float @dx.op.binary.f32(i32 36, float %578, float 1.000000e+01)  ; FMin(a,b)
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %583 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %584 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %587 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %588 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %589 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %593 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %594 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %598 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %599 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %603 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %604 = extractvalue %dx.types.CBufRet.f32 %600, 3
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %609 = extractvalue %dx.types.CBufRet.f32 %605, 3
  %610 = select i1 %69, float %581, float %596
  %611 = select i1 %69, float %586, float %601
  %612 = select i1 %69, float %591, float %606
  %613 = select i1 %69, float %582, float %597
  %614 = select i1 %69, float %587, float %602
  %615 = select i1 %69, float %592, float %607
  %616 = select i1 %69, float %583, float %598
  %617 = select i1 %69, float %588, float %603
  %618 = select i1 %69, float %593, float %608
  %619 = select i1 %69, float %584, float %599
  %620 = select i1 %69, float %589, float %604
  %621 = select i1 %69, float %594, float %609
  %622 = fmul fast float %250, 0x401061CAC0000000
  %623 = fmul fast float %250, 0x4023E1D7E0000000
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %628 = extractvalue %dx.types.CBufRet.f32 %624, 3
  %629 = fsub fast float -0.000000e+00, %375
  %630 = fmul fast float %377, %629
  %631 = fmul fast float %375, %629
  %632 = fmul fast float %376, %376
  %633 = fsub fast float %631, %632
  %634 = fdiv fast float 1.000000e+00, %76
  %635 = fmul fast float %627, %65
  %636 = fmul fast float %628, %66
  %637 = fmul fast float %552, %375
  %638 = fmul fast float %552, %377
  %639 = fadd fast float %637, %131
  %640 = fadd fast float %638, %133
  %641 = fadd fast float %623, 5.000000e-01
  %642 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %643 = bitcast float %642 to i32
  %644 = ashr i32 %643, 1
  %645 = add nsw i32 %644, 532487669
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %646, %579
  %648 = fadd fast float %622, 5.000000e-01
  %649 = call float @dx.op.unary.f32(i32 22, float %648)  ; Frc(value)
  %650 = fmul fast float %649, 0x401921FB60000000
  %651 = call float @dx.op.unary.f32(i32 12, float %650)  ; Cos(value)
  %652 = fmul fast float %651, %651
  %653 = fsub fast float 1.000000e+00, %652
  %654 = bitcast float %653 to i32
  %655 = ashr i32 %654, 1
  %656 = add nsw i32 %655, 532487669
  %657 = bitcast i32 %656 to float
  %658 = fmul fast float %647, %651
  %659 = fmul fast float %658, %376
  %660 = fmul fast float %658, %629
  %661 = fadd fast float %639, %659
  %662 = fmul fast float %657, %647
  %663 = fmul fast float %630, %662
  %664 = fmul fast float %662, %377
  %665 = fmul fast float %662, %633
  %666 = fsub fast float %661, %663
  %667 = fadd fast float %664, %552
  %668 = fmul fast float %667, %376
  %669 = fadd fast float %660, %132
  %670 = fadd fast float %669, %668
  %671 = fadd fast float %640, %665
  %672 = fmul fast float %666, %610
  %673 = call float @dx.op.tertiary.f32(i32 46, float %670, float %613, float %672)  ; FMad(a,b,c)
  %674 = call float @dx.op.tertiary.f32(i32 46, float %671, float %616, float %673)  ; FMad(a,b,c)
  %675 = fadd fast float %674, %619
  %676 = fmul fast float %666, %611
  %677 = call float @dx.op.tertiary.f32(i32 46, float %670, float %614, float %676)  ; FMad(a,b,c)
  %678 = call float @dx.op.tertiary.f32(i32 46, float %671, float %617, float %677)  ; FMad(a,b,c)
  %679 = fadd fast float %678, %620
  %680 = fmul fast float %666, %612
  %681 = call float @dx.op.tertiary.f32(i32 46, float %670, float %615, float %680)  ; FMad(a,b,c)
  %682 = call float @dx.op.tertiary.f32(i32 46, float %671, float %618, float %681)  ; FMad(a,b,c)
  %683 = fadd fast float %682, %621
  %684 = fdiv fast float 1.000000e+00, %683
  %685 = fmul fast float %675, 5.000000e-01
  %686 = fmul fast float %679, -5.000000e-01
  %687 = fmul fast float %685, %684
  %688 = fmul fast float %686, %684
  %689 = fsub fast float 5.000000e-01, %635
  %690 = fadd fast float %689, %687
  %691 = fsub fast float 5.000000e-01, %636
  %692 = fadd fast float %691, %688
  %693 = fsub fast float %684, %634
  %694 = call float @dx.op.dot2.f32(i32 54, float %690, float %692, float %690, float %692)  ; Dot2(ax,ay,bx,by)
  %695 = call float @dx.op.binary.f32(i32 35, float %694, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %696 = call float @dx.op.dot2.f32(i32 54, float %625, float %626, float %625, float %626)  ; Dot2(ax,ay,bx,by)
  %697 = fmul fast float %696, %695
  %698 = call float @dx.op.unary.f32(i32 25, float %697)  ; Rsqrt(value)
  %699 = fmul fast float %698, %690
  %700 = fmul fast float %698, %692
  %701 = fadd fast float %699, %635
  %702 = fadd fast float %700, %636
  %703 = fmul fast float %690, %625
  %704 = fmul fast float %692, %626
  %705 = fmul fast float %703, %703
  %706 = fmul fast float %704, %704
  %707 = fadd fast float %705, %706
  %708 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %709 = fdiv fast float 1.000000e+00, %708
  %710 = fmul fast float %708, 3.906250e-03
  %711 = fmul fast float %236, 0x3F70624DE0000000
  %712 = fadd fast float %711, 0x3F70624DE0000000
  %713 = icmp sgt i32 %560, -1
  br i1 %713, label %714, label %776

; <label>:714                                     ; preds = %564
  br label %715

; <label>:715                                     ; preds = %772, %714
  %716 = phi float [ %747, %772 ], [ %76, %714 ]
  %717 = phi float [ %734, %772 ], [ %76, %714 ]
  %718 = phi float [ %717, %772 ], [ %76, %714 ]
  %719 = phi i32 [ %773, %772 ], [ 0, %714 ]
  %720 = sitofp i32 %719 to float
  %721 = fadd fast float %250, 5.000000e-01
  %722 = call float @dx.op.unary.f32(i32 22, float %721)  ; Frc(value)
  %723 = fadd fast float %720, %722
  %724 = sitofp i32 %560 to float
  %725 = fdiv fast float %723, %724
  %726 = fmul fast float %725, %725
  %727 = call float @dx.op.binary.f32(i32 36, float %726, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %728 = fmul fast float %727, %690
  %729 = fmul fast float %727, %692
  %730 = fmul fast float %727, %693
  %731 = fadd fast float %728, %701
  %732 = fadd fast float %729, %702
  %733 = fadd fast float %730, %634
  %734 = fdiv fast float 1.000000e+00, %733
  %735 = icmp ne i32 %575, 0
  %736 = fmul fast float %710, %727
  %737 = call float @dx.op.binary.f32(i32 36, float %736, float %576)  ; FMin(a,b)
  %738 = select i1 %735, float %737, float 0.000000e+00
  %739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %731, float %732, float undef, float undef, i32 0, i32 0, i32 undef, float %738)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = fcmp fast ogt float %740, -1.000000e+00
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %744 = select i1 %741, float %743, float 1.000000e+00
  %745 = fadd fast float %740, 1.000000e+00
  %746 = fmul fast float %744, %745
  %747 = call float @dx.op.unary.f32(i32 6, float %746)  ; FAbs(value)
  %748 = fmul fast float %747, %712
  %749 = fsub fast float %734, %747
  %750 = fsub fast float %749, %748
  %751 = fcmp fast ogt float %750, 0.000000e+00
  %752 = fcmp fast ogt float %555, 0.000000e+00
  br i1 %752, label %753, label %756, !dx.controlflow.hints !43

; <label>:753                                     ; preds = %715
  %754 = fsub fast float %734, %718
  %755 = call float @dx.op.binary.f32(i32 35, float %754, float %555)  ; FMax(a,b)
  br label %756

; <label>:756                                     ; preds = %753, %715
  %757 = phi float [ %755, %753 ], [ %552, %715 ]
  %758 = fcmp fast olt float %750, %757
  %759 = fcmp uge float %740, -1.000000e+00
  %760 = or i1 %69, %759
  %761 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %762 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %763 = fcmp fast oeq float %731, %761
  %764 = fcmp fast oeq float %732, %762
  %765 = and i1 %763, %764
  %766 = and i1 %760, %765
  %767 = and i1 %751, %758
  %768 = and i1 %767, %766
  %769 = fcmp fast ogt float %727, %709
  %770 = and i1 %769, %768
  %771 = zext i1 %770 to i32
  br i1 %770, label %775, label %772, !dx.controlflow.hints !44

; <label>:772                                     ; preds = %756
  %773 = add nuw nsw i32 %719, 1
  %774 = icmp slt i32 %719, %560
  br i1 %774, label %715, label %775

; <label>:775                                     ; preds = %772, %756
  br label %776

; <label>:776                                     ; preds = %775, %564
  %777 = phi i32 [ 0, %564 ], [ %771, %775 ]
  %778 = phi float [ %76, %564 ], [ %747, %775 ]
  %779 = phi float [ %76, %564 ], [ %716, %775 ]
  %780 = phi float [ %76, %564 ], [ %734, %775 ]
  %781 = phi float [ %76, %564 ], [ %717, %775 ]
  %782 = fsub fast float %781, %779
  %783 = fsub fast float %780, %778
  %784 = fsub fast float %782, %783
  %785 = fcmp fast une float %784, 0.000000e+00
  %786 = fmul fast float %782, %780
  %787 = fmul fast float %781, %783
  %788 = fsub fast float %786, %787
  %789 = fdiv fast float 1.000000e+00, %784
  %790 = fmul fast float %788, %789
  %791 = select i1 %785, float %790, float %780
  %792 = fdiv fast float 1.000000e+00, %791
  %793 = fsub fast float %792, %634
  %794 = fdiv fast float %793, %693
  %795 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %796 = fmul fast float %795, %690
  %797 = fmul fast float %795, %692
  %798 = fadd fast float %796, %701
  %799 = fadd fast float %797, %702
  %800 = fadd fast float %798, -5.000000e-01
  %801 = fadd fast float %799, -5.000000e-01
  %802 = call float @dx.op.unary.f32(i32 6, float %800)  ; FAbs(value)
  %803 = call float @dx.op.unary.f32(i32 6, float %801)  ; FAbs(value)
  %804 = fadd fast float %802, -5.000000e-01
  %805 = fadd fast float %803, -5.000000e-01
  %806 = call float @dx.op.binary.f32(i32 35, float %804, float %805)  ; FMax(a,b)
  %807 = fcmp fast olt float %806, 0.000000e+00
  %808 = icmp ne i32 %777, 0
  %809 = and i1 %808, %807
  %810 = select i1 %809, float 0.000000e+00, float 1.000000e+00
  br label %811

; <label>:811                                     ; preds = %776, %547
  %812 = phi float [ %810, %776 ], [ 1.000000e+00, %547 ]
  %813 = fmul fast float %812, %540
  %814 = fmul fast float %812, %540
  %815 = fmul fast float %812, %540
  br label %816

; <label>:816                                     ; preds = %811, %539
  %817 = phi float [ %813, %811 ], [ %540, %539 ]
  %818 = phi float [ %814, %811 ], [ %540, %539 ]
  %819 = phi float [ %815, %811 ], [ %540, %539 ]
  %820 = call float @dx.op.binary.f32(i32 36, float %818, float %819)  ; FMin(a,b)
  %821 = call float @dx.op.binary.f32(i32 36, float %817, float %820)  ; FMin(a,b)
  %822 = fcmp fast ogt float %821, 0x3F10000000000000
  %823 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %822)  ; WaveAnyTrue(cond)
  %824 = select i1 %823, i32 %314, i32 0
  %825 = or i32 %309, %824
  %826 = lshr i32 %255, 5
  %827 = lshr i32 %256, 5
  %828 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %826, i32 %827, i32 %312, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = lshr i32 %255, 1
  %831 = lshr i32 %256, 1
  %832 = and i32 %830, 15
  %833 = and i32 %831, 15
  %834 = and i32 %255, 1
  %835 = shl i32 %256, 1
  %836 = and i32 %835, 2
  %837 = or i32 %836, %834
  %838 = lshr i32 %829, 2
  %839 = and i32 %838, 8176
  %840 = lshr i32 %829, 11
  %841 = and i32 %840, 4080
  %842 = or i32 %839, %832
  %843 = or i32 %841, %833
  %844 = lshr i32 %829, 21
  %845 = and i32 %844, 1020
  %846 = or i32 %837, %845
  %847 = fmul fast float %817, 2.550000e+02
  %848 = fadd fast float %847, %249
  %849 = call float @dx.op.unary.f32(i32 27, float %848)  ; Round_ni(value)
  %850 = fmul fast float %849, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %842, i32 %843, i32 %846, float %850, float %850, float %850, float %850, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %851 = icmp eq i32 %310, %314
  br i1 %851, label %852, label %308, !llvm.loop !45

; <label>:852                                     ; preds = %816
  br label %853

; <label>:853                                     ; preds = %852, %280
  %854 = phi i32 [ 0, %280 ], [ %825, %852 ]
  %855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.i32 %855, 0
  %857 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %856, i32 %281)  ; UMad(a,b,c)
  %858 = shl i32 %857, 2
  %859 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %858, i32 undef, i32 undef, i32 %854)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %860 = add i32 %281, 1
  %861 = icmp ugt i32 %860, %277
  br i1 %861, label %862, label %280

; <label>:862                                     ; preds = %853
  br label %863

; <label>:863                                     ; preds = %862, %254, %56
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
!dx.entryPoints = !{!30}

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
!26 = !{!27, !28, !29}
!27 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!29 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !31}
!31 = !{i32 0, i64 524560, i32 4, !32}
!32 = !{i32 8, i32 8, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}

