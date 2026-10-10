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
; shader hash: 7f95ad5f6259f0b64b34ba510cf96681
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
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %78 = fmul fast float %76, %63
  %79 = fmul fast float %77, %64
  %80 = fmul fast float %78, 2.000000e+00
  %81 = fmul fast float %79, 2.000000e+00
  %82 = fsub fast float 1.000000e+00, %80
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
  %178 = fmul fast float %76, %61
  %179 = fmul fast float %77, %62
  %180 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %178, float %179, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = extractvalue %dx.types.ResRet.f32 %180, 1
  %183 = extractvalue %dx.types.ResRet.f32 %180, 2
  %184 = fcmp fast ogt float %181, -1.000000e+00
  %185 = select i1 %184, float %70, float 1.000000e+00
  %186 = fadd fast float %181, 1.000000e+00
  %187 = fmul fast float %185, %186
  %188 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %189 = fcmp fast ogt float %182, -1.000000e+00
  %190 = select i1 %189, float %70, float 1.000000e+00
  %191 = fadd fast float %182, 1.000000e+00
  %192 = fmul fast float %190, %191
  %193 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %194 = fcmp fast ogt float %183, -1.000000e+00
  %195 = select i1 %194, float %70, float 1.000000e+00
  %196 = fadd fast float %183, 1.000000e+00
  %197 = fmul fast float %195, %196
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = fadd fast float %61, 1.000000e+00
  %200 = fmul fast float %76, %199
  %201 = fadd fast float %62, 1.000000e+00
  %202 = fmul fast float %77, %201
  %203 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %200, float %202, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = extractvalue %dx.types.ResRet.f32 %203, 2
  %206 = fcmp fast ogt float %204, -1.000000e+00
  %207 = select i1 %206, float %70, float 1.000000e+00
  %208 = fadd fast float %204, 1.000000e+00
  %209 = fmul fast float %207, %208
  %210 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %211 = fcmp fast ogt float %205, -1.000000e+00
  %212 = select i1 %211, float %70, float 1.000000e+00
  %213 = fadd fast float %205, 1.000000e+00
  %214 = fmul fast float %212, %213
  %215 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %216 = fsub fast float %198, %193
  %217 = fsub fast float %210, %193
  %218 = fsub fast float %188, %193
  %219 = fsub fast float %215, %193
  %220 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %221 = call float @dx.op.unary.f32(i32 6, float %216)  ; FAbs(value)
  %222 = call float @dx.op.binary.f32(i32 35, float %221, float %220)  ; FMax(a,b)
  %223 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %224 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %225 = call float @dx.op.binary.f32(i32 35, float %224, float %223)  ; FMax(a,b)
  %226 = fadd fast float %217, %216
  %227 = call float @dx.op.unary.f32(i32 6, float %226)  ; FAbs(value)
  %228 = fadd fast float %219, %218
  %229 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %230 = fsub fast float %225, %229
  %231 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %232 = fsub fast float %222, %227
  %233 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %234 = call float @dx.op.binary.f32(i32 35, float %233, float %231)  ; FMax(a,b)
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %237 = fmul fast float %236, 0x3FE3C6EF40000000
  %238 = frem fast float %63, 2.560000e+02
  %239 = frem fast float %64, 2.560000e+02
  %240 = fptoui float %238 to i32
  %241 = fptoui float %239 to i32
  %242 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %240, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 2
  %245 = fadd fast float %243, %237
  %246 = fadd fast float %244, %237
  %247 = call float @dx.op.unary.f32(i32 22, float %245)  ; Frc(value)
  %248 = call float @dx.op.unary.f32(i32 22, float %246)  ; Frc(value)
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 0
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %886, label %252, !dx.controlflow.hints !36

; <label>:252                                     ; preds = %54
  %253 = fptoui float %63 to i32
  %254 = fptoui float %64 to i32
  %255 = lshr i32 %253, 4
  %256 = lshr i32 %254, 4
  %257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.i32 %257, 0
  %259 = call i32 @dx.op.tertiary.i32(i32 49, i32 %256, i32 %258, i32 %255)  ; UMad(a,b,c)
  %260 = add nsw i32 %250, -1
  %261 = call i32 @dx.op.binary.i32(i32 37, i32 %260, i32 0)  ; IMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %74, float 0.000000e+00)  ; FMax(a,b)
  %263 = fptoui float %262 to i32
  %264 = lshr i32 %263, 5
  %265 = call i32 @dx.op.binary.i32(i32 40, i32 %264, i32 8191)  ; UMin(a,b)
  %266 = shl i32 %265, 2
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = lshr i32 %268, 16
  %270 = and i32 %268, 65535
  %271 = lshr i32 %268, 21
  %272 = lshr i32 %270, 5
  %273 = call i32 @dx.op.binary.i32(i32 40, i32 %272, i32 %261)  ; UMin(a,b)
  %274 = icmp ugt i32 %271, %273
  br i1 %274, label %886, label %275

; <label>:275                                     ; preds = %252
  br label %276

; <label>:276                                     ; preds = %882, %275
  %277 = phi i32 [ %883, %882 ], [ %271, %275 ]
  %278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.i32 %278, 0
  %280 = call i32 @dx.op.tertiary.i32(i32 49, i32 %259, i32 %279, i32 %277)  ; UMad(a,b,c)
  %281 = shl i32 %280, 2
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %277, 5
  %285 = sub nsw i32 %269, %284
  %286 = call i32 @dx.op.binary.i32(i32 37, i32 %285, i32 0)  ; IMax(a,b)
  %287 = call i32 @dx.op.binary.i32(i32 38, i32 %286, i32 31)  ; IMin(a,b)
  %288 = sub nsw i32 1, %269
  %289 = add nsw i32 %288, %270
  %290 = call i32 @dx.op.binary.i32(i32 37, i32 %289, i32 0)  ; IMax(a,b)
  %291 = call i32 @dx.op.binary.i32(i32 38, i32 %290, i32 32)  ; IMin(a,b)
  %292 = and i32 %291, 31
  %293 = shl i32 -1, %292
  %294 = xor i32 %293, -1
  %295 = and i32 %287, 31
  %296 = shl i32 %294, %295
  %297 = icmp eq i32 %291, 32
  %298 = select i1 %297, i32 -1, i32 %296
  %299 = and i32 %298, %283
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %882, label %301

; <label>:301                                     ; preds = %276
  br label %302

; <label>:302                                     ; preds = %853, %301
  %303 = phi i32 [ %308, %853 ], [ %299, %301 ]
  %304 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %303)  ; FirstbitLo(value)
  %305 = add i32 %304, %284
  %306 = and i32 %304, 31
  %307 = shl i32 1, %306
  %308 = xor i32 %307, %303
  %309 = mul i32 %305, 112
  %310 = add i32 %309, 16
  %311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = add i32 %309, 28
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = add i32 %309, 32
  %319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = extractvalue %dx.types.ResRet.f32 %319, 1
  %322 = extractvalue %dx.types.ResRet.f32 %319, 2
  %323 = add i32 %309, 44
  %324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = add i32 %309, 48
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = extractvalue %dx.types.ResRet.f32 %327, 3
  %332 = add i32 %309, 64
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = extractvalue %dx.types.ResRet.f32 %333, 3
  %338 = add i32 %309, 92
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 65535
  %342 = uitofp i32 %341 to float
  %343 = lshr i32 %340, 16
  %344 = uitofp i32 %343 to float
  %345 = and i32 %317, 65535
  %346 = and i32 %317, 50331648
  %347 = icmp eq i32 %346, 33554432
  %348 = call float @dx.op.dot3.f32(i32 55, float %320, float %321, float %322, float %320, float %321, float %322)  ; Dot3(ax,ay,az,bx,by,bz)
  %349 = fsub fast float %129, %328
  %350 = fsub fast float %130, %329
  %351 = fsub fast float %131, %330
  %352 = call float @dx.op.dot3.f32(i32 55, float %349, float %350, float %351, float %320, float %321, float %322)  ; Dot3(ax,ay,az,bx,by,bz)
  %353 = fdiv fast float %352, %348
  %354 = call float @dx.op.binary.f32(i32 35, float %353, float -1.000000e+00)  ; FMax(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float %354, float 1.000000e+00)  ; FMin(a,b)
  %356 = fmul fast float %355, %320
  %357 = fmul fast float %355, %321
  %358 = fmul fast float %355, %322
  %359 = fadd fast float %356, %328
  %360 = fadd fast float %357, %329
  %361 = fadd fast float %358, %330
  %362 = fsub fast float %359, %129
  %363 = fsub fast float %360, %130
  %364 = fsub fast float %361, %131
  %365 = call float @dx.op.dot3.f32(i32 55, float %362, float %363, float %364, float %362, float %363, float %364)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %367 = fdiv fast float 1.000000e+00, %366
  %368 = fmul fast float %362, %367
  %369 = fmul fast float %363, %367
  %370 = fmul fast float %364, %367
  br i1 %347, label %371, label %395, !dx.controlflow.hints !37

; <label>:371                                     ; preds = %302
  %372 = fmul fast float %336, %312
  %373 = fmul fast float %336, %313
  %374 = fmul fast float %336, %314
  %375 = fsub fast float %372, %129
  %376 = fadd fast float %375, %359
  %377 = fsub fast float %373, %130
  %378 = fadd fast float %377, %360
  %379 = fsub fast float %374, %131
  %380 = fadd fast float %379, %361
  %381 = call float @dx.op.dot3.f32(i32 55, float %376, float %378, float %380, float %376, float %378, float %380)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = call float @dx.op.unary.f32(i32 25, float %381)  ; Rsqrt(value)
  %383 = fmul fast float %382, %376
  %384 = fmul fast float %382, %378
  %385 = fmul fast float %382, %380
  %386 = fsub fast float %129, %359
  %387 = fsub fast float %130, %360
  %388 = fsub fast float %131, %361
  %389 = fsub fast float -0.000000e+00, %386
  %390 = fsub fast float -0.000000e+00, %387
  %391 = fsub fast float -0.000000e+00, %388
  %392 = call float @dx.op.dot3.f32(i32 55, float %389, float %390, float %391, float %312, float %313, float %314)  ; Dot3(ax,ay,az,bx,by,bz)
  %393 = fcmp fast ogt float %392, 0.000000e+00
  %394 = uitofp i1 %393 to float
  br label %395

; <label>:395                                     ; preds = %371, %302
  %396 = phi float [ %394, %371 ], [ 1.000000e+00, %302 ]
  %397 = phi float [ %383, %371 ], [ %368, %302 ]
  %398 = phi float [ %384, %371 ], [ %369, %302 ]
  %399 = phi float [ %385, %371 ], [ %370, %302 ]
  %400 = call float @dx.op.dot3.f32(i32 55, float %312, float %313, float %314, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %401 = fmul fast float %400, %400
  %402 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %403 = fsub fast float 1.000000e+00, %402
  %404 = fmul fast float %403, 5.000000e-01
  %405 = fcmp fast ogt float %400, 0.000000e+00
  %406 = fsub fast float 1.000000e+00, %404
  %407 = select i1 %405, float %404, float %406
  %408 = fmul fast float %407, %344
  %409 = fadd fast float %408, %342
  %410 = fmul fast float %409, 0x3EF0001000000000
  %411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %410, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = fmul fast float %400, %334
  %414 = fadd fast float %413, %335
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = select i1 %347, float 1.000000e+00, float %415
  %417 = select i1 %347, float %415, float 1.000000e+00
  %418 = fmul fast float %366, %331
  %419 = fsub fast float 1.000000e+00, %418
  %420 = fmul fast float %419, %337
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = fmul fast float %421, %417
  %423 = fmul fast float %422, 2.000000e+00
  %424 = fsub fast float 3.000000e+00, %423
  %425 = fmul fast float %412, %396
  %426 = fmul fast float %422, %422
  %427 = fmul fast float %426, %425
  %428 = fmul fast float %427, %424
  %429 = icmp ne i32 %345, 255
  %430 = call float @dx.op.binary.f32(i32 36, float %428, float %428)  ; FMin(a,b)
  %431 = call float @dx.op.binary.f32(i32 36, float %428, float %430)  ; FMin(a,b)
  %432 = fcmp fast ogt float %431, 0.000000e+00
  %433 = and i1 %429, %432
  br i1 %433, label %434, label %578, !dx.controlflow.hints !38

; <label>:434                                     ; preds = %395
  %435 = mul nuw nsw i32 %345, 176
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = add nuw nsw i32 %435, 16
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = add nuw nsw i32 %435, 32
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = add nuw nsw i32 %435, 48
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = add nuw nsw i32 %435, 64
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = extractvalue %dx.types.ResRet.f32 %457, 3
  %462 = add nuw nsw i32 %435, 80
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = add nuw nsw i32 %435, 96
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = extractvalue %dx.types.ResRet.f32 %469, 3
  %474 = bitcast float %444 to i32
  %475 = fmul fast float %449, %175
  %476 = fmul fast float %449, %176
  %477 = fmul fast float %449, %177
  %478 = fadd fast float %475, %129
  %479 = fadd fast float %476, %130
  %480 = fadd fast float %477, %131
  %481 = fmul fast float %478, %452
  %482 = call float @dx.op.tertiary.f32(i32 46, float %479, float %458, float %481)  ; FMad(a,b,c)
  %483 = call float @dx.op.tertiary.f32(i32 46, float %480, float %464, float %482)  ; FMad(a,b,c)
  %484 = fadd fast float %483, %470
  %485 = fmul fast float %478, %453
  %486 = call float @dx.op.tertiary.f32(i32 46, float %479, float %459, float %485)  ; FMad(a,b,c)
  %487 = call float @dx.op.tertiary.f32(i32 46, float %480, float %465, float %486)  ; FMad(a,b,c)
  %488 = fadd fast float %487, %471
  %489 = fmul fast float %478, %454
  %490 = call float @dx.op.tertiary.f32(i32 46, float %479, float %460, float %489)  ; FMad(a,b,c)
  %491 = call float @dx.op.tertiary.f32(i32 46, float %480, float %466, float %490)  ; FMad(a,b,c)
  %492 = fadd fast float %491, %472
  %493 = fmul fast float %478, %455
  %494 = call float @dx.op.tertiary.f32(i32 46, float %479, float %461, float %493)  ; FMad(a,b,c)
  %495 = call float @dx.op.tertiary.f32(i32 46, float %480, float %467, float %494)  ; FMad(a,b,c)
  %496 = fadd fast float %495, %473
  %497 = fdiv fast float %484, %496
  %498 = fdiv fast float %488, %496
  %499 = fdiv fast float %492, %496
  %500 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %499)  ; FMax(a,b)
  %501 = fmul fast float %247, 0x401921FB60000000
  %502 = call float @dx.op.unary.f32(i32 13, float %501)  ; Sin(value)
  %503 = call float @dx.op.unary.f32(i32 12, float %501)  ; Cos(value)
  %504 = fmul fast float %503, %448
  %505 = call float @dx.op.tertiary.f32(i32 46, float %502, float %448, float 0.000000e+00)  ; FMad(a,b,c)
  %506 = fmul fast float %448, %502
  %507 = fsub fast float -0.000000e+00, %506
  %508 = call float @dx.op.tertiary.f32(i32 46, float %503, float %448, float 0.000000e+00)  ; FMad(a,b,c)
  br label %509

; <label>:509                                     ; preds = %509, %434
  %510 = phi float [ 0.000000e+00, %434 ], [ %542, %509 ]
  %511 = phi float [ 0.000000e+00, %434 ], [ %544, %509 ]
  %512 = phi i32 [ 0, %434 ], [ %545, %509 ]
  %513 = mul i32 %512, 2
  %514 = add i32 0, %513
  %515 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %514
  %516 = load float, float* %515, align 4
  %517 = mul i32 %512, 2
  %518 = add i32 1, %517
  %519 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %518
  %520 = load float, float* %519, align 4
  %521 = fmul fast float %504, %516
  %522 = call float @dx.op.tertiary.f32(i32 46, float %520, float %507, float %521)  ; FMad(a,b,c)
  %523 = fmul fast float %516, %505
  %524 = call float @dx.op.tertiary.f32(i32 46, float %520, float %508, float %523)  ; FMad(a,b,c)
  %525 = fadd fast float %522, %497
  %526 = fadd fast float %524, %498
  %527 = fmul fast float %525, %443
  %528 = fmul fast float %526, %443
  %529 = call float @dx.op.binary.f32(i32 35, float %527, float %439)  ; FMax(a,b)
  %530 = call float @dx.op.binary.f32(i32 35, float %528, float %439)  ; FMax(a,b)
  %531 = call float @dx.op.binary.f32(i32 36, float %529, float %440)  ; FMin(a,b)
  %532 = call float @dx.op.binary.f32(i32 36, float %530, float %440)  ; FMin(a,b)
  %533 = fadd fast float %531, %437
  %534 = fadd fast float %532, %438
  %535 = uitofp i32 %474 to float
  %536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %15, float %533, float %534, float %535, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = fsub fast float %537, %500
  %539 = fsub fast float %538, %447
  %540 = fcmp fast ogt float %539, 0.000000e+00
  %541 = select i1 %540, float 1.000000e+00, float 0.000000e+00
  %542 = fadd fast float %541, %510
  %543 = select i1 %540, float %539, float 0.000000e+00
  %544 = fadd fast float %543, %511
  %545 = add nuw nsw i32 %512, 1
  %546 = icmp eq i32 %545, 8
  br i1 %546, label %547, label %509

; <label>:547                                     ; preds = %509
  %548 = fdiv fast float 1.000000e+00, %542
  %549 = fmul fast float %548, %544
  %550 = fdiv fast float 1.000000e+00, %500
  %551 = fmul fast float %549, %550
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %553 = call float @dx.op.binary.f32(i32 35, float %552, float 0.000000e+00)  ; FMax(a,b)
  %554 = fmul fast float %542, 1.250000e-01
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = fmul fast float %555, 2.000000e+00
  %557 = fadd fast float %556, -1.000000e+00
  %558 = fcmp fast ogt float %557, 0.000000e+00
  %559 = fcmp fast olt float %557, 0.000000e+00
  %560 = zext i1 %558 to i32
  %561 = zext i1 %559 to i32
  %562 = sub nsw i32 %560, %561
  %563 = sitofp i32 %562 to float
  %564 = fmul fast float %563, %557
  %565 = fsub fast float 1.000000e+00, %564
  %566 = fmul fast float %565, %565
  %567 = fmul fast float %566, %565
  %568 = fsub fast float %565, %567
  %569 = fmul fast float %568, %553
  %570 = fsub fast float 1.000000e+00, %567
  %571 = fsub fast float %570, %569
  %572 = fmul fast float %563, 5.000000e-01
  %573 = fmul fast float %572, %571
  %574 = fsub fast float -5.000000e-01, %573
  %575 = fmul fast float %574, %416
  %576 = fadd fast float %575, 1.000000e+00
  %577 = fmul fast float %576, %428
  br label %578

; <label>:578                                     ; preds = %547, %395
  %579 = phi float [ %577, %547 ], [ %428, %395 ]
  %580 = call float @dx.op.binary.f32(i32 36, float %579, float %579)  ; FMin(a,b)
  %581 = call float @dx.op.binary.f32(i32 36, float %579, float %580)  ; FMin(a,b)
  %582 = fcmp fast ogt float %581, 0.000000e+00
  %583 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %368, float %369, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %584 = fcmp fast ogt float %583, 0.000000e+00
  %585 = and i1 %582, %584
  br i1 %585, label %586, label %853, !dx.controlflow.hints !39

; <label>:586                                     ; preds = %578
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %591 = select i1 %67, float %588, float %590
  %592 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %593 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %594 = select i1 %67, float %592, float %593
  %595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.i32 %595, 0
  %597 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.i32 %597, 0
  %599 = select i1 %67, i32 %596, i32 %598
  %600 = fcmp fast olt float %591, 5.000000e-01
  %601 = icmp eq i32 %599, 0
  %602 = or i1 %600, %601
  br i1 %602, label %850, label %603, !dx.controlflow.hints !40

; <label>:603                                     ; preds = %586
  %604 = fsub fast float %328, %129
  %605 = fsub fast float %329, %130
  %606 = fsub fast float %330, %131
  %607 = fmul fast float %604, %604
  %608 = fmul fast float %605, %605
  %609 = fadd fast float %607, %608
  %610 = fmul fast float %606, %606
  %611 = fadd fast float %609, %610
  %612 = call float @dx.op.unary.f32(i32 24, float %611)  ; Sqrt(value)
  %613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.i32 %613, 0
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %591, %325
  %617 = fdiv fast float %616, %612
  %618 = call float @dx.op.binary.f32(i32 36, float %617, float 1.000000e+01)  ; FMin(a,b)
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 0
  %621 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %622 = extractvalue %dx.types.CBufRet.f32 %619, 2
  %623 = extractvalue %dx.types.CBufRet.f32 %619, 3
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %628 = extractvalue %dx.types.CBufRet.f32 %624, 3
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 0
  %631 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %632 = extractvalue %dx.types.CBufRet.f32 %629, 2
  %633 = extractvalue %dx.types.CBufRet.f32 %629, 3
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %638 = extractvalue %dx.types.CBufRet.f32 %634, 3
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %642 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %643 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %647 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %648 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %649 = select i1 %67, float %620, float %635
  %650 = select i1 %67, float %625, float %640
  %651 = select i1 %67, float %630, float %645
  %652 = select i1 %67, float %621, float %636
  %653 = select i1 %67, float %626, float %641
  %654 = select i1 %67, float %631, float %646
  %655 = select i1 %67, float %622, float %637
  %656 = select i1 %67, float %627, float %642
  %657 = select i1 %67, float %632, float %647
  %658 = select i1 %67, float %623, float %638
  %659 = select i1 %67, float %628, float %643
  %660 = select i1 %67, float %633, float %648
  %661 = fmul fast float %248, 0x401061CAC0000000
  %662 = fmul fast float %248, 0x4023E1D7E0000000
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %665 = extractvalue %dx.types.CBufRet.f32 %663, 1
  %666 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %667 = extractvalue %dx.types.CBufRet.f32 %663, 3
  %668 = fsub fast float -0.000000e+00, %368
  %669 = fmul fast float %370, %668
  %670 = fmul fast float %368, %668
  %671 = fmul fast float %369, %369
  %672 = fsub fast float %670, %671
  %673 = fdiv fast float 1.000000e+00, %74
  %674 = fmul fast float %666, %63
  %675 = fmul fast float %667, %64
  %676 = fmul fast float %591, %368
  %677 = fmul fast float %591, %370
  %678 = fadd fast float %676, %129
  %679 = fadd fast float %677, %131
  %680 = fadd fast float %662, 5.000000e-01
  %681 = call float @dx.op.unary.f32(i32 22, float %680)  ; Frc(value)
  %682 = bitcast float %681 to i32
  %683 = ashr i32 %682, 1
  %684 = add nsw i32 %683, 532487669
  %685 = bitcast i32 %684 to float
  %686 = fmul fast float %685, %618
  %687 = fadd fast float %661, 5.000000e-01
  %688 = call float @dx.op.unary.f32(i32 22, float %687)  ; Frc(value)
  %689 = fmul fast float %688, 0x401921FB60000000
  %690 = call float @dx.op.unary.f32(i32 12, float %689)  ; Cos(value)
  %691 = fmul fast float %690, %690
  %692 = fsub fast float 1.000000e+00, %691
  %693 = bitcast float %692 to i32
  %694 = ashr i32 %693, 1
  %695 = add nsw i32 %694, 532487669
  %696 = bitcast i32 %695 to float
  %697 = fmul fast float %686, %690
  %698 = fmul fast float %697, %369
  %699 = fmul fast float %697, %668
  %700 = fadd fast float %678, %698
  %701 = fmul fast float %696, %686
  %702 = fmul fast float %669, %701
  %703 = fmul fast float %701, %370
  %704 = fmul fast float %701, %672
  %705 = fsub fast float %700, %702
  %706 = fadd fast float %703, %591
  %707 = fmul fast float %706, %369
  %708 = fadd fast float %699, %130
  %709 = fadd fast float %708, %707
  %710 = fadd fast float %679, %704
  %711 = fmul fast float %705, %649
  %712 = call float @dx.op.tertiary.f32(i32 46, float %709, float %652, float %711)  ; FMad(a,b,c)
  %713 = call float @dx.op.tertiary.f32(i32 46, float %710, float %655, float %712)  ; FMad(a,b,c)
  %714 = fadd fast float %713, %658
  %715 = fmul fast float %705, %650
  %716 = call float @dx.op.tertiary.f32(i32 46, float %709, float %653, float %715)  ; FMad(a,b,c)
  %717 = call float @dx.op.tertiary.f32(i32 46, float %710, float %656, float %716)  ; FMad(a,b,c)
  %718 = fadd fast float %717, %659
  %719 = fmul fast float %705, %651
  %720 = call float @dx.op.tertiary.f32(i32 46, float %709, float %654, float %719)  ; FMad(a,b,c)
  %721 = call float @dx.op.tertiary.f32(i32 46, float %710, float %657, float %720)  ; FMad(a,b,c)
  %722 = fadd fast float %721, %660
  %723 = fdiv fast float 1.000000e+00, %722
  %724 = fmul fast float %714, 5.000000e-01
  %725 = fmul fast float %718, -5.000000e-01
  %726 = fmul fast float %724, %723
  %727 = fmul fast float %725, %723
  %728 = fsub fast float 5.000000e-01, %674
  %729 = fadd fast float %728, %726
  %730 = fsub fast float 5.000000e-01, %675
  %731 = fadd fast float %730, %727
  %732 = fsub fast float %723, %673
  %733 = call float @dx.op.dot2.f32(i32 54, float %729, float %731, float %729, float %731)  ; Dot2(ax,ay,bx,by)
  %734 = call float @dx.op.binary.f32(i32 35, float %733, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %735 = call float @dx.op.dot2.f32(i32 54, float %664, float %665, float %664, float %665)  ; Dot2(ax,ay,bx,by)
  %736 = fmul fast float %735, %734
  %737 = call float @dx.op.unary.f32(i32 25, float %736)  ; Rsqrt(value)
  %738 = fmul fast float %737, %729
  %739 = fmul fast float %737, %731
  %740 = fadd fast float %738, %674
  %741 = fadd fast float %739, %675
  %742 = fmul fast float %729, %664
  %743 = fmul fast float %731, %665
  %744 = fmul fast float %742, %742
  %745 = fmul fast float %743, %743
  %746 = fadd fast float %744, %745
  %747 = call float @dx.op.unary.f32(i32 24, float %746)  ; Sqrt(value)
  %748 = fdiv fast float 1.000000e+00, %747
  %749 = fmul fast float %747, 3.906250e-03
  %750 = fmul fast float %234, 0x3F70624DE0000000
  %751 = fadd fast float %750, 0x3F70624DE0000000
  %752 = icmp sgt i32 %599, -1
  br i1 %752, label %753, label %815

; <label>:753                                     ; preds = %603
  br label %754

; <label>:754                                     ; preds = %811, %753
  %755 = phi float [ %786, %811 ], [ %74, %753 ]
  %756 = phi float [ %773, %811 ], [ %74, %753 ]
  %757 = phi float [ %756, %811 ], [ %74, %753 ]
  %758 = phi i32 [ %812, %811 ], [ 0, %753 ]
  %759 = sitofp i32 %758 to float
  %760 = fadd fast float %248, 5.000000e-01
  %761 = call float @dx.op.unary.f32(i32 22, float %760)  ; Frc(value)
  %762 = fadd fast float %759, %761
  %763 = sitofp i32 %599 to float
  %764 = fdiv fast float %762, %763
  %765 = fmul fast float %764, %764
  %766 = call float @dx.op.binary.f32(i32 36, float %765, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %767 = fmul fast float %766, %729
  %768 = fmul fast float %766, %731
  %769 = fmul fast float %766, %732
  %770 = fadd fast float %767, %740
  %771 = fadd fast float %768, %741
  %772 = fadd fast float %769, %673
  %773 = fdiv fast float 1.000000e+00, %772
  %774 = icmp ne i32 %614, 0
  %775 = fmul fast float %749, %766
  %776 = call float @dx.op.binary.f32(i32 36, float %775, float %615)  ; FMin(a,b)
  %777 = select i1 %774, float %776, float 0.000000e+00
  %778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %770, float %771, float undef, float undef, i32 0, i32 0, i32 undef, float %777)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = fcmp fast ogt float %779, -1.000000e+00
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %783 = select i1 %780, float %782, float 1.000000e+00
  %784 = fadd fast float %779, 1.000000e+00
  %785 = fmul fast float %783, %784
  %786 = call float @dx.op.unary.f32(i32 6, float %785)  ; FAbs(value)
  %787 = fmul fast float %786, %751
  %788 = fsub fast float %773, %786
  %789 = fsub fast float %788, %787
  %790 = fcmp fast ogt float %789, 0.000000e+00
  %791 = fcmp fast ogt float %594, 0.000000e+00
  br i1 %791, label %792, label %795, !dx.controlflow.hints !41

; <label>:792                                     ; preds = %754
  %793 = fsub fast float %773, %757
  %794 = call float @dx.op.binary.f32(i32 35, float %793, float %594)  ; FMax(a,b)
  br label %795

; <label>:795                                     ; preds = %792, %754
  %796 = phi float [ %794, %792 ], [ %591, %754 ]
  %797 = fcmp fast olt float %789, %796
  %798 = fcmp uge float %779, -1.000000e+00
  %799 = or i1 %67, %798
  %800 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %801 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %802 = fcmp fast oeq float %770, %800
  %803 = fcmp fast oeq float %771, %801
  %804 = and i1 %802, %803
  %805 = and i1 %799, %804
  %806 = and i1 %790, %797
  %807 = and i1 %806, %805
  %808 = fcmp fast ogt float %766, %748
  %809 = and i1 %808, %807
  %810 = zext i1 %809 to i32
  br i1 %809, label %814, label %811, !dx.controlflow.hints !42

; <label>:811                                     ; preds = %795
  %812 = add nuw nsw i32 %758, 1
  %813 = icmp slt i32 %758, %599
  br i1 %813, label %754, label %814

; <label>:814                                     ; preds = %811, %795
  br label %815

; <label>:815                                     ; preds = %814, %603
  %816 = phi i32 [ 0, %603 ], [ %810, %814 ]
  %817 = phi float [ %74, %603 ], [ %786, %814 ]
  %818 = phi float [ %74, %603 ], [ %755, %814 ]
  %819 = phi float [ %74, %603 ], [ %773, %814 ]
  %820 = phi float [ %74, %603 ], [ %756, %814 ]
  %821 = fsub fast float %820, %818
  %822 = fsub fast float %819, %817
  %823 = fsub fast float %821, %822
  %824 = fcmp fast une float %823, 0.000000e+00
  %825 = fmul fast float %821, %819
  %826 = fmul fast float %820, %822
  %827 = fsub fast float %825, %826
  %828 = fdiv fast float 1.000000e+00, %823
  %829 = fmul fast float %827, %828
  %830 = select i1 %824, float %829, float %819
  %831 = fdiv fast float 1.000000e+00, %830
  %832 = fsub fast float %831, %673
  %833 = fdiv fast float %832, %732
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = fmul fast float %834, %729
  %836 = fmul fast float %834, %731
  %837 = fadd fast float %835, %740
  %838 = fadd fast float %836, %741
  %839 = fadd fast float %837, -5.000000e-01
  %840 = fadd fast float %838, -5.000000e-01
  %841 = call float @dx.op.unary.f32(i32 6, float %839)  ; FAbs(value)
  %842 = call float @dx.op.unary.f32(i32 6, float %840)  ; FAbs(value)
  %843 = fadd fast float %841, -5.000000e-01
  %844 = fadd fast float %842, -5.000000e-01
  %845 = call float @dx.op.binary.f32(i32 35, float %843, float %844)  ; FMax(a,b)
  %846 = fcmp fast olt float %845, 0.000000e+00
  %847 = icmp ne i32 %816, 0
  %848 = and i1 %847, %846
  %849 = select i1 %848, float 0.000000e+00, float 1.000000e+00
  br label %850

; <label>:850                                     ; preds = %815, %586
  %851 = phi float [ %849, %815 ], [ 1.000000e+00, %586 ]
  %852 = fmul fast float %851, %579
  br label %853

; <label>:853                                     ; preds = %850, %578
  %854 = phi float [ %852, %850 ], [ %579, %578 ]
  %855 = lshr i32 %253, 5
  %856 = lshr i32 %254, 5
  %857 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %855, i32 %856, i32 %305, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = lshr i32 %253, 1
  %860 = lshr i32 %254, 1
  %861 = and i32 %859, 15
  %862 = and i32 %860, 15
  %863 = and i32 %253, 1
  %864 = shl i32 %254, 1
  %865 = and i32 %864, 2
  %866 = or i32 %865, %863
  %867 = lshr i32 %858, 2
  %868 = and i32 %867, 8176
  %869 = lshr i32 %858, 11
  %870 = and i32 %869, 4080
  %871 = or i32 %868, %861
  %872 = or i32 %870, %862
  %873 = lshr i32 %858, 21
  %874 = and i32 %873, 1020
  %875 = or i32 %866, %874
  %876 = fmul fast float %854, 2.550000e+02
  %877 = fadd fast float %876, %247
  %878 = call float @dx.op.unary.f32(i32 27, float %877)  ; Round_ni(value)
  %879 = fmul fast float %878, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %871, i32 %872, i32 %875, float %879, float %879, float %879, float %879, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %880 = icmp eq i32 %303, %307
  br i1 %880, label %881, label %302, !llvm.loop !43

; <label>:881                                     ; preds = %853
  br label %882

; <label>:882                                     ; preds = %881, %276
  %883 = add i32 %277, 1
  %884 = icmp ugt i32 %883, %273
  br i1 %884, label %885, label %276

; <label>:885                                     ; preds = %882
  br label %886

; <label>:886                                     ; preds = %885, %252, %54
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
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
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
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}

