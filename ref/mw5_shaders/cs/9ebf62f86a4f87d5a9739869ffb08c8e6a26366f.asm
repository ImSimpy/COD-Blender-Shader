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
; shader hash: 2dc11275b6e526c6281250cc8045d84f
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
  %81 = fmul fast float %66, 2.000000e+00
  %82 = fmul fast float %81, %79
  %83 = fmul fast float %67, 2.000000e+00
  %84 = fmul fast float %83, %80
  %85 = fsub fast float 1.000000e+00, %82
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
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = fmul fast float %182, 0x3FE3C6EF40000000
  %184 = frem fast float %66, 2.560000e+02
  %185 = frem fast float %67, 2.560000e+02
  %186 = fptoui float %184 to i32
  %187 = fptoui float %185 to i32
  %188 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %186, i32 %187, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fadd fast float %189, %183
  %191 = call float @dx.op.unary.f32(i32 22, float %190)  ; Frc(value)
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 0
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %623, label %195, !dx.controlflow.hints !40

; <label>:195                                     ; preds = %57
  %196 = fptoui float %66 to i32
  %197 = fptoui float %67 to i32
  %198 = lshr i32 %196, 4
  %199 = lshr i32 %197, 4
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 0
  %202 = call i32 @dx.op.tertiary.i32(i32 49, i32 %199, i32 %201, i32 %198)  ; UMad(a,b,c)
  %203 = add nsw i32 %193, -1
  %204 = call i32 @dx.op.binary.i32(i32 37, i32 %203, i32 0)  ; IMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %206 = fptoui float %205 to i32
  %207 = lshr i32 %206, 5
  %208 = call i32 @dx.op.binary.i32(i32 40, i32 %207, i32 8191)  ; UMin(a,b)
  %209 = shl i32 %208, 2
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 16
  %213 = and i32 %211, 65535
  %214 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %212, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %215 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %213, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %216 = lshr i32 %214, 5
  %217 = lshr i32 %215, 5
  %218 = call i32 @dx.op.binary.i32(i32 40, i32 %217, i32 %204)  ; UMin(a,b)
  %219 = icmp ugt i32 %216, %218
  br i1 %219, label %623, label %220

; <label>:220                                     ; preds = %195
  br label %221

; <label>:221                                     ; preds = %613, %220
  %222 = phi i32 [ %620, %613 ], [ %216, %220 ]
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 0
  %225 = call i32 @dx.op.tertiary.i32(i32 49, i32 %202, i32 %224, i32 %222)  ; UMad(a,b,c)
  %226 = shl i32 %225, 2
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = shl i32 %222, 5
  %230 = sub nsw i32 %212, %229
  %231 = call i32 @dx.op.binary.i32(i32 37, i32 %230, i32 0)  ; IMax(a,b)
  %232 = call i32 @dx.op.binary.i32(i32 38, i32 %231, i32 31)  ; IMin(a,b)
  %233 = sub nsw i32 1, %212
  %234 = add nsw i32 %233, %213
  %235 = call i32 @dx.op.binary.i32(i32 37, i32 %234, i32 0)  ; IMax(a,b)
  %236 = call i32 @dx.op.binary.i32(i32 38, i32 %235, i32 32)  ; IMin(a,b)
  %237 = and i32 %236, 31
  %238 = shl i32 -1, %237
  %239 = xor i32 %238, -1
  %240 = and i32 %232, 31
  %241 = shl i32 %239, %240
  %242 = icmp eq i32 %236, 32
  %243 = select i1 %242, i32 -1, i32 %241
  %244 = and i32 %243, %228
  %245 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %244, i8 1)  ; WaveActiveBit(value,op)
  %246 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %245)  ; WaveReadLaneFirst(value)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %613, label %248

; <label>:248                                     ; preds = %221
  br label %249

; <label>:249                                     ; preds = %610, %248
  %250 = phi i32 [ %530, %610 ], [ 0, %248 ]
  %251 = phi i32 [ %256, %610 ], [ %246, %248 ]
  %252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %251)  ; FirstbitLo(value)
  %253 = add i32 %252, %229
  %254 = and i32 %252, 31
  %255 = shl i32 1, %254
  %256 = xor i32 %255, %251
  %257 = mul i32 %253, 112
  %258 = add i32 %257, 16
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = add i32 %257, 28
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = add i32 %257, 32
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = extractvalue %dx.types.ResRet.f32 %267, 2
  %271 = add i32 %257, 48
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = add i32 %257, 64
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = extractvalue %dx.types.ResRet.f32 %278, 3
  %283 = add i32 %257, 92
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = uitofp i32 %286 to float
  %288 = lshr i32 %285, 16
  %289 = uitofp i32 %288 to float
  %290 = and i32 %265, 65535
  %291 = and i32 %265, 50331648
  %292 = icmp eq i32 %291, 33554432
  %293 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = fsub fast float %132, %273
  %295 = fsub fast float %133, %274
  %296 = fsub fast float %134, %275
  %297 = call float @dx.op.dot3.f32(i32 55, float %294, float %295, float %296, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %298 = fdiv fast float %297, %293
  %299 = call float @dx.op.binary.f32(i32 35, float %298, float -1.000000e+00)  ; FMax(a,b)
  %300 = call float @dx.op.binary.f32(i32 36, float %299, float 1.000000e+00)  ; FMin(a,b)
  %301 = fmul fast float %300, %268
  %302 = fmul fast float %300, %269
  %303 = fmul fast float %300, %270
  %304 = fadd fast float %301, %273
  %305 = fadd fast float %302, %274
  %306 = fadd fast float %303, %275
  %307 = fsub fast float %304, %132
  %308 = fsub fast float %305, %133
  %309 = fsub fast float %306, %134
  %310 = call float @dx.op.dot3.f32(i32 55, float %307, float %308, float %309, float %307, float %308, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %312 = fdiv fast float 1.000000e+00, %311
  %313 = fmul fast float %307, %312
  %314 = fmul fast float %308, %312
  %315 = fmul fast float %309, %312
  br i1 %292, label %316, label %340, !dx.controlflow.hints !41

; <label>:316                                     ; preds = %249
  %317 = fmul fast float %281, %260
  %318 = fmul fast float %281, %261
  %319 = fmul fast float %281, %262
  %320 = fsub fast float %317, %132
  %321 = fadd fast float %320, %304
  %322 = fsub fast float %318, %133
  %323 = fadd fast float %322, %305
  %324 = fsub fast float %319, %134
  %325 = fadd fast float %324, %306
  %326 = call float @dx.op.dot3.f32(i32 55, float %321, float %323, float %325, float %321, float %323, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %327 = call float @dx.op.unary.f32(i32 25, float %326)  ; Rsqrt(value)
  %328 = fmul fast float %327, %321
  %329 = fmul fast float %327, %323
  %330 = fmul fast float %327, %325
  %331 = fsub fast float %132, %304
  %332 = fsub fast float %133, %305
  %333 = fsub fast float %134, %306
  %334 = fsub fast float -0.000000e+00, %331
  %335 = fsub fast float -0.000000e+00, %332
  %336 = fsub fast float -0.000000e+00, %333
  %337 = call float @dx.op.dot3.f32(i32 55, float %334, float %335, float %336, float %260, float %261, float %262)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = fcmp fast ogt float %337, 0.000000e+00
  %339 = uitofp i1 %338 to float
  br label %340

; <label>:340                                     ; preds = %316, %249
  %341 = phi float [ %339, %316 ], [ 1.000000e+00, %249 ]
  %342 = phi float [ %328, %316 ], [ %313, %249 ]
  %343 = phi float [ %329, %316 ], [ %314, %249 ]
  %344 = phi float [ %330, %316 ], [ %315, %249 ]
  %345 = call float @dx.op.dot3.f32(i32 55, float %260, float %261, float %262, float %342, float %343, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = fmul fast float %345, %345
  %347 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %348 = fsub fast float 1.000000e+00, %347
  %349 = fmul fast float %348, 5.000000e-01
  %350 = fcmp fast ogt float %345, 0.000000e+00
  %351 = fsub fast float 1.000000e+00, %349
  %352 = select i1 %350, float %349, float %351
  %353 = fmul fast float %352, %289
  %354 = fadd fast float %353, %287
  %355 = fmul fast float %354, 0x3EF0001000000000
  %356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %355, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = fmul fast float %345, %279
  %359 = fadd fast float %358, %280
  %360 = call float @dx.op.unary.f32(i32 7, float %359)  ; Saturate(value)
  %361 = select i1 %292, float 1.000000e+00, float %360
  %362 = select i1 %292, float %360, float 1.000000e+00
  %363 = fmul fast float %311, %276
  %364 = fsub fast float 1.000000e+00, %363
  %365 = fmul fast float %364, %282
  %366 = call float @dx.op.unary.f32(i32 7, float %365)  ; Saturate(value)
  %367 = fmul fast float %366, %362
  %368 = fmul fast float %367, 2.000000e+00
  %369 = fsub fast float 3.000000e+00, %368
  %370 = fmul fast float %357, %341
  %371 = fmul fast float %367, %367
  %372 = fmul fast float %371, %370
  %373 = fmul fast float %372, %369
  %374 = icmp ne i32 %290, 255
  %375 = call float @dx.op.binary.f32(i32 36, float %373, float %373)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 36, float %373, float %375)  ; FMin(a,b)
  %377 = fcmp fast ogt float %376, 0.000000e+00
  %378 = and i1 %374, %377
  br i1 %378, label %379, label %523, !dx.controlflow.hints !42

; <label>:379                                     ; preds = %340
  %380 = mul nuw nsw i32 %290, 176
  %381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = extractvalue %dx.types.ResRet.f32 %381, 1
  %384 = extractvalue %dx.types.ResRet.f32 %381, 2
  %385 = extractvalue %dx.types.ResRet.f32 %381, 3
  %386 = add nuw nsw i32 %380, 16
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = add nuw nsw i32 %380, 32
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = add nuw nsw i32 %380, 48
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = extractvalue %dx.types.ResRet.f32 %396, 3
  %401 = add nuw nsw i32 %380, 64
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add nuw nsw i32 %380, 80
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = add nuw nsw i32 %380, 96
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = bitcast float %389 to i32
  %420 = fmul fast float %178, %394
  %421 = fmul fast float %179, %394
  %422 = fmul fast float %180, %394
  %423 = fadd fast float %420, %132
  %424 = fadd fast float %421, %133
  %425 = fadd fast float %422, %134
  %426 = fmul fast float %423, %397
  %427 = call float @dx.op.tertiary.f32(i32 46, float %424, float %403, float %426)  ; FMad(a,b,c)
  %428 = call float @dx.op.tertiary.f32(i32 46, float %425, float %409, float %427)  ; FMad(a,b,c)
  %429 = fadd fast float %428, %415
  %430 = fmul fast float %423, %398
  %431 = call float @dx.op.tertiary.f32(i32 46, float %424, float %404, float %430)  ; FMad(a,b,c)
  %432 = call float @dx.op.tertiary.f32(i32 46, float %425, float %410, float %431)  ; FMad(a,b,c)
  %433 = fadd fast float %432, %416
  %434 = fmul fast float %423, %399
  %435 = call float @dx.op.tertiary.f32(i32 46, float %424, float %405, float %434)  ; FMad(a,b,c)
  %436 = call float @dx.op.tertiary.f32(i32 46, float %425, float %411, float %435)  ; FMad(a,b,c)
  %437 = fadd fast float %436, %417
  %438 = fmul fast float %423, %400
  %439 = call float @dx.op.tertiary.f32(i32 46, float %424, float %406, float %438)  ; FMad(a,b,c)
  %440 = call float @dx.op.tertiary.f32(i32 46, float %425, float %412, float %439)  ; FMad(a,b,c)
  %441 = fadd fast float %440, %418
  %442 = fdiv fast float %429, %441
  %443 = fdiv fast float %433, %441
  %444 = fdiv fast float %437, %441
  %445 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %444)  ; FMax(a,b)
  %446 = fmul fast float %191, 0x401921FB60000000
  %447 = call float @dx.op.unary.f32(i32 13, float %446)  ; Sin(value)
  %448 = call float @dx.op.unary.f32(i32 12, float %446)  ; Cos(value)
  %449 = fmul fast float %448, %393
  %450 = call float @dx.op.tertiary.f32(i32 46, float %447, float %393, float 0.000000e+00)  ; FMad(a,b,c)
  %451 = fmul fast float %393, %447
  %452 = fsub fast float -0.000000e+00, %451
  %453 = call float @dx.op.tertiary.f32(i32 46, float %448, float %393, float 0.000000e+00)  ; FMad(a,b,c)
  br label %454

; <label>:454                                     ; preds = %454, %379
  %455 = phi float [ 0.000000e+00, %379 ], [ %487, %454 ]
  %456 = phi float [ 0.000000e+00, %379 ], [ %489, %454 ]
  %457 = phi i32 [ 0, %379 ], [ %490, %454 ]
  %458 = mul i32 %457, 2
  %459 = add i32 0, %458
  %460 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %459
  %461 = load float, float* %460, align 4
  %462 = mul i32 %457, 2
  %463 = add i32 1, %462
  %464 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %463
  %465 = load float, float* %464, align 4
  %466 = fmul fast float %449, %461
  %467 = call float @dx.op.tertiary.f32(i32 46, float %465, float %452, float %466)  ; FMad(a,b,c)
  %468 = fmul fast float %461, %450
  %469 = call float @dx.op.tertiary.f32(i32 46, float %465, float %453, float %468)  ; FMad(a,b,c)
  %470 = fadd fast float %467, %442
  %471 = fadd fast float %469, %443
  %472 = fmul fast float %470, %388
  %473 = fmul fast float %471, %388
  %474 = call float @dx.op.binary.f32(i32 35, float %472, float %384)  ; FMax(a,b)
  %475 = call float @dx.op.binary.f32(i32 35, float %473, float %384)  ; FMax(a,b)
  %476 = call float @dx.op.binary.f32(i32 36, float %474, float %385)  ; FMin(a,b)
  %477 = call float @dx.op.binary.f32(i32 36, float %475, float %385)  ; FMin(a,b)
  %478 = fadd fast float %476, %382
  %479 = fadd fast float %477, %383
  %480 = uitofp i32 %419 to float
  %481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %478, float %479, float %480, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = fsub fast float %482, %445
  %484 = fsub fast float %483, %392
  %485 = fcmp fast ogt float %484, 0.000000e+00
  %486 = select i1 %485, float 1.000000e+00, float 0.000000e+00
  %487 = fadd fast float %486, %455
  %488 = select i1 %485, float %484, float 0.000000e+00
  %489 = fadd fast float %488, %456
  %490 = add nuw nsw i32 %457, 1
  %491 = icmp eq i32 %490, 8
  br i1 %491, label %492, label %454

; <label>:492                                     ; preds = %454
  %493 = fdiv fast float 1.000000e+00, %487
  %494 = fmul fast float %493, %489
  %495 = fdiv fast float 1.000000e+00, %445
  %496 = fmul fast float %494, %495
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = call float @dx.op.binary.f32(i32 35, float %497, float 0.000000e+00)  ; FMax(a,b)
  %499 = fmul fast float %487, 1.250000e-01
  %500 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  %501 = fmul fast float %500, 2.000000e+00
  %502 = fadd fast float %501, -1.000000e+00
  %503 = fcmp fast ogt float %502, 0.000000e+00
  %504 = fcmp fast olt float %502, 0.000000e+00
  %505 = zext i1 %503 to i32
  %506 = zext i1 %504 to i32
  %507 = sub nsw i32 %505, %506
  %508 = sitofp i32 %507 to float
  %509 = fmul fast float %508, %502
  %510 = fsub fast float 1.000000e+00, %509
  %511 = fmul fast float %510, %510
  %512 = fmul fast float %511, %510
  %513 = fsub fast float %510, %512
  %514 = fmul fast float %513, %498
  %515 = fsub fast float 1.000000e+00, %512
  %516 = fsub fast float %515, %514
  %517 = fmul fast float %508, 5.000000e-01
  %518 = fmul fast float %517, %516
  %519 = fsub fast float -5.000000e-01, %518
  %520 = fmul fast float %519, %361
  %521 = fadd fast float %520, 1.000000e+00
  %522 = fmul fast float %521, %373
  br label %523

; <label>:523                                     ; preds = %492, %340
  %524 = phi float [ %522, %492 ], [ %373, %340 ]
  %525 = call float @dx.op.binary.f32(i32 36, float %524, float %524)  ; FMin(a,b)
  %526 = call float @dx.op.binary.f32(i32 36, float %524, float %525)  ; FMin(a,b)
  %527 = fcmp fast ogt float %526, 0x3F10000000000000
  %528 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %527)  ; WaveAnyTrue(cond)
  %529 = select i1 %528, i32 %255, i32 0
  %530 = or i32 %250, %529
  %531 = lshr i32 %196, 5
  %532 = lshr i32 %197, 5
  %533 = fcmp fast olt float %524, 0x3F10000000000000
  %534 = call i1 @dx.op.waveAllTrue(i32 114, i1 %533)  ; WaveAllTrue(cond)
  %535 = fcmp fast ogt float %524, 0x3FEFFF8000000000
  %536 = call i1 @dx.op.waveAllTrue(i32 114, i1 %535)  ; WaveAllTrue(cond)
  %537 = or i1 %534, %536
  %538 = xor i1 %537, true
  %539 = lshr i32 %197, 1
  %540 = and i32 %539, 8
  %541 = lshr i32 %196, 2
  %542 = and i32 %541, 4
  %543 = or i32 %542, %36
  %544 = or i32 %543, %540
  %545 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %545, label %546, label %585, !dx.controlflow.hints !43

; <label>:546                                     ; preds = %523
  %547 = shl i32 1, %544
  %548 = select i1 %536, i32 %547, i32 0
  %549 = shl i32 65536, %544
  %550 = select i1 %534, i32 %549, i32 0
  %551 = or i32 %548, %550
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %555, label %553, !dx.controlflow.hints !44

; <label>:553                                     ; preds = %546
  %554 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %531, i32 %532, i32 %253, i32 %551)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %555

; <label>:555                                     ; preds = %553, %546
  br i1 %537, label %585, label %556

; <label>:556                                     ; preds = %555
  br label %557

; <label>:557                                     ; preds = %582, %556
  %558 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %531, i32 %532, i32 %253, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %559 = and i32 %558, 3
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %582, !dx.controlflow.hints !45

; <label>:561                                     ; preds = %557
  %562 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.i32 %563, 3
  %565 = call i32 @dx.op.binary.i32(i32 40, i32 %564, i32 %562)  ; UMin(a,b)
  %566 = extractvalue %dx.types.CBufRet.i32 %563, 2
  %567 = udiv i32 %565, %566
  %568 = urem i32 %565, %566
  %569 = extractvalue %dx.types.CBufRet.i32 %563, 1
  %570 = urem i32 %568, %569
  %571 = udiv i32 %568, %569
  %572 = shl i32 %570, 6
  %573 = and i32 %572, 32704
  %574 = shl i32 %571, 15
  %575 = and i32 %574, 8355840
  %576 = shl i32 %567, 23
  %577 = and i32 %576, 2139095040
  %578 = or i32 %577, %573
  %579 = or i32 %578, %575
  %580 = or i32 %579, 3
  %581 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %531, i32 %532, i32 %253, i32 %580)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %585

; <label>:582                                     ; preds = %557
  %583 = icmp eq i32 %559, 3
  br i1 %583, label %584, label %557, !dx.controlflow.hints !46

; <label>:584                                     ; preds = %582
  br label %585

; <label>:585                                     ; preds = %584, %561, %555, %523
  %586 = phi i32 [ 0, %555 ], [ %580, %561 ], [ 0, %523 ], [ %558, %584 ]
  %587 = phi i1 [ false, %555 ], [ %538, %561 ], [ %538, %523 ], [ %538, %584 ]
  br i1 %587, label %588, label %610, !dx.controlflow.hints !47

; <label>:588                                     ; preds = %585
  %589 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %586)  ; WaveReadLaneFirst(value)
  %590 = lshr i32 %196, 1
  %591 = and i32 %590, 15
  %592 = and i32 %539, 15
  %593 = and i32 %196, 1
  %594 = shl i32 %197, 1
  %595 = and i32 %594, 2
  %596 = or i32 %595, %593
  %597 = lshr i32 %589, 2
  %598 = and i32 %597, 8176
  %599 = lshr i32 %589, 11
  %600 = and i32 %599, 4080
  %601 = or i32 %598, %591
  %602 = or i32 %600, %592
  %603 = lshr i32 %589, 21
  %604 = and i32 %603, 1020
  %605 = or i32 %596, %604
  %606 = fmul fast float %524, 2.550000e+02
  %607 = fadd fast float %606, %191
  %608 = call float @dx.op.unary.f32(i32 27, float %607)  ; Round_ni(value)
  %609 = fmul fast float %608, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %601, i32 %602, i32 %605, float %609, float %609, float %609, float %609, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %610

; <label>:610                                     ; preds = %588, %585
  %611 = icmp eq i32 %251, %255
  br i1 %611, label %612, label %249, !llvm.loop !48

; <label>:612                                     ; preds = %610
  br label %613

; <label>:613                                     ; preds = %612, %221
  %614 = phi i32 [ 0, %221 ], [ %530, %612 ]
  %615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.i32 %615, 0
  %617 = call i32 @dx.op.tertiary.i32(i32 49, i32 %202, i32 %616, i32 %222)  ; UMad(a,b,c)
  %618 = shl i32 %617, 2
  %619 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %618, i32 undef, i32 undef, i32 %614)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %620 = add i32 %222, 1
  %621 = icmp ugt i32 %620, %218
  br i1 %621, label %622, label %221

; <label>:622                                     ; preds = %613
  br label %623

; <label>:623                                     ; preds = %622, %195, %57
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}

