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
; shader hash: 4a19f6a04785d150cc265791a386a4c6
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
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = fmul fast float %180, 0x3FE3C6EF40000000
  %182 = frem fast float %64, 2.560000e+02
  %183 = frem fast float %65, 2.560000e+02
  %184 = fptoui float %182 to i32
  %185 = fptoui float %183 to i32
  %186 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %184, i32 %185, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fadd fast float %187, %181
  %189 = call float @dx.op.unary.f32(i32 22, float %188)  ; Frc(value)
  %190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.i32 %190, 0
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %1201, label %193, !dx.controlflow.hints !37

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
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 16
  %211 = and i32 %209, 65535
  %212 = lshr i32 %209, 21
  %213 = lshr i32 %211, 5
  %214 = call i32 @dx.op.binary.i32(i32 40, i32 %213, i32 %202)  ; UMin(a,b)
  %215 = icmp ugt i32 %212, %214
  br i1 %215, label %1201, label %216

; <label>:216                                     ; preds = %193
  br label %217

; <label>:217                                     ; preds = %1197, %216
  %218 = phi i32 [ %1198, %1197 ], [ %212, %216 ]
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 0
  %221 = call i32 @dx.op.tertiary.i32(i32 49, i32 %200, i32 %220, i32 %218)  ; UMad(a,b,c)
  %222 = shl i32 %221, 2
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = shl i32 %218, 5
  %226 = sub nsw i32 %210, %225
  %227 = call i32 @dx.op.binary.i32(i32 37, i32 %226, i32 0)  ; IMax(a,b)
  %228 = call i32 @dx.op.binary.i32(i32 38, i32 %227, i32 31)  ; IMin(a,b)
  %229 = sub nsw i32 1, %210
  %230 = add nsw i32 %229, %211
  %231 = call i32 @dx.op.binary.i32(i32 37, i32 %230, i32 0)  ; IMax(a,b)
  %232 = call i32 @dx.op.binary.i32(i32 38, i32 %231, i32 32)  ; IMin(a,b)
  %233 = and i32 %232, 31
  %234 = shl i32 -1, %233
  %235 = xor i32 %234, -1
  %236 = and i32 %228, 31
  %237 = shl i32 %235, %236
  %238 = icmp eq i32 %232, 32
  %239 = select i1 %238, i32 -1, i32 %237
  %240 = and i32 %239, %224
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %1197, label %242

; <label>:242                                     ; preds = %217
  br label %243

; <label>:243                                     ; preds = %1168, %242
  %244 = phi i32 [ %249, %1168 ], [ %240, %242 ]
  %245 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %244)  ; FirstbitLo(value)
  %246 = add i32 %245, %225
  %247 = and i32 %245, 31
  %248 = shl i32 1, %247
  %249 = xor i32 %248, %244
  %250 = mul i32 %246, 112
  %251 = add i32 %250, 16
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = add i32 %250, 28
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = add i32 %250, 32
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = add i32 %250, 44
  %265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = add i32 %250, 48
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = extractvalue %dx.types.ResRet.f32 %268, 3
  %273 = add i32 %250, 64
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = add i32 %250, 92
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 65535
  %283 = uitofp i32 %282 to float
  %284 = lshr i32 %281, 16
  %285 = uitofp i32 %284 to float
  %286 = and i32 %258, 65535
  %287 = and i32 %258, 50331648
  %288 = icmp eq i32 %287, 33554432
  %289 = call float @dx.op.dot3.f32(i32 55, float %261, float %262, float %263, float %261, float %262, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %290 = fsub fast float %130, %269
  %291 = fsub fast float %131, %270
  %292 = fsub fast float %132, %271
  %293 = call float @dx.op.dot3.f32(i32 55, float %290, float %291, float %292, float %261, float %262, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = fdiv fast float %293, %289
  %295 = call float @dx.op.binary.f32(i32 35, float %294, float -1.000000e+00)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 36, float %295, float 1.000000e+00)  ; FMin(a,b)
  %297 = fmul fast float %296, %261
  %298 = fmul fast float %296, %262
  %299 = fmul fast float %296, %263
  %300 = fadd fast float %297, %269
  %301 = fadd fast float %298, %270
  %302 = fadd fast float %299, %271
  %303 = fsub fast float %300, %130
  %304 = fsub fast float %301, %131
  %305 = fsub fast float %302, %132
  %306 = call float @dx.op.dot3.f32(i32 55, float %303, float %304, float %305, float %303, float %304, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %308 = fdiv fast float 1.000000e+00, %307
  %309 = fmul fast float %303, %308
  %310 = fmul fast float %304, %308
  %311 = fmul fast float %305, %308
  br i1 %288, label %312, label %336, !dx.controlflow.hints !38

; <label>:312                                     ; preds = %243
  %313 = fmul fast float %277, %253
  %314 = fmul fast float %277, %254
  %315 = fmul fast float %277, %255
  %316 = fsub fast float %313, %130
  %317 = fadd fast float %316, %300
  %318 = fsub fast float %314, %131
  %319 = fadd fast float %318, %301
  %320 = fsub fast float %315, %132
  %321 = fadd fast float %320, %302
  %322 = call float @dx.op.dot3.f32(i32 55, float %317, float %319, float %321, float %317, float %319, float %321)  ; Dot3(ax,ay,az,bx,by,bz)
  %323 = call float @dx.op.unary.f32(i32 25, float %322)  ; Rsqrt(value)
  %324 = fmul fast float %323, %317
  %325 = fmul fast float %323, %319
  %326 = fmul fast float %323, %321
  %327 = fsub fast float %130, %300
  %328 = fsub fast float %131, %301
  %329 = fsub fast float %132, %302
  %330 = fsub fast float -0.000000e+00, %327
  %331 = fsub fast float -0.000000e+00, %328
  %332 = fsub fast float -0.000000e+00, %329
  %333 = call float @dx.op.dot3.f32(i32 55, float %330, float %331, float %332, float %253, float %254, float %255)  ; Dot3(ax,ay,az,bx,by,bz)
  %334 = fcmp fast ogt float %333, 0.000000e+00
  %335 = uitofp i1 %334 to float
  br label %336

; <label>:336                                     ; preds = %312, %243
  %337 = phi float [ %335, %312 ], [ 1.000000e+00, %243 ]
  %338 = phi float [ %324, %312 ], [ %309, %243 ]
  %339 = phi float [ %325, %312 ], [ %310, %243 ]
  %340 = phi float [ %326, %312 ], [ %311, %243 ]
  %341 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %338, float %339, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = fmul fast float %341, %341
  %343 = call float @dx.op.unary.f32(i32 7, float %342)  ; Saturate(value)
  %344 = fsub fast float 1.000000e+00, %343
  %345 = fmul fast float %344, 5.000000e-01
  %346 = fcmp fast ogt float %341, 0.000000e+00
  %347 = fsub fast float 1.000000e+00, %345
  %348 = select i1 %346, float %345, float %347
  %349 = fmul fast float %348, %285
  %350 = fadd fast float %349, %283
  %351 = fmul fast float %350, 0x3EF0001000000000
  %352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %351, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = fmul fast float %341, %275
  %355 = fadd fast float %354, %276
  %356 = call float @dx.op.unary.f32(i32 7, float %355)  ; Saturate(value)
  %357 = select i1 %288, float 1.000000e+00, float %356
  %358 = select i1 %288, float %356, float 1.000000e+00
  %359 = fmul fast float %307, %272
  %360 = fsub fast float 1.000000e+00, %359
  %361 = fmul fast float %360, %278
  %362 = call float @dx.op.unary.f32(i32 7, float %361)  ; Saturate(value)
  %363 = fmul fast float %362, %358
  %364 = fmul fast float %363, 2.000000e+00
  %365 = fsub fast float 3.000000e+00, %364
  %366 = fmul fast float %353, %337
  %367 = fmul fast float %363, %363
  %368 = fmul fast float %367, %366
  %369 = fmul fast float %368, %365
  %370 = icmp ne i32 %286, 255
  %371 = call float @dx.op.binary.f32(i32 36, float %369, float %369)  ; FMin(a,b)
  %372 = call float @dx.op.binary.f32(i32 36, float %369, float %371)  ; FMin(a,b)
  %373 = fcmp fast ogt float %372, 0.000000e+00
  %374 = and i1 %370, %373
  br i1 %374, label %375, label %1168, !dx.controlflow.hints !39

; <label>:375                                     ; preds = %336
  %376 = mul nuw nsw i32 %286, 176
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = extractvalue %dx.types.ResRet.f32 %377, 2
  %381 = extractvalue %dx.types.ResRet.f32 %377, 3
  %382 = add nuw nsw i32 %376, 16
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = add nuw nsw i32 %376, 32
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = extractvalue %dx.types.ResRet.f32 %387, 2
  %391 = extractvalue %dx.types.ResRet.f32 %387, 3
  %392 = add nuw nsw i32 %376, 48
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = extractvalue %dx.types.ResRet.f32 %393, 1
  %396 = extractvalue %dx.types.ResRet.f32 %393, 2
  %397 = extractvalue %dx.types.ResRet.f32 %393, 3
  %398 = add nuw nsw i32 %376, 64
  %399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = extractvalue %dx.types.ResRet.f32 %399, 2
  %403 = extractvalue %dx.types.ResRet.f32 %399, 3
  %404 = add nuw nsw i32 %376, 80
  %405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = extractvalue %dx.types.ResRet.f32 %405, 3
  %410 = add nuw nsw i32 %376, 96
  %411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = extractvalue %dx.types.ResRet.f32 %411, 1
  %414 = extractvalue %dx.types.ResRet.f32 %411, 2
  %415 = extractvalue %dx.types.ResRet.f32 %411, 3
  %416 = add nuw nsw i32 %376, 112
  %417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = extractvalue %dx.types.ResRet.f32 %417, 3
  %422 = add nuw nsw i32 %376, 128
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = extractvalue %dx.types.ResRet.f32 %423, 3
  %428 = add nuw nsw i32 %376, 144
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = extractvalue %dx.types.ResRet.f32 %429, 3
  %434 = add nuw nsw i32 %376, 160
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = bitcast float %385 to i32
  %441 = bitcast float %391 to i32
  %442 = and i32 %441, 1
  %443 = icmp ne i32 %442, 0
  %444 = and i32 %441, 2
  %445 = fmul fast float %176, %390
  %446 = fmul fast float %177, %390
  %447 = fmul fast float %178, %390
  %448 = fadd fast float %445, %130
  %449 = fadd fast float %446, %131
  %450 = fadd fast float %447, %132
  %451 = fmul fast float %448, %394
  %452 = call float @dx.op.tertiary.f32(i32 46, float %449, float %400, float %451)  ; FMad(a,b,c)
  %453 = call float @dx.op.tertiary.f32(i32 46, float %450, float %406, float %452)  ; FMad(a,b,c)
  %454 = fadd fast float %453, %412
  %455 = fmul fast float %448, %395
  %456 = call float @dx.op.tertiary.f32(i32 46, float %449, float %401, float %455)  ; FMad(a,b,c)
  %457 = call float @dx.op.tertiary.f32(i32 46, float %450, float %407, float %456)  ; FMad(a,b,c)
  %458 = fadd fast float %457, %413
  %459 = fmul fast float %448, %396
  %460 = call float @dx.op.tertiary.f32(i32 46, float %449, float %402, float %459)  ; FMad(a,b,c)
  %461 = call float @dx.op.tertiary.f32(i32 46, float %450, float %408, float %460)  ; FMad(a,b,c)
  %462 = fadd fast float %461, %414
  %463 = fmul fast float %448, %397
  %464 = call float @dx.op.tertiary.f32(i32 46, float %449, float %403, float %463)  ; FMad(a,b,c)
  %465 = call float @dx.op.tertiary.f32(i32 46, float %450, float %409, float %464)  ; FMad(a,b,c)
  %466 = fadd fast float %465, %415
  %467 = fdiv fast float %454, %466
  %468 = fdiv fast float %458, %466
  %469 = fdiv fast float %462, %466
  %470 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %469)  ; FMax(a,b)
  %471 = fmul fast float %189, 0x401921FB60000000
  %472 = call float @dx.op.unary.f32(i32 13, float %471)  ; Sin(value)
  %473 = call float @dx.op.unary.f32(i32 12, float %471)  ; Cos(value)
  %474 = fsub fast float -0.000000e+00, %472
  %475 = icmp eq i32 %444, 0
  br i1 %475, label %476, label %547, !dx.controlflow.hints !40

; <label>:476                                     ; preds = %375
  %477 = fmul fast float %473, %389
  %478 = call float @dx.op.tertiary.f32(i32 46, float %472, float %389, float 0.000000e+00)  ; FMad(a,b,c)
  %479 = fmul fast float %389, %474
  %480 = call float @dx.op.tertiary.f32(i32 46, float %473, float %389, float 0.000000e+00)  ; FMad(a,b,c)
  br label %481

; <label>:481                                     ; preds = %481, %476
  %482 = phi float [ 0.000000e+00, %476 ], [ %514, %481 ]
  %483 = phi float [ 0.000000e+00, %476 ], [ %516, %481 ]
  %484 = phi i32 [ 0, %476 ], [ %517, %481 ]
  %485 = mul i32 %484, 2
  %486 = add i32 0, %485
  %487 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %486
  %488 = load float, float* %487, align 4
  %489 = mul i32 %484, 2
  %490 = add i32 1, %489
  %491 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %490
  %492 = load float, float* %491, align 4
  %493 = fmul fast float %477, %488
  %494 = call float @dx.op.tertiary.f32(i32 46, float %492, float %479, float %493)  ; FMad(a,b,c)
  %495 = fmul fast float %488, %478
  %496 = call float @dx.op.tertiary.f32(i32 46, float %492, float %480, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %494, %467
  %498 = fadd fast float %496, %468
  %499 = fmul fast float %497, %384
  %500 = fmul fast float %498, %384
  %501 = call float @dx.op.binary.f32(i32 35, float %499, float %380)  ; FMax(a,b)
  %502 = call float @dx.op.binary.f32(i32 35, float %500, float %380)  ; FMax(a,b)
  %503 = call float @dx.op.binary.f32(i32 36, float %501, float %381)  ; FMin(a,b)
  %504 = call float @dx.op.binary.f32(i32 36, float %502, float %381)  ; FMin(a,b)
  %505 = fadd fast float %503, %378
  %506 = fadd fast float %504, %379
  %507 = uitofp i32 %440 to float
  %508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %15, float %505, float %506, float %507, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = fsub fast float %509, %470
  %511 = fsub fast float %510, %388
  %512 = fcmp fast ogt float %511, 0.000000e+00
  %513 = select i1 %512, float 1.000000e+00, float 0.000000e+00
  %514 = fadd fast float %513, %482
  %515 = select i1 %512, float %511, float 0.000000e+00
  %516 = fadd fast float %515, %483
  %517 = add nuw nsw i32 %484, 1
  %518 = icmp eq i32 %517, 8
  br i1 %518, label %519, label %481

; <label>:519                                     ; preds = %481
  %520 = fdiv fast float 1.000000e+00, %514
  %521 = fmul fast float %520, %516
  %522 = fdiv fast float 1.000000e+00, %470
  %523 = fmul fast float %521, %522
  %524 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %525 = call float @dx.op.binary.f32(i32 35, float %524, float 0.000000e+00)  ; FMax(a,b)
  %526 = fmul fast float %514, 1.250000e-01
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = fmul fast float %527, 2.000000e+00
  %529 = fadd fast float %528, -1.000000e+00
  %530 = fcmp fast ogt float %529, 0.000000e+00
  %531 = fcmp fast olt float %529, 0.000000e+00
  %532 = zext i1 %530 to i32
  %533 = zext i1 %531 to i32
  %534 = sub nsw i32 %532, %533
  %535 = sitofp i32 %534 to float
  %536 = fmul fast float %535, %529
  %537 = fsub fast float 1.000000e+00, %536
  %538 = fmul fast float %537, %537
  %539 = fmul fast float %538, %537
  %540 = fsub fast float %537, %539
  %541 = fmul fast float %540, %525
  %542 = fsub fast float 1.000000e+00, %539
  %543 = fsub fast float %542, %541
  %544 = fmul fast float %535, 5.000000e-01
  %545 = fmul fast float %544, %543
  %546 = fsub fast float 5.000000e-01, %545
  br label %1162

; <label>:547                                     ; preds = %375
  %548 = fsub fast float 1.000000e+00, %470
  %549 = fmul fast float %548, 5.000000e-01
  %550 = fadd fast float %549, %470
  %551 = fsub fast float %448, %269
  %552 = fsub fast float %449, %270
  %553 = fsub fast float %450, %271
  %554 = call float @dx.op.dot3.f32(i32 55, float %551, float %552, float %553, float %261, float %262, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %555 = fdiv fast float %554, %289
  %556 = call float @dx.op.binary.f32(i32 35, float %555, float -1.000000e+00)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 36, float %556, float 1.000000e+00)  ; FMin(a,b)
  %558 = fmul fast float %557, %261
  %559 = fmul fast float %557, %262
  %560 = fmul fast float %557, %263
  %561 = fsub fast float %551, %558
  %562 = fsub fast float %552, %559
  %563 = fsub fast float %553, %560
  %564 = call float @dx.op.dot3.f32(i32 55, float %561, float %562, float %563, float %561, float %562, float %563)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = call float @dx.op.unary.f32(i32 25, float %564)  ; Rsqrt(value)
  %566 = fmul fast float %561, %565
  %567 = fmul fast float %562, %565
  %568 = fmul fast float %563, %565
  %569 = call float @dx.op.unary.f32(i32 25, float %289)  ; Rsqrt(value)
  %570 = fmul fast float %569, %261
  %571 = fmul fast float %569, %262
  %572 = fmul fast float %569, %263
  br i1 %443, label %573, label %577, !dx.controlflow.hints !41

; <label>:573                                     ; preds = %547
  %574 = fcmp fast olt float %567, 0x3FE6666660000000
  %575 = select i1 %574, float 1.000000e+00, float 0.000000e+00
  %576 = select i1 %574, float 0.000000e+00, float 1.000000e+00
  br label %577

; <label>:577                                     ; preds = %573, %547
  %578 = phi float [ 0.000000e+00, %573 ], [ %570, %547 ]
  %579 = phi float [ %575, %573 ], [ %571, %547 ]
  %580 = phi float [ %576, %573 ], [ %572, %547 ]
  %581 = fmul fast float %579, %568
  %582 = fmul fast float %580, %567
  %583 = fsub fast float %581, %582
  %584 = fmul fast float %580, %566
  %585 = fmul fast float %578, %568
  %586 = fsub fast float %584, %585
  %587 = fmul fast float %578, %567
  %588 = fmul fast float %579, %566
  %589 = fsub fast float %587, %588
  %590 = call float @dx.op.dot3.f32(i32 55, float %583, float %586, float %589, float %583, float %586, float %589)  ; Dot3(ax,ay,az,bx,by,bz)
  %591 = call float @dx.op.unary.f32(i32 25, float %590)  ; Rsqrt(value)
  %592 = fmul fast float %591, %266
  %593 = fmul fast float %592, %583
  %594 = fmul fast float %592, %586
  %595 = fmul fast float %589, %266
  %596 = fmul fast float %595, %591
  %597 = fmul fast float %467, %418
  %598 = call float @dx.op.tertiary.f32(i32 46, float %468, float %424, float %597)  ; FMad(a,b,c)
  %599 = call float @dx.op.tertiary.f32(i32 46, float %550, float %430, float %598)  ; FMad(a,b,c)
  %600 = fadd fast float %599, %436
  %601 = fmul fast float %467, %419
  %602 = call float @dx.op.tertiary.f32(i32 46, float %468, float %425, float %601)  ; FMad(a,b,c)
  %603 = call float @dx.op.tertiary.f32(i32 46, float %550, float %431, float %602)  ; FMad(a,b,c)
  %604 = fadd fast float %603, %437
  %605 = fmul fast float %467, %420
  %606 = call float @dx.op.tertiary.f32(i32 46, float %468, float %426, float %605)  ; FMad(a,b,c)
  %607 = call float @dx.op.tertiary.f32(i32 46, float %550, float %432, float %606)  ; FMad(a,b,c)
  %608 = fadd fast float %607, %438
  %609 = fmul fast float %467, %421
  %610 = call float @dx.op.tertiary.f32(i32 46, float %468, float %427, float %609)  ; FMad(a,b,c)
  %611 = call float @dx.op.tertiary.f32(i32 46, float %550, float %433, float %610)  ; FMad(a,b,c)
  %612 = fadd fast float %611, %439
  %613 = fdiv fast float 1.000000e+00, %612
  %614 = fmul fast float %613, %600
  %615 = fmul fast float %613, %604
  %616 = fmul fast float %613, %608
  %617 = fsub fast float -0.000000e+00, %566
  %618 = fsub fast float -0.000000e+00, %567
  %619 = fsub fast float -0.000000e+00, %568
  %620 = fsub fast float %269, %593
  %621 = fsub fast float %270, %594
  %622 = fsub fast float %271, %596
  %623 = fsub fast float %614, %620
  %624 = fsub fast float %615, %621
  %625 = fsub fast float %616, %622
  %626 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %623, float %624, float %625)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 25, float %626)  ; Rsqrt(value)
  %628 = fmul fast float %623, %627
  %629 = fmul fast float %624, %627
  %630 = fmul fast float %625, %627
  %631 = fsub fast float %448, %620
  %632 = fsub fast float %449, %621
  %633 = fsub fast float %450, %622
  %634 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %631, float %632, float %633)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %628, float %629, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = fdiv fast float 1.000000e+00, %635
  %637 = fmul fast float %636, %634
  %638 = fmul fast float %637, %628
  %639 = fmul fast float %637, %629
  %640 = fmul fast float %637, %630
  %641 = fadd fast float %638, %620
  %642 = fadd fast float %639, %621
  %643 = fadd fast float %640, %622
  %644 = fadd fast float %593, %269
  %645 = fadd fast float %594, %270
  %646 = fadd fast float %596, %271
  %647 = fsub fast float %614, %644
  %648 = fsub fast float %615, %645
  %649 = fsub fast float %616, %646
  %650 = call float @dx.op.dot3.f32(i32 55, float %647, float %648, float %649, float %647, float %648, float %649)  ; Dot3(ax,ay,az,bx,by,bz)
  %651 = call float @dx.op.unary.f32(i32 25, float %650)  ; Rsqrt(value)
  %652 = fmul fast float %651, %647
  %653 = fmul fast float %651, %648
  %654 = fmul fast float %651, %649
  %655 = fsub fast float %448, %644
  %656 = fsub fast float %449, %645
  %657 = fsub fast float %450, %646
  %658 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %655, float %656, float %657)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %652, float %653, float %654)  ; Dot3(ax,ay,az,bx,by,bz)
  %660 = fdiv fast float 1.000000e+00, %659
  %661 = fmul fast float %660, %658
  %662 = fmul fast float %661, %652
  %663 = fmul fast float %661, %653
  %664 = fmul fast float %661, %654
  %665 = fadd fast float %662, %644
  %666 = fadd fast float %663, %645
  %667 = fadd fast float %664, %646
  %668 = fmul fast float %641, %394
  %669 = call float @dx.op.tertiary.f32(i32 46, float %642, float %400, float %668)  ; FMad(a,b,c)
  %670 = call float @dx.op.tertiary.f32(i32 46, float %643, float %406, float %669)  ; FMad(a,b,c)
  %671 = fadd fast float %670, %412
  %672 = fmul fast float %641, %395
  %673 = call float @dx.op.tertiary.f32(i32 46, float %642, float %401, float %672)  ; FMad(a,b,c)
  %674 = call float @dx.op.tertiary.f32(i32 46, float %643, float %407, float %673)  ; FMad(a,b,c)
  %675 = fadd fast float %674, %413
  %676 = fmul fast float %641, %397
  %677 = call float @dx.op.tertiary.f32(i32 46, float %642, float %403, float %676)  ; FMad(a,b,c)
  %678 = call float @dx.op.tertiary.f32(i32 46, float %643, float %409, float %677)  ; FMad(a,b,c)
  %679 = fadd fast float %678, %415
  %680 = fmul fast float %665, %394
  %681 = call float @dx.op.tertiary.f32(i32 46, float %666, float %400, float %680)  ; FMad(a,b,c)
  %682 = call float @dx.op.tertiary.f32(i32 46, float %667, float %406, float %681)  ; FMad(a,b,c)
  %683 = fadd fast float %682, %412
  %684 = fmul fast float %665, %395
  %685 = call float @dx.op.tertiary.f32(i32 46, float %666, float %401, float %684)  ; FMad(a,b,c)
  %686 = call float @dx.op.tertiary.f32(i32 46, float %667, float %407, float %685)  ; FMad(a,b,c)
  %687 = fadd fast float %686, %413
  %688 = fmul fast float %665, %397
  %689 = call float @dx.op.tertiary.f32(i32 46, float %666, float %403, float %688)  ; FMad(a,b,c)
  %690 = call float @dx.op.tertiary.f32(i32 46, float %667, float %409, float %689)  ; FMad(a,b,c)
  %691 = fadd fast float %690, %415
  %692 = fdiv fast float 1.000000e+00, %679
  %693 = fmul fast float %692, %671
  %694 = fmul fast float %692, %675
  %695 = fdiv fast float 1.000000e+00, %691
  %696 = fmul fast float %695, %683
  %697 = fmul fast float %695, %687
  %698 = fsub fast float %696, %693
  %699 = fsub fast float %697, %694
  %700 = call float @dx.op.dot2.f32(i32 54, float %698, float %699, float %698, float %699)  ; Dot2(ax,ay,bx,by)
  %701 = call float @dx.op.unary.f32(i32 25, float %700)  ; Rsqrt(value)
  %702 = fmul fast float %698, %701
  %703 = fmul fast float %699, %701
  %704 = fmul fast float %698, %698
  %705 = fmul fast float %699, %699
  %706 = fadd fast float %704, %705
  %707 = call float @dx.op.unary.f32(i32 24, float %706)  ; Sqrt(value)
  %708 = fmul fast float %707, 5.000000e-01
  br i1 %443, label %801, label %709, !dx.controlflow.hints !42

; <label>:709                                     ; preds = %577
  %710 = fsub fast float %269, %261
  %711 = fsub fast float %270, %262
  %712 = fsub fast float %271, %263
  %713 = fsub fast float %614, %710
  %714 = fsub fast float %615, %711
  %715 = fsub fast float %616, %712
  %716 = call float @dx.op.dot3.f32(i32 55, float %713, float %714, float %715, float %713, float %714, float %715)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = call float @dx.op.unary.f32(i32 25, float %716)  ; Rsqrt(value)
  %718 = fmul fast float %717, %713
  %719 = fmul fast float %717, %714
  %720 = fmul fast float %717, %715
  %721 = fsub fast float %448, %710
  %722 = fsub fast float %449, %711
  %723 = fsub fast float %450, %712
  %724 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %721, float %722, float %723)  ; Dot3(ax,ay,az,bx,by,bz)
  %725 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %718, float %719, float %720)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = fdiv fast float 1.000000e+00, %725
  %727 = fmul fast float %726, %724
  %728 = fmul fast float %727, %718
  %729 = fmul fast float %727, %719
  %730 = fmul fast float %727, %720
  %731 = fadd fast float %728, %710
  %732 = fadd fast float %729, %711
  %733 = fadd fast float %730, %712
  %734 = fadd fast float %269, %261
  %735 = fadd fast float %270, %262
  %736 = fadd fast float %271, %263
  %737 = fsub fast float %614, %734
  %738 = fsub fast float %615, %735
  %739 = fsub fast float %616, %736
  %740 = call float @dx.op.dot3.f32(i32 55, float %737, float %738, float %739, float %737, float %738, float %739)  ; Dot3(ax,ay,az,bx,by,bz)
  %741 = call float @dx.op.unary.f32(i32 25, float %740)  ; Rsqrt(value)
  %742 = fmul fast float %741, %737
  %743 = fmul fast float %741, %738
  %744 = fmul fast float %741, %739
  %745 = fsub fast float %448, %734
  %746 = fsub fast float %449, %735
  %747 = fsub fast float %450, %736
  %748 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %745, float %746, float %747)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %742, float %743, float %744)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = fdiv fast float 1.000000e+00, %749
  %751 = fmul fast float %750, %748
  %752 = fmul fast float %751, %742
  %753 = fmul fast float %751, %743
  %754 = fmul fast float %751, %744
  %755 = fadd fast float %752, %734
  %756 = fadd fast float %753, %735
  %757 = fadd fast float %754, %736
  %758 = fmul fast float %731, %394
  %759 = call float @dx.op.tertiary.f32(i32 46, float %732, float %400, float %758)  ; FMad(a,b,c)
  %760 = call float @dx.op.tertiary.f32(i32 46, float %733, float %406, float %759)  ; FMad(a,b,c)
  %761 = fadd fast float %760, %412
  %762 = fmul fast float %731, %395
  %763 = call float @dx.op.tertiary.f32(i32 46, float %732, float %401, float %762)  ; FMad(a,b,c)
  %764 = call float @dx.op.tertiary.f32(i32 46, float %733, float %407, float %763)  ; FMad(a,b,c)
  %765 = fadd fast float %764, %413
  %766 = fmul fast float %731, %397
  %767 = call float @dx.op.tertiary.f32(i32 46, float %732, float %403, float %766)  ; FMad(a,b,c)
  %768 = call float @dx.op.tertiary.f32(i32 46, float %733, float %409, float %767)  ; FMad(a,b,c)
  %769 = fadd fast float %768, %415
  %770 = fmul fast float %755, %394
  %771 = call float @dx.op.tertiary.f32(i32 46, float %756, float %400, float %770)  ; FMad(a,b,c)
  %772 = call float @dx.op.tertiary.f32(i32 46, float %757, float %406, float %771)  ; FMad(a,b,c)
  %773 = fadd fast float %772, %412
  %774 = fmul fast float %755, %395
  %775 = call float @dx.op.tertiary.f32(i32 46, float %756, float %401, float %774)  ; FMad(a,b,c)
  %776 = call float @dx.op.tertiary.f32(i32 46, float %757, float %407, float %775)  ; FMad(a,b,c)
  %777 = fadd fast float %776, %413
  %778 = fmul fast float %755, %397
  %779 = call float @dx.op.tertiary.f32(i32 46, float %756, float %403, float %778)  ; FMad(a,b,c)
  %780 = call float @dx.op.tertiary.f32(i32 46, float %757, float %409, float %779)  ; FMad(a,b,c)
  %781 = fadd fast float %780, %415
  %782 = fdiv fast float 1.000000e+00, %769
  %783 = fmul fast float %782, %761
  %784 = fmul fast float %782, %765
  %785 = fdiv fast float 1.000000e+00, %781
  %786 = fmul fast float %785, %773
  %787 = fmul fast float %785, %777
  %788 = fsub fast float %786, %783
  %789 = fsub fast float %787, %784
  %790 = call float @dx.op.dot2.f32(i32 54, float %788, float %789, float %788, float %789)  ; Dot2(ax,ay,bx,by)
  %791 = call float @dx.op.unary.f32(i32 25, float %790)  ; Rsqrt(value)
  %792 = fmul fast float %788, %791
  %793 = fmul fast float %789, %791
  %794 = fmul fast float %788, %788
  %795 = fmul fast float %789, %789
  %796 = fadd fast float %794, %795
  %797 = call float @dx.op.unary.f32(i32 24, float %796)  ; Sqrt(value)
  %798 = fmul fast float %797, 5.000000e-01
  %799 = fcmp fast olt float %798, %708
  br i1 %799, label %800, label %801, !dx.controlflow.hints !43

; <label>:800                                     ; preds = %709
  br label %801

; <label>:801                                     ; preds = %800, %709, %577
  %802 = phi float [ %708, %577 ], [ %798, %800 ], [ %708, %709 ]
  %803 = phi float [ %708, %577 ], [ %708, %800 ], [ %798, %709 ]
  %804 = phi float [ %702, %577 ], [ %702, %800 ], [ %792, %709 ]
  %805 = phi float [ %703, %577 ], [ %703, %800 ], [ %793, %709 ]
  %806 = fmul fast float %802, %389
  %807 = fdiv fast float %806, %803
  %808 = fsub fast float %389, %807
  %809 = fmul fast float %804, %804
  %810 = fmul fast float %809, %808
  %811 = fadd fast float %810, %807
  %812 = fmul fast float %805, %804
  %813 = fmul fast float %812, %808
  %814 = fmul fast float %805, %805
  %815 = fmul fast float %814, %808
  %816 = fadd fast float %815, %807
  %817 = fmul fast float %811, %473
  %818 = call float @dx.op.tertiary.f32(i32 46, float %472, float %813, float %817)  ; FMad(a,b,c)
  %819 = fmul fast float %813, %473
  %820 = call float @dx.op.tertiary.f32(i32 46, float %472, float %816, float %819)  ; FMad(a,b,c)
  %821 = fmul fast float %811, %474
  %822 = call float @dx.op.tertiary.f32(i32 46, float %473, float %813, float %821)  ; FMad(a,b,c)
  %823 = fmul fast float %813, %474
  %824 = call float @dx.op.tertiary.f32(i32 46, float %473, float %816, float %823)  ; FMad(a,b,c)
  br label %825

; <label>:825                                     ; preds = %863, %801
  %826 = phi float [ 0.000000e+00, %801 ], [ %864, %863 ]
  %827 = phi float [ 0.000000e+00, %801 ], [ %865, %863 ]
  %828 = phi float [ 0.000000e+00, %801 ], [ %866, %863 ]
  %829 = phi float [ 0.000000e+00, %801 ], [ %867, %863 ]
  %830 = phi i32 [ 0, %801 ], [ %868, %863 ]
  %831 = mul i32 %830, 2
  %832 = add i32 0, %831
  %833 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %832
  %834 = load float, float* %833, align 4
  %835 = mul i32 %830, 2
  %836 = add i32 1, %835
  %837 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %836
  %838 = load float, float* %837, align 4
  %839 = fmul fast float %834, %818
  %840 = call float @dx.op.tertiary.f32(i32 46, float %838, float %822, float %839)  ; FMad(a,b,c)
  %841 = fmul fast float %834, %820
  %842 = call float @dx.op.tertiary.f32(i32 46, float %838, float %824, float %841)  ; FMad(a,b,c)
  %843 = fadd fast float %840, %467
  %844 = fadd fast float %842, %468
  %845 = fmul fast float %843, %384
  %846 = fmul fast float %844, %384
  %847 = call float @dx.op.binary.f32(i32 35, float %845, float %380)  ; FMax(a,b)
  %848 = call float @dx.op.binary.f32(i32 35, float %846, float %380)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 36, float %847, float %381)  ; FMin(a,b)
  %850 = call float @dx.op.binary.f32(i32 36, float %848, float %381)  ; FMin(a,b)
  %851 = fadd fast float %849, %378
  %852 = fadd fast float %850, %379
  %853 = uitofp i32 %440 to float
  %854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %15, float %851, float %852, float %853, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = fadd fast float %470, %388
  %857 = fcmp fast olt float %856, %855
  br i1 %857, label %858, label %863, !dx.controlflow.hints !44

; <label>:858                                     ; preds = %825
  %859 = fadd fast float %855, %828
  %860 = fadd fast float %840, %826
  %861 = fadd fast float %842, %827
  %862 = fadd fast float %829, 1.000000e+00
  br label %863

; <label>:863                                     ; preds = %858, %825
  %864 = phi float [ %860, %858 ], [ %826, %825 ]
  %865 = phi float [ %861, %858 ], [ %827, %825 ]
  %866 = phi float [ %859, %858 ], [ %828, %825 ]
  %867 = phi float [ %862, %858 ], [ %829, %825 ]
  %868 = add nuw nsw i32 %830, 1
  %869 = icmp eq i32 %868, 8
  br i1 %869, label %870, label %825

; <label>:870                                     ; preds = %863
  %871 = fdiv fast float 1.000000e+00, %867
  %872 = fcmp fast oeq float %867, 0.000000e+00
  %873 = fmul fast float %871, %866
  %874 = select i1 %872, float -1.000000e+00, float %873
  %875 = fcmp fast olt float %874, 0.000000e+00
  br i1 %875, label %1162, label %876, !dx.controlflow.hints !45

; <label>:876                                     ; preds = %870
  %877 = fmul fast float %871, %865
  %878 = select i1 %872, float 0.000000e+00, float %877
  %879 = fmul fast float %871, %864
  %880 = select i1 %872, float 0.000000e+00, float %879
  %881 = fadd fast float %880, %467
  %882 = fadd fast float %878, %468
  br i1 %443, label %883, label %887, !dx.controlflow.hints !41

; <label>:883                                     ; preds = %876
  %884 = fcmp fast olt float %567, 0x3FE6666660000000
  %885 = select i1 %884, float 1.000000e+00, float 0.000000e+00
  %886 = select i1 %884, float 0.000000e+00, float 1.000000e+00
  br label %887

; <label>:887                                     ; preds = %883, %876
  %888 = phi float [ 0.000000e+00, %883 ], [ %570, %876 ]
  %889 = phi float [ %885, %883 ], [ %571, %876 ]
  %890 = phi float [ %886, %883 ], [ %572, %876 ]
  %891 = fmul fast float %889, %568
  %892 = fmul fast float %890, %567
  %893 = fsub fast float %891, %892
  %894 = fmul fast float %890, %566
  %895 = fmul fast float %888, %568
  %896 = fsub fast float %894, %895
  %897 = fmul fast float %888, %567
  %898 = fmul fast float %889, %566
  %899 = fsub fast float %897, %898
  %900 = call float @dx.op.dot3.f32(i32 55, float %893, float %896, float %899, float %893, float %896, float %899)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = call float @dx.op.unary.f32(i32 25, float %900)  ; Rsqrt(value)
  %902 = fmul fast float %901, %266
  %903 = fmul fast float %902, %893
  %904 = fmul fast float %902, %896
  %905 = fmul fast float %899, %266
  %906 = fmul fast float %905, %901
  %907 = fmul fast float %881, %418
  %908 = call float @dx.op.tertiary.f32(i32 46, float %882, float %424, float %907)  ; FMad(a,b,c)
  %909 = call float @dx.op.tertiary.f32(i32 46, float %874, float %430, float %908)  ; FMad(a,b,c)
  %910 = fadd fast float %909, %436
  %911 = fmul fast float %881, %419
  %912 = call float @dx.op.tertiary.f32(i32 46, float %882, float %425, float %911)  ; FMad(a,b,c)
  %913 = call float @dx.op.tertiary.f32(i32 46, float %874, float %431, float %912)  ; FMad(a,b,c)
  %914 = fadd fast float %913, %437
  %915 = fmul fast float %881, %420
  %916 = call float @dx.op.tertiary.f32(i32 46, float %882, float %426, float %915)  ; FMad(a,b,c)
  %917 = call float @dx.op.tertiary.f32(i32 46, float %874, float %432, float %916)  ; FMad(a,b,c)
  %918 = fadd fast float %917, %438
  %919 = fmul fast float %881, %421
  %920 = call float @dx.op.tertiary.f32(i32 46, float %882, float %427, float %919)  ; FMad(a,b,c)
  %921 = call float @dx.op.tertiary.f32(i32 46, float %874, float %433, float %920)  ; FMad(a,b,c)
  %922 = fadd fast float %921, %439
  %923 = fdiv fast float 1.000000e+00, %922
  %924 = fmul fast float %923, %910
  %925 = fmul fast float %923, %914
  %926 = fmul fast float %923, %918
  %927 = fsub fast float %269, %903
  %928 = fsub fast float %270, %904
  %929 = fsub fast float %271, %906
  %930 = fsub fast float %924, %927
  %931 = fsub fast float %925, %928
  %932 = fsub fast float %926, %929
  %933 = call float @dx.op.dot3.f32(i32 55, float %930, float %931, float %932, float %930, float %931, float %932)  ; Dot3(ax,ay,az,bx,by,bz)
  %934 = call float @dx.op.unary.f32(i32 25, float %933)  ; Rsqrt(value)
  %935 = fmul fast float %930, %934
  %936 = fmul fast float %931, %934
  %937 = fmul fast float %932, %934
  %938 = fsub fast float %448, %927
  %939 = fsub fast float %449, %928
  %940 = fsub fast float %450, %929
  %941 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %938, float %939, float %940)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %935, float %936, float %937)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = fdiv fast float 1.000000e+00, %942
  %944 = fmul fast float %943, %941
  %945 = fmul fast float %944, %935
  %946 = fmul fast float %944, %936
  %947 = fmul fast float %944, %937
  %948 = fadd fast float %945, %927
  %949 = fadd fast float %946, %928
  %950 = fadd fast float %947, %929
  %951 = fadd fast float %903, %269
  %952 = fadd fast float %904, %270
  %953 = fadd fast float %906, %271
  %954 = fsub fast float %924, %951
  %955 = fsub fast float %925, %952
  %956 = fsub fast float %926, %953
  %957 = call float @dx.op.dot3.f32(i32 55, float %954, float %955, float %956, float %954, float %955, float %956)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = call float @dx.op.unary.f32(i32 25, float %957)  ; Rsqrt(value)
  %959 = fmul fast float %958, %954
  %960 = fmul fast float %958, %955
  %961 = fmul fast float %958, %956
  %962 = fsub fast float %448, %951
  %963 = fsub fast float %449, %952
  %964 = fsub fast float %450, %953
  %965 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %962, float %963, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %959, float %960, float %961)  ; Dot3(ax,ay,az,bx,by,bz)
  %967 = fdiv fast float 1.000000e+00, %966
  %968 = fmul fast float %967, %965
  %969 = fmul fast float %968, %959
  %970 = fmul fast float %968, %960
  %971 = fmul fast float %968, %961
  %972 = fadd fast float %969, %951
  %973 = fadd fast float %970, %952
  %974 = fadd fast float %971, %953
  %975 = fmul fast float %948, %394
  %976 = call float @dx.op.tertiary.f32(i32 46, float %949, float %400, float %975)  ; FMad(a,b,c)
  %977 = call float @dx.op.tertiary.f32(i32 46, float %950, float %406, float %976)  ; FMad(a,b,c)
  %978 = fadd fast float %977, %412
  %979 = fmul fast float %948, %395
  %980 = call float @dx.op.tertiary.f32(i32 46, float %949, float %401, float %979)  ; FMad(a,b,c)
  %981 = call float @dx.op.tertiary.f32(i32 46, float %950, float %407, float %980)  ; FMad(a,b,c)
  %982 = fadd fast float %981, %413
  %983 = fmul fast float %948, %397
  %984 = call float @dx.op.tertiary.f32(i32 46, float %949, float %403, float %983)  ; FMad(a,b,c)
  %985 = call float @dx.op.tertiary.f32(i32 46, float %950, float %409, float %984)  ; FMad(a,b,c)
  %986 = fadd fast float %985, %415
  %987 = fmul fast float %972, %394
  %988 = call float @dx.op.tertiary.f32(i32 46, float %973, float %400, float %987)  ; FMad(a,b,c)
  %989 = call float @dx.op.tertiary.f32(i32 46, float %974, float %406, float %988)  ; FMad(a,b,c)
  %990 = fadd fast float %989, %412
  %991 = fmul fast float %972, %395
  %992 = call float @dx.op.tertiary.f32(i32 46, float %973, float %401, float %991)  ; FMad(a,b,c)
  %993 = call float @dx.op.tertiary.f32(i32 46, float %974, float %407, float %992)  ; FMad(a,b,c)
  %994 = fadd fast float %993, %413
  %995 = fmul fast float %972, %397
  %996 = call float @dx.op.tertiary.f32(i32 46, float %973, float %403, float %995)  ; FMad(a,b,c)
  %997 = call float @dx.op.tertiary.f32(i32 46, float %974, float %409, float %996)  ; FMad(a,b,c)
  %998 = fadd fast float %997, %415
  %999 = fdiv fast float 1.000000e+00, %986
  %1000 = fmul fast float %999, %978
  %1001 = fmul fast float %999, %982
  %1002 = fdiv fast float 1.000000e+00, %998
  %1003 = fmul fast float %1002, %990
  %1004 = fmul fast float %1002, %994
  %1005 = fsub fast float %1003, %1000
  %1006 = fsub fast float %1004, %1001
  %1007 = call float @dx.op.dot2.f32(i32 54, float %1005, float %1006, float %1005, float %1006)  ; Dot2(ax,ay,bx,by)
  %1008 = call float @dx.op.unary.f32(i32 25, float %1007)  ; Rsqrt(value)
  %1009 = fmul fast float %1005, %1008
  %1010 = fmul fast float %1006, %1008
  %1011 = fmul fast float %1005, %1005
  %1012 = fmul fast float %1006, %1006
  %1013 = fadd fast float %1011, %1012
  %1014 = call float @dx.op.unary.f32(i32 24, float %1013)  ; Sqrt(value)
  %1015 = fmul fast float %1014, 5.000000e-01
  br i1 %443, label %1108, label %1016, !dx.controlflow.hints !42

; <label>:1016                                    ; preds = %887
  %1017 = fsub fast float %269, %261
  %1018 = fsub fast float %270, %262
  %1019 = fsub fast float %271, %263
  %1020 = fsub fast float %924, %1017
  %1021 = fsub fast float %925, %1018
  %1022 = fsub fast float %926, %1019
  %1023 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1021, float %1022, float %1020, float %1021, float %1022)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = call float @dx.op.unary.f32(i32 25, float %1023)  ; Rsqrt(value)
  %1025 = fmul fast float %1024, %1020
  %1026 = fmul fast float %1024, %1021
  %1027 = fmul fast float %1024, %1022
  %1028 = fsub fast float %448, %1017
  %1029 = fsub fast float %449, %1018
  %1030 = fsub fast float %450, %1019
  %1031 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %1028, float %1029, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %1025, float %1026, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = fdiv fast float 1.000000e+00, %1032
  %1034 = fmul fast float %1033, %1031
  %1035 = fmul fast float %1034, %1025
  %1036 = fmul fast float %1034, %1026
  %1037 = fmul fast float %1034, %1027
  %1038 = fadd fast float %1035, %1017
  %1039 = fadd fast float %1036, %1018
  %1040 = fadd fast float %1037, %1019
  %1041 = fadd fast float %269, %261
  %1042 = fadd fast float %270, %262
  %1043 = fadd fast float %271, %263
  %1044 = fsub fast float %924, %1041
  %1045 = fsub fast float %925, %1042
  %1046 = fsub fast float %926, %1043
  %1047 = call float @dx.op.dot3.f32(i32 55, float %1044, float %1045, float %1046, float %1044, float %1045, float %1046)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = call float @dx.op.unary.f32(i32 25, float %1047)  ; Rsqrt(value)
  %1049 = fmul fast float %1048, %1044
  %1050 = fmul fast float %1048, %1045
  %1051 = fmul fast float %1048, %1046
  %1052 = fsub fast float %448, %1041
  %1053 = fsub fast float %449, %1042
  %1054 = fsub fast float %450, %1043
  %1055 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %1052, float %1053, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %1049, float %1050, float %1051)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = fdiv fast float 1.000000e+00, %1056
  %1058 = fmul fast float %1057, %1055
  %1059 = fmul fast float %1058, %1049
  %1060 = fmul fast float %1058, %1050
  %1061 = fmul fast float %1058, %1051
  %1062 = fadd fast float %1059, %1041
  %1063 = fadd fast float %1060, %1042
  %1064 = fadd fast float %1061, %1043
  %1065 = fmul fast float %1038, %394
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %400, float %1065)  ; FMad(a,b,c)
  %1067 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %406, float %1066)  ; FMad(a,b,c)
  %1068 = fadd fast float %1067, %412
  %1069 = fmul fast float %1038, %395
  %1070 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %401, float %1069)  ; FMad(a,b,c)
  %1071 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %407, float %1070)  ; FMad(a,b,c)
  %1072 = fadd fast float %1071, %413
  %1073 = fmul fast float %1038, %397
  %1074 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %403, float %1073)  ; FMad(a,b,c)
  %1075 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %409, float %1074)  ; FMad(a,b,c)
  %1076 = fadd fast float %1075, %415
  %1077 = fmul fast float %1062, %394
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1063, float %400, float %1077)  ; FMad(a,b,c)
  %1079 = call float @dx.op.tertiary.f32(i32 46, float %1064, float %406, float %1078)  ; FMad(a,b,c)
  %1080 = fadd fast float %1079, %412
  %1081 = fmul fast float %1062, %395
  %1082 = call float @dx.op.tertiary.f32(i32 46, float %1063, float %401, float %1081)  ; FMad(a,b,c)
  %1083 = call float @dx.op.tertiary.f32(i32 46, float %1064, float %407, float %1082)  ; FMad(a,b,c)
  %1084 = fadd fast float %1083, %413
  %1085 = fmul fast float %1062, %397
  %1086 = call float @dx.op.tertiary.f32(i32 46, float %1063, float %403, float %1085)  ; FMad(a,b,c)
  %1087 = call float @dx.op.tertiary.f32(i32 46, float %1064, float %409, float %1086)  ; FMad(a,b,c)
  %1088 = fadd fast float %1087, %415
  %1089 = fdiv fast float 1.000000e+00, %1076
  %1090 = fmul fast float %1089, %1068
  %1091 = fmul fast float %1089, %1072
  %1092 = fdiv fast float 1.000000e+00, %1088
  %1093 = fmul fast float %1092, %1080
  %1094 = fmul fast float %1092, %1084
  %1095 = fsub fast float %1093, %1090
  %1096 = fsub fast float %1094, %1091
  %1097 = call float @dx.op.dot2.f32(i32 54, float %1095, float %1096, float %1095, float %1096)  ; Dot2(ax,ay,bx,by)
  %1098 = call float @dx.op.unary.f32(i32 25, float %1097)  ; Rsqrt(value)
  %1099 = fmul fast float %1095, %1098
  %1100 = fmul fast float %1096, %1098
  %1101 = fmul fast float %1095, %1095
  %1102 = fmul fast float %1096, %1096
  %1103 = fadd fast float %1101, %1102
  %1104 = call float @dx.op.unary.f32(i32 24, float %1103)  ; Sqrt(value)
  %1105 = fmul fast float %1104, 5.000000e-01
  %1106 = fcmp fast olt float %1105, %1015
  br i1 %1106, label %1107, label %1108, !dx.controlflow.hints !43

; <label>:1107                                    ; preds = %1016
  br label %1108

; <label>:1108                                    ; preds = %1107, %1016, %887
  %1109 = phi float [ %1015, %887 ], [ %1105, %1107 ], [ %1015, %1016 ]
  %1110 = phi float [ %1015, %887 ], [ %1015, %1107 ], [ %1105, %1016 ]
  %1111 = phi float [ %1009, %887 ], [ %1009, %1107 ], [ %1099, %1016 ]
  %1112 = phi float [ %1010, %887 ], [ %1010, %1107 ], [ %1100, %1016 ]
  %1113 = fsub fast float %1110, %1109
  %1114 = fmul fast float %1111, %1111
  %1115 = fmul fast float %1114, %1113
  %1116 = fadd fast float %1115, %1109
  %1117 = fmul fast float %1111, %1113
  %1118 = fmul fast float %1117, %1112
  %1119 = fmul fast float %1112, %1112
  %1120 = fmul fast float %1119, %1113
  %1121 = fadd fast float %1120, %1109
  %1122 = fmul fast float %1116, %473
  %1123 = call float @dx.op.tertiary.f32(i32 46, float %472, float %1118, float %1122)  ; FMad(a,b,c)
  %1124 = fmul fast float %1118, %473
  %1125 = call float @dx.op.tertiary.f32(i32 46, float %472, float %1121, float %1124)  ; FMad(a,b,c)
  %1126 = fmul fast float %1116, %474
  %1127 = call float @dx.op.tertiary.f32(i32 46, float %473, float %1118, float %1126)  ; FMad(a,b,c)
  %1128 = fmul fast float %1118, %474
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %473, float %1121, float %1128)  ; FMad(a,b,c)
  br label %1130

; <label>:1130                                    ; preds = %1130, %1108
  %1131 = phi float [ 0.000000e+00, %1108 ], [ %1157, %1130 ]
  %1132 = phi i32 [ 0, %1108 ], [ %1158, %1130 ]
  %1133 = mul i32 %1132, 2
  %1134 = add i32 0, %1133
  %1135 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1134
  %1136 = load float, float* %1135, align 4
  %1137 = mul i32 %1132, 2
  %1138 = add i32 1, %1137
  %1139 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1138
  %1140 = load float, float* %1139, align 4
  %1141 = fmul fast float %1136, %1123
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1140, float %1127, float %1141)  ; FMad(a,b,c)
  %1143 = fmul fast float %1136, %1125
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1140, float %1129, float %1143)  ; FMad(a,b,c)
  %1145 = fadd fast float %1142, %467
  %1146 = fadd fast float %1144, %468
  %1147 = fmul fast float %1145, %384
  %1148 = fmul fast float %1146, %384
  %1149 = call float @dx.op.binary.f32(i32 35, float %1147, float %380)  ; FMax(a,b)
  %1150 = call float @dx.op.binary.f32(i32 35, float %1148, float %380)  ; FMax(a,b)
  %1151 = call float @dx.op.binary.f32(i32 36, float %1149, float %381)  ; FMin(a,b)
  %1152 = call float @dx.op.binary.f32(i32 36, float %1150, float %381)  ; FMin(a,b)
  %1153 = fadd fast float %1151, %378
  %1154 = fadd fast float %1152, %379
  %1155 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %16, float %1153, float %1154, float %853, float undef, i32 0, i32 0, i32 undef, float %856)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = fadd fast float %1156, %1131
  %1158 = add nuw nsw i32 %1132, 1
  %1159 = icmp eq i32 %1158, 8
  br i1 %1159, label %1160, label %1130

; <label>:1160                                    ; preds = %1130
  %1161 = fmul fast float %1157, 1.250000e-01
  br label %1162

; <label>:1162                                    ; preds = %1160, %870, %519
  %1163 = phi float [ %546, %519 ], [ %1161, %1160 ], [ 1.000000e+00, %870 ]
  %1164 = fadd fast float %1163, -1.000000e+00
  %1165 = fmul fast float %1164, %357
  %1166 = fadd fast float %1165, 1.000000e+00
  %1167 = fmul fast float %1166, %369
  br label %1168

; <label>:1168                                    ; preds = %1162, %336
  %1169 = phi float [ %1167, %1162 ], [ %369, %336 ]
  %1170 = lshr i32 %194, 5
  %1171 = lshr i32 %195, 5
  %1172 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %1170, i32 %1171, i32 %246, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = lshr i32 %194, 1
  %1175 = lshr i32 %195, 1
  %1176 = and i32 %1174, 15
  %1177 = and i32 %1175, 15
  %1178 = and i32 %194, 1
  %1179 = shl i32 %195, 1
  %1180 = and i32 %1179, 2
  %1181 = or i32 %1180, %1178
  %1182 = lshr i32 %1173, 2
  %1183 = and i32 %1182, 8176
  %1184 = lshr i32 %1173, 11
  %1185 = and i32 %1184, 4080
  %1186 = or i32 %1183, %1176
  %1187 = or i32 %1185, %1177
  %1188 = lshr i32 %1173, 21
  %1189 = and i32 %1188, 1020
  %1190 = or i32 %1181, %1189
  %1191 = fmul fast float %1169, 2.550000e+02
  %1192 = fadd fast float %1191, %189
  %1193 = call float @dx.op.unary.f32(i32 27, float %1192)  ; Round_ni(value)
  %1194 = fmul fast float %1193, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1186, i32 %1187, i32 %1190, float %1194, float %1194, float %1194, float %1194, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1195 = icmp eq i32 %244, %248
  br i1 %1195, label %1196, label %243, !llvm.loop !46

; <label>:1196                                    ; preds = %1168
  br label %1197

; <label>:1197                                    ; preds = %1196, %217
  %1198 = add i32 %218, 1
  %1199 = icmp ugt i32 %1198, %214
  br i1 %1199, label %1200, label %217

; <label>:1200                                    ; preds = %1197
  br label %1201

; <label>:1201                                    ; preds = %1200, %193, %55
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
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}

