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
; shader hash: f35c31074ea53e265d1d80c205948a40
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
%struct.SamplerComparisonState = type { i32 }
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
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %25 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %26 = alloca [4 x i32], align 4
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = shl i32 %28, 3
  %32 = mul i32 %31, %30
  %33 = add i32 %32, %23
  %34 = shl i32 %33, 2
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = lshr i32 %36, 28
  %38 = and i32 %37, 7
  %39 = lshr i32 %36, 14
  %40 = and i32 %39, 16383
  %41 = and i32 %36, 16383
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %54, label %43, !dx.controlflow.hints !37

; <label>:43                                      ; preds = %0
  %44 = shl nuw nsw i32 %40, 3
  %45 = shl nuw nsw i32 %41, 3
  %46 = or i32 %44, %24
  %47 = or i32 %45, %25
  %48 = add nsw i32 %38, -1
  %49 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 0, i32 %46, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = lshr i32 %50, 4
  %52 = and i32 %51, 15
  %53 = and i32 %50, 15
  br label %59

; <label>:54                                      ; preds = %0
  %55 = shl i32 %24, 1
  %56 = shl i32 %25, 1
  %57 = and i32 %37, 1
  %58 = or i32 %57, %55
  br label %59

; <label>:59                                      ; preds = %54, %43
  %60 = phi i32 [ %52, %43 ], [ %58, %54 ]
  %61 = phi i32 [ %53, %43 ], [ %56, %54 ]
  %62 = shl nuw nsw i32 %40, 4
  %63 = shl nuw nsw i32 %41, 4
  %64 = or i32 %60, %62
  %65 = or i32 %61, %63
  %66 = uitofp i32 %64 to float
  %67 = uitofp i32 %65 to float
  %68 = fadd fast float %66, 5.000000e-01
  %69 = fadd fast float %67, 5.000000e-01
  %70 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %64, i32 %65, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = fcmp fast olt float %71, -1.000000e+00
  %73 = fcmp fast ogt float %71, -1.000000e+00
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %76 = select i1 %73, float %75, float 1.000000e+00
  %77 = fadd fast float %71, 1.000000e+00
  %78 = fmul fast float %76, %77
  %79 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %83 = fmul fast float %68, 2.000000e+00
  %84 = fmul fast float %83, %81
  %85 = fmul fast float %69, 2.000000e+00
  %86 = fmul fast float %85, %82
  %87 = fsub fast float 1.000000e+00, %84
  %88 = fsub fast float 1.000000e+00, %86
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = select i1 %72, float %90, float %94
  %98 = select i1 %72, float %91, float %95
  %99 = select i1 %72, float %92, float %96
  %100 = fmul fast float %97, %87
  %101 = fmul fast float %98, %87
  %102 = fmul fast float %99, %87
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = select i1 %72, float %104, float %108
  %112 = select i1 %72, float %105, float %109
  %113 = select i1 %72, float %106, float %110
  %114 = fmul fast float %111, %88
  %115 = fmul fast float %112, %88
  %116 = fmul fast float %113, %88
  %117 = fadd fast float %114, %100
  %118 = fadd fast float %115, %101
  %119 = fadd fast float %116, %102
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = select i1 %72, float %121, float %125
  %129 = select i1 %72, float %122, float %126
  %130 = select i1 %72, float %123, float %127
  %131 = fadd fast float %117, %128
  %132 = fadd fast float %118, %129
  %133 = fadd fast float %119, %130
  %134 = fmul fast float %131, %79
  %135 = fmul fast float %132, %79
  %136 = fmul fast float %133, %79
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.i32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.i32 %137, 2
  %141 = extractvalue %dx.types.CBufRet.i32 %137, 3
  %142 = lshr i32 %64, 1
  %143 = lshr i32 %65, 1
  %144 = and i32 %60, 1
  %145 = shl i32 %61, 1
  %146 = and i32 %145, 2
  %147 = or i32 %146, %144
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %138, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %139, i32* %149, align 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %140, i32* %150, align 4
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %141, i32* %151, align 4
  %152 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %147
  %153 = load i32, i32* %152, align 4, !tbaa !38
  %154 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %17, i32 %153, i32 %142, i32 %143, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = lshr i32 %155, 8
  %157 = and i32 %155, 255
  %158 = and i32 %156, 255
  %159 = uitofp i32 %157 to float
  %160 = uitofp i32 %158 to float
  %161 = fmul fast float %159, 0x3F80101020000000
  %162 = fmul fast float %160, 0x3F80101020000000
  %163 = fadd fast float %161, -1.000000e+00
  %164 = fadd fast float %162, -1.000000e+00
  %165 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %166 = fsub fast float 1.000000e+00, %165
  %167 = call float @dx.op.unary.f32(i32 6, float %164)  ; FAbs(value)
  %168 = fsub fast float %166, %167
  %169 = fsub fast float -0.000000e+00, %168
  %170 = call float @dx.op.binary.f32(i32 35, float %169, float 0.000000e+00)  ; FMax(a,b)
  %171 = fcmp fast ogt float %163, 0.000000e+00
  %172 = fsub fast float -0.000000e+00, %170
  %173 = select i1 %171, float %172, float %170
  %174 = fadd fast float %173, %163
  %175 = fcmp fast ogt float %164, 0.000000e+00
  %176 = select i1 %175, float %172, float %170
  %177 = fadd fast float %176, %164
  %178 = call float @dx.op.dot3.f32(i32 55, float %174, float %177, float %168, float %174, float %177, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = call float @dx.op.unary.f32(i32 25, float %178)  ; Rsqrt(value)
  %180 = fmul fast float %174, %179
  %181 = fmul fast float %177, %179
  %182 = fmul fast float %179, %168
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %185 = fmul fast float %184, 0x3FE3C6EF40000000
  %186 = frem fast float %68, 2.560000e+02
  %187 = frem fast float %69, 2.560000e+02
  %188 = fptoui float %186 to i32
  %189 = fptoui float %187 to i32
  %190 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %188, i32 %189, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fadd fast float %191, %185
  %193 = call float @dx.op.unary.f32(i32 22, float %192)  ; Frc(value)
  %194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.i32 %194, 0
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %1279, label %197, !dx.controlflow.hints !42

; <label>:197                                     ; preds = %59
  %198 = fptoui float %68 to i32
  %199 = fptoui float %69 to i32
  %200 = lshr i32 %198, 4
  %201 = lshr i32 %199, 4
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 0
  %204 = call i32 @dx.op.tertiary.i32(i32 49, i32 %201, i32 %203, i32 %200)  ; UMad(a,b,c)
  %205 = add nsw i32 %195, -1
  %206 = call i32 @dx.op.binary.i32(i32 37, i32 %205, i32 0)  ; IMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %208 = fptoui float %207 to i32
  %209 = lshr i32 %208, 5
  %210 = call i32 @dx.op.binary.i32(i32 40, i32 %209, i32 8191)  ; UMin(a,b)
  %211 = shl i32 %210, 2
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = lshr i32 %213, 16
  %215 = and i32 %213, 65535
  %216 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %214, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %217 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %215, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %218 = lshr i32 %216, 5
  %219 = lshr i32 %217, 5
  %220 = call i32 @dx.op.binary.i32(i32 40, i32 %219, i32 %206)  ; UMin(a,b)
  %221 = icmp ugt i32 %218, %220
  br i1 %221, label %1279, label %222

; <label>:222                                     ; preds = %197
  br label %223

; <label>:223                                     ; preds = %1269, %222
  %224 = phi i32 [ %1276, %1269 ], [ %218, %222 ]
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 0
  %227 = call i32 @dx.op.tertiary.i32(i32 49, i32 %204, i32 %226, i32 %224)  ; UMad(a,b,c)
  %228 = shl i32 %227, 2
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = shl i32 %224, 5
  %232 = sub nsw i32 %214, %231
  %233 = call i32 @dx.op.binary.i32(i32 37, i32 %232, i32 0)  ; IMax(a,b)
  %234 = call i32 @dx.op.binary.i32(i32 38, i32 %233, i32 31)  ; IMin(a,b)
  %235 = sub nsw i32 1, %214
  %236 = add nsw i32 %235, %215
  %237 = call i32 @dx.op.binary.i32(i32 37, i32 %236, i32 0)  ; IMax(a,b)
  %238 = call i32 @dx.op.binary.i32(i32 38, i32 %237, i32 32)  ; IMin(a,b)
  %239 = and i32 %238, 31
  %240 = shl i32 -1, %239
  %241 = xor i32 %240, -1
  %242 = and i32 %234, 31
  %243 = shl i32 %241, %242
  %244 = icmp eq i32 %238, 32
  %245 = select i1 %244, i32 -1, i32 %243
  %246 = and i32 %245, %230
  %247 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %246, i8 1)  ; WaveActiveBit(value,op)
  %248 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %247)  ; WaveReadLaneFirst(value)
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %1269, label %250

; <label>:250                                     ; preds = %223
  br label %251

; <label>:251                                     ; preds = %1266, %250
  %252 = phi i32 [ %1184, %1266 ], [ 0, %250 ]
  %253 = phi i32 [ %258, %1266 ], [ %248, %250 ]
  %254 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %253)  ; FirstbitLo(value)
  %255 = add i32 %254, %231
  %256 = and i32 %254, 31
  %257 = shl i32 1, %256
  %258 = xor i32 %257, %253
  %259 = mul i32 %255, 112
  %260 = add i32 %259, 16
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = extractvalue %dx.types.ResRet.f32 %261, 1
  %264 = extractvalue %dx.types.ResRet.f32 %261, 2
  %265 = add i32 %259, 28
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = add i32 %259, 32
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = add i32 %259, 44
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = add i32 %259, 48
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  %282 = add i32 %259, 64
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = add i32 %259, 92
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = uitofp i32 %291 to float
  %293 = lshr i32 %290, 16
  %294 = uitofp i32 %293 to float
  %295 = and i32 %267, 65535
  %296 = and i32 %267, 50331648
  %297 = icmp eq i32 %296, 33554432
  %298 = call float @dx.op.dot3.f32(i32 55, float %270, float %271, float %272, float %270, float %271, float %272)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = fsub fast float %134, %278
  %300 = fsub fast float %135, %279
  %301 = fsub fast float %136, %280
  %302 = call float @dx.op.dot3.f32(i32 55, float %299, float %300, float %301, float %270, float %271, float %272)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fdiv fast float %302, %298
  %304 = call float @dx.op.binary.f32(i32 35, float %303, float -1.000000e+00)  ; FMax(a,b)
  %305 = call float @dx.op.binary.f32(i32 36, float %304, float 1.000000e+00)  ; FMin(a,b)
  %306 = fmul fast float %305, %270
  %307 = fmul fast float %305, %271
  %308 = fmul fast float %305, %272
  %309 = fadd fast float %306, %278
  %310 = fadd fast float %307, %279
  %311 = fadd fast float %308, %280
  %312 = fsub fast float %309, %134
  %313 = fsub fast float %310, %135
  %314 = fsub fast float %311, %136
  %315 = call float @dx.op.dot3.f32(i32 55, float %312, float %313, float %314, float %312, float %313, float %314)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %317 = fdiv fast float 1.000000e+00, %316
  %318 = fmul fast float %312, %317
  %319 = fmul fast float %313, %317
  %320 = fmul fast float %314, %317
  br i1 %297, label %321, label %345, !dx.controlflow.hints !43

; <label>:321                                     ; preds = %251
  %322 = fmul fast float %286, %262
  %323 = fmul fast float %286, %263
  %324 = fmul fast float %286, %264
  %325 = fsub fast float %322, %134
  %326 = fadd fast float %325, %309
  %327 = fsub fast float %323, %135
  %328 = fadd fast float %327, %310
  %329 = fsub fast float %324, %136
  %330 = fadd fast float %329, %311
  %331 = call float @dx.op.dot3.f32(i32 55, float %326, float %328, float %330, float %326, float %328, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %332 = call float @dx.op.unary.f32(i32 25, float %331)  ; Rsqrt(value)
  %333 = fmul fast float %332, %326
  %334 = fmul fast float %332, %328
  %335 = fmul fast float %332, %330
  %336 = fsub fast float %134, %309
  %337 = fsub fast float %135, %310
  %338 = fsub fast float %136, %311
  %339 = fsub fast float -0.000000e+00, %336
  %340 = fsub fast float -0.000000e+00, %337
  %341 = fsub fast float -0.000000e+00, %338
  %342 = call float @dx.op.dot3.f32(i32 55, float %339, float %340, float %341, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %343 = fcmp fast ogt float %342, 0.000000e+00
  %344 = uitofp i1 %343 to float
  br label %345

; <label>:345                                     ; preds = %321, %251
  %346 = phi float [ %344, %321 ], [ 1.000000e+00, %251 ]
  %347 = phi float [ %333, %321 ], [ %318, %251 ]
  %348 = phi float [ %334, %321 ], [ %319, %251 ]
  %349 = phi float [ %335, %321 ], [ %320, %251 ]
  %350 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %351 = fmul fast float %350, %350
  %352 = call float @dx.op.unary.f32(i32 7, float %351)  ; Saturate(value)
  %353 = fsub fast float 1.000000e+00, %352
  %354 = fmul fast float %353, 5.000000e-01
  %355 = fcmp fast ogt float %350, 0.000000e+00
  %356 = fsub fast float 1.000000e+00, %354
  %357 = select i1 %355, float %354, float %356
  %358 = fmul fast float %357, %294
  %359 = fadd fast float %358, %292
  %360 = fmul fast float %359, 0x3EF0001000000000
  %361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %360, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = fmul fast float %350, %284
  %364 = fadd fast float %363, %285
  %365 = call float @dx.op.unary.f32(i32 7, float %364)  ; Saturate(value)
  %366 = select i1 %297, float 1.000000e+00, float %365
  %367 = select i1 %297, float %365, float 1.000000e+00
  %368 = fmul fast float %316, %281
  %369 = fsub fast float 1.000000e+00, %368
  %370 = fmul fast float %369, %287
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = fmul fast float %371, %367
  %373 = fmul fast float %372, 2.000000e+00
  %374 = fsub fast float 3.000000e+00, %373
  %375 = fmul fast float %362, %346
  %376 = fmul fast float %372, %372
  %377 = fmul fast float %376, %375
  %378 = fmul fast float %377, %374
  %379 = icmp ne i32 %295, 255
  %380 = call float @dx.op.binary.f32(i32 36, float %378, float %378)  ; FMin(a,b)
  %381 = call float @dx.op.binary.f32(i32 36, float %378, float %380)  ; FMin(a,b)
  %382 = fcmp fast ogt float %381, 0.000000e+00
  %383 = and i1 %379, %382
  br i1 %383, label %384, label %1177, !dx.controlflow.hints !44

; <label>:384                                     ; preds = %345
  %385 = mul nuw nsw i32 %295, 176
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = extractvalue %dx.types.ResRet.f32 %386, 2
  %390 = extractvalue %dx.types.ResRet.f32 %386, 3
  %391 = add nuw nsw i32 %385, 16
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = add nuw nsw i32 %385, 32
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = extractvalue %dx.types.ResRet.f32 %396, 3
  %401 = add nuw nsw i32 %385, 48
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add nuw nsw i32 %385, 64
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = add nuw nsw i32 %385, 80
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = add nuw nsw i32 %385, 96
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = extractvalue %dx.types.ResRet.f32 %420, 3
  %425 = add nuw nsw i32 %385, 112
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = add nuw nsw i32 %385, 128
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = add nuw nsw i32 %385, 144
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = add nuw nsw i32 %385, 160
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  %449 = bitcast float %394 to i32
  %450 = bitcast float %400 to i32
  %451 = and i32 %450, 1
  %452 = icmp ne i32 %451, 0
  %453 = and i32 %450, 2
  %454 = fmul fast float %180, %399
  %455 = fmul fast float %181, %399
  %456 = fmul fast float %182, %399
  %457 = fadd fast float %454, %134
  %458 = fadd fast float %455, %135
  %459 = fadd fast float %456, %136
  %460 = fmul fast float %457, %403
  %461 = call float @dx.op.tertiary.f32(i32 46, float %458, float %409, float %460)  ; FMad(a,b,c)
  %462 = call float @dx.op.tertiary.f32(i32 46, float %459, float %415, float %461)  ; FMad(a,b,c)
  %463 = fadd fast float %462, %421
  %464 = fmul fast float %457, %404
  %465 = call float @dx.op.tertiary.f32(i32 46, float %458, float %410, float %464)  ; FMad(a,b,c)
  %466 = call float @dx.op.tertiary.f32(i32 46, float %459, float %416, float %465)  ; FMad(a,b,c)
  %467 = fadd fast float %466, %422
  %468 = fmul fast float %457, %405
  %469 = call float @dx.op.tertiary.f32(i32 46, float %458, float %411, float %468)  ; FMad(a,b,c)
  %470 = call float @dx.op.tertiary.f32(i32 46, float %459, float %417, float %469)  ; FMad(a,b,c)
  %471 = fadd fast float %470, %423
  %472 = fmul fast float %457, %406
  %473 = call float @dx.op.tertiary.f32(i32 46, float %458, float %412, float %472)  ; FMad(a,b,c)
  %474 = call float @dx.op.tertiary.f32(i32 46, float %459, float %418, float %473)  ; FMad(a,b,c)
  %475 = fadd fast float %474, %424
  %476 = fdiv fast float %463, %475
  %477 = fdiv fast float %467, %475
  %478 = fdiv fast float %471, %475
  %479 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %478)  ; FMax(a,b)
  %480 = fmul fast float %193, 0x401921FB60000000
  %481 = call float @dx.op.unary.f32(i32 13, float %480)  ; Sin(value)
  %482 = call float @dx.op.unary.f32(i32 12, float %480)  ; Cos(value)
  %483 = fsub fast float -0.000000e+00, %481
  %484 = icmp eq i32 %453, 0
  br i1 %484, label %485, label %556, !dx.controlflow.hints !45

; <label>:485                                     ; preds = %384
  %486 = fmul fast float %482, %398
  %487 = call float @dx.op.tertiary.f32(i32 46, float %481, float %398, float 0.000000e+00)  ; FMad(a,b,c)
  %488 = fmul fast float %398, %483
  %489 = call float @dx.op.tertiary.f32(i32 46, float %482, float %398, float 0.000000e+00)  ; FMad(a,b,c)
  br label %490

; <label>:490                                     ; preds = %490, %485
  %491 = phi float [ 0.000000e+00, %485 ], [ %523, %490 ]
  %492 = phi float [ 0.000000e+00, %485 ], [ %525, %490 ]
  %493 = phi i32 [ 0, %485 ], [ %526, %490 ]
  %494 = mul i32 %493, 2
  %495 = add i32 0, %494
  %496 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %495
  %497 = load float, float* %496, align 4
  %498 = mul i32 %493, 2
  %499 = add i32 1, %498
  %500 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %499
  %501 = load float, float* %500, align 4
  %502 = fmul fast float %486, %497
  %503 = call float @dx.op.tertiary.f32(i32 46, float %501, float %488, float %502)  ; FMad(a,b,c)
  %504 = fmul fast float %497, %487
  %505 = call float @dx.op.tertiary.f32(i32 46, float %501, float %489, float %504)  ; FMad(a,b,c)
  %506 = fadd fast float %503, %476
  %507 = fadd fast float %505, %477
  %508 = fmul fast float %506, %393
  %509 = fmul fast float %507, %393
  %510 = call float @dx.op.binary.f32(i32 35, float %508, float %389)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 35, float %509, float %389)  ; FMax(a,b)
  %512 = call float @dx.op.binary.f32(i32 36, float %510, float %390)  ; FMin(a,b)
  %513 = call float @dx.op.binary.f32(i32 36, float %511, float %390)  ; FMin(a,b)
  %514 = fadd fast float %512, %387
  %515 = fadd fast float %513, %388
  %516 = uitofp i32 %449 to float
  %517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %514, float %515, float %516, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = fsub fast float %518, %479
  %520 = fsub fast float %519, %397
  %521 = fcmp fast ogt float %520, 0.000000e+00
  %522 = select i1 %521, float 1.000000e+00, float 0.000000e+00
  %523 = fadd fast float %522, %491
  %524 = select i1 %521, float %520, float 0.000000e+00
  %525 = fadd fast float %524, %492
  %526 = add nuw nsw i32 %493, 1
  %527 = icmp eq i32 %526, 8
  br i1 %527, label %528, label %490

; <label>:528                                     ; preds = %490
  %529 = fdiv fast float 1.000000e+00, %523
  %530 = fmul fast float %529, %525
  %531 = fdiv fast float 1.000000e+00, %479
  %532 = fmul fast float %530, %531
  %533 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  %534 = call float @dx.op.binary.f32(i32 35, float %533, float 0.000000e+00)  ; FMax(a,b)
  %535 = fmul fast float %523, 1.250000e-01
  %536 = call float @dx.op.unary.f32(i32 7, float %535)  ; Saturate(value)
  %537 = fmul fast float %536, 2.000000e+00
  %538 = fadd fast float %537, -1.000000e+00
  %539 = fcmp fast ogt float %538, 0.000000e+00
  %540 = fcmp fast olt float %538, 0.000000e+00
  %541 = zext i1 %539 to i32
  %542 = zext i1 %540 to i32
  %543 = sub nsw i32 %541, %542
  %544 = sitofp i32 %543 to float
  %545 = fmul fast float %544, %538
  %546 = fsub fast float 1.000000e+00, %545
  %547 = fmul fast float %546, %546
  %548 = fmul fast float %547, %546
  %549 = fsub fast float %546, %548
  %550 = fmul fast float %549, %534
  %551 = fsub fast float 1.000000e+00, %548
  %552 = fsub fast float %551, %550
  %553 = fmul fast float %544, 5.000000e-01
  %554 = fmul fast float %553, %552
  %555 = fsub fast float 5.000000e-01, %554
  br label %1171

; <label>:556                                     ; preds = %384
  %557 = fsub fast float 1.000000e+00, %479
  %558 = fmul fast float %557, 5.000000e-01
  %559 = fadd fast float %558, %479
  %560 = fsub fast float %457, %278
  %561 = fsub fast float %458, %279
  %562 = fsub fast float %459, %280
  %563 = call float @dx.op.dot3.f32(i32 55, float %560, float %561, float %562, float %270, float %271, float %272)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = fdiv fast float %563, %298
  %565 = call float @dx.op.binary.f32(i32 35, float %564, float -1.000000e+00)  ; FMax(a,b)
  %566 = call float @dx.op.binary.f32(i32 36, float %565, float 1.000000e+00)  ; FMin(a,b)
  %567 = fmul fast float %566, %270
  %568 = fmul fast float %566, %271
  %569 = fmul fast float %566, %272
  %570 = fsub fast float %560, %567
  %571 = fsub fast float %561, %568
  %572 = fsub fast float %562, %569
  %573 = call float @dx.op.dot3.f32(i32 55, float %570, float %571, float %572, float %570, float %571, float %572)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = call float @dx.op.unary.f32(i32 25, float %573)  ; Rsqrt(value)
  %575 = fmul fast float %570, %574
  %576 = fmul fast float %571, %574
  %577 = fmul fast float %572, %574
  %578 = call float @dx.op.unary.f32(i32 25, float %298)  ; Rsqrt(value)
  %579 = fmul fast float %578, %270
  %580 = fmul fast float %578, %271
  %581 = fmul fast float %578, %272
  br i1 %452, label %582, label %586, !dx.controlflow.hints !46

; <label>:582                                     ; preds = %556
  %583 = fcmp fast olt float %576, 0x3FE6666660000000
  %584 = select i1 %583, float 1.000000e+00, float 0.000000e+00
  %585 = select i1 %583, float 0.000000e+00, float 1.000000e+00
  br label %586

; <label>:586                                     ; preds = %582, %556
  %587 = phi float [ 0.000000e+00, %582 ], [ %579, %556 ]
  %588 = phi float [ %584, %582 ], [ %580, %556 ]
  %589 = phi float [ %585, %582 ], [ %581, %556 ]
  %590 = fmul fast float %588, %577
  %591 = fmul fast float %589, %576
  %592 = fsub fast float %590, %591
  %593 = fmul fast float %589, %575
  %594 = fmul fast float %587, %577
  %595 = fsub fast float %593, %594
  %596 = fmul fast float %587, %576
  %597 = fmul fast float %588, %575
  %598 = fsub fast float %596, %597
  %599 = call float @dx.op.dot3.f32(i32 55, float %592, float %595, float %598, float %592, float %595, float %598)  ; Dot3(ax,ay,az,bx,by,bz)
  %600 = call float @dx.op.unary.f32(i32 25, float %599)  ; Rsqrt(value)
  %601 = fmul fast float %600, %275
  %602 = fmul fast float %601, %592
  %603 = fmul fast float %601, %595
  %604 = fmul fast float %598, %275
  %605 = fmul fast float %604, %600
  %606 = fmul fast float %476, %427
  %607 = call float @dx.op.tertiary.f32(i32 46, float %477, float %433, float %606)  ; FMad(a,b,c)
  %608 = call float @dx.op.tertiary.f32(i32 46, float %559, float %439, float %607)  ; FMad(a,b,c)
  %609 = fadd fast float %608, %445
  %610 = fmul fast float %476, %428
  %611 = call float @dx.op.tertiary.f32(i32 46, float %477, float %434, float %610)  ; FMad(a,b,c)
  %612 = call float @dx.op.tertiary.f32(i32 46, float %559, float %440, float %611)  ; FMad(a,b,c)
  %613 = fadd fast float %612, %446
  %614 = fmul fast float %476, %429
  %615 = call float @dx.op.tertiary.f32(i32 46, float %477, float %435, float %614)  ; FMad(a,b,c)
  %616 = call float @dx.op.tertiary.f32(i32 46, float %559, float %441, float %615)  ; FMad(a,b,c)
  %617 = fadd fast float %616, %447
  %618 = fmul fast float %476, %430
  %619 = call float @dx.op.tertiary.f32(i32 46, float %477, float %436, float %618)  ; FMad(a,b,c)
  %620 = call float @dx.op.tertiary.f32(i32 46, float %559, float %442, float %619)  ; FMad(a,b,c)
  %621 = fadd fast float %620, %448
  %622 = fdiv fast float 1.000000e+00, %621
  %623 = fmul fast float %622, %609
  %624 = fmul fast float %622, %613
  %625 = fmul fast float %622, %617
  %626 = fsub fast float -0.000000e+00, %575
  %627 = fsub fast float -0.000000e+00, %576
  %628 = fsub fast float -0.000000e+00, %577
  %629 = fsub fast float %278, %602
  %630 = fsub fast float %279, %603
  %631 = fsub fast float %280, %605
  %632 = fsub fast float %623, %629
  %633 = fsub fast float %624, %630
  %634 = fsub fast float %625, %631
  %635 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %632, float %633, float %634)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = call float @dx.op.unary.f32(i32 25, float %635)  ; Rsqrt(value)
  %637 = fmul fast float %632, %636
  %638 = fmul fast float %633, %636
  %639 = fmul fast float %634, %636
  %640 = fsub fast float %457, %629
  %641 = fsub fast float %458, %630
  %642 = fsub fast float %459, %631
  %643 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %640, float %641, float %642)  ; Dot3(ax,ay,az,bx,by,bz)
  %644 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %637, float %638, float %639)  ; Dot3(ax,ay,az,bx,by,bz)
  %645 = fdiv fast float 1.000000e+00, %644
  %646 = fmul fast float %645, %643
  %647 = fmul fast float %646, %637
  %648 = fmul fast float %646, %638
  %649 = fmul fast float %646, %639
  %650 = fadd fast float %647, %629
  %651 = fadd fast float %648, %630
  %652 = fadd fast float %649, %631
  %653 = fadd fast float %602, %278
  %654 = fadd fast float %603, %279
  %655 = fadd fast float %605, %280
  %656 = fsub fast float %623, %653
  %657 = fsub fast float %624, %654
  %658 = fsub fast float %625, %655
  %659 = call float @dx.op.dot3.f32(i32 55, float %656, float %657, float %658, float %656, float %657, float %658)  ; Dot3(ax,ay,az,bx,by,bz)
  %660 = call float @dx.op.unary.f32(i32 25, float %659)  ; Rsqrt(value)
  %661 = fmul fast float %660, %656
  %662 = fmul fast float %660, %657
  %663 = fmul fast float %660, %658
  %664 = fsub fast float %457, %653
  %665 = fsub fast float %458, %654
  %666 = fsub fast float %459, %655
  %667 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %664, float %665, float %666)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %661, float %662, float %663)  ; Dot3(ax,ay,az,bx,by,bz)
  %669 = fdiv fast float 1.000000e+00, %668
  %670 = fmul fast float %669, %667
  %671 = fmul fast float %670, %661
  %672 = fmul fast float %670, %662
  %673 = fmul fast float %670, %663
  %674 = fadd fast float %671, %653
  %675 = fadd fast float %672, %654
  %676 = fadd fast float %673, %655
  %677 = fmul fast float %650, %403
  %678 = call float @dx.op.tertiary.f32(i32 46, float %651, float %409, float %677)  ; FMad(a,b,c)
  %679 = call float @dx.op.tertiary.f32(i32 46, float %652, float %415, float %678)  ; FMad(a,b,c)
  %680 = fadd fast float %679, %421
  %681 = fmul fast float %650, %404
  %682 = call float @dx.op.tertiary.f32(i32 46, float %651, float %410, float %681)  ; FMad(a,b,c)
  %683 = call float @dx.op.tertiary.f32(i32 46, float %652, float %416, float %682)  ; FMad(a,b,c)
  %684 = fadd fast float %683, %422
  %685 = fmul fast float %650, %406
  %686 = call float @dx.op.tertiary.f32(i32 46, float %651, float %412, float %685)  ; FMad(a,b,c)
  %687 = call float @dx.op.tertiary.f32(i32 46, float %652, float %418, float %686)  ; FMad(a,b,c)
  %688 = fadd fast float %687, %424
  %689 = fmul fast float %674, %403
  %690 = call float @dx.op.tertiary.f32(i32 46, float %675, float %409, float %689)  ; FMad(a,b,c)
  %691 = call float @dx.op.tertiary.f32(i32 46, float %676, float %415, float %690)  ; FMad(a,b,c)
  %692 = fadd fast float %691, %421
  %693 = fmul fast float %674, %404
  %694 = call float @dx.op.tertiary.f32(i32 46, float %675, float %410, float %693)  ; FMad(a,b,c)
  %695 = call float @dx.op.tertiary.f32(i32 46, float %676, float %416, float %694)  ; FMad(a,b,c)
  %696 = fadd fast float %695, %422
  %697 = fmul fast float %674, %406
  %698 = call float @dx.op.tertiary.f32(i32 46, float %675, float %412, float %697)  ; FMad(a,b,c)
  %699 = call float @dx.op.tertiary.f32(i32 46, float %676, float %418, float %698)  ; FMad(a,b,c)
  %700 = fadd fast float %699, %424
  %701 = fdiv fast float 1.000000e+00, %688
  %702 = fmul fast float %701, %680
  %703 = fmul fast float %701, %684
  %704 = fdiv fast float 1.000000e+00, %700
  %705 = fmul fast float %704, %692
  %706 = fmul fast float %704, %696
  %707 = fsub fast float %705, %702
  %708 = fsub fast float %706, %703
  %709 = call float @dx.op.dot2.f32(i32 54, float %707, float %708, float %707, float %708)  ; Dot2(ax,ay,bx,by)
  %710 = call float @dx.op.unary.f32(i32 25, float %709)  ; Rsqrt(value)
  %711 = fmul fast float %707, %710
  %712 = fmul fast float %708, %710
  %713 = fmul fast float %707, %707
  %714 = fmul fast float %708, %708
  %715 = fadd fast float %713, %714
  %716 = call float @dx.op.unary.f32(i32 24, float %715)  ; Sqrt(value)
  %717 = fmul fast float %716, 5.000000e-01
  br i1 %452, label %810, label %718, !dx.controlflow.hints !47

; <label>:718                                     ; preds = %586
  %719 = fsub fast float %278, %270
  %720 = fsub fast float %279, %271
  %721 = fsub fast float %280, %272
  %722 = fsub fast float %623, %719
  %723 = fsub fast float %624, %720
  %724 = fsub fast float %625, %721
  %725 = call float @dx.op.dot3.f32(i32 55, float %722, float %723, float %724, float %722, float %723, float %724)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = call float @dx.op.unary.f32(i32 25, float %725)  ; Rsqrt(value)
  %727 = fmul fast float %726, %722
  %728 = fmul fast float %726, %723
  %729 = fmul fast float %726, %724
  %730 = fsub fast float %457, %719
  %731 = fsub fast float %458, %720
  %732 = fsub fast float %459, %721
  %733 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %730, float %731, float %732)  ; Dot3(ax,ay,az,bx,by,bz)
  %734 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %727, float %728, float %729)  ; Dot3(ax,ay,az,bx,by,bz)
  %735 = fdiv fast float 1.000000e+00, %734
  %736 = fmul fast float %735, %733
  %737 = fmul fast float %736, %727
  %738 = fmul fast float %736, %728
  %739 = fmul fast float %736, %729
  %740 = fadd fast float %737, %719
  %741 = fadd fast float %738, %720
  %742 = fadd fast float %739, %721
  %743 = fadd fast float %278, %270
  %744 = fadd fast float %279, %271
  %745 = fadd fast float %280, %272
  %746 = fsub fast float %623, %743
  %747 = fsub fast float %624, %744
  %748 = fsub fast float %625, %745
  %749 = call float @dx.op.dot3.f32(i32 55, float %746, float %747, float %748, float %746, float %747, float %748)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = call float @dx.op.unary.f32(i32 25, float %749)  ; Rsqrt(value)
  %751 = fmul fast float %750, %746
  %752 = fmul fast float %750, %747
  %753 = fmul fast float %750, %748
  %754 = fsub fast float %457, %743
  %755 = fsub fast float %458, %744
  %756 = fsub fast float %459, %745
  %757 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %754, float %755, float %756)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %751, float %752, float %753)  ; Dot3(ax,ay,az,bx,by,bz)
  %759 = fdiv fast float 1.000000e+00, %758
  %760 = fmul fast float %759, %757
  %761 = fmul fast float %760, %751
  %762 = fmul fast float %760, %752
  %763 = fmul fast float %760, %753
  %764 = fadd fast float %761, %743
  %765 = fadd fast float %762, %744
  %766 = fadd fast float %763, %745
  %767 = fmul fast float %740, %403
  %768 = call float @dx.op.tertiary.f32(i32 46, float %741, float %409, float %767)  ; FMad(a,b,c)
  %769 = call float @dx.op.tertiary.f32(i32 46, float %742, float %415, float %768)  ; FMad(a,b,c)
  %770 = fadd fast float %769, %421
  %771 = fmul fast float %740, %404
  %772 = call float @dx.op.tertiary.f32(i32 46, float %741, float %410, float %771)  ; FMad(a,b,c)
  %773 = call float @dx.op.tertiary.f32(i32 46, float %742, float %416, float %772)  ; FMad(a,b,c)
  %774 = fadd fast float %773, %422
  %775 = fmul fast float %740, %406
  %776 = call float @dx.op.tertiary.f32(i32 46, float %741, float %412, float %775)  ; FMad(a,b,c)
  %777 = call float @dx.op.tertiary.f32(i32 46, float %742, float %418, float %776)  ; FMad(a,b,c)
  %778 = fadd fast float %777, %424
  %779 = fmul fast float %764, %403
  %780 = call float @dx.op.tertiary.f32(i32 46, float %765, float %409, float %779)  ; FMad(a,b,c)
  %781 = call float @dx.op.tertiary.f32(i32 46, float %766, float %415, float %780)  ; FMad(a,b,c)
  %782 = fadd fast float %781, %421
  %783 = fmul fast float %764, %404
  %784 = call float @dx.op.tertiary.f32(i32 46, float %765, float %410, float %783)  ; FMad(a,b,c)
  %785 = call float @dx.op.tertiary.f32(i32 46, float %766, float %416, float %784)  ; FMad(a,b,c)
  %786 = fadd fast float %785, %422
  %787 = fmul fast float %764, %406
  %788 = call float @dx.op.tertiary.f32(i32 46, float %765, float %412, float %787)  ; FMad(a,b,c)
  %789 = call float @dx.op.tertiary.f32(i32 46, float %766, float %418, float %788)  ; FMad(a,b,c)
  %790 = fadd fast float %789, %424
  %791 = fdiv fast float 1.000000e+00, %778
  %792 = fmul fast float %791, %770
  %793 = fmul fast float %791, %774
  %794 = fdiv fast float 1.000000e+00, %790
  %795 = fmul fast float %794, %782
  %796 = fmul fast float %794, %786
  %797 = fsub fast float %795, %792
  %798 = fsub fast float %796, %793
  %799 = call float @dx.op.dot2.f32(i32 54, float %797, float %798, float %797, float %798)  ; Dot2(ax,ay,bx,by)
  %800 = call float @dx.op.unary.f32(i32 25, float %799)  ; Rsqrt(value)
  %801 = fmul fast float %797, %800
  %802 = fmul fast float %798, %800
  %803 = fmul fast float %797, %797
  %804 = fmul fast float %798, %798
  %805 = fadd fast float %803, %804
  %806 = call float @dx.op.unary.f32(i32 24, float %805)  ; Sqrt(value)
  %807 = fmul fast float %806, 5.000000e-01
  %808 = fcmp fast olt float %807, %717
  br i1 %808, label %809, label %810, !dx.controlflow.hints !48

; <label>:809                                     ; preds = %718
  br label %810

; <label>:810                                     ; preds = %809, %718, %586
  %811 = phi float [ %717, %586 ], [ %807, %809 ], [ %717, %718 ]
  %812 = phi float [ %717, %586 ], [ %717, %809 ], [ %807, %718 ]
  %813 = phi float [ %711, %586 ], [ %711, %809 ], [ %801, %718 ]
  %814 = phi float [ %712, %586 ], [ %712, %809 ], [ %802, %718 ]
  %815 = fmul fast float %811, %398
  %816 = fdiv fast float %815, %812
  %817 = fsub fast float %398, %816
  %818 = fmul fast float %813, %813
  %819 = fmul fast float %818, %817
  %820 = fadd fast float %819, %816
  %821 = fmul fast float %814, %813
  %822 = fmul fast float %821, %817
  %823 = fmul fast float %814, %814
  %824 = fmul fast float %823, %817
  %825 = fadd fast float %824, %816
  %826 = fmul fast float %820, %482
  %827 = call float @dx.op.tertiary.f32(i32 46, float %481, float %822, float %826)  ; FMad(a,b,c)
  %828 = fmul fast float %822, %482
  %829 = call float @dx.op.tertiary.f32(i32 46, float %481, float %825, float %828)  ; FMad(a,b,c)
  %830 = fmul fast float %820, %483
  %831 = call float @dx.op.tertiary.f32(i32 46, float %482, float %822, float %830)  ; FMad(a,b,c)
  %832 = fmul fast float %822, %483
  %833 = call float @dx.op.tertiary.f32(i32 46, float %482, float %825, float %832)  ; FMad(a,b,c)
  br label %834

; <label>:834                                     ; preds = %872, %810
  %835 = phi float [ 0.000000e+00, %810 ], [ %873, %872 ]
  %836 = phi float [ 0.000000e+00, %810 ], [ %874, %872 ]
  %837 = phi float [ 0.000000e+00, %810 ], [ %875, %872 ]
  %838 = phi float [ 0.000000e+00, %810 ], [ %876, %872 ]
  %839 = phi i32 [ 0, %810 ], [ %877, %872 ]
  %840 = mul i32 %839, 2
  %841 = add i32 0, %840
  %842 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %841
  %843 = load float, float* %842, align 4
  %844 = mul i32 %839, 2
  %845 = add i32 1, %844
  %846 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %845
  %847 = load float, float* %846, align 4
  %848 = fmul fast float %843, %827
  %849 = call float @dx.op.tertiary.f32(i32 46, float %847, float %831, float %848)  ; FMad(a,b,c)
  %850 = fmul fast float %843, %829
  %851 = call float @dx.op.tertiary.f32(i32 46, float %847, float %833, float %850)  ; FMad(a,b,c)
  %852 = fadd fast float %849, %476
  %853 = fadd fast float %851, %477
  %854 = fmul fast float %852, %393
  %855 = fmul fast float %853, %393
  %856 = call float @dx.op.binary.f32(i32 35, float %854, float %389)  ; FMax(a,b)
  %857 = call float @dx.op.binary.f32(i32 35, float %855, float %389)  ; FMax(a,b)
  %858 = call float @dx.op.binary.f32(i32 36, float %856, float %390)  ; FMin(a,b)
  %859 = call float @dx.op.binary.f32(i32 36, float %857, float %390)  ; FMin(a,b)
  %860 = fadd fast float %858, %387
  %861 = fadd fast float %859, %388
  %862 = uitofp i32 %449 to float
  %863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %860, float %861, float %862, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = fadd fast float %479, %397
  %866 = fcmp fast olt float %865, %864
  br i1 %866, label %867, label %872, !dx.controlflow.hints !49

; <label>:867                                     ; preds = %834
  %868 = fadd fast float %864, %837
  %869 = fadd fast float %849, %835
  %870 = fadd fast float %851, %836
  %871 = fadd fast float %838, 1.000000e+00
  br label %872

; <label>:872                                     ; preds = %867, %834
  %873 = phi float [ %869, %867 ], [ %835, %834 ]
  %874 = phi float [ %870, %867 ], [ %836, %834 ]
  %875 = phi float [ %868, %867 ], [ %837, %834 ]
  %876 = phi float [ %871, %867 ], [ %838, %834 ]
  %877 = add nuw nsw i32 %839, 1
  %878 = icmp eq i32 %877, 8
  br i1 %878, label %879, label %834

; <label>:879                                     ; preds = %872
  %880 = fdiv fast float 1.000000e+00, %876
  %881 = fcmp fast oeq float %876, 0.000000e+00
  %882 = fmul fast float %880, %875
  %883 = select i1 %881, float -1.000000e+00, float %882
  %884 = fcmp fast olt float %883, 0.000000e+00
  br i1 %884, label %1171, label %885, !dx.controlflow.hints !50

; <label>:885                                     ; preds = %879
  %886 = fmul fast float %880, %874
  %887 = select i1 %881, float 0.000000e+00, float %886
  %888 = fmul fast float %880, %873
  %889 = select i1 %881, float 0.000000e+00, float %888
  %890 = fadd fast float %889, %476
  %891 = fadd fast float %887, %477
  br i1 %452, label %892, label %896, !dx.controlflow.hints !46

; <label>:892                                     ; preds = %885
  %893 = fcmp fast olt float %576, 0x3FE6666660000000
  %894 = select i1 %893, float 1.000000e+00, float 0.000000e+00
  %895 = select i1 %893, float 0.000000e+00, float 1.000000e+00
  br label %896

; <label>:896                                     ; preds = %892, %885
  %897 = phi float [ 0.000000e+00, %892 ], [ %579, %885 ]
  %898 = phi float [ %894, %892 ], [ %580, %885 ]
  %899 = phi float [ %895, %892 ], [ %581, %885 ]
  %900 = fmul fast float %898, %577
  %901 = fmul fast float %899, %576
  %902 = fsub fast float %900, %901
  %903 = fmul fast float %899, %575
  %904 = fmul fast float %897, %577
  %905 = fsub fast float %903, %904
  %906 = fmul fast float %897, %576
  %907 = fmul fast float %898, %575
  %908 = fsub fast float %906, %907
  %909 = call float @dx.op.dot3.f32(i32 55, float %902, float %905, float %908, float %902, float %905, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = call float @dx.op.unary.f32(i32 25, float %909)  ; Rsqrt(value)
  %911 = fmul fast float %910, %275
  %912 = fmul fast float %911, %902
  %913 = fmul fast float %911, %905
  %914 = fmul fast float %908, %275
  %915 = fmul fast float %914, %910
  %916 = fmul fast float %890, %427
  %917 = call float @dx.op.tertiary.f32(i32 46, float %891, float %433, float %916)  ; FMad(a,b,c)
  %918 = call float @dx.op.tertiary.f32(i32 46, float %883, float %439, float %917)  ; FMad(a,b,c)
  %919 = fadd fast float %918, %445
  %920 = fmul fast float %890, %428
  %921 = call float @dx.op.tertiary.f32(i32 46, float %891, float %434, float %920)  ; FMad(a,b,c)
  %922 = call float @dx.op.tertiary.f32(i32 46, float %883, float %440, float %921)  ; FMad(a,b,c)
  %923 = fadd fast float %922, %446
  %924 = fmul fast float %890, %429
  %925 = call float @dx.op.tertiary.f32(i32 46, float %891, float %435, float %924)  ; FMad(a,b,c)
  %926 = call float @dx.op.tertiary.f32(i32 46, float %883, float %441, float %925)  ; FMad(a,b,c)
  %927 = fadd fast float %926, %447
  %928 = fmul fast float %890, %430
  %929 = call float @dx.op.tertiary.f32(i32 46, float %891, float %436, float %928)  ; FMad(a,b,c)
  %930 = call float @dx.op.tertiary.f32(i32 46, float %883, float %442, float %929)  ; FMad(a,b,c)
  %931 = fadd fast float %930, %448
  %932 = fdiv fast float 1.000000e+00, %931
  %933 = fmul fast float %932, %919
  %934 = fmul fast float %932, %923
  %935 = fmul fast float %932, %927
  %936 = fsub fast float %278, %912
  %937 = fsub fast float %279, %913
  %938 = fsub fast float %280, %915
  %939 = fsub fast float %933, %936
  %940 = fsub fast float %934, %937
  %941 = fsub fast float %935, %938
  %942 = call float @dx.op.dot3.f32(i32 55, float %939, float %940, float %941, float %939, float %940, float %941)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = call float @dx.op.unary.f32(i32 25, float %942)  ; Rsqrt(value)
  %944 = fmul fast float %939, %943
  %945 = fmul fast float %940, %943
  %946 = fmul fast float %941, %943
  %947 = fsub fast float %457, %936
  %948 = fsub fast float %458, %937
  %949 = fsub fast float %459, %938
  %950 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %947, float %948, float %949)  ; Dot3(ax,ay,az,bx,by,bz)
  %951 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %944, float %945, float %946)  ; Dot3(ax,ay,az,bx,by,bz)
  %952 = fdiv fast float 1.000000e+00, %951
  %953 = fmul fast float %952, %950
  %954 = fmul fast float %953, %944
  %955 = fmul fast float %953, %945
  %956 = fmul fast float %953, %946
  %957 = fadd fast float %954, %936
  %958 = fadd fast float %955, %937
  %959 = fadd fast float %956, %938
  %960 = fadd fast float %912, %278
  %961 = fadd fast float %913, %279
  %962 = fadd fast float %915, %280
  %963 = fsub fast float %933, %960
  %964 = fsub fast float %934, %961
  %965 = fsub fast float %935, %962
  %966 = call float @dx.op.dot3.f32(i32 55, float %963, float %964, float %965, float %963, float %964, float %965)  ; Dot3(ax,ay,az,bx,by,bz)
  %967 = call float @dx.op.unary.f32(i32 25, float %966)  ; Rsqrt(value)
  %968 = fmul fast float %967, %963
  %969 = fmul fast float %967, %964
  %970 = fmul fast float %967, %965
  %971 = fsub fast float %457, %960
  %972 = fsub fast float %458, %961
  %973 = fsub fast float %459, %962
  %974 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %971, float %972, float %973)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %968, float %969, float %970)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = fdiv fast float 1.000000e+00, %975
  %977 = fmul fast float %976, %974
  %978 = fmul fast float %977, %968
  %979 = fmul fast float %977, %969
  %980 = fmul fast float %977, %970
  %981 = fadd fast float %978, %960
  %982 = fadd fast float %979, %961
  %983 = fadd fast float %980, %962
  %984 = fmul fast float %957, %403
  %985 = call float @dx.op.tertiary.f32(i32 46, float %958, float %409, float %984)  ; FMad(a,b,c)
  %986 = call float @dx.op.tertiary.f32(i32 46, float %959, float %415, float %985)  ; FMad(a,b,c)
  %987 = fadd fast float %986, %421
  %988 = fmul fast float %957, %404
  %989 = call float @dx.op.tertiary.f32(i32 46, float %958, float %410, float %988)  ; FMad(a,b,c)
  %990 = call float @dx.op.tertiary.f32(i32 46, float %959, float %416, float %989)  ; FMad(a,b,c)
  %991 = fadd fast float %990, %422
  %992 = fmul fast float %957, %406
  %993 = call float @dx.op.tertiary.f32(i32 46, float %958, float %412, float %992)  ; FMad(a,b,c)
  %994 = call float @dx.op.tertiary.f32(i32 46, float %959, float %418, float %993)  ; FMad(a,b,c)
  %995 = fadd fast float %994, %424
  %996 = fmul fast float %981, %403
  %997 = call float @dx.op.tertiary.f32(i32 46, float %982, float %409, float %996)  ; FMad(a,b,c)
  %998 = call float @dx.op.tertiary.f32(i32 46, float %983, float %415, float %997)  ; FMad(a,b,c)
  %999 = fadd fast float %998, %421
  %1000 = fmul fast float %981, %404
  %1001 = call float @dx.op.tertiary.f32(i32 46, float %982, float %410, float %1000)  ; FMad(a,b,c)
  %1002 = call float @dx.op.tertiary.f32(i32 46, float %983, float %416, float %1001)  ; FMad(a,b,c)
  %1003 = fadd fast float %1002, %422
  %1004 = fmul fast float %981, %406
  %1005 = call float @dx.op.tertiary.f32(i32 46, float %982, float %412, float %1004)  ; FMad(a,b,c)
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %983, float %418, float %1005)  ; FMad(a,b,c)
  %1007 = fadd fast float %1006, %424
  %1008 = fdiv fast float 1.000000e+00, %995
  %1009 = fmul fast float %1008, %987
  %1010 = fmul fast float %1008, %991
  %1011 = fdiv fast float 1.000000e+00, %1007
  %1012 = fmul fast float %1011, %999
  %1013 = fmul fast float %1011, %1003
  %1014 = fsub fast float %1012, %1009
  %1015 = fsub fast float %1013, %1010
  %1016 = call float @dx.op.dot2.f32(i32 54, float %1014, float %1015, float %1014, float %1015)  ; Dot2(ax,ay,bx,by)
  %1017 = call float @dx.op.unary.f32(i32 25, float %1016)  ; Rsqrt(value)
  %1018 = fmul fast float %1014, %1017
  %1019 = fmul fast float %1015, %1017
  %1020 = fmul fast float %1014, %1014
  %1021 = fmul fast float %1015, %1015
  %1022 = fadd fast float %1020, %1021
  %1023 = call float @dx.op.unary.f32(i32 24, float %1022)  ; Sqrt(value)
  %1024 = fmul fast float %1023, 5.000000e-01
  br i1 %452, label %1117, label %1025, !dx.controlflow.hints !47

; <label>:1025                                    ; preds = %896
  %1026 = fsub fast float %278, %270
  %1027 = fsub fast float %279, %271
  %1028 = fsub fast float %280, %272
  %1029 = fsub fast float %933, %1026
  %1030 = fsub fast float %934, %1027
  %1031 = fsub fast float %935, %1028
  %1032 = call float @dx.op.dot3.f32(i32 55, float %1029, float %1030, float %1031, float %1029, float %1030, float %1031)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = call float @dx.op.unary.f32(i32 25, float %1032)  ; Rsqrt(value)
  %1034 = fmul fast float %1033, %1029
  %1035 = fmul fast float %1033, %1030
  %1036 = fmul fast float %1033, %1031
  %1037 = fsub fast float %457, %1026
  %1038 = fsub fast float %458, %1027
  %1039 = fsub fast float %459, %1028
  %1040 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %1037, float %1038, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %1034, float %1035, float %1036)  ; Dot3(ax,ay,az,bx,by,bz)
  %1042 = fdiv fast float 1.000000e+00, %1041
  %1043 = fmul fast float %1042, %1040
  %1044 = fmul fast float %1043, %1034
  %1045 = fmul fast float %1043, %1035
  %1046 = fmul fast float %1043, %1036
  %1047 = fadd fast float %1044, %1026
  %1048 = fadd fast float %1045, %1027
  %1049 = fadd fast float %1046, %1028
  %1050 = fadd fast float %278, %270
  %1051 = fadd fast float %279, %271
  %1052 = fadd fast float %280, %272
  %1053 = fsub fast float %933, %1050
  %1054 = fsub fast float %934, %1051
  %1055 = fsub fast float %935, %1052
  %1056 = call float @dx.op.dot3.f32(i32 55, float %1053, float %1054, float %1055, float %1053, float %1054, float %1055)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = call float @dx.op.unary.f32(i32 25, float %1056)  ; Rsqrt(value)
  %1058 = fmul fast float %1057, %1053
  %1059 = fmul fast float %1057, %1054
  %1060 = fmul fast float %1057, %1055
  %1061 = fsub fast float %457, %1050
  %1062 = fsub fast float %458, %1051
  %1063 = fsub fast float %459, %1052
  %1064 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %1061, float %1062, float %1063)  ; Dot3(ax,ay,az,bx,by,bz)
  %1065 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %1058, float %1059, float %1060)  ; Dot3(ax,ay,az,bx,by,bz)
  %1066 = fdiv fast float 1.000000e+00, %1065
  %1067 = fmul fast float %1066, %1064
  %1068 = fmul fast float %1067, %1058
  %1069 = fmul fast float %1067, %1059
  %1070 = fmul fast float %1067, %1060
  %1071 = fadd fast float %1068, %1050
  %1072 = fadd fast float %1069, %1051
  %1073 = fadd fast float %1070, %1052
  %1074 = fmul fast float %1047, %403
  %1075 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %409, float %1074)  ; FMad(a,b,c)
  %1076 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %415, float %1075)  ; FMad(a,b,c)
  %1077 = fadd fast float %1076, %421
  %1078 = fmul fast float %1047, %404
  %1079 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %410, float %1078)  ; FMad(a,b,c)
  %1080 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %416, float %1079)  ; FMad(a,b,c)
  %1081 = fadd fast float %1080, %422
  %1082 = fmul fast float %1047, %406
  %1083 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %412, float %1082)  ; FMad(a,b,c)
  %1084 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %418, float %1083)  ; FMad(a,b,c)
  %1085 = fadd fast float %1084, %424
  %1086 = fmul fast float %1071, %403
  %1087 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %409, float %1086)  ; FMad(a,b,c)
  %1088 = call float @dx.op.tertiary.f32(i32 46, float %1073, float %415, float %1087)  ; FMad(a,b,c)
  %1089 = fadd fast float %1088, %421
  %1090 = fmul fast float %1071, %404
  %1091 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %410, float %1090)  ; FMad(a,b,c)
  %1092 = call float @dx.op.tertiary.f32(i32 46, float %1073, float %416, float %1091)  ; FMad(a,b,c)
  %1093 = fadd fast float %1092, %422
  %1094 = fmul fast float %1071, %406
  %1095 = call float @dx.op.tertiary.f32(i32 46, float %1072, float %412, float %1094)  ; FMad(a,b,c)
  %1096 = call float @dx.op.tertiary.f32(i32 46, float %1073, float %418, float %1095)  ; FMad(a,b,c)
  %1097 = fadd fast float %1096, %424
  %1098 = fdiv fast float 1.000000e+00, %1085
  %1099 = fmul fast float %1098, %1077
  %1100 = fmul fast float %1098, %1081
  %1101 = fdiv fast float 1.000000e+00, %1097
  %1102 = fmul fast float %1101, %1089
  %1103 = fmul fast float %1101, %1093
  %1104 = fsub fast float %1102, %1099
  %1105 = fsub fast float %1103, %1100
  %1106 = call float @dx.op.dot2.f32(i32 54, float %1104, float %1105, float %1104, float %1105)  ; Dot2(ax,ay,bx,by)
  %1107 = call float @dx.op.unary.f32(i32 25, float %1106)  ; Rsqrt(value)
  %1108 = fmul fast float %1104, %1107
  %1109 = fmul fast float %1105, %1107
  %1110 = fmul fast float %1104, %1104
  %1111 = fmul fast float %1105, %1105
  %1112 = fadd fast float %1110, %1111
  %1113 = call float @dx.op.unary.f32(i32 24, float %1112)  ; Sqrt(value)
  %1114 = fmul fast float %1113, 5.000000e-01
  %1115 = fcmp fast olt float %1114, %1024
  br i1 %1115, label %1116, label %1117, !dx.controlflow.hints !48

; <label>:1116                                    ; preds = %1025
  br label %1117

; <label>:1117                                    ; preds = %1116, %1025, %896
  %1118 = phi float [ %1024, %896 ], [ %1114, %1116 ], [ %1024, %1025 ]
  %1119 = phi float [ %1024, %896 ], [ %1024, %1116 ], [ %1114, %1025 ]
  %1120 = phi float [ %1018, %896 ], [ %1018, %1116 ], [ %1108, %1025 ]
  %1121 = phi float [ %1019, %896 ], [ %1019, %1116 ], [ %1109, %1025 ]
  %1122 = fsub fast float %1119, %1118
  %1123 = fmul fast float %1120, %1120
  %1124 = fmul fast float %1123, %1122
  %1125 = fadd fast float %1124, %1118
  %1126 = fmul fast float %1120, %1122
  %1127 = fmul fast float %1126, %1121
  %1128 = fmul fast float %1121, %1121
  %1129 = fmul fast float %1128, %1122
  %1130 = fadd fast float %1129, %1118
  %1131 = fmul fast float %1125, %482
  %1132 = call float @dx.op.tertiary.f32(i32 46, float %481, float %1127, float %1131)  ; FMad(a,b,c)
  %1133 = fmul fast float %1127, %482
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %481, float %1130, float %1133)  ; FMad(a,b,c)
  %1135 = fmul fast float %1125, %483
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %482, float %1127, float %1135)  ; FMad(a,b,c)
  %1137 = fmul fast float %1127, %483
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %482, float %1130, float %1137)  ; FMad(a,b,c)
  br label %1139

; <label>:1139                                    ; preds = %1139, %1117
  %1140 = phi float [ 0.000000e+00, %1117 ], [ %1166, %1139 ]
  %1141 = phi i32 [ 0, %1117 ], [ %1167, %1139 ]
  %1142 = mul i32 %1141, 2
  %1143 = add i32 0, %1142
  %1144 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1143
  %1145 = load float, float* %1144, align 4
  %1146 = mul i32 %1141, 2
  %1147 = add i32 1, %1146
  %1148 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1147
  %1149 = load float, float* %1148, align 4
  %1150 = fmul fast float %1145, %1132
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1149, float %1136, float %1150)  ; FMad(a,b,c)
  %1152 = fmul fast float %1145, %1134
  %1153 = call float @dx.op.tertiary.f32(i32 46, float %1149, float %1138, float %1152)  ; FMad(a,b,c)
  %1154 = fadd fast float %1151, %476
  %1155 = fadd fast float %1153, %477
  %1156 = fmul fast float %1154, %393
  %1157 = fmul fast float %1155, %393
  %1158 = call float @dx.op.binary.f32(i32 35, float %1156, float %389)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 35, float %1157, float %389)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1158, float %390)  ; FMin(a,b)
  %1161 = call float @dx.op.binary.f32(i32 36, float %1159, float %390)  ; FMin(a,b)
  %1162 = fadd fast float %1160, %387
  %1163 = fadd fast float %1161, %388
  %1164 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %20, float %1162, float %1163, float %862, float undef, i32 0, i32 0, i32 undef, float %865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = fadd fast float %1165, %1140
  %1167 = add nuw nsw i32 %1141, 1
  %1168 = icmp eq i32 %1167, 8
  br i1 %1168, label %1169, label %1139

; <label>:1169                                    ; preds = %1139
  %1170 = fmul fast float %1166, 1.250000e-01
  br label %1171

; <label>:1171                                    ; preds = %1169, %879, %528
  %1172 = phi float [ %555, %528 ], [ %1170, %1169 ], [ 1.000000e+00, %879 ]
  %1173 = fadd fast float %1172, -1.000000e+00
  %1174 = fmul fast float %1173, %366
  %1175 = fadd fast float %1174, 1.000000e+00
  %1176 = fmul fast float %1175, %378
  br label %1177

; <label>:1177                                    ; preds = %1171, %345
  %1178 = phi float [ %1176, %1171 ], [ %378, %345 ]
  %1179 = call float @dx.op.binary.f32(i32 36, float %1178, float %1178)  ; FMin(a,b)
  %1180 = call float @dx.op.binary.f32(i32 36, float %1178, float %1179)  ; FMin(a,b)
  %1181 = fcmp fast ogt float %1180, 0x3F10000000000000
  %1182 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1181)  ; WaveAnyTrue(cond)
  %1183 = select i1 %1182, i32 %257, i32 0
  %1184 = or i32 %252, %1183
  %1185 = lshr i32 %198, 5
  %1186 = lshr i32 %199, 5
  %1187 = fcmp fast olt float %1178, 0x3F10000000000000
  %1188 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1187)  ; WaveAllTrue(cond)
  %1189 = fcmp fast ogt float %1178, 0x3FEFFF8000000000
  %1190 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1189)  ; WaveAllTrue(cond)
  %1191 = or i1 %1188, %1190
  %1192 = xor i1 %1191, true
  %1193 = and i32 %199, 16
  %1194 = lshr i32 %198, 1
  %1195 = and i32 %1194, 8
  %1196 = icmp eq i32 %1193, 0
  %1197 = or i32 %1195, %38
  %1198 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1198, label %1199, label %1241, !dx.controlflow.hints !51

; <label>:1199                                    ; preds = %1177
  %1200 = shl i32 1, %1197
  %1201 = select i1 %1190, i32 %1200, i32 0
  %1202 = shl i32 65536, %1197
  %1203 = select i1 %1188, i32 %1202, i32 0
  %1204 = or i32 %1201, %1203
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1211, label %1206, !dx.controlflow.hints !52

; <label>:1206                                    ; preds = %1199
  br i1 %1196, label %1209, label %1207, !dx.controlflow.hints !53

; <label>:1207                                    ; preds = %1206
  %1208 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1185, i32 %1186, i32 %255, i32 %1204)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1211

; <label>:1209                                    ; preds = %1206
  %1210 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %1185, i32 %1186, i32 %255, i32 %1204)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1211

; <label>:1211                                    ; preds = %1209, %1207, %1199
  br i1 %1191, label %1241, label %1212

; <label>:1212                                    ; preds = %1211
  br label %1213

; <label>:1213                                    ; preds = %1238, %1212
  %1214 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %1185, i32 %1186, i32 %255, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1215 = and i32 %1214, 3
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1217, label %1238, !dx.controlflow.hints !54

; <label>:1217                                    ; preds = %1213
  %1218 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.i32 %1219, 3
  %1221 = call i32 @dx.op.binary.i32(i32 40, i32 %1220, i32 %1218)  ; UMin(a,b)
  %1222 = extractvalue %dx.types.CBufRet.i32 %1219, 2
  %1223 = udiv i32 %1221, %1222
  %1224 = urem i32 %1221, %1222
  %1225 = extractvalue %dx.types.CBufRet.i32 %1219, 1
  %1226 = urem i32 %1224, %1225
  %1227 = udiv i32 %1224, %1225
  %1228 = shl i32 %1226, 6
  %1229 = and i32 %1228, 32704
  %1230 = shl i32 %1227, 15
  %1231 = and i32 %1230, 8355840
  %1232 = shl i32 %1223, 23
  %1233 = and i32 %1232, 2139095040
  %1234 = or i32 %1233, %1229
  %1235 = or i32 %1234, %1231
  %1236 = or i32 %1235, 3
  %1237 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %1185, i32 %1186, i32 %255, i32 %1236)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1241

; <label>:1238                                    ; preds = %1213
  %1239 = icmp eq i32 %1215, 3
  br i1 %1239, label %1240, label %1213, !dx.controlflow.hints !55

; <label>:1240                                    ; preds = %1238
  br label %1241

; <label>:1241                                    ; preds = %1240, %1217, %1211, %1177
  %1242 = phi i32 [ 0, %1211 ], [ %1236, %1217 ], [ 0, %1177 ], [ %1214, %1240 ]
  %1243 = phi i1 [ false, %1211 ], [ %1192, %1217 ], [ %1192, %1177 ], [ %1192, %1240 ]
  br i1 %1243, label %1244, label %1266, !dx.controlflow.hints !56

; <label>:1244                                    ; preds = %1241
  %1245 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1242)  ; WaveReadLaneFirst(value)
  %1246 = lshr i32 %199, 1
  %1247 = and i32 %1194, 15
  %1248 = and i32 %1246, 15
  %1249 = and i32 %198, 1
  %1250 = shl i32 %199, 1
  %1251 = and i32 %1250, 2
  %1252 = or i32 %1251, %1249
  %1253 = lshr i32 %1245, 2
  %1254 = and i32 %1253, 8176
  %1255 = lshr i32 %1245, 11
  %1256 = and i32 %1255, 4080
  %1257 = or i32 %1254, %1247
  %1258 = or i32 %1256, %1248
  %1259 = lshr i32 %1245, 21
  %1260 = and i32 %1259, 1020
  %1261 = or i32 %1252, %1260
  %1262 = fmul fast float %1178, 2.550000e+02
  %1263 = fadd fast float %1262, %193
  %1264 = call float @dx.op.unary.f32(i32 27, float %1263)  ; Round_ni(value)
  %1265 = fmul fast float %1264, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %1257, i32 %1258, i32 %1261, float %1265, float %1265, float %1265, float %1265, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1266

; <label>:1266                                    ; preds = %1244, %1241
  %1267 = icmp eq i32 %253, %257
  br i1 %1267, label %1268, label %251, !llvm.loop !57

; <label>:1268                                    ; preds = %1266
  br label %1269

; <label>:1269                                    ; preds = %1268, %223
  %1270 = phi i32 [ 0, %223 ], [ %1184, %1268 ]
  %1271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.i32 %1271, 0
  %1273 = call i32 @dx.op.tertiary.i32(i32 49, i32 %204, i32 %1272, i32 %224)  ; UMad(a,b,c)
  %1274 = shl i32 %1273, 2
  %1275 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1274, i32 undef, i32 undef, i32 %1270)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1276 = add i32 %224, 1
  %1277 = icmp ugt i32 %1276, %220
  br i1 %1277, label %1278, label %223

; <label>:1278                                    ; preds = %1269
  br label %1279

; <label>:1279                                    ; preds = %1278, %197, %59
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
!dx.entryPoints = !{!34}

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
!30 = !{!31, !32, !33}
!31 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !35}
!35 = !{i32 0, i64 524560, i32 4, !36}
!36 = !{i32 8, i32 4, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
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
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}

