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
; shader hash: 3abbf0e61b547aba1b95a67edb252a2e
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
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %21 = alloca [4 x i32], align 4
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = shl i32 %23, 2
  %27 = mul i32 %26, %25
  %28 = add i32 %27, %18
  %29 = shl i32 %28, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = lshr i32 %31, 28
  %33 = and i32 %32, 3
  %34 = lshr i32 %31, 14
  %35 = and i32 %34, 16383
  %36 = and i32 %31, 16383
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %49, label %38, !dx.controlflow.hints !31

; <label>:38                                      ; preds = %0
  %39 = shl nuw nsw i32 %35, 3
  %40 = shl nuw nsw i32 %36, 3
  %41 = or i32 %39, %19
  %42 = or i32 %40, %20
  %43 = add nsw i32 %33, -1
  %44 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %41, i32 %42, i32 %43, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = lshr i32 %45, 4
  %47 = and i32 %46, 15
  %48 = and i32 %45, 15
  br label %54

; <label>:49                                      ; preds = %0
  %50 = shl i32 %19, 1
  %51 = shl i32 %20, 1
  %52 = and i32 %32, 1
  %53 = or i32 %52, %50
  br label %54

; <label>:54                                      ; preds = %49, %38
  %55 = phi i32 [ %47, %38 ], [ %53, %49 ]
  %56 = phi i32 [ %48, %38 ], [ %51, %49 ]
  %57 = shl nuw nsw i32 %35, 4
  %58 = shl nuw nsw i32 %36, 4
  %59 = or i32 %55, %57
  %60 = or i32 %56, %58
  %61 = uitofp i32 %59 to float
  %62 = uitofp i32 %60 to float
  %63 = fadd fast float %61, 5.000000e-01
  %64 = fadd fast float %62, 5.000000e-01
  %65 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %59, i32 %60, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = fcmp fast olt float %66, -1.000000e+00
  %68 = fcmp fast ogt float %66, -1.000000e+00
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %71 = select i1 %68, float %70, float 1.000000e+00
  %72 = fadd fast float %66, 1.000000e+00
  %73 = fmul fast float %71, %72
  %74 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 3
  %78 = fmul fast float %63, 2.000000e+00
  %79 = fmul fast float %78, %76
  %80 = fmul fast float %64, 2.000000e+00
  %81 = fmul fast float %80, %77
  %82 = fsub fast float 1.000000e+00, %79
  %83 = fsub fast float 1.000000e+00, %81
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = select i1 %67, float %85, float %89
  %93 = select i1 %67, float %86, float %90
  %94 = select i1 %67, float %87, float %91
  %95 = fmul fast float %92, %82
  %96 = fmul fast float %93, %82
  %97 = fmul fast float %94, %82
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = select i1 %67, float %99, float %103
  %107 = select i1 %67, float %100, float %104
  %108 = select i1 %67, float %101, float %105
  %109 = fmul fast float %106, %83
  %110 = fmul fast float %107, %83
  %111 = fmul fast float %108, %83
  %112 = fadd fast float %109, %95
  %113 = fadd fast float %110, %96
  %114 = fadd fast float %111, %97
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = select i1 %67, float %116, float %120
  %124 = select i1 %67, float %117, float %121
  %125 = select i1 %67, float %118, float %122
  %126 = fadd fast float %112, %123
  %127 = fadd fast float %113, %124
  %128 = fadd fast float %114, %125
  %129 = fmul fast float %126, %74
  %130 = fmul fast float %127, %74
  %131 = fmul fast float %128, %74
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.i32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.i32 %132, 2
  %136 = extractvalue %dx.types.CBufRet.i32 %132, 3
  %137 = lshr i32 %59, 1
  %138 = lshr i32 %60, 1
  %139 = and i32 %55, 1
  %140 = shl i32 %56, 1
  %141 = and i32 %140, 2
  %142 = or i32 %141, %139
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %133, i32* %143, align 4
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %134, i32* %144, align 4
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %135, i32* %145, align 4
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %136, i32* %146, align 4
  %147 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %142
  %148 = load i32, i32* %147, align 4, !tbaa !32
  %149 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 %148, i32 %137, i32 %138, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = lshr i32 %150, 8
  %152 = and i32 %150, 255
  %153 = and i32 %151, 255
  %154 = uitofp i32 %152 to float
  %155 = uitofp i32 %153 to float
  %156 = fmul fast float %154, 0x3F80101020000000
  %157 = fmul fast float %155, 0x3F80101020000000
  %158 = fadd fast float %156, -1.000000e+00
  %159 = fadd fast float %157, -1.000000e+00
  %160 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %161 = fsub fast float 1.000000e+00, %160
  %162 = call float @dx.op.unary.f32(i32 6, float %159)  ; FAbs(value)
  %163 = fsub fast float %161, %162
  %164 = fsub fast float -0.000000e+00, %163
  %165 = call float @dx.op.binary.f32(i32 35, float %164, float 0.000000e+00)  ; FMax(a,b)
  %166 = fcmp fast ogt float %158, 0.000000e+00
  %167 = fsub fast float -0.000000e+00, %165
  %168 = select i1 %166, float %167, float %165
  %169 = fadd fast float %168, %158
  %170 = fcmp fast ogt float %159, 0.000000e+00
  %171 = select i1 %170, float %167, float %165
  %172 = fadd fast float %171, %159
  %173 = call float @dx.op.dot3.f32(i32 55, float %169, float %172, float %163, float %169, float %172, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = call float @dx.op.unary.f32(i32 25, float %173)  ; Rsqrt(value)
  %175 = fmul fast float %169, %174
  %176 = fmul fast float %172, %174
  %177 = fmul fast float %174, %163
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = fmul fast float %179, 0x3FE3C6EF40000000
  %181 = frem fast float %63, 2.560000e+02
  %182 = frem fast float %64, 2.560000e+02
  %183 = fptoui float %181 to i32
  %184 = fptoui float %182 to i32
  %185 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %183, i32 %184, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fadd fast float %186, %180
  %188 = call float @dx.op.unary.f32(i32 22, float %187)  ; Frc(value)
  %189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.i32 %189, 0
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %502, label %192, !dx.controlflow.hints !36

; <label>:192                                     ; preds = %54
  %193 = fptoui float %63 to i32
  %194 = fptoui float %64 to i32
  %195 = lshr i32 %193, 4
  %196 = lshr i32 %194, 4
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 0
  %199 = call i32 @dx.op.tertiary.i32(i32 49, i32 %196, i32 %198, i32 %195)  ; UMad(a,b,c)
  %200 = add nsw i32 %190, -1
  %201 = call i32 @dx.op.binary.i32(i32 37, i32 %200, i32 0)  ; IMax(a,b)
  %202 = call float @dx.op.binary.f32(i32 35, float %74, float 0.000000e+00)  ; FMax(a,b)
  %203 = fptoui float %202 to i32
  %204 = lshr i32 %203, 5
  %205 = call i32 @dx.op.binary.i32(i32 40, i32 %204, i32 8191)  ; UMin(a,b)
  %206 = shl i32 %205, 2
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 16
  %210 = and i32 %208, 65535
  %211 = lshr i32 %208, 21
  %212 = lshr i32 %210, 5
  %213 = call i32 @dx.op.binary.i32(i32 40, i32 %212, i32 %201)  ; UMin(a,b)
  %214 = icmp ugt i32 %211, %213
  br i1 %214, label %502, label %215

; <label>:215                                     ; preds = %192
  br label %216

; <label>:216                                     ; preds = %498, %215
  %217 = phi i32 [ %499, %498 ], [ %211, %215 ]
  %218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.i32 %218, 0
  %220 = call i32 @dx.op.tertiary.i32(i32 49, i32 %199, i32 %219, i32 %217)  ; UMad(a,b,c)
  %221 = shl i32 %220, 2
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = shl i32 %217, 5
  %225 = sub nsw i32 %209, %224
  %226 = call i32 @dx.op.binary.i32(i32 37, i32 %225, i32 0)  ; IMax(a,b)
  %227 = call i32 @dx.op.binary.i32(i32 38, i32 %226, i32 31)  ; IMin(a,b)
  %228 = sub nsw i32 1, %209
  %229 = add nsw i32 %228, %210
  %230 = call i32 @dx.op.binary.i32(i32 37, i32 %229, i32 0)  ; IMax(a,b)
  %231 = call i32 @dx.op.binary.i32(i32 38, i32 %230, i32 32)  ; IMin(a,b)
  %232 = and i32 %231, 31
  %233 = shl i32 -1, %232
  %234 = xor i32 %233, -1
  %235 = and i32 %227, 31
  %236 = shl i32 %234, %235
  %237 = icmp eq i32 %231, 32
  %238 = select i1 %237, i32 -1, i32 %236
  %239 = and i32 %238, %223
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %498, label %241

; <label>:241                                     ; preds = %216
  br label %242

; <label>:242                                     ; preds = %469, %241
  %243 = phi i32 [ %248, %469 ], [ %239, %241 ]
  %244 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %243)  ; FirstbitLo(value)
  %245 = add i32 %244, %224
  %246 = and i32 %244, 31
  %247 = shl i32 1, %246
  %248 = xor i32 %247, %243
  %249 = mul i32 %245, 112
  %250 = add i32 %249, 16
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = add i32 %249, 28
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = add i32 %249, 32
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = add i32 %249, 48
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = extractvalue %dx.types.ResRet.f32 %264, 3
  %269 = add i32 %249, 64
  %270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = extractvalue %dx.types.ResRet.f32 %270, 1
  %273 = extractvalue %dx.types.ResRet.f32 %270, 2
  %274 = extractvalue %dx.types.ResRet.f32 %270, 3
  %275 = add i32 %249, 92
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = uitofp i32 %278 to float
  %280 = lshr i32 %277, 16
  %281 = uitofp i32 %280 to float
  %282 = and i32 %257, 65535
  %283 = and i32 %257, 50331648
  %284 = icmp eq i32 %283, 33554432
  %285 = call float @dx.op.dot3.f32(i32 55, float %260, float %261, float %262, float %260, float %261, float %262)  ; Dot3(ax,ay,az,bx,by,bz)
  %286 = fsub fast float %129, %265
  %287 = fsub fast float %130, %266
  %288 = fsub fast float %131, %267
  %289 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %260, float %261, float %262)  ; Dot3(ax,ay,az,bx,by,bz)
  %290 = fdiv fast float %289, %285
  %291 = call float @dx.op.binary.f32(i32 35, float %290, float -1.000000e+00)  ; FMax(a,b)
  %292 = call float @dx.op.binary.f32(i32 36, float %291, float 1.000000e+00)  ; FMin(a,b)
  %293 = fmul fast float %292, %260
  %294 = fmul fast float %292, %261
  %295 = fmul fast float %292, %262
  %296 = fadd fast float %293, %265
  %297 = fadd fast float %294, %266
  %298 = fadd fast float %295, %267
  %299 = fsub fast float %296, %129
  %300 = fsub fast float %297, %130
  %301 = fsub fast float %298, %131
  %302 = call float @dx.op.dot3.f32(i32 55, float %299, float %300, float %301, float %299, float %300, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %304 = fdiv fast float 1.000000e+00, %303
  %305 = fmul fast float %299, %304
  %306 = fmul fast float %300, %304
  %307 = fmul fast float %301, %304
  br i1 %284, label %308, label %332, !dx.controlflow.hints !37

; <label>:308                                     ; preds = %242
  %309 = fmul fast float %273, %252
  %310 = fmul fast float %273, %253
  %311 = fmul fast float %273, %254
  %312 = fsub fast float %309, %129
  %313 = fadd fast float %312, %296
  %314 = fsub fast float %310, %130
  %315 = fadd fast float %314, %297
  %316 = fsub fast float %311, %131
  %317 = fadd fast float %316, %298
  %318 = call float @dx.op.dot3.f32(i32 55, float %313, float %315, float %317, float %313, float %315, float %317)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = call float @dx.op.unary.f32(i32 25, float %318)  ; Rsqrt(value)
  %320 = fmul fast float %319, %313
  %321 = fmul fast float %319, %315
  %322 = fmul fast float %319, %317
  %323 = fsub fast float %129, %296
  %324 = fsub fast float %130, %297
  %325 = fsub fast float %131, %298
  %326 = fsub fast float -0.000000e+00, %323
  %327 = fsub fast float -0.000000e+00, %324
  %328 = fsub fast float -0.000000e+00, %325
  %329 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %330 = fcmp fast ogt float %329, 0.000000e+00
  %331 = uitofp i1 %330 to float
  br label %332

; <label>:332                                     ; preds = %308, %242
  %333 = phi float [ %331, %308 ], [ 1.000000e+00, %242 ]
  %334 = phi float [ %320, %308 ], [ %305, %242 ]
  %335 = phi float [ %321, %308 ], [ %306, %242 ]
  %336 = phi float [ %322, %308 ], [ %307, %242 ]
  %337 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %334, float %335, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = fmul fast float %337, %337
  %339 = call float @dx.op.unary.f32(i32 7, float %338)  ; Saturate(value)
  %340 = fsub fast float 1.000000e+00, %339
  %341 = fmul fast float %340, 5.000000e-01
  %342 = fcmp fast ogt float %337, 0.000000e+00
  %343 = fsub fast float 1.000000e+00, %341
  %344 = select i1 %342, float %341, float %343
  %345 = fmul fast float %344, %281
  %346 = fadd fast float %345, %279
  %347 = fmul fast float %346, 0x3EF0001000000000
  %348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %347, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = fmul fast float %337, %271
  %351 = fadd fast float %350, %272
  %352 = call float @dx.op.unary.f32(i32 7, float %351)  ; Saturate(value)
  %353 = select i1 %284, float %352, float 1.000000e+00
  %354 = fmul fast float %303, %268
  %355 = fsub fast float 1.000000e+00, %354
  %356 = fmul fast float %355, %274
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = fmul fast float %357, %353
  %359 = fmul fast float %358, 2.000000e+00
  %360 = fsub fast float 3.000000e+00, %359
  %361 = fmul fast float %349, %333
  %362 = fmul fast float %358, %358
  %363 = fmul fast float %362, %361
  %364 = fmul fast float %363, %360
  %365 = icmp ne i32 %282, 255
  %366 = call float @dx.op.binary.f32(i32 36, float %364, float %364)  ; FMin(a,b)
  %367 = call float @dx.op.binary.f32(i32 36, float %364, float %366)  ; FMin(a,b)
  %368 = fcmp fast ogt float %367, 0.000000e+00
  %369 = and i1 %365, %368
  br i1 %369, label %370, label %469, !dx.controlflow.hints !38

; <label>:370                                     ; preds = %332
  %371 = select i1 %284, float 1.000000e+00, float %352
  %372 = mul nuw nsw i32 %282, 176
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = extractvalue %dx.types.ResRet.f32 %373, 1
  %376 = extractvalue %dx.types.ResRet.f32 %373, 2
  %377 = extractvalue %dx.types.ResRet.f32 %373, 3
  %378 = add nuw nsw i32 %372, 16
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = add nuw nsw i32 %372, 32
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = add nuw nsw i32 %372, 48
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = extractvalue %dx.types.ResRet.f32 %388, 3
  %393 = add nuw nsw i32 %372, 64
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = extractvalue %dx.types.ResRet.f32 %394, 2
  %398 = extractvalue %dx.types.ResRet.f32 %394, 3
  %399 = add nuw nsw i32 %372, 80
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = extractvalue %dx.types.ResRet.f32 %400, 3
  %405 = add nuw nsw i32 %372, 96
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = extractvalue %dx.types.ResRet.f32 %406, 3
  %411 = bitcast float %381 to i32
  %412 = fmul fast float %175, %386
  %413 = fmul fast float %176, %386
  %414 = fmul fast float %177, %386
  %415 = fadd fast float %412, %129
  %416 = fadd fast float %413, %130
  %417 = fadd fast float %414, %131
  %418 = fmul fast float %415, %389
  %419 = call float @dx.op.tertiary.f32(i32 46, float %416, float %395, float %418)  ; FMad(a,b,c)
  %420 = call float @dx.op.tertiary.f32(i32 46, float %417, float %401, float %419)  ; FMad(a,b,c)
  %421 = fadd fast float %420, %407
  %422 = fmul fast float %415, %390
  %423 = call float @dx.op.tertiary.f32(i32 46, float %416, float %396, float %422)  ; FMad(a,b,c)
  %424 = call float @dx.op.tertiary.f32(i32 46, float %417, float %402, float %423)  ; FMad(a,b,c)
  %425 = fadd fast float %424, %408
  %426 = fmul fast float %415, %391
  %427 = call float @dx.op.tertiary.f32(i32 46, float %416, float %397, float %426)  ; FMad(a,b,c)
  %428 = call float @dx.op.tertiary.f32(i32 46, float %417, float %403, float %427)  ; FMad(a,b,c)
  %429 = fadd fast float %428, %409
  %430 = fmul fast float %415, %392
  %431 = call float @dx.op.tertiary.f32(i32 46, float %416, float %398, float %430)  ; FMad(a,b,c)
  %432 = call float @dx.op.tertiary.f32(i32 46, float %417, float %404, float %431)  ; FMad(a,b,c)
  %433 = fadd fast float %432, %410
  %434 = fdiv fast float %421, %433
  %435 = fdiv fast float %425, %433
  %436 = fdiv fast float %429, %433
  %437 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %436)  ; FMax(a,b)
  %438 = fmul fast float %188, 0x401921FB60000000
  %439 = call float @dx.op.unary.f32(i32 13, float %438)  ; Sin(value)
  %440 = call float @dx.op.unary.f32(i32 12, float %438)  ; Cos(value)
  %441 = fsub fast float -0.000000e+00, %439
  %442 = fmul fast float %376, 5.000000e-01
  %443 = call float @dx.op.dot2.f32(i32 54, float %188, float %188, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %444 = call float @dx.op.unary.f32(i32 22, float %443)  ; Frc(value)
  %445 = fmul fast float %444, 0x404A7DD040000000
  %446 = call float @dx.op.unary.f32(i32 22, float %445)  ; Frc(value)
  %447 = fmul fast float %446, %385
  %448 = fadd fast float %447, %442
  %449 = call float @dx.op.tertiary.f32(i32 46, float %448, float %441, float 0.000000e+00)  ; FMad(a,b,c)
  %450 = call float @dx.op.tertiary.f32(i32 46, float %448, float %440, float 0.000000e+00)  ; FMad(a,b,c)
  %451 = fadd fast float %449, %434
  %452 = fadd fast float %450, %435
  %453 = fmul fast float %451, %380
  %454 = fmul fast float %452, %380
  %455 = call float @dx.op.binary.f32(i32 35, float %453, float %376)  ; FMax(a,b)
  %456 = call float @dx.op.binary.f32(i32 35, float %454, float %376)  ; FMax(a,b)
  %457 = call float @dx.op.binary.f32(i32 36, float %455, float %377)  ; FMin(a,b)
  %458 = call float @dx.op.binary.f32(i32 36, float %456, float %377)  ; FMin(a,b)
  %459 = fadd fast float %457, %374
  %460 = fadd fast float %458, %375
  %461 = uitofp i32 %411 to float
  %462 = fadd fast float %437, %384
  %463 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %15, float %459, float %460, float %461, float undef, i32 0, i32 0, i32 undef, float %462)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = fadd fast float %464, -1.000000e+00
  %466 = fmul fast float %465, %371
  %467 = fadd fast float %466, 1.000000e+00
  %468 = fmul fast float %467, %364
  br label %469

; <label>:469                                     ; preds = %370, %332
  %470 = phi float [ %468, %370 ], [ %364, %332 ]
  %471 = lshr i32 %193, 5
  %472 = lshr i32 %194, 5
  %473 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %471, i32 %472, i32 %245, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = lshr i32 %193, 1
  %476 = lshr i32 %194, 1
  %477 = and i32 %475, 15
  %478 = and i32 %476, 15
  %479 = and i32 %193, 1
  %480 = shl i32 %194, 1
  %481 = and i32 %480, 2
  %482 = or i32 %481, %479
  %483 = lshr i32 %474, 2
  %484 = and i32 %483, 8176
  %485 = lshr i32 %474, 11
  %486 = and i32 %485, 4080
  %487 = or i32 %484, %477
  %488 = or i32 %486, %478
  %489 = lshr i32 %474, 21
  %490 = and i32 %489, 1020
  %491 = or i32 %482, %490
  %492 = fmul fast float %470, 2.550000e+02
  %493 = fadd fast float %492, %188
  %494 = call float @dx.op.unary.f32(i32 27, float %493)  ; Round_ni(value)
  %495 = fmul fast float %494, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %487, i32 %488, i32 %491, float %495, float %495, float %495, float %495, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %496 = icmp eq i32 %243, %247
  br i1 %496, label %497, label %242, !llvm.loop !39

; <label>:497                                     ; preds = %469
  br label %498

; <label>:498                                     ; preds = %497, %216
  %499 = add i32 %217, 1
  %500 = icmp ugt i32 %499, %213
  br i1 %500, label %501, label %216

; <label>:501                                     ; preds = %498
  br label %502

; <label>:502                                     ; preds = %501, %192, %54
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
!dx.entryPoints = !{!28}

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
!25 = !{!26, !27}
!26 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}

