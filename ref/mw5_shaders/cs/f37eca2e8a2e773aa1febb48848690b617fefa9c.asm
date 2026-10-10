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
; shader hash: 57d3345cbf299598685a9876aa994543
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

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
  %28 = shl i32 %25, 3
  %29 = mul i32 %28, %27
  %30 = add i32 %29, %20
  %31 = shl i32 %30, 2
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = lshr i32 %33, 28
  %35 = and i32 %34, 7
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
  %80 = fmul fast float %65, 2.000000e+00
  %81 = fmul fast float %80, %78
  %82 = fmul fast float %66, 2.000000e+00
  %83 = fmul fast float %82, %79
  %84 = fsub fast float 1.000000e+00, %81
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
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = fmul fast float %181, 0x3FE3C6EF40000000
  %183 = frem fast float %65, 2.560000e+02
  %184 = frem fast float %66, 2.560000e+02
  %185 = fptoui float %183 to i32
  %186 = fptoui float %184 to i32
  %187 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %185, i32 %186, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = fadd fast float %188, %182
  %190 = call float @dx.op.unary.f32(i32 22, float %189)  ; Frc(value)
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 0
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %1219, label %194, !dx.controlflow.hints !38

; <label>:194                                     ; preds = %56
  %195 = fptoui float %65 to i32
  %196 = fptoui float %66 to i32
  %197 = lshr i32 %195, 4
  %198 = lshr i32 %196, 4
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %201 = call i32 @dx.op.tertiary.i32(i32 49, i32 %198, i32 %200, i32 %197)  ; UMad(a,b,c)
  %202 = add nsw i32 %192, -1
  %203 = call i32 @dx.op.binary.i32(i32 37, i32 %202, i32 0)  ; IMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %205 = fptoui float %204 to i32
  %206 = lshr i32 %205, 5
  %207 = call i32 @dx.op.binary.i32(i32 40, i32 %206, i32 8191)  ; UMin(a,b)
  %208 = shl i32 %207, 2
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = lshr i32 %210, 16
  %212 = and i32 %210, 65535
  %213 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %211, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %214 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %212, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %215 = lshr i32 %213, 5
  %216 = lshr i32 %214, 5
  %217 = call i32 @dx.op.binary.i32(i32 40, i32 %216, i32 %203)  ; UMin(a,b)
  %218 = icmp ugt i32 %215, %217
  br i1 %218, label %1219, label %219

; <label>:219                                     ; preds = %194
  br label %220

; <label>:220                                     ; preds = %1209, %219
  %221 = phi i32 [ %1216, %1209 ], [ %215, %219 ]
  %222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.i32 %222, 0
  %224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %201, i32 %223, i32 %221)  ; UMad(a,b,c)
  %225 = shl i32 %224, 2
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = shl i32 %221, 5
  %229 = sub nsw i32 %211, %228
  %230 = call i32 @dx.op.binary.i32(i32 37, i32 %229, i32 0)  ; IMax(a,b)
  %231 = call i32 @dx.op.binary.i32(i32 38, i32 %230, i32 31)  ; IMin(a,b)
  %232 = sub nsw i32 1, %211
  %233 = add nsw i32 %232, %212
  %234 = call i32 @dx.op.binary.i32(i32 37, i32 %233, i32 0)  ; IMax(a,b)
  %235 = call i32 @dx.op.binary.i32(i32 38, i32 %234, i32 32)  ; IMin(a,b)
  %236 = and i32 %235, 31
  %237 = shl i32 -1, %236
  %238 = xor i32 %237, -1
  %239 = and i32 %231, 31
  %240 = shl i32 %238, %239
  %241 = icmp eq i32 %235, 32
  %242 = select i1 %241, i32 -1, i32 %240
  %243 = and i32 %242, %227
  %244 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %243, i8 1)  ; WaveActiveBit(value,op)
  %245 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %244)  ; WaveReadLaneFirst(value)
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %1209, label %247

; <label>:247                                     ; preds = %220
  br label %248

; <label>:248                                     ; preds = %1174, %247
  %249 = phi i32 [ %1181, %1174 ], [ 0, %247 ]
  %250 = phi i32 [ %255, %1174 ], [ %245, %247 ]
  %251 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %250)  ; FirstbitLo(value)
  %252 = add i32 %251, %228
  %253 = and i32 %251, 31
  %254 = shl i32 1, %253
  %255 = xor i32 %254, %250
  %256 = mul i32 %252, 112
  %257 = add i32 %256, 16
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = add i32 %256, 28
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = add i32 %256, 32
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = add i32 %256, 44
  %271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = add i32 %256, 48
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = add i32 %256, 64
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = extractvalue %dx.types.ResRet.f32 %280, 3
  %285 = add i32 %256, 92
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = uitofp i32 %288 to float
  %290 = lshr i32 %287, 16
  %291 = uitofp i32 %290 to float
  %292 = and i32 %264, 65535
  %293 = and i32 %264, 50331648
  %294 = icmp eq i32 %293, 33554432
  %295 = call float @dx.op.dot3.f32(i32 55, float %267, float %268, float %269, float %267, float %268, float %269)  ; Dot3(ax,ay,az,bx,by,bz)
  %296 = fsub fast float %131, %275
  %297 = fsub fast float %132, %276
  %298 = fsub fast float %133, %277
  %299 = call float @dx.op.dot3.f32(i32 55, float %296, float %297, float %298, float %267, float %268, float %269)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = fdiv fast float %299, %295
  %301 = call float @dx.op.binary.f32(i32 35, float %300, float -1.000000e+00)  ; FMax(a,b)
  %302 = call float @dx.op.binary.f32(i32 36, float %301, float 1.000000e+00)  ; FMin(a,b)
  %303 = fmul fast float %302, %267
  %304 = fmul fast float %302, %268
  %305 = fmul fast float %302, %269
  %306 = fadd fast float %303, %275
  %307 = fadd fast float %304, %276
  %308 = fadd fast float %305, %277
  %309 = fsub fast float %306, %131
  %310 = fsub fast float %307, %132
  %311 = fsub fast float %308, %133
  %312 = call float @dx.op.dot3.f32(i32 55, float %309, float %310, float %311, float %309, float %310, float %311)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %314 = fdiv fast float 1.000000e+00, %313
  %315 = fmul fast float %309, %314
  %316 = fmul fast float %310, %314
  %317 = fmul fast float %311, %314
  br i1 %294, label %318, label %342, !dx.controlflow.hints !39

; <label>:318                                     ; preds = %248
  %319 = fmul fast float %283, %259
  %320 = fmul fast float %283, %260
  %321 = fmul fast float %283, %261
  %322 = fsub fast float %319, %131
  %323 = fadd fast float %322, %306
  %324 = fsub fast float %320, %132
  %325 = fadd fast float %324, %307
  %326 = fsub fast float %321, %133
  %327 = fadd fast float %326, %308
  %328 = call float @dx.op.dot3.f32(i32 55, float %323, float %325, float %327, float %323, float %325, float %327)  ; Dot3(ax,ay,az,bx,by,bz)
  %329 = call float @dx.op.unary.f32(i32 25, float %328)  ; Rsqrt(value)
  %330 = fmul fast float %329, %323
  %331 = fmul fast float %329, %325
  %332 = fmul fast float %329, %327
  %333 = fsub fast float %131, %306
  %334 = fsub fast float %132, %307
  %335 = fsub fast float %133, %308
  %336 = fsub fast float -0.000000e+00, %333
  %337 = fsub fast float -0.000000e+00, %334
  %338 = fsub fast float -0.000000e+00, %335
  %339 = call float @dx.op.dot3.f32(i32 55, float %336, float %337, float %338, float %259, float %260, float %261)  ; Dot3(ax,ay,az,bx,by,bz)
  %340 = fcmp fast ogt float %339, 0.000000e+00
  %341 = uitofp i1 %340 to float
  br label %342

; <label>:342                                     ; preds = %318, %248
  %343 = phi float [ %341, %318 ], [ 1.000000e+00, %248 ]
  %344 = phi float [ %330, %318 ], [ %315, %248 ]
  %345 = phi float [ %331, %318 ], [ %316, %248 ]
  %346 = phi float [ %332, %318 ], [ %317, %248 ]
  %347 = call float @dx.op.dot3.f32(i32 55, float %259, float %260, float %261, float %344, float %345, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = fmul fast float %347, %347
  %349 = call float @dx.op.unary.f32(i32 7, float %348)  ; Saturate(value)
  %350 = fsub fast float 1.000000e+00, %349
  %351 = fmul fast float %350, 5.000000e-01
  %352 = fcmp fast ogt float %347, 0.000000e+00
  %353 = fsub fast float 1.000000e+00, %351
  %354 = select i1 %352, float %351, float %353
  %355 = fmul fast float %354, %291
  %356 = fadd fast float %355, %289
  %357 = fmul fast float %356, 0x3EF0001000000000
  %358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %357, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = fmul fast float %347, %281
  %361 = fadd fast float %360, %282
  %362 = call float @dx.op.unary.f32(i32 7, float %361)  ; Saturate(value)
  %363 = select i1 %294, float 1.000000e+00, float %362
  %364 = select i1 %294, float %362, float 1.000000e+00
  %365 = fmul fast float %313, %278
  %366 = fsub fast float 1.000000e+00, %365
  %367 = fmul fast float %366, %284
  %368 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %369 = fmul fast float %368, %364
  %370 = fmul fast float %369, 2.000000e+00
  %371 = fsub fast float 3.000000e+00, %370
  %372 = fmul fast float %359, %343
  %373 = fmul fast float %369, %369
  %374 = fmul fast float %373, %372
  %375 = fmul fast float %374, %371
  %376 = icmp ne i32 %292, 255
  %377 = call float @dx.op.binary.f32(i32 36, float %375, float %375)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 36, float %375, float %377)  ; FMin(a,b)
  %379 = fcmp fast ogt float %378, 0.000000e+00
  %380 = and i1 %376, %379
  br i1 %380, label %381, label %1174, !dx.controlflow.hints !40

; <label>:381                                     ; preds = %342
  %382 = mul nuw nsw i32 %292, 176
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = extractvalue %dx.types.ResRet.f32 %383, 3
  %388 = add nuw nsw i32 %382, 16
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = add nuw nsw i32 %382, 32
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = extractvalue %dx.types.ResRet.f32 %393, 1
  %396 = extractvalue %dx.types.ResRet.f32 %393, 2
  %397 = extractvalue %dx.types.ResRet.f32 %393, 3
  %398 = add nuw nsw i32 %382, 48
  %399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = extractvalue %dx.types.ResRet.f32 %399, 2
  %403 = extractvalue %dx.types.ResRet.f32 %399, 3
  %404 = add nuw nsw i32 %382, 64
  %405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = extractvalue %dx.types.ResRet.f32 %405, 3
  %410 = add nuw nsw i32 %382, 80
  %411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = extractvalue %dx.types.ResRet.f32 %411, 1
  %414 = extractvalue %dx.types.ResRet.f32 %411, 2
  %415 = extractvalue %dx.types.ResRet.f32 %411, 3
  %416 = add nuw nsw i32 %382, 96
  %417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = extractvalue %dx.types.ResRet.f32 %417, 3
  %422 = add nuw nsw i32 %382, 112
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = extractvalue %dx.types.ResRet.f32 %423, 3
  %428 = add nuw nsw i32 %382, 128
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = extractvalue %dx.types.ResRet.f32 %429, 3
  %434 = add nuw nsw i32 %382, 144
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = add nuw nsw i32 %382, 160
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = bitcast float %391 to i32
  %447 = bitcast float %397 to i32
  %448 = and i32 %447, 1
  %449 = icmp ne i32 %448, 0
  %450 = and i32 %447, 2
  %451 = fmul fast float %177, %396
  %452 = fmul fast float %178, %396
  %453 = fmul fast float %179, %396
  %454 = fadd fast float %451, %131
  %455 = fadd fast float %452, %132
  %456 = fadd fast float %453, %133
  %457 = fmul fast float %454, %400
  %458 = call float @dx.op.tertiary.f32(i32 46, float %455, float %406, float %457)  ; FMad(a,b,c)
  %459 = call float @dx.op.tertiary.f32(i32 46, float %456, float %412, float %458)  ; FMad(a,b,c)
  %460 = fadd fast float %459, %418
  %461 = fmul fast float %454, %401
  %462 = call float @dx.op.tertiary.f32(i32 46, float %455, float %407, float %461)  ; FMad(a,b,c)
  %463 = call float @dx.op.tertiary.f32(i32 46, float %456, float %413, float %462)  ; FMad(a,b,c)
  %464 = fadd fast float %463, %419
  %465 = fmul fast float %454, %402
  %466 = call float @dx.op.tertiary.f32(i32 46, float %455, float %408, float %465)  ; FMad(a,b,c)
  %467 = call float @dx.op.tertiary.f32(i32 46, float %456, float %414, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %467, %420
  %469 = fmul fast float %454, %403
  %470 = call float @dx.op.tertiary.f32(i32 46, float %455, float %409, float %469)  ; FMad(a,b,c)
  %471 = call float @dx.op.tertiary.f32(i32 46, float %456, float %415, float %470)  ; FMad(a,b,c)
  %472 = fadd fast float %471, %421
  %473 = fdiv fast float %460, %472
  %474 = fdiv fast float %464, %472
  %475 = fdiv fast float %468, %472
  %476 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %475)  ; FMax(a,b)
  %477 = fmul fast float %190, 0x401921FB60000000
  %478 = call float @dx.op.unary.f32(i32 13, float %477)  ; Sin(value)
  %479 = call float @dx.op.unary.f32(i32 12, float %477)  ; Cos(value)
  %480 = fsub fast float -0.000000e+00, %478
  %481 = icmp eq i32 %450, 0
  br i1 %481, label %482, label %553, !dx.controlflow.hints !41

; <label>:482                                     ; preds = %381
  %483 = fmul fast float %479, %395
  %484 = call float @dx.op.tertiary.f32(i32 46, float %478, float %395, float 0.000000e+00)  ; FMad(a,b,c)
  %485 = fmul fast float %395, %480
  %486 = call float @dx.op.tertiary.f32(i32 46, float %479, float %395, float 0.000000e+00)  ; FMad(a,b,c)
  br label %487

; <label>:487                                     ; preds = %487, %482
  %488 = phi float [ 0.000000e+00, %482 ], [ %520, %487 ]
  %489 = phi float [ 0.000000e+00, %482 ], [ %522, %487 ]
  %490 = phi i32 [ 0, %482 ], [ %523, %487 ]
  %491 = mul i32 %490, 2
  %492 = add i32 0, %491
  %493 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %492
  %494 = load float, float* %493, align 4
  %495 = mul i32 %490, 2
  %496 = add i32 1, %495
  %497 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %496
  %498 = load float, float* %497, align 4
  %499 = fmul fast float %483, %494
  %500 = call float @dx.op.tertiary.f32(i32 46, float %498, float %485, float %499)  ; FMad(a,b,c)
  %501 = fmul fast float %494, %484
  %502 = call float @dx.op.tertiary.f32(i32 46, float %498, float %486, float %501)  ; FMad(a,b,c)
  %503 = fadd fast float %500, %473
  %504 = fadd fast float %502, %474
  %505 = fmul fast float %503, %390
  %506 = fmul fast float %504, %390
  %507 = call float @dx.op.binary.f32(i32 35, float %505, float %386)  ; FMax(a,b)
  %508 = call float @dx.op.binary.f32(i32 35, float %506, float %386)  ; FMax(a,b)
  %509 = call float @dx.op.binary.f32(i32 36, float %507, float %387)  ; FMin(a,b)
  %510 = call float @dx.op.binary.f32(i32 36, float %508, float %387)  ; FMin(a,b)
  %511 = fadd fast float %509, %384
  %512 = fadd fast float %510, %385
  %513 = uitofp i32 %446 to float
  %514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %511, float %512, float %513, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = fsub fast float %515, %476
  %517 = fsub fast float %516, %394
  %518 = fcmp fast ogt float %517, 0.000000e+00
  %519 = select i1 %518, float 1.000000e+00, float 0.000000e+00
  %520 = fadd fast float %519, %488
  %521 = select i1 %518, float %517, float 0.000000e+00
  %522 = fadd fast float %521, %489
  %523 = add nuw nsw i32 %490, 1
  %524 = icmp eq i32 %523, 8
  br i1 %524, label %525, label %487

; <label>:525                                     ; preds = %487
  %526 = fdiv fast float 1.000000e+00, %520
  %527 = fmul fast float %526, %522
  %528 = fdiv fast float 1.000000e+00, %476
  %529 = fmul fast float %527, %528
  %530 = call float @dx.op.unary.f32(i32 7, float %529)  ; Saturate(value)
  %531 = call float @dx.op.binary.f32(i32 35, float %530, float 0.000000e+00)  ; FMax(a,b)
  %532 = fmul fast float %520, 1.250000e-01
  %533 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  %534 = fmul fast float %533, 2.000000e+00
  %535 = fadd fast float %534, -1.000000e+00
  %536 = fcmp fast ogt float %535, 0.000000e+00
  %537 = fcmp fast olt float %535, 0.000000e+00
  %538 = zext i1 %536 to i32
  %539 = zext i1 %537 to i32
  %540 = sub nsw i32 %538, %539
  %541 = sitofp i32 %540 to float
  %542 = fmul fast float %541, %535
  %543 = fsub fast float 1.000000e+00, %542
  %544 = fmul fast float %543, %543
  %545 = fmul fast float %544, %543
  %546 = fsub fast float %543, %545
  %547 = fmul fast float %546, %531
  %548 = fsub fast float 1.000000e+00, %545
  %549 = fsub fast float %548, %547
  %550 = fmul fast float %541, 5.000000e-01
  %551 = fmul fast float %550, %549
  %552 = fsub fast float 5.000000e-01, %551
  br label %1168

; <label>:553                                     ; preds = %381
  %554 = fsub fast float 1.000000e+00, %476
  %555 = fmul fast float %554, 5.000000e-01
  %556 = fadd fast float %555, %476
  %557 = fsub fast float %454, %275
  %558 = fsub fast float %455, %276
  %559 = fsub fast float %456, %277
  %560 = call float @dx.op.dot3.f32(i32 55, float %557, float %558, float %559, float %267, float %268, float %269)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = fdiv fast float %560, %295
  %562 = call float @dx.op.binary.f32(i32 35, float %561, float -1.000000e+00)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float %562, float 1.000000e+00)  ; FMin(a,b)
  %564 = fmul fast float %563, %267
  %565 = fmul fast float %563, %268
  %566 = fmul fast float %563, %269
  %567 = fsub fast float %557, %564
  %568 = fsub fast float %558, %565
  %569 = fsub fast float %559, %566
  %570 = call float @dx.op.dot3.f32(i32 55, float %567, float %568, float %569, float %567, float %568, float %569)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = call float @dx.op.unary.f32(i32 25, float %570)  ; Rsqrt(value)
  %572 = fmul fast float %567, %571
  %573 = fmul fast float %568, %571
  %574 = fmul fast float %569, %571
  %575 = call float @dx.op.unary.f32(i32 25, float %295)  ; Rsqrt(value)
  %576 = fmul fast float %575, %267
  %577 = fmul fast float %575, %268
  %578 = fmul fast float %575, %269
  br i1 %449, label %579, label %583, !dx.controlflow.hints !42

; <label>:579                                     ; preds = %553
  %580 = fcmp fast olt float %573, 0x3FE6666660000000
  %581 = select i1 %580, float 1.000000e+00, float 0.000000e+00
  %582 = select i1 %580, float 0.000000e+00, float 1.000000e+00
  br label %583

; <label>:583                                     ; preds = %579, %553
  %584 = phi float [ 0.000000e+00, %579 ], [ %576, %553 ]
  %585 = phi float [ %581, %579 ], [ %577, %553 ]
  %586 = phi float [ %582, %579 ], [ %578, %553 ]
  %587 = fmul fast float %585, %574
  %588 = fmul fast float %586, %573
  %589 = fsub fast float %587, %588
  %590 = fmul fast float %586, %572
  %591 = fmul fast float %584, %574
  %592 = fsub fast float %590, %591
  %593 = fmul fast float %584, %573
  %594 = fmul fast float %585, %572
  %595 = fsub fast float %593, %594
  %596 = call float @dx.op.dot3.f32(i32 55, float %589, float %592, float %595, float %589, float %592, float %595)  ; Dot3(ax,ay,az,bx,by,bz)
  %597 = call float @dx.op.unary.f32(i32 25, float %596)  ; Rsqrt(value)
  %598 = fmul fast float %597, %272
  %599 = fmul fast float %598, %589
  %600 = fmul fast float %598, %592
  %601 = fmul fast float %595, %272
  %602 = fmul fast float %601, %597
  %603 = fmul fast float %473, %424
  %604 = call float @dx.op.tertiary.f32(i32 46, float %474, float %430, float %603)  ; FMad(a,b,c)
  %605 = call float @dx.op.tertiary.f32(i32 46, float %556, float %436, float %604)  ; FMad(a,b,c)
  %606 = fadd fast float %605, %442
  %607 = fmul fast float %473, %425
  %608 = call float @dx.op.tertiary.f32(i32 46, float %474, float %431, float %607)  ; FMad(a,b,c)
  %609 = call float @dx.op.tertiary.f32(i32 46, float %556, float %437, float %608)  ; FMad(a,b,c)
  %610 = fadd fast float %609, %443
  %611 = fmul fast float %473, %426
  %612 = call float @dx.op.tertiary.f32(i32 46, float %474, float %432, float %611)  ; FMad(a,b,c)
  %613 = call float @dx.op.tertiary.f32(i32 46, float %556, float %438, float %612)  ; FMad(a,b,c)
  %614 = fadd fast float %613, %444
  %615 = fmul fast float %473, %427
  %616 = call float @dx.op.tertiary.f32(i32 46, float %474, float %433, float %615)  ; FMad(a,b,c)
  %617 = call float @dx.op.tertiary.f32(i32 46, float %556, float %439, float %616)  ; FMad(a,b,c)
  %618 = fadd fast float %617, %445
  %619 = fdiv fast float 1.000000e+00, %618
  %620 = fmul fast float %619, %606
  %621 = fmul fast float %619, %610
  %622 = fmul fast float %619, %614
  %623 = fsub fast float -0.000000e+00, %572
  %624 = fsub fast float -0.000000e+00, %573
  %625 = fsub fast float -0.000000e+00, %574
  %626 = fsub fast float %275, %599
  %627 = fsub fast float %276, %600
  %628 = fsub fast float %277, %602
  %629 = fsub fast float %620, %626
  %630 = fsub fast float %621, %627
  %631 = fsub fast float %622, %628
  %632 = call float @dx.op.dot3.f32(i32 55, float %629, float %630, float %631, float %629, float %630, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = call float @dx.op.unary.f32(i32 25, float %632)  ; Rsqrt(value)
  %634 = fmul fast float %629, %633
  %635 = fmul fast float %630, %633
  %636 = fmul fast float %631, %633
  %637 = fsub fast float %454, %626
  %638 = fsub fast float %455, %627
  %639 = fsub fast float %456, %628
  %640 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %637, float %638, float %639)  ; Dot3(ax,ay,az,bx,by,bz)
  %641 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %634, float %635, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %642 = fdiv fast float 1.000000e+00, %641
  %643 = fmul fast float %642, %640
  %644 = fmul fast float %643, %634
  %645 = fmul fast float %643, %635
  %646 = fmul fast float %643, %636
  %647 = fadd fast float %644, %626
  %648 = fadd fast float %645, %627
  %649 = fadd fast float %646, %628
  %650 = fadd fast float %599, %275
  %651 = fadd fast float %600, %276
  %652 = fadd fast float %602, %277
  %653 = fsub fast float %620, %650
  %654 = fsub fast float %621, %651
  %655 = fsub fast float %622, %652
  %656 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %653, float %654, float %655)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = call float @dx.op.unary.f32(i32 25, float %656)  ; Rsqrt(value)
  %658 = fmul fast float %657, %653
  %659 = fmul fast float %657, %654
  %660 = fmul fast float %657, %655
  %661 = fsub fast float %454, %650
  %662 = fsub fast float %455, %651
  %663 = fsub fast float %456, %652
  %664 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %661, float %662, float %663)  ; Dot3(ax,ay,az,bx,by,bz)
  %665 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %658, float %659, float %660)  ; Dot3(ax,ay,az,bx,by,bz)
  %666 = fdiv fast float 1.000000e+00, %665
  %667 = fmul fast float %666, %664
  %668 = fmul fast float %667, %658
  %669 = fmul fast float %667, %659
  %670 = fmul fast float %667, %660
  %671 = fadd fast float %668, %650
  %672 = fadd fast float %669, %651
  %673 = fadd fast float %670, %652
  %674 = fmul fast float %647, %400
  %675 = call float @dx.op.tertiary.f32(i32 46, float %648, float %406, float %674)  ; FMad(a,b,c)
  %676 = call float @dx.op.tertiary.f32(i32 46, float %649, float %412, float %675)  ; FMad(a,b,c)
  %677 = fadd fast float %676, %418
  %678 = fmul fast float %647, %401
  %679 = call float @dx.op.tertiary.f32(i32 46, float %648, float %407, float %678)  ; FMad(a,b,c)
  %680 = call float @dx.op.tertiary.f32(i32 46, float %649, float %413, float %679)  ; FMad(a,b,c)
  %681 = fadd fast float %680, %419
  %682 = fmul fast float %647, %403
  %683 = call float @dx.op.tertiary.f32(i32 46, float %648, float %409, float %682)  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float %649, float %415, float %683)  ; FMad(a,b,c)
  %685 = fadd fast float %684, %421
  %686 = fmul fast float %671, %400
  %687 = call float @dx.op.tertiary.f32(i32 46, float %672, float %406, float %686)  ; FMad(a,b,c)
  %688 = call float @dx.op.tertiary.f32(i32 46, float %673, float %412, float %687)  ; FMad(a,b,c)
  %689 = fadd fast float %688, %418
  %690 = fmul fast float %671, %401
  %691 = call float @dx.op.tertiary.f32(i32 46, float %672, float %407, float %690)  ; FMad(a,b,c)
  %692 = call float @dx.op.tertiary.f32(i32 46, float %673, float %413, float %691)  ; FMad(a,b,c)
  %693 = fadd fast float %692, %419
  %694 = fmul fast float %671, %403
  %695 = call float @dx.op.tertiary.f32(i32 46, float %672, float %409, float %694)  ; FMad(a,b,c)
  %696 = call float @dx.op.tertiary.f32(i32 46, float %673, float %415, float %695)  ; FMad(a,b,c)
  %697 = fadd fast float %696, %421
  %698 = fdiv fast float 1.000000e+00, %685
  %699 = fmul fast float %698, %677
  %700 = fmul fast float %698, %681
  %701 = fdiv fast float 1.000000e+00, %697
  %702 = fmul fast float %701, %689
  %703 = fmul fast float %701, %693
  %704 = fsub fast float %702, %699
  %705 = fsub fast float %703, %700
  %706 = call float @dx.op.dot2.f32(i32 54, float %704, float %705, float %704, float %705)  ; Dot2(ax,ay,bx,by)
  %707 = call float @dx.op.unary.f32(i32 25, float %706)  ; Rsqrt(value)
  %708 = fmul fast float %704, %707
  %709 = fmul fast float %705, %707
  %710 = fmul fast float %704, %704
  %711 = fmul fast float %705, %705
  %712 = fadd fast float %710, %711
  %713 = call float @dx.op.unary.f32(i32 24, float %712)  ; Sqrt(value)
  %714 = fmul fast float %713, 5.000000e-01
  br i1 %449, label %807, label %715, !dx.controlflow.hints !43

; <label>:715                                     ; preds = %583
  %716 = fsub fast float %275, %267
  %717 = fsub fast float %276, %268
  %718 = fsub fast float %277, %269
  %719 = fsub fast float %620, %716
  %720 = fsub fast float %621, %717
  %721 = fsub fast float %622, %718
  %722 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %719, float %720, float %721)  ; Dot3(ax,ay,az,bx,by,bz)
  %723 = call float @dx.op.unary.f32(i32 25, float %722)  ; Rsqrt(value)
  %724 = fmul fast float %723, %719
  %725 = fmul fast float %723, %720
  %726 = fmul fast float %723, %721
  %727 = fsub fast float %454, %716
  %728 = fsub fast float %455, %717
  %729 = fsub fast float %456, %718
  %730 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %727, float %728, float %729)  ; Dot3(ax,ay,az,bx,by,bz)
  %731 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %724, float %725, float %726)  ; Dot3(ax,ay,az,bx,by,bz)
  %732 = fdiv fast float 1.000000e+00, %731
  %733 = fmul fast float %732, %730
  %734 = fmul fast float %733, %724
  %735 = fmul fast float %733, %725
  %736 = fmul fast float %733, %726
  %737 = fadd fast float %734, %716
  %738 = fadd fast float %735, %717
  %739 = fadd fast float %736, %718
  %740 = fadd fast float %275, %267
  %741 = fadd fast float %276, %268
  %742 = fadd fast float %277, %269
  %743 = fsub fast float %620, %740
  %744 = fsub fast float %621, %741
  %745 = fsub fast float %622, %742
  %746 = call float @dx.op.dot3.f32(i32 55, float %743, float %744, float %745, float %743, float %744, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %747 = call float @dx.op.unary.f32(i32 25, float %746)  ; Rsqrt(value)
  %748 = fmul fast float %747, %743
  %749 = fmul fast float %747, %744
  %750 = fmul fast float %747, %745
  %751 = fsub fast float %454, %740
  %752 = fsub fast float %455, %741
  %753 = fsub fast float %456, %742
  %754 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %751, float %752, float %753)  ; Dot3(ax,ay,az,bx,by,bz)
  %755 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %748, float %749, float %750)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = fdiv fast float 1.000000e+00, %755
  %757 = fmul fast float %756, %754
  %758 = fmul fast float %757, %748
  %759 = fmul fast float %757, %749
  %760 = fmul fast float %757, %750
  %761 = fadd fast float %758, %740
  %762 = fadd fast float %759, %741
  %763 = fadd fast float %760, %742
  %764 = fmul fast float %737, %400
  %765 = call float @dx.op.tertiary.f32(i32 46, float %738, float %406, float %764)  ; FMad(a,b,c)
  %766 = call float @dx.op.tertiary.f32(i32 46, float %739, float %412, float %765)  ; FMad(a,b,c)
  %767 = fadd fast float %766, %418
  %768 = fmul fast float %737, %401
  %769 = call float @dx.op.tertiary.f32(i32 46, float %738, float %407, float %768)  ; FMad(a,b,c)
  %770 = call float @dx.op.tertiary.f32(i32 46, float %739, float %413, float %769)  ; FMad(a,b,c)
  %771 = fadd fast float %770, %419
  %772 = fmul fast float %737, %403
  %773 = call float @dx.op.tertiary.f32(i32 46, float %738, float %409, float %772)  ; FMad(a,b,c)
  %774 = call float @dx.op.tertiary.f32(i32 46, float %739, float %415, float %773)  ; FMad(a,b,c)
  %775 = fadd fast float %774, %421
  %776 = fmul fast float %761, %400
  %777 = call float @dx.op.tertiary.f32(i32 46, float %762, float %406, float %776)  ; FMad(a,b,c)
  %778 = call float @dx.op.tertiary.f32(i32 46, float %763, float %412, float %777)  ; FMad(a,b,c)
  %779 = fadd fast float %778, %418
  %780 = fmul fast float %761, %401
  %781 = call float @dx.op.tertiary.f32(i32 46, float %762, float %407, float %780)  ; FMad(a,b,c)
  %782 = call float @dx.op.tertiary.f32(i32 46, float %763, float %413, float %781)  ; FMad(a,b,c)
  %783 = fadd fast float %782, %419
  %784 = fmul fast float %761, %403
  %785 = call float @dx.op.tertiary.f32(i32 46, float %762, float %409, float %784)  ; FMad(a,b,c)
  %786 = call float @dx.op.tertiary.f32(i32 46, float %763, float %415, float %785)  ; FMad(a,b,c)
  %787 = fadd fast float %786, %421
  %788 = fdiv fast float 1.000000e+00, %775
  %789 = fmul fast float %788, %767
  %790 = fmul fast float %788, %771
  %791 = fdiv fast float 1.000000e+00, %787
  %792 = fmul fast float %791, %779
  %793 = fmul fast float %791, %783
  %794 = fsub fast float %792, %789
  %795 = fsub fast float %793, %790
  %796 = call float @dx.op.dot2.f32(i32 54, float %794, float %795, float %794, float %795)  ; Dot2(ax,ay,bx,by)
  %797 = call float @dx.op.unary.f32(i32 25, float %796)  ; Rsqrt(value)
  %798 = fmul fast float %794, %797
  %799 = fmul fast float %795, %797
  %800 = fmul fast float %794, %794
  %801 = fmul fast float %795, %795
  %802 = fadd fast float %800, %801
  %803 = call float @dx.op.unary.f32(i32 24, float %802)  ; Sqrt(value)
  %804 = fmul fast float %803, 5.000000e-01
  %805 = fcmp fast olt float %804, %714
  br i1 %805, label %806, label %807, !dx.controlflow.hints !44

; <label>:806                                     ; preds = %715
  br label %807

; <label>:807                                     ; preds = %806, %715, %583
  %808 = phi float [ %714, %583 ], [ %804, %806 ], [ %714, %715 ]
  %809 = phi float [ %714, %583 ], [ %714, %806 ], [ %804, %715 ]
  %810 = phi float [ %708, %583 ], [ %708, %806 ], [ %798, %715 ]
  %811 = phi float [ %709, %583 ], [ %709, %806 ], [ %799, %715 ]
  %812 = fmul fast float %808, %395
  %813 = fdiv fast float %812, %809
  %814 = fsub fast float %395, %813
  %815 = fmul fast float %810, %810
  %816 = fmul fast float %815, %814
  %817 = fadd fast float %816, %813
  %818 = fmul fast float %811, %810
  %819 = fmul fast float %818, %814
  %820 = fmul fast float %811, %811
  %821 = fmul fast float %820, %814
  %822 = fadd fast float %821, %813
  %823 = fmul fast float %817, %479
  %824 = call float @dx.op.tertiary.f32(i32 46, float %478, float %819, float %823)  ; FMad(a,b,c)
  %825 = fmul fast float %819, %479
  %826 = call float @dx.op.tertiary.f32(i32 46, float %478, float %822, float %825)  ; FMad(a,b,c)
  %827 = fmul fast float %817, %480
  %828 = call float @dx.op.tertiary.f32(i32 46, float %479, float %819, float %827)  ; FMad(a,b,c)
  %829 = fmul fast float %819, %480
  %830 = call float @dx.op.tertiary.f32(i32 46, float %479, float %822, float %829)  ; FMad(a,b,c)
  br label %831

; <label>:831                                     ; preds = %869, %807
  %832 = phi float [ 0.000000e+00, %807 ], [ %870, %869 ]
  %833 = phi float [ 0.000000e+00, %807 ], [ %871, %869 ]
  %834 = phi float [ 0.000000e+00, %807 ], [ %872, %869 ]
  %835 = phi float [ 0.000000e+00, %807 ], [ %873, %869 ]
  %836 = phi i32 [ 0, %807 ], [ %874, %869 ]
  %837 = mul i32 %836, 2
  %838 = add i32 0, %837
  %839 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %838
  %840 = load float, float* %839, align 4
  %841 = mul i32 %836, 2
  %842 = add i32 1, %841
  %843 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %842
  %844 = load float, float* %843, align 4
  %845 = fmul fast float %840, %824
  %846 = call float @dx.op.tertiary.f32(i32 46, float %844, float %828, float %845)  ; FMad(a,b,c)
  %847 = fmul fast float %840, %826
  %848 = call float @dx.op.tertiary.f32(i32 46, float %844, float %830, float %847)  ; FMad(a,b,c)
  %849 = fadd fast float %846, %473
  %850 = fadd fast float %848, %474
  %851 = fmul fast float %849, %390
  %852 = fmul fast float %850, %390
  %853 = call float @dx.op.binary.f32(i32 35, float %851, float %386)  ; FMax(a,b)
  %854 = call float @dx.op.binary.f32(i32 35, float %852, float %386)  ; FMax(a,b)
  %855 = call float @dx.op.binary.f32(i32 36, float %853, float %387)  ; FMin(a,b)
  %856 = call float @dx.op.binary.f32(i32 36, float %854, float %387)  ; FMin(a,b)
  %857 = fadd fast float %855, %384
  %858 = fadd fast float %856, %385
  %859 = uitofp i32 %446 to float
  %860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %857, float %858, float %859, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = fadd fast float %476, %394
  %863 = fcmp fast olt float %862, %861
  br i1 %863, label %864, label %869, !dx.controlflow.hints !45

; <label>:864                                     ; preds = %831
  %865 = fadd fast float %861, %834
  %866 = fadd fast float %846, %832
  %867 = fadd fast float %848, %833
  %868 = fadd fast float %835, 1.000000e+00
  br label %869

; <label>:869                                     ; preds = %864, %831
  %870 = phi float [ %866, %864 ], [ %832, %831 ]
  %871 = phi float [ %867, %864 ], [ %833, %831 ]
  %872 = phi float [ %865, %864 ], [ %834, %831 ]
  %873 = phi float [ %868, %864 ], [ %835, %831 ]
  %874 = add nuw nsw i32 %836, 1
  %875 = icmp eq i32 %874, 8
  br i1 %875, label %876, label %831

; <label>:876                                     ; preds = %869
  %877 = fdiv fast float 1.000000e+00, %873
  %878 = fcmp fast oeq float %873, 0.000000e+00
  %879 = fmul fast float %877, %872
  %880 = select i1 %878, float -1.000000e+00, float %879
  %881 = fcmp fast olt float %880, 0.000000e+00
  br i1 %881, label %1168, label %882, !dx.controlflow.hints !46

; <label>:882                                     ; preds = %876
  %883 = fmul fast float %877, %871
  %884 = select i1 %878, float 0.000000e+00, float %883
  %885 = fmul fast float %877, %870
  %886 = select i1 %878, float 0.000000e+00, float %885
  %887 = fadd fast float %886, %473
  %888 = fadd fast float %884, %474
  br i1 %449, label %889, label %893, !dx.controlflow.hints !42

; <label>:889                                     ; preds = %882
  %890 = fcmp fast olt float %573, 0x3FE6666660000000
  %891 = select i1 %890, float 1.000000e+00, float 0.000000e+00
  %892 = select i1 %890, float 0.000000e+00, float 1.000000e+00
  br label %893

; <label>:893                                     ; preds = %889, %882
  %894 = phi float [ 0.000000e+00, %889 ], [ %576, %882 ]
  %895 = phi float [ %891, %889 ], [ %577, %882 ]
  %896 = phi float [ %892, %889 ], [ %578, %882 ]
  %897 = fmul fast float %895, %574
  %898 = fmul fast float %896, %573
  %899 = fsub fast float %897, %898
  %900 = fmul fast float %896, %572
  %901 = fmul fast float %894, %574
  %902 = fsub fast float %900, %901
  %903 = fmul fast float %894, %573
  %904 = fmul fast float %895, %572
  %905 = fsub fast float %903, %904
  %906 = call float @dx.op.dot3.f32(i32 55, float %899, float %902, float %905, float %899, float %902, float %905)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = call float @dx.op.unary.f32(i32 25, float %906)  ; Rsqrt(value)
  %908 = fmul fast float %907, %272
  %909 = fmul fast float %908, %899
  %910 = fmul fast float %908, %902
  %911 = fmul fast float %905, %272
  %912 = fmul fast float %911, %907
  %913 = fmul fast float %887, %424
  %914 = call float @dx.op.tertiary.f32(i32 46, float %888, float %430, float %913)  ; FMad(a,b,c)
  %915 = call float @dx.op.tertiary.f32(i32 46, float %880, float %436, float %914)  ; FMad(a,b,c)
  %916 = fadd fast float %915, %442
  %917 = fmul fast float %887, %425
  %918 = call float @dx.op.tertiary.f32(i32 46, float %888, float %431, float %917)  ; FMad(a,b,c)
  %919 = call float @dx.op.tertiary.f32(i32 46, float %880, float %437, float %918)  ; FMad(a,b,c)
  %920 = fadd fast float %919, %443
  %921 = fmul fast float %887, %426
  %922 = call float @dx.op.tertiary.f32(i32 46, float %888, float %432, float %921)  ; FMad(a,b,c)
  %923 = call float @dx.op.tertiary.f32(i32 46, float %880, float %438, float %922)  ; FMad(a,b,c)
  %924 = fadd fast float %923, %444
  %925 = fmul fast float %887, %427
  %926 = call float @dx.op.tertiary.f32(i32 46, float %888, float %433, float %925)  ; FMad(a,b,c)
  %927 = call float @dx.op.tertiary.f32(i32 46, float %880, float %439, float %926)  ; FMad(a,b,c)
  %928 = fadd fast float %927, %445
  %929 = fdiv fast float 1.000000e+00, %928
  %930 = fmul fast float %929, %916
  %931 = fmul fast float %929, %920
  %932 = fmul fast float %929, %924
  %933 = fsub fast float %275, %909
  %934 = fsub fast float %276, %910
  %935 = fsub fast float %277, %912
  %936 = fsub fast float %930, %933
  %937 = fsub fast float %931, %934
  %938 = fsub fast float %932, %935
  %939 = call float @dx.op.dot3.f32(i32 55, float %936, float %937, float %938, float %936, float %937, float %938)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = call float @dx.op.unary.f32(i32 25, float %939)  ; Rsqrt(value)
  %941 = fmul fast float %936, %940
  %942 = fmul fast float %937, %940
  %943 = fmul fast float %938, %940
  %944 = fsub fast float %454, %933
  %945 = fsub fast float %455, %934
  %946 = fsub fast float %456, %935
  %947 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %944, float %945, float %946)  ; Dot3(ax,ay,az,bx,by,bz)
  %948 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %941, float %942, float %943)  ; Dot3(ax,ay,az,bx,by,bz)
  %949 = fdiv fast float 1.000000e+00, %948
  %950 = fmul fast float %949, %947
  %951 = fmul fast float %950, %941
  %952 = fmul fast float %950, %942
  %953 = fmul fast float %950, %943
  %954 = fadd fast float %951, %933
  %955 = fadd fast float %952, %934
  %956 = fadd fast float %953, %935
  %957 = fadd fast float %909, %275
  %958 = fadd fast float %910, %276
  %959 = fadd fast float %912, %277
  %960 = fsub fast float %930, %957
  %961 = fsub fast float %931, %958
  %962 = fsub fast float %932, %959
  %963 = call float @dx.op.dot3.f32(i32 55, float %960, float %961, float %962, float %960, float %961, float %962)  ; Dot3(ax,ay,az,bx,by,bz)
  %964 = call float @dx.op.unary.f32(i32 25, float %963)  ; Rsqrt(value)
  %965 = fmul fast float %964, %960
  %966 = fmul fast float %964, %961
  %967 = fmul fast float %964, %962
  %968 = fsub fast float %454, %957
  %969 = fsub fast float %455, %958
  %970 = fsub fast float %456, %959
  %971 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %968, float %969, float %970)  ; Dot3(ax,ay,az,bx,by,bz)
  %972 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %965, float %966, float %967)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = fdiv fast float 1.000000e+00, %972
  %974 = fmul fast float %973, %971
  %975 = fmul fast float %974, %965
  %976 = fmul fast float %974, %966
  %977 = fmul fast float %974, %967
  %978 = fadd fast float %975, %957
  %979 = fadd fast float %976, %958
  %980 = fadd fast float %977, %959
  %981 = fmul fast float %954, %400
  %982 = call float @dx.op.tertiary.f32(i32 46, float %955, float %406, float %981)  ; FMad(a,b,c)
  %983 = call float @dx.op.tertiary.f32(i32 46, float %956, float %412, float %982)  ; FMad(a,b,c)
  %984 = fadd fast float %983, %418
  %985 = fmul fast float %954, %401
  %986 = call float @dx.op.tertiary.f32(i32 46, float %955, float %407, float %985)  ; FMad(a,b,c)
  %987 = call float @dx.op.tertiary.f32(i32 46, float %956, float %413, float %986)  ; FMad(a,b,c)
  %988 = fadd fast float %987, %419
  %989 = fmul fast float %954, %403
  %990 = call float @dx.op.tertiary.f32(i32 46, float %955, float %409, float %989)  ; FMad(a,b,c)
  %991 = call float @dx.op.tertiary.f32(i32 46, float %956, float %415, float %990)  ; FMad(a,b,c)
  %992 = fadd fast float %991, %421
  %993 = fmul fast float %978, %400
  %994 = call float @dx.op.tertiary.f32(i32 46, float %979, float %406, float %993)  ; FMad(a,b,c)
  %995 = call float @dx.op.tertiary.f32(i32 46, float %980, float %412, float %994)  ; FMad(a,b,c)
  %996 = fadd fast float %995, %418
  %997 = fmul fast float %978, %401
  %998 = call float @dx.op.tertiary.f32(i32 46, float %979, float %407, float %997)  ; FMad(a,b,c)
  %999 = call float @dx.op.tertiary.f32(i32 46, float %980, float %413, float %998)  ; FMad(a,b,c)
  %1000 = fadd fast float %999, %419
  %1001 = fmul fast float %978, %403
  %1002 = call float @dx.op.tertiary.f32(i32 46, float %979, float %409, float %1001)  ; FMad(a,b,c)
  %1003 = call float @dx.op.tertiary.f32(i32 46, float %980, float %415, float %1002)  ; FMad(a,b,c)
  %1004 = fadd fast float %1003, %421
  %1005 = fdiv fast float 1.000000e+00, %992
  %1006 = fmul fast float %1005, %984
  %1007 = fmul fast float %1005, %988
  %1008 = fdiv fast float 1.000000e+00, %1004
  %1009 = fmul fast float %1008, %996
  %1010 = fmul fast float %1008, %1000
  %1011 = fsub fast float %1009, %1006
  %1012 = fsub fast float %1010, %1007
  %1013 = call float @dx.op.dot2.f32(i32 54, float %1011, float %1012, float %1011, float %1012)  ; Dot2(ax,ay,bx,by)
  %1014 = call float @dx.op.unary.f32(i32 25, float %1013)  ; Rsqrt(value)
  %1015 = fmul fast float %1011, %1014
  %1016 = fmul fast float %1012, %1014
  %1017 = fmul fast float %1011, %1011
  %1018 = fmul fast float %1012, %1012
  %1019 = fadd fast float %1017, %1018
  %1020 = call float @dx.op.unary.f32(i32 24, float %1019)  ; Sqrt(value)
  %1021 = fmul fast float %1020, 5.000000e-01
  br i1 %449, label %1114, label %1022, !dx.controlflow.hints !43

; <label>:1022                                    ; preds = %893
  %1023 = fsub fast float %275, %267
  %1024 = fsub fast float %276, %268
  %1025 = fsub fast float %277, %269
  %1026 = fsub fast float %930, %1023
  %1027 = fsub fast float %931, %1024
  %1028 = fsub fast float %932, %1025
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1027, float %1028, float %1026, float %1027, float %1028)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = call float @dx.op.unary.f32(i32 25, float %1029)  ; Rsqrt(value)
  %1031 = fmul fast float %1030, %1026
  %1032 = fmul fast float %1030, %1027
  %1033 = fmul fast float %1030, %1028
  %1034 = fsub fast float %454, %1023
  %1035 = fsub fast float %455, %1024
  %1036 = fsub fast float %456, %1025
  %1037 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %1034, float %1035, float %1036)  ; Dot3(ax,ay,az,bx,by,bz)
  %1038 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %1031, float %1032, float %1033)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = fdiv fast float 1.000000e+00, %1038
  %1040 = fmul fast float %1039, %1037
  %1041 = fmul fast float %1040, %1031
  %1042 = fmul fast float %1040, %1032
  %1043 = fmul fast float %1040, %1033
  %1044 = fadd fast float %1041, %1023
  %1045 = fadd fast float %1042, %1024
  %1046 = fadd fast float %1043, %1025
  %1047 = fadd fast float %275, %267
  %1048 = fadd fast float %276, %268
  %1049 = fadd fast float %277, %269
  %1050 = fsub fast float %930, %1047
  %1051 = fsub fast float %931, %1048
  %1052 = fsub fast float %932, %1049
  %1053 = call float @dx.op.dot3.f32(i32 55, float %1050, float %1051, float %1052, float %1050, float %1051, float %1052)  ; Dot3(ax,ay,az,bx,by,bz)
  %1054 = call float @dx.op.unary.f32(i32 25, float %1053)  ; Rsqrt(value)
  %1055 = fmul fast float %1054, %1050
  %1056 = fmul fast float %1054, %1051
  %1057 = fmul fast float %1054, %1052
  %1058 = fsub fast float %454, %1047
  %1059 = fsub fast float %455, %1048
  %1060 = fsub fast float %456, %1049
  %1061 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %1058, float %1059, float %1060)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %1055, float %1056, float %1057)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = fdiv fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, %1061
  %1065 = fmul fast float %1064, %1055
  %1066 = fmul fast float %1064, %1056
  %1067 = fmul fast float %1064, %1057
  %1068 = fadd fast float %1065, %1047
  %1069 = fadd fast float %1066, %1048
  %1070 = fadd fast float %1067, %1049
  %1071 = fmul fast float %1044, %400
  %1072 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %406, float %1071)  ; FMad(a,b,c)
  %1073 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %412, float %1072)  ; FMad(a,b,c)
  %1074 = fadd fast float %1073, %418
  %1075 = fmul fast float %1044, %401
  %1076 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %407, float %1075)  ; FMad(a,b,c)
  %1077 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %413, float %1076)  ; FMad(a,b,c)
  %1078 = fadd fast float %1077, %419
  %1079 = fmul fast float %1044, %403
  %1080 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %409, float %1079)  ; FMad(a,b,c)
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %415, float %1080)  ; FMad(a,b,c)
  %1082 = fadd fast float %1081, %421
  %1083 = fmul fast float %1068, %400
  %1084 = call float @dx.op.tertiary.f32(i32 46, float %1069, float %406, float %1083)  ; FMad(a,b,c)
  %1085 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %412, float %1084)  ; FMad(a,b,c)
  %1086 = fadd fast float %1085, %418
  %1087 = fmul fast float %1068, %401
  %1088 = call float @dx.op.tertiary.f32(i32 46, float %1069, float %407, float %1087)  ; FMad(a,b,c)
  %1089 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %413, float %1088)  ; FMad(a,b,c)
  %1090 = fadd fast float %1089, %419
  %1091 = fmul fast float %1068, %403
  %1092 = call float @dx.op.tertiary.f32(i32 46, float %1069, float %409, float %1091)  ; FMad(a,b,c)
  %1093 = call float @dx.op.tertiary.f32(i32 46, float %1070, float %415, float %1092)  ; FMad(a,b,c)
  %1094 = fadd fast float %1093, %421
  %1095 = fdiv fast float 1.000000e+00, %1082
  %1096 = fmul fast float %1095, %1074
  %1097 = fmul fast float %1095, %1078
  %1098 = fdiv fast float 1.000000e+00, %1094
  %1099 = fmul fast float %1098, %1086
  %1100 = fmul fast float %1098, %1090
  %1101 = fsub fast float %1099, %1096
  %1102 = fsub fast float %1100, %1097
  %1103 = call float @dx.op.dot2.f32(i32 54, float %1101, float %1102, float %1101, float %1102)  ; Dot2(ax,ay,bx,by)
  %1104 = call float @dx.op.unary.f32(i32 25, float %1103)  ; Rsqrt(value)
  %1105 = fmul fast float %1101, %1104
  %1106 = fmul fast float %1102, %1104
  %1107 = fmul fast float %1101, %1101
  %1108 = fmul fast float %1102, %1102
  %1109 = fadd fast float %1107, %1108
  %1110 = call float @dx.op.unary.f32(i32 24, float %1109)  ; Sqrt(value)
  %1111 = fmul fast float %1110, 5.000000e-01
  %1112 = fcmp fast olt float %1111, %1021
  br i1 %1112, label %1113, label %1114, !dx.controlflow.hints !44

; <label>:1113                                    ; preds = %1022
  br label %1114

; <label>:1114                                    ; preds = %1113, %1022, %893
  %1115 = phi float [ %1021, %893 ], [ %1111, %1113 ], [ %1021, %1022 ]
  %1116 = phi float [ %1021, %893 ], [ %1021, %1113 ], [ %1111, %1022 ]
  %1117 = phi float [ %1015, %893 ], [ %1015, %1113 ], [ %1105, %1022 ]
  %1118 = phi float [ %1016, %893 ], [ %1016, %1113 ], [ %1106, %1022 ]
  %1119 = fsub fast float %1116, %1115
  %1120 = fmul fast float %1117, %1117
  %1121 = fmul fast float %1120, %1119
  %1122 = fadd fast float %1121, %1115
  %1123 = fmul fast float %1117, %1119
  %1124 = fmul fast float %1123, %1118
  %1125 = fmul fast float %1118, %1118
  %1126 = fmul fast float %1125, %1119
  %1127 = fadd fast float %1126, %1115
  %1128 = fmul fast float %1122, %479
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %478, float %1124, float %1128)  ; FMad(a,b,c)
  %1130 = fmul fast float %1124, %479
  %1131 = call float @dx.op.tertiary.f32(i32 46, float %478, float %1127, float %1130)  ; FMad(a,b,c)
  %1132 = fmul fast float %1122, %480
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %479, float %1124, float %1132)  ; FMad(a,b,c)
  %1134 = fmul fast float %1124, %480
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %479, float %1127, float %1134)  ; FMad(a,b,c)
  br label %1136

; <label>:1136                                    ; preds = %1136, %1114
  %1137 = phi float [ 0.000000e+00, %1114 ], [ %1163, %1136 ]
  %1138 = phi i32 [ 0, %1114 ], [ %1164, %1136 ]
  %1139 = mul i32 %1138, 2
  %1140 = add i32 0, %1139
  %1141 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1140
  %1142 = load float, float* %1141, align 4
  %1143 = mul i32 %1138, 2
  %1144 = add i32 1, %1143
  %1145 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1144
  %1146 = load float, float* %1145, align 4
  %1147 = fmul fast float %1142, %1129
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1146, float %1133, float %1147)  ; FMad(a,b,c)
  %1149 = fmul fast float %1142, %1131
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1146, float %1135, float %1149)  ; FMad(a,b,c)
  %1151 = fadd fast float %1148, %473
  %1152 = fadd fast float %1150, %474
  %1153 = fmul fast float %1151, %390
  %1154 = fmul fast float %1152, %390
  %1155 = call float @dx.op.binary.f32(i32 35, float %1153, float %386)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 35, float %1154, float %386)  ; FMax(a,b)
  %1157 = call float @dx.op.binary.f32(i32 36, float %1155, float %387)  ; FMin(a,b)
  %1158 = call float @dx.op.binary.f32(i32 36, float %1156, float %387)  ; FMin(a,b)
  %1159 = fadd fast float %1157, %384
  %1160 = fadd fast float %1158, %385
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %17, float %1159, float %1160, float %859, float undef, i32 0, i32 0, i32 undef, float %862)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = fadd fast float %1162, %1137
  %1164 = add nuw nsw i32 %1138, 1
  %1165 = icmp eq i32 %1164, 8
  br i1 %1165, label %1166, label %1136

; <label>:1166                                    ; preds = %1136
  %1167 = fmul fast float %1163, 1.250000e-01
  br label %1168

; <label>:1168                                    ; preds = %1166, %876, %525
  %1169 = phi float [ %552, %525 ], [ %1167, %1166 ], [ 1.000000e+00, %876 ]
  %1170 = fadd fast float %1169, -1.000000e+00
  %1171 = fmul fast float %1170, %363
  %1172 = fadd fast float %1171, 1.000000e+00
  %1173 = fmul fast float %1172, %375
  br label %1174

; <label>:1174                                    ; preds = %1168, %342
  %1175 = phi float [ %1173, %1168 ], [ %375, %342 ]
  %1176 = call float @dx.op.binary.f32(i32 36, float %1175, float %1175)  ; FMin(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1175, float %1176)  ; FMin(a,b)
  %1178 = fcmp fast ogt float %1177, 0x3F10000000000000
  %1179 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1178)  ; WaveAnyTrue(cond)
  %1180 = select i1 %1179, i32 %254, i32 0
  %1181 = or i32 %249, %1180
  %1182 = lshr i32 %195, 5
  %1183 = lshr i32 %196, 5
  %1184 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1182, i32 %1183, i32 %252, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = lshr i32 %195, 1
  %1187 = lshr i32 %196, 1
  %1188 = and i32 %1186, 15
  %1189 = and i32 %1187, 15
  %1190 = and i32 %195, 1
  %1191 = shl i32 %196, 1
  %1192 = and i32 %1191, 2
  %1193 = or i32 %1192, %1190
  %1194 = lshr i32 %1185, 2
  %1195 = and i32 %1194, 8176
  %1196 = lshr i32 %1185, 11
  %1197 = and i32 %1196, 4080
  %1198 = or i32 %1195, %1188
  %1199 = or i32 %1197, %1189
  %1200 = lshr i32 %1185, 21
  %1201 = and i32 %1200, 1020
  %1202 = or i32 %1193, %1201
  %1203 = fmul fast float %1175, 2.550000e+02
  %1204 = fadd fast float %1203, %190
  %1205 = call float @dx.op.unary.f32(i32 27, float %1204)  ; Round_ni(value)
  %1206 = fmul fast float %1205, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1198, i32 %1199, i32 %1202, float %1206, float %1206, float %1206, float %1206, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1207 = icmp eq i32 %250, %254
  br i1 %1207, label %1208, label %248, !llvm.loop !47

; <label>:1208                                    ; preds = %1174
  br label %1209

; <label>:1209                                    ; preds = %1208, %220
  %1210 = phi i32 [ 0, %220 ], [ %1181, %1208 ]
  %1211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.i32 %1211, 0
  %1213 = call i32 @dx.op.tertiary.i32(i32 49, i32 %201, i32 %1212, i32 %221)  ; UMad(a,b,c)
  %1214 = shl i32 %1213, 2
  %1215 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1214, i32 undef, i32 undef, i32 %1210)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1216 = add i32 %221, 1
  %1217 = icmp ugt i32 %1216, %217
  br i1 %1217, label %1218, label %220

; <label>:1218                                    ; preds = %1209
  br label %1219

; <label>:1219                                    ; preds = %1218, %194, %56
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
!32 = !{i32 8, i32 4, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}

