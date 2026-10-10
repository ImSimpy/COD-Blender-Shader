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
; shader hash: 6cd58db3083069c746dc1de3b5a5384d
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
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T4            t19     1
;                                   texture    byte         r/o      T5            t20     1
;                                   texture     f32          1d      T6             t8     1
;                                   texture     f32          2d      T7            t13     1
;                                   texture     f32     2darray      T8             t1     1
;                                   texture    byte         r/o      T9             t6     1
;                                   texture    byte         r/o     T10             t7     1
;                                       UAV     f32     2darray      U0             u0     1
;                                       UAV     u32     2darray      U1             u1     1
;                                       UAV     u32     2darray      U2             u2     1
;                                       UAV  struct         r/w      U3             u3     1
;                                       UAV     u32     2darray      U4             u7     1
;                                       UAV    byte         r/w      U5             u6     1
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
%"class.RWTexture2DArray<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %25 = alloca [4 x i32], align 4
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %30 = shl i32 %27, 3
  %31 = mul i32 %30, %29
  %32 = add i32 %31, %22
  %33 = shl i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = lshr i32 %35, 28
  %37 = and i32 %36, 7
  %38 = lshr i32 %35, 14
  %39 = and i32 %38, 16383
  %40 = and i32 %35, 16383
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %53, label %42, !dx.controlflow.hints !36

; <label>:42                                      ; preds = %0
  %43 = shl nuw nsw i32 %39, 3
  %44 = shl nuw nsw i32 %40, 3
  %45 = or i32 %43, %23
  %46 = or i32 %44, %24
  %47 = add nsw i32 %37, -1
  %48 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 0, i32 %45, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = lshr i32 %49, 4
  %51 = and i32 %50, 15
  %52 = and i32 %49, 15
  br label %58

; <label>:53                                      ; preds = %0
  %54 = shl i32 %23, 1
  %55 = shl i32 %24, 1
  %56 = and i32 %36, 1
  %57 = or i32 %56, %54
  br label %58

; <label>:58                                      ; preds = %53, %42
  %59 = phi i32 [ %51, %42 ], [ %57, %53 ]
  %60 = phi i32 [ %52, %42 ], [ %55, %53 ]
  %61 = shl nuw nsw i32 %39, 4
  %62 = shl nuw nsw i32 %40, 4
  %63 = or i32 %59, %61
  %64 = or i32 %60, %62
  %65 = uitofp i32 %63 to float
  %66 = uitofp i32 %64 to float
  %67 = fadd fast float %65, 5.000000e-01
  %68 = fadd fast float %66, 5.000000e-01
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = fcmp fast olt float %70, -1.000000e+00
  %72 = fcmp fast ogt float %70, -1.000000e+00
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %75 = select i1 %72, float %74, float 1.000000e+00
  %76 = fadd fast float %70, 1.000000e+00
  %77 = fmul fast float %75, %76
  %78 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 3
  %82 = fmul fast float %80, %67
  %83 = fmul fast float %81, %68
  %84 = fmul fast float %82, 2.000000e+00
  %85 = fmul fast float %83, 2.000000e+00
  %86 = fsub fast float 1.000000e+00, %84
  %87 = fsub fast float 1.000000e+00, %85
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = select i1 %71, float %89, float %93
  %97 = select i1 %71, float %90, float %94
  %98 = select i1 %71, float %91, float %95
  %99 = fmul fast float %96, %86
  %100 = fmul fast float %97, %86
  %101 = fmul fast float %98, %86
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = select i1 %71, float %103, float %107
  %111 = select i1 %71, float %104, float %108
  %112 = select i1 %71, float %105, float %109
  %113 = fmul fast float %110, %87
  %114 = fmul fast float %111, %87
  %115 = fmul fast float %112, %87
  %116 = fadd fast float %113, %99
  %117 = fadd fast float %114, %100
  %118 = fadd fast float %115, %101
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = select i1 %71, float %120, float %124
  %128 = select i1 %71, float %121, float %125
  %129 = select i1 %71, float %122, float %126
  %130 = fadd fast float %116, %127
  %131 = fadd fast float %117, %128
  %132 = fadd fast float %118, %129
  %133 = fmul fast float %130, %78
  %134 = fmul fast float %131, %78
  %135 = fmul fast float %132, %78
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.i32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.i32 %136, 2
  %140 = extractvalue %dx.types.CBufRet.i32 %136, 3
  %141 = lshr i32 %63, 1
  %142 = lshr i32 %64, 1
  %143 = and i32 %59, 1
  %144 = shl i32 %60, 1
  %145 = and i32 %144, 2
  %146 = or i32 %145, %143
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %137, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %138, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %139, i32* %149, align 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %140, i32* %150, align 4
  %151 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %146
  %152 = load i32, i32* %151, align 4, !tbaa !37
  %153 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %17, i32 %152, i32 %141, i32 %142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = lshr i32 %154, 8
  %156 = and i32 %154, 255
  %157 = and i32 %155, 255
  %158 = uitofp i32 %156 to float
  %159 = uitofp i32 %157 to float
  %160 = fmul fast float %158, 0x3F80101020000000
  %161 = fmul fast float %159, 0x3F80101020000000
  %162 = fadd fast float %160, -1.000000e+00
  %163 = fadd fast float %161, -1.000000e+00
  %164 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %165 = fsub fast float 1.000000e+00, %164
  %166 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %167 = fsub fast float %165, %166
  %168 = fsub fast float -0.000000e+00, %167
  %169 = call float @dx.op.binary.f32(i32 35, float %168, float 0.000000e+00)  ; FMax(a,b)
  %170 = fcmp fast ogt float %162, 0.000000e+00
  %171 = fsub fast float -0.000000e+00, %169
  %172 = select i1 %170, float %171, float %169
  %173 = fadd fast float %172, %162
  %174 = fcmp fast ogt float %163, 0.000000e+00
  %175 = select i1 %174, float %171, float %169
  %176 = fadd fast float %175, %163
  %177 = call float @dx.op.dot3.f32(i32 55, float %173, float %176, float %167, float %173, float %176, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = call float @dx.op.unary.f32(i32 25, float %177)  ; Rsqrt(value)
  %179 = fmul fast float %173, %178
  %180 = fmul fast float %176, %178
  %181 = fmul fast float %178, %167
  %182 = fmul fast float %80, %65
  %183 = fmul fast float %81, %66
  %184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %182, float %183, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = extractvalue %dx.types.ResRet.f32 %184, 1
  %187 = extractvalue %dx.types.ResRet.f32 %184, 2
  %188 = fcmp fast ogt float %185, -1.000000e+00
  %189 = select i1 %188, float %74, float 1.000000e+00
  %190 = fadd fast float %185, 1.000000e+00
  %191 = fmul fast float %189, %190
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = fcmp fast ogt float %186, -1.000000e+00
  %194 = select i1 %193, float %74, float 1.000000e+00
  %195 = fadd fast float %186, 1.000000e+00
  %196 = fmul fast float %194, %195
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fcmp fast ogt float %187, -1.000000e+00
  %199 = select i1 %198, float %74, float 1.000000e+00
  %200 = fadd fast float %187, 1.000000e+00
  %201 = fmul fast float %199, %200
  %202 = call float @dx.op.unary.f32(i32 6, float %201)  ; FAbs(value)
  %203 = fadd fast float %65, 1.000000e+00
  %204 = fmul fast float %80, %203
  %205 = fadd fast float %66, 1.000000e+00
  %206 = fmul fast float %81, %205
  %207 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %204, float %206, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 2
  %210 = fcmp fast ogt float %208, -1.000000e+00
  %211 = select i1 %210, float %74, float 1.000000e+00
  %212 = fadd fast float %208, 1.000000e+00
  %213 = fmul fast float %211, %212
  %214 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %215 = fcmp fast ogt float %209, -1.000000e+00
  %216 = select i1 %215, float %74, float 1.000000e+00
  %217 = fadd fast float %209, 1.000000e+00
  %218 = fmul fast float %216, %217
  %219 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %220 = fsub fast float %202, %197
  %221 = fsub fast float %214, %197
  %222 = fsub fast float %192, %197
  %223 = fsub fast float %219, %197
  %224 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %225 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float %224)  ; FMax(a,b)
  %227 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %228 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %229 = call float @dx.op.binary.f32(i32 35, float %228, float %227)  ; FMax(a,b)
  %230 = fadd fast float %221, %220
  %231 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %232 = fadd fast float %223, %222
  %233 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %234 = fsub fast float %229, %233
  %235 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %236 = fsub fast float %226, %231
  %237 = call float @dx.op.unary.f32(i32 6, float %236)  ; FAbs(value)
  %238 = call float @dx.op.binary.f32(i32 35, float %237, float %235)  ; FMax(a,b)
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fmul fast float %240, 0x3FE3C6EF40000000
  %242 = frem fast float %67, 2.560000e+02
  %243 = frem fast float %68, 2.560000e+02
  %244 = fptoui float %242 to i32
  %245 = fptoui float %243 to i32
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %244, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 2
  %249 = fadd fast float %247, %241
  %250 = fadd fast float %248, %241
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 0
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %968, label %256, !dx.controlflow.hints !41

; <label>:256                                     ; preds = %58
  %257 = fptoui float %67 to i32
  %258 = fptoui float %68 to i32
  %259 = lshr i32 %257, 4
  %260 = lshr i32 %258, 4
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 0
  %263 = call i32 @dx.op.tertiary.i32(i32 49, i32 %260, i32 %262, i32 %259)  ; UMad(a,b,c)
  %264 = add nsw i32 %254, -1
  %265 = call i32 @dx.op.binary.i32(i32 37, i32 %264, i32 0)  ; IMax(a,b)
  %266 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %267 = fptoui float %266 to i32
  %268 = lshr i32 %267, 5
  %269 = call i32 @dx.op.binary.i32(i32 40, i32 %268, i32 8191)  ; UMin(a,b)
  %270 = shl i32 %269, 2
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 16
  %274 = and i32 %272, 65535
  %275 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %273, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %276 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %274, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %277 = lshr i32 %275, 5
  %278 = lshr i32 %276, 5
  %279 = call i32 @dx.op.binary.i32(i32 40, i32 %278, i32 %265)  ; UMin(a,b)
  %280 = icmp ugt i32 %277, %279
  br i1 %280, label %968, label %281

; <label>:281                                     ; preds = %256
  br label %282

; <label>:282                                     ; preds = %958, %281
  %283 = phi i32 [ %965, %958 ], [ %277, %281 ]
  %284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.i32 %284, 0
  %286 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %285, i32 %283)  ; UMad(a,b,c)
  %287 = shl i32 %286, 2
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %283, 5
  %291 = sub nsw i32 %273, %290
  %292 = call i32 @dx.op.binary.i32(i32 37, i32 %291, i32 0)  ; IMax(a,b)
  %293 = call i32 @dx.op.binary.i32(i32 38, i32 %292, i32 31)  ; IMin(a,b)
  %294 = sub nsw i32 1, %273
  %295 = add nsw i32 %294, %274
  %296 = call i32 @dx.op.binary.i32(i32 37, i32 %295, i32 0)  ; IMax(a,b)
  %297 = call i32 @dx.op.binary.i32(i32 38, i32 %296, i32 32)  ; IMin(a,b)
  %298 = and i32 %297, 31
  %299 = shl i32 -1, %298
  %300 = xor i32 %299, -1
  %301 = and i32 %293, 31
  %302 = shl i32 %300, %301
  %303 = icmp eq i32 %297, 32
  %304 = select i1 %303, i32 -1, i32 %302
  %305 = and i32 %304, %289
  %306 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %305, i8 1)  ; WaveActiveBit(value,op)
  %307 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %306)  ; WaveReadLaneFirst(value)
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %958, label %309

; <label>:309                                     ; preds = %282
  br label %310

; <label>:310                                     ; preds = %955, %309
  %311 = phi i32 [ %873, %955 ], [ 0, %309 ]
  %312 = phi i32 [ %317, %955 ], [ %307, %309 ]
  %313 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %312)  ; FirstbitLo(value)
  %314 = add i32 %313, %290
  %315 = and i32 %313, 31
  %316 = shl i32 1, %315
  %317 = xor i32 %316, %312
  %318 = mul i32 %314, 112
  %319 = add i32 %318, 16
  %320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = extractvalue %dx.types.ResRet.f32 %320, 1
  %323 = extractvalue %dx.types.ResRet.f32 %320, 2
  %324 = add i32 %318, 28
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = add i32 %318, 32
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = add i32 %318, 44
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = add i32 %318, 48
  %336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = extractvalue %dx.types.ResRet.f32 %336, 3
  %341 = add i32 %318, 64
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = extractvalue %dx.types.ResRet.f32 %342, 3
  %347 = add i32 %318, 92
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = uitofp i32 %350 to float
  %352 = lshr i32 %349, 16
  %353 = uitofp i32 %352 to float
  %354 = and i32 %326, 65535
  %355 = and i32 %326, 50331648
  %356 = icmp eq i32 %355, 33554432
  %357 = call float @dx.op.dot3.f32(i32 55, float %329, float %330, float %331, float %329, float %330, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = fsub fast float %133, %337
  %359 = fsub fast float %134, %338
  %360 = fsub fast float %135, %339
  %361 = call float @dx.op.dot3.f32(i32 55, float %358, float %359, float %360, float %329, float %330, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = fdiv fast float %361, %357
  %363 = call float @dx.op.binary.f32(i32 35, float %362, float -1.000000e+00)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float %363, float 1.000000e+00)  ; FMin(a,b)
  %365 = fmul fast float %364, %329
  %366 = fmul fast float %364, %330
  %367 = fmul fast float %364, %331
  %368 = fadd fast float %365, %337
  %369 = fadd fast float %366, %338
  %370 = fadd fast float %367, %339
  %371 = fsub fast float %368, %133
  %372 = fsub fast float %369, %134
  %373 = fsub fast float %370, %135
  %374 = call float @dx.op.dot3.f32(i32 55, float %371, float %372, float %373, float %371, float %372, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %376 = fdiv fast float 1.000000e+00, %375
  %377 = fmul fast float %371, %376
  %378 = fmul fast float %372, %376
  %379 = fmul fast float %373, %376
  br i1 %356, label %380, label %404, !dx.controlflow.hints !42

; <label>:380                                     ; preds = %310
  %381 = fmul fast float %345, %321
  %382 = fmul fast float %345, %322
  %383 = fmul fast float %345, %323
  %384 = fsub fast float %381, %133
  %385 = fadd fast float %384, %368
  %386 = fsub fast float %382, %134
  %387 = fadd fast float %386, %369
  %388 = fsub fast float %383, %135
  %389 = fadd fast float %388, %370
  %390 = call float @dx.op.dot3.f32(i32 55, float %385, float %387, float %389, float %385, float %387, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.unary.f32(i32 25, float %390)  ; Rsqrt(value)
  %392 = fmul fast float %391, %385
  %393 = fmul fast float %391, %387
  %394 = fmul fast float %391, %389
  %395 = fsub fast float %133, %368
  %396 = fsub fast float %134, %369
  %397 = fsub fast float %135, %370
  %398 = fsub fast float -0.000000e+00, %395
  %399 = fsub fast float -0.000000e+00, %396
  %400 = fsub fast float -0.000000e+00, %397
  %401 = call float @dx.op.dot3.f32(i32 55, float %398, float %399, float %400, float %321, float %322, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %402 = fcmp fast ogt float %401, 0.000000e+00
  %403 = uitofp i1 %402 to float
  br label %404

; <label>:404                                     ; preds = %380, %310
  %405 = phi float [ %403, %380 ], [ 1.000000e+00, %310 ]
  %406 = phi float [ %392, %380 ], [ %377, %310 ]
  %407 = phi float [ %393, %380 ], [ %378, %310 ]
  %408 = phi float [ %394, %380 ], [ %379, %310 ]
  %409 = call float @dx.op.dot3.f32(i32 55, float %321, float %322, float %323, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fmul fast float %409, %409
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = fsub fast float 1.000000e+00, %411
  %413 = fmul fast float %412, 5.000000e-01
  %414 = fcmp fast ogt float %409, 0.000000e+00
  %415 = fsub fast float 1.000000e+00, %413
  %416 = select i1 %414, float %413, float %415
  %417 = fmul fast float %416, %353
  %418 = fadd fast float %417, %351
  %419 = fmul fast float %418, 0x3EF0001000000000
  %420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %419, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = fmul fast float %409, %343
  %423 = fadd fast float %422, %344
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = select i1 %356, float 1.000000e+00, float %424
  %426 = select i1 %356, float %424, float 1.000000e+00
  %427 = fmul fast float %375, %340
  %428 = fsub fast float 1.000000e+00, %427
  %429 = fmul fast float %428, %346
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, %426
  %432 = fmul fast float %431, 2.000000e+00
  %433 = fsub fast float 3.000000e+00, %432
  %434 = fmul fast float %421, %405
  %435 = fmul fast float %431, %431
  %436 = fmul fast float %435, %434
  %437 = fmul fast float %436, %433
  %438 = icmp ne i32 %354, 255
  %439 = call float @dx.op.binary.f32(i32 36, float %437, float %437)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %437, float %439)  ; FMin(a,b)
  %441 = fcmp fast ogt float %440, 0.000000e+00
  %442 = and i1 %438, %441
  br i1 %442, label %443, label %587, !dx.controlflow.hints !43

; <label>:443                                     ; preds = %404
  %444 = mul nuw nsw i32 %354, 176
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = extractvalue %dx.types.ResRet.f32 %445, 3
  %450 = add nuw nsw i32 %444, 16
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = add nuw nsw i32 %444, 32
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = add nuw nsw i32 %444, 48
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add nuw nsw i32 %444, 64
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add nuw nsw i32 %444, 80
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = add nuw nsw i32 %444, 96
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = bitcast float %453 to i32
  %484 = fmul fast float %458, %179
  %485 = fmul fast float %458, %180
  %486 = fmul fast float %458, %181
  %487 = fadd fast float %484, %133
  %488 = fadd fast float %485, %134
  %489 = fadd fast float %486, %135
  %490 = fmul fast float %487, %461
  %491 = call float @dx.op.tertiary.f32(i32 46, float %488, float %467, float %490)  ; FMad(a,b,c)
  %492 = call float @dx.op.tertiary.f32(i32 46, float %489, float %473, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %492, %479
  %494 = fmul fast float %487, %462
  %495 = call float @dx.op.tertiary.f32(i32 46, float %488, float %468, float %494)  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %489, float %474, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %496, %480
  %498 = fmul fast float %487, %463
  %499 = call float @dx.op.tertiary.f32(i32 46, float %488, float %469, float %498)  ; FMad(a,b,c)
  %500 = call float @dx.op.tertiary.f32(i32 46, float %489, float %475, float %499)  ; FMad(a,b,c)
  %501 = fadd fast float %500, %481
  %502 = fmul fast float %487, %464
  %503 = call float @dx.op.tertiary.f32(i32 46, float %488, float %470, float %502)  ; FMad(a,b,c)
  %504 = call float @dx.op.tertiary.f32(i32 46, float %489, float %476, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %504, %482
  %506 = fdiv fast float %493, %505
  %507 = fdiv fast float %497, %505
  %508 = fdiv fast float %501, %505
  %509 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %508)  ; FMax(a,b)
  %510 = fmul fast float %251, 0x401921FB60000000
  %511 = call float @dx.op.unary.f32(i32 13, float %510)  ; Sin(value)
  %512 = call float @dx.op.unary.f32(i32 12, float %510)  ; Cos(value)
  %513 = fmul fast float %512, %457
  %514 = call float @dx.op.tertiary.f32(i32 46, float %511, float %457, float 0.000000e+00)  ; FMad(a,b,c)
  %515 = fmul fast float %457, %511
  %516 = fsub fast float -0.000000e+00, %515
  %517 = call float @dx.op.tertiary.f32(i32 46, float %512, float %457, float 0.000000e+00)  ; FMad(a,b,c)
  br label %518

; <label>:518                                     ; preds = %518, %443
  %519 = phi float [ 0.000000e+00, %443 ], [ %551, %518 ]
  %520 = phi float [ 0.000000e+00, %443 ], [ %553, %518 ]
  %521 = phi i32 [ 0, %443 ], [ %554, %518 ]
  %522 = mul i32 %521, 2
  %523 = add i32 0, %522
  %524 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %523
  %525 = load float, float* %524, align 4
  %526 = mul i32 %521, 2
  %527 = add i32 1, %526
  %528 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %527
  %529 = load float, float* %528, align 4
  %530 = fmul fast float %513, %525
  %531 = call float @dx.op.tertiary.f32(i32 46, float %529, float %516, float %530)  ; FMad(a,b,c)
  %532 = fmul fast float %525, %514
  %533 = call float @dx.op.tertiary.f32(i32 46, float %529, float %517, float %532)  ; FMad(a,b,c)
  %534 = fadd fast float %531, %506
  %535 = fadd fast float %533, %507
  %536 = fmul fast float %534, %452
  %537 = fmul fast float %535, %452
  %538 = call float @dx.op.binary.f32(i32 35, float %536, float %448)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float %537, float %448)  ; FMax(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float %538, float %449)  ; FMin(a,b)
  %541 = call float @dx.op.binary.f32(i32 36, float %539, float %449)  ; FMin(a,b)
  %542 = fadd fast float %540, %446
  %543 = fadd fast float %541, %447
  %544 = uitofp i32 %483 to float
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %542, float %543, float %544, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fsub fast float %546, %509
  %548 = fsub fast float %547, %456
  %549 = fcmp fast ogt float %548, 0.000000e+00
  %550 = select i1 %549, float 1.000000e+00, float 0.000000e+00
  %551 = fadd fast float %550, %519
  %552 = select i1 %549, float %548, float 0.000000e+00
  %553 = fadd fast float %552, %520
  %554 = add nuw nsw i32 %521, 1
  %555 = icmp eq i32 %554, 8
  br i1 %555, label %556, label %518

; <label>:556                                     ; preds = %518
  %557 = fdiv fast float 1.000000e+00, %551
  %558 = fmul fast float %557, %553
  %559 = fdiv fast float 1.000000e+00, %509
  %560 = fmul fast float %558, %559
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = call float @dx.op.binary.f32(i32 35, float %561, float 0.000000e+00)  ; FMax(a,b)
  %563 = fmul fast float %551, 1.250000e-01
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = fmul fast float %564, 2.000000e+00
  %566 = fadd fast float %565, -1.000000e+00
  %567 = fcmp fast ogt float %566, 0.000000e+00
  %568 = fcmp fast olt float %566, 0.000000e+00
  %569 = zext i1 %567 to i32
  %570 = zext i1 %568 to i32
  %571 = sub nsw i32 %569, %570
  %572 = sitofp i32 %571 to float
  %573 = fmul fast float %572, %566
  %574 = fsub fast float 1.000000e+00, %573
  %575 = fmul fast float %574, %574
  %576 = fmul fast float %575, %574
  %577 = fsub fast float %574, %576
  %578 = fmul fast float %577, %562
  %579 = fsub fast float 1.000000e+00, %576
  %580 = fsub fast float %579, %578
  %581 = fmul fast float %572, 5.000000e-01
  %582 = fmul fast float %581, %580
  %583 = fsub fast float -5.000000e-01, %582
  %584 = fmul fast float %583, %425
  %585 = fadd fast float %584, 1.000000e+00
  %586 = fmul fast float %585, %437
  br label %587

; <label>:587                                     ; preds = %556, %404
  %588 = phi float [ %586, %556 ], [ %437, %404 ]
  %589 = call float @dx.op.binary.f32(i32 36, float %588, float %588)  ; FMin(a,b)
  %590 = call float @dx.op.binary.f32(i32 36, float %588, float %589)  ; FMin(a,b)
  %591 = fcmp fast ogt float %590, 0.000000e+00
  %592 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %593 = fcmp fast ogt float %592, 0.000000e+00
  %594 = and i1 %591, %593
  br i1 %594, label %595, label %864, !dx.controlflow.hints !44

; <label>:595                                     ; preds = %587
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %600 = select i1 %71, float %597, float %599
  %601 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %602 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %603 = select i1 %71, float %601, float %602
  %604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.i32 %604, 0
  %606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.i32 %606, 0
  %608 = select i1 %71, i32 %605, i32 %607
  %609 = fcmp fast olt float %600, 5.000000e-01
  %610 = icmp eq i32 %608, 0
  %611 = or i1 %609, %610
  br i1 %611, label %859, label %612, !dx.controlflow.hints !45

; <label>:612                                     ; preds = %595
  %613 = fsub fast float %337, %133
  %614 = fsub fast float %338, %134
  %615 = fsub fast float %339, %135
  %616 = fmul fast float %613, %613
  %617 = fmul fast float %614, %614
  %618 = fadd fast float %616, %617
  %619 = fmul fast float %615, %615
  %620 = fadd fast float %618, %619
  %621 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.i32 %622, 0
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %600, %334
  %626 = fdiv fast float %625, %621
  %627 = call float @dx.op.binary.f32(i32 36, float %626, float 1.000000e+01)  ; FMin(a,b)
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %631 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %632 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = extractvalue %dx.types.CBufRet.f32 %633, 1
  %636 = extractvalue %dx.types.CBufRet.f32 %633, 2
  %637 = extractvalue %dx.types.CBufRet.f32 %633, 3
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 0
  %640 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %641 = extractvalue %dx.types.CBufRet.f32 %638, 2
  %642 = extractvalue %dx.types.CBufRet.f32 %638, 3
  %643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.f32 %643, 0
  %645 = extractvalue %dx.types.CBufRet.f32 %643, 1
  %646 = extractvalue %dx.types.CBufRet.f32 %643, 2
  %647 = extractvalue %dx.types.CBufRet.f32 %643, 3
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 0
  %650 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %651 = extractvalue %dx.types.CBufRet.f32 %648, 2
  %652 = extractvalue %dx.types.CBufRet.f32 %648, 3
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %656 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %657 = extractvalue %dx.types.CBufRet.f32 %653, 3
  %658 = select i1 %71, float %629, float %644
  %659 = select i1 %71, float %634, float %649
  %660 = select i1 %71, float %639, float %654
  %661 = select i1 %71, float %630, float %645
  %662 = select i1 %71, float %635, float %650
  %663 = select i1 %71, float %640, float %655
  %664 = select i1 %71, float %631, float %646
  %665 = select i1 %71, float %636, float %651
  %666 = select i1 %71, float %641, float %656
  %667 = select i1 %71, float %632, float %647
  %668 = select i1 %71, float %637, float %652
  %669 = select i1 %71, float %642, float %657
  %670 = fmul fast float %252, 0x401061CAC0000000
  %671 = fmul fast float %252, 0x4023E1D7E0000000
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %675 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %676 = extractvalue %dx.types.CBufRet.f32 %672, 3
  %677 = fsub fast float -0.000000e+00, %377
  %678 = fmul fast float %379, %677
  %679 = fmul fast float %377, %677
  %680 = fmul fast float %378, %378
  %681 = fsub fast float %679, %680
  %682 = fdiv fast float 1.000000e+00, %78
  %683 = fmul fast float %675, %67
  %684 = fmul fast float %676, %68
  %685 = fmul fast float %600, %377
  %686 = fmul fast float %600, %379
  %687 = fadd fast float %685, %133
  %688 = fadd fast float %686, %135
  %689 = fadd fast float %671, 5.000000e-01
  %690 = call float @dx.op.unary.f32(i32 22, float %689)  ; Frc(value)
  %691 = bitcast float %690 to i32
  %692 = ashr i32 %691, 1
  %693 = add nsw i32 %692, 532487669
  %694 = bitcast i32 %693 to float
  %695 = fmul fast float %694, %627
  %696 = fadd fast float %670, 5.000000e-01
  %697 = call float @dx.op.unary.f32(i32 22, float %696)  ; Frc(value)
  %698 = fmul fast float %697, 0x401921FB60000000
  %699 = call float @dx.op.unary.f32(i32 12, float %698)  ; Cos(value)
  %700 = fmul fast float %699, %699
  %701 = fsub fast float 1.000000e+00, %700
  %702 = bitcast float %701 to i32
  %703 = ashr i32 %702, 1
  %704 = add nsw i32 %703, 532487669
  %705 = bitcast i32 %704 to float
  %706 = fmul fast float %695, %699
  %707 = fmul fast float %706, %378
  %708 = fmul fast float %706, %677
  %709 = fadd fast float %687, %707
  %710 = fmul fast float %705, %695
  %711 = fmul fast float %678, %710
  %712 = fmul fast float %710, %379
  %713 = fmul fast float %710, %681
  %714 = fsub fast float %709, %711
  %715 = fadd fast float %712, %600
  %716 = fmul fast float %715, %378
  %717 = fadd fast float %708, %134
  %718 = fadd fast float %717, %716
  %719 = fadd fast float %688, %713
  %720 = fmul fast float %714, %658
  %721 = call float @dx.op.tertiary.f32(i32 46, float %718, float %661, float %720)  ; FMad(a,b,c)
  %722 = call float @dx.op.tertiary.f32(i32 46, float %719, float %664, float %721)  ; FMad(a,b,c)
  %723 = fadd fast float %722, %667
  %724 = fmul fast float %714, %659
  %725 = call float @dx.op.tertiary.f32(i32 46, float %718, float %662, float %724)  ; FMad(a,b,c)
  %726 = call float @dx.op.tertiary.f32(i32 46, float %719, float %665, float %725)  ; FMad(a,b,c)
  %727 = fadd fast float %726, %668
  %728 = fmul fast float %714, %660
  %729 = call float @dx.op.tertiary.f32(i32 46, float %718, float %663, float %728)  ; FMad(a,b,c)
  %730 = call float @dx.op.tertiary.f32(i32 46, float %719, float %666, float %729)  ; FMad(a,b,c)
  %731 = fadd fast float %730, %669
  %732 = fdiv fast float 1.000000e+00, %731
  %733 = fmul fast float %723, 5.000000e-01
  %734 = fmul fast float %727, -5.000000e-01
  %735 = fmul fast float %733, %732
  %736 = fmul fast float %734, %732
  %737 = fsub fast float 5.000000e-01, %683
  %738 = fadd fast float %737, %735
  %739 = fsub fast float 5.000000e-01, %684
  %740 = fadd fast float %739, %736
  %741 = fsub fast float %732, %682
  %742 = call float @dx.op.dot2.f32(i32 54, float %738, float %740, float %738, float %740)  ; Dot2(ax,ay,bx,by)
  %743 = call float @dx.op.binary.f32(i32 35, float %742, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %744 = call float @dx.op.dot2.f32(i32 54, float %673, float %674, float %673, float %674)  ; Dot2(ax,ay,bx,by)
  %745 = fmul fast float %744, %743
  %746 = call float @dx.op.unary.f32(i32 25, float %745)  ; Rsqrt(value)
  %747 = fmul fast float %746, %738
  %748 = fmul fast float %746, %740
  %749 = fadd fast float %747, %683
  %750 = fadd fast float %748, %684
  %751 = fmul fast float %738, %673
  %752 = fmul fast float %740, %674
  %753 = fmul fast float %751, %751
  %754 = fmul fast float %752, %752
  %755 = fadd fast float %753, %754
  %756 = call float @dx.op.unary.f32(i32 24, float %755)  ; Sqrt(value)
  %757 = fdiv fast float 1.000000e+00, %756
  %758 = fmul fast float %756, 3.906250e-03
  %759 = fmul fast float %238, 0x3F70624DE0000000
  %760 = fadd fast float %759, 0x3F70624DE0000000
  %761 = icmp sgt i32 %608, -1
  br i1 %761, label %762, label %824

; <label>:762                                     ; preds = %612
  br label %763

; <label>:763                                     ; preds = %820, %762
  %764 = phi float [ %795, %820 ], [ %78, %762 ]
  %765 = phi float [ %782, %820 ], [ %78, %762 ]
  %766 = phi float [ %765, %820 ], [ %78, %762 ]
  %767 = phi i32 [ %821, %820 ], [ 0, %762 ]
  %768 = sitofp i32 %767 to float
  %769 = fadd fast float %252, 5.000000e-01
  %770 = call float @dx.op.unary.f32(i32 22, float %769)  ; Frc(value)
  %771 = fadd fast float %768, %770
  %772 = sitofp i32 %608 to float
  %773 = fdiv fast float %771, %772
  %774 = fmul fast float %773, %773
  %775 = call float @dx.op.binary.f32(i32 36, float %774, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %776 = fmul fast float %775, %738
  %777 = fmul fast float %775, %740
  %778 = fmul fast float %775, %741
  %779 = fadd fast float %776, %749
  %780 = fadd fast float %777, %750
  %781 = fadd fast float %778, %682
  %782 = fdiv fast float 1.000000e+00, %781
  %783 = icmp ne i32 %623, 0
  %784 = fmul fast float %758, %775
  %785 = call float @dx.op.binary.f32(i32 36, float %784, float %624)  ; FMin(a,b)
  %786 = select i1 %783, float %785, float 0.000000e+00
  %787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %779, float %780, float undef, float undef, i32 0, i32 0, i32 undef, float %786)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = fcmp fast ogt float %788, -1.000000e+00
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %792 = select i1 %789, float %791, float 1.000000e+00
  %793 = fadd fast float %788, 1.000000e+00
  %794 = fmul fast float %792, %793
  %795 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %796 = fmul fast float %795, %760
  %797 = fsub fast float %782, %795
  %798 = fsub fast float %797, %796
  %799 = fcmp fast ogt float %798, 0.000000e+00
  %800 = fcmp fast ogt float %603, 0.000000e+00
  br i1 %800, label %801, label %804, !dx.controlflow.hints !46

; <label>:801                                     ; preds = %763
  %802 = fsub fast float %782, %766
  %803 = call float @dx.op.binary.f32(i32 35, float %802, float %603)  ; FMax(a,b)
  br label %804

; <label>:804                                     ; preds = %801, %763
  %805 = phi float [ %803, %801 ], [ %600, %763 ]
  %806 = fcmp fast olt float %798, %805
  %807 = fcmp uge float %788, -1.000000e+00
  %808 = or i1 %71, %807
  %809 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %810 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %811 = fcmp fast oeq float %779, %809
  %812 = fcmp fast oeq float %780, %810
  %813 = and i1 %811, %812
  %814 = and i1 %808, %813
  %815 = and i1 %799, %806
  %816 = and i1 %815, %814
  %817 = fcmp fast ogt float %775, %757
  %818 = and i1 %817, %816
  %819 = zext i1 %818 to i32
  br i1 %818, label %823, label %820, !dx.controlflow.hints !47

; <label>:820                                     ; preds = %804
  %821 = add nuw nsw i32 %767, 1
  %822 = icmp slt i32 %767, %608
  br i1 %822, label %763, label %823

; <label>:823                                     ; preds = %820, %804
  br label %824

; <label>:824                                     ; preds = %823, %612
  %825 = phi i32 [ 0, %612 ], [ %819, %823 ]
  %826 = phi float [ %78, %612 ], [ %795, %823 ]
  %827 = phi float [ %78, %612 ], [ %764, %823 ]
  %828 = phi float [ %78, %612 ], [ %782, %823 ]
  %829 = phi float [ %78, %612 ], [ %765, %823 ]
  %830 = fsub fast float %829, %827
  %831 = fsub fast float %828, %826
  %832 = fsub fast float %830, %831
  %833 = fcmp fast une float %832, 0.000000e+00
  %834 = fmul fast float %830, %828
  %835 = fmul fast float %829, %831
  %836 = fsub fast float %834, %835
  %837 = fdiv fast float 1.000000e+00, %832
  %838 = fmul fast float %836, %837
  %839 = select i1 %833, float %838, float %828
  %840 = fdiv fast float 1.000000e+00, %839
  %841 = fsub fast float %840, %682
  %842 = fdiv fast float %841, %741
  %843 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %844 = fmul fast float %843, %738
  %845 = fmul fast float %843, %740
  %846 = fadd fast float %844, %749
  %847 = fadd fast float %845, %750
  %848 = fadd fast float %846, -5.000000e-01
  %849 = fadd fast float %847, -5.000000e-01
  %850 = call float @dx.op.unary.f32(i32 6, float %848)  ; FAbs(value)
  %851 = call float @dx.op.unary.f32(i32 6, float %849)  ; FAbs(value)
  %852 = fadd fast float %850, -5.000000e-01
  %853 = fadd fast float %851, -5.000000e-01
  %854 = call float @dx.op.binary.f32(i32 35, float %852, float %853)  ; FMax(a,b)
  %855 = fcmp fast olt float %854, 0.000000e+00
  %856 = icmp ne i32 %825, 0
  %857 = and i1 %856, %855
  %858 = select i1 %857, float 0.000000e+00, float 1.000000e+00
  br label %859

; <label>:859                                     ; preds = %824, %595
  %860 = phi float [ %858, %824 ], [ 1.000000e+00, %595 ]
  %861 = fmul fast float %860, %588
  %862 = fmul fast float %860, %588
  %863 = fmul fast float %860, %588
  br label %864

; <label>:864                                     ; preds = %859, %587
  %865 = phi float [ %861, %859 ], [ %588, %587 ]
  %866 = phi float [ %862, %859 ], [ %588, %587 ]
  %867 = phi float [ %863, %859 ], [ %588, %587 ]
  %868 = call float @dx.op.binary.f32(i32 36, float %866, float %867)  ; FMin(a,b)
  %869 = call float @dx.op.binary.f32(i32 36, float %865, float %868)  ; FMin(a,b)
  %870 = fcmp fast ogt float %869, 0x3F10000000000000
  %871 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %870)  ; WaveAnyTrue(cond)
  %872 = select i1 %871, i32 %316, i32 0
  %873 = or i32 %311, %872
  %874 = lshr i32 %257, 5
  %875 = lshr i32 %258, 5
  %876 = fcmp fast olt float %865, 0x3F10000000000000
  %877 = call i1 @dx.op.waveAllTrue(i32 114, i1 %876)  ; WaveAllTrue(cond)
  %878 = fcmp fast ogt float %865, 0x3FEFFF8000000000
  %879 = call i1 @dx.op.waveAllTrue(i32 114, i1 %878)  ; WaveAllTrue(cond)
  %880 = or i1 %877, %879
  %881 = xor i1 %880, true
  %882 = and i32 %258, 16
  %883 = lshr i32 %257, 1
  %884 = and i32 %883, 8
  %885 = icmp eq i32 %882, 0
  %886 = or i32 %884, %37
  %887 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %887, label %888, label %930, !dx.controlflow.hints !48

; <label>:888                                     ; preds = %864
  %889 = shl i32 1, %886
  %890 = select i1 %879, i32 %889, i32 0
  %891 = shl i32 65536, %886
  %892 = select i1 %877, i32 %891, i32 0
  %893 = or i32 %890, %892
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %900, label %895, !dx.controlflow.hints !49

; <label>:895                                     ; preds = %888
  br i1 %885, label %898, label %896, !dx.controlflow.hints !50

; <label>:896                                     ; preds = %895
  %897 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %874, i32 %875, i32 %314, i32 %893)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %900

; <label>:898                                     ; preds = %895
  %899 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %874, i32 %875, i32 %314, i32 %893)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %900

; <label>:900                                     ; preds = %898, %896, %888
  br i1 %880, label %930, label %901

; <label>:901                                     ; preds = %900
  br label %902

; <label>:902                                     ; preds = %927, %901
  %903 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %874, i32 %875, i32 %314, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %904 = and i32 %903, 3
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %927, !dx.controlflow.hints !51

; <label>:906                                     ; preds = %902
  %907 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.i32 %908, 3
  %910 = call i32 @dx.op.binary.i32(i32 40, i32 %909, i32 %907)  ; UMin(a,b)
  %911 = extractvalue %dx.types.CBufRet.i32 %908, 2
  %912 = udiv i32 %910, %911
  %913 = urem i32 %910, %911
  %914 = extractvalue %dx.types.CBufRet.i32 %908, 1
  %915 = urem i32 %913, %914
  %916 = udiv i32 %913, %914
  %917 = shl i32 %915, 6
  %918 = and i32 %917, 32704
  %919 = shl i32 %916, 15
  %920 = and i32 %919, 8355840
  %921 = shl i32 %912, 23
  %922 = and i32 %921, 2139095040
  %923 = or i32 %922, %918
  %924 = or i32 %923, %920
  %925 = or i32 %924, 3
  %926 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %874, i32 %875, i32 %314, i32 %925)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %930

; <label>:927                                     ; preds = %902
  %928 = icmp eq i32 %904, 3
  br i1 %928, label %929, label %902, !dx.controlflow.hints !52

; <label>:929                                     ; preds = %927
  br label %930

; <label>:930                                     ; preds = %929, %906, %900, %864
  %931 = phi i32 [ 0, %900 ], [ %925, %906 ], [ 0, %864 ], [ %903, %929 ]
  %932 = phi i1 [ false, %900 ], [ %881, %906 ], [ %881, %864 ], [ %881, %929 ]
  br i1 %932, label %933, label %955, !dx.controlflow.hints !53

; <label>:933                                     ; preds = %930
  %934 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %931)  ; WaveReadLaneFirst(value)
  %935 = lshr i32 %258, 1
  %936 = and i32 %883, 15
  %937 = and i32 %935, 15
  %938 = and i32 %257, 1
  %939 = shl i32 %258, 1
  %940 = and i32 %939, 2
  %941 = or i32 %940, %938
  %942 = lshr i32 %934, 2
  %943 = and i32 %942, 8176
  %944 = lshr i32 %934, 11
  %945 = and i32 %944, 4080
  %946 = or i32 %943, %936
  %947 = or i32 %945, %937
  %948 = lshr i32 %934, 21
  %949 = and i32 %948, 1020
  %950 = or i32 %941, %949
  %951 = fmul fast float %865, 2.550000e+02
  %952 = fadd fast float %951, %251
  %953 = call float @dx.op.unary.f32(i32 27, float %952)  ; Round_ni(value)
  %954 = fmul fast float %953, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %946, i32 %947, i32 %950, float %954, float %954, float %954, float %954, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %955

; <label>:955                                     ; preds = %933, %930
  %956 = icmp eq i32 %312, %316
  br i1 %956, label %957, label %310, !llvm.loop !54

; <label>:957                                     ; preds = %955
  br label %958

; <label>:958                                     ; preds = %957, %282
  %959 = phi i32 [ 0, %282 ], [ %873, %957 ]
  %960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.i32 %960, 0
  %962 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %961, i32 %283)  ; UMad(a,b,c)
  %963 = shl i32 %962, 2
  %964 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %963, i32 undef, i32 undef, i32 %959)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %965 = add i32 %283, 1
  %966 = icmp ugt i32 %965, %279
  br i1 %966, label %967, label %282

; <label>:967                                     ; preds = %958
  br label %968

; <label>:968                                     ; preds = %967, %256, %58
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.atomicCompareExchange.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #1

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveAllTrue(i32, i1) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !27, !30}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 2, i32 1, i32 3, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 7, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 9}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %"class.Texture1D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 1, i32 0, !11}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !11}
!16 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !11}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!19 = !{!20, !21, !22, !23, !25, !26}
!20 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !11}
!21 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !24}
!24 = !{i32 1, i32 4}
!25 = !{i32 4, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!26 = !{i32 5, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!30 = !{!31, !32}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !34}
!34 = !{i32 0, i64 524560, i32 4, !35}
!35 = !{i32 8, i32 4, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}

