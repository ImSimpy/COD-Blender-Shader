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
; shader hash: 9df5bfbed15d6e7f78fee20e3bec65e4
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
  %19 = alloca [4 x i32], align 4
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %23 = alloca [4 x i32], align 4
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = shl i32 %25, 2
  %29 = mul i32 %28, %27
  %30 = add i32 %29, %20
  %31 = shl i32 %30, 2
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = lshr i32 %33, 28
  %35 = and i32 %34, 3
  %36 = lshr i32 %33, 14
  %37 = and i32 %36, 16383
  %38 = and i32 %33, 16383
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %51, label %40, !dx.controlflow.hints !32

; <label>:40                                      ; preds = %0
  %41 = shl nuw nsw i32 %37, 3
  %42 = shl nuw nsw i32 %38, 3
  %43 = or i32 %41, %21
  %44 = or i32 %42, %22
  %45 = add nsw i32 %35, -1
  %46 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %43, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %67 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %61, i32 %62, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = fcmp fast olt float %68, -1.000000e+00
  %70 = fcmp fast ogt float %68, -1.000000e+00
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %73 = select i1 %70, float %72, float 1.000000e+00
  %74 = fadd fast float %68, 1.000000e+00
  %75 = fmul fast float %73, %74
  %76 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 3
  %80 = fmul fast float %78, %65
  %81 = fmul fast float %79, %66
  %82 = fmul fast float %80, 2.000000e+00
  %83 = fmul fast float %81, 2.000000e+00
  %84 = fsub fast float 1.000000e+00, %82
  %85 = fsub fast float 1.000000e+00, %83
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = select i1 %69, float %87, float %91
  %95 = select i1 %69, float %88, float %92
  %96 = select i1 %69, float %89, float %93
  %97 = fmul fast float %94, %84
  %98 = fmul fast float %95, %84
  %99 = fmul fast float %96, %84
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
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
  %150 = load i32, i32* %149, align 4, !tbaa !33
  %151 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 %150, i32 %139, i32 %140, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %182 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %180, float %181, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %205 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %202, float %204, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = fmul fast float %238, 0x3FE3C6EF40000000
  %240 = frem fast float %65, 2.560000e+02
  %241 = frem fast float %66, 2.560000e+02
  %242 = fptoui float %240 to i32
  %243 = fptoui float %241 to i32
  %244 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %242, i32 %243, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 2
  %247 = fadd fast float %245, %239
  %248 = fadd fast float %246, %239
  %249 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %250 = call float @dx.op.unary.f32(i32 22, float %248)  ; Frc(value)
  %251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.i32 %251, 0
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %1701, label %254, !dx.controlflow.hints !37

; <label>:254                                     ; preds = %56
  %255 = fptoui float %65 to i32
  %256 = fptoui float %66 to i32
  %257 = lshr i32 %255, 4
  %258 = lshr i32 %256, 4
  %259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.i32 %259, 0
  %261 = call i32 @dx.op.tertiary.i32(i32 49, i32 %258, i32 %260, i32 %257)  ; UMad(a,b,c)
  %262 = add nsw i32 %252, -1
  %263 = call i32 @dx.op.binary.i32(i32 37, i32 %262, i32 0)  ; IMax(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %265 = fptoui float %264 to i32
  %266 = lshr i32 %265, 5
  %267 = call i32 @dx.op.binary.i32(i32 40, i32 %266, i32 8191)  ; UMin(a,b)
  %268 = shl i32 %267, 2
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = lshr i32 %270, 16
  %272 = and i32 %270, 65535
  %273 = lshr i32 %270, 21
  %274 = lshr i32 %272, 5
  %275 = call i32 @dx.op.binary.i32(i32 40, i32 %274, i32 %263)  ; UMin(a,b)
  %276 = icmp ugt i32 %273, %275
  br i1 %276, label %1701, label %277

; <label>:277                                     ; preds = %254
  br label %278

; <label>:278                                     ; preds = %1697, %277
  %279 = phi i32 [ %1698, %1697 ], [ %273, %277 ]
  %280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.i32 %280, 0
  %282 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %281, i32 %279)  ; UMad(a,b,c)
  %283 = shl i32 %282, 2
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = shl i32 %279, 5
  %287 = sub nsw i32 %271, %286
  %288 = call i32 @dx.op.binary.i32(i32 37, i32 %287, i32 0)  ; IMax(a,b)
  %289 = call i32 @dx.op.binary.i32(i32 38, i32 %288, i32 31)  ; IMin(a,b)
  %290 = sub nsw i32 1, %271
  %291 = add nsw i32 %290, %272
  %292 = call i32 @dx.op.binary.i32(i32 37, i32 %291, i32 0)  ; IMax(a,b)
  %293 = call i32 @dx.op.binary.i32(i32 38, i32 %292, i32 32)  ; IMin(a,b)
  %294 = and i32 %293, 31
  %295 = shl i32 -1, %294
  %296 = xor i32 %295, -1
  %297 = and i32 %289, 31
  %298 = shl i32 %296, %297
  %299 = icmp eq i32 %293, 32
  %300 = select i1 %299, i32 -1, i32 %298
  %301 = and i32 %300, %285
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %1697, label %303

; <label>:303                                     ; preds = %278
  br label %304

; <label>:304                                     ; preds = %1648, %303
  %305 = phi i32 [ %310, %1648 ], [ %301, %303 ]
  %306 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %305)  ; FirstbitLo(value)
  %307 = add i32 %306, %286
  %308 = and i32 %306, 31
  %309 = shl i32 1, %308
  %310 = xor i32 %309, %305
  %311 = mul i32 %307, 112
  %312 = add i32 %311, 16
  %313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = extractvalue %dx.types.ResRet.f32 %313, 1
  %316 = extractvalue %dx.types.ResRet.f32 %313, 2
  %317 = add i32 %311, 28
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = add i32 %311, 32
  %321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = extractvalue %dx.types.ResRet.f32 %321, 1
  %324 = extractvalue %dx.types.ResRet.f32 %321, 2
  %325 = add i32 %311, 44
  %326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = add i32 %311, 48
  %329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = extractvalue %dx.types.ResRet.f32 %329, 1
  %332 = extractvalue %dx.types.ResRet.f32 %329, 2
  %333 = extractvalue %dx.types.ResRet.f32 %329, 3
  %334 = add i32 %311, 64
  %335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = extractvalue %dx.types.ResRet.f32 %335, 1
  %338 = extractvalue %dx.types.ResRet.f32 %335, 2
  %339 = extractvalue %dx.types.ResRet.f32 %335, 3
  %340 = add i32 %311, 92
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = uitofp i32 %343 to float
  %345 = lshr i32 %342, 16
  %346 = uitofp i32 %345 to float
  %347 = and i32 %319, 65535
  %348 = and i32 %319, 50331648
  %349 = icmp eq i32 %348, 33554432
  %350 = call float @dx.op.dot3.f32(i32 55, float %322, float %323, float %324, float %322, float %323, float %324)  ; Dot3(ax,ay,az,bx,by,bz)
  %351 = fsub fast float %131, %330
  %352 = fsub fast float %132, %331
  %353 = fsub fast float %133, %332
  %354 = call float @dx.op.dot3.f32(i32 55, float %351, float %352, float %353, float %322, float %323, float %324)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = fdiv fast float %354, %350
  %356 = call float @dx.op.binary.f32(i32 35, float %355, float -1.000000e+00)  ; FMax(a,b)
  %357 = call float @dx.op.binary.f32(i32 36, float %356, float 1.000000e+00)  ; FMin(a,b)
  %358 = fmul fast float %357, %322
  %359 = fmul fast float %357, %323
  %360 = fmul fast float %357, %324
  %361 = fadd fast float %358, %330
  %362 = fadd fast float %359, %331
  %363 = fadd fast float %360, %332
  %364 = fsub fast float %361, %131
  %365 = fsub fast float %362, %132
  %366 = fsub fast float %363, %133
  %367 = call float @dx.op.dot3.f32(i32 55, float %364, float %365, float %366, float %364, float %365, float %366)  ; Dot3(ax,ay,az,bx,by,bz)
  %368 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %369 = fdiv fast float 1.000000e+00, %368
  %370 = fmul fast float %364, %369
  %371 = fmul fast float %365, %369
  %372 = fmul fast float %366, %369
  br i1 %349, label %373, label %397, !dx.controlflow.hints !38

; <label>:373                                     ; preds = %304
  %374 = fmul fast float %338, %314
  %375 = fmul fast float %338, %315
  %376 = fmul fast float %338, %316
  %377 = fsub fast float %374, %131
  %378 = fadd fast float %377, %361
  %379 = fsub fast float %375, %132
  %380 = fadd fast float %379, %362
  %381 = fsub fast float %376, %133
  %382 = fadd fast float %381, %363
  %383 = call float @dx.op.dot3.f32(i32 55, float %378, float %380, float %382, float %378, float %380, float %382)  ; Dot3(ax,ay,az,bx,by,bz)
  %384 = call float @dx.op.unary.f32(i32 25, float %383)  ; Rsqrt(value)
  %385 = fmul fast float %384, %378
  %386 = fmul fast float %384, %380
  %387 = fmul fast float %384, %382
  %388 = fsub fast float %131, %361
  %389 = fsub fast float %132, %362
  %390 = fsub fast float %133, %363
  %391 = fsub fast float -0.000000e+00, %388
  %392 = fsub fast float -0.000000e+00, %389
  %393 = fsub fast float -0.000000e+00, %390
  %394 = call float @dx.op.dot3.f32(i32 55, float %391, float %392, float %393, float %314, float %315, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = fcmp fast ogt float %394, 0.000000e+00
  %396 = uitofp i1 %395 to float
  br label %397

; <label>:397                                     ; preds = %373, %304
  %398 = phi float [ %396, %373 ], [ 1.000000e+00, %304 ]
  %399 = phi float [ %385, %373 ], [ %370, %304 ]
  %400 = phi float [ %386, %373 ], [ %371, %304 ]
  %401 = phi float [ %387, %373 ], [ %372, %304 ]
  %402 = call float @dx.op.dot3.f32(i32 55, float %314, float %315, float %316, float %399, float %400, float %401)  ; Dot3(ax,ay,az,bx,by,bz)
  %403 = fmul fast float %402, %402
  %404 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  %405 = fsub fast float 1.000000e+00, %404
  %406 = fmul fast float %405, 5.000000e-01
  %407 = fcmp fast ogt float %402, 0.000000e+00
  %408 = fsub fast float 1.000000e+00, %406
  %409 = select i1 %407, float %406, float %408
  %410 = fmul fast float %409, %346
  %411 = fadd fast float %410, %344
  %412 = fmul fast float %411, 0x3EF0001000000000
  %413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %412, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = fmul fast float %402, %336
  %416 = fadd fast float %415, %337
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = select i1 %349, float 1.000000e+00, float %417
  %419 = select i1 %349, float %417, float 1.000000e+00
  %420 = fmul fast float %368, %333
  %421 = fsub fast float 1.000000e+00, %420
  %422 = fmul fast float %421, %339
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = fmul fast float %423, %419
  %425 = fmul fast float %424, 2.000000e+00
  %426 = fsub fast float 3.000000e+00, %425
  %427 = fmul fast float %414, %398
  %428 = fmul fast float %424, %424
  %429 = fmul fast float %428, %427
  %430 = fmul fast float %429, %426
  %431 = icmp ne i32 %347, 255
  %432 = call float @dx.op.binary.f32(i32 36, float %430, float %430)  ; FMin(a,b)
  %433 = call float @dx.op.binary.f32(i32 36, float %430, float %432)  ; FMin(a,b)
  %434 = fcmp fast ogt float %433, 0.000000e+00
  %435 = and i1 %431, %434
  br i1 %435, label %436, label %1359, !dx.controlflow.hints !39

; <label>:436                                     ; preds = %397
  %437 = mul nuw nsw i32 %347, 176
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = add nuw nsw i32 %437, 16
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = add nuw nsw i32 %437, 32
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = add nuw nsw i32 %437, 48
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  %459 = add nuw nsw i32 %437, 64
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add nuw nsw i32 %437, 80
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add nuw nsw i32 %437, 96
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = add nuw nsw i32 %437, 112
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = add nuw nsw i32 %437, 128
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = add nuw nsw i32 %437, 144
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = add nuw nsw i32 %437, 160
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = extractvalue %dx.types.ResRet.f32 %496, 3
  %501 = bitcast float %446 to i32
  %502 = bitcast float %452 to i32
  %503 = and i32 %502, 1
  %504 = icmp ne i32 %503, 0
  %505 = and i32 %502, 2
  %506 = fmul fast float %451, %177
  %507 = fmul fast float %451, %178
  %508 = fmul fast float %451, %179
  %509 = fadd fast float %506, %131
  %510 = fadd fast float %507, %132
  %511 = fadd fast float %508, %133
  %512 = fmul fast float %509, %455
  %513 = call float @dx.op.tertiary.f32(i32 46, float %510, float %461, float %512)  ; FMad(a,b,c)
  %514 = call float @dx.op.tertiary.f32(i32 46, float %511, float %467, float %513)  ; FMad(a,b,c)
  %515 = fadd fast float %514, %473
  %516 = fmul fast float %509, %456
  %517 = call float @dx.op.tertiary.f32(i32 46, float %510, float %462, float %516)  ; FMad(a,b,c)
  %518 = call float @dx.op.tertiary.f32(i32 46, float %511, float %468, float %517)  ; FMad(a,b,c)
  %519 = fadd fast float %518, %474
  %520 = fmul fast float %509, %457
  %521 = call float @dx.op.tertiary.f32(i32 46, float %510, float %463, float %520)  ; FMad(a,b,c)
  %522 = call float @dx.op.tertiary.f32(i32 46, float %511, float %469, float %521)  ; FMad(a,b,c)
  %523 = fadd fast float %522, %475
  %524 = fmul fast float %509, %458
  %525 = call float @dx.op.tertiary.f32(i32 46, float %510, float %464, float %524)  ; FMad(a,b,c)
  %526 = call float @dx.op.tertiary.f32(i32 46, float %511, float %470, float %525)  ; FMad(a,b,c)
  %527 = fadd fast float %526, %476
  %528 = fdiv fast float %515, %527
  %529 = fdiv fast float %519, %527
  %530 = fdiv fast float %523, %527
  %531 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %530)  ; FMax(a,b)
  %532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 138)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.i32 %532, 2
  %534 = and i32 %533, 128
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, float 1.000000e+00, float %327
  %537 = select i1 %535, float 0.000000e+00, float %322
  %538 = select i1 %535, float 0.000000e+00, float %323
  %539 = select i1 %535, float 0.000000e+00, float %324
  %540 = fmul fast float %249, 0x401921FB60000000
  %541 = call float @dx.op.unary.f32(i32 13, float %540)  ; Sin(value)
  %542 = call float @dx.op.unary.f32(i32 12, float %540)  ; Cos(value)
  %543 = fsub fast float -0.000000e+00, %541
  %544 = icmp eq i32 %505, 0
  br i1 %544, label %545, label %616, !dx.controlflow.hints !40

; <label>:545                                     ; preds = %436
  %546 = fmul fast float %542, %450
  %547 = call float @dx.op.tertiary.f32(i32 46, float %541, float %450, float 0.000000e+00)  ; FMad(a,b,c)
  %548 = fmul fast float %450, %543
  %549 = call float @dx.op.tertiary.f32(i32 46, float %542, float %450, float 0.000000e+00)  ; FMad(a,b,c)
  br label %550

; <label>:550                                     ; preds = %550, %545
  %551 = phi float [ 0.000000e+00, %545 ], [ %583, %550 ]
  %552 = phi float [ 0.000000e+00, %545 ], [ %585, %550 ]
  %553 = phi i32 [ 0, %545 ], [ %586, %550 ]
  %554 = mul i32 %553, 2
  %555 = add i32 0, %554
  %556 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %555
  %557 = load float, float* %556, align 4
  %558 = mul i32 %553, 2
  %559 = add i32 1, %558
  %560 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %559
  %561 = load float, float* %560, align 4
  %562 = fmul fast float %546, %557
  %563 = call float @dx.op.tertiary.f32(i32 46, float %561, float %548, float %562)  ; FMad(a,b,c)
  %564 = fmul fast float %557, %547
  %565 = call float @dx.op.tertiary.f32(i32 46, float %561, float %549, float %564)  ; FMad(a,b,c)
  %566 = fadd fast float %563, %528
  %567 = fadd fast float %565, %529
  %568 = fmul fast float %566, %445
  %569 = fmul fast float %567, %445
  %570 = call float @dx.op.binary.f32(i32 35, float %568, float %441)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float %569, float %441)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float %570, float %442)  ; FMin(a,b)
  %573 = call float @dx.op.binary.f32(i32 36, float %571, float %442)  ; FMin(a,b)
  %574 = fadd fast float %572, %439
  %575 = fadd fast float %573, %440
  %576 = uitofp i32 %501 to float
  %577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %15, float %574, float %575, float %576, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = fsub fast float %578, %531
  %580 = fsub fast float %579, %449
  %581 = fcmp fast ogt float %580, 0.000000e+00
  %582 = select i1 %581, float 1.000000e+00, float 0.000000e+00
  %583 = fadd fast float %582, %551
  %584 = select i1 %581, float %580, float 0.000000e+00
  %585 = fadd fast float %584, %552
  %586 = add nuw nsw i32 %553, 1
  %587 = icmp eq i32 %586, 8
  br i1 %587, label %588, label %550

; <label>:588                                     ; preds = %550
  %589 = fdiv fast float 1.000000e+00, %583
  %590 = fmul fast float %589, %585
  %591 = fdiv fast float 1.000000e+00, %531
  %592 = fmul fast float %590, %591
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = call float @dx.op.binary.f32(i32 35, float %593, float 0.000000e+00)  ; FMax(a,b)
  %595 = fmul fast float %583, 1.250000e-01
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = fmul fast float %596, 2.000000e+00
  %598 = fadd fast float %597, -1.000000e+00
  %599 = fcmp fast ogt float %598, 0.000000e+00
  %600 = fcmp fast olt float %598, 0.000000e+00
  %601 = zext i1 %599 to i32
  %602 = zext i1 %600 to i32
  %603 = sub nsw i32 %601, %602
  %604 = sitofp i32 %603 to float
  %605 = fmul fast float %604, %598
  %606 = fsub fast float 1.000000e+00, %605
  %607 = fmul fast float %606, %606
  %608 = fmul fast float %607, %606
  %609 = fsub fast float %606, %608
  %610 = fmul fast float %609, %594
  %611 = fsub fast float 1.000000e+00, %608
  %612 = fsub fast float %611, %610
  %613 = fmul fast float %604, 5.000000e-01
  %614 = fmul fast float %613, %612
  %615 = fsub fast float 5.000000e-01, %614
  br label %1232

; <label>:616                                     ; preds = %436
  %617 = fsub fast float 1.000000e+00, %531
  %618 = fmul fast float %617, 5.000000e-01
  %619 = fadd fast float %618, %531
  %620 = call float @dx.op.dot3.f32(i32 55, float %537, float %538, float %539, float %537, float %538, float %539)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = fsub fast float %509, %330
  %622 = fsub fast float %510, %331
  %623 = fsub fast float %511, %332
  %624 = call float @dx.op.dot3.f32(i32 55, float %621, float %622, float %623, float %537, float %538, float %539)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = fdiv fast float %624, %620
  %626 = call float @dx.op.binary.f32(i32 35, float %625, float -1.000000e+00)  ; FMax(a,b)
  %627 = call float @dx.op.binary.f32(i32 36, float %626, float 1.000000e+00)  ; FMin(a,b)
  %628 = fmul fast float %627, %537
  %629 = fmul fast float %627, %538
  %630 = fmul fast float %627, %539
  %631 = fsub fast float %621, %628
  %632 = fsub fast float %622, %629
  %633 = fsub fast float %623, %630
  %634 = call float @dx.op.dot3.f32(i32 55, float %631, float %632, float %633, float %631, float %632, float %633)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.unary.f32(i32 25, float %634)  ; Rsqrt(value)
  %636 = fmul fast float %631, %635
  %637 = fmul fast float %632, %635
  %638 = fmul fast float %633, %635
  %639 = call float @dx.op.unary.f32(i32 25, float %620)  ; Rsqrt(value)
  %640 = fmul fast float %639, %537
  %641 = fmul fast float %639, %538
  %642 = fmul fast float %639, %539
  br i1 %504, label %643, label %647, !dx.controlflow.hints !41

; <label>:643                                     ; preds = %616
  %644 = fcmp fast olt float %637, 0x3FE6666660000000
  %645 = select i1 %644, float 1.000000e+00, float 0.000000e+00
  %646 = select i1 %644, float 0.000000e+00, float 1.000000e+00
  br label %647

; <label>:647                                     ; preds = %643, %616
  %648 = phi float [ 0.000000e+00, %643 ], [ %640, %616 ]
  %649 = phi float [ %645, %643 ], [ %641, %616 ]
  %650 = phi float [ %646, %643 ], [ %642, %616 ]
  %651 = fmul fast float %649, %638
  %652 = fmul fast float %650, %637
  %653 = fsub fast float %651, %652
  %654 = fmul fast float %650, %636
  %655 = fmul fast float %648, %638
  %656 = fsub fast float %654, %655
  %657 = fmul fast float %648, %637
  %658 = fmul fast float %649, %636
  %659 = fsub fast float %657, %658
  %660 = call float @dx.op.dot3.f32(i32 55, float %653, float %656, float %659, float %653, float %656, float %659)  ; Dot3(ax,ay,az,bx,by,bz)
  %661 = call float @dx.op.unary.f32(i32 25, float %660)  ; Rsqrt(value)
  %662 = fmul fast float %661, %536
  %663 = fmul fast float %662, %653
  %664 = fmul fast float %662, %656
  %665 = fmul fast float %659, %536
  %666 = fmul fast float %665, %661
  %667 = fmul fast float %528, %479
  %668 = call float @dx.op.tertiary.f32(i32 46, float %529, float %485, float %667)  ; FMad(a,b,c)
  %669 = call float @dx.op.tertiary.f32(i32 46, float %619, float %491, float %668)  ; FMad(a,b,c)
  %670 = fadd fast float %669, %497
  %671 = fmul fast float %528, %480
  %672 = call float @dx.op.tertiary.f32(i32 46, float %529, float %486, float %671)  ; FMad(a,b,c)
  %673 = call float @dx.op.tertiary.f32(i32 46, float %619, float %492, float %672)  ; FMad(a,b,c)
  %674 = fadd fast float %673, %498
  %675 = fmul fast float %528, %481
  %676 = call float @dx.op.tertiary.f32(i32 46, float %529, float %487, float %675)  ; FMad(a,b,c)
  %677 = call float @dx.op.tertiary.f32(i32 46, float %619, float %493, float %676)  ; FMad(a,b,c)
  %678 = fadd fast float %677, %499
  %679 = fmul fast float %528, %482
  %680 = call float @dx.op.tertiary.f32(i32 46, float %529, float %488, float %679)  ; FMad(a,b,c)
  %681 = call float @dx.op.tertiary.f32(i32 46, float %619, float %494, float %680)  ; FMad(a,b,c)
  %682 = fadd fast float %681, %500
  %683 = fdiv fast float 1.000000e+00, %682
  %684 = fmul fast float %683, %670
  %685 = fmul fast float %683, %674
  %686 = fmul fast float %683, %678
  %687 = fsub fast float -0.000000e+00, %636
  %688 = fsub fast float -0.000000e+00, %637
  %689 = fsub fast float -0.000000e+00, %638
  %690 = fsub fast float %330, %663
  %691 = fsub fast float %331, %664
  %692 = fsub fast float %332, %666
  %693 = fsub fast float %684, %690
  %694 = fsub fast float %685, %691
  %695 = fsub fast float %686, %692
  %696 = call float @dx.op.dot3.f32(i32 55, float %693, float %694, float %695, float %693, float %694, float %695)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call float @dx.op.unary.f32(i32 25, float %696)  ; Rsqrt(value)
  %698 = fmul fast float %693, %697
  %699 = fmul fast float %694, %697
  %700 = fmul fast float %695, %697
  %701 = fsub fast float %509, %690
  %702 = fsub fast float %510, %691
  %703 = fsub fast float %511, %692
  %704 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %701, float %702, float %703)  ; Dot3(ax,ay,az,bx,by,bz)
  %705 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %698, float %699, float %700)  ; Dot3(ax,ay,az,bx,by,bz)
  %706 = fdiv fast float 1.000000e+00, %705
  %707 = fmul fast float %706, %704
  %708 = fmul fast float %707, %698
  %709 = fmul fast float %707, %699
  %710 = fmul fast float %707, %700
  %711 = fadd fast float %708, %690
  %712 = fadd fast float %709, %691
  %713 = fadd fast float %710, %692
  %714 = fadd fast float %663, %330
  %715 = fadd fast float %664, %331
  %716 = fadd fast float %666, %332
  %717 = fsub fast float %684, %714
  %718 = fsub fast float %685, %715
  %719 = fsub fast float %686, %716
  %720 = call float @dx.op.dot3.f32(i32 55, float %717, float %718, float %719, float %717, float %718, float %719)  ; Dot3(ax,ay,az,bx,by,bz)
  %721 = call float @dx.op.unary.f32(i32 25, float %720)  ; Rsqrt(value)
  %722 = fmul fast float %721, %717
  %723 = fmul fast float %721, %718
  %724 = fmul fast float %721, %719
  %725 = fsub fast float %509, %714
  %726 = fsub fast float %510, %715
  %727 = fsub fast float %511, %716
  %728 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %725, float %726, float %727)  ; Dot3(ax,ay,az,bx,by,bz)
  %729 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %722, float %723, float %724)  ; Dot3(ax,ay,az,bx,by,bz)
  %730 = fdiv fast float 1.000000e+00, %729
  %731 = fmul fast float %730, %728
  %732 = fmul fast float %731, %722
  %733 = fmul fast float %731, %723
  %734 = fmul fast float %731, %724
  %735 = fadd fast float %732, %714
  %736 = fadd fast float %733, %715
  %737 = fadd fast float %734, %716
  %738 = fmul fast float %711, %455
  %739 = call float @dx.op.tertiary.f32(i32 46, float %712, float %461, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %713, float %467, float %739)  ; FMad(a,b,c)
  %741 = fadd fast float %740, %473
  %742 = fmul fast float %711, %456
  %743 = call float @dx.op.tertiary.f32(i32 46, float %712, float %462, float %742)  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float %713, float %468, float %743)  ; FMad(a,b,c)
  %745 = fadd fast float %744, %474
  %746 = fmul fast float %711, %458
  %747 = call float @dx.op.tertiary.f32(i32 46, float %712, float %464, float %746)  ; FMad(a,b,c)
  %748 = call float @dx.op.tertiary.f32(i32 46, float %713, float %470, float %747)  ; FMad(a,b,c)
  %749 = fadd fast float %748, %476
  %750 = fmul fast float %735, %455
  %751 = call float @dx.op.tertiary.f32(i32 46, float %736, float %461, float %750)  ; FMad(a,b,c)
  %752 = call float @dx.op.tertiary.f32(i32 46, float %737, float %467, float %751)  ; FMad(a,b,c)
  %753 = fadd fast float %752, %473
  %754 = fmul fast float %735, %456
  %755 = call float @dx.op.tertiary.f32(i32 46, float %736, float %462, float %754)  ; FMad(a,b,c)
  %756 = call float @dx.op.tertiary.f32(i32 46, float %737, float %468, float %755)  ; FMad(a,b,c)
  %757 = fadd fast float %756, %474
  %758 = fmul fast float %735, %458
  %759 = call float @dx.op.tertiary.f32(i32 46, float %736, float %464, float %758)  ; FMad(a,b,c)
  %760 = call float @dx.op.tertiary.f32(i32 46, float %737, float %470, float %759)  ; FMad(a,b,c)
  %761 = fadd fast float %760, %476
  %762 = fdiv fast float 1.000000e+00, %749
  %763 = fmul fast float %762, %741
  %764 = fmul fast float %762, %745
  %765 = fdiv fast float 1.000000e+00, %761
  %766 = fmul fast float %765, %753
  %767 = fmul fast float %765, %757
  %768 = fsub fast float %766, %763
  %769 = fsub fast float %767, %764
  %770 = call float @dx.op.dot2.f32(i32 54, float %768, float %769, float %768, float %769)  ; Dot2(ax,ay,bx,by)
  %771 = call float @dx.op.unary.f32(i32 25, float %770)  ; Rsqrt(value)
  %772 = fmul fast float %768, %771
  %773 = fmul fast float %769, %771
  %774 = fmul fast float %768, %768
  %775 = fmul fast float %769, %769
  %776 = fadd fast float %774, %775
  %777 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %778 = fmul fast float %777, 5.000000e-01
  br i1 %504, label %871, label %779, !dx.controlflow.hints !42

; <label>:779                                     ; preds = %647
  %780 = fsub fast float %330, %537
  %781 = fsub fast float %331, %538
  %782 = fsub fast float %332, %539
  %783 = fsub fast float %684, %780
  %784 = fsub fast float %685, %781
  %785 = fsub fast float %686, %782
  %786 = call float @dx.op.dot3.f32(i32 55, float %783, float %784, float %785, float %783, float %784, float %785)  ; Dot3(ax,ay,az,bx,by,bz)
  %787 = call float @dx.op.unary.f32(i32 25, float %786)  ; Rsqrt(value)
  %788 = fmul fast float %787, %783
  %789 = fmul fast float %787, %784
  %790 = fmul fast float %787, %785
  %791 = fsub fast float %509, %780
  %792 = fsub fast float %510, %781
  %793 = fsub fast float %511, %782
  %794 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %788, float %789, float %790)  ; Dot3(ax,ay,az,bx,by,bz)
  %796 = fdiv fast float 1.000000e+00, %795
  %797 = fmul fast float %796, %794
  %798 = fmul fast float %797, %788
  %799 = fmul fast float %797, %789
  %800 = fmul fast float %797, %790
  %801 = fadd fast float %798, %780
  %802 = fadd fast float %799, %781
  %803 = fadd fast float %800, %782
  %804 = fadd fast float %537, %330
  %805 = fadd fast float %538, %331
  %806 = fadd fast float %539, %332
  %807 = fsub fast float %684, %804
  %808 = fsub fast float %685, %805
  %809 = fsub fast float %686, %806
  %810 = call float @dx.op.dot3.f32(i32 55, float %807, float %808, float %809, float %807, float %808, float %809)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = call float @dx.op.unary.f32(i32 25, float %810)  ; Rsqrt(value)
  %812 = fmul fast float %811, %807
  %813 = fmul fast float %811, %808
  %814 = fmul fast float %811, %809
  %815 = fsub fast float %509, %804
  %816 = fsub fast float %510, %805
  %817 = fsub fast float %511, %806
  %818 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %815, float %816, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %812, float %813, float %814)  ; Dot3(ax,ay,az,bx,by,bz)
  %820 = fdiv fast float 1.000000e+00, %819
  %821 = fmul fast float %820, %818
  %822 = fmul fast float %821, %812
  %823 = fmul fast float %821, %813
  %824 = fmul fast float %821, %814
  %825 = fadd fast float %822, %804
  %826 = fadd fast float %823, %805
  %827 = fadd fast float %824, %806
  %828 = fmul fast float %801, %455
  %829 = call float @dx.op.tertiary.f32(i32 46, float %802, float %461, float %828)  ; FMad(a,b,c)
  %830 = call float @dx.op.tertiary.f32(i32 46, float %803, float %467, float %829)  ; FMad(a,b,c)
  %831 = fadd fast float %830, %473
  %832 = fmul fast float %801, %456
  %833 = call float @dx.op.tertiary.f32(i32 46, float %802, float %462, float %832)  ; FMad(a,b,c)
  %834 = call float @dx.op.tertiary.f32(i32 46, float %803, float %468, float %833)  ; FMad(a,b,c)
  %835 = fadd fast float %834, %474
  %836 = fmul fast float %801, %458
  %837 = call float @dx.op.tertiary.f32(i32 46, float %802, float %464, float %836)  ; FMad(a,b,c)
  %838 = call float @dx.op.tertiary.f32(i32 46, float %803, float %470, float %837)  ; FMad(a,b,c)
  %839 = fadd fast float %838, %476
  %840 = fmul fast float %825, %455
  %841 = call float @dx.op.tertiary.f32(i32 46, float %826, float %461, float %840)  ; FMad(a,b,c)
  %842 = call float @dx.op.tertiary.f32(i32 46, float %827, float %467, float %841)  ; FMad(a,b,c)
  %843 = fadd fast float %842, %473
  %844 = fmul fast float %825, %456
  %845 = call float @dx.op.tertiary.f32(i32 46, float %826, float %462, float %844)  ; FMad(a,b,c)
  %846 = call float @dx.op.tertiary.f32(i32 46, float %827, float %468, float %845)  ; FMad(a,b,c)
  %847 = fadd fast float %846, %474
  %848 = fmul fast float %825, %458
  %849 = call float @dx.op.tertiary.f32(i32 46, float %826, float %464, float %848)  ; FMad(a,b,c)
  %850 = call float @dx.op.tertiary.f32(i32 46, float %827, float %470, float %849)  ; FMad(a,b,c)
  %851 = fadd fast float %850, %476
  %852 = fdiv fast float 1.000000e+00, %839
  %853 = fmul fast float %852, %831
  %854 = fmul fast float %852, %835
  %855 = fdiv fast float 1.000000e+00, %851
  %856 = fmul fast float %855, %843
  %857 = fmul fast float %855, %847
  %858 = fsub fast float %856, %853
  %859 = fsub fast float %857, %854
  %860 = call float @dx.op.dot2.f32(i32 54, float %858, float %859, float %858, float %859)  ; Dot2(ax,ay,bx,by)
  %861 = call float @dx.op.unary.f32(i32 25, float %860)  ; Rsqrt(value)
  %862 = fmul fast float %858, %861
  %863 = fmul fast float %859, %861
  %864 = fmul fast float %858, %858
  %865 = fmul fast float %859, %859
  %866 = fadd fast float %864, %865
  %867 = call float @dx.op.unary.f32(i32 24, float %866)  ; Sqrt(value)
  %868 = fmul fast float %867, 5.000000e-01
  %869 = fcmp fast olt float %868, %778
  br i1 %869, label %870, label %871, !dx.controlflow.hints !43

; <label>:870                                     ; preds = %779
  br label %871

; <label>:871                                     ; preds = %870, %779, %647
  %872 = phi float [ %778, %647 ], [ %868, %870 ], [ %778, %779 ]
  %873 = phi float [ %778, %647 ], [ %778, %870 ], [ %868, %779 ]
  %874 = phi float [ %772, %647 ], [ %772, %870 ], [ %862, %779 ]
  %875 = phi float [ %773, %647 ], [ %773, %870 ], [ %863, %779 ]
  %876 = fmul fast float %872, %450
  %877 = fdiv fast float %876, %873
  %878 = fsub fast float %450, %877
  %879 = fmul fast float %874, %874
  %880 = fmul fast float %879, %878
  %881 = fadd fast float %880, %877
  %882 = fmul fast float %875, %874
  %883 = fmul fast float %882, %878
  %884 = fmul fast float %875, %875
  %885 = fmul fast float %884, %878
  %886 = fadd fast float %885, %877
  %887 = fmul fast float %881, %542
  %888 = call float @dx.op.tertiary.f32(i32 46, float %541, float %883, float %887)  ; FMad(a,b,c)
  %889 = fmul fast float %883, %542
  %890 = call float @dx.op.tertiary.f32(i32 46, float %541, float %886, float %889)  ; FMad(a,b,c)
  %891 = fmul fast float %881, %543
  %892 = call float @dx.op.tertiary.f32(i32 46, float %542, float %883, float %891)  ; FMad(a,b,c)
  %893 = fmul fast float %883, %543
  %894 = call float @dx.op.tertiary.f32(i32 46, float %542, float %886, float %893)  ; FMad(a,b,c)
  br label %895

; <label>:895                                     ; preds = %933, %871
  %896 = phi float [ 0.000000e+00, %871 ], [ %934, %933 ]
  %897 = phi float [ 0.000000e+00, %871 ], [ %935, %933 ]
  %898 = phi float [ 0.000000e+00, %871 ], [ %936, %933 ]
  %899 = phi float [ 0.000000e+00, %871 ], [ %937, %933 ]
  %900 = phi i32 [ 0, %871 ], [ %938, %933 ]
  %901 = mul i32 %900, 2
  %902 = add i32 0, %901
  %903 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %902
  %904 = load float, float* %903, align 4
  %905 = mul i32 %900, 2
  %906 = add i32 1, %905
  %907 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %906
  %908 = load float, float* %907, align 4
  %909 = fmul fast float %904, %888
  %910 = call float @dx.op.tertiary.f32(i32 46, float %908, float %892, float %909)  ; FMad(a,b,c)
  %911 = fmul fast float %904, %890
  %912 = call float @dx.op.tertiary.f32(i32 46, float %908, float %894, float %911)  ; FMad(a,b,c)
  %913 = fadd fast float %910, %528
  %914 = fadd fast float %912, %529
  %915 = fmul fast float %913, %445
  %916 = fmul fast float %914, %445
  %917 = call float @dx.op.binary.f32(i32 35, float %915, float %441)  ; FMax(a,b)
  %918 = call float @dx.op.binary.f32(i32 35, float %916, float %441)  ; FMax(a,b)
  %919 = call float @dx.op.binary.f32(i32 36, float %917, float %442)  ; FMin(a,b)
  %920 = call float @dx.op.binary.f32(i32 36, float %918, float %442)  ; FMin(a,b)
  %921 = fadd fast float %919, %439
  %922 = fadd fast float %920, %440
  %923 = uitofp i32 %501 to float
  %924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %15, float %921, float %922, float %923, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = fadd fast float %531, %449
  %927 = fcmp fast olt float %926, %925
  br i1 %927, label %928, label %933, !dx.controlflow.hints !44

; <label>:928                                     ; preds = %895
  %929 = fadd fast float %925, %898
  %930 = fadd fast float %910, %896
  %931 = fadd fast float %912, %897
  %932 = fadd fast float %899, 1.000000e+00
  br label %933

; <label>:933                                     ; preds = %928, %895
  %934 = phi float [ %930, %928 ], [ %896, %895 ]
  %935 = phi float [ %931, %928 ], [ %897, %895 ]
  %936 = phi float [ %929, %928 ], [ %898, %895 ]
  %937 = phi float [ %932, %928 ], [ %899, %895 ]
  %938 = add nuw nsw i32 %900, 1
  %939 = icmp eq i32 %938, 8
  br i1 %939, label %940, label %895

; <label>:940                                     ; preds = %933
  %941 = fdiv fast float 1.000000e+00, %937
  %942 = fcmp fast oeq float %937, 0.000000e+00
  %943 = fmul fast float %941, %936
  %944 = select i1 %942, float -1.000000e+00, float %943
  %945 = fcmp fast olt float %944, 0.000000e+00
  br i1 %945, label %1232, label %946, !dx.controlflow.hints !45

; <label>:946                                     ; preds = %940
  %947 = fmul fast float %941, %935
  %948 = select i1 %942, float 0.000000e+00, float %947
  %949 = fmul fast float %941, %934
  %950 = select i1 %942, float 0.000000e+00, float %949
  %951 = fadd fast float %950, %528
  %952 = fadd fast float %948, %529
  br i1 %504, label %953, label %957, !dx.controlflow.hints !41

; <label>:953                                     ; preds = %946
  %954 = fcmp fast olt float %637, 0x3FE6666660000000
  %955 = select i1 %954, float 1.000000e+00, float 0.000000e+00
  %956 = select i1 %954, float 0.000000e+00, float 1.000000e+00
  br label %957

; <label>:957                                     ; preds = %953, %946
  %958 = phi float [ 0.000000e+00, %953 ], [ %640, %946 ]
  %959 = phi float [ %955, %953 ], [ %641, %946 ]
  %960 = phi float [ %956, %953 ], [ %642, %946 ]
  %961 = fmul fast float %959, %638
  %962 = fmul fast float %960, %637
  %963 = fsub fast float %961, %962
  %964 = fmul fast float %960, %636
  %965 = fmul fast float %958, %638
  %966 = fsub fast float %964, %965
  %967 = fmul fast float %958, %637
  %968 = fmul fast float %959, %636
  %969 = fsub fast float %967, %968
  %970 = call float @dx.op.dot3.f32(i32 55, float %963, float %966, float %969, float %963, float %966, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = call float @dx.op.unary.f32(i32 25, float %970)  ; Rsqrt(value)
  %972 = fmul fast float %971, %536
  %973 = fmul fast float %972, %963
  %974 = fmul fast float %972, %966
  %975 = fmul fast float %969, %536
  %976 = fmul fast float %975, %971
  %977 = fmul fast float %951, %479
  %978 = call float @dx.op.tertiary.f32(i32 46, float %952, float %485, float %977)  ; FMad(a,b,c)
  %979 = call float @dx.op.tertiary.f32(i32 46, float %944, float %491, float %978)  ; FMad(a,b,c)
  %980 = fadd fast float %979, %497
  %981 = fmul fast float %951, %480
  %982 = call float @dx.op.tertiary.f32(i32 46, float %952, float %486, float %981)  ; FMad(a,b,c)
  %983 = call float @dx.op.tertiary.f32(i32 46, float %944, float %492, float %982)  ; FMad(a,b,c)
  %984 = fadd fast float %983, %498
  %985 = fmul fast float %951, %481
  %986 = call float @dx.op.tertiary.f32(i32 46, float %952, float %487, float %985)  ; FMad(a,b,c)
  %987 = call float @dx.op.tertiary.f32(i32 46, float %944, float %493, float %986)  ; FMad(a,b,c)
  %988 = fadd fast float %987, %499
  %989 = fmul fast float %951, %482
  %990 = call float @dx.op.tertiary.f32(i32 46, float %952, float %488, float %989)  ; FMad(a,b,c)
  %991 = call float @dx.op.tertiary.f32(i32 46, float %944, float %494, float %990)  ; FMad(a,b,c)
  %992 = fadd fast float %991, %500
  %993 = fdiv fast float 1.000000e+00, %992
  %994 = fmul fast float %993, %980
  %995 = fmul fast float %993, %984
  %996 = fmul fast float %993, %988
  %997 = fsub fast float %330, %973
  %998 = fsub fast float %331, %974
  %999 = fsub fast float %332, %976
  %1000 = fsub fast float %994, %997
  %1001 = fsub fast float %995, %998
  %1002 = fsub fast float %996, %999
  %1003 = call float @dx.op.dot3.f32(i32 55, float %1000, float %1001, float %1002, float %1000, float %1001, float %1002)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = call float @dx.op.unary.f32(i32 25, float %1003)  ; Rsqrt(value)
  %1005 = fmul fast float %1000, %1004
  %1006 = fmul fast float %1001, %1004
  %1007 = fmul fast float %1002, %1004
  %1008 = fsub fast float %509, %997
  %1009 = fsub fast float %510, %998
  %1010 = fsub fast float %511, %999
  %1011 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %1008, float %1009, float %1010)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %1005, float %1006, float %1007)  ; Dot3(ax,ay,az,bx,by,bz)
  %1013 = fdiv fast float 1.000000e+00, %1012
  %1014 = fmul fast float %1013, %1011
  %1015 = fmul fast float %1014, %1005
  %1016 = fmul fast float %1014, %1006
  %1017 = fmul fast float %1014, %1007
  %1018 = fadd fast float %1015, %997
  %1019 = fadd fast float %1016, %998
  %1020 = fadd fast float %1017, %999
  %1021 = fadd fast float %973, %330
  %1022 = fadd fast float %974, %331
  %1023 = fadd fast float %976, %332
  %1024 = fsub fast float %994, %1021
  %1025 = fsub fast float %995, %1022
  %1026 = fsub fast float %996, %1023
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1024, float %1025, float %1026, float %1024, float %1025, float %1026)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = call float @dx.op.unary.f32(i32 25, float %1027)  ; Rsqrt(value)
  %1029 = fmul fast float %1028, %1024
  %1030 = fmul fast float %1028, %1025
  %1031 = fmul fast float %1028, %1026
  %1032 = fsub fast float %509, %1021
  %1033 = fsub fast float %510, %1022
  %1034 = fsub fast float %511, %1023
  %1035 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %1032, float %1033, float %1034)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %1029, float %1030, float %1031)  ; Dot3(ax,ay,az,bx,by,bz)
  %1037 = fdiv fast float 1.000000e+00, %1036
  %1038 = fmul fast float %1037, %1035
  %1039 = fmul fast float %1038, %1029
  %1040 = fmul fast float %1038, %1030
  %1041 = fmul fast float %1038, %1031
  %1042 = fadd fast float %1039, %1021
  %1043 = fadd fast float %1040, %1022
  %1044 = fadd fast float %1041, %1023
  %1045 = fmul fast float %1018, %455
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %461, float %1045)  ; FMad(a,b,c)
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %1020, float %467, float %1046)  ; FMad(a,b,c)
  %1048 = fadd fast float %1047, %473
  %1049 = fmul fast float %1018, %456
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %462, float %1049)  ; FMad(a,b,c)
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1020, float %468, float %1050)  ; FMad(a,b,c)
  %1052 = fadd fast float %1051, %474
  %1053 = fmul fast float %1018, %458
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %464, float %1053)  ; FMad(a,b,c)
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %1020, float %470, float %1054)  ; FMad(a,b,c)
  %1056 = fadd fast float %1055, %476
  %1057 = fmul fast float %1042, %455
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %461, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %467, float %1058)  ; FMad(a,b,c)
  %1060 = fadd fast float %1059, %473
  %1061 = fmul fast float %1042, %456
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %462, float %1061)  ; FMad(a,b,c)
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %468, float %1062)  ; FMad(a,b,c)
  %1064 = fadd fast float %1063, %474
  %1065 = fmul fast float %1042, %458
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %464, float %1065)  ; FMad(a,b,c)
  %1067 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %470, float %1066)  ; FMad(a,b,c)
  %1068 = fadd fast float %1067, %476
  %1069 = fdiv fast float 1.000000e+00, %1056
  %1070 = fmul fast float %1069, %1048
  %1071 = fmul fast float %1069, %1052
  %1072 = fdiv fast float 1.000000e+00, %1068
  %1073 = fmul fast float %1072, %1060
  %1074 = fmul fast float %1072, %1064
  %1075 = fsub fast float %1073, %1070
  %1076 = fsub fast float %1074, %1071
  %1077 = call float @dx.op.dot2.f32(i32 54, float %1075, float %1076, float %1075, float %1076)  ; Dot2(ax,ay,bx,by)
  %1078 = call float @dx.op.unary.f32(i32 25, float %1077)  ; Rsqrt(value)
  %1079 = fmul fast float %1075, %1078
  %1080 = fmul fast float %1076, %1078
  %1081 = fmul fast float %1075, %1075
  %1082 = fmul fast float %1076, %1076
  %1083 = fadd fast float %1081, %1082
  %1084 = call float @dx.op.unary.f32(i32 24, float %1083)  ; Sqrt(value)
  %1085 = fmul fast float %1084, 5.000000e-01
  br i1 %504, label %1178, label %1086, !dx.controlflow.hints !42

; <label>:1086                                    ; preds = %957
  %1087 = fsub fast float %330, %537
  %1088 = fsub fast float %331, %538
  %1089 = fsub fast float %332, %539
  %1090 = fsub fast float %994, %1087
  %1091 = fsub fast float %995, %1088
  %1092 = fsub fast float %996, %1089
  %1093 = call float @dx.op.dot3.f32(i32 55, float %1090, float %1091, float %1092, float %1090, float %1091, float %1092)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = call float @dx.op.unary.f32(i32 25, float %1093)  ; Rsqrt(value)
  %1095 = fmul fast float %1094, %1090
  %1096 = fmul fast float %1094, %1091
  %1097 = fmul fast float %1094, %1092
  %1098 = fsub fast float %509, %1087
  %1099 = fsub fast float %510, %1088
  %1100 = fsub fast float %511, %1089
  %1101 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %1098, float %1099, float %1100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %1095, float %1096, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1103 = fdiv fast float 1.000000e+00, %1102
  %1104 = fmul fast float %1103, %1101
  %1105 = fmul fast float %1104, %1095
  %1106 = fmul fast float %1104, %1096
  %1107 = fmul fast float %1104, %1097
  %1108 = fadd fast float %1105, %1087
  %1109 = fadd fast float %1106, %1088
  %1110 = fadd fast float %1107, %1089
  %1111 = fadd fast float %537, %330
  %1112 = fadd fast float %538, %331
  %1113 = fadd fast float %539, %332
  %1114 = fsub fast float %994, %1111
  %1115 = fsub fast float %995, %1112
  %1116 = fsub fast float %996, %1113
  %1117 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float %1114, float %1115, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1118 = call float @dx.op.unary.f32(i32 25, float %1117)  ; Rsqrt(value)
  %1119 = fmul fast float %1118, %1114
  %1120 = fmul fast float %1118, %1115
  %1121 = fmul fast float %1118, %1116
  %1122 = fsub fast float %509, %1111
  %1123 = fsub fast float %510, %1112
  %1124 = fsub fast float %511, %1113
  %1125 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %1122, float %1123, float %1124)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %1119, float %1120, float %1121)  ; Dot3(ax,ay,az,bx,by,bz)
  %1127 = fdiv fast float 1.000000e+00, %1126
  %1128 = fmul fast float %1127, %1125
  %1129 = fmul fast float %1128, %1119
  %1130 = fmul fast float %1128, %1120
  %1131 = fmul fast float %1128, %1121
  %1132 = fadd fast float %1129, %1111
  %1133 = fadd fast float %1130, %1112
  %1134 = fadd fast float %1131, %1113
  %1135 = fmul fast float %1108, %455
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1109, float %461, float %1135)  ; FMad(a,b,c)
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %1110, float %467, float %1136)  ; FMad(a,b,c)
  %1138 = fadd fast float %1137, %473
  %1139 = fmul fast float %1108, %456
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1109, float %462, float %1139)  ; FMad(a,b,c)
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1110, float %468, float %1140)  ; FMad(a,b,c)
  %1142 = fadd fast float %1141, %474
  %1143 = fmul fast float %1108, %458
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1109, float %464, float %1143)  ; FMad(a,b,c)
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1110, float %470, float %1144)  ; FMad(a,b,c)
  %1146 = fadd fast float %1145, %476
  %1147 = fmul fast float %1132, %455
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1133, float %461, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1134, float %467, float %1148)  ; FMad(a,b,c)
  %1150 = fadd fast float %1149, %473
  %1151 = fmul fast float %1132, %456
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1133, float %462, float %1151)  ; FMad(a,b,c)
  %1153 = call float @dx.op.tertiary.f32(i32 46, float %1134, float %468, float %1152)  ; FMad(a,b,c)
  %1154 = fadd fast float %1153, %474
  %1155 = fmul fast float %1132, %458
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1133, float %464, float %1155)  ; FMad(a,b,c)
  %1157 = call float @dx.op.tertiary.f32(i32 46, float %1134, float %470, float %1156)  ; FMad(a,b,c)
  %1158 = fadd fast float %1157, %476
  %1159 = fdiv fast float 1.000000e+00, %1146
  %1160 = fmul fast float %1159, %1138
  %1161 = fmul fast float %1159, %1142
  %1162 = fdiv fast float 1.000000e+00, %1158
  %1163 = fmul fast float %1162, %1150
  %1164 = fmul fast float %1162, %1154
  %1165 = fsub fast float %1163, %1160
  %1166 = fsub fast float %1164, %1161
  %1167 = call float @dx.op.dot2.f32(i32 54, float %1165, float %1166, float %1165, float %1166)  ; Dot2(ax,ay,bx,by)
  %1168 = call float @dx.op.unary.f32(i32 25, float %1167)  ; Rsqrt(value)
  %1169 = fmul fast float %1165, %1168
  %1170 = fmul fast float %1166, %1168
  %1171 = fmul fast float %1165, %1165
  %1172 = fmul fast float %1166, %1166
  %1173 = fadd fast float %1171, %1172
  %1174 = call float @dx.op.unary.f32(i32 24, float %1173)  ; Sqrt(value)
  %1175 = fmul fast float %1174, 5.000000e-01
  %1176 = fcmp fast olt float %1175, %1085
  br i1 %1176, label %1177, label %1178, !dx.controlflow.hints !43

; <label>:1177                                    ; preds = %1086
  br label %1178

; <label>:1178                                    ; preds = %1177, %1086, %957
  %1179 = phi float [ %1085, %957 ], [ %1175, %1177 ], [ %1085, %1086 ]
  %1180 = phi float [ %1085, %957 ], [ %1085, %1177 ], [ %1175, %1086 ]
  %1181 = phi float [ %1079, %957 ], [ %1079, %1177 ], [ %1169, %1086 ]
  %1182 = phi float [ %1080, %957 ], [ %1080, %1177 ], [ %1170, %1086 ]
  %1183 = fsub fast float %1180, %1179
  %1184 = fmul fast float %1181, %1181
  %1185 = fmul fast float %1184, %1183
  %1186 = fadd fast float %1185, %1179
  %1187 = fmul fast float %1181, %1183
  %1188 = fmul fast float %1187, %1182
  %1189 = fmul fast float %1182, %1182
  %1190 = fmul fast float %1189, %1183
  %1191 = fadd fast float %1190, %1179
  %1192 = fmul fast float %1186, %542
  %1193 = call float @dx.op.tertiary.f32(i32 46, float %541, float %1188, float %1192)  ; FMad(a,b,c)
  %1194 = fmul fast float %1188, %542
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %541, float %1191, float %1194)  ; FMad(a,b,c)
  %1196 = fmul fast float %1186, %543
  %1197 = call float @dx.op.tertiary.f32(i32 46, float %542, float %1188, float %1196)  ; FMad(a,b,c)
  %1198 = fmul fast float %1188, %543
  %1199 = call float @dx.op.tertiary.f32(i32 46, float %542, float %1191, float %1198)  ; FMad(a,b,c)
  br label %1200

; <label>:1200                                    ; preds = %1200, %1178
  %1201 = phi float [ 0.000000e+00, %1178 ], [ %1227, %1200 ]
  %1202 = phi i32 [ 0, %1178 ], [ %1228, %1200 ]
  %1203 = mul i32 %1202, 2
  %1204 = add i32 0, %1203
  %1205 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1204
  %1206 = load float, float* %1205, align 4
  %1207 = mul i32 %1202, 2
  %1208 = add i32 1, %1207
  %1209 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1208
  %1210 = load float, float* %1209, align 4
  %1211 = fmul fast float %1206, %1193
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %1197, float %1211)  ; FMad(a,b,c)
  %1213 = fmul fast float %1206, %1195
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %1199, float %1213)  ; FMad(a,b,c)
  %1215 = fadd fast float %1212, %528
  %1216 = fadd fast float %1214, %529
  %1217 = fmul fast float %1215, %445
  %1218 = fmul fast float %1216, %445
  %1219 = call float @dx.op.binary.f32(i32 35, float %1217, float %441)  ; FMax(a,b)
  %1220 = call float @dx.op.binary.f32(i32 35, float %1218, float %441)  ; FMax(a,b)
  %1221 = call float @dx.op.binary.f32(i32 36, float %1219, float %442)  ; FMin(a,b)
  %1222 = call float @dx.op.binary.f32(i32 36, float %1220, float %442)  ; FMin(a,b)
  %1223 = fadd fast float %1221, %439
  %1224 = fadd fast float %1222, %440
  %1225 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %16, float %1223, float %1224, float %923, float undef, i32 0, i32 0, i32 undef, float %926)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = fadd fast float %1226, %1201
  %1228 = add nuw nsw i32 %1202, 1
  %1229 = icmp eq i32 %1228, 8
  br i1 %1229, label %1230, label %1200

; <label>:1230                                    ; preds = %1200
  %1231 = fmul fast float %1227, 1.250000e-01
  br label %1232

; <label>:1232                                    ; preds = %1230, %940, %588
  %1233 = phi float [ %615, %588 ], [ %1231, %1230 ], [ 1.000000e+00, %940 ]
  %1234 = fcmp fast ogt float %1233, 0.000000e+00
  %1235 = xor i1 %69, true
  %1236 = and i1 %1234, %1235
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1239 = fcmp fast olt float %1238, 0.000000e+00
  %1240 = and i1 %1236, %1239
  br i1 %1240, label %1241, label %1352, !dx.controlflow.hints !46

; <label>:1241                                    ; preds = %1232
  %1242 = fadd fast float %528, %441
  %1243 = fadd fast float %529, %441
  %1244 = fadd fast float %531, %449
  %1245 = fmul fast float %528, %479
  %1246 = call float @dx.op.tertiary.f32(i32 46, float %529, float %485, float %1245)  ; FMad(a,b,c)
  %1247 = call float @dx.op.tertiary.f32(i32 46, float %531, float %491, float %1246)  ; FMad(a,b,c)
  %1248 = fadd fast float %1247, %497
  %1249 = fmul fast float %528, %480
  %1250 = call float @dx.op.tertiary.f32(i32 46, float %529, float %486, float %1249)  ; FMad(a,b,c)
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %531, float %492, float %1250)  ; FMad(a,b,c)
  %1252 = fadd fast float %1251, %498
  %1253 = fmul fast float %528, %481
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %529, float %487, float %1253)  ; FMad(a,b,c)
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %531, float %493, float %1254)  ; FMad(a,b,c)
  %1256 = fadd fast float %1255, %499
  %1257 = fmul fast float %528, %482
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %529, float %488, float %1257)  ; FMad(a,b,c)
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %531, float %494, float %1258)  ; FMad(a,b,c)
  %1260 = fadd fast float %1259, %500
  %1261 = fmul fast float %1242, %479
  %1262 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %485, float %1261)  ; FMad(a,b,c)
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %491, float %1262)  ; FMad(a,b,c)
  %1264 = fadd fast float %1263, %497
  %1265 = fmul fast float %1242, %480
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %486, float %1265)  ; FMad(a,b,c)
  %1267 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %492, float %1266)  ; FMad(a,b,c)
  %1268 = fadd fast float %1267, %498
  %1269 = fmul fast float %1242, %481
  %1270 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %487, float %1269)  ; FMad(a,b,c)
  %1271 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %493, float %1270)  ; FMad(a,b,c)
  %1272 = fadd fast float %1271, %499
  %1273 = fmul fast float %1242, %482
  %1274 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %488, float %1273)  ; FMad(a,b,c)
  %1275 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %494, float %1274)  ; FMad(a,b,c)
  %1276 = fadd fast float %1275, %500
  %1277 = fdiv fast float 1.000000e+00, %1260
  %1278 = fmul fast float %1277, %1248
  %1279 = fmul fast float %1277, %1252
  %1280 = fmul fast float %1277, %1256
  %1281 = fdiv fast float 1.000000e+00, %1276
  %1282 = fmul fast float %1281, %1264
  %1283 = fmul fast float %1281, %1268
  %1284 = fmul fast float %1281, %1272
  %1285 = fsub fast float %1278, %1282
  %1286 = fsub fast float %1279, %1283
  %1287 = fsub fast float %1280, %1284
  %1288 = fmul fast float %1285, %1285
  %1289 = fmul fast float %1286, %1286
  %1290 = fadd fast float %1288, %1289
  %1291 = fmul fast float %1287, %1287
  %1292 = fadd fast float %1290, %1291
  %1293 = call float @dx.op.unary.f32(i32 24, float %1292)  ; Sqrt(value)
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1298 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.CBufRet.f32 %1299, 2
  %1303 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.CBufRet.f32 %1304, 2
  %1308 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1309 = fmul fast float %1295, %1278
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1296, float %1309)  ; FMad(a,b,c)
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1297, float %1310)  ; FMad(a,b,c)
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1260, float %1298, float %1311)  ; FMad(a,b,c)
  %1313 = fmul fast float %1300, %1278
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1301, float %1313)  ; FMad(a,b,c)
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1302, float %1314)  ; FMad(a,b,c)
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1260, float %1303, float %1315)  ; FMad(a,b,c)
  %1317 = fmul fast float %1305, %1278
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1306, float %1317)  ; FMad(a,b,c)
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1307, float %1318)  ; FMad(a,b,c)
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1260, float %1308, float %1319)  ; FMad(a,b,c)
  %1321 = fmul fast float %1295, %1282
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1296, float %1321)  ; FMad(a,b,c)
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1297, float %1322)  ; FMad(a,b,c)
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1298, float %1323)  ; FMad(a,b,c)
  %1325 = fmul fast float %1300, %1282
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1301, float %1325)  ; FMad(a,b,c)
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1302, float %1326)  ; FMad(a,b,c)
  %1328 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1303, float %1327)  ; FMad(a,b,c)
  %1329 = fmul fast float %1305, %1282
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1306, float %1329)  ; FMad(a,b,c)
  %1331 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1307, float %1330)  ; FMad(a,b,c)
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1308, float %1331)  ; FMad(a,b,c)
  %1333 = fdiv fast float 1.000000e+00, %1320
  %1334 = fmul fast float %1333, %1312
  %1335 = fmul fast float %1333, %1316
  %1336 = fdiv fast float 1.000000e+00, %1332
  %1337 = fmul fast float %1336, %1324
  %1338 = fmul fast float %1336, %1328
  %1339 = fsub fast float %1334, %1337
  %1340 = fsub fast float %1335, %1338
  %1341 = fmul fast float %1339, 5.000000e-01
  %1342 = fmul fast float %1340, 5.000000e-01
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1346 = fmul fast float %1341, %1344
  %1347 = fmul fast float %1342, %1345
  %1348 = fmul fast float %1346, %1346
  %1349 = fmul fast float %1347, %1347
  %1350 = fadd fast float %1348, %1349
  %1351 = call float @dx.op.unary.f32(i32 24, float %1350)  ; Sqrt(value)
  br label %1352

; <label>:1352                                    ; preds = %1241, %1232
  %1353 = phi float [ %1293, %1241 ], [ 0.000000e+00, %1232 ]
  %1354 = phi float [ %1351, %1241 ], [ 0.000000e+00, %1232 ]
  %1355 = fadd fast float %1233, -1.000000e+00
  %1356 = fmul fast float %1355, %418
  %1357 = fadd fast float %1356, 1.000000e+00
  %1358 = fmul fast float %1357, %430
  br label %1359

; <label>:1359                                    ; preds = %1352, %397
  %1360 = phi float [ %1358, %1352 ], [ %430, %397 ]
  %1361 = phi float [ %1353, %1352 ], [ 0.000000e+00, %397 ]
  %1362 = phi float [ %1354, %1352 ], [ 0.000000e+00, %397 ]
  %1363 = call float @dx.op.binary.f32(i32 36, float %1360, float %1360)  ; FMin(a,b)
  %1364 = call float @dx.op.binary.f32(i32 36, float %1360, float %1363)  ; FMin(a,b)
  %1365 = fcmp fast ogt float %1364, 0.000000e+00
  %1366 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %370, float %371, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %1367 = fcmp fast ogt float %1366, 0.000000e+00
  %1368 = and i1 %1365, %1367
  br i1 %1368, label %1369, label %1648, !dx.controlflow.hints !47

; <label>:1369                                    ; preds = %1359
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1374 = select i1 %69, float %1371, float %1373
  %1375 = extractvalue %dx.types.CBufRet.f32 %1370, 2
  %1376 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1377 = select i1 %69, float %1375, float %1376
  %1378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.i32 %1378, 0
  %1380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.i32 %1380, 0
  %1382 = select i1 %69, i32 %1379, i32 %1381
  %1383 = fcmp fast ogt float %1361, 0.000000e+00
  br i1 %1383, label %1384, label %1388, !dx.controlflow.hints !48

; <label>:1384                                    ; preds = %1369
  %1385 = fptosi float %1362 to i32
  %1386 = call i32 @dx.op.binary.i32(i32 37, i32 %1385, i32 1)  ; IMax(a,b)
  %1387 = call i32 @dx.op.binary.i32(i32 38, i32 %1386, i32 16)  ; IMin(a,b)
  br label %1388

; <label>:1388                                    ; preds = %1384, %1369
  %1389 = phi float [ 0.000000e+00, %1384 ], [ 1.000000e+00, %1369 ]
  %1390 = phi float [ %1361, %1384 ], [ %1374, %1369 ]
  %1391 = phi i32 [ %1387, %1384 ], [ %1382, %1369 ]
  %1392 = fcmp fast olt float %1390, 5.000000e-01
  %1393 = icmp eq i32 %1391, 0
  %1394 = or i1 %1392, %1393
  br i1 %1394, label %1645, label %1395, !dx.controlflow.hints !49

; <label>:1395                                    ; preds = %1388
  %1396 = fsub fast float %330, %131
  %1397 = fsub fast float %331, %132
  %1398 = fsub fast float %332, %133
  %1399 = fmul fast float %1396, %1396
  %1400 = fmul fast float %1397, %1397
  %1401 = fadd fast float %1399, %1400
  %1402 = fmul fast float %1398, %1398
  %1403 = fadd fast float %1401, %1402
  %1404 = call float @dx.op.unary.f32(i32 24, float %1403)  ; Sqrt(value)
  %1405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.i32 %1405, 0
  %1407 = uitofp i32 %1406 to float
  %1408 = fmul fast float %1390, %327
  %1409 = fdiv fast float %1408, %1404
  %1410 = call float @dx.op.binary.f32(i32 36, float %1409, float 1.000000e+01)  ; FMin(a,b)
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1415 = extractvalue %dx.types.CBufRet.f32 %1411, 3
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1420 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1425 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1430 = extractvalue %dx.types.CBufRet.f32 %1426, 3
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.CBufRet.f32 %1431, 1
  %1434 = extractvalue %dx.types.CBufRet.f32 %1431, 2
  %1435 = extractvalue %dx.types.CBufRet.f32 %1431, 3
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.CBufRet.f32 %1436, 1
  %1439 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1440 = extractvalue %dx.types.CBufRet.f32 %1436, 3
  %1441 = select i1 %69, float %1412, float %1427
  %1442 = select i1 %69, float %1417, float %1432
  %1443 = select i1 %69, float %1422, float %1437
  %1444 = select i1 %69, float %1413, float %1428
  %1445 = select i1 %69, float %1418, float %1433
  %1446 = select i1 %69, float %1423, float %1438
  %1447 = select i1 %69, float %1414, float %1429
  %1448 = select i1 %69, float %1419, float %1434
  %1449 = select i1 %69, float %1424, float %1439
  %1450 = select i1 %69, float %1415, float %1430
  %1451 = select i1 %69, float %1420, float %1435
  %1452 = select i1 %69, float %1425, float %1440
  %1453 = fmul fast float %250, 0x401061CAC0000000
  %1454 = fmul fast float %250, 0x4023E1D7E0000000
  %1455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1456 = extractvalue %dx.types.CBufRet.f32 %1455, 0
  %1457 = extractvalue %dx.types.CBufRet.f32 %1455, 1
  %1458 = extractvalue %dx.types.CBufRet.f32 %1455, 2
  %1459 = extractvalue %dx.types.CBufRet.f32 %1455, 3
  %1460 = fsub fast float -0.000000e+00, %370
  %1461 = fmul fast float %372, %1460
  %1462 = fmul fast float %370, %1460
  %1463 = fmul fast float %371, %371
  %1464 = fsub fast float %1462, %1463
  %1465 = fdiv fast float 1.000000e+00, %76
  %1466 = fmul fast float %1458, %65
  %1467 = fmul fast float %1459, %66
  %1468 = fmul fast float %1390, %370
  %1469 = fmul fast float %1390, %372
  %1470 = fadd fast float %1468, %131
  %1471 = fadd fast float %1469, %133
  %1472 = fadd fast float %1454, 5.000000e-01
  %1473 = call float @dx.op.unary.f32(i32 22, float %1472)  ; Frc(value)
  %1474 = bitcast float %1473 to i32
  %1475 = ashr i32 %1474, 1
  %1476 = add nsw i32 %1475, 532487669
  %1477 = bitcast i32 %1476 to float
  %1478 = fmul fast float %1477, %1410
  %1479 = fadd fast float %1453, 5.000000e-01
  %1480 = call float @dx.op.unary.f32(i32 22, float %1479)  ; Frc(value)
  %1481 = fmul fast float %1480, 0x401921FB60000000
  %1482 = call float @dx.op.unary.f32(i32 12, float %1481)  ; Cos(value)
  %1483 = fmul fast float %1482, %1482
  %1484 = fsub fast float 1.000000e+00, %1483
  %1485 = bitcast float %1484 to i32
  %1486 = ashr i32 %1485, 1
  %1487 = add nsw i32 %1486, 532487669
  %1488 = bitcast i32 %1487 to float
  %1489 = fmul fast float %1478, %1482
  %1490 = fmul fast float %1489, %371
  %1491 = fmul fast float %1489, %1460
  %1492 = fadd fast float %1470, %1490
  %1493 = fmul fast float %1488, %1478
  %1494 = fmul fast float %1461, %1493
  %1495 = fmul fast float %1493, %372
  %1496 = fmul fast float %1493, %1464
  %1497 = fsub fast float %1492, %1494
  %1498 = fadd fast float %1495, %1390
  %1499 = fmul fast float %1498, %371
  %1500 = fadd fast float %1491, %132
  %1501 = fadd fast float %1500, %1499
  %1502 = fadd fast float %1471, %1496
  %1503 = fmul fast float %1497, %1441
  %1504 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1444, float %1503)  ; FMad(a,b,c)
  %1505 = call float @dx.op.tertiary.f32(i32 46, float %1502, float %1447, float %1504)  ; FMad(a,b,c)
  %1506 = fadd fast float %1505, %1450
  %1507 = fmul fast float %1497, %1442
  %1508 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1445, float %1507)  ; FMad(a,b,c)
  %1509 = call float @dx.op.tertiary.f32(i32 46, float %1502, float %1448, float %1508)  ; FMad(a,b,c)
  %1510 = fadd fast float %1509, %1451
  %1511 = fmul fast float %1497, %1443
  %1512 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1446, float %1511)  ; FMad(a,b,c)
  %1513 = call float @dx.op.tertiary.f32(i32 46, float %1502, float %1449, float %1512)  ; FMad(a,b,c)
  %1514 = fadd fast float %1513, %1452
  %1515 = fdiv fast float 1.000000e+00, %1514
  %1516 = fmul fast float %1506, 5.000000e-01
  %1517 = fmul fast float %1510, -5.000000e-01
  %1518 = fmul fast float %1516, %1515
  %1519 = fmul fast float %1517, %1515
  %1520 = fsub fast float 5.000000e-01, %1466
  %1521 = fadd fast float %1520, %1518
  %1522 = fsub fast float 5.000000e-01, %1467
  %1523 = fadd fast float %1522, %1519
  %1524 = fsub fast float %1515, %1465
  %1525 = call float @dx.op.dot2.f32(i32 54, float %1521, float %1523, float %1521, float %1523)  ; Dot2(ax,ay,bx,by)
  %1526 = call float @dx.op.binary.f32(i32 35, float %1525, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1527 = call float @dx.op.dot2.f32(i32 54, float %1456, float %1457, float %1456, float %1457)  ; Dot2(ax,ay,bx,by)
  %1528 = fmul fast float %1527, %1526
  %1529 = call float @dx.op.unary.f32(i32 25, float %1528)  ; Rsqrt(value)
  %1530 = fmul fast float %1529, %1521
  %1531 = fmul fast float %1529, %1523
  %1532 = fadd fast float %1530, %1466
  %1533 = fadd fast float %1531, %1467
  %1534 = fmul fast float %1521, %1456
  %1535 = fmul fast float %1523, %1457
  %1536 = fmul fast float %1534, %1534
  %1537 = fmul fast float %1535, %1535
  %1538 = fadd fast float %1536, %1537
  %1539 = call float @dx.op.unary.f32(i32 24, float %1538)  ; Sqrt(value)
  %1540 = fdiv fast float 1.000000e+00, %1539
  %1541 = fmul fast float %1539, 3.906250e-03
  %1542 = fmul fast float %236, 0x3F70624DE0000000
  %1543 = fadd fast float %1542, 0x3F70624DE0000000
  %1544 = icmp sgt i32 %1391, -1
  br i1 %1544, label %1545, label %1610

; <label>:1545                                    ; preds = %1395
  br label %1546

; <label>:1546                                    ; preds = %1606, %1545
  %1547 = phi float [ %1581, %1606 ], [ %76, %1545 ]
  %1548 = phi float [ %1568, %1606 ], [ %76, %1545 ]
  %1549 = phi float [ %1548, %1606 ], [ %76, %1545 ]
  %1550 = phi i32 [ %1607, %1606 ], [ 0, %1545 ]
  %1551 = sitofp i32 %1550 to float
  %1552 = fadd fast float %250, 5.000000e-01
  %1553 = call float @dx.op.unary.f32(i32 22, float %1552)  ; Frc(value)
  %1554 = fadd fast float %1551, %1553
  %1555 = sitofp i32 %1391 to float
  %1556 = fdiv fast float %1554, %1555
  %1557 = fmul fast float %1556, %1556
  %1558 = fsub fast float %1557, %1556
  %1559 = fmul fast float %1558, %1389
  %1560 = fadd fast float %1559, %1556
  %1561 = call float @dx.op.binary.f32(i32 36, float %1560, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1562 = fmul fast float %1561, %1521
  %1563 = fmul fast float %1561, %1523
  %1564 = fmul fast float %1561, %1524
  %1565 = fadd fast float %1562, %1532
  %1566 = fadd fast float %1563, %1533
  %1567 = fadd fast float %1564, %1465
  %1568 = fdiv fast float 1.000000e+00, %1567
  %1569 = icmp ne i32 %1406, 0
  %1570 = fmul fast float %1541, %1561
  %1571 = call float @dx.op.binary.f32(i32 36, float %1570, float %1407)  ; FMin(a,b)
  %1572 = select i1 %1569, float %1571, float 0.000000e+00
  %1573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %1565, float %1566, float undef, float undef, i32 0, i32 0, i32 undef, float %1572)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = fcmp fast ogt float %1574, -1.000000e+00
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 1
  %1578 = select i1 %1575, float %1577, float 1.000000e+00
  %1579 = fadd fast float %1574, 1.000000e+00
  %1580 = fmul fast float %1578, %1579
  %1581 = call float @dx.op.unary.f32(i32 6, float %1580)  ; FAbs(value)
  %1582 = fmul fast float %1581, %1543
  %1583 = fsub fast float %1568, %1581
  %1584 = fsub fast float %1583, %1582
  %1585 = fcmp fast ogt float %1584, 0.000000e+00
  %1586 = fcmp fast ogt float %1377, 0.000000e+00
  br i1 %1586, label %1587, label %1590, !dx.controlflow.hints !50

; <label>:1587                                    ; preds = %1546
  %1588 = fsub fast float %1568, %1549
  %1589 = call float @dx.op.binary.f32(i32 35, float %1588, float %1377)  ; FMax(a,b)
  br label %1590

; <label>:1590                                    ; preds = %1587, %1546
  %1591 = phi float [ %1589, %1587 ], [ %1390, %1546 ]
  %1592 = fcmp fast olt float %1584, %1591
  %1593 = fcmp uge float %1574, -1.000000e+00
  %1594 = or i1 %69, %1593
  %1595 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1597 = fcmp fast oeq float %1565, %1595
  %1598 = fcmp fast oeq float %1566, %1596
  %1599 = and i1 %1597, %1598
  %1600 = and i1 %1594, %1599
  %1601 = and i1 %1585, %1592
  %1602 = and i1 %1601, %1600
  %1603 = fcmp fast ogt float %1561, %1540
  %1604 = and i1 %1603, %1602
  %1605 = zext i1 %1604 to i32
  br i1 %1604, label %1609, label %1606, !dx.controlflow.hints !51

; <label>:1606                                    ; preds = %1590
  %1607 = add nuw nsw i32 %1550, 1
  %1608 = icmp slt i32 %1550, %1391
  br i1 %1608, label %1546, label %1609

; <label>:1609                                    ; preds = %1606, %1590
  br label %1610

; <label>:1610                                    ; preds = %1609, %1395
  %1611 = phi i32 [ 0, %1395 ], [ %1605, %1609 ]
  %1612 = phi float [ %76, %1395 ], [ %1581, %1609 ]
  %1613 = phi float [ %76, %1395 ], [ %1547, %1609 ]
  %1614 = phi float [ %76, %1395 ], [ %1568, %1609 ]
  %1615 = phi float [ %76, %1395 ], [ %1548, %1609 ]
  %1616 = fsub fast float %1615, %1613
  %1617 = fsub fast float %1614, %1612
  %1618 = fsub fast float %1616, %1617
  %1619 = fcmp fast une float %1618, 0.000000e+00
  %1620 = fmul fast float %1616, %1614
  %1621 = fmul fast float %1615, %1617
  %1622 = fsub fast float %1620, %1621
  %1623 = fdiv fast float 1.000000e+00, %1618
  %1624 = fmul fast float %1622, %1623
  %1625 = select i1 %1619, float %1624, float %1614
  %1626 = fdiv fast float 1.000000e+00, %1625
  %1627 = fsub fast float %1626, %1465
  %1628 = fdiv fast float %1627, %1524
  %1629 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1630 = fmul fast float %1629, %1521
  %1631 = fmul fast float %1629, %1523
  %1632 = fadd fast float %1630, %1532
  %1633 = fadd fast float %1631, %1533
  %1634 = fadd fast float %1632, -5.000000e-01
  %1635 = fadd fast float %1633, -5.000000e-01
  %1636 = call float @dx.op.unary.f32(i32 6, float %1634)  ; FAbs(value)
  %1637 = call float @dx.op.unary.f32(i32 6, float %1635)  ; FAbs(value)
  %1638 = fadd fast float %1636, -5.000000e-01
  %1639 = fadd fast float %1637, -5.000000e-01
  %1640 = call float @dx.op.binary.f32(i32 35, float %1638, float %1639)  ; FMax(a,b)
  %1641 = fcmp fast olt float %1640, 0.000000e+00
  %1642 = icmp ne i32 %1611, 0
  %1643 = and i1 %1642, %1641
  %1644 = select i1 %1643, float 0.000000e+00, float 1.000000e+00
  br label %1645

; <label>:1645                                    ; preds = %1610, %1388
  %1646 = phi float [ %1644, %1610 ], [ 1.000000e+00, %1388 ]
  %1647 = fmul fast float %1646, %1360
  br label %1648

; <label>:1648                                    ; preds = %1645, %1359
  %1649 = phi float [ %1647, %1645 ], [ %1360, %1359 ]
  %1650 = lshr i32 %307, 5
  %1651 = and i32 %1650, 3
  %1652 = lshr i32 %307, 7
  %1653 = add nuw nsw i32 %1652, 363
  %1654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 %1653)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.i32 %1654, 0
  %1656 = extractvalue %dx.types.CBufRet.i32 %1654, 1
  %1657 = extractvalue %dx.types.CBufRet.i32 %1654, 2
  %1658 = extractvalue %dx.types.CBufRet.i32 %1654, 3
  %1659 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %1655, i32* %1659, align 4
  %1660 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %1656, i32* %1660, align 4
  %1661 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %1657, i32* %1661, align 4
  %1662 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %1658, i32* %1662, align 4
  %1663 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 %1651
  %1664 = load i32, i32* %1663, align 4, !tbaa !33
  %1665 = and i32 %307, 31
  %1666 = shl i32 1, %1665
  %1667 = and i32 %1664, %1666
  %1668 = icmp ne i32 %1667, 0
  %1669 = lshr i32 %255, 5
  %1670 = lshr i32 %256, 5
  %1671 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %1669, i32 %1670, i32 %307, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = lshr i32 %255, 1
  %1674 = lshr i32 %256, 1
  %1675 = and i32 %1673, 15
  %1676 = and i32 %1674, 15
  %1677 = and i32 %255, 1
  %1678 = shl i32 %256, 1
  %1679 = and i32 %1678, 2
  %1680 = or i32 %1679, %1677
  %1681 = lshr i32 %1672, 2
  %1682 = and i32 %1681, 8176
  %1683 = lshr i32 %1672, 11
  %1684 = and i32 %1683, 4080
  %1685 = or i32 %1682, %1675
  %1686 = or i32 %1684, %1676
  %1687 = lshr i32 %1672, 21
  %1688 = and i32 %1687, 1020
  %1689 = or i32 %1680, %1688
  %1690 = fmul fast float %1649, 2.550000e+02
  %1691 = select i1 %1668, float 0.000000e+00, float %1690
  %1692 = fadd fast float %1691, %249
  %1693 = call float @dx.op.unary.f32(i32 27, float %1692)  ; Round_ni(value)
  %1694 = fmul fast float %1693, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1685, i32 %1686, i32 %1689, float %1694, float %1694, float %1694, float %1694, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1695 = icmp eq i32 %305, %309
  br i1 %1695, label %1696, label %304, !llvm.loop !52

; <label>:1696                                    ; preds = %1648
  br label %1697

; <label>:1697                                    ; preds = %1696, %278
  %1698 = add i32 %279, 1
  %1699 = icmp ugt i32 %1698, %275
  br i1 %1699, label %1700, label %278

; <label>:1700                                    ; preds = %1697
  br label %1701

; <label>:1701                                    ; preds = %1700, %254, %56
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

