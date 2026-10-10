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
; shader hash: b722ebfe34e25225ad5ad74f22d6b404
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
  br i1 %253, label %1693, label %254, !dx.controlflow.hints !38

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
  br i1 %278, label %1693, label %279

; <label>:279                                     ; preds = %254
  br label %280

; <label>:280                                     ; preds = %1683, %279
  %281 = phi i32 [ %1690, %1683 ], [ %275, %279 ]
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
  br i1 %306, label %1683, label %307

; <label>:307                                     ; preds = %280
  br label %308

; <label>:308                                     ; preds = %1646, %307
  %309 = phi i32 [ %1655, %1646 ], [ 0, %307 ]
  %310 = phi i32 [ %315, %1646 ], [ %305, %307 ]
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
  %423 = select i1 %354, float 1.000000e+00, float %422
  %424 = select i1 %354, float %422, float 1.000000e+00
  %425 = fmul fast float %373, %338
  %426 = fsub fast float 1.000000e+00, %425
  %427 = fmul fast float %426, %344
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %428, %424
  %430 = fmul fast float %429, 2.000000e+00
  %431 = fsub fast float 3.000000e+00, %430
  %432 = fmul fast float %419, %403
  %433 = fmul fast float %429, %429
  %434 = fmul fast float %433, %432
  %435 = fmul fast float %434, %431
  %436 = icmp ne i32 %352, 255
  %437 = call float @dx.op.binary.f32(i32 36, float %435, float %435)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 36, float %435, float %437)  ; FMin(a,b)
  %439 = fcmp fast ogt float %438, 0.000000e+00
  %440 = and i1 %436, %439
  br i1 %440, label %441, label %1355, !dx.controlflow.hints !40

; <label>:441                                     ; preds = %402
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
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  %458 = add nuw nsw i32 %442, 48
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = add nuw nsw i32 %442, 64
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = add nuw nsw i32 %442, 80
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = add nuw nsw i32 %442, 96
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = add nuw nsw i32 %442, 112
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = extractvalue %dx.types.ResRet.f32 %483, 2
  %487 = extractvalue %dx.types.ResRet.f32 %483, 3
  %488 = add nuw nsw i32 %442, 128
  %489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = add nuw nsw i32 %442, 144
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = add nuw nsw i32 %442, 160
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = bitcast float %451 to i32
  %507 = bitcast float %457 to i32
  %508 = and i32 %507, 1
  %509 = icmp ne i32 %508, 0
  %510 = and i32 %507, 2
  %511 = fmul fast float %456, %177
  %512 = fmul fast float %456, %178
  %513 = fmul fast float %456, %179
  %514 = fadd fast float %511, %131
  %515 = fadd fast float %512, %132
  %516 = fadd fast float %513, %133
  %517 = fmul fast float %514, %460
  %518 = call float @dx.op.tertiary.f32(i32 46, float %515, float %466, float %517)  ; FMad(a,b,c)
  %519 = call float @dx.op.tertiary.f32(i32 46, float %516, float %472, float %518)  ; FMad(a,b,c)
  %520 = fadd fast float %519, %478
  %521 = fmul fast float %514, %461
  %522 = call float @dx.op.tertiary.f32(i32 46, float %515, float %467, float %521)  ; FMad(a,b,c)
  %523 = call float @dx.op.tertiary.f32(i32 46, float %516, float %473, float %522)  ; FMad(a,b,c)
  %524 = fadd fast float %523, %479
  %525 = fmul fast float %514, %462
  %526 = call float @dx.op.tertiary.f32(i32 46, float %515, float %468, float %525)  ; FMad(a,b,c)
  %527 = call float @dx.op.tertiary.f32(i32 46, float %516, float %474, float %526)  ; FMad(a,b,c)
  %528 = fadd fast float %527, %480
  %529 = fmul fast float %514, %463
  %530 = call float @dx.op.tertiary.f32(i32 46, float %515, float %469, float %529)  ; FMad(a,b,c)
  %531 = call float @dx.op.tertiary.f32(i32 46, float %516, float %475, float %530)  ; FMad(a,b,c)
  %532 = fadd fast float %531, %481
  %533 = fdiv fast float %520, %532
  %534 = fdiv fast float %524, %532
  %535 = fdiv fast float %528, %532
  %536 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %535)  ; FMax(a,b)
  %537 = fmul fast float %249, 0x401921FB60000000
  %538 = call float @dx.op.unary.f32(i32 13, float %537)  ; Sin(value)
  %539 = call float @dx.op.unary.f32(i32 12, float %537)  ; Cos(value)
  %540 = fsub fast float -0.000000e+00, %538
  %541 = icmp eq i32 %510, 0
  br i1 %541, label %542, label %613, !dx.controlflow.hints !41

; <label>:542                                     ; preds = %441
  %543 = fmul fast float %539, %455
  %544 = call float @dx.op.tertiary.f32(i32 46, float %538, float %455, float 0.000000e+00)  ; FMad(a,b,c)
  %545 = fmul fast float %455, %540
  %546 = call float @dx.op.tertiary.f32(i32 46, float %539, float %455, float 0.000000e+00)  ; FMad(a,b,c)
  br label %547

; <label>:547                                     ; preds = %547, %542
  %548 = phi float [ 0.000000e+00, %542 ], [ %580, %547 ]
  %549 = phi float [ 0.000000e+00, %542 ], [ %582, %547 ]
  %550 = phi i32 [ 0, %542 ], [ %583, %547 ]
  %551 = mul i32 %550, 2
  %552 = add i32 0, %551
  %553 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %552
  %554 = load float, float* %553, align 4
  %555 = mul i32 %550, 2
  %556 = add i32 1, %555
  %557 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %556
  %558 = load float, float* %557, align 4
  %559 = fmul fast float %543, %554
  %560 = call float @dx.op.tertiary.f32(i32 46, float %558, float %545, float %559)  ; FMad(a,b,c)
  %561 = fmul fast float %554, %544
  %562 = call float @dx.op.tertiary.f32(i32 46, float %558, float %546, float %561)  ; FMad(a,b,c)
  %563 = fadd fast float %560, %533
  %564 = fadd fast float %562, %534
  %565 = fmul fast float %563, %450
  %566 = fmul fast float %564, %450
  %567 = call float @dx.op.binary.f32(i32 35, float %565, float %446)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float %566, float %446)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float %567, float %447)  ; FMin(a,b)
  %570 = call float @dx.op.binary.f32(i32 36, float %568, float %447)  ; FMin(a,b)
  %571 = fadd fast float %569, %444
  %572 = fadd fast float %570, %445
  %573 = uitofp i32 %506 to float
  %574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %571, float %572, float %573, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = fsub fast float %575, %536
  %577 = fsub fast float %576, %454
  %578 = fcmp fast ogt float %577, 0.000000e+00
  %579 = select i1 %578, float 1.000000e+00, float 0.000000e+00
  %580 = fadd fast float %579, %548
  %581 = select i1 %578, float %577, float 0.000000e+00
  %582 = fadd fast float %581, %549
  %583 = add nuw nsw i32 %550, 1
  %584 = icmp eq i32 %583, 8
  br i1 %584, label %585, label %547

; <label>:585                                     ; preds = %547
  %586 = fdiv fast float 1.000000e+00, %580
  %587 = fmul fast float %586, %582
  %588 = fdiv fast float 1.000000e+00, %536
  %589 = fmul fast float %587, %588
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = call float @dx.op.binary.f32(i32 35, float %590, float 0.000000e+00)  ; FMax(a,b)
  %592 = fmul fast float %580, 1.250000e-01
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = fmul fast float %593, 2.000000e+00
  %595 = fadd fast float %594, -1.000000e+00
  %596 = fcmp fast ogt float %595, 0.000000e+00
  %597 = fcmp fast olt float %595, 0.000000e+00
  %598 = zext i1 %596 to i32
  %599 = zext i1 %597 to i32
  %600 = sub nsw i32 %598, %599
  %601 = sitofp i32 %600 to float
  %602 = fmul fast float %601, %595
  %603 = fsub fast float 1.000000e+00, %602
  %604 = fmul fast float %603, %603
  %605 = fmul fast float %604, %603
  %606 = fsub fast float %603, %605
  %607 = fmul fast float %606, %591
  %608 = fsub fast float 1.000000e+00, %605
  %609 = fsub fast float %608, %607
  %610 = fmul fast float %601, 5.000000e-01
  %611 = fmul fast float %610, %609
  %612 = fsub fast float 5.000000e-01, %611
  br label %1228

; <label>:613                                     ; preds = %441
  %614 = fsub fast float 1.000000e+00, %536
  %615 = fmul fast float %614, 5.000000e-01
  %616 = fadd fast float %615, %536
  %617 = fsub fast float %514, %335
  %618 = fsub fast float %515, %336
  %619 = fsub fast float %516, %337
  %620 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %327, float %328, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = fdiv fast float %620, %355
  %622 = call float @dx.op.binary.f32(i32 35, float %621, float -1.000000e+00)  ; FMax(a,b)
  %623 = call float @dx.op.binary.f32(i32 36, float %622, float 1.000000e+00)  ; FMin(a,b)
  %624 = fmul fast float %623, %327
  %625 = fmul fast float %623, %328
  %626 = fmul fast float %623, %329
  %627 = fsub fast float %617, %624
  %628 = fsub fast float %618, %625
  %629 = fsub fast float %619, %626
  %630 = call float @dx.op.dot3.f32(i32 55, float %627, float %628, float %629, float %627, float %628, float %629)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = call float @dx.op.unary.f32(i32 25, float %630)  ; Rsqrt(value)
  %632 = fmul fast float %627, %631
  %633 = fmul fast float %628, %631
  %634 = fmul fast float %629, %631
  %635 = call float @dx.op.unary.f32(i32 25, float %355)  ; Rsqrt(value)
  %636 = fmul fast float %635, %327
  %637 = fmul fast float %635, %328
  %638 = fmul fast float %635, %329
  br i1 %509, label %639, label %643, !dx.controlflow.hints !42

; <label>:639                                     ; preds = %613
  %640 = fcmp fast olt float %633, 0x3FE6666660000000
  %641 = select i1 %640, float 1.000000e+00, float 0.000000e+00
  %642 = select i1 %640, float 0.000000e+00, float 1.000000e+00
  br label %643

; <label>:643                                     ; preds = %639, %613
  %644 = phi float [ 0.000000e+00, %639 ], [ %636, %613 ]
  %645 = phi float [ %641, %639 ], [ %637, %613 ]
  %646 = phi float [ %642, %639 ], [ %638, %613 ]
  %647 = fmul fast float %645, %634
  %648 = fmul fast float %646, %633
  %649 = fsub fast float %647, %648
  %650 = fmul fast float %646, %632
  %651 = fmul fast float %644, %634
  %652 = fsub fast float %650, %651
  %653 = fmul fast float %644, %633
  %654 = fmul fast float %645, %632
  %655 = fsub fast float %653, %654
  %656 = call float @dx.op.dot3.f32(i32 55, float %649, float %652, float %655, float %649, float %652, float %655)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = call float @dx.op.unary.f32(i32 25, float %656)  ; Rsqrt(value)
  %658 = fmul fast float %657, %332
  %659 = fmul fast float %658, %649
  %660 = fmul fast float %658, %652
  %661 = fmul fast float %655, %332
  %662 = fmul fast float %661, %657
  %663 = fmul fast float %533, %484
  %664 = call float @dx.op.tertiary.f32(i32 46, float %534, float %490, float %663)  ; FMad(a,b,c)
  %665 = call float @dx.op.tertiary.f32(i32 46, float %616, float %496, float %664)  ; FMad(a,b,c)
  %666 = fadd fast float %665, %502
  %667 = fmul fast float %533, %485
  %668 = call float @dx.op.tertiary.f32(i32 46, float %534, float %491, float %667)  ; FMad(a,b,c)
  %669 = call float @dx.op.tertiary.f32(i32 46, float %616, float %497, float %668)  ; FMad(a,b,c)
  %670 = fadd fast float %669, %503
  %671 = fmul fast float %533, %486
  %672 = call float @dx.op.tertiary.f32(i32 46, float %534, float %492, float %671)  ; FMad(a,b,c)
  %673 = call float @dx.op.tertiary.f32(i32 46, float %616, float %498, float %672)  ; FMad(a,b,c)
  %674 = fadd fast float %673, %504
  %675 = fmul fast float %533, %487
  %676 = call float @dx.op.tertiary.f32(i32 46, float %534, float %493, float %675)  ; FMad(a,b,c)
  %677 = call float @dx.op.tertiary.f32(i32 46, float %616, float %499, float %676)  ; FMad(a,b,c)
  %678 = fadd fast float %677, %505
  %679 = fdiv fast float 1.000000e+00, %678
  %680 = fmul fast float %679, %666
  %681 = fmul fast float %679, %670
  %682 = fmul fast float %679, %674
  %683 = fsub fast float -0.000000e+00, %632
  %684 = fsub fast float -0.000000e+00, %633
  %685 = fsub fast float -0.000000e+00, %634
  %686 = fsub fast float %335, %659
  %687 = fsub fast float %336, %660
  %688 = fsub fast float %337, %662
  %689 = fsub fast float %680, %686
  %690 = fsub fast float %681, %687
  %691 = fsub fast float %682, %688
  %692 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float %689, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.unary.f32(i32 25, float %692)  ; Rsqrt(value)
  %694 = fmul fast float %689, %693
  %695 = fmul fast float %690, %693
  %696 = fmul fast float %691, %693
  %697 = fsub fast float %514, %686
  %698 = fsub fast float %515, %687
  %699 = fsub fast float %516, %688
  %700 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %697, float %698, float %699)  ; Dot3(ax,ay,az,bx,by,bz)
  %701 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %694, float %695, float %696)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = fdiv fast float 1.000000e+00, %701
  %703 = fmul fast float %702, %700
  %704 = fmul fast float %703, %694
  %705 = fmul fast float %703, %695
  %706 = fmul fast float %703, %696
  %707 = fadd fast float %704, %686
  %708 = fadd fast float %705, %687
  %709 = fadd fast float %706, %688
  %710 = fadd fast float %659, %335
  %711 = fadd fast float %660, %336
  %712 = fadd fast float %662, %337
  %713 = fsub fast float %680, %710
  %714 = fsub fast float %681, %711
  %715 = fsub fast float %682, %712
  %716 = call float @dx.op.dot3.f32(i32 55, float %713, float %714, float %715, float %713, float %714, float %715)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = call float @dx.op.unary.f32(i32 25, float %716)  ; Rsqrt(value)
  %718 = fmul fast float %717, %713
  %719 = fmul fast float %717, %714
  %720 = fmul fast float %717, %715
  %721 = fsub fast float %514, %710
  %722 = fsub fast float %515, %711
  %723 = fsub fast float %516, %712
  %724 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %721, float %722, float %723)  ; Dot3(ax,ay,az,bx,by,bz)
  %725 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %718, float %719, float %720)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = fdiv fast float 1.000000e+00, %725
  %727 = fmul fast float %726, %724
  %728 = fmul fast float %727, %718
  %729 = fmul fast float %727, %719
  %730 = fmul fast float %727, %720
  %731 = fadd fast float %728, %710
  %732 = fadd fast float %729, %711
  %733 = fadd fast float %730, %712
  %734 = fmul fast float %707, %460
  %735 = call float @dx.op.tertiary.f32(i32 46, float %708, float %466, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %709, float %472, float %735)  ; FMad(a,b,c)
  %737 = fadd fast float %736, %478
  %738 = fmul fast float %707, %461
  %739 = call float @dx.op.tertiary.f32(i32 46, float %708, float %467, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %709, float %473, float %739)  ; FMad(a,b,c)
  %741 = fadd fast float %740, %479
  %742 = fmul fast float %707, %463
  %743 = call float @dx.op.tertiary.f32(i32 46, float %708, float %469, float %742)  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float %709, float %475, float %743)  ; FMad(a,b,c)
  %745 = fadd fast float %744, %481
  %746 = fmul fast float %731, %460
  %747 = call float @dx.op.tertiary.f32(i32 46, float %732, float %466, float %746)  ; FMad(a,b,c)
  %748 = call float @dx.op.tertiary.f32(i32 46, float %733, float %472, float %747)  ; FMad(a,b,c)
  %749 = fadd fast float %748, %478
  %750 = fmul fast float %731, %461
  %751 = call float @dx.op.tertiary.f32(i32 46, float %732, float %467, float %750)  ; FMad(a,b,c)
  %752 = call float @dx.op.tertiary.f32(i32 46, float %733, float %473, float %751)  ; FMad(a,b,c)
  %753 = fadd fast float %752, %479
  %754 = fmul fast float %731, %463
  %755 = call float @dx.op.tertiary.f32(i32 46, float %732, float %469, float %754)  ; FMad(a,b,c)
  %756 = call float @dx.op.tertiary.f32(i32 46, float %733, float %475, float %755)  ; FMad(a,b,c)
  %757 = fadd fast float %756, %481
  %758 = fdiv fast float 1.000000e+00, %745
  %759 = fmul fast float %758, %737
  %760 = fmul fast float %758, %741
  %761 = fdiv fast float 1.000000e+00, %757
  %762 = fmul fast float %761, %749
  %763 = fmul fast float %761, %753
  %764 = fsub fast float %762, %759
  %765 = fsub fast float %763, %760
  %766 = call float @dx.op.dot2.f32(i32 54, float %764, float %765, float %764, float %765)  ; Dot2(ax,ay,bx,by)
  %767 = call float @dx.op.unary.f32(i32 25, float %766)  ; Rsqrt(value)
  %768 = fmul fast float %764, %767
  %769 = fmul fast float %765, %767
  %770 = fmul fast float %764, %764
  %771 = fmul fast float %765, %765
  %772 = fadd fast float %770, %771
  %773 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %774 = fmul fast float %773, 5.000000e-01
  br i1 %509, label %867, label %775, !dx.controlflow.hints !43

; <label>:775                                     ; preds = %643
  %776 = fsub fast float %335, %327
  %777 = fsub fast float %336, %328
  %778 = fsub fast float %337, %329
  %779 = fsub fast float %680, %776
  %780 = fsub fast float %681, %777
  %781 = fsub fast float %682, %778
  %782 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %779, float %780, float %781)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = call float @dx.op.unary.f32(i32 25, float %782)  ; Rsqrt(value)
  %784 = fmul fast float %783, %779
  %785 = fmul fast float %783, %780
  %786 = fmul fast float %783, %781
  %787 = fsub fast float %514, %776
  %788 = fsub fast float %515, %777
  %789 = fsub fast float %516, %778
  %790 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %787, float %788, float %789)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %784, float %785, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %792 = fdiv fast float 1.000000e+00, %791
  %793 = fmul fast float %792, %790
  %794 = fmul fast float %793, %784
  %795 = fmul fast float %793, %785
  %796 = fmul fast float %793, %786
  %797 = fadd fast float %794, %776
  %798 = fadd fast float %795, %777
  %799 = fadd fast float %796, %778
  %800 = fadd fast float %335, %327
  %801 = fadd fast float %336, %328
  %802 = fadd fast float %337, %329
  %803 = fsub fast float %680, %800
  %804 = fsub fast float %681, %801
  %805 = fsub fast float %682, %802
  %806 = call float @dx.op.dot3.f32(i32 55, float %803, float %804, float %805, float %803, float %804, float %805)  ; Dot3(ax,ay,az,bx,by,bz)
  %807 = call float @dx.op.unary.f32(i32 25, float %806)  ; Rsqrt(value)
  %808 = fmul fast float %807, %803
  %809 = fmul fast float %807, %804
  %810 = fmul fast float %807, %805
  %811 = fsub fast float %514, %800
  %812 = fsub fast float %515, %801
  %813 = fsub fast float %516, %802
  %814 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %811, float %812, float %813)  ; Dot3(ax,ay,az,bx,by,bz)
  %815 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %808, float %809, float %810)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = fdiv fast float 1.000000e+00, %815
  %817 = fmul fast float %816, %814
  %818 = fmul fast float %817, %808
  %819 = fmul fast float %817, %809
  %820 = fmul fast float %817, %810
  %821 = fadd fast float %818, %800
  %822 = fadd fast float %819, %801
  %823 = fadd fast float %820, %802
  %824 = fmul fast float %797, %460
  %825 = call float @dx.op.tertiary.f32(i32 46, float %798, float %466, float %824)  ; FMad(a,b,c)
  %826 = call float @dx.op.tertiary.f32(i32 46, float %799, float %472, float %825)  ; FMad(a,b,c)
  %827 = fadd fast float %826, %478
  %828 = fmul fast float %797, %461
  %829 = call float @dx.op.tertiary.f32(i32 46, float %798, float %467, float %828)  ; FMad(a,b,c)
  %830 = call float @dx.op.tertiary.f32(i32 46, float %799, float %473, float %829)  ; FMad(a,b,c)
  %831 = fadd fast float %830, %479
  %832 = fmul fast float %797, %463
  %833 = call float @dx.op.tertiary.f32(i32 46, float %798, float %469, float %832)  ; FMad(a,b,c)
  %834 = call float @dx.op.tertiary.f32(i32 46, float %799, float %475, float %833)  ; FMad(a,b,c)
  %835 = fadd fast float %834, %481
  %836 = fmul fast float %821, %460
  %837 = call float @dx.op.tertiary.f32(i32 46, float %822, float %466, float %836)  ; FMad(a,b,c)
  %838 = call float @dx.op.tertiary.f32(i32 46, float %823, float %472, float %837)  ; FMad(a,b,c)
  %839 = fadd fast float %838, %478
  %840 = fmul fast float %821, %461
  %841 = call float @dx.op.tertiary.f32(i32 46, float %822, float %467, float %840)  ; FMad(a,b,c)
  %842 = call float @dx.op.tertiary.f32(i32 46, float %823, float %473, float %841)  ; FMad(a,b,c)
  %843 = fadd fast float %842, %479
  %844 = fmul fast float %821, %463
  %845 = call float @dx.op.tertiary.f32(i32 46, float %822, float %469, float %844)  ; FMad(a,b,c)
  %846 = call float @dx.op.tertiary.f32(i32 46, float %823, float %475, float %845)  ; FMad(a,b,c)
  %847 = fadd fast float %846, %481
  %848 = fdiv fast float 1.000000e+00, %835
  %849 = fmul fast float %848, %827
  %850 = fmul fast float %848, %831
  %851 = fdiv fast float 1.000000e+00, %847
  %852 = fmul fast float %851, %839
  %853 = fmul fast float %851, %843
  %854 = fsub fast float %852, %849
  %855 = fsub fast float %853, %850
  %856 = call float @dx.op.dot2.f32(i32 54, float %854, float %855, float %854, float %855)  ; Dot2(ax,ay,bx,by)
  %857 = call float @dx.op.unary.f32(i32 25, float %856)  ; Rsqrt(value)
  %858 = fmul fast float %854, %857
  %859 = fmul fast float %855, %857
  %860 = fmul fast float %854, %854
  %861 = fmul fast float %855, %855
  %862 = fadd fast float %860, %861
  %863 = call float @dx.op.unary.f32(i32 24, float %862)  ; Sqrt(value)
  %864 = fmul fast float %863, 5.000000e-01
  %865 = fcmp fast olt float %864, %774
  br i1 %865, label %866, label %867, !dx.controlflow.hints !44

; <label>:866                                     ; preds = %775
  br label %867

; <label>:867                                     ; preds = %866, %775, %643
  %868 = phi float [ %774, %643 ], [ %864, %866 ], [ %774, %775 ]
  %869 = phi float [ %774, %643 ], [ %774, %866 ], [ %864, %775 ]
  %870 = phi float [ %768, %643 ], [ %768, %866 ], [ %858, %775 ]
  %871 = phi float [ %769, %643 ], [ %769, %866 ], [ %859, %775 ]
  %872 = fmul fast float %868, %455
  %873 = fdiv fast float %872, %869
  %874 = fsub fast float %455, %873
  %875 = fmul fast float %870, %870
  %876 = fmul fast float %875, %874
  %877 = fadd fast float %876, %873
  %878 = fmul fast float %871, %870
  %879 = fmul fast float %878, %874
  %880 = fmul fast float %871, %871
  %881 = fmul fast float %880, %874
  %882 = fadd fast float %881, %873
  %883 = fmul fast float %877, %539
  %884 = call float @dx.op.tertiary.f32(i32 46, float %538, float %879, float %883)  ; FMad(a,b,c)
  %885 = fmul fast float %879, %539
  %886 = call float @dx.op.tertiary.f32(i32 46, float %538, float %882, float %885)  ; FMad(a,b,c)
  %887 = fmul fast float %877, %540
  %888 = call float @dx.op.tertiary.f32(i32 46, float %539, float %879, float %887)  ; FMad(a,b,c)
  %889 = fmul fast float %879, %540
  %890 = call float @dx.op.tertiary.f32(i32 46, float %539, float %882, float %889)  ; FMad(a,b,c)
  br label %891

; <label>:891                                     ; preds = %929, %867
  %892 = phi float [ 0.000000e+00, %867 ], [ %930, %929 ]
  %893 = phi float [ 0.000000e+00, %867 ], [ %931, %929 ]
  %894 = phi float [ 0.000000e+00, %867 ], [ %932, %929 ]
  %895 = phi float [ 0.000000e+00, %867 ], [ %933, %929 ]
  %896 = phi i32 [ 0, %867 ], [ %934, %929 ]
  %897 = mul i32 %896, 2
  %898 = add i32 0, %897
  %899 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %898
  %900 = load float, float* %899, align 4
  %901 = mul i32 %896, 2
  %902 = add i32 1, %901
  %903 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %902
  %904 = load float, float* %903, align 4
  %905 = fmul fast float %900, %884
  %906 = call float @dx.op.tertiary.f32(i32 46, float %904, float %888, float %905)  ; FMad(a,b,c)
  %907 = fmul fast float %900, %886
  %908 = call float @dx.op.tertiary.f32(i32 46, float %904, float %890, float %907)  ; FMad(a,b,c)
  %909 = fadd fast float %906, %533
  %910 = fadd fast float %908, %534
  %911 = fmul fast float %909, %450
  %912 = fmul fast float %910, %450
  %913 = call float @dx.op.binary.f32(i32 35, float %911, float %446)  ; FMax(a,b)
  %914 = call float @dx.op.binary.f32(i32 35, float %912, float %446)  ; FMax(a,b)
  %915 = call float @dx.op.binary.f32(i32 36, float %913, float %447)  ; FMin(a,b)
  %916 = call float @dx.op.binary.f32(i32 36, float %914, float %447)  ; FMin(a,b)
  %917 = fadd fast float %915, %444
  %918 = fadd fast float %916, %445
  %919 = uitofp i32 %506 to float
  %920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %917, float %918, float %919, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = fadd fast float %536, %454
  %923 = fcmp fast olt float %922, %921
  br i1 %923, label %924, label %929, !dx.controlflow.hints !45

; <label>:924                                     ; preds = %891
  %925 = fadd fast float %921, %894
  %926 = fadd fast float %906, %892
  %927 = fadd fast float %908, %893
  %928 = fadd fast float %895, 1.000000e+00
  br label %929

; <label>:929                                     ; preds = %924, %891
  %930 = phi float [ %926, %924 ], [ %892, %891 ]
  %931 = phi float [ %927, %924 ], [ %893, %891 ]
  %932 = phi float [ %925, %924 ], [ %894, %891 ]
  %933 = phi float [ %928, %924 ], [ %895, %891 ]
  %934 = add nuw nsw i32 %896, 1
  %935 = icmp eq i32 %934, 8
  br i1 %935, label %936, label %891

; <label>:936                                     ; preds = %929
  %937 = fdiv fast float 1.000000e+00, %933
  %938 = fcmp fast oeq float %933, 0.000000e+00
  %939 = fmul fast float %937, %932
  %940 = select i1 %938, float -1.000000e+00, float %939
  %941 = fcmp fast olt float %940, 0.000000e+00
  br i1 %941, label %1228, label %942, !dx.controlflow.hints !46

; <label>:942                                     ; preds = %936
  %943 = fmul fast float %937, %931
  %944 = select i1 %938, float 0.000000e+00, float %943
  %945 = fmul fast float %937, %930
  %946 = select i1 %938, float 0.000000e+00, float %945
  %947 = fadd fast float %946, %533
  %948 = fadd fast float %944, %534
  br i1 %509, label %949, label %953, !dx.controlflow.hints !42

; <label>:949                                     ; preds = %942
  %950 = fcmp fast olt float %633, 0x3FE6666660000000
  %951 = select i1 %950, float 1.000000e+00, float 0.000000e+00
  %952 = select i1 %950, float 0.000000e+00, float 1.000000e+00
  br label %953

; <label>:953                                     ; preds = %949, %942
  %954 = phi float [ 0.000000e+00, %949 ], [ %636, %942 ]
  %955 = phi float [ %951, %949 ], [ %637, %942 ]
  %956 = phi float [ %952, %949 ], [ %638, %942 ]
  %957 = fmul fast float %955, %634
  %958 = fmul fast float %956, %633
  %959 = fsub fast float %957, %958
  %960 = fmul fast float %956, %632
  %961 = fmul fast float %954, %634
  %962 = fsub fast float %960, %961
  %963 = fmul fast float %954, %633
  %964 = fmul fast float %955, %632
  %965 = fsub fast float %963, %964
  %966 = call float @dx.op.dot3.f32(i32 55, float %959, float %962, float %965, float %959, float %962, float %965)  ; Dot3(ax,ay,az,bx,by,bz)
  %967 = call float @dx.op.unary.f32(i32 25, float %966)  ; Rsqrt(value)
  %968 = fmul fast float %967, %332
  %969 = fmul fast float %968, %959
  %970 = fmul fast float %968, %962
  %971 = fmul fast float %965, %332
  %972 = fmul fast float %971, %967
  %973 = fmul fast float %947, %484
  %974 = call float @dx.op.tertiary.f32(i32 46, float %948, float %490, float %973)  ; FMad(a,b,c)
  %975 = call float @dx.op.tertiary.f32(i32 46, float %940, float %496, float %974)  ; FMad(a,b,c)
  %976 = fadd fast float %975, %502
  %977 = fmul fast float %947, %485
  %978 = call float @dx.op.tertiary.f32(i32 46, float %948, float %491, float %977)  ; FMad(a,b,c)
  %979 = call float @dx.op.tertiary.f32(i32 46, float %940, float %497, float %978)  ; FMad(a,b,c)
  %980 = fadd fast float %979, %503
  %981 = fmul fast float %947, %486
  %982 = call float @dx.op.tertiary.f32(i32 46, float %948, float %492, float %981)  ; FMad(a,b,c)
  %983 = call float @dx.op.tertiary.f32(i32 46, float %940, float %498, float %982)  ; FMad(a,b,c)
  %984 = fadd fast float %983, %504
  %985 = fmul fast float %947, %487
  %986 = call float @dx.op.tertiary.f32(i32 46, float %948, float %493, float %985)  ; FMad(a,b,c)
  %987 = call float @dx.op.tertiary.f32(i32 46, float %940, float %499, float %986)  ; FMad(a,b,c)
  %988 = fadd fast float %987, %505
  %989 = fdiv fast float 1.000000e+00, %988
  %990 = fmul fast float %989, %976
  %991 = fmul fast float %989, %980
  %992 = fmul fast float %989, %984
  %993 = fsub fast float %335, %969
  %994 = fsub fast float %336, %970
  %995 = fsub fast float %337, %972
  %996 = fsub fast float %990, %993
  %997 = fsub fast float %991, %994
  %998 = fsub fast float %992, %995
  %999 = call float @dx.op.dot3.f32(i32 55, float %996, float %997, float %998, float %996, float %997, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = call float @dx.op.unary.f32(i32 25, float %999)  ; Rsqrt(value)
  %1001 = fmul fast float %996, %1000
  %1002 = fmul fast float %997, %1000
  %1003 = fmul fast float %998, %1000
  %1004 = fsub fast float %514, %993
  %1005 = fsub fast float %515, %994
  %1006 = fsub fast float %516, %995
  %1007 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %1004, float %1005, float %1006)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %1001, float %1002, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = fdiv fast float 1.000000e+00, %1008
  %1010 = fmul fast float %1009, %1007
  %1011 = fmul fast float %1010, %1001
  %1012 = fmul fast float %1010, %1002
  %1013 = fmul fast float %1010, %1003
  %1014 = fadd fast float %1011, %993
  %1015 = fadd fast float %1012, %994
  %1016 = fadd fast float %1013, %995
  %1017 = fadd fast float %969, %335
  %1018 = fadd fast float %970, %336
  %1019 = fadd fast float %972, %337
  %1020 = fsub fast float %990, %1017
  %1021 = fsub fast float %991, %1018
  %1022 = fsub fast float %992, %1019
  %1023 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1021, float %1022, float %1020, float %1021, float %1022)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = call float @dx.op.unary.f32(i32 25, float %1023)  ; Rsqrt(value)
  %1025 = fmul fast float %1024, %1020
  %1026 = fmul fast float %1024, %1021
  %1027 = fmul fast float %1024, %1022
  %1028 = fsub fast float %514, %1017
  %1029 = fsub fast float %515, %1018
  %1030 = fsub fast float %516, %1019
  %1031 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %1028, float %1029, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %1025, float %1026, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = fdiv fast float 1.000000e+00, %1032
  %1034 = fmul fast float %1033, %1031
  %1035 = fmul fast float %1034, %1025
  %1036 = fmul fast float %1034, %1026
  %1037 = fmul fast float %1034, %1027
  %1038 = fadd fast float %1035, %1017
  %1039 = fadd fast float %1036, %1018
  %1040 = fadd fast float %1037, %1019
  %1041 = fmul fast float %1014, %460
  %1042 = call float @dx.op.tertiary.f32(i32 46, float %1015, float %466, float %1041)  ; FMad(a,b,c)
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %472, float %1042)  ; FMad(a,b,c)
  %1044 = fadd fast float %1043, %478
  %1045 = fmul fast float %1014, %461
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1015, float %467, float %1045)  ; FMad(a,b,c)
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %473, float %1046)  ; FMad(a,b,c)
  %1048 = fadd fast float %1047, %479
  %1049 = fmul fast float %1014, %463
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1015, float %469, float %1049)  ; FMad(a,b,c)
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %475, float %1050)  ; FMad(a,b,c)
  %1052 = fadd fast float %1051, %481
  %1053 = fmul fast float %1038, %460
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %466, float %1053)  ; FMad(a,b,c)
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %472, float %1054)  ; FMad(a,b,c)
  %1056 = fadd fast float %1055, %478
  %1057 = fmul fast float %1038, %461
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %467, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %473, float %1058)  ; FMad(a,b,c)
  %1060 = fadd fast float %1059, %479
  %1061 = fmul fast float %1038, %463
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %469, float %1061)  ; FMad(a,b,c)
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %475, float %1062)  ; FMad(a,b,c)
  %1064 = fadd fast float %1063, %481
  %1065 = fdiv fast float 1.000000e+00, %1052
  %1066 = fmul fast float %1065, %1044
  %1067 = fmul fast float %1065, %1048
  %1068 = fdiv fast float 1.000000e+00, %1064
  %1069 = fmul fast float %1068, %1056
  %1070 = fmul fast float %1068, %1060
  %1071 = fsub fast float %1069, %1066
  %1072 = fsub fast float %1070, %1067
  %1073 = call float @dx.op.dot2.f32(i32 54, float %1071, float %1072, float %1071, float %1072)  ; Dot2(ax,ay,bx,by)
  %1074 = call float @dx.op.unary.f32(i32 25, float %1073)  ; Rsqrt(value)
  %1075 = fmul fast float %1071, %1074
  %1076 = fmul fast float %1072, %1074
  %1077 = fmul fast float %1071, %1071
  %1078 = fmul fast float %1072, %1072
  %1079 = fadd fast float %1077, %1078
  %1080 = call float @dx.op.unary.f32(i32 24, float %1079)  ; Sqrt(value)
  %1081 = fmul fast float %1080, 5.000000e-01
  br i1 %509, label %1174, label %1082, !dx.controlflow.hints !43

; <label>:1082                                    ; preds = %953
  %1083 = fsub fast float %335, %327
  %1084 = fsub fast float %336, %328
  %1085 = fsub fast float %337, %329
  %1086 = fsub fast float %990, %1083
  %1087 = fsub fast float %991, %1084
  %1088 = fsub fast float %992, %1085
  %1089 = call float @dx.op.dot3.f32(i32 55, float %1086, float %1087, float %1088, float %1086, float %1087, float %1088)  ; Dot3(ax,ay,az,bx,by,bz)
  %1090 = call float @dx.op.unary.f32(i32 25, float %1089)  ; Rsqrt(value)
  %1091 = fmul fast float %1090, %1086
  %1092 = fmul fast float %1090, %1087
  %1093 = fmul fast float %1090, %1088
  %1094 = fsub fast float %514, %1083
  %1095 = fsub fast float %515, %1084
  %1096 = fsub fast float %516, %1085
  %1097 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %1094, float %1095, float %1096)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %1091, float %1092, float %1093)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = fdiv fast float 1.000000e+00, %1098
  %1100 = fmul fast float %1099, %1097
  %1101 = fmul fast float %1100, %1091
  %1102 = fmul fast float %1100, %1092
  %1103 = fmul fast float %1100, %1093
  %1104 = fadd fast float %1101, %1083
  %1105 = fadd fast float %1102, %1084
  %1106 = fadd fast float %1103, %1085
  %1107 = fadd fast float %335, %327
  %1108 = fadd fast float %336, %328
  %1109 = fadd fast float %337, %329
  %1110 = fsub fast float %990, %1107
  %1111 = fsub fast float %991, %1108
  %1112 = fsub fast float %992, %1109
  %1113 = call float @dx.op.dot3.f32(i32 55, float %1110, float %1111, float %1112, float %1110, float %1111, float %1112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = call float @dx.op.unary.f32(i32 25, float %1113)  ; Rsqrt(value)
  %1115 = fmul fast float %1114, %1110
  %1116 = fmul fast float %1114, %1111
  %1117 = fmul fast float %1114, %1112
  %1118 = fsub fast float %514, %1107
  %1119 = fsub fast float %515, %1108
  %1120 = fsub fast float %516, %1109
  %1121 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %1118, float %1119, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = call float @dx.op.dot3.f32(i32 55, float %683, float %684, float %685, float %1115, float %1116, float %1117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1123 = fdiv fast float 1.000000e+00, %1122
  %1124 = fmul fast float %1123, %1121
  %1125 = fmul fast float %1124, %1115
  %1126 = fmul fast float %1124, %1116
  %1127 = fmul fast float %1124, %1117
  %1128 = fadd fast float %1125, %1107
  %1129 = fadd fast float %1126, %1108
  %1130 = fadd fast float %1127, %1109
  %1131 = fmul fast float %1104, %460
  %1132 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %466, float %1131)  ; FMad(a,b,c)
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %472, float %1132)  ; FMad(a,b,c)
  %1134 = fadd fast float %1133, %478
  %1135 = fmul fast float %1104, %461
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %467, float %1135)  ; FMad(a,b,c)
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %473, float %1136)  ; FMad(a,b,c)
  %1138 = fadd fast float %1137, %479
  %1139 = fmul fast float %1104, %463
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %469, float %1139)  ; FMad(a,b,c)
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %475, float %1140)  ; FMad(a,b,c)
  %1142 = fadd fast float %1141, %481
  %1143 = fmul fast float %1128, %460
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %466, float %1143)  ; FMad(a,b,c)
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1130, float %472, float %1144)  ; FMad(a,b,c)
  %1146 = fadd fast float %1145, %478
  %1147 = fmul fast float %1128, %461
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %467, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1130, float %473, float %1148)  ; FMad(a,b,c)
  %1150 = fadd fast float %1149, %479
  %1151 = fmul fast float %1128, %463
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %469, float %1151)  ; FMad(a,b,c)
  %1153 = call float @dx.op.tertiary.f32(i32 46, float %1130, float %475, float %1152)  ; FMad(a,b,c)
  %1154 = fadd fast float %1153, %481
  %1155 = fdiv fast float 1.000000e+00, %1142
  %1156 = fmul fast float %1155, %1134
  %1157 = fmul fast float %1155, %1138
  %1158 = fdiv fast float 1.000000e+00, %1154
  %1159 = fmul fast float %1158, %1146
  %1160 = fmul fast float %1158, %1150
  %1161 = fsub fast float %1159, %1156
  %1162 = fsub fast float %1160, %1157
  %1163 = call float @dx.op.dot2.f32(i32 54, float %1161, float %1162, float %1161, float %1162)  ; Dot2(ax,ay,bx,by)
  %1164 = call float @dx.op.unary.f32(i32 25, float %1163)  ; Rsqrt(value)
  %1165 = fmul fast float %1161, %1164
  %1166 = fmul fast float %1162, %1164
  %1167 = fmul fast float %1161, %1161
  %1168 = fmul fast float %1162, %1162
  %1169 = fadd fast float %1167, %1168
  %1170 = call float @dx.op.unary.f32(i32 24, float %1169)  ; Sqrt(value)
  %1171 = fmul fast float %1170, 5.000000e-01
  %1172 = fcmp fast olt float %1171, %1081
  br i1 %1172, label %1173, label %1174, !dx.controlflow.hints !44

; <label>:1173                                    ; preds = %1082
  br label %1174

; <label>:1174                                    ; preds = %1173, %1082, %953
  %1175 = phi float [ %1081, %953 ], [ %1171, %1173 ], [ %1081, %1082 ]
  %1176 = phi float [ %1081, %953 ], [ %1081, %1173 ], [ %1171, %1082 ]
  %1177 = phi float [ %1075, %953 ], [ %1075, %1173 ], [ %1165, %1082 ]
  %1178 = phi float [ %1076, %953 ], [ %1076, %1173 ], [ %1166, %1082 ]
  %1179 = fsub fast float %1176, %1175
  %1180 = fmul fast float %1177, %1177
  %1181 = fmul fast float %1180, %1179
  %1182 = fadd fast float %1181, %1175
  %1183 = fmul fast float %1177, %1179
  %1184 = fmul fast float %1183, %1178
  %1185 = fmul fast float %1178, %1178
  %1186 = fmul fast float %1185, %1179
  %1187 = fadd fast float %1186, %1175
  %1188 = fmul fast float %1182, %539
  %1189 = call float @dx.op.tertiary.f32(i32 46, float %538, float %1184, float %1188)  ; FMad(a,b,c)
  %1190 = fmul fast float %1184, %539
  %1191 = call float @dx.op.tertiary.f32(i32 46, float %538, float %1187, float %1190)  ; FMad(a,b,c)
  %1192 = fmul fast float %1182, %540
  %1193 = call float @dx.op.tertiary.f32(i32 46, float %539, float %1184, float %1192)  ; FMad(a,b,c)
  %1194 = fmul fast float %1184, %540
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %539, float %1187, float %1194)  ; FMad(a,b,c)
  br label %1196

; <label>:1196                                    ; preds = %1196, %1174
  %1197 = phi float [ 0.000000e+00, %1174 ], [ %1223, %1196 ]
  %1198 = phi i32 [ 0, %1174 ], [ %1224, %1196 ]
  %1199 = mul i32 %1198, 2
  %1200 = add i32 0, %1199
  %1201 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1200
  %1202 = load float, float* %1201, align 4
  %1203 = mul i32 %1198, 2
  %1204 = add i32 1, %1203
  %1205 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1204
  %1206 = load float, float* %1205, align 4
  %1207 = fmul fast float %1202, %1189
  %1208 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %1193, float %1207)  ; FMad(a,b,c)
  %1209 = fmul fast float %1202, %1191
  %1210 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %1195, float %1209)  ; FMad(a,b,c)
  %1211 = fadd fast float %1208, %533
  %1212 = fadd fast float %1210, %534
  %1213 = fmul fast float %1211, %450
  %1214 = fmul fast float %1212, %450
  %1215 = call float @dx.op.binary.f32(i32 35, float %1213, float %446)  ; FMax(a,b)
  %1216 = call float @dx.op.binary.f32(i32 35, float %1214, float %446)  ; FMax(a,b)
  %1217 = call float @dx.op.binary.f32(i32 36, float %1215, float %447)  ; FMin(a,b)
  %1218 = call float @dx.op.binary.f32(i32 36, float %1216, float %447)  ; FMin(a,b)
  %1219 = fadd fast float %1217, %444
  %1220 = fadd fast float %1218, %445
  %1221 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %17, float %1219, float %1220, float %919, float undef, i32 0, i32 0, i32 undef, float %922)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = fadd fast float %1222, %1197
  %1224 = add nuw nsw i32 %1198, 1
  %1225 = icmp eq i32 %1224, 8
  br i1 %1225, label %1226, label %1196

; <label>:1226                                    ; preds = %1196
  %1227 = fmul fast float %1223, 1.250000e-01
  br label %1228

; <label>:1228                                    ; preds = %1226, %936, %585
  %1229 = phi float [ %612, %585 ], [ %1227, %1226 ], [ 1.000000e+00, %936 ]
  %1230 = fcmp fast ogt float %1229, 0.000000e+00
  %1231 = xor i1 %69, true
  %1232 = and i1 %1230, %1231
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 1
  %1235 = fcmp fast olt float %1234, 0.000000e+00
  %1236 = and i1 %1232, %1235
  br i1 %1236, label %1237, label %1348, !dx.controlflow.hints !47

; <label>:1237                                    ; preds = %1228
  %1238 = fadd fast float %533, %446
  %1239 = fadd fast float %534, %446
  %1240 = fadd fast float %536, %454
  %1241 = fmul fast float %533, %484
  %1242 = call float @dx.op.tertiary.f32(i32 46, float %534, float %490, float %1241)  ; FMad(a,b,c)
  %1243 = call float @dx.op.tertiary.f32(i32 46, float %536, float %496, float %1242)  ; FMad(a,b,c)
  %1244 = fadd fast float %1243, %502
  %1245 = fmul fast float %533, %485
  %1246 = call float @dx.op.tertiary.f32(i32 46, float %534, float %491, float %1245)  ; FMad(a,b,c)
  %1247 = call float @dx.op.tertiary.f32(i32 46, float %536, float %497, float %1246)  ; FMad(a,b,c)
  %1248 = fadd fast float %1247, %503
  %1249 = fmul fast float %533, %486
  %1250 = call float @dx.op.tertiary.f32(i32 46, float %534, float %492, float %1249)  ; FMad(a,b,c)
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %536, float %498, float %1250)  ; FMad(a,b,c)
  %1252 = fadd fast float %1251, %504
  %1253 = fmul fast float %533, %487
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %534, float %493, float %1253)  ; FMad(a,b,c)
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %536, float %499, float %1254)  ; FMad(a,b,c)
  %1256 = fadd fast float %1255, %505
  %1257 = fmul fast float %1238, %484
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %490, float %1257)  ; FMad(a,b,c)
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %496, float %1258)  ; FMad(a,b,c)
  %1260 = fadd fast float %1259, %502
  %1261 = fmul fast float %1238, %485
  %1262 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %491, float %1261)  ; FMad(a,b,c)
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %497, float %1262)  ; FMad(a,b,c)
  %1264 = fadd fast float %1263, %503
  %1265 = fmul fast float %1238, %486
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %492, float %1265)  ; FMad(a,b,c)
  %1267 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %498, float %1266)  ; FMad(a,b,c)
  %1268 = fadd fast float %1267, %504
  %1269 = fmul fast float %1238, %487
  %1270 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %493, float %1269)  ; FMad(a,b,c)
  %1271 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %499, float %1270)  ; FMad(a,b,c)
  %1272 = fadd fast float %1271, %505
  %1273 = fdiv fast float 1.000000e+00, %1256
  %1274 = fmul fast float %1273, %1244
  %1275 = fmul fast float %1273, %1248
  %1276 = fmul fast float %1273, %1252
  %1277 = fdiv fast float 1.000000e+00, %1272
  %1278 = fmul fast float %1277, %1260
  %1279 = fmul fast float %1277, %1264
  %1280 = fmul fast float %1277, %1268
  %1281 = fsub fast float %1274, %1278
  %1282 = fsub fast float %1275, %1279
  %1283 = fsub fast float %1276, %1280
  %1284 = fmul fast float %1281, %1281
  %1285 = fmul fast float %1282, %1282
  %1286 = fadd fast float %1284, %1285
  %1287 = fmul fast float %1283, %1283
  %1288 = fadd fast float %1286, %1287
  %1289 = call float @dx.op.unary.f32(i32 24, float %1288)  ; Sqrt(value)
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.CBufRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.CBufRet.f32 %1290, 2
  %1294 = extractvalue %dx.types.CBufRet.f32 %1290, 3
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1299 = extractvalue %dx.types.CBufRet.f32 %1295, 3
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.CBufRet.f32 %1300, 1
  %1303 = extractvalue %dx.types.CBufRet.f32 %1300, 2
  %1304 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1305 = fmul fast float %1291, %1274
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %1292, float %1305)  ; FMad(a,b,c)
  %1307 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1293, float %1306)  ; FMad(a,b,c)
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1294, float %1307)  ; FMad(a,b,c)
  %1309 = fmul fast float %1296, %1274
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %1297, float %1309)  ; FMad(a,b,c)
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1298, float %1310)  ; FMad(a,b,c)
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1299, float %1311)  ; FMad(a,b,c)
  %1313 = fmul fast float %1301, %1274
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %1302, float %1313)  ; FMad(a,b,c)
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1303, float %1314)  ; FMad(a,b,c)
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1304, float %1315)  ; FMad(a,b,c)
  %1317 = fmul fast float %1291, %1278
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1292, float %1317)  ; FMad(a,b,c)
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1293, float %1318)  ; FMad(a,b,c)
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1294, float %1319)  ; FMad(a,b,c)
  %1321 = fmul fast float %1296, %1278
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1297, float %1321)  ; FMad(a,b,c)
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1298, float %1322)  ; FMad(a,b,c)
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1299, float %1323)  ; FMad(a,b,c)
  %1325 = fmul fast float %1301, %1278
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1302, float %1325)  ; FMad(a,b,c)
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1303, float %1326)  ; FMad(a,b,c)
  %1328 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1304, float %1327)  ; FMad(a,b,c)
  %1329 = fdiv fast float 1.000000e+00, %1316
  %1330 = fmul fast float %1329, %1308
  %1331 = fmul fast float %1329, %1312
  %1332 = fdiv fast float 1.000000e+00, %1328
  %1333 = fmul fast float %1332, %1320
  %1334 = fmul fast float %1332, %1324
  %1335 = fsub fast float %1330, %1333
  %1336 = fsub fast float %1331, %1334
  %1337 = fmul fast float %1335, 5.000000e-01
  %1338 = fmul fast float %1336, 5.000000e-01
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1342 = fmul fast float %1337, %1340
  %1343 = fmul fast float %1338, %1341
  %1344 = fmul fast float %1342, %1342
  %1345 = fmul fast float %1343, %1343
  %1346 = fadd fast float %1344, %1345
  %1347 = call float @dx.op.unary.f32(i32 24, float %1346)  ; Sqrt(value)
  br label %1348

; <label>:1348                                    ; preds = %1237, %1228
  %1349 = phi float [ %1289, %1237 ], [ 0.000000e+00, %1228 ]
  %1350 = phi float [ %1347, %1237 ], [ 0.000000e+00, %1228 ]
  %1351 = fadd fast float %1229, -1.000000e+00
  %1352 = fmul fast float %1351, %423
  %1353 = fadd fast float %1352, 1.000000e+00
  %1354 = fmul fast float %1353, %435
  br label %1355

; <label>:1355                                    ; preds = %1348, %402
  %1356 = phi float [ %1354, %1348 ], [ %435, %402 ]
  %1357 = phi float [ %1349, %1348 ], [ 0.000000e+00, %402 ]
  %1358 = phi float [ %1350, %1348 ], [ 0.000000e+00, %402 ]
  %1359 = call float @dx.op.binary.f32(i32 36, float %1356, float %1356)  ; FMin(a,b)
  %1360 = call float @dx.op.binary.f32(i32 36, float %1356, float %1359)  ; FMin(a,b)
  %1361 = fcmp fast ogt float %1360, 0.000000e+00
  %1362 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %375, float %376, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %1363 = fcmp fast ogt float %1362, 0.000000e+00
  %1364 = and i1 %1361, %1363
  br i1 %1364, label %1365, label %1646, !dx.controlflow.hints !48

; <label>:1365                                    ; preds = %1355
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 1
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1370 = select i1 %69, float %1367, float %1369
  %1371 = extractvalue %dx.types.CBufRet.f32 %1366, 2
  %1372 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1373 = select i1 %69, float %1371, float %1372
  %1374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.i32 %1374, 0
  %1376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.i32 %1376, 0
  %1378 = select i1 %69, i32 %1375, i32 %1377
  %1379 = fcmp fast ogt float %1357, 0.000000e+00
  br i1 %1379, label %1380, label %1384, !dx.controlflow.hints !49

; <label>:1380                                    ; preds = %1365
  %1381 = fptosi float %1358 to i32
  %1382 = call i32 @dx.op.binary.i32(i32 37, i32 %1381, i32 1)  ; IMax(a,b)
  %1383 = call i32 @dx.op.binary.i32(i32 38, i32 %1382, i32 16)  ; IMin(a,b)
  br label %1384

; <label>:1384                                    ; preds = %1380, %1365
  %1385 = phi float [ 0.000000e+00, %1380 ], [ 1.000000e+00, %1365 ]
  %1386 = phi float [ %1357, %1380 ], [ %1370, %1365 ]
  %1387 = phi i32 [ %1383, %1380 ], [ %1378, %1365 ]
  %1388 = fcmp fast olt float %1386, 5.000000e-01
  %1389 = icmp eq i32 %1387, 0
  %1390 = or i1 %1388, %1389
  br i1 %1390, label %1641, label %1391, !dx.controlflow.hints !50

; <label>:1391                                    ; preds = %1384
  %1392 = fsub fast float %335, %131
  %1393 = fsub fast float %336, %132
  %1394 = fsub fast float %337, %133
  %1395 = fmul fast float %1392, %1392
  %1396 = fmul fast float %1393, %1393
  %1397 = fadd fast float %1395, %1396
  %1398 = fmul fast float %1394, %1394
  %1399 = fadd fast float %1397, %1398
  %1400 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.i32 %1401, 0
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1386, %332
  %1405 = fdiv fast float %1404, %1400
  %1406 = call float @dx.op.binary.f32(i32 36, float %1405, float 1.000000e+01)  ; FMin(a,b)
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.CBufRet.f32 %1407, 1
  %1410 = extractvalue %dx.types.CBufRet.f32 %1407, 2
  %1411 = extractvalue %dx.types.CBufRet.f32 %1407, 3
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.CBufRet.f32 %1412, 1
  %1415 = extractvalue %dx.types.CBufRet.f32 %1412, 2
  %1416 = extractvalue %dx.types.CBufRet.f32 %1412, 3
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.CBufRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.CBufRet.f32 %1417, 2
  %1421 = extractvalue %dx.types.CBufRet.f32 %1417, 3
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.CBufRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.CBufRet.f32 %1422, 2
  %1426 = extractvalue %dx.types.CBufRet.f32 %1422, 3
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.CBufRet.f32 %1427, 2
  %1431 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.CBufRet.f32 %1432, 2
  %1436 = extractvalue %dx.types.CBufRet.f32 %1432, 3
  %1437 = select i1 %69, float %1408, float %1423
  %1438 = select i1 %69, float %1413, float %1428
  %1439 = select i1 %69, float %1418, float %1433
  %1440 = select i1 %69, float %1409, float %1424
  %1441 = select i1 %69, float %1414, float %1429
  %1442 = select i1 %69, float %1419, float %1434
  %1443 = select i1 %69, float %1410, float %1425
  %1444 = select i1 %69, float %1415, float %1430
  %1445 = select i1 %69, float %1420, float %1435
  %1446 = select i1 %69, float %1411, float %1426
  %1447 = select i1 %69, float %1416, float %1431
  %1448 = select i1 %69, float %1421, float %1436
  %1449 = fmul fast float %250, 0x401061CAC0000000
  %1450 = fmul fast float %250, 0x4023E1D7E0000000
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = extractvalue %dx.types.CBufRet.f32 %1451, 1
  %1454 = extractvalue %dx.types.CBufRet.f32 %1451, 2
  %1455 = extractvalue %dx.types.CBufRet.f32 %1451, 3
  %1456 = fsub fast float -0.000000e+00, %375
  %1457 = fmul fast float %377, %1456
  %1458 = fmul fast float %375, %1456
  %1459 = fmul fast float %376, %376
  %1460 = fsub fast float %1458, %1459
  %1461 = fdiv fast float 1.000000e+00, %76
  %1462 = fmul fast float %1454, %65
  %1463 = fmul fast float %1455, %66
  %1464 = fmul fast float %1386, %375
  %1465 = fmul fast float %1386, %377
  %1466 = fadd fast float %1464, %131
  %1467 = fadd fast float %1465, %133
  %1468 = fadd fast float %1450, 5.000000e-01
  %1469 = call float @dx.op.unary.f32(i32 22, float %1468)  ; Frc(value)
  %1470 = bitcast float %1469 to i32
  %1471 = ashr i32 %1470, 1
  %1472 = add nsw i32 %1471, 532487669
  %1473 = bitcast i32 %1472 to float
  %1474 = fmul fast float %1473, %1406
  %1475 = fadd fast float %1449, 5.000000e-01
  %1476 = call float @dx.op.unary.f32(i32 22, float %1475)  ; Frc(value)
  %1477 = fmul fast float %1476, 0x401921FB60000000
  %1478 = call float @dx.op.unary.f32(i32 12, float %1477)  ; Cos(value)
  %1479 = fmul fast float %1478, %1478
  %1480 = fsub fast float 1.000000e+00, %1479
  %1481 = bitcast float %1480 to i32
  %1482 = ashr i32 %1481, 1
  %1483 = add nsw i32 %1482, 532487669
  %1484 = bitcast i32 %1483 to float
  %1485 = fmul fast float %1474, %1478
  %1486 = fmul fast float %1485, %376
  %1487 = fmul fast float %1485, %1456
  %1488 = fadd fast float %1466, %1486
  %1489 = fmul fast float %1484, %1474
  %1490 = fmul fast float %1457, %1489
  %1491 = fmul fast float %1489, %377
  %1492 = fmul fast float %1489, %1460
  %1493 = fsub fast float %1488, %1490
  %1494 = fadd fast float %1491, %1386
  %1495 = fmul fast float %1494, %376
  %1496 = fadd fast float %1487, %132
  %1497 = fadd fast float %1496, %1495
  %1498 = fadd fast float %1467, %1492
  %1499 = fmul fast float %1493, %1437
  %1500 = call float @dx.op.tertiary.f32(i32 46, float %1497, float %1440, float %1499)  ; FMad(a,b,c)
  %1501 = call float @dx.op.tertiary.f32(i32 46, float %1498, float %1443, float %1500)  ; FMad(a,b,c)
  %1502 = fadd fast float %1501, %1446
  %1503 = fmul fast float %1493, %1438
  %1504 = call float @dx.op.tertiary.f32(i32 46, float %1497, float %1441, float %1503)  ; FMad(a,b,c)
  %1505 = call float @dx.op.tertiary.f32(i32 46, float %1498, float %1444, float %1504)  ; FMad(a,b,c)
  %1506 = fadd fast float %1505, %1447
  %1507 = fmul fast float %1493, %1439
  %1508 = call float @dx.op.tertiary.f32(i32 46, float %1497, float %1442, float %1507)  ; FMad(a,b,c)
  %1509 = call float @dx.op.tertiary.f32(i32 46, float %1498, float %1445, float %1508)  ; FMad(a,b,c)
  %1510 = fadd fast float %1509, %1448
  %1511 = fdiv fast float 1.000000e+00, %1510
  %1512 = fmul fast float %1502, 5.000000e-01
  %1513 = fmul fast float %1506, -5.000000e-01
  %1514 = fmul fast float %1512, %1511
  %1515 = fmul fast float %1513, %1511
  %1516 = fsub fast float 5.000000e-01, %1462
  %1517 = fadd fast float %1516, %1514
  %1518 = fsub fast float 5.000000e-01, %1463
  %1519 = fadd fast float %1518, %1515
  %1520 = fsub fast float %1511, %1461
  %1521 = call float @dx.op.dot2.f32(i32 54, float %1517, float %1519, float %1517, float %1519)  ; Dot2(ax,ay,bx,by)
  %1522 = call float @dx.op.binary.f32(i32 35, float %1521, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1523 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %1452, float %1453)  ; Dot2(ax,ay,bx,by)
  %1524 = fmul fast float %1523, %1522
  %1525 = call float @dx.op.unary.f32(i32 25, float %1524)  ; Rsqrt(value)
  %1526 = fmul fast float %1525, %1517
  %1527 = fmul fast float %1525, %1519
  %1528 = fadd fast float %1526, %1462
  %1529 = fadd fast float %1527, %1463
  %1530 = fmul fast float %1517, %1452
  %1531 = fmul fast float %1519, %1453
  %1532 = fmul fast float %1530, %1530
  %1533 = fmul fast float %1531, %1531
  %1534 = fadd fast float %1532, %1533
  %1535 = call float @dx.op.unary.f32(i32 24, float %1534)  ; Sqrt(value)
  %1536 = fdiv fast float 1.000000e+00, %1535
  %1537 = fmul fast float %1535, 3.906250e-03
  %1538 = fmul fast float %236, 0x3F70624DE0000000
  %1539 = fadd fast float %1538, 0x3F70624DE0000000
  %1540 = icmp sgt i32 %1387, -1
  br i1 %1540, label %1541, label %1606

; <label>:1541                                    ; preds = %1391
  br label %1542

; <label>:1542                                    ; preds = %1602, %1541
  %1543 = phi float [ %1577, %1602 ], [ %76, %1541 ]
  %1544 = phi float [ %1564, %1602 ], [ %76, %1541 ]
  %1545 = phi float [ %1544, %1602 ], [ %76, %1541 ]
  %1546 = phi i32 [ %1603, %1602 ], [ 0, %1541 ]
  %1547 = sitofp i32 %1546 to float
  %1548 = fadd fast float %250, 5.000000e-01
  %1549 = call float @dx.op.unary.f32(i32 22, float %1548)  ; Frc(value)
  %1550 = fadd fast float %1547, %1549
  %1551 = sitofp i32 %1387 to float
  %1552 = fdiv fast float %1550, %1551
  %1553 = fmul fast float %1552, %1552
  %1554 = fsub fast float %1553, %1552
  %1555 = fmul fast float %1554, %1385
  %1556 = fadd fast float %1555, %1552
  %1557 = call float @dx.op.binary.f32(i32 36, float %1556, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1558 = fmul fast float %1557, %1517
  %1559 = fmul fast float %1557, %1519
  %1560 = fmul fast float %1557, %1520
  %1561 = fadd fast float %1558, %1528
  %1562 = fadd fast float %1559, %1529
  %1563 = fadd fast float %1560, %1461
  %1564 = fdiv fast float 1.000000e+00, %1563
  %1565 = icmp ne i32 %1402, 0
  %1566 = fmul fast float %1537, %1557
  %1567 = call float @dx.op.binary.f32(i32 36, float %1566, float %1403)  ; FMin(a,b)
  %1568 = select i1 %1565, float %1567, float 0.000000e+00
  %1569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1561, float %1562, float undef, float undef, i32 0, i32 0, i32 undef, float %1568)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = fcmp fast ogt float %1570, -1.000000e+00
  %1572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1572, 1
  %1574 = select i1 %1571, float %1573, float 1.000000e+00
  %1575 = fadd fast float %1570, 1.000000e+00
  %1576 = fmul fast float %1574, %1575
  %1577 = call float @dx.op.unary.f32(i32 6, float %1576)  ; FAbs(value)
  %1578 = fmul fast float %1577, %1539
  %1579 = fsub fast float %1564, %1577
  %1580 = fsub fast float %1579, %1578
  %1581 = fcmp fast ogt float %1580, 0.000000e+00
  %1582 = fcmp fast ogt float %1373, 0.000000e+00
  br i1 %1582, label %1583, label %1586, !dx.controlflow.hints !51

; <label>:1583                                    ; preds = %1542
  %1584 = fsub fast float %1564, %1545
  %1585 = call float @dx.op.binary.f32(i32 35, float %1584, float %1373)  ; FMax(a,b)
  br label %1586

; <label>:1586                                    ; preds = %1583, %1542
  %1587 = phi float [ %1585, %1583 ], [ %1386, %1542 ]
  %1588 = fcmp fast olt float %1580, %1587
  %1589 = fcmp uge float %1570, -1.000000e+00
  %1590 = or i1 %69, %1589
  %1591 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1592 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1593 = fcmp fast oeq float %1561, %1591
  %1594 = fcmp fast oeq float %1562, %1592
  %1595 = and i1 %1593, %1594
  %1596 = and i1 %1590, %1595
  %1597 = and i1 %1581, %1588
  %1598 = and i1 %1597, %1596
  %1599 = fcmp fast ogt float %1557, %1536
  %1600 = and i1 %1599, %1598
  %1601 = zext i1 %1600 to i32
  br i1 %1600, label %1605, label %1602, !dx.controlflow.hints !52

; <label>:1602                                    ; preds = %1586
  %1603 = add nuw nsw i32 %1546, 1
  %1604 = icmp slt i32 %1546, %1387
  br i1 %1604, label %1542, label %1605

; <label>:1605                                    ; preds = %1602, %1586
  br label %1606

; <label>:1606                                    ; preds = %1605, %1391
  %1607 = phi i32 [ 0, %1391 ], [ %1601, %1605 ]
  %1608 = phi float [ %76, %1391 ], [ %1577, %1605 ]
  %1609 = phi float [ %76, %1391 ], [ %1543, %1605 ]
  %1610 = phi float [ %76, %1391 ], [ %1564, %1605 ]
  %1611 = phi float [ %76, %1391 ], [ %1544, %1605 ]
  %1612 = fsub fast float %1611, %1609
  %1613 = fsub fast float %1610, %1608
  %1614 = fsub fast float %1612, %1613
  %1615 = fcmp fast une float %1614, 0.000000e+00
  %1616 = fmul fast float %1612, %1610
  %1617 = fmul fast float %1611, %1613
  %1618 = fsub fast float %1616, %1617
  %1619 = fdiv fast float 1.000000e+00, %1614
  %1620 = fmul fast float %1618, %1619
  %1621 = select i1 %1615, float %1620, float %1610
  %1622 = fdiv fast float 1.000000e+00, %1621
  %1623 = fsub fast float %1622, %1461
  %1624 = fdiv fast float %1623, %1520
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1626 = fmul fast float %1625, %1517
  %1627 = fmul fast float %1625, %1519
  %1628 = fadd fast float %1626, %1528
  %1629 = fadd fast float %1627, %1529
  %1630 = fadd fast float %1628, -5.000000e-01
  %1631 = fadd fast float %1629, -5.000000e-01
  %1632 = call float @dx.op.unary.f32(i32 6, float %1630)  ; FAbs(value)
  %1633 = call float @dx.op.unary.f32(i32 6, float %1631)  ; FAbs(value)
  %1634 = fadd fast float %1632, -5.000000e-01
  %1635 = fadd fast float %1633, -5.000000e-01
  %1636 = call float @dx.op.binary.f32(i32 35, float %1634, float %1635)  ; FMax(a,b)
  %1637 = fcmp fast olt float %1636, 0.000000e+00
  %1638 = icmp ne i32 %1607, 0
  %1639 = and i1 %1638, %1637
  %1640 = select i1 %1639, float 0.000000e+00, float 1.000000e+00
  br label %1641

; <label>:1641                                    ; preds = %1606, %1384
  %1642 = phi float [ %1640, %1606 ], [ 1.000000e+00, %1384 ]
  %1643 = fmul fast float %1642, %1356
  %1644 = fmul fast float %1642, %1356
  %1645 = fmul fast float %1642, %1356
  br label %1646

; <label>:1646                                    ; preds = %1641, %1355
  %1647 = phi float [ %1643, %1641 ], [ %1356, %1355 ]
  %1648 = phi float [ %1644, %1641 ], [ %1356, %1355 ]
  %1649 = phi float [ %1645, %1641 ], [ %1356, %1355 ]
  %1650 = call float @dx.op.binary.f32(i32 36, float %1648, float %1649)  ; FMin(a,b)
  %1651 = call float @dx.op.binary.f32(i32 36, float %1647, float %1650)  ; FMin(a,b)
  %1652 = fcmp fast ogt float %1651, 0x3F10000000000000
  %1653 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1652)  ; WaveAnyTrue(cond)
  %1654 = select i1 %1653, i32 %314, i32 0
  %1655 = or i32 %309, %1654
  %1656 = lshr i32 %255, 5
  %1657 = lshr i32 %256, 5
  %1658 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1656, i32 %1657, i32 %312, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = lshr i32 %255, 1
  %1661 = lshr i32 %256, 1
  %1662 = and i32 %1660, 15
  %1663 = and i32 %1661, 15
  %1664 = and i32 %255, 1
  %1665 = shl i32 %256, 1
  %1666 = and i32 %1665, 2
  %1667 = or i32 %1666, %1664
  %1668 = lshr i32 %1659, 2
  %1669 = and i32 %1668, 8176
  %1670 = lshr i32 %1659, 11
  %1671 = and i32 %1670, 4080
  %1672 = or i32 %1669, %1662
  %1673 = or i32 %1671, %1663
  %1674 = lshr i32 %1659, 21
  %1675 = and i32 %1674, 1020
  %1676 = or i32 %1667, %1675
  %1677 = fmul fast float %1647, 2.550000e+02
  %1678 = fadd fast float %1677, %249
  %1679 = call float @dx.op.unary.f32(i32 27, float %1678)  ; Round_ni(value)
  %1680 = fmul fast float %1679, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1672, i32 %1673, i32 %1676, float %1680, float %1680, float %1680, float %1680, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1681 = icmp eq i32 %310, %314
  br i1 %1681, label %1682, label %308, !llvm.loop !53

; <label>:1682                                    ; preds = %1646
  br label %1683

; <label>:1683                                    ; preds = %1682, %280
  %1684 = phi i32 [ 0, %280 ], [ %1655, %1682 ]
  %1685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.i32 %1685, 0
  %1687 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %1686, i32 %281)  ; UMad(a,b,c)
  %1688 = shl i32 %1687, 2
  %1689 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1688, i32 undef, i32 undef, i32 %1684)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1690 = add i32 %281, 1
  %1691 = icmp ugt i32 %1690, %277
  br i1 %1691, label %1692, label %280

; <label>:1692                                    ; preds = %1683
  br label %1693

; <label>:1693                                    ; preds = %1692, %254, %56
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}

