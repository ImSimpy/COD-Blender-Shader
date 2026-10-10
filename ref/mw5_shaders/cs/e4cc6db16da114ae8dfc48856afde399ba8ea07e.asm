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
; shader hash: e3606aaed0bdd9c31047412b288289f9
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
  %83 = fmul fast float %81, %68
  %84 = fmul fast float %82, %69
  %85 = fmul fast float %83, 2.000000e+00
  %86 = fmul fast float %84, 2.000000e+00
  %87 = fsub fast float 1.000000e+00, %85
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
  %183 = fmul fast float %81, %66
  %184 = fmul fast float %82, %67
  %185 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %183, float %184, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = extractvalue %dx.types.ResRet.f32 %185, 1
  %188 = extractvalue %dx.types.ResRet.f32 %185, 2
  %189 = fcmp fast ogt float %186, -1.000000e+00
  %190 = select i1 %189, float %75, float 1.000000e+00
  %191 = fadd fast float %186, 1.000000e+00
  %192 = fmul fast float %190, %191
  %193 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %194 = fcmp fast ogt float %187, -1.000000e+00
  %195 = select i1 %194, float %75, float 1.000000e+00
  %196 = fadd fast float %187, 1.000000e+00
  %197 = fmul fast float %195, %196
  %198 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %199 = fcmp fast ogt float %188, -1.000000e+00
  %200 = select i1 %199, float %75, float 1.000000e+00
  %201 = fadd fast float %188, 1.000000e+00
  %202 = fmul fast float %200, %201
  %203 = call float @dx.op.unary.f32(i32 6, float %202)  ; FAbs(value)
  %204 = fadd fast float %66, 1.000000e+00
  %205 = fmul fast float %81, %204
  %206 = fadd fast float %67, 1.000000e+00
  %207 = fmul fast float %82, %206
  %208 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %205, float %207, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 2
  %211 = fcmp fast ogt float %209, -1.000000e+00
  %212 = select i1 %211, float %75, float 1.000000e+00
  %213 = fadd fast float %209, 1.000000e+00
  %214 = fmul fast float %212, %213
  %215 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %216 = fcmp fast ogt float %210, -1.000000e+00
  %217 = select i1 %216, float %75, float 1.000000e+00
  %218 = fadd fast float %210, 1.000000e+00
  %219 = fmul fast float %217, %218
  %220 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %221 = fsub fast float %203, %198
  %222 = fsub fast float %215, %198
  %223 = fsub fast float %193, %198
  %224 = fsub fast float %220, %198
  %225 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %226 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %227 = call float @dx.op.binary.f32(i32 35, float %226, float %225)  ; FMax(a,b)
  %228 = call float @dx.op.unary.f32(i32 6, float %224)  ; FAbs(value)
  %229 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %230 = call float @dx.op.binary.f32(i32 35, float %229, float %228)  ; FMax(a,b)
  %231 = fadd fast float %222, %221
  %232 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %233 = fadd fast float %224, %223
  %234 = call float @dx.op.unary.f32(i32 6, float %233)  ; FAbs(value)
  %235 = fsub fast float %230, %234
  %236 = call float @dx.op.unary.f32(i32 6, float %235)  ; FAbs(value)
  %237 = fsub fast float %227, %232
  %238 = call float @dx.op.unary.f32(i32 6, float %237)  ; FAbs(value)
  %239 = call float @dx.op.binary.f32(i32 35, float %238, float %236)  ; FMax(a,b)
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = fmul fast float %241, 0x3FE3C6EF40000000
  %243 = frem fast float %68, 2.560000e+02
  %244 = frem fast float %69, 2.560000e+02
  %245 = fptoui float %243 to i32
  %246 = fptoui float %244 to i32
  %247 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %245, i32 %246, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 2
  %250 = fadd fast float %248, %242
  %251 = fadd fast float %249, %242
  %252 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %253 = call float @dx.op.unary.f32(i32 22, float %251)  ; Frc(value)
  %254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.i32 %254, 0
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %1753, label %257, !dx.controlflow.hints !42

; <label>:257                                     ; preds = %59
  %258 = fptoui float %68 to i32
  %259 = fptoui float %69 to i32
  %260 = lshr i32 %258, 4
  %261 = lshr i32 %259, 4
  %262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.i32 %262, 0
  %264 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %263, i32 %260)  ; UMad(a,b,c)
  %265 = add nsw i32 %255, -1
  %266 = call i32 @dx.op.binary.i32(i32 37, i32 %265, i32 0)  ; IMax(a,b)
  %267 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %268 = fptoui float %267 to i32
  %269 = lshr i32 %268, 5
  %270 = call i32 @dx.op.binary.i32(i32 40, i32 %269, i32 8191)  ; UMin(a,b)
  %271 = shl i32 %270, 2
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = lshr i32 %273, 16
  %275 = and i32 %273, 65535
  %276 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %274, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %277 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %275, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %278 = lshr i32 %276, 5
  %279 = lshr i32 %277, 5
  %280 = call i32 @dx.op.binary.i32(i32 40, i32 %279, i32 %266)  ; UMin(a,b)
  %281 = icmp ugt i32 %278, %280
  br i1 %281, label %1753, label %282

; <label>:282                                     ; preds = %257
  br label %283

; <label>:283                                     ; preds = %1743, %282
  %284 = phi i32 [ %1750, %1743 ], [ %278, %282 ]
  %285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.i32 %285, 0
  %287 = call i32 @dx.op.tertiary.i32(i32 49, i32 %264, i32 %286, i32 %284)  ; UMad(a,b,c)
  %288 = shl i32 %287, 2
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = shl i32 %284, 5
  %292 = sub nsw i32 %274, %291
  %293 = call i32 @dx.op.binary.i32(i32 37, i32 %292, i32 0)  ; IMax(a,b)
  %294 = call i32 @dx.op.binary.i32(i32 38, i32 %293, i32 31)  ; IMin(a,b)
  %295 = sub nsw i32 1, %274
  %296 = add nsw i32 %295, %275
  %297 = call i32 @dx.op.binary.i32(i32 37, i32 %296, i32 0)  ; IMax(a,b)
  %298 = call i32 @dx.op.binary.i32(i32 38, i32 %297, i32 32)  ; IMin(a,b)
  %299 = and i32 %298, 31
  %300 = shl i32 -1, %299
  %301 = xor i32 %300, -1
  %302 = and i32 %294, 31
  %303 = shl i32 %301, %302
  %304 = icmp eq i32 %298, 32
  %305 = select i1 %304, i32 -1, i32 %303
  %306 = and i32 %305, %290
  %307 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %306, i8 1)  ; WaveActiveBit(value,op)
  %308 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %307)  ; WaveReadLaneFirst(value)
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %1743, label %310

; <label>:310                                     ; preds = %283
  br label %311

; <label>:311                                     ; preds = %1740, %310
  %312 = phi i32 [ %1658, %1740 ], [ 0, %310 ]
  %313 = phi i32 [ %318, %1740 ], [ %308, %310 ]
  %314 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %313)  ; FirstbitLo(value)
  %315 = add i32 %314, %291
  %316 = and i32 %314, 31
  %317 = shl i32 1, %316
  %318 = xor i32 %317, %313
  %319 = mul i32 %315, 112
  %320 = add i32 %319, 16
  %321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = extractvalue %dx.types.ResRet.f32 %321, 1
  %324 = extractvalue %dx.types.ResRet.f32 %321, 2
  %325 = add i32 %319, 28
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = add i32 %319, 32
  %329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = extractvalue %dx.types.ResRet.f32 %329, 1
  %332 = extractvalue %dx.types.ResRet.f32 %329, 2
  %333 = add i32 %319, 44
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = add i32 %319, 48
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = extractvalue %dx.types.ResRet.f32 %337, 1
  %340 = extractvalue %dx.types.ResRet.f32 %337, 2
  %341 = extractvalue %dx.types.ResRet.f32 %337, 3
  %342 = add i32 %319, 64
  %343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  %347 = extractvalue %dx.types.ResRet.f32 %343, 3
  %348 = add i32 %319, 92
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = uitofp i32 %351 to float
  %353 = lshr i32 %350, 16
  %354 = uitofp i32 %353 to float
  %355 = and i32 %327, 65535
  %356 = and i32 %327, 50331648
  %357 = icmp eq i32 %356, 33554432
  %358 = call float @dx.op.dot3.f32(i32 55, float %330, float %331, float %332, float %330, float %331, float %332)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = fsub fast float %134, %338
  %360 = fsub fast float %135, %339
  %361 = fsub fast float %136, %340
  %362 = call float @dx.op.dot3.f32(i32 55, float %359, float %360, float %361, float %330, float %331, float %332)  ; Dot3(ax,ay,az,bx,by,bz)
  %363 = fdiv fast float %362, %358
  %364 = call float @dx.op.binary.f32(i32 35, float %363, float -1.000000e+00)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 36, float %364, float 1.000000e+00)  ; FMin(a,b)
  %366 = fmul fast float %365, %330
  %367 = fmul fast float %365, %331
  %368 = fmul fast float %365, %332
  %369 = fadd fast float %366, %338
  %370 = fadd fast float %367, %339
  %371 = fadd fast float %368, %340
  %372 = fsub fast float %369, %134
  %373 = fsub fast float %370, %135
  %374 = fsub fast float %371, %136
  %375 = call float @dx.op.dot3.f32(i32 55, float %372, float %373, float %374, float %372, float %373, float %374)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %377 = fdiv fast float 1.000000e+00, %376
  %378 = fmul fast float %372, %377
  %379 = fmul fast float %373, %377
  %380 = fmul fast float %374, %377
  br i1 %357, label %381, label %405, !dx.controlflow.hints !43

; <label>:381                                     ; preds = %311
  %382 = fmul fast float %346, %322
  %383 = fmul fast float %346, %323
  %384 = fmul fast float %346, %324
  %385 = fsub fast float %382, %134
  %386 = fadd fast float %385, %369
  %387 = fsub fast float %383, %135
  %388 = fadd fast float %387, %370
  %389 = fsub fast float %384, %136
  %390 = fadd fast float %389, %371
  %391 = call float @dx.op.dot3.f32(i32 55, float %386, float %388, float %390, float %386, float %388, float %390)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = call float @dx.op.unary.f32(i32 25, float %391)  ; Rsqrt(value)
  %393 = fmul fast float %392, %386
  %394 = fmul fast float %392, %388
  %395 = fmul fast float %392, %390
  %396 = fsub fast float %134, %369
  %397 = fsub fast float %135, %370
  %398 = fsub fast float %136, %371
  %399 = fsub fast float -0.000000e+00, %396
  %400 = fsub fast float -0.000000e+00, %397
  %401 = fsub fast float -0.000000e+00, %398
  %402 = call float @dx.op.dot3.f32(i32 55, float %399, float %400, float %401, float %322, float %323, float %324)  ; Dot3(ax,ay,az,bx,by,bz)
  %403 = fcmp fast ogt float %402, 0.000000e+00
  %404 = uitofp i1 %403 to float
  br label %405

; <label>:405                                     ; preds = %381, %311
  %406 = phi float [ %404, %381 ], [ 1.000000e+00, %311 ]
  %407 = phi float [ %393, %381 ], [ %378, %311 ]
  %408 = phi float [ %394, %381 ], [ %379, %311 ]
  %409 = phi float [ %395, %381 ], [ %380, %311 ]
  %410 = call float @dx.op.dot3.f32(i32 55, float %322, float %323, float %324, float %407, float %408, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %411 = fmul fast float %410, %410
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = fsub fast float 1.000000e+00, %412
  %414 = fmul fast float %413, 5.000000e-01
  %415 = fcmp fast ogt float %410, 0.000000e+00
  %416 = fsub fast float 1.000000e+00, %414
  %417 = select i1 %415, float %414, float %416
  %418 = fmul fast float %417, %354
  %419 = fadd fast float %418, %352
  %420 = fmul fast float %419, 0x3EF0001000000000
  %421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %420, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = fmul fast float %410, %344
  %424 = fadd fast float %423, %345
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = select i1 %357, float 1.000000e+00, float %425
  %427 = select i1 %357, float %425, float 1.000000e+00
  %428 = fmul fast float %376, %341
  %429 = fsub fast float 1.000000e+00, %428
  %430 = fmul fast float %429, %347
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = fmul fast float %431, %427
  %433 = fmul fast float %432, 2.000000e+00
  %434 = fsub fast float 3.000000e+00, %433
  %435 = fmul fast float %422, %406
  %436 = fmul fast float %432, %432
  %437 = fmul fast float %436, %435
  %438 = fmul fast float %437, %434
  %439 = icmp ne i32 %355, 255
  %440 = call float @dx.op.binary.f32(i32 36, float %438, float %438)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %438, float %440)  ; FMin(a,b)
  %442 = fcmp fast ogt float %441, 0.000000e+00
  %443 = and i1 %439, %442
  br i1 %443, label %444, label %1358, !dx.controlflow.hints !44

; <label>:444                                     ; preds = %405
  %445 = mul nuw nsw i32 %355, 176
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = extractvalue %dx.types.ResRet.f32 %446, 3
  %451 = add nuw nsw i32 %445, 16
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = add nuw nsw i32 %445, 32
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = extractvalue %dx.types.ResRet.f32 %456, 3
  %461 = add nuw nsw i32 %445, 48
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = add nuw nsw i32 %445, 64
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = add nuw nsw i32 %445, 80
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = add nuw nsw i32 %445, 96
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = extractvalue %dx.types.ResRet.f32 %480, 3
  %485 = add nuw nsw i32 %445, 112
  %486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = extractvalue %dx.types.ResRet.f32 %486, 3
  %491 = add nuw nsw i32 %445, 128
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  %496 = extractvalue %dx.types.ResRet.f32 %492, 3
  %497 = add nuw nsw i32 %445, 144
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = extractvalue %dx.types.ResRet.f32 %498, 3
  %503 = add nuw nsw i32 %445, 160
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = bitcast float %454 to i32
  %510 = bitcast float %460 to i32
  %511 = and i32 %510, 1
  %512 = icmp ne i32 %511, 0
  %513 = and i32 %510, 2
  %514 = fmul fast float %459, %180
  %515 = fmul fast float %459, %181
  %516 = fmul fast float %459, %182
  %517 = fadd fast float %514, %134
  %518 = fadd fast float %515, %135
  %519 = fadd fast float %516, %136
  %520 = fmul fast float %517, %463
  %521 = call float @dx.op.tertiary.f32(i32 46, float %518, float %469, float %520)  ; FMad(a,b,c)
  %522 = call float @dx.op.tertiary.f32(i32 46, float %519, float %475, float %521)  ; FMad(a,b,c)
  %523 = fadd fast float %522, %481
  %524 = fmul fast float %517, %464
  %525 = call float @dx.op.tertiary.f32(i32 46, float %518, float %470, float %524)  ; FMad(a,b,c)
  %526 = call float @dx.op.tertiary.f32(i32 46, float %519, float %476, float %525)  ; FMad(a,b,c)
  %527 = fadd fast float %526, %482
  %528 = fmul fast float %517, %465
  %529 = call float @dx.op.tertiary.f32(i32 46, float %518, float %471, float %528)  ; FMad(a,b,c)
  %530 = call float @dx.op.tertiary.f32(i32 46, float %519, float %477, float %529)  ; FMad(a,b,c)
  %531 = fadd fast float %530, %483
  %532 = fmul fast float %517, %466
  %533 = call float @dx.op.tertiary.f32(i32 46, float %518, float %472, float %532)  ; FMad(a,b,c)
  %534 = call float @dx.op.tertiary.f32(i32 46, float %519, float %478, float %533)  ; FMad(a,b,c)
  %535 = fadd fast float %534, %484
  %536 = fdiv fast float %523, %535
  %537 = fdiv fast float %527, %535
  %538 = fdiv fast float %531, %535
  %539 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %538)  ; FMax(a,b)
  %540 = fmul fast float %252, 0x401921FB60000000
  %541 = call float @dx.op.unary.f32(i32 13, float %540)  ; Sin(value)
  %542 = call float @dx.op.unary.f32(i32 12, float %540)  ; Cos(value)
  %543 = fsub fast float -0.000000e+00, %541
  %544 = icmp eq i32 %513, 0
  br i1 %544, label %545, label %616, !dx.controlflow.hints !45

; <label>:545                                     ; preds = %444
  %546 = fmul fast float %542, %458
  %547 = call float @dx.op.tertiary.f32(i32 46, float %541, float %458, float 0.000000e+00)  ; FMad(a,b,c)
  %548 = fmul fast float %458, %543
  %549 = call float @dx.op.tertiary.f32(i32 46, float %542, float %458, float 0.000000e+00)  ; FMad(a,b,c)
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
  %566 = fadd fast float %563, %536
  %567 = fadd fast float %565, %537
  %568 = fmul fast float %566, %453
  %569 = fmul fast float %567, %453
  %570 = call float @dx.op.binary.f32(i32 35, float %568, float %449)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float %569, float %449)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float %570, float %450)  ; FMin(a,b)
  %573 = call float @dx.op.binary.f32(i32 36, float %571, float %450)  ; FMin(a,b)
  %574 = fadd fast float %572, %447
  %575 = fadd fast float %573, %448
  %576 = uitofp i32 %509 to float
  %577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %574, float %575, float %576, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = fsub fast float %578, %539
  %580 = fsub fast float %579, %457
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
  %591 = fdiv fast float 1.000000e+00, %539
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
  br label %1231

; <label>:616                                     ; preds = %444
  %617 = fsub fast float 1.000000e+00, %539
  %618 = fmul fast float %617, 5.000000e-01
  %619 = fadd fast float %618, %539
  %620 = fsub fast float %517, %338
  %621 = fsub fast float %518, %339
  %622 = fsub fast float %519, %340
  %623 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %330, float %331, float %332)  ; Dot3(ax,ay,az,bx,by,bz)
  %624 = fdiv fast float %623, %358
  %625 = call float @dx.op.binary.f32(i32 35, float %624, float -1.000000e+00)  ; FMax(a,b)
  %626 = call float @dx.op.binary.f32(i32 36, float %625, float 1.000000e+00)  ; FMin(a,b)
  %627 = fmul fast float %626, %330
  %628 = fmul fast float %626, %331
  %629 = fmul fast float %626, %332
  %630 = fsub fast float %620, %627
  %631 = fsub fast float %621, %628
  %632 = fsub fast float %622, %629
  %633 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %630, float %631, float %632)  ; Dot3(ax,ay,az,bx,by,bz)
  %634 = call float @dx.op.unary.f32(i32 25, float %633)  ; Rsqrt(value)
  %635 = fmul fast float %630, %634
  %636 = fmul fast float %631, %634
  %637 = fmul fast float %632, %634
  %638 = call float @dx.op.unary.f32(i32 25, float %358)  ; Rsqrt(value)
  %639 = fmul fast float %638, %330
  %640 = fmul fast float %638, %331
  %641 = fmul fast float %638, %332
  br i1 %512, label %642, label %646, !dx.controlflow.hints !46

; <label>:642                                     ; preds = %616
  %643 = fcmp fast olt float %636, 0x3FE6666660000000
  %644 = select i1 %643, float 1.000000e+00, float 0.000000e+00
  %645 = select i1 %643, float 0.000000e+00, float 1.000000e+00
  br label %646

; <label>:646                                     ; preds = %642, %616
  %647 = phi float [ 0.000000e+00, %642 ], [ %639, %616 ]
  %648 = phi float [ %644, %642 ], [ %640, %616 ]
  %649 = phi float [ %645, %642 ], [ %641, %616 ]
  %650 = fmul fast float %648, %637
  %651 = fmul fast float %649, %636
  %652 = fsub fast float %650, %651
  %653 = fmul fast float %649, %635
  %654 = fmul fast float %647, %637
  %655 = fsub fast float %653, %654
  %656 = fmul fast float %647, %636
  %657 = fmul fast float %648, %635
  %658 = fsub fast float %656, %657
  %659 = call float @dx.op.dot3.f32(i32 55, float %652, float %655, float %658, float %652, float %655, float %658)  ; Dot3(ax,ay,az,bx,by,bz)
  %660 = call float @dx.op.unary.f32(i32 25, float %659)  ; Rsqrt(value)
  %661 = fmul fast float %660, %335
  %662 = fmul fast float %661, %652
  %663 = fmul fast float %661, %655
  %664 = fmul fast float %658, %335
  %665 = fmul fast float %664, %660
  %666 = fmul fast float %536, %487
  %667 = call float @dx.op.tertiary.f32(i32 46, float %537, float %493, float %666)  ; FMad(a,b,c)
  %668 = call float @dx.op.tertiary.f32(i32 46, float %619, float %499, float %667)  ; FMad(a,b,c)
  %669 = fadd fast float %668, %505
  %670 = fmul fast float %536, %488
  %671 = call float @dx.op.tertiary.f32(i32 46, float %537, float %494, float %670)  ; FMad(a,b,c)
  %672 = call float @dx.op.tertiary.f32(i32 46, float %619, float %500, float %671)  ; FMad(a,b,c)
  %673 = fadd fast float %672, %506
  %674 = fmul fast float %536, %489
  %675 = call float @dx.op.tertiary.f32(i32 46, float %537, float %495, float %674)  ; FMad(a,b,c)
  %676 = call float @dx.op.tertiary.f32(i32 46, float %619, float %501, float %675)  ; FMad(a,b,c)
  %677 = fadd fast float %676, %507
  %678 = fmul fast float %536, %490
  %679 = call float @dx.op.tertiary.f32(i32 46, float %537, float %496, float %678)  ; FMad(a,b,c)
  %680 = call float @dx.op.tertiary.f32(i32 46, float %619, float %502, float %679)  ; FMad(a,b,c)
  %681 = fadd fast float %680, %508
  %682 = fdiv fast float 1.000000e+00, %681
  %683 = fmul fast float %682, %669
  %684 = fmul fast float %682, %673
  %685 = fmul fast float %682, %677
  %686 = fsub fast float -0.000000e+00, %635
  %687 = fsub fast float -0.000000e+00, %636
  %688 = fsub fast float -0.000000e+00, %637
  %689 = fsub fast float %338, %662
  %690 = fsub fast float %339, %663
  %691 = fsub fast float %340, %665
  %692 = fsub fast float %683, %689
  %693 = fsub fast float %684, %690
  %694 = fsub fast float %685, %691
  %695 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %692, float %693, float %694)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = call float @dx.op.unary.f32(i32 25, float %695)  ; Rsqrt(value)
  %697 = fmul fast float %692, %696
  %698 = fmul fast float %693, %696
  %699 = fmul fast float %694, %696
  %700 = fsub fast float %517, %689
  %701 = fsub fast float %518, %690
  %702 = fsub fast float %519, %691
  %703 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %700, float %701, float %702)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %697, float %698, float %699)  ; Dot3(ax,ay,az,bx,by,bz)
  %705 = fdiv fast float 1.000000e+00, %704
  %706 = fmul fast float %705, %703
  %707 = fmul fast float %706, %697
  %708 = fmul fast float %706, %698
  %709 = fmul fast float %706, %699
  %710 = fadd fast float %707, %689
  %711 = fadd fast float %708, %690
  %712 = fadd fast float %709, %691
  %713 = fadd fast float %662, %338
  %714 = fadd fast float %663, %339
  %715 = fadd fast float %665, %340
  %716 = fsub fast float %683, %713
  %717 = fsub fast float %684, %714
  %718 = fsub fast float %685, %715
  %719 = call float @dx.op.dot3.f32(i32 55, float %716, float %717, float %718, float %716, float %717, float %718)  ; Dot3(ax,ay,az,bx,by,bz)
  %720 = call float @dx.op.unary.f32(i32 25, float %719)  ; Rsqrt(value)
  %721 = fmul fast float %720, %716
  %722 = fmul fast float %720, %717
  %723 = fmul fast float %720, %718
  %724 = fsub fast float %517, %713
  %725 = fsub fast float %518, %714
  %726 = fsub fast float %519, %715
  %727 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %724, float %725, float %726)  ; Dot3(ax,ay,az,bx,by,bz)
  %728 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %721, float %722, float %723)  ; Dot3(ax,ay,az,bx,by,bz)
  %729 = fdiv fast float 1.000000e+00, %728
  %730 = fmul fast float %729, %727
  %731 = fmul fast float %730, %721
  %732 = fmul fast float %730, %722
  %733 = fmul fast float %730, %723
  %734 = fadd fast float %731, %713
  %735 = fadd fast float %732, %714
  %736 = fadd fast float %733, %715
  %737 = fmul fast float %710, %463
  %738 = call float @dx.op.tertiary.f32(i32 46, float %711, float %469, float %737)  ; FMad(a,b,c)
  %739 = call float @dx.op.tertiary.f32(i32 46, float %712, float %475, float %738)  ; FMad(a,b,c)
  %740 = fadd fast float %739, %481
  %741 = fmul fast float %710, %464
  %742 = call float @dx.op.tertiary.f32(i32 46, float %711, float %470, float %741)  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %712, float %476, float %742)  ; FMad(a,b,c)
  %744 = fadd fast float %743, %482
  %745 = fmul fast float %710, %466
  %746 = call float @dx.op.tertiary.f32(i32 46, float %711, float %472, float %745)  ; FMad(a,b,c)
  %747 = call float @dx.op.tertiary.f32(i32 46, float %712, float %478, float %746)  ; FMad(a,b,c)
  %748 = fadd fast float %747, %484
  %749 = fmul fast float %734, %463
  %750 = call float @dx.op.tertiary.f32(i32 46, float %735, float %469, float %749)  ; FMad(a,b,c)
  %751 = call float @dx.op.tertiary.f32(i32 46, float %736, float %475, float %750)  ; FMad(a,b,c)
  %752 = fadd fast float %751, %481
  %753 = fmul fast float %734, %464
  %754 = call float @dx.op.tertiary.f32(i32 46, float %735, float %470, float %753)  ; FMad(a,b,c)
  %755 = call float @dx.op.tertiary.f32(i32 46, float %736, float %476, float %754)  ; FMad(a,b,c)
  %756 = fadd fast float %755, %482
  %757 = fmul fast float %734, %466
  %758 = call float @dx.op.tertiary.f32(i32 46, float %735, float %472, float %757)  ; FMad(a,b,c)
  %759 = call float @dx.op.tertiary.f32(i32 46, float %736, float %478, float %758)  ; FMad(a,b,c)
  %760 = fadd fast float %759, %484
  %761 = fdiv fast float 1.000000e+00, %748
  %762 = fmul fast float %761, %740
  %763 = fmul fast float %761, %744
  %764 = fdiv fast float 1.000000e+00, %760
  %765 = fmul fast float %764, %752
  %766 = fmul fast float %764, %756
  %767 = fsub fast float %765, %762
  %768 = fsub fast float %766, %763
  %769 = call float @dx.op.dot2.f32(i32 54, float %767, float %768, float %767, float %768)  ; Dot2(ax,ay,bx,by)
  %770 = call float @dx.op.unary.f32(i32 25, float %769)  ; Rsqrt(value)
  %771 = fmul fast float %767, %770
  %772 = fmul fast float %768, %770
  %773 = fmul fast float %767, %767
  %774 = fmul fast float %768, %768
  %775 = fadd fast float %773, %774
  %776 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %777 = fmul fast float %776, 5.000000e-01
  br i1 %512, label %870, label %778, !dx.controlflow.hints !47

; <label>:778                                     ; preds = %646
  %779 = fsub fast float %338, %330
  %780 = fsub fast float %339, %331
  %781 = fsub fast float %340, %332
  %782 = fsub fast float %683, %779
  %783 = fsub fast float %684, %780
  %784 = fsub fast float %685, %781
  %785 = call float @dx.op.dot3.f32(i32 55, float %782, float %783, float %784, float %782, float %783, float %784)  ; Dot3(ax,ay,az,bx,by,bz)
  %786 = call float @dx.op.unary.f32(i32 25, float %785)  ; Rsqrt(value)
  %787 = fmul fast float %786, %782
  %788 = fmul fast float %786, %783
  %789 = fmul fast float %786, %784
  %790 = fsub fast float %517, %779
  %791 = fsub fast float %518, %780
  %792 = fsub fast float %519, %781
  %793 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %790, float %791, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %794 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %787, float %788, float %789)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = fdiv fast float 1.000000e+00, %794
  %796 = fmul fast float %795, %793
  %797 = fmul fast float %796, %787
  %798 = fmul fast float %796, %788
  %799 = fmul fast float %796, %789
  %800 = fadd fast float %797, %779
  %801 = fadd fast float %798, %780
  %802 = fadd fast float %799, %781
  %803 = fadd fast float %338, %330
  %804 = fadd fast float %339, %331
  %805 = fadd fast float %340, %332
  %806 = fsub fast float %683, %803
  %807 = fsub fast float %684, %804
  %808 = fsub fast float %685, %805
  %809 = call float @dx.op.dot3.f32(i32 55, float %806, float %807, float %808, float %806, float %807, float %808)  ; Dot3(ax,ay,az,bx,by,bz)
  %810 = call float @dx.op.unary.f32(i32 25, float %809)  ; Rsqrt(value)
  %811 = fmul fast float %810, %806
  %812 = fmul fast float %810, %807
  %813 = fmul fast float %810, %808
  %814 = fsub fast float %517, %803
  %815 = fsub fast float %518, %804
  %816 = fsub fast float %519, %805
  %817 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %814, float %815, float %816)  ; Dot3(ax,ay,az,bx,by,bz)
  %818 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %811, float %812, float %813)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = fdiv fast float 1.000000e+00, %818
  %820 = fmul fast float %819, %817
  %821 = fmul fast float %820, %811
  %822 = fmul fast float %820, %812
  %823 = fmul fast float %820, %813
  %824 = fadd fast float %821, %803
  %825 = fadd fast float %822, %804
  %826 = fadd fast float %823, %805
  %827 = fmul fast float %800, %463
  %828 = call float @dx.op.tertiary.f32(i32 46, float %801, float %469, float %827)  ; FMad(a,b,c)
  %829 = call float @dx.op.tertiary.f32(i32 46, float %802, float %475, float %828)  ; FMad(a,b,c)
  %830 = fadd fast float %829, %481
  %831 = fmul fast float %800, %464
  %832 = call float @dx.op.tertiary.f32(i32 46, float %801, float %470, float %831)  ; FMad(a,b,c)
  %833 = call float @dx.op.tertiary.f32(i32 46, float %802, float %476, float %832)  ; FMad(a,b,c)
  %834 = fadd fast float %833, %482
  %835 = fmul fast float %800, %466
  %836 = call float @dx.op.tertiary.f32(i32 46, float %801, float %472, float %835)  ; FMad(a,b,c)
  %837 = call float @dx.op.tertiary.f32(i32 46, float %802, float %478, float %836)  ; FMad(a,b,c)
  %838 = fadd fast float %837, %484
  %839 = fmul fast float %824, %463
  %840 = call float @dx.op.tertiary.f32(i32 46, float %825, float %469, float %839)  ; FMad(a,b,c)
  %841 = call float @dx.op.tertiary.f32(i32 46, float %826, float %475, float %840)  ; FMad(a,b,c)
  %842 = fadd fast float %841, %481
  %843 = fmul fast float %824, %464
  %844 = call float @dx.op.tertiary.f32(i32 46, float %825, float %470, float %843)  ; FMad(a,b,c)
  %845 = call float @dx.op.tertiary.f32(i32 46, float %826, float %476, float %844)  ; FMad(a,b,c)
  %846 = fadd fast float %845, %482
  %847 = fmul fast float %824, %466
  %848 = call float @dx.op.tertiary.f32(i32 46, float %825, float %472, float %847)  ; FMad(a,b,c)
  %849 = call float @dx.op.tertiary.f32(i32 46, float %826, float %478, float %848)  ; FMad(a,b,c)
  %850 = fadd fast float %849, %484
  %851 = fdiv fast float 1.000000e+00, %838
  %852 = fmul fast float %851, %830
  %853 = fmul fast float %851, %834
  %854 = fdiv fast float 1.000000e+00, %850
  %855 = fmul fast float %854, %842
  %856 = fmul fast float %854, %846
  %857 = fsub fast float %855, %852
  %858 = fsub fast float %856, %853
  %859 = call float @dx.op.dot2.f32(i32 54, float %857, float %858, float %857, float %858)  ; Dot2(ax,ay,bx,by)
  %860 = call float @dx.op.unary.f32(i32 25, float %859)  ; Rsqrt(value)
  %861 = fmul fast float %857, %860
  %862 = fmul fast float %858, %860
  %863 = fmul fast float %857, %857
  %864 = fmul fast float %858, %858
  %865 = fadd fast float %863, %864
  %866 = call float @dx.op.unary.f32(i32 24, float %865)  ; Sqrt(value)
  %867 = fmul fast float %866, 5.000000e-01
  %868 = fcmp fast olt float %867, %777
  br i1 %868, label %869, label %870, !dx.controlflow.hints !48

; <label>:869                                     ; preds = %778
  br label %870

; <label>:870                                     ; preds = %869, %778, %646
  %871 = phi float [ %777, %646 ], [ %867, %869 ], [ %777, %778 ]
  %872 = phi float [ %777, %646 ], [ %777, %869 ], [ %867, %778 ]
  %873 = phi float [ %771, %646 ], [ %771, %869 ], [ %861, %778 ]
  %874 = phi float [ %772, %646 ], [ %772, %869 ], [ %862, %778 ]
  %875 = fmul fast float %871, %458
  %876 = fdiv fast float %875, %872
  %877 = fsub fast float %458, %876
  %878 = fmul fast float %873, %873
  %879 = fmul fast float %878, %877
  %880 = fadd fast float %879, %876
  %881 = fmul fast float %874, %873
  %882 = fmul fast float %881, %877
  %883 = fmul fast float %874, %874
  %884 = fmul fast float %883, %877
  %885 = fadd fast float %884, %876
  %886 = fmul fast float %880, %542
  %887 = call float @dx.op.tertiary.f32(i32 46, float %541, float %882, float %886)  ; FMad(a,b,c)
  %888 = fmul fast float %882, %542
  %889 = call float @dx.op.tertiary.f32(i32 46, float %541, float %885, float %888)  ; FMad(a,b,c)
  %890 = fmul fast float %880, %543
  %891 = call float @dx.op.tertiary.f32(i32 46, float %542, float %882, float %890)  ; FMad(a,b,c)
  %892 = fmul fast float %882, %543
  %893 = call float @dx.op.tertiary.f32(i32 46, float %542, float %885, float %892)  ; FMad(a,b,c)
  br label %894

; <label>:894                                     ; preds = %932, %870
  %895 = phi float [ 0.000000e+00, %870 ], [ %933, %932 ]
  %896 = phi float [ 0.000000e+00, %870 ], [ %934, %932 ]
  %897 = phi float [ 0.000000e+00, %870 ], [ %935, %932 ]
  %898 = phi float [ 0.000000e+00, %870 ], [ %936, %932 ]
  %899 = phi i32 [ 0, %870 ], [ %937, %932 ]
  %900 = mul i32 %899, 2
  %901 = add i32 0, %900
  %902 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %901
  %903 = load float, float* %902, align 4
  %904 = mul i32 %899, 2
  %905 = add i32 1, %904
  %906 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %905
  %907 = load float, float* %906, align 4
  %908 = fmul fast float %903, %887
  %909 = call float @dx.op.tertiary.f32(i32 46, float %907, float %891, float %908)  ; FMad(a,b,c)
  %910 = fmul fast float %903, %889
  %911 = call float @dx.op.tertiary.f32(i32 46, float %907, float %893, float %910)  ; FMad(a,b,c)
  %912 = fadd fast float %909, %536
  %913 = fadd fast float %911, %537
  %914 = fmul fast float %912, %453
  %915 = fmul fast float %913, %453
  %916 = call float @dx.op.binary.f32(i32 35, float %914, float %449)  ; FMax(a,b)
  %917 = call float @dx.op.binary.f32(i32 35, float %915, float %449)  ; FMax(a,b)
  %918 = call float @dx.op.binary.f32(i32 36, float %916, float %450)  ; FMin(a,b)
  %919 = call float @dx.op.binary.f32(i32 36, float %917, float %450)  ; FMin(a,b)
  %920 = fadd fast float %918, %447
  %921 = fadd fast float %919, %448
  %922 = uitofp i32 %509 to float
  %923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %920, float %921, float %922, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = fadd fast float %539, %457
  %926 = fcmp fast olt float %925, %924
  br i1 %926, label %927, label %932, !dx.controlflow.hints !49

; <label>:927                                     ; preds = %894
  %928 = fadd fast float %924, %897
  %929 = fadd fast float %909, %895
  %930 = fadd fast float %911, %896
  %931 = fadd fast float %898, 1.000000e+00
  br label %932

; <label>:932                                     ; preds = %927, %894
  %933 = phi float [ %929, %927 ], [ %895, %894 ]
  %934 = phi float [ %930, %927 ], [ %896, %894 ]
  %935 = phi float [ %928, %927 ], [ %897, %894 ]
  %936 = phi float [ %931, %927 ], [ %898, %894 ]
  %937 = add nuw nsw i32 %899, 1
  %938 = icmp eq i32 %937, 8
  br i1 %938, label %939, label %894

; <label>:939                                     ; preds = %932
  %940 = fdiv fast float 1.000000e+00, %936
  %941 = fcmp fast oeq float %936, 0.000000e+00
  %942 = fmul fast float %940, %935
  %943 = select i1 %941, float -1.000000e+00, float %942
  %944 = fcmp fast olt float %943, 0.000000e+00
  br i1 %944, label %1231, label %945, !dx.controlflow.hints !50

; <label>:945                                     ; preds = %939
  %946 = fmul fast float %940, %934
  %947 = select i1 %941, float 0.000000e+00, float %946
  %948 = fmul fast float %940, %933
  %949 = select i1 %941, float 0.000000e+00, float %948
  %950 = fadd fast float %949, %536
  %951 = fadd fast float %947, %537
  br i1 %512, label %952, label %956, !dx.controlflow.hints !46

; <label>:952                                     ; preds = %945
  %953 = fcmp fast olt float %636, 0x3FE6666660000000
  %954 = select i1 %953, float 1.000000e+00, float 0.000000e+00
  %955 = select i1 %953, float 0.000000e+00, float 1.000000e+00
  br label %956

; <label>:956                                     ; preds = %952, %945
  %957 = phi float [ 0.000000e+00, %952 ], [ %639, %945 ]
  %958 = phi float [ %954, %952 ], [ %640, %945 ]
  %959 = phi float [ %955, %952 ], [ %641, %945 ]
  %960 = fmul fast float %958, %637
  %961 = fmul fast float %959, %636
  %962 = fsub fast float %960, %961
  %963 = fmul fast float %959, %635
  %964 = fmul fast float %957, %637
  %965 = fsub fast float %963, %964
  %966 = fmul fast float %957, %636
  %967 = fmul fast float %958, %635
  %968 = fsub fast float %966, %967
  %969 = call float @dx.op.dot3.f32(i32 55, float %962, float %965, float %968, float %962, float %965, float %968)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = call float @dx.op.unary.f32(i32 25, float %969)  ; Rsqrt(value)
  %971 = fmul fast float %970, %335
  %972 = fmul fast float %971, %962
  %973 = fmul fast float %971, %965
  %974 = fmul fast float %968, %335
  %975 = fmul fast float %974, %970
  %976 = fmul fast float %950, %487
  %977 = call float @dx.op.tertiary.f32(i32 46, float %951, float %493, float %976)  ; FMad(a,b,c)
  %978 = call float @dx.op.tertiary.f32(i32 46, float %943, float %499, float %977)  ; FMad(a,b,c)
  %979 = fadd fast float %978, %505
  %980 = fmul fast float %950, %488
  %981 = call float @dx.op.tertiary.f32(i32 46, float %951, float %494, float %980)  ; FMad(a,b,c)
  %982 = call float @dx.op.tertiary.f32(i32 46, float %943, float %500, float %981)  ; FMad(a,b,c)
  %983 = fadd fast float %982, %506
  %984 = fmul fast float %950, %489
  %985 = call float @dx.op.tertiary.f32(i32 46, float %951, float %495, float %984)  ; FMad(a,b,c)
  %986 = call float @dx.op.tertiary.f32(i32 46, float %943, float %501, float %985)  ; FMad(a,b,c)
  %987 = fadd fast float %986, %507
  %988 = fmul fast float %950, %490
  %989 = call float @dx.op.tertiary.f32(i32 46, float %951, float %496, float %988)  ; FMad(a,b,c)
  %990 = call float @dx.op.tertiary.f32(i32 46, float %943, float %502, float %989)  ; FMad(a,b,c)
  %991 = fadd fast float %990, %508
  %992 = fdiv fast float 1.000000e+00, %991
  %993 = fmul fast float %992, %979
  %994 = fmul fast float %992, %983
  %995 = fmul fast float %992, %987
  %996 = fsub fast float %338, %972
  %997 = fsub fast float %339, %973
  %998 = fsub fast float %340, %975
  %999 = fsub fast float %993, %996
  %1000 = fsub fast float %994, %997
  %1001 = fsub fast float %995, %998
  %1002 = call float @dx.op.dot3.f32(i32 55, float %999, float %1000, float %1001, float %999, float %1000, float %1001)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.unary.f32(i32 25, float %1002)  ; Rsqrt(value)
  %1004 = fmul fast float %999, %1003
  %1005 = fmul fast float %1000, %1003
  %1006 = fmul fast float %1001, %1003
  %1007 = fsub fast float %517, %996
  %1008 = fsub fast float %518, %997
  %1009 = fsub fast float %519, %998
  %1010 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %1007, float %1008, float %1009)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %1004, float %1005, float %1006)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = fdiv fast float 1.000000e+00, %1011
  %1013 = fmul fast float %1012, %1010
  %1014 = fmul fast float %1013, %1004
  %1015 = fmul fast float %1013, %1005
  %1016 = fmul fast float %1013, %1006
  %1017 = fadd fast float %1014, %996
  %1018 = fadd fast float %1015, %997
  %1019 = fadd fast float %1016, %998
  %1020 = fadd fast float %972, %338
  %1021 = fadd fast float %973, %339
  %1022 = fadd fast float %975, %340
  %1023 = fsub fast float %993, %1020
  %1024 = fsub fast float %994, %1021
  %1025 = fsub fast float %995, %1022
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1024, float %1025, float %1023, float %1024, float %1025)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = call float @dx.op.unary.f32(i32 25, float %1026)  ; Rsqrt(value)
  %1028 = fmul fast float %1027, %1023
  %1029 = fmul fast float %1027, %1024
  %1030 = fmul fast float %1027, %1025
  %1031 = fsub fast float %517, %1020
  %1032 = fsub fast float %518, %1021
  %1033 = fsub fast float %519, %1022
  %1034 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %1031, float %1032, float %1033)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %1028, float %1029, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = fdiv fast float 1.000000e+00, %1035
  %1037 = fmul fast float %1036, %1034
  %1038 = fmul fast float %1037, %1028
  %1039 = fmul fast float %1037, %1029
  %1040 = fmul fast float %1037, %1030
  %1041 = fadd fast float %1038, %1020
  %1042 = fadd fast float %1039, %1021
  %1043 = fadd fast float %1040, %1022
  %1044 = fmul fast float %1017, %463
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %469, float %1044)  ; FMad(a,b,c)
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %475, float %1045)  ; FMad(a,b,c)
  %1047 = fadd fast float %1046, %481
  %1048 = fmul fast float %1017, %464
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %470, float %1048)  ; FMad(a,b,c)
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %476, float %1049)  ; FMad(a,b,c)
  %1051 = fadd fast float %1050, %482
  %1052 = fmul fast float %1017, %466
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %472, float %1052)  ; FMad(a,b,c)
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %478, float %1053)  ; FMad(a,b,c)
  %1055 = fadd fast float %1054, %484
  %1056 = fmul fast float %1041, %463
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %469, float %1056)  ; FMad(a,b,c)
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %475, float %1057)  ; FMad(a,b,c)
  %1059 = fadd fast float %1058, %481
  %1060 = fmul fast float %1041, %464
  %1061 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %470, float %1060)  ; FMad(a,b,c)
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %476, float %1061)  ; FMad(a,b,c)
  %1063 = fadd fast float %1062, %482
  %1064 = fmul fast float %1041, %466
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %472, float %1064)  ; FMad(a,b,c)
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %478, float %1065)  ; FMad(a,b,c)
  %1067 = fadd fast float %1066, %484
  %1068 = fdiv fast float 1.000000e+00, %1055
  %1069 = fmul fast float %1068, %1047
  %1070 = fmul fast float %1068, %1051
  %1071 = fdiv fast float 1.000000e+00, %1067
  %1072 = fmul fast float %1071, %1059
  %1073 = fmul fast float %1071, %1063
  %1074 = fsub fast float %1072, %1069
  %1075 = fsub fast float %1073, %1070
  %1076 = call float @dx.op.dot2.f32(i32 54, float %1074, float %1075, float %1074, float %1075)  ; Dot2(ax,ay,bx,by)
  %1077 = call float @dx.op.unary.f32(i32 25, float %1076)  ; Rsqrt(value)
  %1078 = fmul fast float %1074, %1077
  %1079 = fmul fast float %1075, %1077
  %1080 = fmul fast float %1074, %1074
  %1081 = fmul fast float %1075, %1075
  %1082 = fadd fast float %1080, %1081
  %1083 = call float @dx.op.unary.f32(i32 24, float %1082)  ; Sqrt(value)
  %1084 = fmul fast float %1083, 5.000000e-01
  br i1 %512, label %1177, label %1085, !dx.controlflow.hints !47

; <label>:1085                                    ; preds = %956
  %1086 = fsub fast float %338, %330
  %1087 = fsub fast float %339, %331
  %1088 = fsub fast float %340, %332
  %1089 = fsub fast float %993, %1086
  %1090 = fsub fast float %994, %1087
  %1091 = fsub fast float %995, %1088
  %1092 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1091, float %1089, float %1090, float %1091)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = call float @dx.op.unary.f32(i32 25, float %1092)  ; Rsqrt(value)
  %1094 = fmul fast float %1093, %1089
  %1095 = fmul fast float %1093, %1090
  %1096 = fmul fast float %1093, %1091
  %1097 = fsub fast float %517, %1086
  %1098 = fsub fast float %518, %1087
  %1099 = fsub fast float %519, %1088
  %1100 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %1097, float %1098, float %1099)  ; Dot3(ax,ay,az,bx,by,bz)
  %1101 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %1094, float %1095, float %1096)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = fdiv fast float 1.000000e+00, %1101
  %1103 = fmul fast float %1102, %1100
  %1104 = fmul fast float %1103, %1094
  %1105 = fmul fast float %1103, %1095
  %1106 = fmul fast float %1103, %1096
  %1107 = fadd fast float %1104, %1086
  %1108 = fadd fast float %1105, %1087
  %1109 = fadd fast float %1106, %1088
  %1110 = fadd fast float %338, %330
  %1111 = fadd fast float %339, %331
  %1112 = fadd fast float %340, %332
  %1113 = fsub fast float %993, %1110
  %1114 = fsub fast float %994, %1111
  %1115 = fsub fast float %995, %1112
  %1116 = call float @dx.op.dot3.f32(i32 55, float %1113, float %1114, float %1115, float %1113, float %1114, float %1115)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = call float @dx.op.unary.f32(i32 25, float %1116)  ; Rsqrt(value)
  %1118 = fmul fast float %1117, %1113
  %1119 = fmul fast float %1117, %1114
  %1120 = fmul fast float %1117, %1115
  %1121 = fsub fast float %517, %1110
  %1122 = fsub fast float %518, %1111
  %1123 = fsub fast float %519, %1112
  %1124 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %1121, float %1122, float %1123)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %1118, float %1119, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = fdiv fast float 1.000000e+00, %1125
  %1127 = fmul fast float %1126, %1124
  %1128 = fmul fast float %1127, %1118
  %1129 = fmul fast float %1127, %1119
  %1130 = fmul fast float %1127, %1120
  %1131 = fadd fast float %1128, %1110
  %1132 = fadd fast float %1129, %1111
  %1133 = fadd fast float %1130, %1112
  %1134 = fmul fast float %1107, %463
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %469, float %1134)  ; FMad(a,b,c)
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1109, float %475, float %1135)  ; FMad(a,b,c)
  %1137 = fadd fast float %1136, %481
  %1138 = fmul fast float %1107, %464
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %470, float %1138)  ; FMad(a,b,c)
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1109, float %476, float %1139)  ; FMad(a,b,c)
  %1141 = fadd fast float %1140, %482
  %1142 = fmul fast float %1107, %466
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1108, float %472, float %1142)  ; FMad(a,b,c)
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1109, float %478, float %1143)  ; FMad(a,b,c)
  %1145 = fadd fast float %1144, %484
  %1146 = fmul fast float %1131, %463
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %469, float %1146)  ; FMad(a,b,c)
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1133, float %475, float %1147)  ; FMad(a,b,c)
  %1149 = fadd fast float %1148, %481
  %1150 = fmul fast float %1131, %464
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %470, float %1150)  ; FMad(a,b,c)
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1133, float %476, float %1151)  ; FMad(a,b,c)
  %1153 = fadd fast float %1152, %482
  %1154 = fmul fast float %1131, %466
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %472, float %1154)  ; FMad(a,b,c)
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1133, float %478, float %1155)  ; FMad(a,b,c)
  %1157 = fadd fast float %1156, %484
  %1158 = fdiv fast float 1.000000e+00, %1145
  %1159 = fmul fast float %1158, %1137
  %1160 = fmul fast float %1158, %1141
  %1161 = fdiv fast float 1.000000e+00, %1157
  %1162 = fmul fast float %1161, %1149
  %1163 = fmul fast float %1161, %1153
  %1164 = fsub fast float %1162, %1159
  %1165 = fsub fast float %1163, %1160
  %1166 = call float @dx.op.dot2.f32(i32 54, float %1164, float %1165, float %1164, float %1165)  ; Dot2(ax,ay,bx,by)
  %1167 = call float @dx.op.unary.f32(i32 25, float %1166)  ; Rsqrt(value)
  %1168 = fmul fast float %1164, %1167
  %1169 = fmul fast float %1165, %1167
  %1170 = fmul fast float %1164, %1164
  %1171 = fmul fast float %1165, %1165
  %1172 = fadd fast float %1170, %1171
  %1173 = call float @dx.op.unary.f32(i32 24, float %1172)  ; Sqrt(value)
  %1174 = fmul fast float %1173, 5.000000e-01
  %1175 = fcmp fast olt float %1174, %1084
  br i1 %1175, label %1176, label %1177, !dx.controlflow.hints !48

; <label>:1176                                    ; preds = %1085
  br label %1177

; <label>:1177                                    ; preds = %1176, %1085, %956
  %1178 = phi float [ %1084, %956 ], [ %1174, %1176 ], [ %1084, %1085 ]
  %1179 = phi float [ %1084, %956 ], [ %1084, %1176 ], [ %1174, %1085 ]
  %1180 = phi float [ %1078, %956 ], [ %1078, %1176 ], [ %1168, %1085 ]
  %1181 = phi float [ %1079, %956 ], [ %1079, %1176 ], [ %1169, %1085 ]
  %1182 = fsub fast float %1179, %1178
  %1183 = fmul fast float %1180, %1180
  %1184 = fmul fast float %1183, %1182
  %1185 = fadd fast float %1184, %1178
  %1186 = fmul fast float %1180, %1182
  %1187 = fmul fast float %1186, %1181
  %1188 = fmul fast float %1181, %1181
  %1189 = fmul fast float %1188, %1182
  %1190 = fadd fast float %1189, %1178
  %1191 = fmul fast float %1185, %542
  %1192 = call float @dx.op.tertiary.f32(i32 46, float %541, float %1187, float %1191)  ; FMad(a,b,c)
  %1193 = fmul fast float %1187, %542
  %1194 = call float @dx.op.tertiary.f32(i32 46, float %541, float %1190, float %1193)  ; FMad(a,b,c)
  %1195 = fmul fast float %1185, %543
  %1196 = call float @dx.op.tertiary.f32(i32 46, float %542, float %1187, float %1195)  ; FMad(a,b,c)
  %1197 = fmul fast float %1187, %543
  %1198 = call float @dx.op.tertiary.f32(i32 46, float %542, float %1190, float %1197)  ; FMad(a,b,c)
  br label %1199

; <label>:1199                                    ; preds = %1199, %1177
  %1200 = phi float [ 0.000000e+00, %1177 ], [ %1226, %1199 ]
  %1201 = phi i32 [ 0, %1177 ], [ %1227, %1199 ]
  %1202 = mul i32 %1201, 2
  %1203 = add i32 0, %1202
  %1204 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1203
  %1205 = load float, float* %1204, align 4
  %1206 = mul i32 %1201, 2
  %1207 = add i32 1, %1206
  %1208 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1207
  %1209 = load float, float* %1208, align 4
  %1210 = fmul fast float %1205, %1192
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1196, float %1210)  ; FMad(a,b,c)
  %1212 = fmul fast float %1205, %1194
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1198, float %1212)  ; FMad(a,b,c)
  %1214 = fadd fast float %1211, %536
  %1215 = fadd fast float %1213, %537
  %1216 = fmul fast float %1214, %453
  %1217 = fmul fast float %1215, %453
  %1218 = call float @dx.op.binary.f32(i32 35, float %1216, float %449)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 35, float %1217, float %449)  ; FMax(a,b)
  %1220 = call float @dx.op.binary.f32(i32 36, float %1218, float %450)  ; FMin(a,b)
  %1221 = call float @dx.op.binary.f32(i32 36, float %1219, float %450)  ; FMin(a,b)
  %1222 = fadd fast float %1220, %447
  %1223 = fadd fast float %1221, %448
  %1224 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %20, float %1222, float %1223, float %922, float undef, i32 0, i32 0, i32 undef, float %925)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = fadd fast float %1225, %1200
  %1227 = add nuw nsw i32 %1201, 1
  %1228 = icmp eq i32 %1227, 8
  br i1 %1228, label %1229, label %1199

; <label>:1229                                    ; preds = %1199
  %1230 = fmul fast float %1226, 1.250000e-01
  br label %1231

; <label>:1231                                    ; preds = %1229, %939, %588
  %1232 = phi float [ %615, %588 ], [ %1230, %1229 ], [ 1.000000e+00, %939 ]
  %1233 = fcmp fast ogt float %1232, 0.000000e+00
  %1234 = xor i1 %72, true
  %1235 = and i1 %1233, %1234
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1238 = fcmp fast olt float %1237, 0.000000e+00
  %1239 = and i1 %1235, %1238
  br i1 %1239, label %1240, label %1351, !dx.controlflow.hints !51

; <label>:1240                                    ; preds = %1231
  %1241 = fadd fast float %536, %449
  %1242 = fadd fast float %537, %449
  %1243 = fadd fast float %539, %457
  %1244 = fmul fast float %536, %487
  %1245 = call float @dx.op.tertiary.f32(i32 46, float %537, float %493, float %1244)  ; FMad(a,b,c)
  %1246 = call float @dx.op.tertiary.f32(i32 46, float %539, float %499, float %1245)  ; FMad(a,b,c)
  %1247 = fadd fast float %1246, %505
  %1248 = fmul fast float %536, %488
  %1249 = call float @dx.op.tertiary.f32(i32 46, float %537, float %494, float %1248)  ; FMad(a,b,c)
  %1250 = call float @dx.op.tertiary.f32(i32 46, float %539, float %500, float %1249)  ; FMad(a,b,c)
  %1251 = fadd fast float %1250, %506
  %1252 = fmul fast float %536, %489
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %537, float %495, float %1252)  ; FMad(a,b,c)
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %539, float %501, float %1253)  ; FMad(a,b,c)
  %1255 = fadd fast float %1254, %507
  %1256 = fmul fast float %536, %490
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %537, float %496, float %1256)  ; FMad(a,b,c)
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %539, float %502, float %1257)  ; FMad(a,b,c)
  %1259 = fadd fast float %1258, %508
  %1260 = fmul fast float %1241, %487
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %493, float %1260)  ; FMad(a,b,c)
  %1262 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %499, float %1261)  ; FMad(a,b,c)
  %1263 = fadd fast float %1262, %505
  %1264 = fmul fast float %1241, %488
  %1265 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %494, float %1264)  ; FMad(a,b,c)
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %500, float %1265)  ; FMad(a,b,c)
  %1267 = fadd fast float %1266, %506
  %1268 = fmul fast float %1241, %489
  %1269 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %495, float %1268)  ; FMad(a,b,c)
  %1270 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %501, float %1269)  ; FMad(a,b,c)
  %1271 = fadd fast float %1270, %507
  %1272 = fmul fast float %1241, %490
  %1273 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %496, float %1272)  ; FMad(a,b,c)
  %1274 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %502, float %1273)  ; FMad(a,b,c)
  %1275 = fadd fast float %1274, %508
  %1276 = fdiv fast float 1.000000e+00, %1259
  %1277 = fmul fast float %1276, %1247
  %1278 = fmul fast float %1276, %1251
  %1279 = fmul fast float %1276, %1255
  %1280 = fdiv fast float 1.000000e+00, %1275
  %1281 = fmul fast float %1280, %1263
  %1282 = fmul fast float %1280, %1267
  %1283 = fmul fast float %1280, %1271
  %1284 = fsub fast float %1277, %1281
  %1285 = fsub fast float %1278, %1282
  %1286 = fsub fast float %1279, %1283
  %1287 = fmul fast float %1284, %1284
  %1288 = fmul fast float %1285, %1285
  %1289 = fadd fast float %1287, %1288
  %1290 = fmul fast float %1286, %1286
  %1291 = fadd fast float %1289, %1290
  %1292 = call float @dx.op.unary.f32(i32 24, float %1291)  ; Sqrt(value)
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1297 = extractvalue %dx.types.CBufRet.f32 %1293, 3
  %1298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.CBufRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.CBufRet.f32 %1298, 2
  %1302 = extractvalue %dx.types.CBufRet.f32 %1298, 3
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = extractvalue %dx.types.CBufRet.f32 %1303, 1
  %1306 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1307 = extractvalue %dx.types.CBufRet.f32 %1303, 3
  %1308 = fmul fast float %1294, %1277
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1295, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1296, float %1309)  ; FMad(a,b,c)
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1259, float %1297, float %1310)  ; FMad(a,b,c)
  %1312 = fmul fast float %1299, %1277
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1300, float %1312)  ; FMad(a,b,c)
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1301, float %1313)  ; FMad(a,b,c)
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1259, float %1302, float %1314)  ; FMad(a,b,c)
  %1316 = fmul fast float %1304, %1277
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1305, float %1316)  ; FMad(a,b,c)
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1306, float %1317)  ; FMad(a,b,c)
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1259, float %1307, float %1318)  ; FMad(a,b,c)
  %1320 = fmul fast float %1294, %1281
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1295, float %1320)  ; FMad(a,b,c)
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1296, float %1321)  ; FMad(a,b,c)
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %1297, float %1322)  ; FMad(a,b,c)
  %1324 = fmul fast float %1299, %1281
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1300, float %1324)  ; FMad(a,b,c)
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1301, float %1325)  ; FMad(a,b,c)
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %1302, float %1326)  ; FMad(a,b,c)
  %1328 = fmul fast float %1304, %1281
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1305, float %1328)  ; FMad(a,b,c)
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1306, float %1329)  ; FMad(a,b,c)
  %1331 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %1307, float %1330)  ; FMad(a,b,c)
  %1332 = fdiv fast float 1.000000e+00, %1319
  %1333 = fmul fast float %1332, %1311
  %1334 = fmul fast float %1332, %1315
  %1335 = fdiv fast float 1.000000e+00, %1331
  %1336 = fmul fast float %1335, %1323
  %1337 = fmul fast float %1335, %1327
  %1338 = fsub fast float %1333, %1336
  %1339 = fsub fast float %1334, %1337
  %1340 = fmul fast float %1338, 5.000000e-01
  %1341 = fmul fast float %1339, 5.000000e-01
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.CBufRet.f32 %1342, 1
  %1345 = fmul fast float %1340, %1343
  %1346 = fmul fast float %1341, %1344
  %1347 = fmul fast float %1345, %1345
  %1348 = fmul fast float %1346, %1346
  %1349 = fadd fast float %1347, %1348
  %1350 = call float @dx.op.unary.f32(i32 24, float %1349)  ; Sqrt(value)
  br label %1351

; <label>:1351                                    ; preds = %1240, %1231
  %1352 = phi float [ %1292, %1240 ], [ 0.000000e+00, %1231 ]
  %1353 = phi float [ %1350, %1240 ], [ 0.000000e+00, %1231 ]
  %1354 = fadd fast float %1232, -1.000000e+00
  %1355 = fmul fast float %1354, %426
  %1356 = fadd fast float %1355, 1.000000e+00
  %1357 = fmul fast float %1356, %438
  br label %1358

; <label>:1358                                    ; preds = %1351, %405
  %1359 = phi float [ %1352, %1351 ], [ 0.000000e+00, %405 ]
  %1360 = phi float [ %1353, %1351 ], [ 0.000000e+00, %405 ]
  %1361 = phi float [ %1357, %1351 ], [ %438, %405 ]
  %1362 = call float @dx.op.binary.f32(i32 36, float %1361, float %1361)  ; FMin(a,b)
  %1363 = call float @dx.op.binary.f32(i32 36, float %1361, float %1362)  ; FMin(a,b)
  %1364 = fcmp fast ogt float %1363, 0.000000e+00
  %1365 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %378, float %379, float %380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1366 = fcmp fast ogt float %1365, 0.000000e+00
  %1367 = and i1 %1364, %1366
  br i1 %1367, label %1368, label %1649, !dx.controlflow.hints !52

; <label>:1368                                    ; preds = %1358
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 1
  %1373 = select i1 %72, float %1370, float %1372
  %1374 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1375 = extractvalue %dx.types.CBufRet.f32 %1371, 2
  %1376 = select i1 %72, float %1374, float %1375
  %1377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.i32 %1377, 0
  %1379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.i32 %1379, 0
  %1381 = select i1 %72, i32 %1378, i32 %1380
  %1382 = fcmp fast ogt float %1359, 0.000000e+00
  br i1 %1382, label %1383, label %1387, !dx.controlflow.hints !53

; <label>:1383                                    ; preds = %1368
  %1384 = fptosi float %1360 to i32
  %1385 = call i32 @dx.op.binary.i32(i32 37, i32 %1384, i32 1)  ; IMax(a,b)
  %1386 = call i32 @dx.op.binary.i32(i32 38, i32 %1385, i32 16)  ; IMin(a,b)
  br label %1387

; <label>:1387                                    ; preds = %1383, %1368
  %1388 = phi float [ 0.000000e+00, %1383 ], [ 1.000000e+00, %1368 ]
  %1389 = phi float [ %1359, %1383 ], [ %1373, %1368 ]
  %1390 = phi i32 [ %1386, %1383 ], [ %1381, %1368 ]
  %1391 = fcmp fast olt float %1389, 5.000000e-01
  %1392 = icmp eq i32 %1390, 0
  %1393 = or i1 %1391, %1392
  br i1 %1393, label %1644, label %1394, !dx.controlflow.hints !54

; <label>:1394                                    ; preds = %1387
  %1395 = fsub fast float %338, %134
  %1396 = fsub fast float %339, %135
  %1397 = fsub fast float %340, %136
  %1398 = fmul fast float %1395, %1395
  %1399 = fmul fast float %1396, %1396
  %1400 = fadd fast float %1398, %1399
  %1401 = fmul fast float %1397, %1397
  %1402 = fadd fast float %1400, %1401
  %1403 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.i32 %1404, 0
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1389, %335
  %1408 = fdiv fast float %1407, %1403
  %1409 = call float @dx.op.binary.f32(i32 36, float %1408, float 1.000000e+01)  ; FMin(a,b)
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.CBufRet.f32 %1410, 2
  %1414 = extractvalue %dx.types.CBufRet.f32 %1410, 3
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.CBufRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.CBufRet.f32 %1415, 2
  %1419 = extractvalue %dx.types.CBufRet.f32 %1415, 3
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.CBufRet.f32 %1420, 2
  %1424 = extractvalue %dx.types.CBufRet.f32 %1420, 3
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.CBufRet.f32 %1425, 2
  %1429 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  %1434 = extractvalue %dx.types.CBufRet.f32 %1430, 3
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.CBufRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.CBufRet.f32 %1435, 2
  %1439 = extractvalue %dx.types.CBufRet.f32 %1435, 3
  %1440 = select i1 %72, float %1411, float %1426
  %1441 = select i1 %72, float %1416, float %1431
  %1442 = select i1 %72, float %1421, float %1436
  %1443 = select i1 %72, float %1412, float %1427
  %1444 = select i1 %72, float %1417, float %1432
  %1445 = select i1 %72, float %1422, float %1437
  %1446 = select i1 %72, float %1413, float %1428
  %1447 = select i1 %72, float %1418, float %1433
  %1448 = select i1 %72, float %1423, float %1438
  %1449 = select i1 %72, float %1414, float %1429
  %1450 = select i1 %72, float %1419, float %1434
  %1451 = select i1 %72, float %1424, float %1439
  %1452 = fmul fast float %253, 0x401061CAC0000000
  %1453 = fmul fast float %253, 0x4023E1D7E0000000
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.CBufRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.CBufRet.f32 %1454, 2
  %1458 = extractvalue %dx.types.CBufRet.f32 %1454, 3
  %1459 = fsub fast float -0.000000e+00, %378
  %1460 = fmul fast float %380, %1459
  %1461 = fmul fast float %378, %1459
  %1462 = fmul fast float %379, %379
  %1463 = fsub fast float %1461, %1462
  %1464 = fdiv fast float 1.000000e+00, %79
  %1465 = fmul fast float %1457, %68
  %1466 = fmul fast float %1458, %69
  %1467 = fmul fast float %1389, %378
  %1468 = fmul fast float %1389, %380
  %1469 = fadd fast float %1467, %134
  %1470 = fadd fast float %1468, %136
  %1471 = fadd fast float %1453, 5.000000e-01
  %1472 = call float @dx.op.unary.f32(i32 22, float %1471)  ; Frc(value)
  %1473 = bitcast float %1472 to i32
  %1474 = ashr i32 %1473, 1
  %1475 = add nsw i32 %1474, 532487669
  %1476 = bitcast i32 %1475 to float
  %1477 = fmul fast float %1476, %1409
  %1478 = fadd fast float %1452, 5.000000e-01
  %1479 = call float @dx.op.unary.f32(i32 22, float %1478)  ; Frc(value)
  %1480 = fmul fast float %1479, 0x401921FB60000000
  %1481 = call float @dx.op.unary.f32(i32 12, float %1480)  ; Cos(value)
  %1482 = fmul fast float %1481, %1481
  %1483 = fsub fast float 1.000000e+00, %1482
  %1484 = bitcast float %1483 to i32
  %1485 = ashr i32 %1484, 1
  %1486 = add nsw i32 %1485, 532487669
  %1487 = bitcast i32 %1486 to float
  %1488 = fmul fast float %1477, %1481
  %1489 = fmul fast float %1488, %379
  %1490 = fmul fast float %1488, %1459
  %1491 = fadd fast float %1469, %1489
  %1492 = fmul fast float %1487, %1477
  %1493 = fmul fast float %1460, %1492
  %1494 = fmul fast float %1492, %380
  %1495 = fmul fast float %1492, %1463
  %1496 = fsub fast float %1491, %1493
  %1497 = fadd fast float %1494, %1389
  %1498 = fmul fast float %1497, %379
  %1499 = fadd fast float %1490, %135
  %1500 = fadd fast float %1499, %1498
  %1501 = fadd fast float %1470, %1495
  %1502 = fmul fast float %1496, %1440
  %1503 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1443, float %1502)  ; FMad(a,b,c)
  %1504 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1446, float %1503)  ; FMad(a,b,c)
  %1505 = fadd fast float %1504, %1449
  %1506 = fmul fast float %1496, %1441
  %1507 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1444, float %1506)  ; FMad(a,b,c)
  %1508 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1447, float %1507)  ; FMad(a,b,c)
  %1509 = fadd fast float %1508, %1450
  %1510 = fmul fast float %1496, %1442
  %1511 = call float @dx.op.tertiary.f32(i32 46, float %1500, float %1445, float %1510)  ; FMad(a,b,c)
  %1512 = call float @dx.op.tertiary.f32(i32 46, float %1501, float %1448, float %1511)  ; FMad(a,b,c)
  %1513 = fadd fast float %1512, %1451
  %1514 = fdiv fast float 1.000000e+00, %1513
  %1515 = fmul fast float %1505, 5.000000e-01
  %1516 = fmul fast float %1509, -5.000000e-01
  %1517 = fmul fast float %1515, %1514
  %1518 = fmul fast float %1516, %1514
  %1519 = fsub fast float 5.000000e-01, %1465
  %1520 = fadd fast float %1519, %1517
  %1521 = fsub fast float 5.000000e-01, %1466
  %1522 = fadd fast float %1521, %1518
  %1523 = fsub fast float %1514, %1464
  %1524 = call float @dx.op.dot2.f32(i32 54, float %1520, float %1522, float %1520, float %1522)  ; Dot2(ax,ay,bx,by)
  %1525 = call float @dx.op.binary.f32(i32 35, float %1524, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1526 = call float @dx.op.dot2.f32(i32 54, float %1455, float %1456, float %1455, float %1456)  ; Dot2(ax,ay,bx,by)
  %1527 = fmul fast float %1526, %1525
  %1528 = call float @dx.op.unary.f32(i32 25, float %1527)  ; Rsqrt(value)
  %1529 = fmul fast float %1528, %1520
  %1530 = fmul fast float %1528, %1522
  %1531 = fadd fast float %1529, %1465
  %1532 = fadd fast float %1530, %1466
  %1533 = fmul fast float %1520, %1455
  %1534 = fmul fast float %1522, %1456
  %1535 = fmul fast float %1533, %1533
  %1536 = fmul fast float %1534, %1534
  %1537 = fadd fast float %1535, %1536
  %1538 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1539 = fdiv fast float 1.000000e+00, %1538
  %1540 = fmul fast float %1538, 3.906250e-03
  %1541 = fmul fast float %239, 0x3F70624DE0000000
  %1542 = fadd fast float %1541, 0x3F70624DE0000000
  %1543 = icmp sgt i32 %1390, -1
  br i1 %1543, label %1544, label %1609

; <label>:1544                                    ; preds = %1394
  br label %1545

; <label>:1545                                    ; preds = %1605, %1544
  %1546 = phi float [ %1580, %1605 ], [ %79, %1544 ]
  %1547 = phi float [ %1567, %1605 ], [ %79, %1544 ]
  %1548 = phi float [ %1547, %1605 ], [ %79, %1544 ]
  %1549 = phi i32 [ %1606, %1605 ], [ 0, %1544 ]
  %1550 = sitofp i32 %1549 to float
  %1551 = fadd fast float %253, 5.000000e-01
  %1552 = call float @dx.op.unary.f32(i32 22, float %1551)  ; Frc(value)
  %1553 = fadd fast float %1550, %1552
  %1554 = sitofp i32 %1390 to float
  %1555 = fdiv fast float %1553, %1554
  %1556 = fmul fast float %1555, %1555
  %1557 = fsub fast float %1556, %1555
  %1558 = fmul fast float %1557, %1388
  %1559 = fadd fast float %1558, %1555
  %1560 = call float @dx.op.binary.f32(i32 36, float %1559, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1561 = fmul fast float %1560, %1520
  %1562 = fmul fast float %1560, %1522
  %1563 = fmul fast float %1560, %1523
  %1564 = fadd fast float %1561, %1531
  %1565 = fadd fast float %1562, %1532
  %1566 = fadd fast float %1563, %1464
  %1567 = fdiv fast float 1.000000e+00, %1566
  %1568 = icmp ne i32 %1405, 0
  %1569 = fmul fast float %1540, %1560
  %1570 = call float @dx.op.binary.f32(i32 36, float %1569, float %1406)  ; FMin(a,b)
  %1571 = select i1 %1568, float %1570, float 0.000000e+00
  %1572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1564, float %1565, float undef, float undef, i32 0, i32 0, i32 undef, float %1571)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = fcmp fast ogt float %1573, -1.000000e+00
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 1
  %1577 = select i1 %1574, float %1576, float 1.000000e+00
  %1578 = fadd fast float %1573, 1.000000e+00
  %1579 = fmul fast float %1577, %1578
  %1580 = call float @dx.op.unary.f32(i32 6, float %1579)  ; FAbs(value)
  %1581 = fmul fast float %1580, %1542
  %1582 = fsub fast float %1567, %1580
  %1583 = fsub fast float %1582, %1581
  %1584 = fcmp fast ogt float %1583, 0.000000e+00
  %1585 = fcmp fast ogt float %1376, 0.000000e+00
  br i1 %1585, label %1586, label %1589, !dx.controlflow.hints !55

; <label>:1586                                    ; preds = %1545
  %1587 = fsub fast float %1567, %1548
  %1588 = call float @dx.op.binary.f32(i32 35, float %1587, float %1376)  ; FMax(a,b)
  br label %1589

; <label>:1589                                    ; preds = %1586, %1545
  %1590 = phi float [ %1588, %1586 ], [ %1389, %1545 ]
  %1591 = fcmp fast olt float %1583, %1590
  %1592 = fcmp uge float %1573, -1.000000e+00
  %1593 = or i1 %72, %1592
  %1594 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1595 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1596 = fcmp fast oeq float %1564, %1594
  %1597 = fcmp fast oeq float %1565, %1595
  %1598 = and i1 %1596, %1597
  %1599 = and i1 %1593, %1598
  %1600 = and i1 %1584, %1591
  %1601 = and i1 %1600, %1599
  %1602 = fcmp fast ogt float %1560, %1539
  %1603 = and i1 %1602, %1601
  %1604 = zext i1 %1603 to i32
  br i1 %1603, label %1608, label %1605, !dx.controlflow.hints !56

; <label>:1605                                    ; preds = %1589
  %1606 = add nuw nsw i32 %1549, 1
  %1607 = icmp slt i32 %1549, %1390
  br i1 %1607, label %1545, label %1608

; <label>:1608                                    ; preds = %1605, %1589
  br label %1609

; <label>:1609                                    ; preds = %1608, %1394
  %1610 = phi i32 [ 0, %1394 ], [ %1604, %1608 ]
  %1611 = phi float [ %79, %1394 ], [ %1580, %1608 ]
  %1612 = phi float [ %79, %1394 ], [ %1546, %1608 ]
  %1613 = phi float [ %79, %1394 ], [ %1567, %1608 ]
  %1614 = phi float [ %79, %1394 ], [ %1547, %1608 ]
  %1615 = fsub fast float %1614, %1612
  %1616 = fsub fast float %1613, %1611
  %1617 = fsub fast float %1615, %1616
  %1618 = fcmp fast une float %1617, 0.000000e+00
  %1619 = fmul fast float %1615, %1613
  %1620 = fmul fast float %1614, %1616
  %1621 = fsub fast float %1619, %1620
  %1622 = fdiv fast float 1.000000e+00, %1617
  %1623 = fmul fast float %1621, %1622
  %1624 = select i1 %1618, float %1623, float %1613
  %1625 = fdiv fast float 1.000000e+00, %1624
  %1626 = fsub fast float %1625, %1464
  %1627 = fdiv fast float %1626, %1523
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1629 = fmul fast float %1628, %1520
  %1630 = fmul fast float %1628, %1522
  %1631 = fadd fast float %1629, %1531
  %1632 = fadd fast float %1630, %1532
  %1633 = fadd fast float %1631, -5.000000e-01
  %1634 = fadd fast float %1632, -5.000000e-01
  %1635 = call float @dx.op.unary.f32(i32 6, float %1633)  ; FAbs(value)
  %1636 = call float @dx.op.unary.f32(i32 6, float %1634)  ; FAbs(value)
  %1637 = fadd fast float %1635, -5.000000e-01
  %1638 = fadd fast float %1636, -5.000000e-01
  %1639 = call float @dx.op.binary.f32(i32 35, float %1637, float %1638)  ; FMax(a,b)
  %1640 = fcmp fast olt float %1639, 0.000000e+00
  %1641 = icmp ne i32 %1610, 0
  %1642 = and i1 %1641, %1640
  %1643 = select i1 %1642, float 0.000000e+00, float 1.000000e+00
  br label %1644

; <label>:1644                                    ; preds = %1609, %1387
  %1645 = phi float [ %1643, %1609 ], [ 1.000000e+00, %1387 ]
  %1646 = fmul fast float %1645, %1361
  %1647 = fmul fast float %1645, %1361
  %1648 = fmul fast float %1645, %1361
  br label %1649

; <label>:1649                                    ; preds = %1644, %1358
  %1650 = phi float [ %1646, %1644 ], [ %1361, %1358 ]
  %1651 = phi float [ %1647, %1644 ], [ %1361, %1358 ]
  %1652 = phi float [ %1648, %1644 ], [ %1361, %1358 ]
  %1653 = call float @dx.op.binary.f32(i32 36, float %1651, float %1652)  ; FMin(a,b)
  %1654 = call float @dx.op.binary.f32(i32 36, float %1650, float %1653)  ; FMin(a,b)
  %1655 = fcmp fast ogt float %1654, 0x3F10000000000000
  %1656 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1655)  ; WaveAnyTrue(cond)
  %1657 = select i1 %1656, i32 %317, i32 0
  %1658 = or i32 %312, %1657
  %1659 = lshr i32 %258, 5
  %1660 = lshr i32 %259, 5
  %1661 = fcmp fast olt float %1650, 0x3F10000000000000
  %1662 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1661)  ; WaveAllTrue(cond)
  %1663 = fcmp fast ogt float %1650, 0x3FEFFF8000000000
  %1664 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1663)  ; WaveAllTrue(cond)
  %1665 = or i1 %1662, %1664
  %1666 = xor i1 %1665, true
  %1667 = and i32 %259, 16
  %1668 = lshr i32 %258, 1
  %1669 = and i32 %1668, 8
  %1670 = icmp eq i32 %1667, 0
  %1671 = or i32 %1669, %38
  %1672 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1672, label %1673, label %1715, !dx.controlflow.hints !57

; <label>:1673                                    ; preds = %1649
  %1674 = shl i32 1, %1671
  %1675 = select i1 %1664, i32 %1674, i32 0
  %1676 = shl i32 65536, %1671
  %1677 = select i1 %1662, i32 %1676, i32 0
  %1678 = or i32 %1675, %1677
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1685, label %1680, !dx.controlflow.hints !58

; <label>:1680                                    ; preds = %1673
  br i1 %1670, label %1683, label %1681, !dx.controlflow.hints !59

; <label>:1681                                    ; preds = %1680
  %1682 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1659, i32 %1660, i32 %315, i32 %1678)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1685

; <label>:1683                                    ; preds = %1680
  %1684 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %1659, i32 %1660, i32 %315, i32 %1678)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1685

; <label>:1685                                    ; preds = %1683, %1681, %1673
  br i1 %1665, label %1715, label %1686

; <label>:1686                                    ; preds = %1685
  br label %1687

; <label>:1687                                    ; preds = %1712, %1686
  %1688 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %1659, i32 %1660, i32 %315, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1689 = and i32 %1688, 3
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1691, label %1712, !dx.controlflow.hints !60

; <label>:1691                                    ; preds = %1687
  %1692 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.i32 %1693, 3
  %1695 = call i32 @dx.op.binary.i32(i32 40, i32 %1694, i32 %1692)  ; UMin(a,b)
  %1696 = extractvalue %dx.types.CBufRet.i32 %1693, 2
  %1697 = udiv i32 %1695, %1696
  %1698 = urem i32 %1695, %1696
  %1699 = extractvalue %dx.types.CBufRet.i32 %1693, 1
  %1700 = urem i32 %1698, %1699
  %1701 = udiv i32 %1698, %1699
  %1702 = shl i32 %1700, 6
  %1703 = and i32 %1702, 32704
  %1704 = shl i32 %1701, 15
  %1705 = and i32 %1704, 8355840
  %1706 = shl i32 %1697, 23
  %1707 = and i32 %1706, 2139095040
  %1708 = or i32 %1707, %1703
  %1709 = or i32 %1708, %1705
  %1710 = or i32 %1709, 3
  %1711 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %1659, i32 %1660, i32 %315, i32 %1710)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1715

; <label>:1712                                    ; preds = %1687
  %1713 = icmp eq i32 %1689, 3
  br i1 %1713, label %1714, label %1687, !dx.controlflow.hints !61

; <label>:1714                                    ; preds = %1712
  br label %1715

; <label>:1715                                    ; preds = %1714, %1691, %1685, %1649
  %1716 = phi i32 [ 0, %1685 ], [ %1710, %1691 ], [ 0, %1649 ], [ %1688, %1714 ]
  %1717 = phi i1 [ false, %1685 ], [ %1666, %1691 ], [ %1666, %1649 ], [ %1666, %1714 ]
  br i1 %1717, label %1718, label %1740, !dx.controlflow.hints !62

; <label>:1718                                    ; preds = %1715
  %1719 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1716)  ; WaveReadLaneFirst(value)
  %1720 = lshr i32 %259, 1
  %1721 = and i32 %1668, 15
  %1722 = and i32 %1720, 15
  %1723 = and i32 %258, 1
  %1724 = shl i32 %259, 1
  %1725 = and i32 %1724, 2
  %1726 = or i32 %1725, %1723
  %1727 = lshr i32 %1719, 2
  %1728 = and i32 %1727, 8176
  %1729 = lshr i32 %1719, 11
  %1730 = and i32 %1729, 4080
  %1731 = or i32 %1728, %1721
  %1732 = or i32 %1730, %1722
  %1733 = lshr i32 %1719, 21
  %1734 = and i32 %1733, 1020
  %1735 = or i32 %1726, %1734
  %1736 = fmul fast float %1650, 2.550000e+02
  %1737 = fadd fast float %1736, %252
  %1738 = call float @dx.op.unary.f32(i32 27, float %1737)  ; Round_ni(value)
  %1739 = fmul fast float %1738, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %1731, i32 %1732, i32 %1735, float %1739, float %1739, float %1739, float %1739, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1740

; <label>:1740                                    ; preds = %1718, %1715
  %1741 = icmp eq i32 %313, %317
  br i1 %1741, label %1742, label %311, !llvm.loop !63

; <label>:1742                                    ; preds = %1740
  br label %1743

; <label>:1743                                    ; preds = %1742, %283
  %1744 = phi i32 [ 0, %283 ], [ %1658, %1742 ]
  %1745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.i32 %1745, 0
  %1747 = call i32 @dx.op.tertiary.i32(i32 49, i32 %264, i32 %1746, i32 %284)  ; UMad(a,b,c)
  %1748 = shl i32 %1747, 2
  %1749 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1748, i32 undef, i32 undef, i32 %1744)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1750 = add i32 %284, 1
  %1751 = icmp ugt i32 %1750, %280
  br i1 %1751, label %1752, label %283

; <label>:1752                                    ; preds = %1743
  br label %1753

; <label>:1753                                    ; preds = %1752, %257, %59
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
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.unroll.disable"}

