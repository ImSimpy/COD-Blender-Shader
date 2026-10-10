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
; shader hash: d0f863a30cb85386771f6fd9123e462e
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

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
  br i1 %252, label %1671, label %253, !dx.controlflow.hints !37

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
  br i1 %275, label %1671, label %276

; <label>:276                                     ; preds = %253
  br label %277

; <label>:277                                     ; preds = %1667, %276
  %278 = phi i32 [ %1668, %1667 ], [ %272, %276 ]
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
  br i1 %301, label %1667, label %302

; <label>:302                                     ; preds = %277
  br label %303

; <label>:303                                     ; preds = %1638, %302
  %304 = phi i32 [ %309, %1638 ], [ %300, %302 ]
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
  %417 = select i1 %348, float 1.000000e+00, float %416
  %418 = select i1 %348, float %416, float 1.000000e+00
  %419 = fmul fast float %367, %332
  %420 = fsub fast float 1.000000e+00, %419
  %421 = fmul fast float %420, %338
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fmul fast float %422, %418
  %424 = fmul fast float %423, 2.000000e+00
  %425 = fsub fast float 3.000000e+00, %424
  %426 = fmul fast float %413, %397
  %427 = fmul fast float %423, %423
  %428 = fmul fast float %427, %426
  %429 = fmul fast float %428, %425
  %430 = icmp ne i32 %346, 255
  %431 = call float @dx.op.binary.f32(i32 36, float %429, float %429)  ; FMin(a,b)
  %432 = call float @dx.op.binary.f32(i32 36, float %429, float %431)  ; FMin(a,b)
  %433 = fcmp fast ogt float %432, 0.000000e+00
  %434 = and i1 %430, %433
  br i1 %434, label %435, label %1349, !dx.controlflow.hints !39

; <label>:435                                     ; preds = %396
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
  %451 = extractvalue %dx.types.ResRet.f32 %447, 3
  %452 = add nuw nsw i32 %436, 48
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  %458 = add nuw nsw i32 %436, 64
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = add nuw nsw i32 %436, 80
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = add nuw nsw i32 %436, 96
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = add nuw nsw i32 %436, 112
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = add nuw nsw i32 %436, 128
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = extractvalue %dx.types.ResRet.f32 %483, 2
  %487 = extractvalue %dx.types.ResRet.f32 %483, 3
  %488 = add nuw nsw i32 %436, 144
  %489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = add nuw nsw i32 %436, 160
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = bitcast float %445 to i32
  %501 = bitcast float %451 to i32
  %502 = and i32 %501, 1
  %503 = icmp ne i32 %502, 0
  %504 = and i32 %501, 2
  %505 = fmul fast float %450, %176
  %506 = fmul fast float %450, %177
  %507 = fmul fast float %450, %178
  %508 = fadd fast float %505, %130
  %509 = fadd fast float %506, %131
  %510 = fadd fast float %507, %132
  %511 = fmul fast float %508, %454
  %512 = call float @dx.op.tertiary.f32(i32 46, float %509, float %460, float %511)  ; FMad(a,b,c)
  %513 = call float @dx.op.tertiary.f32(i32 46, float %510, float %466, float %512)  ; FMad(a,b,c)
  %514 = fadd fast float %513, %472
  %515 = fmul fast float %508, %455
  %516 = call float @dx.op.tertiary.f32(i32 46, float %509, float %461, float %515)  ; FMad(a,b,c)
  %517 = call float @dx.op.tertiary.f32(i32 46, float %510, float %467, float %516)  ; FMad(a,b,c)
  %518 = fadd fast float %517, %473
  %519 = fmul fast float %508, %456
  %520 = call float @dx.op.tertiary.f32(i32 46, float %509, float %462, float %519)  ; FMad(a,b,c)
  %521 = call float @dx.op.tertiary.f32(i32 46, float %510, float %468, float %520)  ; FMad(a,b,c)
  %522 = fadd fast float %521, %474
  %523 = fmul fast float %508, %457
  %524 = call float @dx.op.tertiary.f32(i32 46, float %509, float %463, float %523)  ; FMad(a,b,c)
  %525 = call float @dx.op.tertiary.f32(i32 46, float %510, float %469, float %524)  ; FMad(a,b,c)
  %526 = fadd fast float %525, %475
  %527 = fdiv fast float %514, %526
  %528 = fdiv fast float %518, %526
  %529 = fdiv fast float %522, %526
  %530 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %529)  ; FMax(a,b)
  %531 = fmul fast float %248, 0x401921FB60000000
  %532 = call float @dx.op.unary.f32(i32 13, float %531)  ; Sin(value)
  %533 = call float @dx.op.unary.f32(i32 12, float %531)  ; Cos(value)
  %534 = fsub fast float -0.000000e+00, %532
  %535 = icmp eq i32 %504, 0
  br i1 %535, label %536, label %607, !dx.controlflow.hints !40

; <label>:536                                     ; preds = %435
  %537 = fmul fast float %533, %449
  %538 = call float @dx.op.tertiary.f32(i32 46, float %532, float %449, float 0.000000e+00)  ; FMad(a,b,c)
  %539 = fmul fast float %449, %534
  %540 = call float @dx.op.tertiary.f32(i32 46, float %533, float %449, float 0.000000e+00)  ; FMad(a,b,c)
  br label %541

; <label>:541                                     ; preds = %541, %536
  %542 = phi float [ 0.000000e+00, %536 ], [ %574, %541 ]
  %543 = phi float [ 0.000000e+00, %536 ], [ %576, %541 ]
  %544 = phi i32 [ 0, %536 ], [ %577, %541 ]
  %545 = mul i32 %544, 2
  %546 = add i32 0, %545
  %547 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %546
  %548 = load float, float* %547, align 4
  %549 = mul i32 %544, 2
  %550 = add i32 1, %549
  %551 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %550
  %552 = load float, float* %551, align 4
  %553 = fmul fast float %537, %548
  %554 = call float @dx.op.tertiary.f32(i32 46, float %552, float %539, float %553)  ; FMad(a,b,c)
  %555 = fmul fast float %548, %538
  %556 = call float @dx.op.tertiary.f32(i32 46, float %552, float %540, float %555)  ; FMad(a,b,c)
  %557 = fadd fast float %554, %527
  %558 = fadd fast float %556, %528
  %559 = fmul fast float %557, %444
  %560 = fmul fast float %558, %444
  %561 = call float @dx.op.binary.f32(i32 35, float %559, float %440)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float %560, float %440)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float %561, float %441)  ; FMin(a,b)
  %564 = call float @dx.op.binary.f32(i32 36, float %562, float %441)  ; FMin(a,b)
  %565 = fadd fast float %563, %438
  %566 = fadd fast float %564, %439
  %567 = uitofp i32 %500 to float
  %568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %15, float %565, float %566, float %567, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = fsub fast float %569, %530
  %571 = fsub fast float %570, %448
  %572 = fcmp fast ogt float %571, 0.000000e+00
  %573 = select i1 %572, float 1.000000e+00, float 0.000000e+00
  %574 = fadd fast float %573, %542
  %575 = select i1 %572, float %571, float 0.000000e+00
  %576 = fadd fast float %575, %543
  %577 = add nuw nsw i32 %544, 1
  %578 = icmp eq i32 %577, 8
  br i1 %578, label %579, label %541

; <label>:579                                     ; preds = %541
  %580 = fdiv fast float 1.000000e+00, %574
  %581 = fmul fast float %580, %576
  %582 = fdiv fast float 1.000000e+00, %530
  %583 = fmul fast float %581, %582
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = call float @dx.op.binary.f32(i32 35, float %584, float 0.000000e+00)  ; FMax(a,b)
  %586 = fmul fast float %574, 1.250000e-01
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %588 = fmul fast float %587, 2.000000e+00
  %589 = fadd fast float %588, -1.000000e+00
  %590 = fcmp fast ogt float %589, 0.000000e+00
  %591 = fcmp fast olt float %589, 0.000000e+00
  %592 = zext i1 %590 to i32
  %593 = zext i1 %591 to i32
  %594 = sub nsw i32 %592, %593
  %595 = sitofp i32 %594 to float
  %596 = fmul fast float %595, %589
  %597 = fsub fast float 1.000000e+00, %596
  %598 = fmul fast float %597, %597
  %599 = fmul fast float %598, %597
  %600 = fsub fast float %597, %599
  %601 = fmul fast float %600, %585
  %602 = fsub fast float 1.000000e+00, %599
  %603 = fsub fast float %602, %601
  %604 = fmul fast float %595, 5.000000e-01
  %605 = fmul fast float %604, %603
  %606 = fsub fast float 5.000000e-01, %605
  br label %1222

; <label>:607                                     ; preds = %435
  %608 = fsub fast float 1.000000e+00, %530
  %609 = fmul fast float %608, 5.000000e-01
  %610 = fadd fast float %609, %530
  %611 = fsub fast float %508, %329
  %612 = fsub fast float %509, %330
  %613 = fsub fast float %510, %331
  %614 = call float @dx.op.dot3.f32(i32 55, float %611, float %612, float %613, float %321, float %322, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %615 = fdiv fast float %614, %349
  %616 = call float @dx.op.binary.f32(i32 35, float %615, float -1.000000e+00)  ; FMax(a,b)
  %617 = call float @dx.op.binary.f32(i32 36, float %616, float 1.000000e+00)  ; FMin(a,b)
  %618 = fmul fast float %617, %321
  %619 = fmul fast float %617, %322
  %620 = fmul fast float %617, %323
  %621 = fsub fast float %611, %618
  %622 = fsub fast float %612, %619
  %623 = fsub fast float %613, %620
  %624 = call float @dx.op.dot3.f32(i32 55, float %621, float %622, float %623, float %621, float %622, float %623)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = call float @dx.op.unary.f32(i32 25, float %624)  ; Rsqrt(value)
  %626 = fmul fast float %621, %625
  %627 = fmul fast float %622, %625
  %628 = fmul fast float %623, %625
  %629 = call float @dx.op.unary.f32(i32 25, float %349)  ; Rsqrt(value)
  %630 = fmul fast float %629, %321
  %631 = fmul fast float %629, %322
  %632 = fmul fast float %629, %323
  br i1 %503, label %633, label %637, !dx.controlflow.hints !41

; <label>:633                                     ; preds = %607
  %634 = fcmp fast olt float %627, 0x3FE6666660000000
  %635 = select i1 %634, float 1.000000e+00, float 0.000000e+00
  %636 = select i1 %634, float 0.000000e+00, float 1.000000e+00
  br label %637

; <label>:637                                     ; preds = %633, %607
  %638 = phi float [ 0.000000e+00, %633 ], [ %630, %607 ]
  %639 = phi float [ %635, %633 ], [ %631, %607 ]
  %640 = phi float [ %636, %633 ], [ %632, %607 ]
  %641 = fmul fast float %639, %628
  %642 = fmul fast float %640, %627
  %643 = fsub fast float %641, %642
  %644 = fmul fast float %640, %626
  %645 = fmul fast float %638, %628
  %646 = fsub fast float %644, %645
  %647 = fmul fast float %638, %627
  %648 = fmul fast float %639, %626
  %649 = fsub fast float %647, %648
  %650 = call float @dx.op.dot3.f32(i32 55, float %643, float %646, float %649, float %643, float %646, float %649)  ; Dot3(ax,ay,az,bx,by,bz)
  %651 = call float @dx.op.unary.f32(i32 25, float %650)  ; Rsqrt(value)
  %652 = fmul fast float %651, %326
  %653 = fmul fast float %652, %643
  %654 = fmul fast float %652, %646
  %655 = fmul fast float %649, %326
  %656 = fmul fast float %655, %651
  %657 = fmul fast float %527, %478
  %658 = call float @dx.op.tertiary.f32(i32 46, float %528, float %484, float %657)  ; FMad(a,b,c)
  %659 = call float @dx.op.tertiary.f32(i32 46, float %610, float %490, float %658)  ; FMad(a,b,c)
  %660 = fadd fast float %659, %496
  %661 = fmul fast float %527, %479
  %662 = call float @dx.op.tertiary.f32(i32 46, float %528, float %485, float %661)  ; FMad(a,b,c)
  %663 = call float @dx.op.tertiary.f32(i32 46, float %610, float %491, float %662)  ; FMad(a,b,c)
  %664 = fadd fast float %663, %497
  %665 = fmul fast float %527, %480
  %666 = call float @dx.op.tertiary.f32(i32 46, float %528, float %486, float %665)  ; FMad(a,b,c)
  %667 = call float @dx.op.tertiary.f32(i32 46, float %610, float %492, float %666)  ; FMad(a,b,c)
  %668 = fadd fast float %667, %498
  %669 = fmul fast float %527, %481
  %670 = call float @dx.op.tertiary.f32(i32 46, float %528, float %487, float %669)  ; FMad(a,b,c)
  %671 = call float @dx.op.tertiary.f32(i32 46, float %610, float %493, float %670)  ; FMad(a,b,c)
  %672 = fadd fast float %671, %499
  %673 = fdiv fast float 1.000000e+00, %672
  %674 = fmul fast float %673, %660
  %675 = fmul fast float %673, %664
  %676 = fmul fast float %673, %668
  %677 = fsub fast float -0.000000e+00, %626
  %678 = fsub fast float -0.000000e+00, %627
  %679 = fsub fast float -0.000000e+00, %628
  %680 = fsub fast float %329, %653
  %681 = fsub fast float %330, %654
  %682 = fsub fast float %331, %656
  %683 = fsub fast float %674, %680
  %684 = fsub fast float %675, %681
  %685 = fsub fast float %676, %682
  %686 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %683, float %684, float %685)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = call float @dx.op.unary.f32(i32 25, float %686)  ; Rsqrt(value)
  %688 = fmul fast float %683, %687
  %689 = fmul fast float %684, %687
  %690 = fmul fast float %685, %687
  %691 = fsub fast float %508, %680
  %692 = fsub fast float %509, %681
  %693 = fsub fast float %510, %682
  %694 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %691, float %692, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %688, float %689, float %690)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = fdiv fast float 1.000000e+00, %695
  %697 = fmul fast float %696, %694
  %698 = fmul fast float %697, %688
  %699 = fmul fast float %697, %689
  %700 = fmul fast float %697, %690
  %701 = fadd fast float %698, %680
  %702 = fadd fast float %699, %681
  %703 = fadd fast float %700, %682
  %704 = fadd fast float %653, %329
  %705 = fadd fast float %654, %330
  %706 = fadd fast float %656, %331
  %707 = fsub fast float %674, %704
  %708 = fsub fast float %675, %705
  %709 = fsub fast float %676, %706
  %710 = call float @dx.op.dot3.f32(i32 55, float %707, float %708, float %709, float %707, float %708, float %709)  ; Dot3(ax,ay,az,bx,by,bz)
  %711 = call float @dx.op.unary.f32(i32 25, float %710)  ; Rsqrt(value)
  %712 = fmul fast float %711, %707
  %713 = fmul fast float %711, %708
  %714 = fmul fast float %711, %709
  %715 = fsub fast float %508, %704
  %716 = fsub fast float %509, %705
  %717 = fsub fast float %510, %706
  %718 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %715, float %716, float %717)  ; Dot3(ax,ay,az,bx,by,bz)
  %719 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %712, float %713, float %714)  ; Dot3(ax,ay,az,bx,by,bz)
  %720 = fdiv fast float 1.000000e+00, %719
  %721 = fmul fast float %720, %718
  %722 = fmul fast float %721, %712
  %723 = fmul fast float %721, %713
  %724 = fmul fast float %721, %714
  %725 = fadd fast float %722, %704
  %726 = fadd fast float %723, %705
  %727 = fadd fast float %724, %706
  %728 = fmul fast float %701, %454
  %729 = call float @dx.op.tertiary.f32(i32 46, float %702, float %460, float %728)  ; FMad(a,b,c)
  %730 = call float @dx.op.tertiary.f32(i32 46, float %703, float %466, float %729)  ; FMad(a,b,c)
  %731 = fadd fast float %730, %472
  %732 = fmul fast float %701, %455
  %733 = call float @dx.op.tertiary.f32(i32 46, float %702, float %461, float %732)  ; FMad(a,b,c)
  %734 = call float @dx.op.tertiary.f32(i32 46, float %703, float %467, float %733)  ; FMad(a,b,c)
  %735 = fadd fast float %734, %473
  %736 = fmul fast float %701, %457
  %737 = call float @dx.op.tertiary.f32(i32 46, float %702, float %463, float %736)  ; FMad(a,b,c)
  %738 = call float @dx.op.tertiary.f32(i32 46, float %703, float %469, float %737)  ; FMad(a,b,c)
  %739 = fadd fast float %738, %475
  %740 = fmul fast float %725, %454
  %741 = call float @dx.op.tertiary.f32(i32 46, float %726, float %460, float %740)  ; FMad(a,b,c)
  %742 = call float @dx.op.tertiary.f32(i32 46, float %727, float %466, float %741)  ; FMad(a,b,c)
  %743 = fadd fast float %742, %472
  %744 = fmul fast float %725, %455
  %745 = call float @dx.op.tertiary.f32(i32 46, float %726, float %461, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %727, float %467, float %745)  ; FMad(a,b,c)
  %747 = fadd fast float %746, %473
  %748 = fmul fast float %725, %457
  %749 = call float @dx.op.tertiary.f32(i32 46, float %726, float %463, float %748)  ; FMad(a,b,c)
  %750 = call float @dx.op.tertiary.f32(i32 46, float %727, float %469, float %749)  ; FMad(a,b,c)
  %751 = fadd fast float %750, %475
  %752 = fdiv fast float 1.000000e+00, %739
  %753 = fmul fast float %752, %731
  %754 = fmul fast float %752, %735
  %755 = fdiv fast float 1.000000e+00, %751
  %756 = fmul fast float %755, %743
  %757 = fmul fast float %755, %747
  %758 = fsub fast float %756, %753
  %759 = fsub fast float %757, %754
  %760 = call float @dx.op.dot2.f32(i32 54, float %758, float %759, float %758, float %759)  ; Dot2(ax,ay,bx,by)
  %761 = call float @dx.op.unary.f32(i32 25, float %760)  ; Rsqrt(value)
  %762 = fmul fast float %758, %761
  %763 = fmul fast float %759, %761
  %764 = fmul fast float %758, %758
  %765 = fmul fast float %759, %759
  %766 = fadd fast float %764, %765
  %767 = call float @dx.op.unary.f32(i32 24, float %766)  ; Sqrt(value)
  %768 = fmul fast float %767, 5.000000e-01
  br i1 %503, label %861, label %769, !dx.controlflow.hints !42

; <label>:769                                     ; preds = %637
  %770 = fsub fast float %329, %321
  %771 = fsub fast float %330, %322
  %772 = fsub fast float %331, %323
  %773 = fsub fast float %674, %770
  %774 = fsub fast float %675, %771
  %775 = fsub fast float %676, %772
  %776 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float %773, float %774, float %775)  ; Dot3(ax,ay,az,bx,by,bz)
  %777 = call float @dx.op.unary.f32(i32 25, float %776)  ; Rsqrt(value)
  %778 = fmul fast float %777, %773
  %779 = fmul fast float %777, %774
  %780 = fmul fast float %777, %775
  %781 = fsub fast float %508, %770
  %782 = fsub fast float %509, %771
  %783 = fsub fast float %510, %772
  %784 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %781, float %782, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %778, float %779, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %786 = fdiv fast float 1.000000e+00, %785
  %787 = fmul fast float %786, %784
  %788 = fmul fast float %787, %778
  %789 = fmul fast float %787, %779
  %790 = fmul fast float %787, %780
  %791 = fadd fast float %788, %770
  %792 = fadd fast float %789, %771
  %793 = fadd fast float %790, %772
  %794 = fadd fast float %329, %321
  %795 = fadd fast float %330, %322
  %796 = fadd fast float %331, %323
  %797 = fsub fast float %674, %794
  %798 = fsub fast float %675, %795
  %799 = fsub fast float %676, %796
  %800 = call float @dx.op.dot3.f32(i32 55, float %797, float %798, float %799, float %797, float %798, float %799)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call float @dx.op.unary.f32(i32 25, float %800)  ; Rsqrt(value)
  %802 = fmul fast float %801, %797
  %803 = fmul fast float %801, %798
  %804 = fmul fast float %801, %799
  %805 = fsub fast float %508, %794
  %806 = fsub fast float %509, %795
  %807 = fsub fast float %510, %796
  %808 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %805, float %806, float %807)  ; Dot3(ax,ay,az,bx,by,bz)
  %809 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %802, float %803, float %804)  ; Dot3(ax,ay,az,bx,by,bz)
  %810 = fdiv fast float 1.000000e+00, %809
  %811 = fmul fast float %810, %808
  %812 = fmul fast float %811, %802
  %813 = fmul fast float %811, %803
  %814 = fmul fast float %811, %804
  %815 = fadd fast float %812, %794
  %816 = fadd fast float %813, %795
  %817 = fadd fast float %814, %796
  %818 = fmul fast float %791, %454
  %819 = call float @dx.op.tertiary.f32(i32 46, float %792, float %460, float %818)  ; FMad(a,b,c)
  %820 = call float @dx.op.tertiary.f32(i32 46, float %793, float %466, float %819)  ; FMad(a,b,c)
  %821 = fadd fast float %820, %472
  %822 = fmul fast float %791, %455
  %823 = call float @dx.op.tertiary.f32(i32 46, float %792, float %461, float %822)  ; FMad(a,b,c)
  %824 = call float @dx.op.tertiary.f32(i32 46, float %793, float %467, float %823)  ; FMad(a,b,c)
  %825 = fadd fast float %824, %473
  %826 = fmul fast float %791, %457
  %827 = call float @dx.op.tertiary.f32(i32 46, float %792, float %463, float %826)  ; FMad(a,b,c)
  %828 = call float @dx.op.tertiary.f32(i32 46, float %793, float %469, float %827)  ; FMad(a,b,c)
  %829 = fadd fast float %828, %475
  %830 = fmul fast float %815, %454
  %831 = call float @dx.op.tertiary.f32(i32 46, float %816, float %460, float %830)  ; FMad(a,b,c)
  %832 = call float @dx.op.tertiary.f32(i32 46, float %817, float %466, float %831)  ; FMad(a,b,c)
  %833 = fadd fast float %832, %472
  %834 = fmul fast float %815, %455
  %835 = call float @dx.op.tertiary.f32(i32 46, float %816, float %461, float %834)  ; FMad(a,b,c)
  %836 = call float @dx.op.tertiary.f32(i32 46, float %817, float %467, float %835)  ; FMad(a,b,c)
  %837 = fadd fast float %836, %473
  %838 = fmul fast float %815, %457
  %839 = call float @dx.op.tertiary.f32(i32 46, float %816, float %463, float %838)  ; FMad(a,b,c)
  %840 = call float @dx.op.tertiary.f32(i32 46, float %817, float %469, float %839)  ; FMad(a,b,c)
  %841 = fadd fast float %840, %475
  %842 = fdiv fast float 1.000000e+00, %829
  %843 = fmul fast float %842, %821
  %844 = fmul fast float %842, %825
  %845 = fdiv fast float 1.000000e+00, %841
  %846 = fmul fast float %845, %833
  %847 = fmul fast float %845, %837
  %848 = fsub fast float %846, %843
  %849 = fsub fast float %847, %844
  %850 = call float @dx.op.dot2.f32(i32 54, float %848, float %849, float %848, float %849)  ; Dot2(ax,ay,bx,by)
  %851 = call float @dx.op.unary.f32(i32 25, float %850)  ; Rsqrt(value)
  %852 = fmul fast float %848, %851
  %853 = fmul fast float %849, %851
  %854 = fmul fast float %848, %848
  %855 = fmul fast float %849, %849
  %856 = fadd fast float %854, %855
  %857 = call float @dx.op.unary.f32(i32 24, float %856)  ; Sqrt(value)
  %858 = fmul fast float %857, 5.000000e-01
  %859 = fcmp fast olt float %858, %768
  br i1 %859, label %860, label %861, !dx.controlflow.hints !43

; <label>:860                                     ; preds = %769
  br label %861

; <label>:861                                     ; preds = %860, %769, %637
  %862 = phi float [ %768, %637 ], [ %858, %860 ], [ %768, %769 ]
  %863 = phi float [ %768, %637 ], [ %768, %860 ], [ %858, %769 ]
  %864 = phi float [ %762, %637 ], [ %762, %860 ], [ %852, %769 ]
  %865 = phi float [ %763, %637 ], [ %763, %860 ], [ %853, %769 ]
  %866 = fmul fast float %862, %449
  %867 = fdiv fast float %866, %863
  %868 = fsub fast float %449, %867
  %869 = fmul fast float %864, %864
  %870 = fmul fast float %869, %868
  %871 = fadd fast float %870, %867
  %872 = fmul fast float %865, %864
  %873 = fmul fast float %872, %868
  %874 = fmul fast float %865, %865
  %875 = fmul fast float %874, %868
  %876 = fadd fast float %875, %867
  %877 = fmul fast float %871, %533
  %878 = call float @dx.op.tertiary.f32(i32 46, float %532, float %873, float %877)  ; FMad(a,b,c)
  %879 = fmul fast float %873, %533
  %880 = call float @dx.op.tertiary.f32(i32 46, float %532, float %876, float %879)  ; FMad(a,b,c)
  %881 = fmul fast float %871, %534
  %882 = call float @dx.op.tertiary.f32(i32 46, float %533, float %873, float %881)  ; FMad(a,b,c)
  %883 = fmul fast float %873, %534
  %884 = call float @dx.op.tertiary.f32(i32 46, float %533, float %876, float %883)  ; FMad(a,b,c)
  br label %885

; <label>:885                                     ; preds = %923, %861
  %886 = phi float [ 0.000000e+00, %861 ], [ %924, %923 ]
  %887 = phi float [ 0.000000e+00, %861 ], [ %925, %923 ]
  %888 = phi float [ 0.000000e+00, %861 ], [ %926, %923 ]
  %889 = phi float [ 0.000000e+00, %861 ], [ %927, %923 ]
  %890 = phi i32 [ 0, %861 ], [ %928, %923 ]
  %891 = mul i32 %890, 2
  %892 = add i32 0, %891
  %893 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %892
  %894 = load float, float* %893, align 4
  %895 = mul i32 %890, 2
  %896 = add i32 1, %895
  %897 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %896
  %898 = load float, float* %897, align 4
  %899 = fmul fast float %894, %878
  %900 = call float @dx.op.tertiary.f32(i32 46, float %898, float %882, float %899)  ; FMad(a,b,c)
  %901 = fmul fast float %894, %880
  %902 = call float @dx.op.tertiary.f32(i32 46, float %898, float %884, float %901)  ; FMad(a,b,c)
  %903 = fadd fast float %900, %527
  %904 = fadd fast float %902, %528
  %905 = fmul fast float %903, %444
  %906 = fmul fast float %904, %444
  %907 = call float @dx.op.binary.f32(i32 35, float %905, float %440)  ; FMax(a,b)
  %908 = call float @dx.op.binary.f32(i32 35, float %906, float %440)  ; FMax(a,b)
  %909 = call float @dx.op.binary.f32(i32 36, float %907, float %441)  ; FMin(a,b)
  %910 = call float @dx.op.binary.f32(i32 36, float %908, float %441)  ; FMin(a,b)
  %911 = fadd fast float %909, %438
  %912 = fadd fast float %910, %439
  %913 = uitofp i32 %500 to float
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %15, float %911, float %912, float %913, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = fadd fast float %530, %448
  %917 = fcmp fast olt float %916, %915
  br i1 %917, label %918, label %923, !dx.controlflow.hints !44

; <label>:918                                     ; preds = %885
  %919 = fadd fast float %915, %888
  %920 = fadd fast float %900, %886
  %921 = fadd fast float %902, %887
  %922 = fadd fast float %889, 1.000000e+00
  br label %923

; <label>:923                                     ; preds = %918, %885
  %924 = phi float [ %920, %918 ], [ %886, %885 ]
  %925 = phi float [ %921, %918 ], [ %887, %885 ]
  %926 = phi float [ %919, %918 ], [ %888, %885 ]
  %927 = phi float [ %922, %918 ], [ %889, %885 ]
  %928 = add nuw nsw i32 %890, 1
  %929 = icmp eq i32 %928, 8
  br i1 %929, label %930, label %885

; <label>:930                                     ; preds = %923
  %931 = fdiv fast float 1.000000e+00, %927
  %932 = fcmp fast oeq float %927, 0.000000e+00
  %933 = fmul fast float %931, %926
  %934 = select i1 %932, float -1.000000e+00, float %933
  %935 = fcmp fast olt float %934, 0.000000e+00
  br i1 %935, label %1222, label %936, !dx.controlflow.hints !45

; <label>:936                                     ; preds = %930
  %937 = fmul fast float %931, %925
  %938 = select i1 %932, float 0.000000e+00, float %937
  %939 = fmul fast float %931, %924
  %940 = select i1 %932, float 0.000000e+00, float %939
  %941 = fadd fast float %940, %527
  %942 = fadd fast float %938, %528
  br i1 %503, label %943, label %947, !dx.controlflow.hints !41

; <label>:943                                     ; preds = %936
  %944 = fcmp fast olt float %627, 0x3FE6666660000000
  %945 = select i1 %944, float 1.000000e+00, float 0.000000e+00
  %946 = select i1 %944, float 0.000000e+00, float 1.000000e+00
  br label %947

; <label>:947                                     ; preds = %943, %936
  %948 = phi float [ 0.000000e+00, %943 ], [ %630, %936 ]
  %949 = phi float [ %945, %943 ], [ %631, %936 ]
  %950 = phi float [ %946, %943 ], [ %632, %936 ]
  %951 = fmul fast float %949, %628
  %952 = fmul fast float %950, %627
  %953 = fsub fast float %951, %952
  %954 = fmul fast float %950, %626
  %955 = fmul fast float %948, %628
  %956 = fsub fast float %954, %955
  %957 = fmul fast float %948, %627
  %958 = fmul fast float %949, %626
  %959 = fsub fast float %957, %958
  %960 = call float @dx.op.dot3.f32(i32 55, float %953, float %956, float %959, float %953, float %956, float %959)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = call float @dx.op.unary.f32(i32 25, float %960)  ; Rsqrt(value)
  %962 = fmul fast float %961, %326
  %963 = fmul fast float %962, %953
  %964 = fmul fast float %962, %956
  %965 = fmul fast float %959, %326
  %966 = fmul fast float %965, %961
  %967 = fmul fast float %941, %478
  %968 = call float @dx.op.tertiary.f32(i32 46, float %942, float %484, float %967)  ; FMad(a,b,c)
  %969 = call float @dx.op.tertiary.f32(i32 46, float %934, float %490, float %968)  ; FMad(a,b,c)
  %970 = fadd fast float %969, %496
  %971 = fmul fast float %941, %479
  %972 = call float @dx.op.tertiary.f32(i32 46, float %942, float %485, float %971)  ; FMad(a,b,c)
  %973 = call float @dx.op.tertiary.f32(i32 46, float %934, float %491, float %972)  ; FMad(a,b,c)
  %974 = fadd fast float %973, %497
  %975 = fmul fast float %941, %480
  %976 = call float @dx.op.tertiary.f32(i32 46, float %942, float %486, float %975)  ; FMad(a,b,c)
  %977 = call float @dx.op.tertiary.f32(i32 46, float %934, float %492, float %976)  ; FMad(a,b,c)
  %978 = fadd fast float %977, %498
  %979 = fmul fast float %941, %481
  %980 = call float @dx.op.tertiary.f32(i32 46, float %942, float %487, float %979)  ; FMad(a,b,c)
  %981 = call float @dx.op.tertiary.f32(i32 46, float %934, float %493, float %980)  ; FMad(a,b,c)
  %982 = fadd fast float %981, %499
  %983 = fdiv fast float 1.000000e+00, %982
  %984 = fmul fast float %983, %970
  %985 = fmul fast float %983, %974
  %986 = fmul fast float %983, %978
  %987 = fsub fast float %329, %963
  %988 = fsub fast float %330, %964
  %989 = fsub fast float %331, %966
  %990 = fsub fast float %984, %987
  %991 = fsub fast float %985, %988
  %992 = fsub fast float %986, %989
  %993 = call float @dx.op.dot3.f32(i32 55, float %990, float %991, float %992, float %990, float %991, float %992)  ; Dot3(ax,ay,az,bx,by,bz)
  %994 = call float @dx.op.unary.f32(i32 25, float %993)  ; Rsqrt(value)
  %995 = fmul fast float %990, %994
  %996 = fmul fast float %991, %994
  %997 = fmul fast float %992, %994
  %998 = fsub fast float %508, %987
  %999 = fsub fast float %509, %988
  %1000 = fsub fast float %510, %989
  %1001 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %998, float %999, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %995, float %996, float %997)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = fdiv fast float 1.000000e+00, %1002
  %1004 = fmul fast float %1003, %1001
  %1005 = fmul fast float %1004, %995
  %1006 = fmul fast float %1004, %996
  %1007 = fmul fast float %1004, %997
  %1008 = fadd fast float %1005, %987
  %1009 = fadd fast float %1006, %988
  %1010 = fadd fast float %1007, %989
  %1011 = fadd fast float %963, %329
  %1012 = fadd fast float %964, %330
  %1013 = fadd fast float %966, %331
  %1014 = fsub fast float %984, %1011
  %1015 = fsub fast float %985, %1012
  %1016 = fsub fast float %986, %1013
  %1017 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1015, float %1016, float %1014, float %1015, float %1016)  ; Dot3(ax,ay,az,bx,by,bz)
  %1018 = call float @dx.op.unary.f32(i32 25, float %1017)  ; Rsqrt(value)
  %1019 = fmul fast float %1018, %1014
  %1020 = fmul fast float %1018, %1015
  %1021 = fmul fast float %1018, %1016
  %1022 = fsub fast float %508, %1011
  %1023 = fsub fast float %509, %1012
  %1024 = fsub fast float %510, %1013
  %1025 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %1022, float %1023, float %1024)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %1019, float %1020, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = fdiv fast float 1.000000e+00, %1026
  %1028 = fmul fast float %1027, %1025
  %1029 = fmul fast float %1028, %1019
  %1030 = fmul fast float %1028, %1020
  %1031 = fmul fast float %1028, %1021
  %1032 = fadd fast float %1029, %1011
  %1033 = fadd fast float %1030, %1012
  %1034 = fadd fast float %1031, %1013
  %1035 = fmul fast float %1008, %454
  %1036 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %460, float %1035)  ; FMad(a,b,c)
  %1037 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %466, float %1036)  ; FMad(a,b,c)
  %1038 = fadd fast float %1037, %472
  %1039 = fmul fast float %1008, %455
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %461, float %1039)  ; FMad(a,b,c)
  %1041 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %467, float %1040)  ; FMad(a,b,c)
  %1042 = fadd fast float %1041, %473
  %1043 = fmul fast float %1008, %457
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %463, float %1043)  ; FMad(a,b,c)
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %469, float %1044)  ; FMad(a,b,c)
  %1046 = fadd fast float %1045, %475
  %1047 = fmul fast float %1032, %454
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %460, float %1047)  ; FMad(a,b,c)
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %466, float %1048)  ; FMad(a,b,c)
  %1050 = fadd fast float %1049, %472
  %1051 = fmul fast float %1032, %455
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %461, float %1051)  ; FMad(a,b,c)
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %467, float %1052)  ; FMad(a,b,c)
  %1054 = fadd fast float %1053, %473
  %1055 = fmul fast float %1032, %457
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %463, float %1055)  ; FMad(a,b,c)
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %469, float %1056)  ; FMad(a,b,c)
  %1058 = fadd fast float %1057, %475
  %1059 = fdiv fast float 1.000000e+00, %1046
  %1060 = fmul fast float %1059, %1038
  %1061 = fmul fast float %1059, %1042
  %1062 = fdiv fast float 1.000000e+00, %1058
  %1063 = fmul fast float %1062, %1050
  %1064 = fmul fast float %1062, %1054
  %1065 = fsub fast float %1063, %1060
  %1066 = fsub fast float %1064, %1061
  %1067 = call float @dx.op.dot2.f32(i32 54, float %1065, float %1066, float %1065, float %1066)  ; Dot2(ax,ay,bx,by)
  %1068 = call float @dx.op.unary.f32(i32 25, float %1067)  ; Rsqrt(value)
  %1069 = fmul fast float %1065, %1068
  %1070 = fmul fast float %1066, %1068
  %1071 = fmul fast float %1065, %1065
  %1072 = fmul fast float %1066, %1066
  %1073 = fadd fast float %1071, %1072
  %1074 = call float @dx.op.unary.f32(i32 24, float %1073)  ; Sqrt(value)
  %1075 = fmul fast float %1074, 5.000000e-01
  br i1 %503, label %1168, label %1076, !dx.controlflow.hints !42

; <label>:1076                                    ; preds = %947
  %1077 = fsub fast float %329, %321
  %1078 = fsub fast float %330, %322
  %1079 = fsub fast float %331, %323
  %1080 = fsub fast float %984, %1077
  %1081 = fsub fast float %985, %1078
  %1082 = fsub fast float %986, %1079
  %1083 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1081, float %1082, float %1080, float %1081, float %1082)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = call float @dx.op.unary.f32(i32 25, float %1083)  ; Rsqrt(value)
  %1085 = fmul fast float %1084, %1080
  %1086 = fmul fast float %1084, %1081
  %1087 = fmul fast float %1084, %1082
  %1088 = fsub fast float %508, %1077
  %1089 = fsub fast float %509, %1078
  %1090 = fsub fast float %510, %1079
  %1091 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %1088, float %1089, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %1085, float %1086, float %1087)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = fdiv fast float 1.000000e+00, %1092
  %1094 = fmul fast float %1093, %1091
  %1095 = fmul fast float %1094, %1085
  %1096 = fmul fast float %1094, %1086
  %1097 = fmul fast float %1094, %1087
  %1098 = fadd fast float %1095, %1077
  %1099 = fadd fast float %1096, %1078
  %1100 = fadd fast float %1097, %1079
  %1101 = fadd fast float %329, %321
  %1102 = fadd fast float %330, %322
  %1103 = fadd fast float %331, %323
  %1104 = fsub fast float %984, %1101
  %1105 = fsub fast float %985, %1102
  %1106 = fsub fast float %986, %1103
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1105, float %1106, float %1104, float %1105, float %1106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = call float @dx.op.unary.f32(i32 25, float %1107)  ; Rsqrt(value)
  %1109 = fmul fast float %1108, %1104
  %1110 = fmul fast float %1108, %1105
  %1111 = fmul fast float %1108, %1106
  %1112 = fsub fast float %508, %1101
  %1113 = fsub fast float %509, %1102
  %1114 = fsub fast float %510, %1103
  %1115 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %1112, float %1113, float %1114)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %679, float %1109, float %1110, float %1111)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = fdiv fast float 1.000000e+00, %1116
  %1118 = fmul fast float %1117, %1115
  %1119 = fmul fast float %1118, %1109
  %1120 = fmul fast float %1118, %1110
  %1121 = fmul fast float %1118, %1111
  %1122 = fadd fast float %1119, %1101
  %1123 = fadd fast float %1120, %1102
  %1124 = fadd fast float %1121, %1103
  %1125 = fmul fast float %1098, %454
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %460, float %1125)  ; FMad(a,b,c)
  %1127 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %466, float %1126)  ; FMad(a,b,c)
  %1128 = fadd fast float %1127, %472
  %1129 = fmul fast float %1098, %455
  %1130 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %461, float %1129)  ; FMad(a,b,c)
  %1131 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %467, float %1130)  ; FMad(a,b,c)
  %1132 = fadd fast float %1131, %473
  %1133 = fmul fast float %1098, %457
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %463, float %1133)  ; FMad(a,b,c)
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %469, float %1134)  ; FMad(a,b,c)
  %1136 = fadd fast float %1135, %475
  %1137 = fmul fast float %1122, %454
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1123, float %460, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1124, float %466, float %1138)  ; FMad(a,b,c)
  %1140 = fadd fast float %1139, %472
  %1141 = fmul fast float %1122, %455
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1123, float %461, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1124, float %467, float %1142)  ; FMad(a,b,c)
  %1144 = fadd fast float %1143, %473
  %1145 = fmul fast float %1122, %457
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1123, float %463, float %1145)  ; FMad(a,b,c)
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1124, float %469, float %1146)  ; FMad(a,b,c)
  %1148 = fadd fast float %1147, %475
  %1149 = fdiv fast float 1.000000e+00, %1136
  %1150 = fmul fast float %1149, %1128
  %1151 = fmul fast float %1149, %1132
  %1152 = fdiv fast float 1.000000e+00, %1148
  %1153 = fmul fast float %1152, %1140
  %1154 = fmul fast float %1152, %1144
  %1155 = fsub fast float %1153, %1150
  %1156 = fsub fast float %1154, %1151
  %1157 = call float @dx.op.dot2.f32(i32 54, float %1155, float %1156, float %1155, float %1156)  ; Dot2(ax,ay,bx,by)
  %1158 = call float @dx.op.unary.f32(i32 25, float %1157)  ; Rsqrt(value)
  %1159 = fmul fast float %1155, %1158
  %1160 = fmul fast float %1156, %1158
  %1161 = fmul fast float %1155, %1155
  %1162 = fmul fast float %1156, %1156
  %1163 = fadd fast float %1161, %1162
  %1164 = call float @dx.op.unary.f32(i32 24, float %1163)  ; Sqrt(value)
  %1165 = fmul fast float %1164, 5.000000e-01
  %1166 = fcmp fast olt float %1165, %1075
  br i1 %1166, label %1167, label %1168, !dx.controlflow.hints !43

; <label>:1167                                    ; preds = %1076
  br label %1168

; <label>:1168                                    ; preds = %1167, %1076, %947
  %1169 = phi float [ %1075, %947 ], [ %1165, %1167 ], [ %1075, %1076 ]
  %1170 = phi float [ %1075, %947 ], [ %1075, %1167 ], [ %1165, %1076 ]
  %1171 = phi float [ %1069, %947 ], [ %1069, %1167 ], [ %1159, %1076 ]
  %1172 = phi float [ %1070, %947 ], [ %1070, %1167 ], [ %1160, %1076 ]
  %1173 = fsub fast float %1170, %1169
  %1174 = fmul fast float %1171, %1171
  %1175 = fmul fast float %1174, %1173
  %1176 = fadd fast float %1175, %1169
  %1177 = fmul fast float %1171, %1173
  %1178 = fmul fast float %1177, %1172
  %1179 = fmul fast float %1172, %1172
  %1180 = fmul fast float %1179, %1173
  %1181 = fadd fast float %1180, %1169
  %1182 = fmul fast float %1176, %533
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %532, float %1178, float %1182)  ; FMad(a,b,c)
  %1184 = fmul fast float %1178, %533
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %532, float %1181, float %1184)  ; FMad(a,b,c)
  %1186 = fmul fast float %1176, %534
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %533, float %1178, float %1186)  ; FMad(a,b,c)
  %1188 = fmul fast float %1178, %534
  %1189 = call float @dx.op.tertiary.f32(i32 46, float %533, float %1181, float %1188)  ; FMad(a,b,c)
  br label %1190

; <label>:1190                                    ; preds = %1190, %1168
  %1191 = phi float [ 0.000000e+00, %1168 ], [ %1217, %1190 ]
  %1192 = phi i32 [ 0, %1168 ], [ %1218, %1190 ]
  %1193 = mul i32 %1192, 2
  %1194 = add i32 0, %1193
  %1195 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1194
  %1196 = load float, float* %1195, align 4
  %1197 = mul i32 %1192, 2
  %1198 = add i32 1, %1197
  %1199 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1198
  %1200 = load float, float* %1199, align 4
  %1201 = fmul fast float %1196, %1183
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %1187, float %1201)  ; FMad(a,b,c)
  %1203 = fmul fast float %1196, %1185
  %1204 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %1189, float %1203)  ; FMad(a,b,c)
  %1205 = fadd fast float %1202, %527
  %1206 = fadd fast float %1204, %528
  %1207 = fmul fast float %1205, %444
  %1208 = fmul fast float %1206, %444
  %1209 = call float @dx.op.binary.f32(i32 35, float %1207, float %440)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 35, float %1208, float %440)  ; FMax(a,b)
  %1211 = call float @dx.op.binary.f32(i32 36, float %1209, float %441)  ; FMin(a,b)
  %1212 = call float @dx.op.binary.f32(i32 36, float %1210, float %441)  ; FMin(a,b)
  %1213 = fadd fast float %1211, %438
  %1214 = fadd fast float %1212, %439
  %1215 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %16, float %1213, float %1214, float %913, float undef, i32 0, i32 0, i32 undef, float %916)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = fadd fast float %1216, %1191
  %1218 = add nuw nsw i32 %1192, 1
  %1219 = icmp eq i32 %1218, 8
  br i1 %1219, label %1220, label %1190

; <label>:1220                                    ; preds = %1190
  %1221 = fmul fast float %1217, 1.250000e-01
  br label %1222

; <label>:1222                                    ; preds = %1220, %930, %579
  %1223 = phi float [ %606, %579 ], [ %1221, %1220 ], [ 1.000000e+00, %930 ]
  %1224 = fcmp fast ogt float %1223, 0.000000e+00
  %1225 = xor i1 %68, true
  %1226 = and i1 %1224, %1225
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1229 = fcmp fast olt float %1228, 0.000000e+00
  %1230 = and i1 %1226, %1229
  br i1 %1230, label %1231, label %1342, !dx.controlflow.hints !46

; <label>:1231                                    ; preds = %1222
  %1232 = fadd fast float %527, %440
  %1233 = fadd fast float %528, %440
  %1234 = fadd fast float %530, %448
  %1235 = fmul fast float %527, %478
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %528, float %484, float %1235)  ; FMad(a,b,c)
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %530, float %490, float %1236)  ; FMad(a,b,c)
  %1238 = fadd fast float %1237, %496
  %1239 = fmul fast float %527, %479
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %528, float %485, float %1239)  ; FMad(a,b,c)
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %530, float %491, float %1240)  ; FMad(a,b,c)
  %1242 = fadd fast float %1241, %497
  %1243 = fmul fast float %527, %480
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %528, float %486, float %1243)  ; FMad(a,b,c)
  %1245 = call float @dx.op.tertiary.f32(i32 46, float %530, float %492, float %1244)  ; FMad(a,b,c)
  %1246 = fadd fast float %1245, %498
  %1247 = fmul fast float %527, %481
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %528, float %487, float %1247)  ; FMad(a,b,c)
  %1249 = call float @dx.op.tertiary.f32(i32 46, float %530, float %493, float %1248)  ; FMad(a,b,c)
  %1250 = fadd fast float %1249, %499
  %1251 = fmul fast float %1232, %478
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %484, float %1251)  ; FMad(a,b,c)
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %1234, float %490, float %1252)  ; FMad(a,b,c)
  %1254 = fadd fast float %1253, %496
  %1255 = fmul fast float %1232, %479
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %485, float %1255)  ; FMad(a,b,c)
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %1234, float %491, float %1256)  ; FMad(a,b,c)
  %1258 = fadd fast float %1257, %497
  %1259 = fmul fast float %1232, %480
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %486, float %1259)  ; FMad(a,b,c)
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1234, float %492, float %1260)  ; FMad(a,b,c)
  %1262 = fadd fast float %1261, %498
  %1263 = fmul fast float %1232, %481
  %1264 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %487, float %1263)  ; FMad(a,b,c)
  %1265 = call float @dx.op.tertiary.f32(i32 46, float %1234, float %493, float %1264)  ; FMad(a,b,c)
  %1266 = fadd fast float %1265, %499
  %1267 = fdiv fast float 1.000000e+00, %1250
  %1268 = fmul fast float %1267, %1238
  %1269 = fmul fast float %1267, %1242
  %1270 = fmul fast float %1267, %1246
  %1271 = fdiv fast float 1.000000e+00, %1266
  %1272 = fmul fast float %1271, %1254
  %1273 = fmul fast float %1271, %1258
  %1274 = fmul fast float %1271, %1262
  %1275 = fsub fast float %1268, %1272
  %1276 = fsub fast float %1269, %1273
  %1277 = fsub fast float %1270, %1274
  %1278 = fmul fast float %1275, %1275
  %1279 = fmul fast float %1276, %1276
  %1280 = fadd fast float %1278, %1279
  %1281 = fmul fast float %1277, %1277
  %1282 = fadd fast float %1280, %1281
  %1283 = call float @dx.op.unary.f32(i32 24, float %1282)  ; Sqrt(value)
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.CBufRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.CBufRet.f32 %1284, 2
  %1288 = extractvalue %dx.types.CBufRet.f32 %1284, 3
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1298 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1299 = fmul fast float %1285, %1268
  %1300 = call float @dx.op.tertiary.f32(i32 46, float %1269, float %1286, float %1299)  ; FMad(a,b,c)
  %1301 = call float @dx.op.tertiary.f32(i32 46, float %1270, float %1287, float %1300)  ; FMad(a,b,c)
  %1302 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1288, float %1301)  ; FMad(a,b,c)
  %1303 = fmul fast float %1290, %1268
  %1304 = call float @dx.op.tertiary.f32(i32 46, float %1269, float %1291, float %1303)  ; FMad(a,b,c)
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1270, float %1292, float %1304)  ; FMad(a,b,c)
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1293, float %1305)  ; FMad(a,b,c)
  %1307 = fmul fast float %1295, %1268
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1269, float %1296, float %1307)  ; FMad(a,b,c)
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1270, float %1297, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1298, float %1309)  ; FMad(a,b,c)
  %1311 = fmul fast float %1285, %1272
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1286, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1287, float %1312)  ; FMad(a,b,c)
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1266, float %1288, float %1313)  ; FMad(a,b,c)
  %1315 = fmul fast float %1290, %1272
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1291, float %1315)  ; FMad(a,b,c)
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1292, float %1316)  ; FMad(a,b,c)
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1266, float %1293, float %1317)  ; FMad(a,b,c)
  %1319 = fmul fast float %1295, %1272
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1296, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1297, float %1320)  ; FMad(a,b,c)
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1266, float %1298, float %1321)  ; FMad(a,b,c)
  %1323 = fdiv fast float 1.000000e+00, %1310
  %1324 = fmul fast float %1323, %1302
  %1325 = fmul fast float %1323, %1306
  %1326 = fdiv fast float 1.000000e+00, %1322
  %1327 = fmul fast float %1326, %1314
  %1328 = fmul fast float %1326, %1318
  %1329 = fsub fast float %1324, %1327
  %1330 = fsub fast float %1325, %1328
  %1331 = fmul fast float %1329, 5.000000e-01
  %1332 = fmul fast float %1330, 5.000000e-01
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1335 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1336 = fmul fast float %1331, %1334
  %1337 = fmul fast float %1332, %1335
  %1338 = fmul fast float %1336, %1336
  %1339 = fmul fast float %1337, %1337
  %1340 = fadd fast float %1338, %1339
  %1341 = call float @dx.op.unary.f32(i32 24, float %1340)  ; Sqrt(value)
  br label %1342

; <label>:1342                                    ; preds = %1231, %1222
  %1343 = phi float [ %1283, %1231 ], [ 0.000000e+00, %1222 ]
  %1344 = phi float [ %1341, %1231 ], [ 0.000000e+00, %1222 ]
  %1345 = fadd fast float %1223, -1.000000e+00
  %1346 = fmul fast float %1345, %417
  %1347 = fadd fast float %1346, 1.000000e+00
  %1348 = fmul fast float %1347, %429
  br label %1349

; <label>:1349                                    ; preds = %1342, %396
  %1350 = phi float [ %1348, %1342 ], [ %429, %396 ]
  %1351 = phi float [ %1343, %1342 ], [ 0.000000e+00, %396 ]
  %1352 = phi float [ %1344, %1342 ], [ 0.000000e+00, %396 ]
  %1353 = call float @dx.op.binary.f32(i32 36, float %1350, float %1350)  ; FMin(a,b)
  %1354 = call float @dx.op.binary.f32(i32 36, float %1350, float %1353)  ; FMin(a,b)
  %1355 = fcmp fast ogt float %1354, 0.000000e+00
  %1356 = call float @dx.op.dot3.f32(i32 55, float %176, float %177, float %178, float %369, float %370, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %1357 = fcmp fast ogt float %1356, 0.000000e+00
  %1358 = and i1 %1355, %1357
  br i1 %1358, label %1359, label %1638, !dx.controlflow.hints !47

; <label>:1359                                    ; preds = %1349
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 1
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1364 = select i1 %68, float %1361, float %1363
  %1365 = extractvalue %dx.types.CBufRet.f32 %1360, 2
  %1366 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1367 = select i1 %68, float %1365, float %1366
  %1368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.i32 %1368, 0
  %1370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.i32 %1370, 0
  %1372 = select i1 %68, i32 %1369, i32 %1371
  %1373 = fcmp fast ogt float %1351, 0.000000e+00
  br i1 %1373, label %1374, label %1378, !dx.controlflow.hints !48

; <label>:1374                                    ; preds = %1359
  %1375 = fptosi float %1352 to i32
  %1376 = call i32 @dx.op.binary.i32(i32 37, i32 %1375, i32 1)  ; IMax(a,b)
  %1377 = call i32 @dx.op.binary.i32(i32 38, i32 %1376, i32 16)  ; IMin(a,b)
  br label %1378

; <label>:1378                                    ; preds = %1374, %1359
  %1379 = phi float [ 0.000000e+00, %1374 ], [ 1.000000e+00, %1359 ]
  %1380 = phi float [ %1351, %1374 ], [ %1364, %1359 ]
  %1381 = phi i32 [ %1377, %1374 ], [ %1372, %1359 ]
  %1382 = fcmp fast olt float %1380, 5.000000e-01
  %1383 = icmp eq i32 %1381, 0
  %1384 = or i1 %1382, %1383
  br i1 %1384, label %1635, label %1385, !dx.controlflow.hints !49

; <label>:1385                                    ; preds = %1378
  %1386 = fsub fast float %329, %130
  %1387 = fsub fast float %330, %131
  %1388 = fsub fast float %331, %132
  %1389 = fmul fast float %1386, %1386
  %1390 = fmul fast float %1387, %1387
  %1391 = fadd fast float %1389, %1390
  %1392 = fmul fast float %1388, %1388
  %1393 = fadd fast float %1391, %1392
  %1394 = call float @dx.op.unary.f32(i32 24, float %1393)  ; Sqrt(value)
  %1395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.i32 %1395, 0
  %1397 = uitofp i32 %1396 to float
  %1398 = fmul fast float %1380, %326
  %1399 = fdiv fast float %1398, %1394
  %1400 = call float @dx.op.binary.f32(i32 36, float %1399, float 1.000000e+01)  ; FMin(a,b)
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.CBufRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.CBufRet.f32 %1401, 2
  %1405 = extractvalue %dx.types.CBufRet.f32 %1401, 3
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.CBufRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.CBufRet.f32 %1406, 2
  %1410 = extractvalue %dx.types.CBufRet.f32 %1406, 3
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1415 = extractvalue %dx.types.CBufRet.f32 %1411, 3
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1420 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1425 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1430 = extractvalue %dx.types.CBufRet.f32 %1426, 3
  %1431 = select i1 %68, float %1402, float %1417
  %1432 = select i1 %68, float %1407, float %1422
  %1433 = select i1 %68, float %1412, float %1427
  %1434 = select i1 %68, float %1403, float %1418
  %1435 = select i1 %68, float %1408, float %1423
  %1436 = select i1 %68, float %1413, float %1428
  %1437 = select i1 %68, float %1404, float %1419
  %1438 = select i1 %68, float %1409, float %1424
  %1439 = select i1 %68, float %1414, float %1429
  %1440 = select i1 %68, float %1405, float %1420
  %1441 = select i1 %68, float %1410, float %1425
  %1442 = select i1 %68, float %1415, float %1430
  %1443 = fmul fast float %249, 0x401061CAC0000000
  %1444 = fmul fast float %249, 0x4023E1D7E0000000
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.CBufRet.f32 %1445, 2
  %1449 = extractvalue %dx.types.CBufRet.f32 %1445, 3
  %1450 = fsub fast float -0.000000e+00, %369
  %1451 = fmul fast float %371, %1450
  %1452 = fmul fast float %369, %1450
  %1453 = fmul fast float %370, %370
  %1454 = fsub fast float %1452, %1453
  %1455 = fdiv fast float 1.000000e+00, %75
  %1456 = fmul fast float %1448, %64
  %1457 = fmul fast float %1449, %65
  %1458 = fmul fast float %1380, %369
  %1459 = fmul fast float %1380, %371
  %1460 = fadd fast float %1458, %130
  %1461 = fadd fast float %1459, %132
  %1462 = fadd fast float %1444, 5.000000e-01
  %1463 = call float @dx.op.unary.f32(i32 22, float %1462)  ; Frc(value)
  %1464 = bitcast float %1463 to i32
  %1465 = ashr i32 %1464, 1
  %1466 = add nsw i32 %1465, 532487669
  %1467 = bitcast i32 %1466 to float
  %1468 = fmul fast float %1467, %1400
  %1469 = fadd fast float %1443, 5.000000e-01
  %1470 = call float @dx.op.unary.f32(i32 22, float %1469)  ; Frc(value)
  %1471 = fmul fast float %1470, 0x401921FB60000000
  %1472 = call float @dx.op.unary.f32(i32 12, float %1471)  ; Cos(value)
  %1473 = fmul fast float %1472, %1472
  %1474 = fsub fast float 1.000000e+00, %1473
  %1475 = bitcast float %1474 to i32
  %1476 = ashr i32 %1475, 1
  %1477 = add nsw i32 %1476, 532487669
  %1478 = bitcast i32 %1477 to float
  %1479 = fmul fast float %1468, %1472
  %1480 = fmul fast float %1479, %370
  %1481 = fmul fast float %1479, %1450
  %1482 = fadd fast float %1460, %1480
  %1483 = fmul fast float %1478, %1468
  %1484 = fmul fast float %1451, %1483
  %1485 = fmul fast float %1483, %371
  %1486 = fmul fast float %1483, %1454
  %1487 = fsub fast float %1482, %1484
  %1488 = fadd fast float %1485, %1380
  %1489 = fmul fast float %1488, %370
  %1490 = fadd fast float %1481, %131
  %1491 = fadd fast float %1490, %1489
  %1492 = fadd fast float %1461, %1486
  %1493 = fmul fast float %1487, %1431
  %1494 = call float @dx.op.tertiary.f32(i32 46, float %1491, float %1434, float %1493)  ; FMad(a,b,c)
  %1495 = call float @dx.op.tertiary.f32(i32 46, float %1492, float %1437, float %1494)  ; FMad(a,b,c)
  %1496 = fadd fast float %1495, %1440
  %1497 = fmul fast float %1487, %1432
  %1498 = call float @dx.op.tertiary.f32(i32 46, float %1491, float %1435, float %1497)  ; FMad(a,b,c)
  %1499 = call float @dx.op.tertiary.f32(i32 46, float %1492, float %1438, float %1498)  ; FMad(a,b,c)
  %1500 = fadd fast float %1499, %1441
  %1501 = fmul fast float %1487, %1433
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1491, float %1436, float %1501)  ; FMad(a,b,c)
  %1503 = call float @dx.op.tertiary.f32(i32 46, float %1492, float %1439, float %1502)  ; FMad(a,b,c)
  %1504 = fadd fast float %1503, %1442
  %1505 = fdiv fast float 1.000000e+00, %1504
  %1506 = fmul fast float %1496, 5.000000e-01
  %1507 = fmul fast float %1500, -5.000000e-01
  %1508 = fmul fast float %1506, %1505
  %1509 = fmul fast float %1507, %1505
  %1510 = fsub fast float 5.000000e-01, %1456
  %1511 = fadd fast float %1510, %1508
  %1512 = fsub fast float 5.000000e-01, %1457
  %1513 = fadd fast float %1512, %1509
  %1514 = fsub fast float %1505, %1455
  %1515 = call float @dx.op.dot2.f32(i32 54, float %1511, float %1513, float %1511, float %1513)  ; Dot2(ax,ay,bx,by)
  %1516 = call float @dx.op.binary.f32(i32 35, float %1515, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1517 = call float @dx.op.dot2.f32(i32 54, float %1446, float %1447, float %1446, float %1447)  ; Dot2(ax,ay,bx,by)
  %1518 = fmul fast float %1517, %1516
  %1519 = call float @dx.op.unary.f32(i32 25, float %1518)  ; Rsqrt(value)
  %1520 = fmul fast float %1519, %1511
  %1521 = fmul fast float %1519, %1513
  %1522 = fadd fast float %1520, %1456
  %1523 = fadd fast float %1521, %1457
  %1524 = fmul fast float %1511, %1446
  %1525 = fmul fast float %1513, %1447
  %1526 = fmul fast float %1524, %1524
  %1527 = fmul fast float %1525, %1525
  %1528 = fadd fast float %1526, %1527
  %1529 = call float @dx.op.unary.f32(i32 24, float %1528)  ; Sqrt(value)
  %1530 = fdiv fast float 1.000000e+00, %1529
  %1531 = fmul fast float %1529, 3.906250e-03
  %1532 = fmul fast float %235, 0x3F70624DE0000000
  %1533 = fadd fast float %1532, 0x3F70624DE0000000
  %1534 = icmp sgt i32 %1381, -1
  br i1 %1534, label %1535, label %1600

; <label>:1535                                    ; preds = %1385
  br label %1536

; <label>:1536                                    ; preds = %1596, %1535
  %1537 = phi float [ %1571, %1596 ], [ %75, %1535 ]
  %1538 = phi float [ %1558, %1596 ], [ %75, %1535 ]
  %1539 = phi float [ %1538, %1596 ], [ %75, %1535 ]
  %1540 = phi i32 [ %1597, %1596 ], [ 0, %1535 ]
  %1541 = sitofp i32 %1540 to float
  %1542 = fadd fast float %249, 5.000000e-01
  %1543 = call float @dx.op.unary.f32(i32 22, float %1542)  ; Frc(value)
  %1544 = fadd fast float %1541, %1543
  %1545 = sitofp i32 %1381 to float
  %1546 = fdiv fast float %1544, %1545
  %1547 = fmul fast float %1546, %1546
  %1548 = fsub fast float %1547, %1546
  %1549 = fmul fast float %1548, %1379
  %1550 = fadd fast float %1549, %1546
  %1551 = call float @dx.op.binary.f32(i32 36, float %1550, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1552 = fmul fast float %1551, %1511
  %1553 = fmul fast float %1551, %1513
  %1554 = fmul fast float %1551, %1514
  %1555 = fadd fast float %1552, %1522
  %1556 = fadd fast float %1553, %1523
  %1557 = fadd fast float %1554, %1455
  %1558 = fdiv fast float 1.000000e+00, %1557
  %1559 = icmp ne i32 %1396, 0
  %1560 = fmul fast float %1531, %1551
  %1561 = call float @dx.op.binary.f32(i32 36, float %1560, float %1397)  ; FMin(a,b)
  %1562 = select i1 %1559, float %1561, float 0.000000e+00
  %1563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %1555, float %1556, float undef, float undef, i32 0, i32 0, i32 undef, float %1562)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = fcmp fast ogt float %1564, -1.000000e+00
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 1
  %1568 = select i1 %1565, float %1567, float 1.000000e+00
  %1569 = fadd fast float %1564, 1.000000e+00
  %1570 = fmul fast float %1568, %1569
  %1571 = call float @dx.op.unary.f32(i32 6, float %1570)  ; FAbs(value)
  %1572 = fmul fast float %1571, %1533
  %1573 = fsub fast float %1558, %1571
  %1574 = fsub fast float %1573, %1572
  %1575 = fcmp fast ogt float %1574, 0.000000e+00
  %1576 = fcmp fast ogt float %1367, 0.000000e+00
  br i1 %1576, label %1577, label %1580, !dx.controlflow.hints !50

; <label>:1577                                    ; preds = %1536
  %1578 = fsub fast float %1558, %1539
  %1579 = call float @dx.op.binary.f32(i32 35, float %1578, float %1367)  ; FMax(a,b)
  br label %1580

; <label>:1580                                    ; preds = %1577, %1536
  %1581 = phi float [ %1579, %1577 ], [ %1380, %1536 ]
  %1582 = fcmp fast olt float %1574, %1581
  %1583 = fcmp uge float %1564, -1.000000e+00
  %1584 = or i1 %68, %1583
  %1585 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1586 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1587 = fcmp fast oeq float %1555, %1585
  %1588 = fcmp fast oeq float %1556, %1586
  %1589 = and i1 %1587, %1588
  %1590 = and i1 %1584, %1589
  %1591 = and i1 %1575, %1582
  %1592 = and i1 %1591, %1590
  %1593 = fcmp fast ogt float %1551, %1530
  %1594 = and i1 %1593, %1592
  %1595 = zext i1 %1594 to i32
  br i1 %1594, label %1599, label %1596, !dx.controlflow.hints !51

; <label>:1596                                    ; preds = %1580
  %1597 = add nuw nsw i32 %1540, 1
  %1598 = icmp slt i32 %1540, %1381
  br i1 %1598, label %1536, label %1599

; <label>:1599                                    ; preds = %1596, %1580
  br label %1600

; <label>:1600                                    ; preds = %1599, %1385
  %1601 = phi i32 [ 0, %1385 ], [ %1595, %1599 ]
  %1602 = phi float [ %75, %1385 ], [ %1571, %1599 ]
  %1603 = phi float [ %75, %1385 ], [ %1537, %1599 ]
  %1604 = phi float [ %75, %1385 ], [ %1558, %1599 ]
  %1605 = phi float [ %75, %1385 ], [ %1538, %1599 ]
  %1606 = fsub fast float %1605, %1603
  %1607 = fsub fast float %1604, %1602
  %1608 = fsub fast float %1606, %1607
  %1609 = fcmp fast une float %1608, 0.000000e+00
  %1610 = fmul fast float %1606, %1604
  %1611 = fmul fast float %1605, %1607
  %1612 = fsub fast float %1610, %1611
  %1613 = fdiv fast float 1.000000e+00, %1608
  %1614 = fmul fast float %1612, %1613
  %1615 = select i1 %1609, float %1614, float %1604
  %1616 = fdiv fast float 1.000000e+00, %1615
  %1617 = fsub fast float %1616, %1455
  %1618 = fdiv fast float %1617, %1514
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = fmul fast float %1619, %1511
  %1621 = fmul fast float %1619, %1513
  %1622 = fadd fast float %1620, %1522
  %1623 = fadd fast float %1621, %1523
  %1624 = fadd fast float %1622, -5.000000e-01
  %1625 = fadd fast float %1623, -5.000000e-01
  %1626 = call float @dx.op.unary.f32(i32 6, float %1624)  ; FAbs(value)
  %1627 = call float @dx.op.unary.f32(i32 6, float %1625)  ; FAbs(value)
  %1628 = fadd fast float %1626, -5.000000e-01
  %1629 = fadd fast float %1627, -5.000000e-01
  %1630 = call float @dx.op.binary.f32(i32 35, float %1628, float %1629)  ; FMax(a,b)
  %1631 = fcmp fast olt float %1630, 0.000000e+00
  %1632 = icmp ne i32 %1601, 0
  %1633 = and i1 %1632, %1631
  %1634 = select i1 %1633, float 0.000000e+00, float 1.000000e+00
  br label %1635

; <label>:1635                                    ; preds = %1600, %1378
  %1636 = phi float [ %1634, %1600 ], [ 1.000000e+00, %1378 ]
  %1637 = fmul fast float %1636, %1350
  br label %1638

; <label>:1638                                    ; preds = %1635, %1349
  %1639 = phi float [ %1637, %1635 ], [ %1350, %1349 ]
  %1640 = lshr i32 %254, 5
  %1641 = lshr i32 %255, 5
  %1642 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %1640, i32 %1641, i32 %306, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = lshr i32 %254, 1
  %1645 = lshr i32 %255, 1
  %1646 = and i32 %1644, 15
  %1647 = and i32 %1645, 15
  %1648 = and i32 %254, 1
  %1649 = shl i32 %255, 1
  %1650 = and i32 %1649, 2
  %1651 = or i32 %1650, %1648
  %1652 = lshr i32 %1643, 2
  %1653 = and i32 %1652, 8176
  %1654 = lshr i32 %1643, 11
  %1655 = and i32 %1654, 4080
  %1656 = or i32 %1653, %1646
  %1657 = or i32 %1655, %1647
  %1658 = lshr i32 %1643, 21
  %1659 = and i32 %1658, 1020
  %1660 = or i32 %1651, %1659
  %1661 = fmul fast float %1639, 2.550000e+02
  %1662 = fadd fast float %1661, %248
  %1663 = call float @dx.op.unary.f32(i32 27, float %1662)  ; Round_ni(value)
  %1664 = fmul fast float %1663, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1656, i32 %1657, i32 %1660, float %1664, float %1664, float %1664, float %1664, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1665 = icmp eq i32 %304, %308
  br i1 %1665, label %1666, label %303, !llvm.loop !52

; <label>:1666                                    ; preds = %1638
  br label %1667

; <label>:1667                                    ; preds = %1666, %277
  %1668 = add i32 %278, 1
  %1669 = icmp ugt i32 %1668, %274
  br i1 %1669, label %1670, label %277

; <label>:1670                                    ; preds = %1667
  br label %1671

; <label>:1671                                    ; preds = %1670, %253, %55
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
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}

