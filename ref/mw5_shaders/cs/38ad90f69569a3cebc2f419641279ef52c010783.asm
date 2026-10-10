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
; shader hash: caee6f4fe48882724e9144abc56de932
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
  %82 = fmul fast float %67, 2.000000e+00
  %83 = fmul fast float %82, %80
  %84 = fmul fast float %68, 2.000000e+00
  %85 = fmul fast float %84, %81
  %86 = fsub fast float 1.000000e+00, %83
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
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fmul fast float %183, 0x3FE3C6EF40000000
  %185 = frem fast float %67, 2.560000e+02
  %186 = frem fast float %68, 2.560000e+02
  %187 = fptoui float %185 to i32
  %188 = fptoui float %186 to i32
  %189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %187, i32 %188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fadd fast float %190, %184
  %192 = call float @dx.op.unary.f32(i32 22, float %191)  ; Frc(value)
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 0
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %1276, label %196, !dx.controlflow.hints !41

; <label>:196                                     ; preds = %58
  %197 = fptoui float %67 to i32
  %198 = fptoui float %68 to i32
  %199 = lshr i32 %197, 4
  %200 = lshr i32 %198, 4
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 0
  %203 = call i32 @dx.op.tertiary.i32(i32 49, i32 %200, i32 %202, i32 %199)  ; UMad(a,b,c)
  %204 = add nsw i32 %194, -1
  %205 = call i32 @dx.op.binary.i32(i32 37, i32 %204, i32 0)  ; IMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %207 = fptoui float %206 to i32
  %208 = lshr i32 %207, 5
  %209 = call i32 @dx.op.binary.i32(i32 40, i32 %208, i32 8191)  ; UMin(a,b)
  %210 = shl i32 %209, 2
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = lshr i32 %212, 16
  %214 = and i32 %212, 65535
  %215 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %213, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %216 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %214, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %217 = lshr i32 %215, 5
  %218 = lshr i32 %216, 5
  %219 = call i32 @dx.op.binary.i32(i32 40, i32 %218, i32 %205)  ; UMin(a,b)
  %220 = icmp ugt i32 %217, %219
  br i1 %220, label %1276, label %221

; <label>:221                                     ; preds = %196
  br label %222

; <label>:222                                     ; preds = %1266, %221
  %223 = phi i32 [ %1273, %1266 ], [ %217, %221 ]
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 0
  %226 = call i32 @dx.op.tertiary.i32(i32 49, i32 %203, i32 %225, i32 %223)  ; UMad(a,b,c)
  %227 = shl i32 %226, 2
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = shl i32 %223, 5
  %231 = sub nsw i32 %213, %230
  %232 = call i32 @dx.op.binary.i32(i32 37, i32 %231, i32 0)  ; IMax(a,b)
  %233 = call i32 @dx.op.binary.i32(i32 38, i32 %232, i32 31)  ; IMin(a,b)
  %234 = sub nsw i32 1, %213
  %235 = add nsw i32 %234, %214
  %236 = call i32 @dx.op.binary.i32(i32 37, i32 %235, i32 0)  ; IMax(a,b)
  %237 = call i32 @dx.op.binary.i32(i32 38, i32 %236, i32 32)  ; IMin(a,b)
  %238 = and i32 %237, 31
  %239 = shl i32 -1, %238
  %240 = xor i32 %239, -1
  %241 = and i32 %233, 31
  %242 = shl i32 %240, %241
  %243 = icmp eq i32 %237, 32
  %244 = select i1 %243, i32 -1, i32 %242
  %245 = and i32 %244, %229
  %246 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %245, i8 1)  ; WaveActiveBit(value,op)
  %247 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %246)  ; WaveReadLaneFirst(value)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %1266, label %249

; <label>:249                                     ; preds = %222
  br label %250

; <label>:250                                     ; preds = %1263, %249
  %251 = phi i32 [ %1183, %1263 ], [ 0, %249 ]
  %252 = phi i32 [ %257, %1263 ], [ %247, %249 ]
  %253 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %252)  ; FirstbitLo(value)
  %254 = add i32 %253, %230
  %255 = and i32 %253, 31
  %256 = shl i32 1, %255
  %257 = xor i32 %256, %252
  %258 = mul i32 %254, 112
  %259 = add i32 %258, 16
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = add i32 %258, 28
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = add i32 %258, 32
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = add i32 %258, 44
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = add i32 %258, 48
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = add i32 %258, 64
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = extractvalue %dx.types.ResRet.f32 %282, 3
  %287 = add i32 %258, 92
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = uitofp i32 %290 to float
  %292 = lshr i32 %289, 16
  %293 = uitofp i32 %292 to float
  %294 = and i32 %266, 65535
  %295 = and i32 %266, 50331648
  %296 = icmp eq i32 %295, 33554432
  %297 = call float @dx.op.dot3.f32(i32 55, float %269, float %270, float %271, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %298 = fsub fast float %133, %277
  %299 = fsub fast float %134, %278
  %300 = fsub fast float %135, %279
  %301 = call float @dx.op.dot3.f32(i32 55, float %298, float %299, float %300, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = fdiv fast float %301, %297
  %303 = call float @dx.op.binary.f32(i32 35, float %302, float -1.000000e+00)  ; FMax(a,b)
  %304 = call float @dx.op.binary.f32(i32 36, float %303, float 1.000000e+00)  ; FMin(a,b)
  %305 = fmul fast float %304, %269
  %306 = fmul fast float %304, %270
  %307 = fmul fast float %304, %271
  %308 = fadd fast float %305, %277
  %309 = fadd fast float %306, %278
  %310 = fadd fast float %307, %279
  %311 = fsub fast float %308, %133
  %312 = fsub fast float %309, %134
  %313 = fsub fast float %310, %135
  %314 = call float @dx.op.dot3.f32(i32 55, float %311, float %312, float %313, float %311, float %312, float %313)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %316 = fdiv fast float 1.000000e+00, %315
  %317 = fmul fast float %311, %316
  %318 = fmul fast float %312, %316
  %319 = fmul fast float %313, %316
  br i1 %296, label %320, label %344, !dx.controlflow.hints !42

; <label>:320                                     ; preds = %250
  %321 = fmul fast float %285, %261
  %322 = fmul fast float %285, %262
  %323 = fmul fast float %285, %263
  %324 = fsub fast float %321, %133
  %325 = fadd fast float %324, %308
  %326 = fsub fast float %322, %134
  %327 = fadd fast float %326, %309
  %328 = fsub fast float %323, %135
  %329 = fadd fast float %328, %310
  %330 = call float @dx.op.dot3.f32(i32 55, float %325, float %327, float %329, float %325, float %327, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %331 = call float @dx.op.unary.f32(i32 25, float %330)  ; Rsqrt(value)
  %332 = fmul fast float %331, %325
  %333 = fmul fast float %331, %327
  %334 = fmul fast float %331, %329
  %335 = fsub fast float %133, %308
  %336 = fsub fast float %134, %309
  %337 = fsub fast float %135, %310
  %338 = fsub fast float -0.000000e+00, %335
  %339 = fsub fast float -0.000000e+00, %336
  %340 = fsub fast float -0.000000e+00, %337
  %341 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %261, float %262, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = fcmp fast ogt float %341, 0.000000e+00
  %343 = uitofp i1 %342 to float
  br label %344

; <label>:344                                     ; preds = %320, %250
  %345 = phi float [ %343, %320 ], [ 1.000000e+00, %250 ]
  %346 = phi float [ %332, %320 ], [ %317, %250 ]
  %347 = phi float [ %333, %320 ], [ %318, %250 ]
  %348 = phi float [ %334, %320 ], [ %319, %250 ]
  %349 = call float @dx.op.dot3.f32(i32 55, float %261, float %262, float %263, float %346, float %347, float %348)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = fmul fast float %349, %349
  %351 = call float @dx.op.unary.f32(i32 7, float %350)  ; Saturate(value)
  %352 = fsub fast float 1.000000e+00, %351
  %353 = fmul fast float %352, 5.000000e-01
  %354 = fcmp fast ogt float %349, 0.000000e+00
  %355 = fsub fast float 1.000000e+00, %353
  %356 = select i1 %354, float %353, float %355
  %357 = fmul fast float %356, %293
  %358 = fadd fast float %357, %291
  %359 = fmul fast float %358, 0x3EF0001000000000
  %360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %359, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = fmul fast float %349, %283
  %363 = fadd fast float %362, %284
  %364 = call float @dx.op.unary.f32(i32 7, float %363)  ; Saturate(value)
  %365 = select i1 %296, float 1.000000e+00, float %364
  %366 = select i1 %296, float %364, float 1.000000e+00
  %367 = fmul fast float %315, %280
  %368 = fsub fast float 1.000000e+00, %367
  %369 = fmul fast float %368, %286
  %370 = call float @dx.op.unary.f32(i32 7, float %369)  ; Saturate(value)
  %371 = fmul fast float %370, %366
  %372 = fmul fast float %371, 2.000000e+00
  %373 = fsub fast float 3.000000e+00, %372
  %374 = fmul fast float %361, %345
  %375 = fmul fast float %371, %371
  %376 = fmul fast float %375, %374
  %377 = fmul fast float %376, %373
  %378 = icmp ne i32 %294, 255
  %379 = call float @dx.op.binary.f32(i32 36, float %377, float %377)  ; FMin(a,b)
  %380 = call float @dx.op.binary.f32(i32 36, float %377, float %379)  ; FMin(a,b)
  %381 = fcmp fast ogt float %380, 0.000000e+00
  %382 = and i1 %378, %381
  br i1 %382, label %383, label %1176, !dx.controlflow.hints !43

; <label>:383                                     ; preds = %344
  %384 = mul nuw nsw i32 %294, 176
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  %390 = add nuw nsw i32 %384, 16
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = add nuw nsw i32 %384, 32
  %395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = extractvalue %dx.types.ResRet.f32 %395, 3
  %400 = add nuw nsw i32 %384, 48
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = extractvalue %dx.types.ResRet.f32 %401, 3
  %406 = add nuw nsw i32 %384, 64
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = extractvalue %dx.types.ResRet.f32 %407, 3
  %412 = add nuw nsw i32 %384, 80
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = extractvalue %dx.types.ResRet.f32 %413, 3
  %418 = add nuw nsw i32 %384, 96
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = add nuw nsw i32 %384, 112
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = extractvalue %dx.types.ResRet.f32 %425, 3
  %430 = add nuw nsw i32 %384, 128
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = add nuw nsw i32 %384, 144
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = extractvalue %dx.types.ResRet.f32 %437, 3
  %442 = add nuw nsw i32 %384, 160
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = extractvalue %dx.types.ResRet.f32 %443, 2
  %447 = extractvalue %dx.types.ResRet.f32 %443, 3
  %448 = bitcast float %393 to i32
  %449 = bitcast float %399 to i32
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = and i32 %449, 2
  %453 = fmul fast float %179, %398
  %454 = fmul fast float %180, %398
  %455 = fmul fast float %181, %398
  %456 = fadd fast float %453, %133
  %457 = fadd fast float %454, %134
  %458 = fadd fast float %455, %135
  %459 = fmul fast float %456, %402
  %460 = call float @dx.op.tertiary.f32(i32 46, float %457, float %408, float %459)  ; FMad(a,b,c)
  %461 = call float @dx.op.tertiary.f32(i32 46, float %458, float %414, float %460)  ; FMad(a,b,c)
  %462 = fadd fast float %461, %420
  %463 = fmul fast float %456, %403
  %464 = call float @dx.op.tertiary.f32(i32 46, float %457, float %409, float %463)  ; FMad(a,b,c)
  %465 = call float @dx.op.tertiary.f32(i32 46, float %458, float %415, float %464)  ; FMad(a,b,c)
  %466 = fadd fast float %465, %421
  %467 = fmul fast float %456, %404
  %468 = call float @dx.op.tertiary.f32(i32 46, float %457, float %410, float %467)  ; FMad(a,b,c)
  %469 = call float @dx.op.tertiary.f32(i32 46, float %458, float %416, float %468)  ; FMad(a,b,c)
  %470 = fadd fast float %469, %422
  %471 = fmul fast float %456, %405
  %472 = call float @dx.op.tertiary.f32(i32 46, float %457, float %411, float %471)  ; FMad(a,b,c)
  %473 = call float @dx.op.tertiary.f32(i32 46, float %458, float %417, float %472)  ; FMad(a,b,c)
  %474 = fadd fast float %473, %423
  %475 = fdiv fast float %462, %474
  %476 = fdiv fast float %466, %474
  %477 = fdiv fast float %470, %474
  %478 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %477)  ; FMax(a,b)
  %479 = fmul fast float %192, 0x401921FB60000000
  %480 = call float @dx.op.unary.f32(i32 13, float %479)  ; Sin(value)
  %481 = call float @dx.op.unary.f32(i32 12, float %479)  ; Cos(value)
  %482 = fsub fast float -0.000000e+00, %480
  %483 = icmp eq i32 %452, 0
  br i1 %483, label %484, label %555, !dx.controlflow.hints !44

; <label>:484                                     ; preds = %383
  %485 = fmul fast float %481, %397
  %486 = call float @dx.op.tertiary.f32(i32 46, float %480, float %397, float 0.000000e+00)  ; FMad(a,b,c)
  %487 = fmul fast float %397, %482
  %488 = call float @dx.op.tertiary.f32(i32 46, float %481, float %397, float 0.000000e+00)  ; FMad(a,b,c)
  br label %489

; <label>:489                                     ; preds = %489, %484
  %490 = phi float [ 0.000000e+00, %484 ], [ %522, %489 ]
  %491 = phi float [ 0.000000e+00, %484 ], [ %524, %489 ]
  %492 = phi i32 [ 0, %484 ], [ %525, %489 ]
  %493 = mul i32 %492, 2
  %494 = add i32 0, %493
  %495 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %494
  %496 = load float, float* %495, align 4
  %497 = mul i32 %492, 2
  %498 = add i32 1, %497
  %499 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %498
  %500 = load float, float* %499, align 4
  %501 = fmul fast float %485, %496
  %502 = call float @dx.op.tertiary.f32(i32 46, float %500, float %487, float %501)  ; FMad(a,b,c)
  %503 = fmul fast float %496, %486
  %504 = call float @dx.op.tertiary.f32(i32 46, float %500, float %488, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %502, %475
  %506 = fadd fast float %504, %476
  %507 = fmul fast float %505, %392
  %508 = fmul fast float %506, %392
  %509 = call float @dx.op.binary.f32(i32 35, float %507, float %388)  ; FMax(a,b)
  %510 = call float @dx.op.binary.f32(i32 35, float %508, float %388)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 36, float %509, float %389)  ; FMin(a,b)
  %512 = call float @dx.op.binary.f32(i32 36, float %510, float %389)  ; FMin(a,b)
  %513 = fadd fast float %511, %386
  %514 = fadd fast float %512, %387
  %515 = uitofp i32 %448 to float
  %516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %513, float %514, float %515, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = fsub fast float %517, %478
  %519 = fsub fast float %518, %396
  %520 = fcmp fast ogt float %519, 0.000000e+00
  %521 = select i1 %520, float 1.000000e+00, float 0.000000e+00
  %522 = fadd fast float %521, %490
  %523 = select i1 %520, float %519, float 0.000000e+00
  %524 = fadd fast float %523, %491
  %525 = add nuw nsw i32 %492, 1
  %526 = icmp eq i32 %525, 8
  br i1 %526, label %527, label %489

; <label>:527                                     ; preds = %489
  %528 = fdiv fast float 1.000000e+00, %522
  %529 = fmul fast float %528, %524
  %530 = fdiv fast float 1.000000e+00, %478
  %531 = fmul fast float %529, %530
  %532 = call float @dx.op.unary.f32(i32 7, float %531)  ; Saturate(value)
  %533 = call float @dx.op.binary.f32(i32 35, float %532, float 0.000000e+00)  ; FMax(a,b)
  %534 = fmul fast float %522, 1.250000e-01
  %535 = call float @dx.op.unary.f32(i32 7, float %534)  ; Saturate(value)
  %536 = fmul fast float %535, 2.000000e+00
  %537 = fadd fast float %536, -1.000000e+00
  %538 = fcmp fast ogt float %537, 0.000000e+00
  %539 = fcmp fast olt float %537, 0.000000e+00
  %540 = zext i1 %538 to i32
  %541 = zext i1 %539 to i32
  %542 = sub nsw i32 %540, %541
  %543 = sitofp i32 %542 to float
  %544 = fmul fast float %543, %537
  %545 = fsub fast float 1.000000e+00, %544
  %546 = fmul fast float %545, %545
  %547 = fmul fast float %546, %545
  %548 = fsub fast float %545, %547
  %549 = fmul fast float %548, %533
  %550 = fsub fast float 1.000000e+00, %547
  %551 = fsub fast float %550, %549
  %552 = fmul fast float %543, 5.000000e-01
  %553 = fmul fast float %552, %551
  %554 = fsub fast float 5.000000e-01, %553
  br label %1170

; <label>:555                                     ; preds = %383
  %556 = fsub fast float 1.000000e+00, %478
  %557 = fmul fast float %556, 5.000000e-01
  %558 = fadd fast float %557, %478
  %559 = fsub fast float %456, %277
  %560 = fsub fast float %457, %278
  %561 = fsub fast float %458, %279
  %562 = call float @dx.op.dot3.f32(i32 55, float %559, float %560, float %561, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = fdiv fast float %562, %297
  %564 = call float @dx.op.binary.f32(i32 35, float %563, float -1.000000e+00)  ; FMax(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float %564, float 1.000000e+00)  ; FMin(a,b)
  %566 = fmul fast float %565, %269
  %567 = fmul fast float %565, %270
  %568 = fmul fast float %565, %271
  %569 = fsub fast float %559, %566
  %570 = fsub fast float %560, %567
  %571 = fsub fast float %561, %568
  %572 = call float @dx.op.dot3.f32(i32 55, float %569, float %570, float %571, float %569, float %570, float %571)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = call float @dx.op.unary.f32(i32 25, float %572)  ; Rsqrt(value)
  %574 = fmul fast float %569, %573
  %575 = fmul fast float %570, %573
  %576 = fmul fast float %571, %573
  %577 = call float @dx.op.unary.f32(i32 25, float %297)  ; Rsqrt(value)
  %578 = fmul fast float %577, %269
  %579 = fmul fast float %577, %270
  %580 = fmul fast float %577, %271
  br i1 %451, label %581, label %585, !dx.controlflow.hints !45

; <label>:581                                     ; preds = %555
  %582 = fcmp fast olt float %575, 0x3FE6666660000000
  %583 = select i1 %582, float 1.000000e+00, float 0.000000e+00
  %584 = select i1 %582, float 0.000000e+00, float 1.000000e+00
  br label %585

; <label>:585                                     ; preds = %581, %555
  %586 = phi float [ 0.000000e+00, %581 ], [ %578, %555 ]
  %587 = phi float [ %583, %581 ], [ %579, %555 ]
  %588 = phi float [ %584, %581 ], [ %580, %555 ]
  %589 = fmul fast float %587, %576
  %590 = fmul fast float %588, %575
  %591 = fsub fast float %589, %590
  %592 = fmul fast float %588, %574
  %593 = fmul fast float %586, %576
  %594 = fsub fast float %592, %593
  %595 = fmul fast float %586, %575
  %596 = fmul fast float %587, %574
  %597 = fsub fast float %595, %596
  %598 = call float @dx.op.dot3.f32(i32 55, float %591, float %594, float %597, float %591, float %594, float %597)  ; Dot3(ax,ay,az,bx,by,bz)
  %599 = call float @dx.op.unary.f32(i32 25, float %598)  ; Rsqrt(value)
  %600 = fmul fast float %599, %274
  %601 = fmul fast float %600, %591
  %602 = fmul fast float %600, %594
  %603 = fmul fast float %597, %274
  %604 = fmul fast float %603, %599
  %605 = fmul fast float %475, %426
  %606 = call float @dx.op.tertiary.f32(i32 46, float %476, float %432, float %605)  ; FMad(a,b,c)
  %607 = call float @dx.op.tertiary.f32(i32 46, float %558, float %438, float %606)  ; FMad(a,b,c)
  %608 = fadd fast float %607, %444
  %609 = fmul fast float %475, %427
  %610 = call float @dx.op.tertiary.f32(i32 46, float %476, float %433, float %609)  ; FMad(a,b,c)
  %611 = call float @dx.op.tertiary.f32(i32 46, float %558, float %439, float %610)  ; FMad(a,b,c)
  %612 = fadd fast float %611, %445
  %613 = fmul fast float %475, %428
  %614 = call float @dx.op.tertiary.f32(i32 46, float %476, float %434, float %613)  ; FMad(a,b,c)
  %615 = call float @dx.op.tertiary.f32(i32 46, float %558, float %440, float %614)  ; FMad(a,b,c)
  %616 = fadd fast float %615, %446
  %617 = fmul fast float %475, %429
  %618 = call float @dx.op.tertiary.f32(i32 46, float %476, float %435, float %617)  ; FMad(a,b,c)
  %619 = call float @dx.op.tertiary.f32(i32 46, float %558, float %441, float %618)  ; FMad(a,b,c)
  %620 = fadd fast float %619, %447
  %621 = fdiv fast float 1.000000e+00, %620
  %622 = fmul fast float %621, %608
  %623 = fmul fast float %621, %612
  %624 = fmul fast float %621, %616
  %625 = fsub fast float -0.000000e+00, %574
  %626 = fsub fast float -0.000000e+00, %575
  %627 = fsub fast float -0.000000e+00, %576
  %628 = fsub fast float %277, %601
  %629 = fsub fast float %278, %602
  %630 = fsub fast float %279, %604
  %631 = fsub fast float %622, %628
  %632 = fsub fast float %623, %629
  %633 = fsub fast float %624, %630
  %634 = call float @dx.op.dot3.f32(i32 55, float %631, float %632, float %633, float %631, float %632, float %633)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.unary.f32(i32 25, float %634)  ; Rsqrt(value)
  %636 = fmul fast float %631, %635
  %637 = fmul fast float %632, %635
  %638 = fmul fast float %633, %635
  %639 = fsub fast float %456, %628
  %640 = fsub fast float %457, %629
  %641 = fsub fast float %458, %630
  %642 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %639, float %640, float %641)  ; Dot3(ax,ay,az,bx,by,bz)
  %643 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %636, float %637, float %638)  ; Dot3(ax,ay,az,bx,by,bz)
  %644 = fdiv fast float 1.000000e+00, %643
  %645 = fmul fast float %644, %642
  %646 = fmul fast float %645, %636
  %647 = fmul fast float %645, %637
  %648 = fmul fast float %645, %638
  %649 = fadd fast float %646, %628
  %650 = fadd fast float %647, %629
  %651 = fadd fast float %648, %630
  %652 = fadd fast float %601, %277
  %653 = fadd fast float %602, %278
  %654 = fadd fast float %604, %279
  %655 = fsub fast float %622, %652
  %656 = fsub fast float %623, %653
  %657 = fsub fast float %624, %654
  %658 = call float @dx.op.dot3.f32(i32 55, float %655, float %656, float %657, float %655, float %656, float %657)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = call float @dx.op.unary.f32(i32 25, float %658)  ; Rsqrt(value)
  %660 = fmul fast float %659, %655
  %661 = fmul fast float %659, %656
  %662 = fmul fast float %659, %657
  %663 = fsub fast float %456, %652
  %664 = fsub fast float %457, %653
  %665 = fsub fast float %458, %654
  %666 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %663, float %664, float %665)  ; Dot3(ax,ay,az,bx,by,bz)
  %667 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %660, float %661, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = fdiv fast float 1.000000e+00, %667
  %669 = fmul fast float %668, %666
  %670 = fmul fast float %669, %660
  %671 = fmul fast float %669, %661
  %672 = fmul fast float %669, %662
  %673 = fadd fast float %670, %652
  %674 = fadd fast float %671, %653
  %675 = fadd fast float %672, %654
  %676 = fmul fast float %649, %402
  %677 = call float @dx.op.tertiary.f32(i32 46, float %650, float %408, float %676)  ; FMad(a,b,c)
  %678 = call float @dx.op.tertiary.f32(i32 46, float %651, float %414, float %677)  ; FMad(a,b,c)
  %679 = fadd fast float %678, %420
  %680 = fmul fast float %649, %403
  %681 = call float @dx.op.tertiary.f32(i32 46, float %650, float %409, float %680)  ; FMad(a,b,c)
  %682 = call float @dx.op.tertiary.f32(i32 46, float %651, float %415, float %681)  ; FMad(a,b,c)
  %683 = fadd fast float %682, %421
  %684 = fmul fast float %649, %405
  %685 = call float @dx.op.tertiary.f32(i32 46, float %650, float %411, float %684)  ; FMad(a,b,c)
  %686 = call float @dx.op.tertiary.f32(i32 46, float %651, float %417, float %685)  ; FMad(a,b,c)
  %687 = fadd fast float %686, %423
  %688 = fmul fast float %673, %402
  %689 = call float @dx.op.tertiary.f32(i32 46, float %674, float %408, float %688)  ; FMad(a,b,c)
  %690 = call float @dx.op.tertiary.f32(i32 46, float %675, float %414, float %689)  ; FMad(a,b,c)
  %691 = fadd fast float %690, %420
  %692 = fmul fast float %673, %403
  %693 = call float @dx.op.tertiary.f32(i32 46, float %674, float %409, float %692)  ; FMad(a,b,c)
  %694 = call float @dx.op.tertiary.f32(i32 46, float %675, float %415, float %693)  ; FMad(a,b,c)
  %695 = fadd fast float %694, %421
  %696 = fmul fast float %673, %405
  %697 = call float @dx.op.tertiary.f32(i32 46, float %674, float %411, float %696)  ; FMad(a,b,c)
  %698 = call float @dx.op.tertiary.f32(i32 46, float %675, float %417, float %697)  ; FMad(a,b,c)
  %699 = fadd fast float %698, %423
  %700 = fdiv fast float 1.000000e+00, %687
  %701 = fmul fast float %700, %679
  %702 = fmul fast float %700, %683
  %703 = fdiv fast float 1.000000e+00, %699
  %704 = fmul fast float %703, %691
  %705 = fmul fast float %703, %695
  %706 = fsub fast float %704, %701
  %707 = fsub fast float %705, %702
  %708 = call float @dx.op.dot2.f32(i32 54, float %706, float %707, float %706, float %707)  ; Dot2(ax,ay,bx,by)
  %709 = call float @dx.op.unary.f32(i32 25, float %708)  ; Rsqrt(value)
  %710 = fmul fast float %706, %709
  %711 = fmul fast float %707, %709
  %712 = fmul fast float %706, %706
  %713 = fmul fast float %707, %707
  %714 = fadd fast float %712, %713
  %715 = call float @dx.op.unary.f32(i32 24, float %714)  ; Sqrt(value)
  %716 = fmul fast float %715, 5.000000e-01
  br i1 %451, label %809, label %717, !dx.controlflow.hints !46

; <label>:717                                     ; preds = %585
  %718 = fsub fast float %277, %269
  %719 = fsub fast float %278, %270
  %720 = fsub fast float %279, %271
  %721 = fsub fast float %622, %718
  %722 = fsub fast float %623, %719
  %723 = fsub fast float %624, %720
  %724 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float %721, float %722, float %723)  ; Dot3(ax,ay,az,bx,by,bz)
  %725 = call float @dx.op.unary.f32(i32 25, float %724)  ; Rsqrt(value)
  %726 = fmul fast float %725, %721
  %727 = fmul fast float %725, %722
  %728 = fmul fast float %725, %723
  %729 = fsub fast float %456, %718
  %730 = fsub fast float %457, %719
  %731 = fsub fast float %458, %720
  %732 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %729, float %730, float %731)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %726, float %727, float %728)  ; Dot3(ax,ay,az,bx,by,bz)
  %734 = fdiv fast float 1.000000e+00, %733
  %735 = fmul fast float %734, %732
  %736 = fmul fast float %735, %726
  %737 = fmul fast float %735, %727
  %738 = fmul fast float %735, %728
  %739 = fadd fast float %736, %718
  %740 = fadd fast float %737, %719
  %741 = fadd fast float %738, %720
  %742 = fadd fast float %277, %269
  %743 = fadd fast float %278, %270
  %744 = fadd fast float %279, %271
  %745 = fsub fast float %622, %742
  %746 = fsub fast float %623, %743
  %747 = fsub fast float %624, %744
  %748 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %747, float %745, float %746, float %747)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = call float @dx.op.unary.f32(i32 25, float %748)  ; Rsqrt(value)
  %750 = fmul fast float %749, %745
  %751 = fmul fast float %749, %746
  %752 = fmul fast float %749, %747
  %753 = fsub fast float %456, %742
  %754 = fsub fast float %457, %743
  %755 = fsub fast float %458, %744
  %756 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %753, float %754, float %755)  ; Dot3(ax,ay,az,bx,by,bz)
  %757 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %750, float %751, float %752)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = fdiv fast float 1.000000e+00, %757
  %759 = fmul fast float %758, %756
  %760 = fmul fast float %759, %750
  %761 = fmul fast float %759, %751
  %762 = fmul fast float %759, %752
  %763 = fadd fast float %760, %742
  %764 = fadd fast float %761, %743
  %765 = fadd fast float %762, %744
  %766 = fmul fast float %739, %402
  %767 = call float @dx.op.tertiary.f32(i32 46, float %740, float %408, float %766)  ; FMad(a,b,c)
  %768 = call float @dx.op.tertiary.f32(i32 46, float %741, float %414, float %767)  ; FMad(a,b,c)
  %769 = fadd fast float %768, %420
  %770 = fmul fast float %739, %403
  %771 = call float @dx.op.tertiary.f32(i32 46, float %740, float %409, float %770)  ; FMad(a,b,c)
  %772 = call float @dx.op.tertiary.f32(i32 46, float %741, float %415, float %771)  ; FMad(a,b,c)
  %773 = fadd fast float %772, %421
  %774 = fmul fast float %739, %405
  %775 = call float @dx.op.tertiary.f32(i32 46, float %740, float %411, float %774)  ; FMad(a,b,c)
  %776 = call float @dx.op.tertiary.f32(i32 46, float %741, float %417, float %775)  ; FMad(a,b,c)
  %777 = fadd fast float %776, %423
  %778 = fmul fast float %763, %402
  %779 = call float @dx.op.tertiary.f32(i32 46, float %764, float %408, float %778)  ; FMad(a,b,c)
  %780 = call float @dx.op.tertiary.f32(i32 46, float %765, float %414, float %779)  ; FMad(a,b,c)
  %781 = fadd fast float %780, %420
  %782 = fmul fast float %763, %403
  %783 = call float @dx.op.tertiary.f32(i32 46, float %764, float %409, float %782)  ; FMad(a,b,c)
  %784 = call float @dx.op.tertiary.f32(i32 46, float %765, float %415, float %783)  ; FMad(a,b,c)
  %785 = fadd fast float %784, %421
  %786 = fmul fast float %763, %405
  %787 = call float @dx.op.tertiary.f32(i32 46, float %764, float %411, float %786)  ; FMad(a,b,c)
  %788 = call float @dx.op.tertiary.f32(i32 46, float %765, float %417, float %787)  ; FMad(a,b,c)
  %789 = fadd fast float %788, %423
  %790 = fdiv fast float 1.000000e+00, %777
  %791 = fmul fast float %790, %769
  %792 = fmul fast float %790, %773
  %793 = fdiv fast float 1.000000e+00, %789
  %794 = fmul fast float %793, %781
  %795 = fmul fast float %793, %785
  %796 = fsub fast float %794, %791
  %797 = fsub fast float %795, %792
  %798 = call float @dx.op.dot2.f32(i32 54, float %796, float %797, float %796, float %797)  ; Dot2(ax,ay,bx,by)
  %799 = call float @dx.op.unary.f32(i32 25, float %798)  ; Rsqrt(value)
  %800 = fmul fast float %796, %799
  %801 = fmul fast float %797, %799
  %802 = fmul fast float %796, %796
  %803 = fmul fast float %797, %797
  %804 = fadd fast float %802, %803
  %805 = call float @dx.op.unary.f32(i32 24, float %804)  ; Sqrt(value)
  %806 = fmul fast float %805, 5.000000e-01
  %807 = fcmp fast olt float %806, %716
  br i1 %807, label %808, label %809, !dx.controlflow.hints !47

; <label>:808                                     ; preds = %717
  br label %809

; <label>:809                                     ; preds = %808, %717, %585
  %810 = phi float [ %716, %585 ], [ %806, %808 ], [ %716, %717 ]
  %811 = phi float [ %716, %585 ], [ %716, %808 ], [ %806, %717 ]
  %812 = phi float [ %710, %585 ], [ %710, %808 ], [ %800, %717 ]
  %813 = phi float [ %711, %585 ], [ %711, %808 ], [ %801, %717 ]
  %814 = fmul fast float %810, %397
  %815 = fdiv fast float %814, %811
  %816 = fsub fast float %397, %815
  %817 = fmul fast float %812, %812
  %818 = fmul fast float %817, %816
  %819 = fadd fast float %818, %815
  %820 = fmul fast float %813, %812
  %821 = fmul fast float %820, %816
  %822 = fmul fast float %813, %813
  %823 = fmul fast float %822, %816
  %824 = fadd fast float %823, %815
  %825 = fmul fast float %819, %481
  %826 = call float @dx.op.tertiary.f32(i32 46, float %480, float %821, float %825)  ; FMad(a,b,c)
  %827 = fmul fast float %821, %481
  %828 = call float @dx.op.tertiary.f32(i32 46, float %480, float %824, float %827)  ; FMad(a,b,c)
  %829 = fmul fast float %819, %482
  %830 = call float @dx.op.tertiary.f32(i32 46, float %481, float %821, float %829)  ; FMad(a,b,c)
  %831 = fmul fast float %821, %482
  %832 = call float @dx.op.tertiary.f32(i32 46, float %481, float %824, float %831)  ; FMad(a,b,c)
  br label %833

; <label>:833                                     ; preds = %871, %809
  %834 = phi float [ 0.000000e+00, %809 ], [ %872, %871 ]
  %835 = phi float [ 0.000000e+00, %809 ], [ %873, %871 ]
  %836 = phi float [ 0.000000e+00, %809 ], [ %874, %871 ]
  %837 = phi float [ 0.000000e+00, %809 ], [ %875, %871 ]
  %838 = phi i32 [ 0, %809 ], [ %876, %871 ]
  %839 = mul i32 %838, 2
  %840 = add i32 0, %839
  %841 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %840
  %842 = load float, float* %841, align 4
  %843 = mul i32 %838, 2
  %844 = add i32 1, %843
  %845 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %844
  %846 = load float, float* %845, align 4
  %847 = fmul fast float %842, %826
  %848 = call float @dx.op.tertiary.f32(i32 46, float %846, float %830, float %847)  ; FMad(a,b,c)
  %849 = fmul fast float %842, %828
  %850 = call float @dx.op.tertiary.f32(i32 46, float %846, float %832, float %849)  ; FMad(a,b,c)
  %851 = fadd fast float %848, %475
  %852 = fadd fast float %850, %476
  %853 = fmul fast float %851, %392
  %854 = fmul fast float %852, %392
  %855 = call float @dx.op.binary.f32(i32 35, float %853, float %388)  ; FMax(a,b)
  %856 = call float @dx.op.binary.f32(i32 35, float %854, float %388)  ; FMax(a,b)
  %857 = call float @dx.op.binary.f32(i32 36, float %855, float %389)  ; FMin(a,b)
  %858 = call float @dx.op.binary.f32(i32 36, float %856, float %389)  ; FMin(a,b)
  %859 = fadd fast float %857, %386
  %860 = fadd fast float %858, %387
  %861 = uitofp i32 %448 to float
  %862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %859, float %860, float %861, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = fadd fast float %478, %396
  %865 = fcmp fast olt float %864, %863
  br i1 %865, label %866, label %871, !dx.controlflow.hints !48

; <label>:866                                     ; preds = %833
  %867 = fadd fast float %863, %836
  %868 = fadd fast float %848, %834
  %869 = fadd fast float %850, %835
  %870 = fadd fast float %837, 1.000000e+00
  br label %871

; <label>:871                                     ; preds = %866, %833
  %872 = phi float [ %868, %866 ], [ %834, %833 ]
  %873 = phi float [ %869, %866 ], [ %835, %833 ]
  %874 = phi float [ %867, %866 ], [ %836, %833 ]
  %875 = phi float [ %870, %866 ], [ %837, %833 ]
  %876 = add nuw nsw i32 %838, 1
  %877 = icmp eq i32 %876, 8
  br i1 %877, label %878, label %833

; <label>:878                                     ; preds = %871
  %879 = fdiv fast float 1.000000e+00, %875
  %880 = fcmp fast oeq float %875, 0.000000e+00
  %881 = fmul fast float %879, %874
  %882 = select i1 %880, float -1.000000e+00, float %881
  %883 = fcmp fast olt float %882, 0.000000e+00
  br i1 %883, label %1170, label %884, !dx.controlflow.hints !49

; <label>:884                                     ; preds = %878
  %885 = fmul fast float %879, %873
  %886 = select i1 %880, float 0.000000e+00, float %885
  %887 = fmul fast float %879, %872
  %888 = select i1 %880, float 0.000000e+00, float %887
  %889 = fadd fast float %888, %475
  %890 = fadd fast float %886, %476
  br i1 %451, label %891, label %895, !dx.controlflow.hints !45

; <label>:891                                     ; preds = %884
  %892 = fcmp fast olt float %575, 0x3FE6666660000000
  %893 = select i1 %892, float 1.000000e+00, float 0.000000e+00
  %894 = select i1 %892, float 0.000000e+00, float 1.000000e+00
  br label %895

; <label>:895                                     ; preds = %891, %884
  %896 = phi float [ 0.000000e+00, %891 ], [ %578, %884 ]
  %897 = phi float [ %893, %891 ], [ %579, %884 ]
  %898 = phi float [ %894, %891 ], [ %580, %884 ]
  %899 = fmul fast float %897, %576
  %900 = fmul fast float %898, %575
  %901 = fsub fast float %899, %900
  %902 = fmul fast float %898, %574
  %903 = fmul fast float %896, %576
  %904 = fsub fast float %902, %903
  %905 = fmul fast float %896, %575
  %906 = fmul fast float %897, %574
  %907 = fsub fast float %905, %906
  %908 = call float @dx.op.dot3.f32(i32 55, float %901, float %904, float %907, float %901, float %904, float %907)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call float @dx.op.unary.f32(i32 25, float %908)  ; Rsqrt(value)
  %910 = fmul fast float %909, %274
  %911 = fmul fast float %910, %901
  %912 = fmul fast float %910, %904
  %913 = fmul fast float %907, %274
  %914 = fmul fast float %913, %909
  %915 = fmul fast float %889, %426
  %916 = call float @dx.op.tertiary.f32(i32 46, float %890, float %432, float %915)  ; FMad(a,b,c)
  %917 = call float @dx.op.tertiary.f32(i32 46, float %882, float %438, float %916)  ; FMad(a,b,c)
  %918 = fadd fast float %917, %444
  %919 = fmul fast float %889, %427
  %920 = call float @dx.op.tertiary.f32(i32 46, float %890, float %433, float %919)  ; FMad(a,b,c)
  %921 = call float @dx.op.tertiary.f32(i32 46, float %882, float %439, float %920)  ; FMad(a,b,c)
  %922 = fadd fast float %921, %445
  %923 = fmul fast float %889, %428
  %924 = call float @dx.op.tertiary.f32(i32 46, float %890, float %434, float %923)  ; FMad(a,b,c)
  %925 = call float @dx.op.tertiary.f32(i32 46, float %882, float %440, float %924)  ; FMad(a,b,c)
  %926 = fadd fast float %925, %446
  %927 = fmul fast float %889, %429
  %928 = call float @dx.op.tertiary.f32(i32 46, float %890, float %435, float %927)  ; FMad(a,b,c)
  %929 = call float @dx.op.tertiary.f32(i32 46, float %882, float %441, float %928)  ; FMad(a,b,c)
  %930 = fadd fast float %929, %447
  %931 = fdiv fast float 1.000000e+00, %930
  %932 = fmul fast float %931, %918
  %933 = fmul fast float %931, %922
  %934 = fmul fast float %931, %926
  %935 = fsub fast float %277, %911
  %936 = fsub fast float %278, %912
  %937 = fsub fast float %279, %914
  %938 = fsub fast float %932, %935
  %939 = fsub fast float %933, %936
  %940 = fsub fast float %934, %937
  %941 = call float @dx.op.dot3.f32(i32 55, float %938, float %939, float %940, float %938, float %939, float %940)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = call float @dx.op.unary.f32(i32 25, float %941)  ; Rsqrt(value)
  %943 = fmul fast float %938, %942
  %944 = fmul fast float %939, %942
  %945 = fmul fast float %940, %942
  %946 = fsub fast float %456, %935
  %947 = fsub fast float %457, %936
  %948 = fsub fast float %458, %937
  %949 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %946, float %947, float %948)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %943, float %944, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %951 = fdiv fast float 1.000000e+00, %950
  %952 = fmul fast float %951, %949
  %953 = fmul fast float %952, %943
  %954 = fmul fast float %952, %944
  %955 = fmul fast float %952, %945
  %956 = fadd fast float %953, %935
  %957 = fadd fast float %954, %936
  %958 = fadd fast float %955, %937
  %959 = fadd fast float %911, %277
  %960 = fadd fast float %912, %278
  %961 = fadd fast float %914, %279
  %962 = fsub fast float %932, %959
  %963 = fsub fast float %933, %960
  %964 = fsub fast float %934, %961
  %965 = call float @dx.op.dot3.f32(i32 55, float %962, float %963, float %964, float %962, float %963, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = call float @dx.op.unary.f32(i32 25, float %965)  ; Rsqrt(value)
  %967 = fmul fast float %966, %962
  %968 = fmul fast float %966, %963
  %969 = fmul fast float %966, %964
  %970 = fsub fast float %456, %959
  %971 = fsub fast float %457, %960
  %972 = fsub fast float %458, %961
  %973 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %970, float %971, float %972)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %967, float %968, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = fdiv fast float 1.000000e+00, %974
  %976 = fmul fast float %975, %973
  %977 = fmul fast float %976, %967
  %978 = fmul fast float %976, %968
  %979 = fmul fast float %976, %969
  %980 = fadd fast float %977, %959
  %981 = fadd fast float %978, %960
  %982 = fadd fast float %979, %961
  %983 = fmul fast float %956, %402
  %984 = call float @dx.op.tertiary.f32(i32 46, float %957, float %408, float %983)  ; FMad(a,b,c)
  %985 = call float @dx.op.tertiary.f32(i32 46, float %958, float %414, float %984)  ; FMad(a,b,c)
  %986 = fadd fast float %985, %420
  %987 = fmul fast float %956, %403
  %988 = call float @dx.op.tertiary.f32(i32 46, float %957, float %409, float %987)  ; FMad(a,b,c)
  %989 = call float @dx.op.tertiary.f32(i32 46, float %958, float %415, float %988)  ; FMad(a,b,c)
  %990 = fadd fast float %989, %421
  %991 = fmul fast float %956, %405
  %992 = call float @dx.op.tertiary.f32(i32 46, float %957, float %411, float %991)  ; FMad(a,b,c)
  %993 = call float @dx.op.tertiary.f32(i32 46, float %958, float %417, float %992)  ; FMad(a,b,c)
  %994 = fadd fast float %993, %423
  %995 = fmul fast float %980, %402
  %996 = call float @dx.op.tertiary.f32(i32 46, float %981, float %408, float %995)  ; FMad(a,b,c)
  %997 = call float @dx.op.tertiary.f32(i32 46, float %982, float %414, float %996)  ; FMad(a,b,c)
  %998 = fadd fast float %997, %420
  %999 = fmul fast float %980, %403
  %1000 = call float @dx.op.tertiary.f32(i32 46, float %981, float %409, float %999)  ; FMad(a,b,c)
  %1001 = call float @dx.op.tertiary.f32(i32 46, float %982, float %415, float %1000)  ; FMad(a,b,c)
  %1002 = fadd fast float %1001, %421
  %1003 = fmul fast float %980, %405
  %1004 = call float @dx.op.tertiary.f32(i32 46, float %981, float %411, float %1003)  ; FMad(a,b,c)
  %1005 = call float @dx.op.tertiary.f32(i32 46, float %982, float %417, float %1004)  ; FMad(a,b,c)
  %1006 = fadd fast float %1005, %423
  %1007 = fdiv fast float 1.000000e+00, %994
  %1008 = fmul fast float %1007, %986
  %1009 = fmul fast float %1007, %990
  %1010 = fdiv fast float 1.000000e+00, %1006
  %1011 = fmul fast float %1010, %998
  %1012 = fmul fast float %1010, %1002
  %1013 = fsub fast float %1011, %1008
  %1014 = fsub fast float %1012, %1009
  %1015 = call float @dx.op.dot2.f32(i32 54, float %1013, float %1014, float %1013, float %1014)  ; Dot2(ax,ay,bx,by)
  %1016 = call float @dx.op.unary.f32(i32 25, float %1015)  ; Rsqrt(value)
  %1017 = fmul fast float %1013, %1016
  %1018 = fmul fast float %1014, %1016
  %1019 = fmul fast float %1013, %1013
  %1020 = fmul fast float %1014, %1014
  %1021 = fadd fast float %1019, %1020
  %1022 = call float @dx.op.unary.f32(i32 24, float %1021)  ; Sqrt(value)
  %1023 = fmul fast float %1022, 5.000000e-01
  br i1 %451, label %1116, label %1024, !dx.controlflow.hints !46

; <label>:1024                                    ; preds = %895
  %1025 = fsub fast float %277, %269
  %1026 = fsub fast float %278, %270
  %1027 = fsub fast float %279, %271
  %1028 = fsub fast float %932, %1025
  %1029 = fsub fast float %933, %1026
  %1030 = fsub fast float %934, %1027
  %1031 = call float @dx.op.dot3.f32(i32 55, float %1028, float %1029, float %1030, float %1028, float %1029, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.unary.f32(i32 25, float %1031)  ; Rsqrt(value)
  %1033 = fmul fast float %1032, %1028
  %1034 = fmul fast float %1032, %1029
  %1035 = fmul fast float %1032, %1030
  %1036 = fsub fast float %456, %1025
  %1037 = fsub fast float %457, %1026
  %1038 = fsub fast float %458, %1027
  %1039 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %1036, float %1037, float %1038)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %1033, float %1034, float %1035)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = fdiv fast float 1.000000e+00, %1040
  %1042 = fmul fast float %1041, %1039
  %1043 = fmul fast float %1042, %1033
  %1044 = fmul fast float %1042, %1034
  %1045 = fmul fast float %1042, %1035
  %1046 = fadd fast float %1043, %1025
  %1047 = fadd fast float %1044, %1026
  %1048 = fadd fast float %1045, %1027
  %1049 = fadd fast float %277, %269
  %1050 = fadd fast float %278, %270
  %1051 = fadd fast float %279, %271
  %1052 = fsub fast float %932, %1049
  %1053 = fsub fast float %933, %1050
  %1054 = fsub fast float %934, %1051
  %1055 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1053, float %1054, float %1052, float %1053, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = call float @dx.op.unary.f32(i32 25, float %1055)  ; Rsqrt(value)
  %1057 = fmul fast float %1056, %1052
  %1058 = fmul fast float %1056, %1053
  %1059 = fmul fast float %1056, %1054
  %1060 = fsub fast float %456, %1049
  %1061 = fsub fast float %457, %1050
  %1062 = fsub fast float %458, %1051
  %1063 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %1060, float %1061, float %1062)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float %1057, float %1058, float %1059)  ; Dot3(ax,ay,az,bx,by,bz)
  %1065 = fdiv fast float 1.000000e+00, %1064
  %1066 = fmul fast float %1065, %1063
  %1067 = fmul fast float %1066, %1057
  %1068 = fmul fast float %1066, %1058
  %1069 = fmul fast float %1066, %1059
  %1070 = fadd fast float %1067, %1049
  %1071 = fadd fast float %1068, %1050
  %1072 = fadd fast float %1069, %1051
  %1073 = fmul fast float %1046, %402
  %1074 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %408, float %1073)  ; FMad(a,b,c)
  %1075 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %414, float %1074)  ; FMad(a,b,c)
  %1076 = fadd fast float %1075, %420
  %1077 = fmul fast float %1046, %403
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %409, float %1077)  ; FMad(a,b,c)
  %1079 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %415, float %1078)  ; FMad(a,b,c)
  %1080 = fadd fast float %1079, %421
  %1081 = fmul fast float %1046, %405
  %1082 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %411, float %1081)  ; FMad(a,b,c)
  %1083 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %417, float %1082)  ; FMad(a,b,c)
  %1084 = fadd fast float %1083, %423
  %1085 = fmul fast float %1070, %402
  %1086 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %408, float %1085)  ; FMad(a,b,c)
  %1087 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %414, float %1086)  ; FMad(a,b,c)
  %1088 = fadd fast float %1087, %420
  %1089 = fmul fast float %1070, %403
  %1090 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %409, float %1089)  ; FMad(a,b,c)
  %1091 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %415, float %1090)  ; FMad(a,b,c)
  %1092 = fadd fast float %1091, %421
  %1093 = fmul fast float %1070, %405
  %1094 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %411, float %1093)  ; FMad(a,b,c)
  %1095 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %417, float %1094)  ; FMad(a,b,c)
  %1096 = fadd fast float %1095, %423
  %1097 = fdiv fast float 1.000000e+00, %1084
  %1098 = fmul fast float %1097, %1076
  %1099 = fmul fast float %1097, %1080
  %1100 = fdiv fast float 1.000000e+00, %1096
  %1101 = fmul fast float %1100, %1088
  %1102 = fmul fast float %1100, %1092
  %1103 = fsub fast float %1101, %1098
  %1104 = fsub fast float %1102, %1099
  %1105 = call float @dx.op.dot2.f32(i32 54, float %1103, float %1104, float %1103, float %1104)  ; Dot2(ax,ay,bx,by)
  %1106 = call float @dx.op.unary.f32(i32 25, float %1105)  ; Rsqrt(value)
  %1107 = fmul fast float %1103, %1106
  %1108 = fmul fast float %1104, %1106
  %1109 = fmul fast float %1103, %1103
  %1110 = fmul fast float %1104, %1104
  %1111 = fadd fast float %1109, %1110
  %1112 = call float @dx.op.unary.f32(i32 24, float %1111)  ; Sqrt(value)
  %1113 = fmul fast float %1112, 5.000000e-01
  %1114 = fcmp fast olt float %1113, %1023
  br i1 %1114, label %1115, label %1116, !dx.controlflow.hints !47

; <label>:1115                                    ; preds = %1024
  br label %1116

; <label>:1116                                    ; preds = %1115, %1024, %895
  %1117 = phi float [ %1023, %895 ], [ %1113, %1115 ], [ %1023, %1024 ]
  %1118 = phi float [ %1023, %895 ], [ %1023, %1115 ], [ %1113, %1024 ]
  %1119 = phi float [ %1017, %895 ], [ %1017, %1115 ], [ %1107, %1024 ]
  %1120 = phi float [ %1018, %895 ], [ %1018, %1115 ], [ %1108, %1024 ]
  %1121 = fsub fast float %1118, %1117
  %1122 = fmul fast float %1119, %1119
  %1123 = fmul fast float %1122, %1121
  %1124 = fadd fast float %1123, %1117
  %1125 = fmul fast float %1119, %1121
  %1126 = fmul fast float %1125, %1120
  %1127 = fmul fast float %1120, %1120
  %1128 = fmul fast float %1127, %1121
  %1129 = fadd fast float %1128, %1117
  %1130 = fmul fast float %1124, %481
  %1131 = call float @dx.op.tertiary.f32(i32 46, float %480, float %1126, float %1130)  ; FMad(a,b,c)
  %1132 = fmul fast float %1126, %481
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %480, float %1129, float %1132)  ; FMad(a,b,c)
  %1134 = fmul fast float %1124, %482
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %481, float %1126, float %1134)  ; FMad(a,b,c)
  %1136 = fmul fast float %1126, %482
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %481, float %1129, float %1136)  ; FMad(a,b,c)
  br label %1138

; <label>:1138                                    ; preds = %1138, %1116
  %1139 = phi float [ 0.000000e+00, %1116 ], [ %1165, %1138 ]
  %1140 = phi i32 [ 0, %1116 ], [ %1166, %1138 ]
  %1141 = mul i32 %1140, 2
  %1142 = add i32 0, %1141
  %1143 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1142
  %1144 = load float, float* %1143, align 4
  %1145 = mul i32 %1140, 2
  %1146 = add i32 1, %1145
  %1147 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1146
  %1148 = load float, float* %1147, align 4
  %1149 = fmul fast float %1144, %1131
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1148, float %1135, float %1149)  ; FMad(a,b,c)
  %1151 = fmul fast float %1144, %1133
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1148, float %1137, float %1151)  ; FMad(a,b,c)
  %1153 = fadd fast float %1150, %475
  %1154 = fadd fast float %1152, %476
  %1155 = fmul fast float %1153, %392
  %1156 = fmul fast float %1154, %392
  %1157 = call float @dx.op.binary.f32(i32 35, float %1155, float %388)  ; FMax(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1156, float %388)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 36, float %1157, float %389)  ; FMin(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1158, float %389)  ; FMin(a,b)
  %1161 = fadd fast float %1159, %386
  %1162 = fadd fast float %1160, %387
  %1163 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %19, float %1161, float %1162, float %861, float undef, i32 0, i32 0, i32 undef, float %864)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = fadd fast float %1164, %1139
  %1166 = add nuw nsw i32 %1140, 1
  %1167 = icmp eq i32 %1166, 8
  br i1 %1167, label %1168, label %1138

; <label>:1168                                    ; preds = %1138
  %1169 = fmul fast float %1165, 1.250000e-01
  br label %1170

; <label>:1170                                    ; preds = %1168, %878, %527
  %1171 = phi float [ %554, %527 ], [ %1169, %1168 ], [ 1.000000e+00, %878 ]
  %1172 = fadd fast float %1171, -1.000000e+00
  %1173 = fmul fast float %1172, %365
  %1174 = fadd fast float %1173, 1.000000e+00
  %1175 = fmul fast float %1174, %377
  br label %1176

; <label>:1176                                    ; preds = %1170, %344
  %1177 = phi float [ %1175, %1170 ], [ %377, %344 ]
  %1178 = call float @dx.op.binary.f32(i32 36, float %1177, float %1177)  ; FMin(a,b)
  %1179 = call float @dx.op.binary.f32(i32 36, float %1177, float %1178)  ; FMin(a,b)
  %1180 = fcmp fast ogt float %1179, 0x3F10000000000000
  %1181 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1180)  ; WaveAnyTrue(cond)
  %1182 = select i1 %1181, i32 %256, i32 0
  %1183 = or i32 %251, %1182
  %1184 = lshr i32 %197, 5
  %1185 = lshr i32 %198, 5
  %1186 = fcmp fast olt float %1177, 0x3F10000000000000
  %1187 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1186)  ; WaveAllTrue(cond)
  %1188 = fcmp fast ogt float %1177, 0x3FEFFF8000000000
  %1189 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1188)  ; WaveAllTrue(cond)
  %1190 = or i1 %1187, %1189
  %1191 = xor i1 %1190, true
  %1192 = lshr i32 %198, 1
  %1193 = and i32 %1192, 8
  %1194 = lshr i32 %197, 2
  %1195 = and i32 %1194, 4
  %1196 = or i32 %1195, %37
  %1197 = or i32 %1196, %1193
  %1198 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1198, label %1199, label %1238, !dx.controlflow.hints !50

; <label>:1199                                    ; preds = %1176
  %1200 = shl i32 1, %1197
  %1201 = select i1 %1189, i32 %1200, i32 0
  %1202 = shl i32 65536, %1197
  %1203 = select i1 %1187, i32 %1202, i32 0
  %1204 = or i32 %1201, %1203
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1208, label %1206, !dx.controlflow.hints !51

; <label>:1206                                    ; preds = %1199
  %1207 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1184, i32 %1185, i32 %254, i32 %1204)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1208

; <label>:1208                                    ; preds = %1206, %1199
  br i1 %1190, label %1238, label %1209

; <label>:1209                                    ; preds = %1208
  br label %1210

; <label>:1210                                    ; preds = %1235, %1209
  %1211 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1184, i32 %1185, i32 %254, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1212 = and i32 %1211, 3
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1214, label %1235, !dx.controlflow.hints !52

; <label>:1214                                    ; preds = %1210
  %1215 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.i32 %1216, 3
  %1218 = call i32 @dx.op.binary.i32(i32 40, i32 %1217, i32 %1215)  ; UMin(a,b)
  %1219 = extractvalue %dx.types.CBufRet.i32 %1216, 2
  %1220 = udiv i32 %1218, %1219
  %1221 = urem i32 %1218, %1219
  %1222 = extractvalue %dx.types.CBufRet.i32 %1216, 1
  %1223 = urem i32 %1221, %1222
  %1224 = udiv i32 %1221, %1222
  %1225 = shl i32 %1223, 6
  %1226 = and i32 %1225, 32704
  %1227 = shl i32 %1224, 15
  %1228 = and i32 %1227, 8355840
  %1229 = shl i32 %1220, 23
  %1230 = and i32 %1229, 2139095040
  %1231 = or i32 %1230, %1226
  %1232 = or i32 %1231, %1228
  %1233 = or i32 %1232, 3
  %1234 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1184, i32 %1185, i32 %254, i32 %1233)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1238

; <label>:1235                                    ; preds = %1210
  %1236 = icmp eq i32 %1212, 3
  br i1 %1236, label %1237, label %1210, !dx.controlflow.hints !53

; <label>:1237                                    ; preds = %1235
  br label %1238

; <label>:1238                                    ; preds = %1237, %1214, %1208, %1176
  %1239 = phi i32 [ 0, %1208 ], [ %1233, %1214 ], [ 0, %1176 ], [ %1211, %1237 ]
  %1240 = phi i1 [ false, %1208 ], [ %1191, %1214 ], [ %1191, %1176 ], [ %1191, %1237 ]
  br i1 %1240, label %1241, label %1263, !dx.controlflow.hints !54

; <label>:1241                                    ; preds = %1238
  %1242 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1239)  ; WaveReadLaneFirst(value)
  %1243 = lshr i32 %197, 1
  %1244 = and i32 %1243, 15
  %1245 = and i32 %1192, 15
  %1246 = and i32 %197, 1
  %1247 = shl i32 %198, 1
  %1248 = and i32 %1247, 2
  %1249 = or i32 %1248, %1246
  %1250 = lshr i32 %1242, 2
  %1251 = and i32 %1250, 8176
  %1252 = lshr i32 %1242, 11
  %1253 = and i32 %1252, 4080
  %1254 = or i32 %1251, %1244
  %1255 = or i32 %1253, %1245
  %1256 = lshr i32 %1242, 21
  %1257 = and i32 %1256, 1020
  %1258 = or i32 %1249, %1257
  %1259 = fmul fast float %1177, 2.550000e+02
  %1260 = fadd fast float %1259, %192
  %1261 = call float @dx.op.unary.f32(i32 27, float %1260)  ; Round_ni(value)
  %1262 = fmul fast float %1261, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1254, i32 %1255, i32 %1258, float %1262, float %1262, float %1262, float %1262, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1263

; <label>:1263                                    ; preds = %1241, %1238
  %1264 = icmp eq i32 %252, %256
  br i1 %1264, label %1265, label %250, !llvm.loop !55

; <label>:1265                                    ; preds = %1263
  br label %1266

; <label>:1266                                    ; preds = %1265, %222
  %1267 = phi i32 [ 0, %222 ], [ %1183, %1265 ]
  %1268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.i32 %1268, 0
  %1270 = call i32 @dx.op.tertiary.i32(i32 49, i32 %203, i32 %1269, i32 %223)  ; UMad(a,b,c)
  %1271 = shl i32 %1270, 2
  %1272 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1271, i32 undef, i32 undef, i32 %1267)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1273 = add i32 %223, 1
  %1274 = icmp ugt i32 %1273, %219
  br i1 %1274, label %1275, label %222

; <label>:1275                                    ; preds = %1266
  br label %1276

; <label>:1276                                    ; preds = %1275, %196, %58
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
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}

