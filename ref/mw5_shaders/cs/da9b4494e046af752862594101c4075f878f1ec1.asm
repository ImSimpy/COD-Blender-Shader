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
; shader hash: 7ae921d4c597be6a3dbcd12b6b6c972a
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
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %24 = alloca [4 x i32], align 4
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %29 = shl i32 %26, 2
  %30 = mul i32 %29, %28
  %31 = add i32 %30, %21
  %32 = shl i32 %31, 2
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = lshr i32 %34, 28
  %36 = and i32 %35, 3
  %37 = lshr i32 %34, 14
  %38 = and i32 %37, 16383
  %39 = and i32 %34, 16383
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %52, label %41, !dx.controlflow.hints !35

; <label>:41                                      ; preds = %0
  %42 = shl nuw nsw i32 %38, 3
  %43 = shl nuw nsw i32 %39, 3
  %44 = or i32 %42, %22
  %45 = or i32 %43, %23
  %46 = add nsw i32 %36, -1
  %47 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %44, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = lshr i32 %48, 4
  %50 = and i32 %49, 15
  %51 = and i32 %48, 15
  br label %57

; <label>:52                                      ; preds = %0
  %53 = shl i32 %22, 1
  %54 = shl i32 %23, 1
  %55 = and i32 %35, 1
  %56 = or i32 %55, %53
  br label %57

; <label>:57                                      ; preds = %52, %41
  %58 = phi i32 [ %50, %41 ], [ %56, %52 ]
  %59 = phi i32 [ %51, %41 ], [ %54, %52 ]
  %60 = shl nuw nsw i32 %38, 4
  %61 = shl nuw nsw i32 %39, 4
  %62 = or i32 %58, %60
  %63 = or i32 %59, %61
  %64 = uitofp i32 %62 to float
  %65 = uitofp i32 %63 to float
  %66 = fadd fast float %64, 5.000000e-01
  %67 = fadd fast float %65, 5.000000e-01
  %68 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %62, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = fcmp fast olt float %69, -1.000000e+00
  %71 = fcmp fast ogt float %69, -1.000000e+00
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %74 = select i1 %71, float %73, float 1.000000e+00
  %75 = fadd fast float %69, 1.000000e+00
  %76 = fmul fast float %74, %75
  %77 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 3
  %81 = fmul fast float %79, %66
  %82 = fmul fast float %80, %67
  %83 = fmul fast float %81, 2.000000e+00
  %84 = fmul fast float %82, 2.000000e+00
  %85 = fsub fast float 1.000000e+00, %83
  %86 = fsub fast float 1.000000e+00, %84
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = select i1 %70, float %88, float %92
  %96 = select i1 %70, float %89, float %93
  %97 = select i1 %70, float %90, float %94
  %98 = fmul fast float %95, %85
  %99 = fmul fast float %96, %85
  %100 = fmul fast float %97, %85
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = select i1 %70, float %102, float %106
  %110 = select i1 %70, float %103, float %107
  %111 = select i1 %70, float %104, float %108
  %112 = fmul fast float %109, %86
  %113 = fmul fast float %110, %86
  %114 = fmul fast float %111, %86
  %115 = fadd fast float %112, %98
  %116 = fadd fast float %113, %99
  %117 = fadd fast float %114, %100
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = select i1 %70, float %119, float %123
  %127 = select i1 %70, float %120, float %124
  %128 = select i1 %70, float %121, float %125
  %129 = fadd fast float %115, %126
  %130 = fadd fast float %116, %127
  %131 = fadd fast float %117, %128
  %132 = fmul fast float %129, %77
  %133 = fmul fast float %130, %77
  %134 = fmul fast float %131, %77
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.i32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.i32 %135, 2
  %139 = extractvalue %dx.types.CBufRet.i32 %135, 3
  %140 = lshr i32 %62, 1
  %141 = lshr i32 %63, 1
  %142 = and i32 %58, 1
  %143 = shl i32 %59, 1
  %144 = and i32 %143, 2
  %145 = or i32 %144, %142
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %136, i32* %146, align 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %137, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %138, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %139, i32* %149, align 4
  %150 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %145
  %151 = load i32, i32* %150, align 4, !tbaa !36
  %152 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 %151, i32 %140, i32 %141, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = lshr i32 %153, 8
  %155 = and i32 %153, 255
  %156 = and i32 %154, 255
  %157 = uitofp i32 %155 to float
  %158 = uitofp i32 %156 to float
  %159 = fmul fast float %157, 0x3F80101020000000
  %160 = fmul fast float %158, 0x3F80101020000000
  %161 = fadd fast float %159, -1.000000e+00
  %162 = fadd fast float %160, -1.000000e+00
  %163 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %164 = fsub fast float 1.000000e+00, %163
  %165 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %166 = fsub fast float %164, %165
  %167 = fsub fast float -0.000000e+00, %166
  %168 = call float @dx.op.binary.f32(i32 35, float %167, float 0.000000e+00)  ; FMax(a,b)
  %169 = fcmp fast ogt float %161, 0.000000e+00
  %170 = fsub fast float -0.000000e+00, %168
  %171 = select i1 %169, float %170, float %168
  %172 = fadd fast float %171, %161
  %173 = fcmp fast ogt float %162, 0.000000e+00
  %174 = select i1 %173, float %170, float %168
  %175 = fadd fast float %174, %162
  %176 = call float @dx.op.dot3.f32(i32 55, float %172, float %175, float %166, float %172, float %175, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = call float @dx.op.unary.f32(i32 25, float %176)  ; Rsqrt(value)
  %178 = fmul fast float %172, %177
  %179 = fmul fast float %175, %177
  %180 = fmul fast float %177, %166
  %181 = fmul fast float %79, %64
  %182 = fmul fast float %80, %65
  %183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %18, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = extractvalue %dx.types.ResRet.f32 %183, 1
  %186 = extractvalue %dx.types.ResRet.f32 %183, 2
  %187 = fcmp fast ogt float %184, -1.000000e+00
  %188 = select i1 %187, float %73, float 1.000000e+00
  %189 = fadd fast float %184, 1.000000e+00
  %190 = fmul fast float %188, %189
  %191 = call float @dx.op.unary.f32(i32 6, float %190)  ; FAbs(value)
  %192 = fcmp fast ogt float %185, -1.000000e+00
  %193 = select i1 %192, float %73, float 1.000000e+00
  %194 = fadd fast float %185, 1.000000e+00
  %195 = fmul fast float %193, %194
  %196 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %197 = fcmp fast ogt float %186, -1.000000e+00
  %198 = select i1 %197, float %73, float 1.000000e+00
  %199 = fadd fast float %186, 1.000000e+00
  %200 = fmul fast float %198, %199
  %201 = call float @dx.op.unary.f32(i32 6, float %200)  ; FAbs(value)
  %202 = fadd fast float %64, 1.000000e+00
  %203 = fmul fast float %79, %202
  %204 = fadd fast float %65, 1.000000e+00
  %205 = fmul fast float %80, %204
  %206 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %18, float %203, float %205, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = extractvalue %dx.types.ResRet.f32 %206, 2
  %209 = fcmp fast ogt float %207, -1.000000e+00
  %210 = select i1 %209, float %73, float 1.000000e+00
  %211 = fadd fast float %207, 1.000000e+00
  %212 = fmul fast float %210, %211
  %213 = call float @dx.op.unary.f32(i32 6, float %212)  ; FAbs(value)
  %214 = fcmp fast ogt float %208, -1.000000e+00
  %215 = select i1 %214, float %73, float 1.000000e+00
  %216 = fadd fast float %208, 1.000000e+00
  %217 = fmul fast float %215, %216
  %218 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %219 = fsub fast float %201, %196
  %220 = fsub fast float %213, %196
  %221 = fsub fast float %191, %196
  %222 = fsub fast float %218, %196
  %223 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %224 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %225 = call float @dx.op.binary.f32(i32 35, float %224, float %223)  ; FMax(a,b)
  %226 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %227 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %228 = call float @dx.op.binary.f32(i32 35, float %227, float %226)  ; FMax(a,b)
  %229 = fadd fast float %220, %219
  %230 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %231 = fadd fast float %222, %221
  %232 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %233 = fsub fast float %228, %232
  %234 = call float @dx.op.unary.f32(i32 6, float %233)  ; FAbs(value)
  %235 = fsub fast float %225, %230
  %236 = call float @dx.op.unary.f32(i32 6, float %235)  ; FAbs(value)
  %237 = call float @dx.op.binary.f32(i32 35, float %236, float %234)  ; FMax(a,b)
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = fmul fast float %239, 0x3FE3C6EF40000000
  %241 = frem fast float %66, 2.560000e+02
  %242 = frem fast float %67, 2.560000e+02
  %243 = fptoui float %241 to i32
  %244 = fptoui float %242 to i32
  %245 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = extractvalue %dx.types.ResRet.f32 %245, 2
  %248 = fadd fast float %246, %240
  %249 = fadd fast float %247, %240
  %250 = call float @dx.op.unary.f32(i32 22, float %248)  ; Frc(value)
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 0
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %965, label %255, !dx.controlflow.hints !40

; <label>:255                                     ; preds = %57
  %256 = fptoui float %66 to i32
  %257 = fptoui float %67 to i32
  %258 = lshr i32 %256, 4
  %259 = lshr i32 %257, 4
  %260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.i32 %260, 0
  %262 = call i32 @dx.op.tertiary.i32(i32 49, i32 %259, i32 %261, i32 %258)  ; UMad(a,b,c)
  %263 = add nsw i32 %253, -1
  %264 = call i32 @dx.op.binary.i32(i32 37, i32 %263, i32 0)  ; IMax(a,b)
  %265 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %266 = fptoui float %265 to i32
  %267 = lshr i32 %266, 5
  %268 = call i32 @dx.op.binary.i32(i32 40, i32 %267, i32 8191)  ; UMin(a,b)
  %269 = shl i32 %268, 2
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = lshr i32 %271, 16
  %273 = and i32 %271, 65535
  %274 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %272, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %275 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %273, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %276 = lshr i32 %274, 5
  %277 = lshr i32 %275, 5
  %278 = call i32 @dx.op.binary.i32(i32 40, i32 %277, i32 %264)  ; UMin(a,b)
  %279 = icmp ugt i32 %276, %278
  br i1 %279, label %965, label %280

; <label>:280                                     ; preds = %255
  br label %281

; <label>:281                                     ; preds = %955, %280
  %282 = phi i32 [ %962, %955 ], [ %276, %280 ]
  %283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.i32 %283, 0
  %285 = call i32 @dx.op.tertiary.i32(i32 49, i32 %262, i32 %284, i32 %282)  ; UMad(a,b,c)
  %286 = shl i32 %285, 2
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = shl i32 %282, 5
  %290 = sub nsw i32 %272, %289
  %291 = call i32 @dx.op.binary.i32(i32 37, i32 %290, i32 0)  ; IMax(a,b)
  %292 = call i32 @dx.op.binary.i32(i32 38, i32 %291, i32 31)  ; IMin(a,b)
  %293 = sub nsw i32 1, %272
  %294 = add nsw i32 %293, %273
  %295 = call i32 @dx.op.binary.i32(i32 37, i32 %294, i32 0)  ; IMax(a,b)
  %296 = call i32 @dx.op.binary.i32(i32 38, i32 %295, i32 32)  ; IMin(a,b)
  %297 = and i32 %296, 31
  %298 = shl i32 -1, %297
  %299 = xor i32 %298, -1
  %300 = and i32 %292, 31
  %301 = shl i32 %299, %300
  %302 = icmp eq i32 %296, 32
  %303 = select i1 %302, i32 -1, i32 %301
  %304 = and i32 %303, %288
  %305 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %304, i8 1)  ; WaveActiveBit(value,op)
  %306 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %305)  ; WaveReadLaneFirst(value)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %955, label %308

; <label>:308                                     ; preds = %281
  br label %309

; <label>:309                                     ; preds = %952, %308
  %310 = phi i32 [ %872, %952 ], [ 0, %308 ]
  %311 = phi i32 [ %316, %952 ], [ %306, %308 ]
  %312 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %311)  ; FirstbitLo(value)
  %313 = add i32 %312, %289
  %314 = and i32 %312, 31
  %315 = shl i32 1, %314
  %316 = xor i32 %315, %311
  %317 = mul i32 %313, 112
  %318 = add i32 %317, 16
  %319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = extractvalue %dx.types.ResRet.f32 %319, 1
  %322 = extractvalue %dx.types.ResRet.f32 %319, 2
  %323 = add i32 %317, 28
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = add i32 %317, 32
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = add i32 %317, 44
  %332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = add i32 %317, 48
  %335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = extractvalue %dx.types.ResRet.f32 %335, 1
  %338 = extractvalue %dx.types.ResRet.f32 %335, 2
  %339 = extractvalue %dx.types.ResRet.f32 %335, 3
  %340 = add i32 %317, 64
  %341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = extractvalue %dx.types.ResRet.f32 %341, 3
  %346 = add i32 %317, 92
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = uitofp i32 %349 to float
  %351 = lshr i32 %348, 16
  %352 = uitofp i32 %351 to float
  %353 = and i32 %325, 65535
  %354 = and i32 %325, 50331648
  %355 = icmp eq i32 %354, 33554432
  %356 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float %328, float %329, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = fsub fast float %132, %336
  %358 = fsub fast float %133, %337
  %359 = fsub fast float %134, %338
  %360 = call float @dx.op.dot3.f32(i32 55, float %357, float %358, float %359, float %328, float %329, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %361 = fdiv fast float %360, %356
  %362 = call float @dx.op.binary.f32(i32 35, float %361, float -1.000000e+00)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 36, float %362, float 1.000000e+00)  ; FMin(a,b)
  %364 = fmul fast float %363, %328
  %365 = fmul fast float %363, %329
  %366 = fmul fast float %363, %330
  %367 = fadd fast float %364, %336
  %368 = fadd fast float %365, %337
  %369 = fadd fast float %366, %338
  %370 = fsub fast float %367, %132
  %371 = fsub fast float %368, %133
  %372 = fsub fast float %369, %134
  %373 = call float @dx.op.dot3.f32(i32 55, float %370, float %371, float %372, float %370, float %371, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %375 = fdiv fast float 1.000000e+00, %374
  %376 = fmul fast float %370, %375
  %377 = fmul fast float %371, %375
  %378 = fmul fast float %372, %375
  br i1 %355, label %379, label %403, !dx.controlflow.hints !41

; <label>:379                                     ; preds = %309
  %380 = fmul fast float %344, %320
  %381 = fmul fast float %344, %321
  %382 = fmul fast float %344, %322
  %383 = fsub fast float %380, %132
  %384 = fadd fast float %383, %367
  %385 = fsub fast float %381, %133
  %386 = fadd fast float %385, %368
  %387 = fsub fast float %382, %134
  %388 = fadd fast float %387, %369
  %389 = call float @dx.op.dot3.f32(i32 55, float %384, float %386, float %388, float %384, float %386, float %388)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = call float @dx.op.unary.f32(i32 25, float %389)  ; Rsqrt(value)
  %391 = fmul fast float %390, %384
  %392 = fmul fast float %390, %386
  %393 = fmul fast float %390, %388
  %394 = fsub fast float %132, %367
  %395 = fsub fast float %133, %368
  %396 = fsub fast float %134, %369
  %397 = fsub fast float -0.000000e+00, %394
  %398 = fsub fast float -0.000000e+00, %395
  %399 = fsub fast float -0.000000e+00, %396
  %400 = call float @dx.op.dot3.f32(i32 55, float %397, float %398, float %399, float %320, float %321, float %322)  ; Dot3(ax,ay,az,bx,by,bz)
  %401 = fcmp fast ogt float %400, 0.000000e+00
  %402 = uitofp i1 %401 to float
  br label %403

; <label>:403                                     ; preds = %379, %309
  %404 = phi float [ %402, %379 ], [ 1.000000e+00, %309 ]
  %405 = phi float [ %391, %379 ], [ %376, %309 ]
  %406 = phi float [ %392, %379 ], [ %377, %309 ]
  %407 = phi float [ %393, %379 ], [ %378, %309 ]
  %408 = call float @dx.op.dot3.f32(i32 55, float %320, float %321, float %322, float %405, float %406, float %407)  ; Dot3(ax,ay,az,bx,by,bz)
  %409 = fmul fast float %408, %408
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fsub fast float 1.000000e+00, %410
  %412 = fmul fast float %411, 5.000000e-01
  %413 = fcmp fast ogt float %408, 0.000000e+00
  %414 = fsub fast float 1.000000e+00, %412
  %415 = select i1 %413, float %412, float %414
  %416 = fmul fast float %415, %352
  %417 = fadd fast float %416, %350
  %418 = fmul fast float %417, 0x3EF0001000000000
  %419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %418, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = fmul fast float %408, %342
  %422 = fadd fast float %421, %343
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = select i1 %355, float 1.000000e+00, float %423
  %425 = select i1 %355, float %423, float 1.000000e+00
  %426 = fmul fast float %374, %339
  %427 = fsub fast float 1.000000e+00, %426
  %428 = fmul fast float %427, %345
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = fmul fast float %429, %425
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fsub fast float 3.000000e+00, %431
  %433 = fmul fast float %420, %404
  %434 = fmul fast float %430, %430
  %435 = fmul fast float %434, %433
  %436 = fmul fast float %435, %432
  %437 = icmp ne i32 %353, 255
  %438 = call float @dx.op.binary.f32(i32 36, float %436, float %436)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %436, float %438)  ; FMin(a,b)
  %440 = fcmp fast ogt float %439, 0.000000e+00
  %441 = and i1 %437, %440
  br i1 %441, label %442, label %586, !dx.controlflow.hints !42

; <label>:442                                     ; preds = %403
  %443 = mul nuw nsw i32 %353, 176
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  %449 = add nuw nsw i32 %443, 16
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = add nuw nsw i32 %443, 32
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = add nuw nsw i32 %443, 48
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = add nuw nsw i32 %443, 64
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = add nuw nsw i32 %443, 80
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = add nuw nsw i32 %443, 96
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = bitcast float %452 to i32
  %483 = fmul fast float %457, %178
  %484 = fmul fast float %457, %179
  %485 = fmul fast float %457, %180
  %486 = fadd fast float %483, %132
  %487 = fadd fast float %484, %133
  %488 = fadd fast float %485, %134
  %489 = fmul fast float %486, %460
  %490 = call float @dx.op.tertiary.f32(i32 46, float %487, float %466, float %489)  ; FMad(a,b,c)
  %491 = call float @dx.op.tertiary.f32(i32 46, float %488, float %472, float %490)  ; FMad(a,b,c)
  %492 = fadd fast float %491, %478
  %493 = fmul fast float %486, %461
  %494 = call float @dx.op.tertiary.f32(i32 46, float %487, float %467, float %493)  ; FMad(a,b,c)
  %495 = call float @dx.op.tertiary.f32(i32 46, float %488, float %473, float %494)  ; FMad(a,b,c)
  %496 = fadd fast float %495, %479
  %497 = fmul fast float %486, %462
  %498 = call float @dx.op.tertiary.f32(i32 46, float %487, float %468, float %497)  ; FMad(a,b,c)
  %499 = call float @dx.op.tertiary.f32(i32 46, float %488, float %474, float %498)  ; FMad(a,b,c)
  %500 = fadd fast float %499, %480
  %501 = fmul fast float %486, %463
  %502 = call float @dx.op.tertiary.f32(i32 46, float %487, float %469, float %501)  ; FMad(a,b,c)
  %503 = call float @dx.op.tertiary.f32(i32 46, float %488, float %475, float %502)  ; FMad(a,b,c)
  %504 = fadd fast float %503, %481
  %505 = fdiv fast float %492, %504
  %506 = fdiv fast float %496, %504
  %507 = fdiv fast float %500, %504
  %508 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %507)  ; FMax(a,b)
  %509 = fmul fast float %250, 0x401921FB60000000
  %510 = call float @dx.op.unary.f32(i32 13, float %509)  ; Sin(value)
  %511 = call float @dx.op.unary.f32(i32 12, float %509)  ; Cos(value)
  %512 = fmul fast float %511, %456
  %513 = call float @dx.op.tertiary.f32(i32 46, float %510, float %456, float 0.000000e+00)  ; FMad(a,b,c)
  %514 = fmul fast float %456, %510
  %515 = fsub fast float -0.000000e+00, %514
  %516 = call float @dx.op.tertiary.f32(i32 46, float %511, float %456, float 0.000000e+00)  ; FMad(a,b,c)
  br label %517

; <label>:517                                     ; preds = %517, %442
  %518 = phi float [ 0.000000e+00, %442 ], [ %550, %517 ]
  %519 = phi float [ 0.000000e+00, %442 ], [ %552, %517 ]
  %520 = phi i32 [ 0, %442 ], [ %553, %517 ]
  %521 = mul i32 %520, 2
  %522 = add i32 0, %521
  %523 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %522
  %524 = load float, float* %523, align 4
  %525 = mul i32 %520, 2
  %526 = add i32 1, %525
  %527 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %526
  %528 = load float, float* %527, align 4
  %529 = fmul fast float %512, %524
  %530 = call float @dx.op.tertiary.f32(i32 46, float %528, float %515, float %529)  ; FMad(a,b,c)
  %531 = fmul fast float %524, %513
  %532 = call float @dx.op.tertiary.f32(i32 46, float %528, float %516, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %530, %505
  %534 = fadd fast float %532, %506
  %535 = fmul fast float %533, %451
  %536 = fmul fast float %534, %451
  %537 = call float @dx.op.binary.f32(i32 35, float %535, float %447)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 35, float %536, float %447)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 36, float %537, float %448)  ; FMin(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float %538, float %448)  ; FMin(a,b)
  %541 = fadd fast float %539, %445
  %542 = fadd fast float %540, %446
  %543 = uitofp i32 %482 to float
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %541, float %542, float %543, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = fsub fast float %545, %508
  %547 = fsub fast float %546, %455
  %548 = fcmp fast ogt float %547, 0.000000e+00
  %549 = select i1 %548, float 1.000000e+00, float 0.000000e+00
  %550 = fadd fast float %549, %518
  %551 = select i1 %548, float %547, float 0.000000e+00
  %552 = fadd fast float %551, %519
  %553 = add nuw nsw i32 %520, 1
  %554 = icmp eq i32 %553, 8
  br i1 %554, label %555, label %517

; <label>:555                                     ; preds = %517
  %556 = fdiv fast float 1.000000e+00, %550
  %557 = fmul fast float %556, %552
  %558 = fdiv fast float 1.000000e+00, %508
  %559 = fmul fast float %557, %558
  %560 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %561 = call float @dx.op.binary.f32(i32 35, float %560, float 0.000000e+00)  ; FMax(a,b)
  %562 = fmul fast float %550, 1.250000e-01
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = fmul fast float %563, 2.000000e+00
  %565 = fadd fast float %564, -1.000000e+00
  %566 = fcmp fast ogt float %565, 0.000000e+00
  %567 = fcmp fast olt float %565, 0.000000e+00
  %568 = zext i1 %566 to i32
  %569 = zext i1 %567 to i32
  %570 = sub nsw i32 %568, %569
  %571 = sitofp i32 %570 to float
  %572 = fmul fast float %571, %565
  %573 = fsub fast float 1.000000e+00, %572
  %574 = fmul fast float %573, %573
  %575 = fmul fast float %574, %573
  %576 = fsub fast float %573, %575
  %577 = fmul fast float %576, %561
  %578 = fsub fast float 1.000000e+00, %575
  %579 = fsub fast float %578, %577
  %580 = fmul fast float %571, 5.000000e-01
  %581 = fmul fast float %580, %579
  %582 = fsub fast float -5.000000e-01, %581
  %583 = fmul fast float %582, %424
  %584 = fadd fast float %583, 1.000000e+00
  %585 = fmul fast float %584, %436
  br label %586

; <label>:586                                     ; preds = %555, %403
  %587 = phi float [ %585, %555 ], [ %436, %403 ]
  %588 = call float @dx.op.binary.f32(i32 36, float %587, float %587)  ; FMin(a,b)
  %589 = call float @dx.op.binary.f32(i32 36, float %587, float %588)  ; FMin(a,b)
  %590 = fcmp fast ogt float %589, 0.000000e+00
  %591 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %376, float %377, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %592 = fcmp fast ogt float %591, 0.000000e+00
  %593 = and i1 %590, %592
  br i1 %593, label %594, label %863, !dx.controlflow.hints !43

; <label>:594                                     ; preds = %586
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %599 = select i1 %70, float %596, float %598
  %600 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %601 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %602 = select i1 %70, float %600, float %601
  %603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.i32 %603, 0
  %605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.i32 %605, 0
  %607 = select i1 %70, i32 %604, i32 %606
  %608 = fcmp fast olt float %599, 5.000000e-01
  %609 = icmp eq i32 %607, 0
  %610 = or i1 %608, %609
  br i1 %610, label %858, label %611, !dx.controlflow.hints !44

; <label>:611                                     ; preds = %594
  %612 = fsub fast float %336, %132
  %613 = fsub fast float %337, %133
  %614 = fsub fast float %338, %134
  %615 = fmul fast float %612, %612
  %616 = fmul fast float %613, %613
  %617 = fadd fast float %615, %616
  %618 = fmul fast float %614, %614
  %619 = fadd fast float %617, %618
  %620 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.i32 %621, 0
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %599, %333
  %625 = fdiv fast float %624, %620
  %626 = call float @dx.op.binary.f32(i32 36, float %625, float 1.000000e+01)  ; FMin(a,b)
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %630 = extractvalue %dx.types.CBufRet.f32 %627, 2
  %631 = extractvalue %dx.types.CBufRet.f32 %627, 3
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %635 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %636 = extractvalue %dx.types.CBufRet.f32 %632, 3
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %640 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %641 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %649 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %650 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %651 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %655 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %656 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %657 = select i1 %70, float %628, float %643
  %658 = select i1 %70, float %633, float %648
  %659 = select i1 %70, float %638, float %653
  %660 = select i1 %70, float %629, float %644
  %661 = select i1 %70, float %634, float %649
  %662 = select i1 %70, float %639, float %654
  %663 = select i1 %70, float %630, float %645
  %664 = select i1 %70, float %635, float %650
  %665 = select i1 %70, float %640, float %655
  %666 = select i1 %70, float %631, float %646
  %667 = select i1 %70, float %636, float %651
  %668 = select i1 %70, float %641, float %656
  %669 = fmul fast float %251, 0x401061CAC0000000
  %670 = fmul fast float %251, 0x4023E1D7E0000000
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %673 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %674 = extractvalue %dx.types.CBufRet.f32 %671, 2
  %675 = extractvalue %dx.types.CBufRet.f32 %671, 3
  %676 = fsub fast float -0.000000e+00, %376
  %677 = fmul fast float %378, %676
  %678 = fmul fast float %376, %676
  %679 = fmul fast float %377, %377
  %680 = fsub fast float %678, %679
  %681 = fdiv fast float 1.000000e+00, %77
  %682 = fmul fast float %674, %66
  %683 = fmul fast float %675, %67
  %684 = fmul fast float %599, %376
  %685 = fmul fast float %599, %378
  %686 = fadd fast float %684, %132
  %687 = fadd fast float %685, %134
  %688 = fadd fast float %670, 5.000000e-01
  %689 = call float @dx.op.unary.f32(i32 22, float %688)  ; Frc(value)
  %690 = bitcast float %689 to i32
  %691 = ashr i32 %690, 1
  %692 = add nsw i32 %691, 532487669
  %693 = bitcast i32 %692 to float
  %694 = fmul fast float %693, %626
  %695 = fadd fast float %669, 5.000000e-01
  %696 = call float @dx.op.unary.f32(i32 22, float %695)  ; Frc(value)
  %697 = fmul fast float %696, 0x401921FB60000000
  %698 = call float @dx.op.unary.f32(i32 12, float %697)  ; Cos(value)
  %699 = fmul fast float %698, %698
  %700 = fsub fast float 1.000000e+00, %699
  %701 = bitcast float %700 to i32
  %702 = ashr i32 %701, 1
  %703 = add nsw i32 %702, 532487669
  %704 = bitcast i32 %703 to float
  %705 = fmul fast float %694, %698
  %706 = fmul fast float %705, %377
  %707 = fmul fast float %705, %676
  %708 = fadd fast float %686, %706
  %709 = fmul fast float %704, %694
  %710 = fmul fast float %677, %709
  %711 = fmul fast float %709, %378
  %712 = fmul fast float %709, %680
  %713 = fsub fast float %708, %710
  %714 = fadd fast float %711, %599
  %715 = fmul fast float %714, %377
  %716 = fadd fast float %707, %133
  %717 = fadd fast float %716, %715
  %718 = fadd fast float %687, %712
  %719 = fmul fast float %713, %657
  %720 = call float @dx.op.tertiary.f32(i32 46, float %717, float %660, float %719)  ; FMad(a,b,c)
  %721 = call float @dx.op.tertiary.f32(i32 46, float %718, float %663, float %720)  ; FMad(a,b,c)
  %722 = fadd fast float %721, %666
  %723 = fmul fast float %713, %658
  %724 = call float @dx.op.tertiary.f32(i32 46, float %717, float %661, float %723)  ; FMad(a,b,c)
  %725 = call float @dx.op.tertiary.f32(i32 46, float %718, float %664, float %724)  ; FMad(a,b,c)
  %726 = fadd fast float %725, %667
  %727 = fmul fast float %713, %659
  %728 = call float @dx.op.tertiary.f32(i32 46, float %717, float %662, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float %718, float %665, float %728)  ; FMad(a,b,c)
  %730 = fadd fast float %729, %668
  %731 = fdiv fast float 1.000000e+00, %730
  %732 = fmul fast float %722, 5.000000e-01
  %733 = fmul fast float %726, -5.000000e-01
  %734 = fmul fast float %732, %731
  %735 = fmul fast float %733, %731
  %736 = fsub fast float 5.000000e-01, %682
  %737 = fadd fast float %736, %734
  %738 = fsub fast float 5.000000e-01, %683
  %739 = fadd fast float %738, %735
  %740 = fsub fast float %731, %681
  %741 = call float @dx.op.dot2.f32(i32 54, float %737, float %739, float %737, float %739)  ; Dot2(ax,ay,bx,by)
  %742 = call float @dx.op.binary.f32(i32 35, float %741, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %743 = call float @dx.op.dot2.f32(i32 54, float %672, float %673, float %672, float %673)  ; Dot2(ax,ay,bx,by)
  %744 = fmul fast float %743, %742
  %745 = call float @dx.op.unary.f32(i32 25, float %744)  ; Rsqrt(value)
  %746 = fmul fast float %745, %737
  %747 = fmul fast float %745, %739
  %748 = fadd fast float %746, %682
  %749 = fadd fast float %747, %683
  %750 = fmul fast float %737, %672
  %751 = fmul fast float %739, %673
  %752 = fmul fast float %750, %750
  %753 = fmul fast float %751, %751
  %754 = fadd fast float %752, %753
  %755 = call float @dx.op.unary.f32(i32 24, float %754)  ; Sqrt(value)
  %756 = fdiv fast float 1.000000e+00, %755
  %757 = fmul fast float %755, 3.906250e-03
  %758 = fmul fast float %237, 0x3F70624DE0000000
  %759 = fadd fast float %758, 0x3F70624DE0000000
  %760 = icmp sgt i32 %607, -1
  br i1 %760, label %761, label %823

; <label>:761                                     ; preds = %611
  br label %762

; <label>:762                                     ; preds = %819, %761
  %763 = phi float [ %794, %819 ], [ %77, %761 ]
  %764 = phi float [ %781, %819 ], [ %77, %761 ]
  %765 = phi float [ %764, %819 ], [ %77, %761 ]
  %766 = phi i32 [ %820, %819 ], [ 0, %761 ]
  %767 = sitofp i32 %766 to float
  %768 = fadd fast float %251, 5.000000e-01
  %769 = call float @dx.op.unary.f32(i32 22, float %768)  ; Frc(value)
  %770 = fadd fast float %767, %769
  %771 = sitofp i32 %607 to float
  %772 = fdiv fast float %770, %771
  %773 = fmul fast float %772, %772
  %774 = call float @dx.op.binary.f32(i32 36, float %773, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %775 = fmul fast float %774, %737
  %776 = fmul fast float %774, %739
  %777 = fmul fast float %774, %740
  %778 = fadd fast float %775, %748
  %779 = fadd fast float %776, %749
  %780 = fadd fast float %777, %681
  %781 = fdiv fast float 1.000000e+00, %780
  %782 = icmp ne i32 %622, 0
  %783 = fmul fast float %757, %774
  %784 = call float @dx.op.binary.f32(i32 36, float %783, float %623)  ; FMin(a,b)
  %785 = select i1 %782, float %784, float 0.000000e+00
  %786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %778, float %779, float undef, float undef, i32 0, i32 0, i32 undef, float %785)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = fcmp fast ogt float %787, -1.000000e+00
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 1
  %791 = select i1 %788, float %790, float 1.000000e+00
  %792 = fadd fast float %787, 1.000000e+00
  %793 = fmul fast float %791, %792
  %794 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %795 = fmul fast float %794, %759
  %796 = fsub fast float %781, %794
  %797 = fsub fast float %796, %795
  %798 = fcmp fast ogt float %797, 0.000000e+00
  %799 = fcmp fast ogt float %602, 0.000000e+00
  br i1 %799, label %800, label %803, !dx.controlflow.hints !45

; <label>:800                                     ; preds = %762
  %801 = fsub fast float %781, %765
  %802 = call float @dx.op.binary.f32(i32 35, float %801, float %602)  ; FMax(a,b)
  br label %803

; <label>:803                                     ; preds = %800, %762
  %804 = phi float [ %802, %800 ], [ %599, %762 ]
  %805 = fcmp fast olt float %797, %804
  %806 = fcmp uge float %787, -1.000000e+00
  %807 = or i1 %70, %806
  %808 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %809 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %810 = fcmp fast oeq float %778, %808
  %811 = fcmp fast oeq float %779, %809
  %812 = and i1 %810, %811
  %813 = and i1 %807, %812
  %814 = and i1 %798, %805
  %815 = and i1 %814, %813
  %816 = fcmp fast ogt float %774, %756
  %817 = and i1 %816, %815
  %818 = zext i1 %817 to i32
  br i1 %817, label %822, label %819, !dx.controlflow.hints !46

; <label>:819                                     ; preds = %803
  %820 = add nuw nsw i32 %766, 1
  %821 = icmp slt i32 %766, %607
  br i1 %821, label %762, label %822

; <label>:822                                     ; preds = %819, %803
  br label %823

; <label>:823                                     ; preds = %822, %611
  %824 = phi i32 [ 0, %611 ], [ %818, %822 ]
  %825 = phi float [ %77, %611 ], [ %794, %822 ]
  %826 = phi float [ %77, %611 ], [ %763, %822 ]
  %827 = phi float [ %77, %611 ], [ %781, %822 ]
  %828 = phi float [ %77, %611 ], [ %764, %822 ]
  %829 = fsub fast float %828, %826
  %830 = fsub fast float %827, %825
  %831 = fsub fast float %829, %830
  %832 = fcmp fast une float %831, 0.000000e+00
  %833 = fmul fast float %829, %827
  %834 = fmul fast float %828, %830
  %835 = fsub fast float %833, %834
  %836 = fdiv fast float 1.000000e+00, %831
  %837 = fmul fast float %835, %836
  %838 = select i1 %832, float %837, float %827
  %839 = fdiv fast float 1.000000e+00, %838
  %840 = fsub fast float %839, %681
  %841 = fdiv fast float %840, %740
  %842 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %843 = fmul fast float %842, %737
  %844 = fmul fast float %842, %739
  %845 = fadd fast float %843, %748
  %846 = fadd fast float %844, %749
  %847 = fadd fast float %845, -5.000000e-01
  %848 = fadd fast float %846, -5.000000e-01
  %849 = call float @dx.op.unary.f32(i32 6, float %847)  ; FAbs(value)
  %850 = call float @dx.op.unary.f32(i32 6, float %848)  ; FAbs(value)
  %851 = fadd fast float %849, -5.000000e-01
  %852 = fadd fast float %850, -5.000000e-01
  %853 = call float @dx.op.binary.f32(i32 35, float %851, float %852)  ; FMax(a,b)
  %854 = fcmp fast olt float %853, 0.000000e+00
  %855 = icmp ne i32 %824, 0
  %856 = and i1 %855, %854
  %857 = select i1 %856, float 0.000000e+00, float 1.000000e+00
  br label %858

; <label>:858                                     ; preds = %823, %594
  %859 = phi float [ %857, %823 ], [ 1.000000e+00, %594 ]
  %860 = fmul fast float %859, %587
  %861 = fmul fast float %859, %587
  %862 = fmul fast float %859, %587
  br label %863

; <label>:863                                     ; preds = %858, %586
  %864 = phi float [ %860, %858 ], [ %587, %586 ]
  %865 = phi float [ %861, %858 ], [ %587, %586 ]
  %866 = phi float [ %862, %858 ], [ %587, %586 ]
  %867 = call float @dx.op.binary.f32(i32 36, float %865, float %866)  ; FMin(a,b)
  %868 = call float @dx.op.binary.f32(i32 36, float %864, float %867)  ; FMin(a,b)
  %869 = fcmp fast ogt float %868, 0x3F10000000000000
  %870 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %869)  ; WaveAnyTrue(cond)
  %871 = select i1 %870, i32 %315, i32 0
  %872 = or i32 %310, %871
  %873 = lshr i32 %256, 5
  %874 = lshr i32 %257, 5
  %875 = fcmp fast olt float %864, 0x3F10000000000000
  %876 = call i1 @dx.op.waveAllTrue(i32 114, i1 %875)  ; WaveAllTrue(cond)
  %877 = fcmp fast ogt float %864, 0x3FEFFF8000000000
  %878 = call i1 @dx.op.waveAllTrue(i32 114, i1 %877)  ; WaveAllTrue(cond)
  %879 = or i1 %876, %878
  %880 = xor i1 %879, true
  %881 = lshr i32 %257, 1
  %882 = and i32 %881, 8
  %883 = lshr i32 %256, 2
  %884 = and i32 %883, 4
  %885 = or i32 %884, %36
  %886 = or i32 %885, %882
  %887 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %887, label %888, label %927, !dx.controlflow.hints !47

; <label>:888                                     ; preds = %863
  %889 = shl i32 1, %886
  %890 = select i1 %878, i32 %889, i32 0
  %891 = shl i32 65536, %886
  %892 = select i1 %876, i32 %891, i32 0
  %893 = or i32 %890, %892
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %897, label %895, !dx.controlflow.hints !48

; <label>:895                                     ; preds = %888
  %896 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %873, i32 %874, i32 %313, i32 %893)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %897

; <label>:897                                     ; preds = %895, %888
  br i1 %879, label %927, label %898

; <label>:898                                     ; preds = %897
  br label %899

; <label>:899                                     ; preds = %924, %898
  %900 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %873, i32 %874, i32 %313, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %901 = and i32 %900, 3
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %903, label %924, !dx.controlflow.hints !49

; <label>:903                                     ; preds = %899
  %904 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.i32 %905, 3
  %907 = call i32 @dx.op.binary.i32(i32 40, i32 %906, i32 %904)  ; UMin(a,b)
  %908 = extractvalue %dx.types.CBufRet.i32 %905, 2
  %909 = udiv i32 %907, %908
  %910 = urem i32 %907, %908
  %911 = extractvalue %dx.types.CBufRet.i32 %905, 1
  %912 = urem i32 %910, %911
  %913 = udiv i32 %910, %911
  %914 = shl i32 %912, 6
  %915 = and i32 %914, 32704
  %916 = shl i32 %913, 15
  %917 = and i32 %916, 8355840
  %918 = shl i32 %909, 23
  %919 = and i32 %918, 2139095040
  %920 = or i32 %919, %915
  %921 = or i32 %920, %917
  %922 = or i32 %921, 3
  %923 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %873, i32 %874, i32 %313, i32 %922)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %927

; <label>:924                                     ; preds = %899
  %925 = icmp eq i32 %901, 3
  br i1 %925, label %926, label %899, !dx.controlflow.hints !50

; <label>:926                                     ; preds = %924
  br label %927

; <label>:927                                     ; preds = %926, %903, %897, %863
  %928 = phi i32 [ 0, %897 ], [ %922, %903 ], [ 0, %863 ], [ %900, %926 ]
  %929 = phi i1 [ false, %897 ], [ %880, %903 ], [ %880, %863 ], [ %880, %926 ]
  br i1 %929, label %930, label %952, !dx.controlflow.hints !51

; <label>:930                                     ; preds = %927
  %931 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %928)  ; WaveReadLaneFirst(value)
  %932 = lshr i32 %256, 1
  %933 = and i32 %932, 15
  %934 = and i32 %881, 15
  %935 = and i32 %256, 1
  %936 = shl i32 %257, 1
  %937 = and i32 %936, 2
  %938 = or i32 %937, %935
  %939 = lshr i32 %931, 2
  %940 = and i32 %939, 8176
  %941 = lshr i32 %931, 11
  %942 = and i32 %941, 4080
  %943 = or i32 %940, %933
  %944 = or i32 %942, %934
  %945 = lshr i32 %931, 21
  %946 = and i32 %945, 1020
  %947 = or i32 %938, %946
  %948 = fmul fast float %864, 2.550000e+02
  %949 = fadd fast float %948, %250
  %950 = call float @dx.op.unary.f32(i32 27, float %949)  ; Round_ni(value)
  %951 = fmul fast float %950, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %943, i32 %944, i32 %947, float %951, float %951, float %951, float %951, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %952

; <label>:952                                     ; preds = %930, %927
  %953 = icmp eq i32 %311, %315
  br i1 %953, label %954, label %309, !llvm.loop !52

; <label>:954                                     ; preds = %952
  br label %955

; <label>:955                                     ; preds = %954, %281
  %956 = phi i32 [ 0, %281 ], [ %872, %954 ]
  %957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.i32 %957, 0
  %959 = call i32 @dx.op.tertiary.i32(i32 49, i32 %262, i32 %958, i32 %282)  ; UMad(a,b,c)
  %960 = shl i32 %959, 2
  %961 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %960, i32 undef, i32 undef, i32 %956)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %962 = add i32 %282, 1
  %963 = icmp ugt i32 %962, %278
  br i1 %963, label %964, label %281

; <label>:964                                     ; preds = %955
  br label %965

; <label>:965                                     ; preds = %964, %255, %57
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
!dx.entryPoints = !{!32}

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
!29 = !{!30, !31}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !33}
!33 = !{i32 0, i64 524560, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}

