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
; shader hash: 0c57e1774b42cae3b6e4f94a5219501d
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
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fmul fast float %183, 0x3FE3C6EF40000000
  %185 = frem fast float %67, 2.560000e+02
  %186 = frem fast float %68, 2.560000e+02
  %187 = fptoui float %185 to i32
  %188 = fptoui float %186 to i32
  %189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %187, i32 %188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fadd fast float %190, %184
  %192 = call float @dx.op.unary.f32(i32 22, float %191)  ; Frc(value)
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 0
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %626, label %196, !dx.controlflow.hints !41

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
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = lshr i32 %212, 16
  %214 = and i32 %212, 65535
  %215 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %213, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %216 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %214, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %217 = lshr i32 %215, 5
  %218 = lshr i32 %216, 5
  %219 = call i32 @dx.op.binary.i32(i32 40, i32 %218, i32 %205)  ; UMin(a,b)
  %220 = icmp ugt i32 %217, %219
  br i1 %220, label %626, label %221

; <label>:221                                     ; preds = %196
  br label %222

; <label>:222                                     ; preds = %616, %221
  %223 = phi i32 [ %623, %616 ], [ %217, %221 ]
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 0
  %226 = call i32 @dx.op.tertiary.i32(i32 49, i32 %203, i32 %225, i32 %223)  ; UMad(a,b,c)
  %227 = shl i32 %226, 2
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %248, label %616, label %249

; <label>:249                                     ; preds = %222
  br label %250

; <label>:250                                     ; preds = %613, %249
  %251 = phi i32 [ %531, %613 ], [ 0, %249 ]
  %252 = phi i32 [ %257, %613 ], [ %247, %249 ]
  %253 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %252)  ; FirstbitLo(value)
  %254 = add i32 %253, %230
  %255 = and i32 %253, 31
  %256 = shl i32 1, %255
  %257 = xor i32 %256, %252
  %258 = mul i32 %254, 112
  %259 = add i32 %258, 16
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = add i32 %258, 28
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = add i32 %258, 32
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = add i32 %258, 48
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = extractvalue %dx.types.ResRet.f32 %273, 3
  %278 = add i32 %258, 64
  %279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = extractvalue %dx.types.ResRet.f32 %279, 1
  %282 = extractvalue %dx.types.ResRet.f32 %279, 2
  %283 = extractvalue %dx.types.ResRet.f32 %279, 3
  %284 = add i32 %258, 92
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = uitofp i32 %287 to float
  %289 = lshr i32 %286, 16
  %290 = uitofp i32 %289 to float
  %291 = and i32 %266, 65535
  %292 = and i32 %266, 50331648
  %293 = icmp eq i32 %292, 33554432
  %294 = call float @dx.op.dot3.f32(i32 55, float %269, float %270, float %271, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %295 = fsub fast float %133, %274
  %296 = fsub fast float %134, %275
  %297 = fsub fast float %135, %276
  %298 = call float @dx.op.dot3.f32(i32 55, float %295, float %296, float %297, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = fdiv fast float %298, %294
  %300 = call float @dx.op.binary.f32(i32 35, float %299, float -1.000000e+00)  ; FMax(a,b)
  %301 = call float @dx.op.binary.f32(i32 36, float %300, float 1.000000e+00)  ; FMin(a,b)
  %302 = fmul fast float %301, %269
  %303 = fmul fast float %301, %270
  %304 = fmul fast float %301, %271
  %305 = fadd fast float %302, %274
  %306 = fadd fast float %303, %275
  %307 = fadd fast float %304, %276
  %308 = fsub fast float %305, %133
  %309 = fsub fast float %306, %134
  %310 = fsub fast float %307, %135
  %311 = call float @dx.op.dot3.f32(i32 55, float %308, float %309, float %310, float %308, float %309, float %310)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %313 = fdiv fast float 1.000000e+00, %312
  %314 = fmul fast float %308, %313
  %315 = fmul fast float %309, %313
  %316 = fmul fast float %310, %313
  br i1 %293, label %317, label %341, !dx.controlflow.hints !42

; <label>:317                                     ; preds = %250
  %318 = fmul fast float %282, %261
  %319 = fmul fast float %282, %262
  %320 = fmul fast float %282, %263
  %321 = fsub fast float %318, %133
  %322 = fadd fast float %321, %305
  %323 = fsub fast float %319, %134
  %324 = fadd fast float %323, %306
  %325 = fsub fast float %320, %135
  %326 = fadd fast float %325, %307
  %327 = call float @dx.op.dot3.f32(i32 55, float %322, float %324, float %326, float %322, float %324, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = call float @dx.op.unary.f32(i32 25, float %327)  ; Rsqrt(value)
  %329 = fmul fast float %328, %322
  %330 = fmul fast float %328, %324
  %331 = fmul fast float %328, %326
  %332 = fsub fast float %133, %305
  %333 = fsub fast float %134, %306
  %334 = fsub fast float %135, %307
  %335 = fsub fast float -0.000000e+00, %332
  %336 = fsub fast float -0.000000e+00, %333
  %337 = fsub fast float -0.000000e+00, %334
  %338 = call float @dx.op.dot3.f32(i32 55, float %335, float %336, float %337, float %261, float %262, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = fcmp fast ogt float %338, 0.000000e+00
  %340 = uitofp i1 %339 to float
  br label %341

; <label>:341                                     ; preds = %317, %250
  %342 = phi float [ %340, %317 ], [ 1.000000e+00, %250 ]
  %343 = phi float [ %329, %317 ], [ %314, %250 ]
  %344 = phi float [ %330, %317 ], [ %315, %250 ]
  %345 = phi float [ %331, %317 ], [ %316, %250 ]
  %346 = call float @dx.op.dot3.f32(i32 55, float %261, float %262, float %263, float %343, float %344, float %345)  ; Dot3(ax,ay,az,bx,by,bz)
  %347 = fmul fast float %346, %346
  %348 = call float @dx.op.unary.f32(i32 7, float %347)  ; Saturate(value)
  %349 = fsub fast float 1.000000e+00, %348
  %350 = fmul fast float %349, 5.000000e-01
  %351 = fcmp fast ogt float %346, 0.000000e+00
  %352 = fsub fast float 1.000000e+00, %350
  %353 = select i1 %351, float %350, float %352
  %354 = fmul fast float %353, %290
  %355 = fadd fast float %354, %288
  %356 = fmul fast float %355, 0x3EF0001000000000
  %357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %356, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 0
  %359 = fmul fast float %346, %280
  %360 = fadd fast float %359, %281
  %361 = call float @dx.op.unary.f32(i32 7, float %360)  ; Saturate(value)
  %362 = select i1 %293, float 1.000000e+00, float %361
  %363 = select i1 %293, float %361, float 1.000000e+00
  %364 = fmul fast float %312, %277
  %365 = fsub fast float 1.000000e+00, %364
  %366 = fmul fast float %365, %283
  %367 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %368 = fmul fast float %367, %363
  %369 = fmul fast float %368, 2.000000e+00
  %370 = fsub fast float 3.000000e+00, %369
  %371 = fmul fast float %358, %342
  %372 = fmul fast float %368, %368
  %373 = fmul fast float %372, %371
  %374 = fmul fast float %373, %370
  %375 = icmp ne i32 %291, 255
  %376 = call float @dx.op.binary.f32(i32 36, float %374, float %374)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 36, float %374, float %376)  ; FMin(a,b)
  %378 = fcmp fast ogt float %377, 0.000000e+00
  %379 = and i1 %375, %378
  br i1 %379, label %380, label %524, !dx.controlflow.hints !43

; <label>:380                                     ; preds = %341
  %381 = mul nuw nsw i32 %291, 176
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = extractvalue %dx.types.ResRet.f32 %382, 2
  %386 = extractvalue %dx.types.ResRet.f32 %382, 3
  %387 = add nuw nsw i32 %381, 16
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = add nuw nsw i32 %381, 32
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = add nuw nsw i32 %381, 48
  %397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = extractvalue %dx.types.ResRet.f32 %397, 1
  %400 = extractvalue %dx.types.ResRet.f32 %397, 2
  %401 = extractvalue %dx.types.ResRet.f32 %397, 3
  %402 = add nuw nsw i32 %381, 64
  %403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = extractvalue %dx.types.ResRet.f32 %403, 1
  %406 = extractvalue %dx.types.ResRet.f32 %403, 2
  %407 = extractvalue %dx.types.ResRet.f32 %403, 3
  %408 = add nuw nsw i32 %381, 80
  %409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = extractvalue %dx.types.ResRet.f32 %409, 2
  %413 = extractvalue %dx.types.ResRet.f32 %409, 3
  %414 = add nuw nsw i32 %381, 96
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = extractvalue %dx.types.ResRet.f32 %415, 3
  %420 = bitcast float %390 to i32
  %421 = fmul fast float %179, %395
  %422 = fmul fast float %180, %395
  %423 = fmul fast float %181, %395
  %424 = fadd fast float %421, %133
  %425 = fadd fast float %422, %134
  %426 = fadd fast float %423, %135
  %427 = fmul fast float %424, %398
  %428 = call float @dx.op.tertiary.f32(i32 46, float %425, float %404, float %427)  ; FMad(a,b,c)
  %429 = call float @dx.op.tertiary.f32(i32 46, float %426, float %410, float %428)  ; FMad(a,b,c)
  %430 = fadd fast float %429, %416
  %431 = fmul fast float %424, %399
  %432 = call float @dx.op.tertiary.f32(i32 46, float %425, float %405, float %431)  ; FMad(a,b,c)
  %433 = call float @dx.op.tertiary.f32(i32 46, float %426, float %411, float %432)  ; FMad(a,b,c)
  %434 = fadd fast float %433, %417
  %435 = fmul fast float %424, %400
  %436 = call float @dx.op.tertiary.f32(i32 46, float %425, float %406, float %435)  ; FMad(a,b,c)
  %437 = call float @dx.op.tertiary.f32(i32 46, float %426, float %412, float %436)  ; FMad(a,b,c)
  %438 = fadd fast float %437, %418
  %439 = fmul fast float %424, %401
  %440 = call float @dx.op.tertiary.f32(i32 46, float %425, float %407, float %439)  ; FMad(a,b,c)
  %441 = call float @dx.op.tertiary.f32(i32 46, float %426, float %413, float %440)  ; FMad(a,b,c)
  %442 = fadd fast float %441, %419
  %443 = fdiv fast float %430, %442
  %444 = fdiv fast float %434, %442
  %445 = fdiv fast float %438, %442
  %446 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %445)  ; FMax(a,b)
  %447 = fmul fast float %192, 0x401921FB60000000
  %448 = call float @dx.op.unary.f32(i32 13, float %447)  ; Sin(value)
  %449 = call float @dx.op.unary.f32(i32 12, float %447)  ; Cos(value)
  %450 = fmul fast float %449, %394
  %451 = call float @dx.op.tertiary.f32(i32 46, float %448, float %394, float 0.000000e+00)  ; FMad(a,b,c)
  %452 = fmul fast float %394, %448
  %453 = fsub fast float -0.000000e+00, %452
  %454 = call float @dx.op.tertiary.f32(i32 46, float %449, float %394, float 0.000000e+00)  ; FMad(a,b,c)
  br label %455

; <label>:455                                     ; preds = %455, %380
  %456 = phi float [ 0.000000e+00, %380 ], [ %488, %455 ]
  %457 = phi float [ 0.000000e+00, %380 ], [ %490, %455 ]
  %458 = phi i32 [ 0, %380 ], [ %491, %455 ]
  %459 = mul i32 %458, 2
  %460 = add i32 0, %459
  %461 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %460
  %462 = load float, float* %461, align 4
  %463 = mul i32 %458, 2
  %464 = add i32 1, %463
  %465 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %464
  %466 = load float, float* %465, align 4
  %467 = fmul fast float %450, %462
  %468 = call float @dx.op.tertiary.f32(i32 46, float %466, float %453, float %467)  ; FMad(a,b,c)
  %469 = fmul fast float %462, %451
  %470 = call float @dx.op.tertiary.f32(i32 46, float %466, float %454, float %469)  ; FMad(a,b,c)
  %471 = fadd fast float %468, %443
  %472 = fadd fast float %470, %444
  %473 = fmul fast float %471, %389
  %474 = fmul fast float %472, %389
  %475 = call float @dx.op.binary.f32(i32 35, float %473, float %385)  ; FMax(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %474, float %385)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 36, float %475, float %386)  ; FMin(a,b)
  %478 = call float @dx.op.binary.f32(i32 36, float %476, float %386)  ; FMin(a,b)
  %479 = fadd fast float %477, %383
  %480 = fadd fast float %478, %384
  %481 = uitofp i32 %420 to float
  %482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %479, float %480, float %481, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 0
  %484 = fsub fast float %483, %446
  %485 = fsub fast float %484, %393
  %486 = fcmp fast ogt float %485, 0.000000e+00
  %487 = select i1 %486, float 1.000000e+00, float 0.000000e+00
  %488 = fadd fast float %487, %456
  %489 = select i1 %486, float %485, float 0.000000e+00
  %490 = fadd fast float %489, %457
  %491 = add nuw nsw i32 %458, 1
  %492 = icmp eq i32 %491, 8
  br i1 %492, label %493, label %455

; <label>:493                                     ; preds = %455
  %494 = fdiv fast float 1.000000e+00, %488
  %495 = fmul fast float %494, %490
  %496 = fdiv fast float 1.000000e+00, %446
  %497 = fmul fast float %495, %496
  %498 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %499 = call float @dx.op.binary.f32(i32 35, float %498, float 0.000000e+00)  ; FMax(a,b)
  %500 = fmul fast float %488, 1.250000e-01
  %501 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %502 = fmul fast float %501, 2.000000e+00
  %503 = fadd fast float %502, -1.000000e+00
  %504 = fcmp fast ogt float %503, 0.000000e+00
  %505 = fcmp fast olt float %503, 0.000000e+00
  %506 = zext i1 %504 to i32
  %507 = zext i1 %505 to i32
  %508 = sub nsw i32 %506, %507
  %509 = sitofp i32 %508 to float
  %510 = fmul fast float %509, %503
  %511 = fsub fast float 1.000000e+00, %510
  %512 = fmul fast float %511, %511
  %513 = fmul fast float %512, %511
  %514 = fsub fast float %511, %513
  %515 = fmul fast float %514, %499
  %516 = fsub fast float 1.000000e+00, %513
  %517 = fsub fast float %516, %515
  %518 = fmul fast float %509, 5.000000e-01
  %519 = fmul fast float %518, %517
  %520 = fsub fast float -5.000000e-01, %519
  %521 = fmul fast float %520, %362
  %522 = fadd fast float %521, 1.000000e+00
  %523 = fmul fast float %522, %374
  br label %524

; <label>:524                                     ; preds = %493, %341
  %525 = phi float [ %523, %493 ], [ %374, %341 ]
  %526 = call float @dx.op.binary.f32(i32 36, float %525, float %525)  ; FMin(a,b)
  %527 = call float @dx.op.binary.f32(i32 36, float %525, float %526)  ; FMin(a,b)
  %528 = fcmp fast ogt float %527, 0x3F10000000000000
  %529 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %528)  ; WaveAnyTrue(cond)
  %530 = select i1 %529, i32 %256, i32 0
  %531 = or i32 %251, %530
  %532 = lshr i32 %197, 5
  %533 = lshr i32 %198, 5
  %534 = fcmp fast olt float %525, 0x3F10000000000000
  %535 = call i1 @dx.op.waveAllTrue(i32 114, i1 %534)  ; WaveAllTrue(cond)
  %536 = fcmp fast ogt float %525, 0x3FEFFF8000000000
  %537 = call i1 @dx.op.waveAllTrue(i32 114, i1 %536)  ; WaveAllTrue(cond)
  %538 = or i1 %535, %537
  %539 = xor i1 %538, true
  %540 = and i32 %198, 16
  %541 = lshr i32 %197, 1
  %542 = and i32 %541, 8
  %543 = icmp eq i32 %540, 0
  %544 = or i32 %542, %37
  %545 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %545, label %546, label %588, !dx.controlflow.hints !44

; <label>:546                                     ; preds = %524
  %547 = shl i32 1, %544
  %548 = select i1 %537, i32 %547, i32 0
  %549 = shl i32 65536, %544
  %550 = select i1 %535, i32 %549, i32 0
  %551 = or i32 %548, %550
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %558, label %553, !dx.controlflow.hints !45

; <label>:553                                     ; preds = %546
  br i1 %543, label %556, label %554, !dx.controlflow.hints !46

; <label>:554                                     ; preds = %553
  %555 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %532, i32 %533, i32 %254, i32 %551)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %558

; <label>:556                                     ; preds = %553
  %557 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %532, i32 %533, i32 %254, i32 %551)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %558

; <label>:558                                     ; preds = %556, %554, %546
  br i1 %538, label %588, label %559

; <label>:559                                     ; preds = %558
  br label %560

; <label>:560                                     ; preds = %585, %559
  %561 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %532, i32 %533, i32 %254, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %562 = and i32 %561, 3
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %585, !dx.controlflow.hints !47

; <label>:564                                     ; preds = %560
  %565 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.i32 %566, 3
  %568 = call i32 @dx.op.binary.i32(i32 40, i32 %567, i32 %565)  ; UMin(a,b)
  %569 = extractvalue %dx.types.CBufRet.i32 %566, 2
  %570 = udiv i32 %568, %569
  %571 = urem i32 %568, %569
  %572 = extractvalue %dx.types.CBufRet.i32 %566, 1
  %573 = urem i32 %571, %572
  %574 = udiv i32 %571, %572
  %575 = shl i32 %573, 6
  %576 = and i32 %575, 32704
  %577 = shl i32 %574, 15
  %578 = and i32 %577, 8355840
  %579 = shl i32 %570, 23
  %580 = and i32 %579, 2139095040
  %581 = or i32 %580, %576
  %582 = or i32 %581, %578
  %583 = or i32 %582, 3
  %584 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %532, i32 %533, i32 %254, i32 %583)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %588

; <label>:585                                     ; preds = %560
  %586 = icmp eq i32 %562, 3
  br i1 %586, label %587, label %560, !dx.controlflow.hints !48

; <label>:587                                     ; preds = %585
  br label %588

; <label>:588                                     ; preds = %587, %564, %558, %524
  %589 = phi i32 [ 0, %558 ], [ %583, %564 ], [ 0, %524 ], [ %561, %587 ]
  %590 = phi i1 [ false, %558 ], [ %539, %564 ], [ %539, %524 ], [ %539, %587 ]
  br i1 %590, label %591, label %613, !dx.controlflow.hints !49

; <label>:591                                     ; preds = %588
  %592 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %589)  ; WaveReadLaneFirst(value)
  %593 = lshr i32 %198, 1
  %594 = and i32 %541, 15
  %595 = and i32 %593, 15
  %596 = and i32 %197, 1
  %597 = shl i32 %198, 1
  %598 = and i32 %597, 2
  %599 = or i32 %598, %596
  %600 = lshr i32 %592, 2
  %601 = and i32 %600, 8176
  %602 = lshr i32 %592, 11
  %603 = and i32 %602, 4080
  %604 = or i32 %601, %594
  %605 = or i32 %603, %595
  %606 = lshr i32 %592, 21
  %607 = and i32 %606, 1020
  %608 = or i32 %599, %607
  %609 = fmul fast float %525, 2.550000e+02
  %610 = fadd fast float %609, %192
  %611 = call float @dx.op.unary.f32(i32 27, float %610)  ; Round_ni(value)
  %612 = fmul fast float %611, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %604, i32 %605, i32 %608, float %612, float %612, float %612, float %612, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %613

; <label>:613                                     ; preds = %591, %588
  %614 = icmp eq i32 %252, %256
  br i1 %614, label %615, label %250, !llvm.loop !50

; <label>:615                                     ; preds = %613
  br label %616

; <label>:616                                     ; preds = %615, %222
  %617 = phi i32 [ 0, %222 ], [ %531, %615 ]
  %618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.i32 %618, 0
  %620 = call i32 @dx.op.tertiary.i32(i32 49, i32 %203, i32 %619, i32 %223)  ; UMad(a,b,c)
  %621 = shl i32 %620, 2
  %622 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %621, i32 undef, i32 undef, i32 %617)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %623 = add i32 %223, 1
  %624 = icmp ugt i32 %623, %219
  br i1 %624, label %625, label %222

; <label>:625                                     ; preds = %616
  br label %626

; <label>:626                                     ; preds = %625, %196, %58
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
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}

