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
; shader hash: 77984f2572f04f1d391dade282e3274b
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
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
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
;                                       UAV    byte         r/w      U4             u6     1
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
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %30 = shl i32 %27, 2
  %31 = mul i32 %30, %29
  %32 = add i32 %31, %22
  %33 = shl i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = lshr i32 %35, 28
  %37 = and i32 %36, 3
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
  %48 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %45, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %153 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 %152, i32 %141, i32 %142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %18, float %182, float %183, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %207 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %18, float %204, float %206, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %244, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 2
  %249 = fadd fast float %247, %241
  %250 = fadd fast float %248, %241
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 0
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %1750, label %256, !dx.controlflow.hints !41

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
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 16
  %274 = and i32 %272, 65535
  %275 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %273, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %276 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %274, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %277 = lshr i32 %275, 5
  %278 = lshr i32 %276, 5
  %279 = call i32 @dx.op.binary.i32(i32 40, i32 %278, i32 %265)  ; UMin(a,b)
  %280 = icmp ugt i32 %277, %279
  br i1 %280, label %1750, label %281

; <label>:281                                     ; preds = %256
  br label %282

; <label>:282                                     ; preds = %1740, %281
  %283 = phi i32 [ %1747, %1740 ], [ %277, %281 ]
  %284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.i32 %284, 0
  %286 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %285, i32 %283)  ; UMad(a,b,c)
  %287 = shl i32 %286, 2
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %308, label %1740, label %309

; <label>:309                                     ; preds = %282
  br label %310

; <label>:310                                     ; preds = %1737, %309
  %311 = phi i32 [ %1657, %1737 ], [ 0, %309 ]
  %312 = phi i32 [ %317, %1737 ], [ %307, %309 ]
  %313 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %312)  ; FirstbitLo(value)
  %314 = add i32 %313, %290
  %315 = and i32 %313, 31
  %316 = shl i32 1, %315
  %317 = xor i32 %316, %312
  %318 = mul i32 %314, 112
  %319 = add i32 %318, 16
  %320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = extractvalue %dx.types.ResRet.f32 %320, 1
  %323 = extractvalue %dx.types.ResRet.f32 %320, 2
  %324 = add i32 %318, 28
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = add i32 %318, 32
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = add i32 %318, 44
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = add i32 %318, 48
  %336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = extractvalue %dx.types.ResRet.f32 %336, 3
  %341 = add i32 %318, 64
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = extractvalue %dx.types.ResRet.f32 %342, 3
  %347 = add i32 %318, 92
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %419, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %442, label %443, label %1357, !dx.controlflow.hints !43

; <label>:443                                     ; preds = %404
  %444 = mul nuw nsw i32 %354, 176
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = extractvalue %dx.types.ResRet.f32 %445, 3
  %450 = add nuw nsw i32 %444, 16
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = add nuw nsw i32 %444, 32
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = extractvalue %dx.types.ResRet.f32 %455, 3
  %460 = add nuw nsw i32 %444, 48
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = add nuw nsw i32 %444, 64
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = add nuw nsw i32 %444, 80
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  %478 = add nuw nsw i32 %444, 96
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = extractvalue %dx.types.ResRet.f32 %479, 3
  %484 = add nuw nsw i32 %444, 112
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = extractvalue %dx.types.ResRet.f32 %485, 2
  %489 = extractvalue %dx.types.ResRet.f32 %485, 3
  %490 = add nuw nsw i32 %444, 128
  %491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = extractvalue %dx.types.ResRet.f32 %491, 3
  %496 = add nuw nsw i32 %444, 144
  %497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = extractvalue %dx.types.ResRet.f32 %497, 3
  %502 = add nuw nsw i32 %444, 160
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = extractvalue %dx.types.ResRet.f32 %503, 1
  %506 = extractvalue %dx.types.ResRet.f32 %503, 2
  %507 = extractvalue %dx.types.ResRet.f32 %503, 3
  %508 = bitcast float %453 to i32
  %509 = bitcast float %459 to i32
  %510 = and i32 %509, 1
  %511 = icmp ne i32 %510, 0
  %512 = and i32 %509, 2
  %513 = fmul fast float %458, %179
  %514 = fmul fast float %458, %180
  %515 = fmul fast float %458, %181
  %516 = fadd fast float %513, %133
  %517 = fadd fast float %514, %134
  %518 = fadd fast float %515, %135
  %519 = fmul fast float %516, %462
  %520 = call float @dx.op.tertiary.f32(i32 46, float %517, float %468, float %519)  ; FMad(a,b,c)
  %521 = call float @dx.op.tertiary.f32(i32 46, float %518, float %474, float %520)  ; FMad(a,b,c)
  %522 = fadd fast float %521, %480
  %523 = fmul fast float %516, %463
  %524 = call float @dx.op.tertiary.f32(i32 46, float %517, float %469, float %523)  ; FMad(a,b,c)
  %525 = call float @dx.op.tertiary.f32(i32 46, float %518, float %475, float %524)  ; FMad(a,b,c)
  %526 = fadd fast float %525, %481
  %527 = fmul fast float %516, %464
  %528 = call float @dx.op.tertiary.f32(i32 46, float %517, float %470, float %527)  ; FMad(a,b,c)
  %529 = call float @dx.op.tertiary.f32(i32 46, float %518, float %476, float %528)  ; FMad(a,b,c)
  %530 = fadd fast float %529, %482
  %531 = fmul fast float %516, %465
  %532 = call float @dx.op.tertiary.f32(i32 46, float %517, float %471, float %531)  ; FMad(a,b,c)
  %533 = call float @dx.op.tertiary.f32(i32 46, float %518, float %477, float %532)  ; FMad(a,b,c)
  %534 = fadd fast float %533, %483
  %535 = fdiv fast float %522, %534
  %536 = fdiv fast float %526, %534
  %537 = fdiv fast float %530, %534
  %538 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %537)  ; FMax(a,b)
  %539 = fmul fast float %251, 0x401921FB60000000
  %540 = call float @dx.op.unary.f32(i32 13, float %539)  ; Sin(value)
  %541 = call float @dx.op.unary.f32(i32 12, float %539)  ; Cos(value)
  %542 = fsub fast float -0.000000e+00, %540
  %543 = icmp eq i32 %512, 0
  br i1 %543, label %544, label %615, !dx.controlflow.hints !44

; <label>:544                                     ; preds = %443
  %545 = fmul fast float %541, %457
  %546 = call float @dx.op.tertiary.f32(i32 46, float %540, float %457, float 0.000000e+00)  ; FMad(a,b,c)
  %547 = fmul fast float %457, %542
  %548 = call float @dx.op.tertiary.f32(i32 46, float %541, float %457, float 0.000000e+00)  ; FMad(a,b,c)
  br label %549

; <label>:549                                     ; preds = %549, %544
  %550 = phi float [ 0.000000e+00, %544 ], [ %582, %549 ]
  %551 = phi float [ 0.000000e+00, %544 ], [ %584, %549 ]
  %552 = phi i32 [ 0, %544 ], [ %585, %549 ]
  %553 = mul i32 %552, 2
  %554 = add i32 0, %553
  %555 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %554
  %556 = load float, float* %555, align 4
  %557 = mul i32 %552, 2
  %558 = add i32 1, %557
  %559 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %558
  %560 = load float, float* %559, align 4
  %561 = fmul fast float %545, %556
  %562 = call float @dx.op.tertiary.f32(i32 46, float %560, float %547, float %561)  ; FMad(a,b,c)
  %563 = fmul fast float %556, %546
  %564 = call float @dx.op.tertiary.f32(i32 46, float %560, float %548, float %563)  ; FMad(a,b,c)
  %565 = fadd fast float %562, %535
  %566 = fadd fast float %564, %536
  %567 = fmul fast float %565, %452
  %568 = fmul fast float %566, %452
  %569 = call float @dx.op.binary.f32(i32 35, float %567, float %448)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float %568, float %448)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float %569, float %449)  ; FMin(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float %570, float %449)  ; FMin(a,b)
  %573 = fadd fast float %571, %446
  %574 = fadd fast float %572, %447
  %575 = uitofp i32 %508 to float
  %576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %573, float %574, float %575, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = fsub fast float %577, %538
  %579 = fsub fast float %578, %456
  %580 = fcmp fast ogt float %579, 0.000000e+00
  %581 = select i1 %580, float 1.000000e+00, float 0.000000e+00
  %582 = fadd fast float %581, %550
  %583 = select i1 %580, float %579, float 0.000000e+00
  %584 = fadd fast float %583, %551
  %585 = add nuw nsw i32 %552, 1
  %586 = icmp eq i32 %585, 8
  br i1 %586, label %587, label %549

; <label>:587                                     ; preds = %549
  %588 = fdiv fast float 1.000000e+00, %582
  %589 = fmul fast float %588, %584
  %590 = fdiv fast float 1.000000e+00, %538
  %591 = fmul fast float %589, %590
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = call float @dx.op.binary.f32(i32 35, float %592, float 0.000000e+00)  ; FMax(a,b)
  %594 = fmul fast float %582, 1.250000e-01
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fmul fast float %595, 2.000000e+00
  %597 = fadd fast float %596, -1.000000e+00
  %598 = fcmp fast ogt float %597, 0.000000e+00
  %599 = fcmp fast olt float %597, 0.000000e+00
  %600 = zext i1 %598 to i32
  %601 = zext i1 %599 to i32
  %602 = sub nsw i32 %600, %601
  %603 = sitofp i32 %602 to float
  %604 = fmul fast float %603, %597
  %605 = fsub fast float 1.000000e+00, %604
  %606 = fmul fast float %605, %605
  %607 = fmul fast float %606, %605
  %608 = fsub fast float %605, %607
  %609 = fmul fast float %608, %593
  %610 = fsub fast float 1.000000e+00, %607
  %611 = fsub fast float %610, %609
  %612 = fmul fast float %603, 5.000000e-01
  %613 = fmul fast float %612, %611
  %614 = fsub fast float 5.000000e-01, %613
  br label %1230

; <label>:615                                     ; preds = %443
  %616 = fsub fast float 1.000000e+00, %538
  %617 = fmul fast float %616, 5.000000e-01
  %618 = fadd fast float %617, %538
  %619 = fsub fast float %516, %337
  %620 = fsub fast float %517, %338
  %621 = fsub fast float %518, %339
  %622 = call float @dx.op.dot3.f32(i32 55, float %619, float %620, float %621, float %329, float %330, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = fdiv fast float %622, %357
  %624 = call float @dx.op.binary.f32(i32 35, float %623, float -1.000000e+00)  ; FMax(a,b)
  %625 = call float @dx.op.binary.f32(i32 36, float %624, float 1.000000e+00)  ; FMin(a,b)
  %626 = fmul fast float %625, %329
  %627 = fmul fast float %625, %330
  %628 = fmul fast float %625, %331
  %629 = fsub fast float %619, %626
  %630 = fsub fast float %620, %627
  %631 = fsub fast float %621, %628
  %632 = call float @dx.op.dot3.f32(i32 55, float %629, float %630, float %631, float %629, float %630, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = call float @dx.op.unary.f32(i32 25, float %632)  ; Rsqrt(value)
  %634 = fmul fast float %629, %633
  %635 = fmul fast float %630, %633
  %636 = fmul fast float %631, %633
  %637 = call float @dx.op.unary.f32(i32 25, float %357)  ; Rsqrt(value)
  %638 = fmul fast float %637, %329
  %639 = fmul fast float %637, %330
  %640 = fmul fast float %637, %331
  br i1 %511, label %641, label %645, !dx.controlflow.hints !45

; <label>:641                                     ; preds = %615
  %642 = fcmp fast olt float %635, 0x3FE6666660000000
  %643 = select i1 %642, float 1.000000e+00, float 0.000000e+00
  %644 = select i1 %642, float 0.000000e+00, float 1.000000e+00
  br label %645

; <label>:645                                     ; preds = %641, %615
  %646 = phi float [ 0.000000e+00, %641 ], [ %638, %615 ]
  %647 = phi float [ %643, %641 ], [ %639, %615 ]
  %648 = phi float [ %644, %641 ], [ %640, %615 ]
  %649 = fmul fast float %647, %636
  %650 = fmul fast float %648, %635
  %651 = fsub fast float %649, %650
  %652 = fmul fast float %648, %634
  %653 = fmul fast float %646, %636
  %654 = fsub fast float %652, %653
  %655 = fmul fast float %646, %635
  %656 = fmul fast float %647, %634
  %657 = fsub fast float %655, %656
  %658 = call float @dx.op.dot3.f32(i32 55, float %651, float %654, float %657, float %651, float %654, float %657)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = call float @dx.op.unary.f32(i32 25, float %658)  ; Rsqrt(value)
  %660 = fmul fast float %659, %334
  %661 = fmul fast float %660, %651
  %662 = fmul fast float %660, %654
  %663 = fmul fast float %657, %334
  %664 = fmul fast float %663, %659
  %665 = fmul fast float %535, %486
  %666 = call float @dx.op.tertiary.f32(i32 46, float %536, float %492, float %665)  ; FMad(a,b,c)
  %667 = call float @dx.op.tertiary.f32(i32 46, float %618, float %498, float %666)  ; FMad(a,b,c)
  %668 = fadd fast float %667, %504
  %669 = fmul fast float %535, %487
  %670 = call float @dx.op.tertiary.f32(i32 46, float %536, float %493, float %669)  ; FMad(a,b,c)
  %671 = call float @dx.op.tertiary.f32(i32 46, float %618, float %499, float %670)  ; FMad(a,b,c)
  %672 = fadd fast float %671, %505
  %673 = fmul fast float %535, %488
  %674 = call float @dx.op.tertiary.f32(i32 46, float %536, float %494, float %673)  ; FMad(a,b,c)
  %675 = call float @dx.op.tertiary.f32(i32 46, float %618, float %500, float %674)  ; FMad(a,b,c)
  %676 = fadd fast float %675, %506
  %677 = fmul fast float %535, %489
  %678 = call float @dx.op.tertiary.f32(i32 46, float %536, float %495, float %677)  ; FMad(a,b,c)
  %679 = call float @dx.op.tertiary.f32(i32 46, float %618, float %501, float %678)  ; FMad(a,b,c)
  %680 = fadd fast float %679, %507
  %681 = fdiv fast float 1.000000e+00, %680
  %682 = fmul fast float %681, %668
  %683 = fmul fast float %681, %672
  %684 = fmul fast float %681, %676
  %685 = fsub fast float -0.000000e+00, %634
  %686 = fsub fast float -0.000000e+00, %635
  %687 = fsub fast float -0.000000e+00, %636
  %688 = fsub fast float %337, %661
  %689 = fsub fast float %338, %662
  %690 = fsub fast float %339, %664
  %691 = fsub fast float %682, %688
  %692 = fsub fast float %683, %689
  %693 = fsub fast float %684, %690
  %694 = call float @dx.op.dot3.f32(i32 55, float %691, float %692, float %693, float %691, float %692, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.unary.f32(i32 25, float %694)  ; Rsqrt(value)
  %696 = fmul fast float %691, %695
  %697 = fmul fast float %692, %695
  %698 = fmul fast float %693, %695
  %699 = fsub fast float %516, %688
  %700 = fsub fast float %517, %689
  %701 = fsub fast float %518, %690
  %702 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %699, float %700, float %701)  ; Dot3(ax,ay,az,bx,by,bz)
  %703 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %696, float %697, float %698)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = fdiv fast float 1.000000e+00, %703
  %705 = fmul fast float %704, %702
  %706 = fmul fast float %705, %696
  %707 = fmul fast float %705, %697
  %708 = fmul fast float %705, %698
  %709 = fadd fast float %706, %688
  %710 = fadd fast float %707, %689
  %711 = fadd fast float %708, %690
  %712 = fadd fast float %661, %337
  %713 = fadd fast float %662, %338
  %714 = fadd fast float %664, %339
  %715 = fsub fast float %682, %712
  %716 = fsub fast float %683, %713
  %717 = fsub fast float %684, %714
  %718 = call float @dx.op.dot3.f32(i32 55, float %715, float %716, float %717, float %715, float %716, float %717)  ; Dot3(ax,ay,az,bx,by,bz)
  %719 = call float @dx.op.unary.f32(i32 25, float %718)  ; Rsqrt(value)
  %720 = fmul fast float %719, %715
  %721 = fmul fast float %719, %716
  %722 = fmul fast float %719, %717
  %723 = fsub fast float %516, %712
  %724 = fsub fast float %517, %713
  %725 = fsub fast float %518, %714
  %726 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %723, float %724, float %725)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %720, float %721, float %722)  ; Dot3(ax,ay,az,bx,by,bz)
  %728 = fdiv fast float 1.000000e+00, %727
  %729 = fmul fast float %728, %726
  %730 = fmul fast float %729, %720
  %731 = fmul fast float %729, %721
  %732 = fmul fast float %729, %722
  %733 = fadd fast float %730, %712
  %734 = fadd fast float %731, %713
  %735 = fadd fast float %732, %714
  %736 = fmul fast float %709, %462
  %737 = call float @dx.op.tertiary.f32(i32 46, float %710, float %468, float %736)  ; FMad(a,b,c)
  %738 = call float @dx.op.tertiary.f32(i32 46, float %711, float %474, float %737)  ; FMad(a,b,c)
  %739 = fadd fast float %738, %480
  %740 = fmul fast float %709, %463
  %741 = call float @dx.op.tertiary.f32(i32 46, float %710, float %469, float %740)  ; FMad(a,b,c)
  %742 = call float @dx.op.tertiary.f32(i32 46, float %711, float %475, float %741)  ; FMad(a,b,c)
  %743 = fadd fast float %742, %481
  %744 = fmul fast float %709, %465
  %745 = call float @dx.op.tertiary.f32(i32 46, float %710, float %471, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %711, float %477, float %745)  ; FMad(a,b,c)
  %747 = fadd fast float %746, %483
  %748 = fmul fast float %733, %462
  %749 = call float @dx.op.tertiary.f32(i32 46, float %734, float %468, float %748)  ; FMad(a,b,c)
  %750 = call float @dx.op.tertiary.f32(i32 46, float %735, float %474, float %749)  ; FMad(a,b,c)
  %751 = fadd fast float %750, %480
  %752 = fmul fast float %733, %463
  %753 = call float @dx.op.tertiary.f32(i32 46, float %734, float %469, float %752)  ; FMad(a,b,c)
  %754 = call float @dx.op.tertiary.f32(i32 46, float %735, float %475, float %753)  ; FMad(a,b,c)
  %755 = fadd fast float %754, %481
  %756 = fmul fast float %733, %465
  %757 = call float @dx.op.tertiary.f32(i32 46, float %734, float %471, float %756)  ; FMad(a,b,c)
  %758 = call float @dx.op.tertiary.f32(i32 46, float %735, float %477, float %757)  ; FMad(a,b,c)
  %759 = fadd fast float %758, %483
  %760 = fdiv fast float 1.000000e+00, %747
  %761 = fmul fast float %760, %739
  %762 = fmul fast float %760, %743
  %763 = fdiv fast float 1.000000e+00, %759
  %764 = fmul fast float %763, %751
  %765 = fmul fast float %763, %755
  %766 = fsub fast float %764, %761
  %767 = fsub fast float %765, %762
  %768 = call float @dx.op.dot2.f32(i32 54, float %766, float %767, float %766, float %767)  ; Dot2(ax,ay,bx,by)
  %769 = call float @dx.op.unary.f32(i32 25, float %768)  ; Rsqrt(value)
  %770 = fmul fast float %766, %769
  %771 = fmul fast float %767, %769
  %772 = fmul fast float %766, %766
  %773 = fmul fast float %767, %767
  %774 = fadd fast float %772, %773
  %775 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %776 = fmul fast float %775, 5.000000e-01
  br i1 %511, label %869, label %777, !dx.controlflow.hints !46

; <label>:777                                     ; preds = %645
  %778 = fsub fast float %337, %329
  %779 = fsub fast float %338, %330
  %780 = fsub fast float %339, %331
  %781 = fsub fast float %682, %778
  %782 = fsub fast float %683, %779
  %783 = fsub fast float %684, %780
  %784 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %781, float %782, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.unary.f32(i32 25, float %784)  ; Rsqrt(value)
  %786 = fmul fast float %785, %781
  %787 = fmul fast float %785, %782
  %788 = fmul fast float %785, %783
  %789 = fsub fast float %516, %778
  %790 = fsub fast float %517, %779
  %791 = fsub fast float %518, %780
  %792 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %789, float %790, float %791)  ; Dot3(ax,ay,az,bx,by,bz)
  %793 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %786, float %787, float %788)  ; Dot3(ax,ay,az,bx,by,bz)
  %794 = fdiv fast float 1.000000e+00, %793
  %795 = fmul fast float %794, %792
  %796 = fmul fast float %795, %786
  %797 = fmul fast float %795, %787
  %798 = fmul fast float %795, %788
  %799 = fadd fast float %796, %778
  %800 = fadd fast float %797, %779
  %801 = fadd fast float %798, %780
  %802 = fadd fast float %337, %329
  %803 = fadd fast float %338, %330
  %804 = fadd fast float %339, %331
  %805 = fsub fast float %682, %802
  %806 = fsub fast float %683, %803
  %807 = fsub fast float %684, %804
  %808 = call float @dx.op.dot3.f32(i32 55, float %805, float %806, float %807, float %805, float %806, float %807)  ; Dot3(ax,ay,az,bx,by,bz)
  %809 = call float @dx.op.unary.f32(i32 25, float %808)  ; Rsqrt(value)
  %810 = fmul fast float %809, %805
  %811 = fmul fast float %809, %806
  %812 = fmul fast float %809, %807
  %813 = fsub fast float %516, %802
  %814 = fsub fast float %517, %803
  %815 = fsub fast float %518, %804
  %816 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %813, float %814, float %815)  ; Dot3(ax,ay,az,bx,by,bz)
  %817 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %810, float %811, float %812)  ; Dot3(ax,ay,az,bx,by,bz)
  %818 = fdiv fast float 1.000000e+00, %817
  %819 = fmul fast float %818, %816
  %820 = fmul fast float %819, %810
  %821 = fmul fast float %819, %811
  %822 = fmul fast float %819, %812
  %823 = fadd fast float %820, %802
  %824 = fadd fast float %821, %803
  %825 = fadd fast float %822, %804
  %826 = fmul fast float %799, %462
  %827 = call float @dx.op.tertiary.f32(i32 46, float %800, float %468, float %826)  ; FMad(a,b,c)
  %828 = call float @dx.op.tertiary.f32(i32 46, float %801, float %474, float %827)  ; FMad(a,b,c)
  %829 = fadd fast float %828, %480
  %830 = fmul fast float %799, %463
  %831 = call float @dx.op.tertiary.f32(i32 46, float %800, float %469, float %830)  ; FMad(a,b,c)
  %832 = call float @dx.op.tertiary.f32(i32 46, float %801, float %475, float %831)  ; FMad(a,b,c)
  %833 = fadd fast float %832, %481
  %834 = fmul fast float %799, %465
  %835 = call float @dx.op.tertiary.f32(i32 46, float %800, float %471, float %834)  ; FMad(a,b,c)
  %836 = call float @dx.op.tertiary.f32(i32 46, float %801, float %477, float %835)  ; FMad(a,b,c)
  %837 = fadd fast float %836, %483
  %838 = fmul fast float %823, %462
  %839 = call float @dx.op.tertiary.f32(i32 46, float %824, float %468, float %838)  ; FMad(a,b,c)
  %840 = call float @dx.op.tertiary.f32(i32 46, float %825, float %474, float %839)  ; FMad(a,b,c)
  %841 = fadd fast float %840, %480
  %842 = fmul fast float %823, %463
  %843 = call float @dx.op.tertiary.f32(i32 46, float %824, float %469, float %842)  ; FMad(a,b,c)
  %844 = call float @dx.op.tertiary.f32(i32 46, float %825, float %475, float %843)  ; FMad(a,b,c)
  %845 = fadd fast float %844, %481
  %846 = fmul fast float %823, %465
  %847 = call float @dx.op.tertiary.f32(i32 46, float %824, float %471, float %846)  ; FMad(a,b,c)
  %848 = call float @dx.op.tertiary.f32(i32 46, float %825, float %477, float %847)  ; FMad(a,b,c)
  %849 = fadd fast float %848, %483
  %850 = fdiv fast float 1.000000e+00, %837
  %851 = fmul fast float %850, %829
  %852 = fmul fast float %850, %833
  %853 = fdiv fast float 1.000000e+00, %849
  %854 = fmul fast float %853, %841
  %855 = fmul fast float %853, %845
  %856 = fsub fast float %854, %851
  %857 = fsub fast float %855, %852
  %858 = call float @dx.op.dot2.f32(i32 54, float %856, float %857, float %856, float %857)  ; Dot2(ax,ay,bx,by)
  %859 = call float @dx.op.unary.f32(i32 25, float %858)  ; Rsqrt(value)
  %860 = fmul fast float %856, %859
  %861 = fmul fast float %857, %859
  %862 = fmul fast float %856, %856
  %863 = fmul fast float %857, %857
  %864 = fadd fast float %862, %863
  %865 = call float @dx.op.unary.f32(i32 24, float %864)  ; Sqrt(value)
  %866 = fmul fast float %865, 5.000000e-01
  %867 = fcmp fast olt float %866, %776
  br i1 %867, label %868, label %869, !dx.controlflow.hints !47

; <label>:868                                     ; preds = %777
  br label %869

; <label>:869                                     ; preds = %868, %777, %645
  %870 = phi float [ %776, %645 ], [ %866, %868 ], [ %776, %777 ]
  %871 = phi float [ %776, %645 ], [ %776, %868 ], [ %866, %777 ]
  %872 = phi float [ %770, %645 ], [ %770, %868 ], [ %860, %777 ]
  %873 = phi float [ %771, %645 ], [ %771, %868 ], [ %861, %777 ]
  %874 = fmul fast float %870, %457
  %875 = fdiv fast float %874, %871
  %876 = fsub fast float %457, %875
  %877 = fmul fast float %872, %872
  %878 = fmul fast float %877, %876
  %879 = fadd fast float %878, %875
  %880 = fmul fast float %873, %872
  %881 = fmul fast float %880, %876
  %882 = fmul fast float %873, %873
  %883 = fmul fast float %882, %876
  %884 = fadd fast float %883, %875
  %885 = fmul fast float %879, %541
  %886 = call float @dx.op.tertiary.f32(i32 46, float %540, float %881, float %885)  ; FMad(a,b,c)
  %887 = fmul fast float %881, %541
  %888 = call float @dx.op.tertiary.f32(i32 46, float %540, float %884, float %887)  ; FMad(a,b,c)
  %889 = fmul fast float %879, %542
  %890 = call float @dx.op.tertiary.f32(i32 46, float %541, float %881, float %889)  ; FMad(a,b,c)
  %891 = fmul fast float %881, %542
  %892 = call float @dx.op.tertiary.f32(i32 46, float %541, float %884, float %891)  ; FMad(a,b,c)
  br label %893

; <label>:893                                     ; preds = %931, %869
  %894 = phi float [ 0.000000e+00, %869 ], [ %932, %931 ]
  %895 = phi float [ 0.000000e+00, %869 ], [ %933, %931 ]
  %896 = phi float [ 0.000000e+00, %869 ], [ %934, %931 ]
  %897 = phi float [ 0.000000e+00, %869 ], [ %935, %931 ]
  %898 = phi i32 [ 0, %869 ], [ %936, %931 ]
  %899 = mul i32 %898, 2
  %900 = add i32 0, %899
  %901 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %900
  %902 = load float, float* %901, align 4
  %903 = mul i32 %898, 2
  %904 = add i32 1, %903
  %905 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %904
  %906 = load float, float* %905, align 4
  %907 = fmul fast float %902, %886
  %908 = call float @dx.op.tertiary.f32(i32 46, float %906, float %890, float %907)  ; FMad(a,b,c)
  %909 = fmul fast float %902, %888
  %910 = call float @dx.op.tertiary.f32(i32 46, float %906, float %892, float %909)  ; FMad(a,b,c)
  %911 = fadd fast float %908, %535
  %912 = fadd fast float %910, %536
  %913 = fmul fast float %911, %452
  %914 = fmul fast float %912, %452
  %915 = call float @dx.op.binary.f32(i32 35, float %913, float %448)  ; FMax(a,b)
  %916 = call float @dx.op.binary.f32(i32 35, float %914, float %448)  ; FMax(a,b)
  %917 = call float @dx.op.binary.f32(i32 36, float %915, float %449)  ; FMin(a,b)
  %918 = call float @dx.op.binary.f32(i32 36, float %916, float %449)  ; FMin(a,b)
  %919 = fadd fast float %917, %446
  %920 = fadd fast float %918, %447
  %921 = uitofp i32 %508 to float
  %922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %919, float %920, float %921, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = fadd fast float %538, %456
  %925 = fcmp fast olt float %924, %923
  br i1 %925, label %926, label %931, !dx.controlflow.hints !48

; <label>:926                                     ; preds = %893
  %927 = fadd fast float %923, %896
  %928 = fadd fast float %908, %894
  %929 = fadd fast float %910, %895
  %930 = fadd fast float %897, 1.000000e+00
  br label %931

; <label>:931                                     ; preds = %926, %893
  %932 = phi float [ %928, %926 ], [ %894, %893 ]
  %933 = phi float [ %929, %926 ], [ %895, %893 ]
  %934 = phi float [ %927, %926 ], [ %896, %893 ]
  %935 = phi float [ %930, %926 ], [ %897, %893 ]
  %936 = add nuw nsw i32 %898, 1
  %937 = icmp eq i32 %936, 8
  br i1 %937, label %938, label %893

; <label>:938                                     ; preds = %931
  %939 = fdiv fast float 1.000000e+00, %935
  %940 = fcmp fast oeq float %935, 0.000000e+00
  %941 = fmul fast float %939, %934
  %942 = select i1 %940, float -1.000000e+00, float %941
  %943 = fcmp fast olt float %942, 0.000000e+00
  br i1 %943, label %1230, label %944, !dx.controlflow.hints !49

; <label>:944                                     ; preds = %938
  %945 = fmul fast float %939, %933
  %946 = select i1 %940, float 0.000000e+00, float %945
  %947 = fmul fast float %939, %932
  %948 = select i1 %940, float 0.000000e+00, float %947
  %949 = fadd fast float %948, %535
  %950 = fadd fast float %946, %536
  br i1 %511, label %951, label %955, !dx.controlflow.hints !45

; <label>:951                                     ; preds = %944
  %952 = fcmp fast olt float %635, 0x3FE6666660000000
  %953 = select i1 %952, float 1.000000e+00, float 0.000000e+00
  %954 = select i1 %952, float 0.000000e+00, float 1.000000e+00
  br label %955

; <label>:955                                     ; preds = %951, %944
  %956 = phi float [ 0.000000e+00, %951 ], [ %638, %944 ]
  %957 = phi float [ %953, %951 ], [ %639, %944 ]
  %958 = phi float [ %954, %951 ], [ %640, %944 ]
  %959 = fmul fast float %957, %636
  %960 = fmul fast float %958, %635
  %961 = fsub fast float %959, %960
  %962 = fmul fast float %958, %634
  %963 = fmul fast float %956, %636
  %964 = fsub fast float %962, %963
  %965 = fmul fast float %956, %635
  %966 = fmul fast float %957, %634
  %967 = fsub fast float %965, %966
  %968 = call float @dx.op.dot3.f32(i32 55, float %961, float %964, float %967, float %961, float %964, float %967)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = call float @dx.op.unary.f32(i32 25, float %968)  ; Rsqrt(value)
  %970 = fmul fast float %969, %334
  %971 = fmul fast float %970, %961
  %972 = fmul fast float %970, %964
  %973 = fmul fast float %967, %334
  %974 = fmul fast float %973, %969
  %975 = fmul fast float %949, %486
  %976 = call float @dx.op.tertiary.f32(i32 46, float %950, float %492, float %975)  ; FMad(a,b,c)
  %977 = call float @dx.op.tertiary.f32(i32 46, float %942, float %498, float %976)  ; FMad(a,b,c)
  %978 = fadd fast float %977, %504
  %979 = fmul fast float %949, %487
  %980 = call float @dx.op.tertiary.f32(i32 46, float %950, float %493, float %979)  ; FMad(a,b,c)
  %981 = call float @dx.op.tertiary.f32(i32 46, float %942, float %499, float %980)  ; FMad(a,b,c)
  %982 = fadd fast float %981, %505
  %983 = fmul fast float %949, %488
  %984 = call float @dx.op.tertiary.f32(i32 46, float %950, float %494, float %983)  ; FMad(a,b,c)
  %985 = call float @dx.op.tertiary.f32(i32 46, float %942, float %500, float %984)  ; FMad(a,b,c)
  %986 = fadd fast float %985, %506
  %987 = fmul fast float %949, %489
  %988 = call float @dx.op.tertiary.f32(i32 46, float %950, float %495, float %987)  ; FMad(a,b,c)
  %989 = call float @dx.op.tertiary.f32(i32 46, float %942, float %501, float %988)  ; FMad(a,b,c)
  %990 = fadd fast float %989, %507
  %991 = fdiv fast float 1.000000e+00, %990
  %992 = fmul fast float %991, %978
  %993 = fmul fast float %991, %982
  %994 = fmul fast float %991, %986
  %995 = fsub fast float %337, %971
  %996 = fsub fast float %338, %972
  %997 = fsub fast float %339, %974
  %998 = fsub fast float %992, %995
  %999 = fsub fast float %993, %996
  %1000 = fsub fast float %994, %997
  %1001 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float %998, float %999, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.unary.f32(i32 25, float %1001)  ; Rsqrt(value)
  %1003 = fmul fast float %998, %1002
  %1004 = fmul fast float %999, %1002
  %1005 = fmul fast float %1000, %1002
  %1006 = fsub fast float %516, %995
  %1007 = fsub fast float %517, %996
  %1008 = fsub fast float %518, %997
  %1009 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1006, float %1007, float %1008)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1003, float %1004, float %1005)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = fdiv fast float 1.000000e+00, %1010
  %1012 = fmul fast float %1011, %1009
  %1013 = fmul fast float %1012, %1003
  %1014 = fmul fast float %1012, %1004
  %1015 = fmul fast float %1012, %1005
  %1016 = fadd fast float %1013, %995
  %1017 = fadd fast float %1014, %996
  %1018 = fadd fast float %1015, %997
  %1019 = fadd fast float %971, %337
  %1020 = fadd fast float %972, %338
  %1021 = fadd fast float %974, %339
  %1022 = fsub fast float %992, %1019
  %1023 = fsub fast float %993, %1020
  %1024 = fsub fast float %994, %1021
  %1025 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1023, float %1024, float %1022, float %1023, float %1024)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = call float @dx.op.unary.f32(i32 25, float %1025)  ; Rsqrt(value)
  %1027 = fmul fast float %1026, %1022
  %1028 = fmul fast float %1026, %1023
  %1029 = fmul fast float %1026, %1024
  %1030 = fsub fast float %516, %1019
  %1031 = fsub fast float %517, %1020
  %1032 = fsub fast float %518, %1021
  %1033 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1030, float %1031, float %1032)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1027, float %1028, float %1029)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = fdiv fast float 1.000000e+00, %1034
  %1036 = fmul fast float %1035, %1033
  %1037 = fmul fast float %1036, %1027
  %1038 = fmul fast float %1036, %1028
  %1039 = fmul fast float %1036, %1029
  %1040 = fadd fast float %1037, %1019
  %1041 = fadd fast float %1038, %1020
  %1042 = fadd fast float %1039, %1021
  %1043 = fmul fast float %1016, %462
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %468, float %1043)  ; FMad(a,b,c)
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %474, float %1044)  ; FMad(a,b,c)
  %1046 = fadd fast float %1045, %480
  %1047 = fmul fast float %1016, %463
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %469, float %1047)  ; FMad(a,b,c)
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %475, float %1048)  ; FMad(a,b,c)
  %1050 = fadd fast float %1049, %481
  %1051 = fmul fast float %1016, %465
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1017, float %471, float %1051)  ; FMad(a,b,c)
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %477, float %1052)  ; FMad(a,b,c)
  %1054 = fadd fast float %1053, %483
  %1055 = fmul fast float %1040, %462
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %468, float %1055)  ; FMad(a,b,c)
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %474, float %1056)  ; FMad(a,b,c)
  %1058 = fadd fast float %1057, %480
  %1059 = fmul fast float %1040, %463
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %469, float %1059)  ; FMad(a,b,c)
  %1061 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %475, float %1060)  ; FMad(a,b,c)
  %1062 = fadd fast float %1061, %481
  %1063 = fmul fast float %1040, %465
  %1064 = call float @dx.op.tertiary.f32(i32 46, float %1041, float %471, float %1063)  ; FMad(a,b,c)
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %477, float %1064)  ; FMad(a,b,c)
  %1066 = fadd fast float %1065, %483
  %1067 = fdiv fast float 1.000000e+00, %1054
  %1068 = fmul fast float %1067, %1046
  %1069 = fmul fast float %1067, %1050
  %1070 = fdiv fast float 1.000000e+00, %1066
  %1071 = fmul fast float %1070, %1058
  %1072 = fmul fast float %1070, %1062
  %1073 = fsub fast float %1071, %1068
  %1074 = fsub fast float %1072, %1069
  %1075 = call float @dx.op.dot2.f32(i32 54, float %1073, float %1074, float %1073, float %1074)  ; Dot2(ax,ay,bx,by)
  %1076 = call float @dx.op.unary.f32(i32 25, float %1075)  ; Rsqrt(value)
  %1077 = fmul fast float %1073, %1076
  %1078 = fmul fast float %1074, %1076
  %1079 = fmul fast float %1073, %1073
  %1080 = fmul fast float %1074, %1074
  %1081 = fadd fast float %1079, %1080
  %1082 = call float @dx.op.unary.f32(i32 24, float %1081)  ; Sqrt(value)
  %1083 = fmul fast float %1082, 5.000000e-01
  br i1 %511, label %1176, label %1084, !dx.controlflow.hints !46

; <label>:1084                                    ; preds = %955
  %1085 = fsub fast float %337, %329
  %1086 = fsub fast float %338, %330
  %1087 = fsub fast float %339, %331
  %1088 = fsub fast float %992, %1085
  %1089 = fsub fast float %993, %1086
  %1090 = fsub fast float %994, %1087
  %1091 = call float @dx.op.dot3.f32(i32 55, float %1088, float %1089, float %1090, float %1088, float %1089, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call float @dx.op.unary.f32(i32 25, float %1091)  ; Rsqrt(value)
  %1093 = fmul fast float %1092, %1088
  %1094 = fmul fast float %1092, %1089
  %1095 = fmul fast float %1092, %1090
  %1096 = fsub fast float %516, %1085
  %1097 = fsub fast float %517, %1086
  %1098 = fsub fast float %518, %1087
  %1099 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1096, float %1097, float %1098)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1093, float %1094, float %1095)  ; Dot3(ax,ay,az,bx,by,bz)
  %1101 = fdiv fast float 1.000000e+00, %1100
  %1102 = fmul fast float %1101, %1099
  %1103 = fmul fast float %1102, %1093
  %1104 = fmul fast float %1102, %1094
  %1105 = fmul fast float %1102, %1095
  %1106 = fadd fast float %1103, %1085
  %1107 = fadd fast float %1104, %1086
  %1108 = fadd fast float %1105, %1087
  %1109 = fadd fast float %337, %329
  %1110 = fadd fast float %338, %330
  %1111 = fadd fast float %339, %331
  %1112 = fsub fast float %992, %1109
  %1113 = fsub fast float %993, %1110
  %1114 = fsub fast float %994, %1111
  %1115 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1113, float %1114, float %1112, float %1113, float %1114)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = call float @dx.op.unary.f32(i32 25, float %1115)  ; Rsqrt(value)
  %1117 = fmul fast float %1116, %1112
  %1118 = fmul fast float %1116, %1113
  %1119 = fmul fast float %1116, %1114
  %1120 = fsub fast float %516, %1109
  %1121 = fsub fast float %517, %1110
  %1122 = fsub fast float %518, %1111
  %1123 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1120, float %1121, float %1122)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %1117, float %1118, float %1119)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = fdiv fast float 1.000000e+00, %1124
  %1126 = fmul fast float %1125, %1123
  %1127 = fmul fast float %1126, %1117
  %1128 = fmul fast float %1126, %1118
  %1129 = fmul fast float %1126, %1119
  %1130 = fadd fast float %1127, %1109
  %1131 = fadd fast float %1128, %1110
  %1132 = fadd fast float %1129, %1111
  %1133 = fmul fast float %1106, %462
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %468, float %1133)  ; FMad(a,b,c)
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %474, float %1134)  ; FMad(a,b,c)
  %1136 = fadd fast float %1135, %480
  %1137 = fmul fast float %1106, %463
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %469, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %475, float %1138)  ; FMad(a,b,c)
  %1140 = fadd fast float %1139, %481
  %1141 = fmul fast float %1106, %465
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %471, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %477, float %1142)  ; FMad(a,b,c)
  %1144 = fadd fast float %1143, %483
  %1145 = fmul fast float %1130, %462
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1131, float %468, float %1145)  ; FMad(a,b,c)
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %474, float %1146)  ; FMad(a,b,c)
  %1148 = fadd fast float %1147, %480
  %1149 = fmul fast float %1130, %463
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1131, float %469, float %1149)  ; FMad(a,b,c)
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %475, float %1150)  ; FMad(a,b,c)
  %1152 = fadd fast float %1151, %481
  %1153 = fmul fast float %1130, %465
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1131, float %471, float %1153)  ; FMad(a,b,c)
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %477, float %1154)  ; FMad(a,b,c)
  %1156 = fadd fast float %1155, %483
  %1157 = fdiv fast float 1.000000e+00, %1144
  %1158 = fmul fast float %1157, %1136
  %1159 = fmul fast float %1157, %1140
  %1160 = fdiv fast float 1.000000e+00, %1156
  %1161 = fmul fast float %1160, %1148
  %1162 = fmul fast float %1160, %1152
  %1163 = fsub fast float %1161, %1158
  %1164 = fsub fast float %1162, %1159
  %1165 = call float @dx.op.dot2.f32(i32 54, float %1163, float %1164, float %1163, float %1164)  ; Dot2(ax,ay,bx,by)
  %1166 = call float @dx.op.unary.f32(i32 25, float %1165)  ; Rsqrt(value)
  %1167 = fmul fast float %1163, %1166
  %1168 = fmul fast float %1164, %1166
  %1169 = fmul fast float %1163, %1163
  %1170 = fmul fast float %1164, %1164
  %1171 = fadd fast float %1169, %1170
  %1172 = call float @dx.op.unary.f32(i32 24, float %1171)  ; Sqrt(value)
  %1173 = fmul fast float %1172, 5.000000e-01
  %1174 = fcmp fast olt float %1173, %1083
  br i1 %1174, label %1175, label %1176, !dx.controlflow.hints !47

; <label>:1175                                    ; preds = %1084
  br label %1176

; <label>:1176                                    ; preds = %1175, %1084, %955
  %1177 = phi float [ %1083, %955 ], [ %1173, %1175 ], [ %1083, %1084 ]
  %1178 = phi float [ %1083, %955 ], [ %1083, %1175 ], [ %1173, %1084 ]
  %1179 = phi float [ %1077, %955 ], [ %1077, %1175 ], [ %1167, %1084 ]
  %1180 = phi float [ %1078, %955 ], [ %1078, %1175 ], [ %1168, %1084 ]
  %1181 = fsub fast float %1178, %1177
  %1182 = fmul fast float %1179, %1179
  %1183 = fmul fast float %1182, %1181
  %1184 = fadd fast float %1183, %1177
  %1185 = fmul fast float %1179, %1181
  %1186 = fmul fast float %1185, %1180
  %1187 = fmul fast float %1180, %1180
  %1188 = fmul fast float %1187, %1181
  %1189 = fadd fast float %1188, %1177
  %1190 = fmul fast float %1184, %541
  %1191 = call float @dx.op.tertiary.f32(i32 46, float %540, float %1186, float %1190)  ; FMad(a,b,c)
  %1192 = fmul fast float %1186, %541
  %1193 = call float @dx.op.tertiary.f32(i32 46, float %540, float %1189, float %1192)  ; FMad(a,b,c)
  %1194 = fmul fast float %1184, %542
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %541, float %1186, float %1194)  ; FMad(a,b,c)
  %1196 = fmul fast float %1186, %542
  %1197 = call float @dx.op.tertiary.f32(i32 46, float %541, float %1189, float %1196)  ; FMad(a,b,c)
  br label %1198

; <label>:1198                                    ; preds = %1198, %1176
  %1199 = phi float [ 0.000000e+00, %1176 ], [ %1225, %1198 ]
  %1200 = phi i32 [ 0, %1176 ], [ %1226, %1198 ]
  %1201 = mul i32 %1200, 2
  %1202 = add i32 0, %1201
  %1203 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1202
  %1204 = load float, float* %1203, align 4
  %1205 = mul i32 %1200, 2
  %1206 = add i32 1, %1205
  %1207 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1206
  %1208 = load float, float* %1207, align 4
  %1209 = fmul fast float %1204, %1191
  %1210 = call float @dx.op.tertiary.f32(i32 46, float %1208, float %1195, float %1209)  ; FMad(a,b,c)
  %1211 = fmul fast float %1204, %1193
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %1208, float %1197, float %1211)  ; FMad(a,b,c)
  %1213 = fadd fast float %1210, %535
  %1214 = fadd fast float %1212, %536
  %1215 = fmul fast float %1213, %452
  %1216 = fmul fast float %1214, %452
  %1217 = call float @dx.op.binary.f32(i32 35, float %1215, float %448)  ; FMax(a,b)
  %1218 = call float @dx.op.binary.f32(i32 35, float %1216, float %448)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 36, float %1217, float %449)  ; FMin(a,b)
  %1220 = call float @dx.op.binary.f32(i32 36, float %1218, float %449)  ; FMin(a,b)
  %1221 = fadd fast float %1219, %446
  %1222 = fadd fast float %1220, %447
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %19, float %1221, float %1222, float %921, float undef, i32 0, i32 0, i32 undef, float %924)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = fadd fast float %1224, %1199
  %1226 = add nuw nsw i32 %1200, 1
  %1227 = icmp eq i32 %1226, 8
  br i1 %1227, label %1228, label %1198

; <label>:1228                                    ; preds = %1198
  %1229 = fmul fast float %1225, 1.250000e-01
  br label %1230

; <label>:1230                                    ; preds = %1228, %938, %587
  %1231 = phi float [ %614, %587 ], [ %1229, %1228 ], [ 1.000000e+00, %938 ]
  %1232 = fcmp fast ogt float %1231, 0.000000e+00
  %1233 = xor i1 %71, true
  %1234 = and i1 %1232, %1233
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1237 = fcmp fast olt float %1236, 0.000000e+00
  %1238 = and i1 %1234, %1237
  br i1 %1238, label %1239, label %1350, !dx.controlflow.hints !50

; <label>:1239                                    ; preds = %1230
  %1240 = fadd fast float %535, %448
  %1241 = fadd fast float %536, %448
  %1242 = fadd fast float %538, %456
  %1243 = fmul fast float %535, %486
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %536, float %492, float %1243)  ; FMad(a,b,c)
  %1245 = call float @dx.op.tertiary.f32(i32 46, float %538, float %498, float %1244)  ; FMad(a,b,c)
  %1246 = fadd fast float %1245, %504
  %1247 = fmul fast float %535, %487
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %536, float %493, float %1247)  ; FMad(a,b,c)
  %1249 = call float @dx.op.tertiary.f32(i32 46, float %538, float %499, float %1248)  ; FMad(a,b,c)
  %1250 = fadd fast float %1249, %505
  %1251 = fmul fast float %535, %488
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %536, float %494, float %1251)  ; FMad(a,b,c)
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %538, float %500, float %1252)  ; FMad(a,b,c)
  %1254 = fadd fast float %1253, %506
  %1255 = fmul fast float %535, %489
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %536, float %495, float %1255)  ; FMad(a,b,c)
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %538, float %501, float %1256)  ; FMad(a,b,c)
  %1258 = fadd fast float %1257, %507
  %1259 = fmul fast float %1240, %486
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %492, float %1259)  ; FMad(a,b,c)
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %498, float %1260)  ; FMad(a,b,c)
  %1262 = fadd fast float %1261, %504
  %1263 = fmul fast float %1240, %487
  %1264 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %493, float %1263)  ; FMad(a,b,c)
  %1265 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %499, float %1264)  ; FMad(a,b,c)
  %1266 = fadd fast float %1265, %505
  %1267 = fmul fast float %1240, %488
  %1268 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %494, float %1267)  ; FMad(a,b,c)
  %1269 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %500, float %1268)  ; FMad(a,b,c)
  %1270 = fadd fast float %1269, %506
  %1271 = fmul fast float %1240, %489
  %1272 = call float @dx.op.tertiary.f32(i32 46, float %1241, float %495, float %1271)  ; FMad(a,b,c)
  %1273 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %501, float %1272)  ; FMad(a,b,c)
  %1274 = fadd fast float %1273, %507
  %1275 = fdiv fast float 1.000000e+00, %1258
  %1276 = fmul fast float %1275, %1246
  %1277 = fmul fast float %1275, %1250
  %1278 = fmul fast float %1275, %1254
  %1279 = fdiv fast float 1.000000e+00, %1274
  %1280 = fmul fast float %1279, %1262
  %1281 = fmul fast float %1279, %1266
  %1282 = fmul fast float %1279, %1270
  %1283 = fsub fast float %1276, %1280
  %1284 = fsub fast float %1277, %1281
  %1285 = fsub fast float %1278, %1282
  %1286 = fmul fast float %1283, %1283
  %1287 = fmul fast float %1284, %1284
  %1288 = fadd fast float %1286, %1287
  %1289 = fmul fast float %1285, %1285
  %1290 = fadd fast float %1288, %1289
  %1291 = call float @dx.op.unary.f32(i32 24, float %1290)  ; Sqrt(value)
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1296 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1301 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.CBufRet.f32 %1302, 2
  %1306 = extractvalue %dx.types.CBufRet.f32 %1302, 3
  %1307 = fmul fast float %1293, %1276
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1294, float %1307)  ; FMad(a,b,c)
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1295, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1296, float %1309)  ; FMad(a,b,c)
  %1311 = fmul fast float %1298, %1276
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1299, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1300, float %1312)  ; FMad(a,b,c)
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1301, float %1313)  ; FMad(a,b,c)
  %1315 = fmul fast float %1303, %1276
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1304, float %1315)  ; FMad(a,b,c)
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1305, float %1316)  ; FMad(a,b,c)
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1306, float %1317)  ; FMad(a,b,c)
  %1319 = fmul fast float %1293, %1280
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1294, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1295, float %1320)  ; FMad(a,b,c)
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1296, float %1321)  ; FMad(a,b,c)
  %1323 = fmul fast float %1298, %1280
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1299, float %1323)  ; FMad(a,b,c)
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1300, float %1324)  ; FMad(a,b,c)
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1301, float %1325)  ; FMad(a,b,c)
  %1327 = fmul fast float %1303, %1280
  %1328 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1304, float %1327)  ; FMad(a,b,c)
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1305, float %1328)  ; FMad(a,b,c)
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1306, float %1329)  ; FMad(a,b,c)
  %1331 = fdiv fast float 1.000000e+00, %1318
  %1332 = fmul fast float %1331, %1310
  %1333 = fmul fast float %1331, %1314
  %1334 = fdiv fast float 1.000000e+00, %1330
  %1335 = fmul fast float %1334, %1322
  %1336 = fmul fast float %1334, %1326
  %1337 = fsub fast float %1332, %1335
  %1338 = fsub fast float %1333, %1336
  %1339 = fmul fast float %1337, 5.000000e-01
  %1340 = fmul fast float %1338, 5.000000e-01
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 0
  %1343 = extractvalue %dx.types.CBufRet.f32 %1341, 1
  %1344 = fmul fast float %1339, %1342
  %1345 = fmul fast float %1340, %1343
  %1346 = fmul fast float %1344, %1344
  %1347 = fmul fast float %1345, %1345
  %1348 = fadd fast float %1346, %1347
  %1349 = call float @dx.op.unary.f32(i32 24, float %1348)  ; Sqrt(value)
  br label %1350

; <label>:1350                                    ; preds = %1239, %1230
  %1351 = phi float [ %1291, %1239 ], [ 0.000000e+00, %1230 ]
  %1352 = phi float [ %1349, %1239 ], [ 0.000000e+00, %1230 ]
  %1353 = fadd fast float %1231, -1.000000e+00
  %1354 = fmul fast float %1353, %425
  %1355 = fadd fast float %1354, 1.000000e+00
  %1356 = fmul fast float %1355, %437
  br label %1357

; <label>:1357                                    ; preds = %1350, %404
  %1358 = phi float [ %1351, %1350 ], [ 0.000000e+00, %404 ]
  %1359 = phi float [ %1352, %1350 ], [ 0.000000e+00, %404 ]
  %1360 = phi float [ %1356, %1350 ], [ %437, %404 ]
  %1361 = call float @dx.op.binary.f32(i32 36, float %1360, float %1360)  ; FMin(a,b)
  %1362 = call float @dx.op.binary.f32(i32 36, float %1360, float %1361)  ; FMin(a,b)
  %1363 = fcmp fast ogt float %1362, 0.000000e+00
  %1364 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %1365 = fcmp fast ogt float %1364, 0.000000e+00
  %1366 = and i1 %1363, %1365
  br i1 %1366, label %1367, label %1648, !dx.controlflow.hints !51

; <label>:1367                                    ; preds = %1357
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1372 = select i1 %71, float %1369, float %1371
  %1373 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1374 = extractvalue %dx.types.CBufRet.f32 %1370, 2
  %1375 = select i1 %71, float %1373, float %1374
  %1376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.i32 %1376, 0
  %1378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.i32 %1378, 0
  %1380 = select i1 %71, i32 %1377, i32 %1379
  %1381 = fcmp fast ogt float %1358, 0.000000e+00
  br i1 %1381, label %1382, label %1386, !dx.controlflow.hints !52

; <label>:1382                                    ; preds = %1367
  %1383 = fptosi float %1359 to i32
  %1384 = call i32 @dx.op.binary.i32(i32 37, i32 %1383, i32 1)  ; IMax(a,b)
  %1385 = call i32 @dx.op.binary.i32(i32 38, i32 %1384, i32 16)  ; IMin(a,b)
  br label %1386

; <label>:1386                                    ; preds = %1382, %1367
  %1387 = phi float [ 0.000000e+00, %1382 ], [ 1.000000e+00, %1367 ]
  %1388 = phi float [ %1358, %1382 ], [ %1372, %1367 ]
  %1389 = phi i32 [ %1385, %1382 ], [ %1380, %1367 ]
  %1390 = fcmp fast olt float %1388, 5.000000e-01
  %1391 = icmp eq i32 %1389, 0
  %1392 = or i1 %1390, %1391
  br i1 %1392, label %1643, label %1393, !dx.controlflow.hints !53

; <label>:1393                                    ; preds = %1386
  %1394 = fsub fast float %337, %133
  %1395 = fsub fast float %338, %134
  %1396 = fsub fast float %339, %135
  %1397 = fmul fast float %1394, %1394
  %1398 = fmul fast float %1395, %1395
  %1399 = fadd fast float %1397, %1398
  %1400 = fmul fast float %1396, %1396
  %1401 = fadd fast float %1399, %1400
  %1402 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.i32 %1403, 0
  %1405 = uitofp i32 %1404 to float
  %1406 = fmul fast float %1388, %334
  %1407 = fdiv fast float %1406, %1402
  %1408 = call float @dx.op.binary.f32(i32 36, float %1407, float 1.000000e+01)  ; FMin(a,b)
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.CBufRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1413 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1418 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  %1423 = extractvalue %dx.types.CBufRet.f32 %1419, 3
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1433 = extractvalue %dx.types.CBufRet.f32 %1429, 3
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1438 = extractvalue %dx.types.CBufRet.f32 %1434, 3
  %1439 = select i1 %71, float %1410, float %1425
  %1440 = select i1 %71, float %1415, float %1430
  %1441 = select i1 %71, float %1420, float %1435
  %1442 = select i1 %71, float %1411, float %1426
  %1443 = select i1 %71, float %1416, float %1431
  %1444 = select i1 %71, float %1421, float %1436
  %1445 = select i1 %71, float %1412, float %1427
  %1446 = select i1 %71, float %1417, float %1432
  %1447 = select i1 %71, float %1422, float %1437
  %1448 = select i1 %71, float %1413, float %1428
  %1449 = select i1 %71, float %1418, float %1433
  %1450 = select i1 %71, float %1423, float %1438
  %1451 = fmul fast float %252, 0x401061CAC0000000
  %1452 = fmul fast float %252, 0x4023E1D7E0000000
  %1453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.f32 %1453, 0
  %1455 = extractvalue %dx.types.CBufRet.f32 %1453, 1
  %1456 = extractvalue %dx.types.CBufRet.f32 %1453, 2
  %1457 = extractvalue %dx.types.CBufRet.f32 %1453, 3
  %1458 = fsub fast float -0.000000e+00, %377
  %1459 = fmul fast float %379, %1458
  %1460 = fmul fast float %377, %1458
  %1461 = fmul fast float %378, %378
  %1462 = fsub fast float %1460, %1461
  %1463 = fdiv fast float 1.000000e+00, %78
  %1464 = fmul fast float %1456, %67
  %1465 = fmul fast float %1457, %68
  %1466 = fmul fast float %1388, %377
  %1467 = fmul fast float %1388, %379
  %1468 = fadd fast float %1466, %133
  %1469 = fadd fast float %1467, %135
  %1470 = fadd fast float %1452, 5.000000e-01
  %1471 = call float @dx.op.unary.f32(i32 22, float %1470)  ; Frc(value)
  %1472 = bitcast float %1471 to i32
  %1473 = ashr i32 %1472, 1
  %1474 = add nsw i32 %1473, 532487669
  %1475 = bitcast i32 %1474 to float
  %1476 = fmul fast float %1475, %1408
  %1477 = fadd fast float %1451, 5.000000e-01
  %1478 = call float @dx.op.unary.f32(i32 22, float %1477)  ; Frc(value)
  %1479 = fmul fast float %1478, 0x401921FB60000000
  %1480 = call float @dx.op.unary.f32(i32 12, float %1479)  ; Cos(value)
  %1481 = fmul fast float %1480, %1480
  %1482 = fsub fast float 1.000000e+00, %1481
  %1483 = bitcast float %1482 to i32
  %1484 = ashr i32 %1483, 1
  %1485 = add nsw i32 %1484, 532487669
  %1486 = bitcast i32 %1485 to float
  %1487 = fmul fast float %1476, %1480
  %1488 = fmul fast float %1487, %378
  %1489 = fmul fast float %1487, %1458
  %1490 = fadd fast float %1468, %1488
  %1491 = fmul fast float %1486, %1476
  %1492 = fmul fast float %1459, %1491
  %1493 = fmul fast float %1491, %379
  %1494 = fmul fast float %1491, %1462
  %1495 = fsub fast float %1490, %1492
  %1496 = fadd fast float %1493, %1388
  %1497 = fmul fast float %1496, %378
  %1498 = fadd fast float %1489, %134
  %1499 = fadd fast float %1498, %1497
  %1500 = fadd fast float %1469, %1494
  %1501 = fmul fast float %1495, %1439
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1499, float %1442, float %1501)  ; FMad(a,b,c)
  %1503 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1445, float %1502)  ; FMad(a,b,c)
  %1504 = fadd fast float %1503, %1448
  %1505 = fmul fast float %1495, %1440
  %1506 = call float @dx.op.tertiary.f32(i32 46, float %1499, float %1443, float %1505)  ; FMad(a,b,c)
  %1507 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1446, float %1506)  ; FMad(a,b,c)
  %1508 = fadd fast float %1507, %1449
  %1509 = fmul fast float %1495, %1441
  %1510 = call float @dx.op.tertiary.f32(i32 46, float %1499, float %1444, float %1509)  ; FMad(a,b,c)
  %1511 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1447, float %1510)  ; FMad(a,b,c)
  %1512 = fadd fast float %1511, %1450
  %1513 = fdiv fast float 1.000000e+00, %1512
  %1514 = fmul fast float %1504, 5.000000e-01
  %1515 = fmul fast float %1508, -5.000000e-01
  %1516 = fmul fast float %1514, %1513
  %1517 = fmul fast float %1515, %1513
  %1518 = fsub fast float 5.000000e-01, %1464
  %1519 = fadd fast float %1518, %1516
  %1520 = fsub fast float 5.000000e-01, %1465
  %1521 = fadd fast float %1520, %1517
  %1522 = fsub fast float %1513, %1463
  %1523 = call float @dx.op.dot2.f32(i32 54, float %1519, float %1521, float %1519, float %1521)  ; Dot2(ax,ay,bx,by)
  %1524 = call float @dx.op.binary.f32(i32 35, float %1523, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1525 = call float @dx.op.dot2.f32(i32 54, float %1454, float %1455, float %1454, float %1455)  ; Dot2(ax,ay,bx,by)
  %1526 = fmul fast float %1525, %1524
  %1527 = call float @dx.op.unary.f32(i32 25, float %1526)  ; Rsqrt(value)
  %1528 = fmul fast float %1527, %1519
  %1529 = fmul fast float %1527, %1521
  %1530 = fadd fast float %1528, %1464
  %1531 = fadd fast float %1529, %1465
  %1532 = fmul fast float %1519, %1454
  %1533 = fmul fast float %1521, %1455
  %1534 = fmul fast float %1532, %1532
  %1535 = fmul fast float %1533, %1533
  %1536 = fadd fast float %1534, %1535
  %1537 = call float @dx.op.unary.f32(i32 24, float %1536)  ; Sqrt(value)
  %1538 = fdiv fast float 1.000000e+00, %1537
  %1539 = fmul fast float %1537, 3.906250e-03
  %1540 = fmul fast float %238, 0x3F70624DE0000000
  %1541 = fadd fast float %1540, 0x3F70624DE0000000
  %1542 = icmp sgt i32 %1389, -1
  br i1 %1542, label %1543, label %1608

; <label>:1543                                    ; preds = %1393
  br label %1544

; <label>:1544                                    ; preds = %1604, %1543
  %1545 = phi float [ %1579, %1604 ], [ %78, %1543 ]
  %1546 = phi float [ %1566, %1604 ], [ %78, %1543 ]
  %1547 = phi float [ %1546, %1604 ], [ %78, %1543 ]
  %1548 = phi i32 [ %1605, %1604 ], [ 0, %1543 ]
  %1549 = sitofp i32 %1548 to float
  %1550 = fadd fast float %252, 5.000000e-01
  %1551 = call float @dx.op.unary.f32(i32 22, float %1550)  ; Frc(value)
  %1552 = fadd fast float %1549, %1551
  %1553 = sitofp i32 %1389 to float
  %1554 = fdiv fast float %1552, %1553
  %1555 = fmul fast float %1554, %1554
  %1556 = fsub fast float %1555, %1554
  %1557 = fmul fast float %1556, %1387
  %1558 = fadd fast float %1557, %1554
  %1559 = call float @dx.op.binary.f32(i32 36, float %1558, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1560 = fmul fast float %1559, %1519
  %1561 = fmul fast float %1559, %1521
  %1562 = fmul fast float %1559, %1522
  %1563 = fadd fast float %1560, %1530
  %1564 = fadd fast float %1561, %1531
  %1565 = fadd fast float %1562, %1463
  %1566 = fdiv fast float 1.000000e+00, %1565
  %1567 = icmp ne i32 %1404, 0
  %1568 = fmul fast float %1539, %1559
  %1569 = call float @dx.op.binary.f32(i32 36, float %1568, float %1405)  ; FMin(a,b)
  %1570 = select i1 %1567, float %1569, float 0.000000e+00
  %1571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1563, float %1564, float undef, float undef, i32 0, i32 0, i32 undef, float %1570)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1572 = extractvalue %dx.types.ResRet.f32 %1571, 0
  %1573 = fcmp fast ogt float %1572, -1.000000e+00
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 1
  %1576 = select i1 %1573, float %1575, float 1.000000e+00
  %1577 = fadd fast float %1572, 1.000000e+00
  %1578 = fmul fast float %1576, %1577
  %1579 = call float @dx.op.unary.f32(i32 6, float %1578)  ; FAbs(value)
  %1580 = fmul fast float %1579, %1541
  %1581 = fsub fast float %1566, %1579
  %1582 = fsub fast float %1581, %1580
  %1583 = fcmp fast ogt float %1582, 0.000000e+00
  %1584 = fcmp fast ogt float %1375, 0.000000e+00
  br i1 %1584, label %1585, label %1588, !dx.controlflow.hints !54

; <label>:1585                                    ; preds = %1544
  %1586 = fsub fast float %1566, %1547
  %1587 = call float @dx.op.binary.f32(i32 35, float %1586, float %1375)  ; FMax(a,b)
  br label %1588

; <label>:1588                                    ; preds = %1585, %1544
  %1589 = phi float [ %1587, %1585 ], [ %1388, %1544 ]
  %1590 = fcmp fast olt float %1582, %1589
  %1591 = fcmp uge float %1572, -1.000000e+00
  %1592 = or i1 %71, %1591
  %1593 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1594 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1595 = fcmp fast oeq float %1563, %1593
  %1596 = fcmp fast oeq float %1564, %1594
  %1597 = and i1 %1595, %1596
  %1598 = and i1 %1592, %1597
  %1599 = and i1 %1583, %1590
  %1600 = and i1 %1599, %1598
  %1601 = fcmp fast ogt float %1559, %1538
  %1602 = and i1 %1601, %1600
  %1603 = zext i1 %1602 to i32
  br i1 %1602, label %1607, label %1604, !dx.controlflow.hints !55

; <label>:1604                                    ; preds = %1588
  %1605 = add nuw nsw i32 %1548, 1
  %1606 = icmp slt i32 %1548, %1389
  br i1 %1606, label %1544, label %1607

; <label>:1607                                    ; preds = %1604, %1588
  br label %1608

; <label>:1608                                    ; preds = %1607, %1393
  %1609 = phi i32 [ 0, %1393 ], [ %1603, %1607 ]
  %1610 = phi float [ %78, %1393 ], [ %1579, %1607 ]
  %1611 = phi float [ %78, %1393 ], [ %1545, %1607 ]
  %1612 = phi float [ %78, %1393 ], [ %1566, %1607 ]
  %1613 = phi float [ %78, %1393 ], [ %1546, %1607 ]
  %1614 = fsub fast float %1613, %1611
  %1615 = fsub fast float %1612, %1610
  %1616 = fsub fast float %1614, %1615
  %1617 = fcmp fast une float %1616, 0.000000e+00
  %1618 = fmul fast float %1614, %1612
  %1619 = fmul fast float %1613, %1615
  %1620 = fsub fast float %1618, %1619
  %1621 = fdiv fast float 1.000000e+00, %1616
  %1622 = fmul fast float %1620, %1621
  %1623 = select i1 %1617, float %1622, float %1612
  %1624 = fdiv fast float 1.000000e+00, %1623
  %1625 = fsub fast float %1624, %1463
  %1626 = fdiv fast float %1625, %1522
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1628 = fmul fast float %1627, %1519
  %1629 = fmul fast float %1627, %1521
  %1630 = fadd fast float %1628, %1530
  %1631 = fadd fast float %1629, %1531
  %1632 = fadd fast float %1630, -5.000000e-01
  %1633 = fadd fast float %1631, -5.000000e-01
  %1634 = call float @dx.op.unary.f32(i32 6, float %1632)  ; FAbs(value)
  %1635 = call float @dx.op.unary.f32(i32 6, float %1633)  ; FAbs(value)
  %1636 = fadd fast float %1634, -5.000000e-01
  %1637 = fadd fast float %1635, -5.000000e-01
  %1638 = call float @dx.op.binary.f32(i32 35, float %1636, float %1637)  ; FMax(a,b)
  %1639 = fcmp fast olt float %1638, 0.000000e+00
  %1640 = icmp ne i32 %1609, 0
  %1641 = and i1 %1640, %1639
  %1642 = select i1 %1641, float 0.000000e+00, float 1.000000e+00
  br label %1643

; <label>:1643                                    ; preds = %1608, %1386
  %1644 = phi float [ %1642, %1608 ], [ 1.000000e+00, %1386 ]
  %1645 = fmul fast float %1644, %1360
  %1646 = fmul fast float %1644, %1360
  %1647 = fmul fast float %1644, %1360
  br label %1648

; <label>:1648                                    ; preds = %1643, %1357
  %1649 = phi float [ %1645, %1643 ], [ %1360, %1357 ]
  %1650 = phi float [ %1646, %1643 ], [ %1360, %1357 ]
  %1651 = phi float [ %1647, %1643 ], [ %1360, %1357 ]
  %1652 = call float @dx.op.binary.f32(i32 36, float %1650, float %1651)  ; FMin(a,b)
  %1653 = call float @dx.op.binary.f32(i32 36, float %1649, float %1652)  ; FMin(a,b)
  %1654 = fcmp fast ogt float %1653, 0x3F10000000000000
  %1655 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1654)  ; WaveAnyTrue(cond)
  %1656 = select i1 %1655, i32 %316, i32 0
  %1657 = or i32 %311, %1656
  %1658 = lshr i32 %257, 5
  %1659 = lshr i32 %258, 5
  %1660 = fcmp fast olt float %1649, 0x3F10000000000000
  %1661 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1660)  ; WaveAllTrue(cond)
  %1662 = fcmp fast ogt float %1649, 0x3FEFFF8000000000
  %1663 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1662)  ; WaveAllTrue(cond)
  %1664 = or i1 %1661, %1663
  %1665 = xor i1 %1664, true
  %1666 = lshr i32 %258, 1
  %1667 = and i32 %1666, 8
  %1668 = lshr i32 %257, 2
  %1669 = and i32 %1668, 4
  %1670 = or i32 %1669, %37
  %1671 = or i32 %1670, %1667
  %1672 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1672, label %1673, label %1712, !dx.controlflow.hints !56

; <label>:1673                                    ; preds = %1648
  %1674 = shl i32 1, %1671
  %1675 = select i1 %1663, i32 %1674, i32 0
  %1676 = shl i32 65536, %1671
  %1677 = select i1 %1661, i32 %1676, i32 0
  %1678 = or i32 %1675, %1677
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1682, label %1680, !dx.controlflow.hints !57

; <label>:1680                                    ; preds = %1673
  %1681 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1658, i32 %1659, i32 %314, i32 %1678)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1682

; <label>:1682                                    ; preds = %1680, %1673
  br i1 %1664, label %1712, label %1683

; <label>:1683                                    ; preds = %1682
  br label %1684

; <label>:1684                                    ; preds = %1709, %1683
  %1685 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1658, i32 %1659, i32 %314, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1686 = and i32 %1685, 3
  %1687 = icmp eq i32 %1686, 0
  br i1 %1687, label %1688, label %1709, !dx.controlflow.hints !58

; <label>:1688                                    ; preds = %1684
  %1689 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1691 = extractvalue %dx.types.CBufRet.i32 %1690, 3
  %1692 = call i32 @dx.op.binary.i32(i32 40, i32 %1691, i32 %1689)  ; UMin(a,b)
  %1693 = extractvalue %dx.types.CBufRet.i32 %1690, 2
  %1694 = udiv i32 %1692, %1693
  %1695 = urem i32 %1692, %1693
  %1696 = extractvalue %dx.types.CBufRet.i32 %1690, 1
  %1697 = urem i32 %1695, %1696
  %1698 = udiv i32 %1695, %1696
  %1699 = shl i32 %1697, 6
  %1700 = and i32 %1699, 32704
  %1701 = shl i32 %1698, 15
  %1702 = and i32 %1701, 8355840
  %1703 = shl i32 %1694, 23
  %1704 = and i32 %1703, 2139095040
  %1705 = or i32 %1704, %1700
  %1706 = or i32 %1705, %1702
  %1707 = or i32 %1706, 3
  %1708 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1658, i32 %1659, i32 %314, i32 %1707)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1712

; <label>:1709                                    ; preds = %1684
  %1710 = icmp eq i32 %1686, 3
  br i1 %1710, label %1711, label %1684, !dx.controlflow.hints !59

; <label>:1711                                    ; preds = %1709
  br label %1712

; <label>:1712                                    ; preds = %1711, %1688, %1682, %1648
  %1713 = phi i32 [ 0, %1682 ], [ %1707, %1688 ], [ 0, %1648 ], [ %1685, %1711 ]
  %1714 = phi i1 [ false, %1682 ], [ %1665, %1688 ], [ %1665, %1648 ], [ %1665, %1711 ]
  br i1 %1714, label %1715, label %1737, !dx.controlflow.hints !60

; <label>:1715                                    ; preds = %1712
  %1716 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1713)  ; WaveReadLaneFirst(value)
  %1717 = lshr i32 %257, 1
  %1718 = and i32 %1717, 15
  %1719 = and i32 %1666, 15
  %1720 = and i32 %257, 1
  %1721 = shl i32 %258, 1
  %1722 = and i32 %1721, 2
  %1723 = or i32 %1722, %1720
  %1724 = lshr i32 %1716, 2
  %1725 = and i32 %1724, 8176
  %1726 = lshr i32 %1716, 11
  %1727 = and i32 %1726, 4080
  %1728 = or i32 %1725, %1718
  %1729 = or i32 %1727, %1719
  %1730 = lshr i32 %1716, 21
  %1731 = and i32 %1730, 1020
  %1732 = or i32 %1723, %1731
  %1733 = fmul fast float %1649, 2.550000e+02
  %1734 = fadd fast float %1733, %251
  %1735 = call float @dx.op.unary.f32(i32 27, float %1734)  ; Round_ni(value)
  %1736 = fmul fast float %1735, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1728, i32 %1729, i32 %1732, float %1736, float %1736, float %1736, float %1736, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1737

; <label>:1737                                    ; preds = %1715, %1712
  %1738 = icmp eq i32 %312, %316
  br i1 %1738, label %1739, label %310, !llvm.loop !61

; <label>:1739                                    ; preds = %1737
  br label %1740

; <label>:1740                                    ; preds = %1739, %282
  %1741 = phi i32 [ 0, %282 ], [ %1657, %1739 ]
  %1742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.i32 %1742, 0
  %1744 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %1743, i32 %283)  ; UMad(a,b,c)
  %1745 = shl i32 %1744, 2
  %1746 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1745, i32 undef, i32 undef, i32 %1741)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1747 = add i32 %283, 1
  %1748 = icmp ugt i32 %1747, %279
  br i1 %1748, label %1749, label %282

; <label>:1749                                    ; preds = %1740
  br label %1750

; <label>:1750                                    ; preds = %1749, %256, %58
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!4 = !{!5, !19, !26, !29}
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
!19 = !{!20, !21, !22, !23, !25}
!20 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !11}
!21 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !24}
!24 = !{i32 1, i32 4}
!25 = !{i32 4, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!29 = !{!30, !31, !32}
!30 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !34}
!34 = !{i32 0, i64 524560, i32 4, !35}
!35 = !{i32 8, i32 8, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}

