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
; shader hash: ddc61e9bbf721b19aa9422897ba09a01
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
;                                   sampler      NA          NA      S0             s1     1
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %179 = fmul fast float %77, %62
  %180 = fmul fast float %78, %63
  %181 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %179, float %180, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %204 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %201, float %203, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %243 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %241, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 2
  %246 = fadd fast float %244, %238
  %247 = fadd fast float %245, %238
  %248 = call float @dx.op.unary.f32(i32 22, float %246)  ; Frc(value)
  %249 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.i32 %250, 0
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %908, label %253, !dx.controlflow.hints !37

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
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = lshr i32 %269, 16
  %271 = and i32 %269, 65535
  %272 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %270, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %273 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %271, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %274 = lshr i32 %272, 5
  %275 = lshr i32 %273, 5
  %276 = call i32 @dx.op.binary.i32(i32 40, i32 %275, i32 %262)  ; UMin(a,b)
  %277 = icmp ugt i32 %274, %276
  br i1 %277, label %908, label %278

; <label>:278                                     ; preds = %253
  br label %279

; <label>:279                                     ; preds = %898, %278
  %280 = phi i32 [ %905, %898 ], [ %274, %278 ]
  %281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.i32 %281, 0
  %283 = call i32 @dx.op.tertiary.i32(i32 49, i32 %260, i32 %282, i32 %280)  ; UMad(a,b,c)
  %284 = shl i32 %283, 2
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %280, 5
  %288 = sub nsw i32 %270, %287
  %289 = call i32 @dx.op.binary.i32(i32 37, i32 %288, i32 0)  ; IMax(a,b)
  %290 = call i32 @dx.op.binary.i32(i32 38, i32 %289, i32 31)  ; IMin(a,b)
  %291 = sub nsw i32 1, %270
  %292 = add nsw i32 %291, %271
  %293 = call i32 @dx.op.binary.i32(i32 37, i32 %292, i32 0)  ; IMax(a,b)
  %294 = call i32 @dx.op.binary.i32(i32 38, i32 %293, i32 32)  ; IMin(a,b)
  %295 = and i32 %294, 31
  %296 = shl i32 -1, %295
  %297 = xor i32 %296, -1
  %298 = and i32 %290, 31
  %299 = shl i32 %297, %298
  %300 = icmp eq i32 %294, 32
  %301 = select i1 %300, i32 -1, i32 %299
  %302 = and i32 %301, %286
  %303 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %302, i8 1)  ; WaveActiveBit(value,op)
  %304 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %303)  ; WaveReadLaneFirst(value)
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %898, label %306

; <label>:306                                     ; preds = %279
  br label %307

; <label>:307                                     ; preds = %861, %306
  %308 = phi i32 [ %870, %861 ], [ 0, %306 ]
  %309 = phi i32 [ %314, %861 ], [ %304, %306 ]
  %310 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %309)  ; FirstbitLo(value)
  %311 = add i32 %310, %287
  %312 = and i32 %310, 31
  %313 = shl i32 1, %312
  %314 = xor i32 %313, %309
  %315 = mul i32 %311, 112
  %316 = add i32 %315, 16
  %317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = extractvalue %dx.types.ResRet.f32 %317, 1
  %320 = extractvalue %dx.types.ResRet.f32 %317, 2
  %321 = add i32 %315, 28
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = add i32 %315, 32
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = extractvalue %dx.types.ResRet.f32 %325, 1
  %328 = extractvalue %dx.types.ResRet.f32 %325, 2
  %329 = add i32 %315, 44
  %330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = add i32 %315, 48
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = extractvalue %dx.types.ResRet.f32 %333, 3
  %338 = add i32 %315, 64
  %339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = extractvalue %dx.types.ResRet.f32 %339, 1
  %342 = extractvalue %dx.types.ResRet.f32 %339, 2
  %343 = extractvalue %dx.types.ResRet.f32 %339, 3
  %344 = add i32 %315, 92
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = uitofp i32 %347 to float
  %349 = lshr i32 %346, 16
  %350 = uitofp i32 %349 to float
  %351 = and i32 %323, 65535
  %352 = and i32 %323, 50331648
  %353 = icmp eq i32 %352, 33554432
  %354 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float %326, float %327, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = fsub fast float %130, %334
  %356 = fsub fast float %131, %335
  %357 = fsub fast float %132, %336
  %358 = call float @dx.op.dot3.f32(i32 55, float %355, float %356, float %357, float %326, float %327, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = fdiv fast float %358, %354
  %360 = call float @dx.op.binary.f32(i32 35, float %359, float -1.000000e+00)  ; FMax(a,b)
  %361 = call float @dx.op.binary.f32(i32 36, float %360, float 1.000000e+00)  ; FMin(a,b)
  %362 = fmul fast float %361, %326
  %363 = fmul fast float %361, %327
  %364 = fmul fast float %361, %328
  %365 = fadd fast float %362, %334
  %366 = fadd fast float %363, %335
  %367 = fadd fast float %364, %336
  %368 = fsub fast float %365, %130
  %369 = fsub fast float %366, %131
  %370 = fsub fast float %367, %132
  %371 = call float @dx.op.dot3.f32(i32 55, float %368, float %369, float %370, float %368, float %369, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %373 = fdiv fast float 1.000000e+00, %372
  %374 = fmul fast float %368, %373
  %375 = fmul fast float %369, %373
  %376 = fmul fast float %370, %373
  br i1 %353, label %377, label %401, !dx.controlflow.hints !38

; <label>:377                                     ; preds = %307
  %378 = fmul fast float %342, %318
  %379 = fmul fast float %342, %319
  %380 = fmul fast float %342, %320
  %381 = fsub fast float %378, %130
  %382 = fadd fast float %381, %365
  %383 = fsub fast float %379, %131
  %384 = fadd fast float %383, %366
  %385 = fsub fast float %380, %132
  %386 = fadd fast float %385, %367
  %387 = call float @dx.op.dot3.f32(i32 55, float %382, float %384, float %386, float %382, float %384, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = call float @dx.op.unary.f32(i32 25, float %387)  ; Rsqrt(value)
  %389 = fmul fast float %388, %382
  %390 = fmul fast float %388, %384
  %391 = fmul fast float %388, %386
  %392 = fsub fast float %130, %365
  %393 = fsub fast float %131, %366
  %394 = fsub fast float %132, %367
  %395 = fsub fast float -0.000000e+00, %392
  %396 = fsub fast float -0.000000e+00, %393
  %397 = fsub fast float -0.000000e+00, %394
  %398 = call float @dx.op.dot3.f32(i32 55, float %395, float %396, float %397, float %318, float %319, float %320)  ; Dot3(ax,ay,az,bx,by,bz)
  %399 = fcmp fast ogt float %398, 0.000000e+00
  %400 = uitofp i1 %399 to float
  br label %401

; <label>:401                                     ; preds = %377, %307
  %402 = phi float [ %400, %377 ], [ 1.000000e+00, %307 ]
  %403 = phi float [ %389, %377 ], [ %374, %307 ]
  %404 = phi float [ %390, %377 ], [ %375, %307 ]
  %405 = phi float [ %391, %377 ], [ %376, %307 ]
  %406 = call float @dx.op.dot3.f32(i32 55, float %318, float %319, float %320, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %407 = fmul fast float %406, %406
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = fsub fast float 1.000000e+00, %408
  %410 = fmul fast float %409, 5.000000e-01
  %411 = fcmp fast ogt float %406, 0.000000e+00
  %412 = fsub fast float 1.000000e+00, %410
  %413 = select i1 %411, float %410, float %412
  %414 = fmul fast float %413, %350
  %415 = fadd fast float %414, %348
  %416 = fmul fast float %415, 0x3EF0001000000000
  %417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %416, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = fmul fast float %406, %340
  %420 = fadd fast float %419, %341
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = select i1 %353, float 1.000000e+00, float %421
  %423 = select i1 %353, float %421, float 1.000000e+00
  %424 = fmul fast float %372, %337
  %425 = fsub fast float 1.000000e+00, %424
  %426 = fmul fast float %425, %343
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = fmul fast float %427, %423
  %429 = fmul fast float %428, 2.000000e+00
  %430 = fsub fast float 3.000000e+00, %429
  %431 = fmul fast float %418, %402
  %432 = fmul fast float %428, %428
  %433 = fmul fast float %432, %431
  %434 = fmul fast float %433, %430
  %435 = icmp ne i32 %351, 255
  %436 = call float @dx.op.binary.f32(i32 36, float %434, float %434)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 36, float %434, float %436)  ; FMin(a,b)
  %438 = fcmp fast ogt float %437, 0.000000e+00
  %439 = and i1 %435, %438
  br i1 %439, label %440, label %584, !dx.controlflow.hints !39

; <label>:440                                     ; preds = %401
  %441 = mul nuw nsw i32 %351, 176
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = extractvalue %dx.types.ResRet.f32 %442, 3
  %447 = add nuw nsw i32 %441, 16
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = add nuw nsw i32 %441, 32
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = add nuw nsw i32 %441, 48
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = extractvalue %dx.types.ResRet.f32 %457, 3
  %462 = add nuw nsw i32 %441, 64
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = add nuw nsw i32 %441, 80
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = extractvalue %dx.types.ResRet.f32 %469, 3
  %474 = add nuw nsw i32 %441, 96
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = extractvalue %dx.types.ResRet.f32 %475, 3
  %480 = bitcast float %450 to i32
  %481 = fmul fast float %455, %176
  %482 = fmul fast float %455, %177
  %483 = fmul fast float %455, %178
  %484 = fadd fast float %481, %130
  %485 = fadd fast float %482, %131
  %486 = fadd fast float %483, %132
  %487 = fmul fast float %484, %458
  %488 = call float @dx.op.tertiary.f32(i32 46, float %485, float %464, float %487)  ; FMad(a,b,c)
  %489 = call float @dx.op.tertiary.f32(i32 46, float %486, float %470, float %488)  ; FMad(a,b,c)
  %490 = fadd fast float %489, %476
  %491 = fmul fast float %484, %459
  %492 = call float @dx.op.tertiary.f32(i32 46, float %485, float %465, float %491)  ; FMad(a,b,c)
  %493 = call float @dx.op.tertiary.f32(i32 46, float %486, float %471, float %492)  ; FMad(a,b,c)
  %494 = fadd fast float %493, %477
  %495 = fmul fast float %484, %460
  %496 = call float @dx.op.tertiary.f32(i32 46, float %485, float %466, float %495)  ; FMad(a,b,c)
  %497 = call float @dx.op.tertiary.f32(i32 46, float %486, float %472, float %496)  ; FMad(a,b,c)
  %498 = fadd fast float %497, %478
  %499 = fmul fast float %484, %461
  %500 = call float @dx.op.tertiary.f32(i32 46, float %485, float %467, float %499)  ; FMad(a,b,c)
  %501 = call float @dx.op.tertiary.f32(i32 46, float %486, float %473, float %500)  ; FMad(a,b,c)
  %502 = fadd fast float %501, %479
  %503 = fdiv fast float %490, %502
  %504 = fdiv fast float %494, %502
  %505 = fdiv fast float %498, %502
  %506 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %505)  ; FMax(a,b)
  %507 = fmul fast float %248, 0x401921FB60000000
  %508 = call float @dx.op.unary.f32(i32 13, float %507)  ; Sin(value)
  %509 = call float @dx.op.unary.f32(i32 12, float %507)  ; Cos(value)
  %510 = fmul fast float %509, %454
  %511 = call float @dx.op.tertiary.f32(i32 46, float %508, float %454, float 0.000000e+00)  ; FMad(a,b,c)
  %512 = fmul fast float %454, %508
  %513 = fsub fast float -0.000000e+00, %512
  %514 = call float @dx.op.tertiary.f32(i32 46, float %509, float %454, float 0.000000e+00)  ; FMad(a,b,c)
  br label %515

; <label>:515                                     ; preds = %515, %440
  %516 = phi float [ 0.000000e+00, %440 ], [ %548, %515 ]
  %517 = phi float [ 0.000000e+00, %440 ], [ %550, %515 ]
  %518 = phi i32 [ 0, %440 ], [ %551, %515 ]
  %519 = mul i32 %518, 2
  %520 = add i32 0, %519
  %521 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %520
  %522 = load float, float* %521, align 4
  %523 = mul i32 %518, 2
  %524 = add i32 1, %523
  %525 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %524
  %526 = load float, float* %525, align 4
  %527 = fmul fast float %510, %522
  %528 = call float @dx.op.tertiary.f32(i32 46, float %526, float %513, float %527)  ; FMad(a,b,c)
  %529 = fmul fast float %522, %511
  %530 = call float @dx.op.tertiary.f32(i32 46, float %526, float %514, float %529)  ; FMad(a,b,c)
  %531 = fadd fast float %528, %503
  %532 = fadd fast float %530, %504
  %533 = fmul fast float %531, %449
  %534 = fmul fast float %532, %449
  %535 = call float @dx.op.binary.f32(i32 35, float %533, float %445)  ; FMax(a,b)
  %536 = call float @dx.op.binary.f32(i32 35, float %534, float %445)  ; FMax(a,b)
  %537 = call float @dx.op.binary.f32(i32 36, float %535, float %446)  ; FMin(a,b)
  %538 = call float @dx.op.binary.f32(i32 36, float %536, float %446)  ; FMin(a,b)
  %539 = fadd fast float %537, %443
  %540 = fadd fast float %538, %444
  %541 = uitofp i32 %480 to float
  %542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %539, float %540, float %541, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = fsub fast float %543, %506
  %545 = fsub fast float %544, %453
  %546 = fcmp fast ogt float %545, 0.000000e+00
  %547 = select i1 %546, float 1.000000e+00, float 0.000000e+00
  %548 = fadd fast float %547, %516
  %549 = select i1 %546, float %545, float 0.000000e+00
  %550 = fadd fast float %549, %517
  %551 = add nuw nsw i32 %518, 1
  %552 = icmp eq i32 %551, 8
  br i1 %552, label %553, label %515

; <label>:553                                     ; preds = %515
  %554 = fdiv fast float 1.000000e+00, %548
  %555 = fmul fast float %554, %550
  %556 = fdiv fast float 1.000000e+00, %506
  %557 = fmul fast float %555, %556
  %558 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %559 = call float @dx.op.binary.f32(i32 35, float %558, float 0.000000e+00)  ; FMax(a,b)
  %560 = fmul fast float %548, 1.250000e-01
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = fmul fast float %561, 2.000000e+00
  %563 = fadd fast float %562, -1.000000e+00
  %564 = fcmp fast ogt float %563, 0.000000e+00
  %565 = fcmp fast olt float %563, 0.000000e+00
  %566 = zext i1 %564 to i32
  %567 = zext i1 %565 to i32
  %568 = sub nsw i32 %566, %567
  %569 = sitofp i32 %568 to float
  %570 = fmul fast float %569, %563
  %571 = fsub fast float 1.000000e+00, %570
  %572 = fmul fast float %571, %571
  %573 = fmul fast float %572, %571
  %574 = fsub fast float %571, %573
  %575 = fmul fast float %574, %559
  %576 = fsub fast float 1.000000e+00, %573
  %577 = fsub fast float %576, %575
  %578 = fmul fast float %569, 5.000000e-01
  %579 = fmul fast float %578, %577
  %580 = fsub fast float -5.000000e-01, %579
  %581 = fmul fast float %580, %422
  %582 = fadd fast float %581, 1.000000e+00
  %583 = fmul fast float %582, %434
  br label %584

; <label>:584                                     ; preds = %553, %401
  %585 = phi float [ %583, %553 ], [ %434, %401 ]
  %586 = call float @dx.op.binary.f32(i32 36, float %585, float %585)  ; FMin(a,b)
  %587 = call float @dx.op.binary.f32(i32 36, float %585, float %586)  ; FMin(a,b)
  %588 = fcmp fast ogt float %587, 0.000000e+00
  %589 = call float @dx.op.dot3.f32(i32 55, float %176, float %177, float %178, float %374, float %375, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = fcmp fast ogt float %589, 0.000000e+00
  %591 = and i1 %588, %590
  br i1 %591, label %592, label %861, !dx.controlflow.hints !40

; <label>:592                                     ; preds = %584
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %597 = select i1 %68, float %594, float %596
  %598 = extractvalue %dx.types.CBufRet.f32 %593, 2
  %599 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %600 = select i1 %68, float %598, float %599
  %601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.i32 %601, 0
  %603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.i32 %603, 0
  %605 = select i1 %68, i32 %602, i32 %604
  %606 = fcmp fast olt float %597, 5.000000e-01
  %607 = icmp eq i32 %605, 0
  %608 = or i1 %606, %607
  br i1 %608, label %856, label %609, !dx.controlflow.hints !41

; <label>:609                                     ; preds = %592
  %610 = fsub fast float %334, %130
  %611 = fsub fast float %335, %131
  %612 = fsub fast float %336, %132
  %613 = fmul fast float %610, %610
  %614 = fmul fast float %611, %611
  %615 = fadd fast float %613, %614
  %616 = fmul fast float %612, %612
  %617 = fadd fast float %615, %616
  %618 = call float @dx.op.unary.f32(i32 24, float %617)  ; Sqrt(value)
  %619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.i32 %619, 0
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %597, %331
  %623 = fdiv fast float %622, %618
  %624 = call float @dx.op.binary.f32(i32 36, float %623, float 1.000000e+01)  ; FMin(a,b)
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %627 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %628 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %629 = extractvalue %dx.types.CBufRet.f32 %625, 3
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %633 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %634 = extractvalue %dx.types.CBufRet.f32 %630, 3
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %639 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 0
  %642 = extractvalue %dx.types.CBufRet.f32 %640, 1
  %643 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %644 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %648 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %649 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = extractvalue %dx.types.CBufRet.f32 %650, 1
  %653 = extractvalue %dx.types.CBufRet.f32 %650, 2
  %654 = extractvalue %dx.types.CBufRet.f32 %650, 3
  %655 = select i1 %68, float %626, float %641
  %656 = select i1 %68, float %631, float %646
  %657 = select i1 %68, float %636, float %651
  %658 = select i1 %68, float %627, float %642
  %659 = select i1 %68, float %632, float %647
  %660 = select i1 %68, float %637, float %652
  %661 = select i1 %68, float %628, float %643
  %662 = select i1 %68, float %633, float %648
  %663 = select i1 %68, float %638, float %653
  %664 = select i1 %68, float %629, float %644
  %665 = select i1 %68, float %634, float %649
  %666 = select i1 %68, float %639, float %654
  %667 = fmul fast float %249, 0x401061CAC0000000
  %668 = fmul fast float %249, 0x4023E1D7E0000000
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %672 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %673 = extractvalue %dx.types.CBufRet.f32 %669, 3
  %674 = fsub fast float -0.000000e+00, %374
  %675 = fmul fast float %376, %674
  %676 = fmul fast float %374, %674
  %677 = fmul fast float %375, %375
  %678 = fsub fast float %676, %677
  %679 = fdiv fast float 1.000000e+00, %75
  %680 = fmul fast float %672, %64
  %681 = fmul fast float %673, %65
  %682 = fmul fast float %597, %374
  %683 = fmul fast float %597, %376
  %684 = fadd fast float %682, %130
  %685 = fadd fast float %683, %132
  %686 = fadd fast float %668, 5.000000e-01
  %687 = call float @dx.op.unary.f32(i32 22, float %686)  ; Frc(value)
  %688 = bitcast float %687 to i32
  %689 = ashr i32 %688, 1
  %690 = add nsw i32 %689, 532487669
  %691 = bitcast i32 %690 to float
  %692 = fmul fast float %691, %624
  %693 = fadd fast float %667, 5.000000e-01
  %694 = call float @dx.op.unary.f32(i32 22, float %693)  ; Frc(value)
  %695 = fmul fast float %694, 0x401921FB60000000
  %696 = call float @dx.op.unary.f32(i32 12, float %695)  ; Cos(value)
  %697 = fmul fast float %696, %696
  %698 = fsub fast float 1.000000e+00, %697
  %699 = bitcast float %698 to i32
  %700 = ashr i32 %699, 1
  %701 = add nsw i32 %700, 532487669
  %702 = bitcast i32 %701 to float
  %703 = fmul fast float %692, %696
  %704 = fmul fast float %703, %375
  %705 = fmul fast float %703, %674
  %706 = fadd fast float %684, %704
  %707 = fmul fast float %702, %692
  %708 = fmul fast float %675, %707
  %709 = fmul fast float %707, %376
  %710 = fmul fast float %707, %678
  %711 = fsub fast float %706, %708
  %712 = fadd fast float %709, %597
  %713 = fmul fast float %712, %375
  %714 = fadd fast float %705, %131
  %715 = fadd fast float %714, %713
  %716 = fadd fast float %685, %710
  %717 = fmul fast float %711, %655
  %718 = call float @dx.op.tertiary.f32(i32 46, float %715, float %658, float %717)  ; FMad(a,b,c)
  %719 = call float @dx.op.tertiary.f32(i32 46, float %716, float %661, float %718)  ; FMad(a,b,c)
  %720 = fadd fast float %719, %664
  %721 = fmul fast float %711, %656
  %722 = call float @dx.op.tertiary.f32(i32 46, float %715, float %659, float %721)  ; FMad(a,b,c)
  %723 = call float @dx.op.tertiary.f32(i32 46, float %716, float %662, float %722)  ; FMad(a,b,c)
  %724 = fadd fast float %723, %665
  %725 = fmul fast float %711, %657
  %726 = call float @dx.op.tertiary.f32(i32 46, float %715, float %660, float %725)  ; FMad(a,b,c)
  %727 = call float @dx.op.tertiary.f32(i32 46, float %716, float %663, float %726)  ; FMad(a,b,c)
  %728 = fadd fast float %727, %666
  %729 = fdiv fast float 1.000000e+00, %728
  %730 = fmul fast float %720, 5.000000e-01
  %731 = fmul fast float %724, -5.000000e-01
  %732 = fmul fast float %730, %729
  %733 = fmul fast float %731, %729
  %734 = fsub fast float 5.000000e-01, %680
  %735 = fadd fast float %734, %732
  %736 = fsub fast float 5.000000e-01, %681
  %737 = fadd fast float %736, %733
  %738 = fsub fast float %729, %679
  %739 = call float @dx.op.dot2.f32(i32 54, float %735, float %737, float %735, float %737)  ; Dot2(ax,ay,bx,by)
  %740 = call float @dx.op.binary.f32(i32 35, float %739, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %741 = call float @dx.op.dot2.f32(i32 54, float %670, float %671, float %670, float %671)  ; Dot2(ax,ay,bx,by)
  %742 = fmul fast float %741, %740
  %743 = call float @dx.op.unary.f32(i32 25, float %742)  ; Rsqrt(value)
  %744 = fmul fast float %743, %735
  %745 = fmul fast float %743, %737
  %746 = fadd fast float %744, %680
  %747 = fadd fast float %745, %681
  %748 = fmul fast float %735, %670
  %749 = fmul fast float %737, %671
  %750 = fmul fast float %748, %748
  %751 = fmul fast float %749, %749
  %752 = fadd fast float %750, %751
  %753 = call float @dx.op.unary.f32(i32 24, float %752)  ; Sqrt(value)
  %754 = fdiv fast float 1.000000e+00, %753
  %755 = fmul fast float %753, 3.906250e-03
  %756 = fmul fast float %235, 0x3F70624DE0000000
  %757 = fadd fast float %756, 0x3F70624DE0000000
  %758 = icmp sgt i32 %605, -1
  br i1 %758, label %759, label %821

; <label>:759                                     ; preds = %609
  br label %760

; <label>:760                                     ; preds = %817, %759
  %761 = phi float [ %792, %817 ], [ %75, %759 ]
  %762 = phi float [ %779, %817 ], [ %75, %759 ]
  %763 = phi float [ %762, %817 ], [ %75, %759 ]
  %764 = phi i32 [ %818, %817 ], [ 0, %759 ]
  %765 = sitofp i32 %764 to float
  %766 = fadd fast float %249, 5.000000e-01
  %767 = call float @dx.op.unary.f32(i32 22, float %766)  ; Frc(value)
  %768 = fadd fast float %765, %767
  %769 = sitofp i32 %605 to float
  %770 = fdiv fast float %768, %769
  %771 = fmul fast float %770, %770
  %772 = call float @dx.op.binary.f32(i32 36, float %771, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %773 = fmul fast float %772, %735
  %774 = fmul fast float %772, %737
  %775 = fmul fast float %772, %738
  %776 = fadd fast float %773, %746
  %777 = fadd fast float %774, %747
  %778 = fadd fast float %775, %679
  %779 = fdiv fast float 1.000000e+00, %778
  %780 = icmp ne i32 %620, 0
  %781 = fmul fast float %755, %772
  %782 = call float @dx.op.binary.f32(i32 36, float %781, float %621)  ; FMin(a,b)
  %783 = select i1 %780, float %782, float 0.000000e+00
  %784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %776, float %777, float undef, float undef, i32 0, i32 0, i32 undef, float %783)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = fcmp fast ogt float %785, -1.000000e+00
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 1
  %789 = select i1 %786, float %788, float 1.000000e+00
  %790 = fadd fast float %785, 1.000000e+00
  %791 = fmul fast float %789, %790
  %792 = call float @dx.op.unary.f32(i32 6, float %791)  ; FAbs(value)
  %793 = fmul fast float %792, %757
  %794 = fsub fast float %779, %792
  %795 = fsub fast float %794, %793
  %796 = fcmp fast ogt float %795, 0.000000e+00
  %797 = fcmp fast ogt float %600, 0.000000e+00
  br i1 %797, label %798, label %801, !dx.controlflow.hints !42

; <label>:798                                     ; preds = %760
  %799 = fsub fast float %779, %763
  %800 = call float @dx.op.binary.f32(i32 35, float %799, float %600)  ; FMax(a,b)
  br label %801

; <label>:801                                     ; preds = %798, %760
  %802 = phi float [ %800, %798 ], [ %597, %760 ]
  %803 = fcmp fast olt float %795, %802
  %804 = fcmp uge float %785, -1.000000e+00
  %805 = or i1 %68, %804
  %806 = call float @dx.op.unary.f32(i32 7, float %776)  ; Saturate(value)
  %807 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  %808 = fcmp fast oeq float %776, %806
  %809 = fcmp fast oeq float %777, %807
  %810 = and i1 %808, %809
  %811 = and i1 %805, %810
  %812 = and i1 %796, %803
  %813 = and i1 %812, %811
  %814 = fcmp fast ogt float %772, %754
  %815 = and i1 %814, %813
  %816 = zext i1 %815 to i32
  br i1 %815, label %820, label %817, !dx.controlflow.hints !43

; <label>:817                                     ; preds = %801
  %818 = add nuw nsw i32 %764, 1
  %819 = icmp slt i32 %764, %605
  br i1 %819, label %760, label %820

; <label>:820                                     ; preds = %817, %801
  br label %821

; <label>:821                                     ; preds = %820, %609
  %822 = phi i32 [ 0, %609 ], [ %816, %820 ]
  %823 = phi float [ %75, %609 ], [ %792, %820 ]
  %824 = phi float [ %75, %609 ], [ %761, %820 ]
  %825 = phi float [ %75, %609 ], [ %779, %820 ]
  %826 = phi float [ %75, %609 ], [ %762, %820 ]
  %827 = fsub fast float %826, %824
  %828 = fsub fast float %825, %823
  %829 = fsub fast float %827, %828
  %830 = fcmp fast une float %829, 0.000000e+00
  %831 = fmul fast float %827, %825
  %832 = fmul fast float %826, %828
  %833 = fsub fast float %831, %832
  %834 = fdiv fast float 1.000000e+00, %829
  %835 = fmul fast float %833, %834
  %836 = select i1 %830, float %835, float %825
  %837 = fdiv fast float 1.000000e+00, %836
  %838 = fsub fast float %837, %679
  %839 = fdiv fast float %838, %738
  %840 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %841 = fmul fast float %840, %735
  %842 = fmul fast float %840, %737
  %843 = fadd fast float %841, %746
  %844 = fadd fast float %842, %747
  %845 = fadd fast float %843, -5.000000e-01
  %846 = fadd fast float %844, -5.000000e-01
  %847 = call float @dx.op.unary.f32(i32 6, float %845)  ; FAbs(value)
  %848 = call float @dx.op.unary.f32(i32 6, float %846)  ; FAbs(value)
  %849 = fadd fast float %847, -5.000000e-01
  %850 = fadd fast float %848, -5.000000e-01
  %851 = call float @dx.op.binary.f32(i32 35, float %849, float %850)  ; FMax(a,b)
  %852 = fcmp fast olt float %851, 0.000000e+00
  %853 = icmp ne i32 %822, 0
  %854 = and i1 %853, %852
  %855 = select i1 %854, float 0.000000e+00, float 1.000000e+00
  br label %856

; <label>:856                                     ; preds = %821, %592
  %857 = phi float [ %855, %821 ], [ 1.000000e+00, %592 ]
  %858 = fmul fast float %857, %585
  %859 = fmul fast float %857, %585
  %860 = fmul fast float %857, %585
  br label %861

; <label>:861                                     ; preds = %856, %584
  %862 = phi float [ %858, %856 ], [ %585, %584 ]
  %863 = phi float [ %859, %856 ], [ %585, %584 ]
  %864 = phi float [ %860, %856 ], [ %585, %584 ]
  %865 = call float @dx.op.binary.f32(i32 36, float %863, float %864)  ; FMin(a,b)
  %866 = call float @dx.op.binary.f32(i32 36, float %862, float %865)  ; FMin(a,b)
  %867 = fcmp fast ogt float %866, 0x3F10000000000000
  %868 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %867)  ; WaveAnyTrue(cond)
  %869 = select i1 %868, i32 %313, i32 0
  %870 = or i32 %308, %869
  %871 = lshr i32 %254, 5
  %872 = lshr i32 %255, 5
  %873 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %871, i32 %872, i32 %311, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = lshr i32 %254, 1
  %876 = lshr i32 %255, 1
  %877 = and i32 %875, 15
  %878 = and i32 %876, 15
  %879 = and i32 %254, 1
  %880 = shl i32 %255, 1
  %881 = and i32 %880, 2
  %882 = or i32 %881, %879
  %883 = lshr i32 %874, 2
  %884 = and i32 %883, 8176
  %885 = lshr i32 %874, 11
  %886 = and i32 %885, 4080
  %887 = or i32 %884, %877
  %888 = or i32 %886, %878
  %889 = lshr i32 %874, 21
  %890 = and i32 %889, 1020
  %891 = or i32 %882, %890
  %892 = fmul fast float %862, 2.550000e+02
  %893 = fadd fast float %892, %248
  %894 = call float @dx.op.unary.f32(i32 27, float %893)  ; Round_ni(value)
  %895 = fmul fast float %894, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %887, i32 %888, i32 %891, float %895, float %895, float %895, float %895, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %896 = icmp eq i32 %309, %313
  br i1 %896, label %897, label %307, !llvm.loop !44

; <label>:897                                     ; preds = %861
  br label %898

; <label>:898                                     ; preds = %897, %279
  %899 = phi i32 [ 0, %279 ], [ %870, %897 ]
  %900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.i32 %900, 0
  %902 = call i32 @dx.op.tertiary.i32(i32 49, i32 %260, i32 %901, i32 %280)  ; UMad(a,b,c)
  %903 = shl i32 %902, 2
  %904 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %903, i32 undef, i32 undef, i32 %899)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %905 = add i32 %280, 1
  %906 = icmp ugt i32 %905, %276
  br i1 %906, label %907, label %279

; <label>:907                                     ; preds = %898
  br label %908

; <label>:908                                     ; preds = %907, %253, %55
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
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !30}
!30 = !{i32 0, i64 524560, i32 4, !31}
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

