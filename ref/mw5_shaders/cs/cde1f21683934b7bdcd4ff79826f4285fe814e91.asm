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
; shader hash: 083ed98af18e1f08900a7c3980aa1ac4
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
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
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
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@"\01?gsLightIterator@@3IA" = external addrspace(3) global i32, align 4
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %23 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %24 = alloca [4 x i32], align 4
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %29 = shl i32 %26, 2
  %30 = mul i32 %29, %28
  %31 = add i32 %30, %20
  %32 = shl i32 %31, 2
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = lshr i32 %34, 28
  %36 = and i32 %35, 3
  %37 = lshr i32 %34, 14
  %38 = and i32 %37, 16383
  %39 = and i32 %34, 16383
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %52, label %41, !dx.controlflow.hints !33

; <label>:41                                      ; preds = %0
  %42 = shl nuw nsw i32 %38, 3
  %43 = shl nuw nsw i32 %39, 3
  %44 = or i32 %42, %21
  %45 = or i32 %43, %22
  %46 = add nsw i32 %36, -1
  %47 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %44, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = lshr i32 %48, 4
  %50 = and i32 %49, 15
  %51 = and i32 %48, 15
  br label %57

; <label>:52                                      ; preds = %0
  %53 = shl i32 %21, 1
  %54 = shl i32 %22, 1
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
  %68 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = fcmp fast olt float %69, -1.000000e+00
  %71 = fcmp fast ogt float %69, -1.000000e+00
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %74 = select i1 %71, float %73, float 1.000000e+00
  %75 = fadd fast float %69, 1.000000e+00
  %76 = fmul fast float %74, %75
  %77 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 3
  %81 = fmul fast float %79, %66
  %82 = fmul fast float %80, %67
  %83 = fmul fast float %81, 2.000000e+00
  %84 = fmul fast float %82, 2.000000e+00
  %85 = fsub fast float 1.000000e+00, %83
  %86 = fsub fast float 1.000000e+00, %84
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = select i1 %70, float %88, float %92
  %96 = select i1 %70, float %89, float %93
  %97 = select i1 %70, float %90, float %94
  %98 = fmul fast float %95, %85
  %99 = fmul fast float %96, %85
  %100 = fmul fast float %97, %85
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
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
  %151 = load i32, i32* %150, align 4, !tbaa !34
  %152 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %14, i32 %151, i32 %140, i32 %141, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %206 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %203, float %205, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = fmul fast float %239, 0x3FE3C6EF40000000
  %241 = frem fast float %66, 2.560000e+02
  %242 = frem fast float %67, 2.560000e+02
  %243 = fptoui float %241 to i32
  %244 = fptoui float %242 to i32
  %245 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = extractvalue %dx.types.ResRet.f32 %245, 2
  %248 = fadd fast float %246, %240
  %249 = fadd fast float %247, %240
  %250 = call float @dx.op.unary.f32(i32 22, float %248)  ; Frc(value)
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 0
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %1703, label %255, !dx.controlflow.hints !38

; <label>:255                                     ; preds = %57
  %256 = fptoui float %66 to i32
  %257 = fptoui float %67 to i32
  %258 = lshr i32 %256, 4
  %259 = lshr i32 %257, 4
  %260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.i32 %260, 0
  %262 = call i32 @dx.op.tertiary.i32(i32 49, i32 %259, i32 %261, i32 %258)  ; UMad(a,b,c)
  %263 = add nsw i32 %253, -1
  %264 = call i32 @dx.op.binary.i32(i32 37, i32 %263, i32 0)  ; IMax(a,b)
  %265 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %266 = fptoui float %265 to i32
  %267 = lshr i32 %266, 5
  %268 = call i32 @dx.op.binary.i32(i32 40, i32 %267, i32 8191)  ; UMin(a,b)
  %269 = shl i32 %268, 2
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = lshr i32 %271, 16
  %273 = and i32 %271, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %274 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %272 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %273 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  %278 = lshr i32 %275, 5
  %279 = lshr i32 %277, 5
  %280 = call i32 @dx.op.binary.i32(i32 40, i32 %279, i32 %264)  ; UMin(a,b)
  %281 = icmp ugt i32 %278, %280
  br i1 %281, label %1703, label %282

; <label>:282                                     ; preds = %255
  br label %283

; <label>:283                                     ; preds = %1693, %282
  %284 = phi i32 [ %1700, %1693 ], [ %278, %282 ]
  %285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.i32 %285, 0
  %287 = call i32 @dx.op.tertiary.i32(i32 49, i32 %262, i32 %286, i32 %284)  ; UMad(a,b,c)
  %288 = shl i32 %287, 2
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = shl i32 %284, 5
  %292 = sub nsw i32 %272, %291
  %293 = call i32 @dx.op.binary.i32(i32 37, i32 %292, i32 0)  ; IMax(a,b)
  %294 = call i32 @dx.op.binary.i32(i32 38, i32 %293, i32 31)  ; IMin(a,b)
  %295 = sub nsw i32 1, %272
  %296 = add nsw i32 %295, %273
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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %307 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %306 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %308 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %309 = icmp eq i32 %23, 0
  br i1 %309, label %310, label %311, !dx.controlflow.hints !39

; <label>:310                                     ; preds = %283
  store i32 %308, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %311

; <label>:311                                     ; preds = %310, %283
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %312 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %1693, label %314

; <label>:314                                     ; preds = %311
  br label %315

; <label>:315                                     ; preds = %1653, %314
  %316 = phi i32 [ %1665, %1653 ], [ 0, %314 ]
  %317 = phi i32 [ %322, %1653 ], [ %312, %314 ]
  %318 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %317)  ; FirstbitLo(value)
  %319 = add i32 %318, %291
  %320 = and i32 %318, 31
  %321 = shl i32 1, %320
  %322 = xor i32 %321, %317
  %323 = mul i32 %319, 112
  %324 = add i32 %323, 16
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = extractvalue %dx.types.ResRet.f32 %325, 1
  %328 = extractvalue %dx.types.ResRet.f32 %325, 2
  %329 = add i32 %323, 28
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = add i32 %323, 32
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = add i32 %323, 44
  %338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = add i32 %323, 48
  %341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = extractvalue %dx.types.ResRet.f32 %341, 3
  %346 = add i32 %323, 64
  %347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.f32 %347, 0
  %349 = extractvalue %dx.types.ResRet.f32 %347, 1
  %350 = extractvalue %dx.types.ResRet.f32 %347, 2
  %351 = extractvalue %dx.types.ResRet.f32 %347, 3
  %352 = add i32 %323, 92
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = uitofp i32 %355 to float
  %357 = lshr i32 %354, 16
  %358 = uitofp i32 %357 to float
  %359 = and i32 %331, 65535
  %360 = and i32 %331, 50331648
  %361 = icmp eq i32 %360, 33554432
  %362 = call float @dx.op.dot3.f32(i32 55, float %334, float %335, float %336, float %334, float %335, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %363 = fsub fast float %132, %342
  %364 = fsub fast float %133, %343
  %365 = fsub fast float %134, %344
  %366 = call float @dx.op.dot3.f32(i32 55, float %363, float %364, float %365, float %334, float %335, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %367 = fdiv fast float %366, %362
  %368 = call float @dx.op.binary.f32(i32 35, float %367, float -1.000000e+00)  ; FMax(a,b)
  %369 = call float @dx.op.binary.f32(i32 36, float %368, float 1.000000e+00)  ; FMin(a,b)
  %370 = fmul fast float %369, %334
  %371 = fmul fast float %369, %335
  %372 = fmul fast float %369, %336
  %373 = fadd fast float %370, %342
  %374 = fadd fast float %371, %343
  %375 = fadd fast float %372, %344
  %376 = fsub fast float %373, %132
  %377 = fsub fast float %374, %133
  %378 = fsub fast float %375, %134
  %379 = call float @dx.op.dot3.f32(i32 55, float %376, float %377, float %378, float %376, float %377, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %380 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %381 = fdiv fast float 1.000000e+00, %380
  %382 = fmul fast float %376, %381
  %383 = fmul fast float %377, %381
  %384 = fmul fast float %378, %381
  br i1 %361, label %385, label %409, !dx.controlflow.hints !40

; <label>:385                                     ; preds = %315
  %386 = fmul fast float %350, %326
  %387 = fmul fast float %350, %327
  %388 = fmul fast float %350, %328
  %389 = fsub fast float %386, %132
  %390 = fadd fast float %389, %373
  %391 = fsub fast float %387, %133
  %392 = fadd fast float %391, %374
  %393 = fsub fast float %388, %134
  %394 = fadd fast float %393, %375
  %395 = call float @dx.op.dot3.f32(i32 55, float %390, float %392, float %394, float %390, float %392, float %394)  ; Dot3(ax,ay,az,bx,by,bz)
  %396 = call float @dx.op.unary.f32(i32 25, float %395)  ; Rsqrt(value)
  %397 = fmul fast float %396, %390
  %398 = fmul fast float %396, %392
  %399 = fmul fast float %396, %394
  %400 = fsub fast float %132, %373
  %401 = fsub fast float %133, %374
  %402 = fsub fast float %134, %375
  %403 = fsub fast float -0.000000e+00, %400
  %404 = fsub fast float -0.000000e+00, %401
  %405 = fsub fast float -0.000000e+00, %402
  %406 = call float @dx.op.dot3.f32(i32 55, float %403, float %404, float %405, float %326, float %327, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %407 = fcmp fast ogt float %406, 0.000000e+00
  %408 = uitofp i1 %407 to float
  br label %409

; <label>:409                                     ; preds = %385, %315
  %410 = phi float [ %408, %385 ], [ 1.000000e+00, %315 ]
  %411 = phi float [ %397, %385 ], [ %382, %315 ]
  %412 = phi float [ %398, %385 ], [ %383, %315 ]
  %413 = phi float [ %399, %385 ], [ %384, %315 ]
  %414 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float %411, float %412, float %413)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = fmul fast float %414, %414
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = fsub fast float 1.000000e+00, %416
  %418 = fmul fast float %417, 5.000000e-01
  %419 = fcmp fast ogt float %414, 0.000000e+00
  %420 = fsub fast float 1.000000e+00, %418
  %421 = select i1 %419, float %418, float %420
  %422 = fmul fast float %421, %358
  %423 = fadd fast float %422, %356
  %424 = fmul fast float %423, 0x3EF0001000000000
  %425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %424, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = fmul fast float %414, %348
  %428 = fadd fast float %427, %349
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = select i1 %361, float 1.000000e+00, float %429
  %431 = select i1 %361, float %429, float 1.000000e+00
  %432 = fmul fast float %380, %345
  %433 = fsub fast float 1.000000e+00, %432
  %434 = fmul fast float %433, %351
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fmul fast float %435, %431
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 3.000000e+00, %437
  %439 = fmul fast float %426, %410
  %440 = fmul fast float %436, %436
  %441 = fmul fast float %440, %439
  %442 = fmul fast float %441, %438
  %443 = icmp ne i32 %359, 255
  %444 = call float @dx.op.binary.f32(i32 36, float %442, float %442)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %442, float %444)  ; FMin(a,b)
  %446 = fcmp fast ogt float %445, 0.000000e+00
  %447 = and i1 %443, %446
  br i1 %447, label %448, label %1362, !dx.controlflow.hints !41

; <label>:448                                     ; preds = %409
  %449 = mul nuw nsw i32 %359, 176
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = add nuw nsw i32 %449, 16
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = add nuw nsw i32 %449, 32
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add nuw nsw i32 %449, 48
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add nuw nsw i32 %449, 64
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = add nuw nsw i32 %449, 80
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = add nuw nsw i32 %449, 96
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = add nuw nsw i32 %449, 112
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = add nuw nsw i32 %449, 128
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = extractvalue %dx.types.ResRet.f32 %496, 3
  %501 = add nuw nsw i32 %449, 144
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = add nuw nsw i32 %449, 160
  %508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = bitcast float %458 to i32
  %514 = bitcast float %464 to i32
  %515 = and i32 %514, 1
  %516 = icmp ne i32 %515, 0
  %517 = and i32 %514, 2
  %518 = fmul fast float %463, %178
  %519 = fmul fast float %463, %179
  %520 = fmul fast float %463, %180
  %521 = fadd fast float %518, %132
  %522 = fadd fast float %519, %133
  %523 = fadd fast float %520, %134
  %524 = fmul fast float %521, %467
  %525 = call float @dx.op.tertiary.f32(i32 46, float %522, float %473, float %524)  ; FMad(a,b,c)
  %526 = call float @dx.op.tertiary.f32(i32 46, float %523, float %479, float %525)  ; FMad(a,b,c)
  %527 = fadd fast float %526, %485
  %528 = fmul fast float %521, %468
  %529 = call float @dx.op.tertiary.f32(i32 46, float %522, float %474, float %528)  ; FMad(a,b,c)
  %530 = call float @dx.op.tertiary.f32(i32 46, float %523, float %480, float %529)  ; FMad(a,b,c)
  %531 = fadd fast float %530, %486
  %532 = fmul fast float %521, %469
  %533 = call float @dx.op.tertiary.f32(i32 46, float %522, float %475, float %532)  ; FMad(a,b,c)
  %534 = call float @dx.op.tertiary.f32(i32 46, float %523, float %481, float %533)  ; FMad(a,b,c)
  %535 = fadd fast float %534, %487
  %536 = fmul fast float %521, %470
  %537 = call float @dx.op.tertiary.f32(i32 46, float %522, float %476, float %536)  ; FMad(a,b,c)
  %538 = call float @dx.op.tertiary.f32(i32 46, float %523, float %482, float %537)  ; FMad(a,b,c)
  %539 = fadd fast float %538, %488
  %540 = fdiv fast float %527, %539
  %541 = fdiv fast float %531, %539
  %542 = fdiv fast float %535, %539
  %543 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %542)  ; FMax(a,b)
  %544 = fmul fast float %250, 0x401921FB60000000
  %545 = call float @dx.op.unary.f32(i32 13, float %544)  ; Sin(value)
  %546 = call float @dx.op.unary.f32(i32 12, float %544)  ; Cos(value)
  %547 = fsub fast float -0.000000e+00, %545
  %548 = icmp eq i32 %517, 0
  br i1 %548, label %549, label %620, !dx.controlflow.hints !42

; <label>:549                                     ; preds = %448
  %550 = fmul fast float %546, %462
  %551 = call float @dx.op.tertiary.f32(i32 46, float %545, float %462, float 0.000000e+00)  ; FMad(a,b,c)
  %552 = fmul fast float %462, %547
  %553 = call float @dx.op.tertiary.f32(i32 46, float %546, float %462, float 0.000000e+00)  ; FMad(a,b,c)
  br label %554

; <label>:554                                     ; preds = %554, %549
  %555 = phi float [ 0.000000e+00, %549 ], [ %587, %554 ]
  %556 = phi float [ 0.000000e+00, %549 ], [ %589, %554 ]
  %557 = phi i32 [ 0, %549 ], [ %590, %554 ]
  %558 = mul i32 %557, 2
  %559 = add i32 0, %558
  %560 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %559
  %561 = load float, float* %560, align 4
  %562 = mul i32 %557, 2
  %563 = add i32 1, %562
  %564 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %563
  %565 = load float, float* %564, align 4
  %566 = fmul fast float %550, %561
  %567 = call float @dx.op.tertiary.f32(i32 46, float %565, float %552, float %566)  ; FMad(a,b,c)
  %568 = fmul fast float %561, %551
  %569 = call float @dx.op.tertiary.f32(i32 46, float %565, float %553, float %568)  ; FMad(a,b,c)
  %570 = fadd fast float %567, %540
  %571 = fadd fast float %569, %541
  %572 = fmul fast float %570, %457
  %573 = fmul fast float %571, %457
  %574 = call float @dx.op.binary.f32(i32 35, float %572, float %453)  ; FMax(a,b)
  %575 = call float @dx.op.binary.f32(i32 35, float %573, float %453)  ; FMax(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float %574, float %454)  ; FMin(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float %575, float %454)  ; FMin(a,b)
  %578 = fadd fast float %576, %451
  %579 = fadd fast float %577, %452
  %580 = uitofp i32 %513 to float
  %581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %578, float %579, float %580, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = fsub fast float %582, %543
  %584 = fsub fast float %583, %461
  %585 = fcmp fast ogt float %584, 0.000000e+00
  %586 = select i1 %585, float 1.000000e+00, float 0.000000e+00
  %587 = fadd fast float %586, %555
  %588 = select i1 %585, float %584, float 0.000000e+00
  %589 = fadd fast float %588, %556
  %590 = add nuw nsw i32 %557, 1
  %591 = icmp eq i32 %590, 8
  br i1 %591, label %592, label %554

; <label>:592                                     ; preds = %554
  %593 = fdiv fast float 1.000000e+00, %587
  %594 = fmul fast float %593, %589
  %595 = fdiv fast float 1.000000e+00, %543
  %596 = fmul fast float %594, %595
  %597 = call float @dx.op.unary.f32(i32 7, float %596)  ; Saturate(value)
  %598 = call float @dx.op.binary.f32(i32 35, float %597, float 0.000000e+00)  ; FMax(a,b)
  %599 = fmul fast float %587, 1.250000e-01
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = fmul fast float %600, 2.000000e+00
  %602 = fadd fast float %601, -1.000000e+00
  %603 = fcmp fast ogt float %602, 0.000000e+00
  %604 = fcmp fast olt float %602, 0.000000e+00
  %605 = zext i1 %603 to i32
  %606 = zext i1 %604 to i32
  %607 = sub nsw i32 %605, %606
  %608 = sitofp i32 %607 to float
  %609 = fmul fast float %608, %602
  %610 = fsub fast float 1.000000e+00, %609
  %611 = fmul fast float %610, %610
  %612 = fmul fast float %611, %610
  %613 = fsub fast float %610, %612
  %614 = fmul fast float %613, %598
  %615 = fsub fast float 1.000000e+00, %612
  %616 = fsub fast float %615, %614
  %617 = fmul fast float %608, 5.000000e-01
  %618 = fmul fast float %617, %616
  %619 = fsub fast float 5.000000e-01, %618
  br label %1235

; <label>:620                                     ; preds = %448
  %621 = fsub fast float 1.000000e+00, %543
  %622 = fmul fast float %621, 5.000000e-01
  %623 = fadd fast float %622, %543
  %624 = fsub fast float %521, %342
  %625 = fsub fast float %522, %343
  %626 = fsub fast float %523, %344
  %627 = call float @dx.op.dot3.f32(i32 55, float %624, float %625, float %626, float %334, float %335, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = fdiv fast float %627, %362
  %629 = call float @dx.op.binary.f32(i32 35, float %628, float -1.000000e+00)  ; FMax(a,b)
  %630 = call float @dx.op.binary.f32(i32 36, float %629, float 1.000000e+00)  ; FMin(a,b)
  %631 = fmul fast float %630, %334
  %632 = fmul fast float %630, %335
  %633 = fmul fast float %630, %336
  %634 = fsub fast float %624, %631
  %635 = fsub fast float %625, %632
  %636 = fsub fast float %626, %633
  %637 = call float @dx.op.dot3.f32(i32 55, float %634, float %635, float %636, float %634, float %635, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %638 = call float @dx.op.unary.f32(i32 25, float %637)  ; Rsqrt(value)
  %639 = fmul fast float %634, %638
  %640 = fmul fast float %635, %638
  %641 = fmul fast float %636, %638
  %642 = call float @dx.op.unary.f32(i32 25, float %362)  ; Rsqrt(value)
  %643 = fmul fast float %642, %334
  %644 = fmul fast float %642, %335
  %645 = fmul fast float %642, %336
  br i1 %516, label %646, label %650, !dx.controlflow.hints !43

; <label>:646                                     ; preds = %620
  %647 = fcmp fast olt float %640, 0x3FE6666660000000
  %648 = select i1 %647, float 1.000000e+00, float 0.000000e+00
  %649 = select i1 %647, float 0.000000e+00, float 1.000000e+00
  br label %650

; <label>:650                                     ; preds = %646, %620
  %651 = phi float [ 0.000000e+00, %646 ], [ %643, %620 ]
  %652 = phi float [ %648, %646 ], [ %644, %620 ]
  %653 = phi float [ %649, %646 ], [ %645, %620 ]
  %654 = fmul fast float %652, %641
  %655 = fmul fast float %653, %640
  %656 = fsub fast float %654, %655
  %657 = fmul fast float %653, %639
  %658 = fmul fast float %651, %641
  %659 = fsub fast float %657, %658
  %660 = fmul fast float %651, %640
  %661 = fmul fast float %652, %639
  %662 = fsub fast float %660, %661
  %663 = call float @dx.op.dot3.f32(i32 55, float %656, float %659, float %662, float %656, float %659, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %664 = call float @dx.op.unary.f32(i32 25, float %663)  ; Rsqrt(value)
  %665 = fmul fast float %664, %339
  %666 = fmul fast float %665, %656
  %667 = fmul fast float %665, %659
  %668 = fmul fast float %662, %339
  %669 = fmul fast float %668, %664
  %670 = fmul fast float %540, %491
  %671 = call float @dx.op.tertiary.f32(i32 46, float %541, float %497, float %670)  ; FMad(a,b,c)
  %672 = call float @dx.op.tertiary.f32(i32 46, float %623, float %503, float %671)  ; FMad(a,b,c)
  %673 = fadd fast float %672, %509
  %674 = fmul fast float %540, %492
  %675 = call float @dx.op.tertiary.f32(i32 46, float %541, float %498, float %674)  ; FMad(a,b,c)
  %676 = call float @dx.op.tertiary.f32(i32 46, float %623, float %504, float %675)  ; FMad(a,b,c)
  %677 = fadd fast float %676, %510
  %678 = fmul fast float %540, %493
  %679 = call float @dx.op.tertiary.f32(i32 46, float %541, float %499, float %678)  ; FMad(a,b,c)
  %680 = call float @dx.op.tertiary.f32(i32 46, float %623, float %505, float %679)  ; FMad(a,b,c)
  %681 = fadd fast float %680, %511
  %682 = fmul fast float %540, %494
  %683 = call float @dx.op.tertiary.f32(i32 46, float %541, float %500, float %682)  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float %623, float %506, float %683)  ; FMad(a,b,c)
  %685 = fadd fast float %684, %512
  %686 = fdiv fast float 1.000000e+00, %685
  %687 = fmul fast float %686, %673
  %688 = fmul fast float %686, %677
  %689 = fmul fast float %686, %681
  %690 = fsub fast float -0.000000e+00, %639
  %691 = fsub fast float -0.000000e+00, %640
  %692 = fsub fast float -0.000000e+00, %641
  %693 = fsub fast float %342, %666
  %694 = fsub fast float %343, %667
  %695 = fsub fast float %344, %669
  %696 = fsub fast float %687, %693
  %697 = fsub fast float %688, %694
  %698 = fsub fast float %689, %695
  %699 = call float @dx.op.dot3.f32(i32 55, float %696, float %697, float %698, float %696, float %697, float %698)  ; Dot3(ax,ay,az,bx,by,bz)
  %700 = call float @dx.op.unary.f32(i32 25, float %699)  ; Rsqrt(value)
  %701 = fmul fast float %696, %700
  %702 = fmul fast float %697, %700
  %703 = fmul fast float %698, %700
  %704 = fsub fast float %521, %693
  %705 = fsub fast float %522, %694
  %706 = fsub fast float %523, %695
  %707 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %704, float %705, float %706)  ; Dot3(ax,ay,az,bx,by,bz)
  %708 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %701, float %702, float %703)  ; Dot3(ax,ay,az,bx,by,bz)
  %709 = fdiv fast float 1.000000e+00, %708
  %710 = fmul fast float %709, %707
  %711 = fmul fast float %710, %701
  %712 = fmul fast float %710, %702
  %713 = fmul fast float %710, %703
  %714 = fadd fast float %711, %693
  %715 = fadd fast float %712, %694
  %716 = fadd fast float %713, %695
  %717 = fadd fast float %666, %342
  %718 = fadd fast float %667, %343
  %719 = fadd fast float %669, %344
  %720 = fsub fast float %687, %717
  %721 = fsub fast float %688, %718
  %722 = fsub fast float %689, %719
  %723 = call float @dx.op.dot3.f32(i32 55, float %720, float %721, float %722, float %720, float %721, float %722)  ; Dot3(ax,ay,az,bx,by,bz)
  %724 = call float @dx.op.unary.f32(i32 25, float %723)  ; Rsqrt(value)
  %725 = fmul fast float %724, %720
  %726 = fmul fast float %724, %721
  %727 = fmul fast float %724, %722
  %728 = fsub fast float %521, %717
  %729 = fsub fast float %522, %718
  %730 = fsub fast float %523, %719
  %731 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %728, float %729, float %730)  ; Dot3(ax,ay,az,bx,by,bz)
  %732 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %725, float %726, float %727)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = fdiv fast float 1.000000e+00, %732
  %734 = fmul fast float %733, %731
  %735 = fmul fast float %734, %725
  %736 = fmul fast float %734, %726
  %737 = fmul fast float %734, %727
  %738 = fadd fast float %735, %717
  %739 = fadd fast float %736, %718
  %740 = fadd fast float %737, %719
  %741 = fmul fast float %714, %467
  %742 = call float @dx.op.tertiary.f32(i32 46, float %715, float %473, float %741)  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %716, float %479, float %742)  ; FMad(a,b,c)
  %744 = fadd fast float %743, %485
  %745 = fmul fast float %714, %468
  %746 = call float @dx.op.tertiary.f32(i32 46, float %715, float %474, float %745)  ; FMad(a,b,c)
  %747 = call float @dx.op.tertiary.f32(i32 46, float %716, float %480, float %746)  ; FMad(a,b,c)
  %748 = fadd fast float %747, %486
  %749 = fmul fast float %714, %470
  %750 = call float @dx.op.tertiary.f32(i32 46, float %715, float %476, float %749)  ; FMad(a,b,c)
  %751 = call float @dx.op.tertiary.f32(i32 46, float %716, float %482, float %750)  ; FMad(a,b,c)
  %752 = fadd fast float %751, %488
  %753 = fmul fast float %738, %467
  %754 = call float @dx.op.tertiary.f32(i32 46, float %739, float %473, float %753)  ; FMad(a,b,c)
  %755 = call float @dx.op.tertiary.f32(i32 46, float %740, float %479, float %754)  ; FMad(a,b,c)
  %756 = fadd fast float %755, %485
  %757 = fmul fast float %738, %468
  %758 = call float @dx.op.tertiary.f32(i32 46, float %739, float %474, float %757)  ; FMad(a,b,c)
  %759 = call float @dx.op.tertiary.f32(i32 46, float %740, float %480, float %758)  ; FMad(a,b,c)
  %760 = fadd fast float %759, %486
  %761 = fmul fast float %738, %470
  %762 = call float @dx.op.tertiary.f32(i32 46, float %739, float %476, float %761)  ; FMad(a,b,c)
  %763 = call float @dx.op.tertiary.f32(i32 46, float %740, float %482, float %762)  ; FMad(a,b,c)
  %764 = fadd fast float %763, %488
  %765 = fdiv fast float 1.000000e+00, %752
  %766 = fmul fast float %765, %744
  %767 = fmul fast float %765, %748
  %768 = fdiv fast float 1.000000e+00, %764
  %769 = fmul fast float %768, %756
  %770 = fmul fast float %768, %760
  %771 = fsub fast float %769, %766
  %772 = fsub fast float %770, %767
  %773 = call float @dx.op.dot2.f32(i32 54, float %771, float %772, float %771, float %772)  ; Dot2(ax,ay,bx,by)
  %774 = call float @dx.op.unary.f32(i32 25, float %773)  ; Rsqrt(value)
  %775 = fmul fast float %771, %774
  %776 = fmul fast float %772, %774
  %777 = fmul fast float %771, %771
  %778 = fmul fast float %772, %772
  %779 = fadd fast float %777, %778
  %780 = call float @dx.op.unary.f32(i32 24, float %779)  ; Sqrt(value)
  %781 = fmul fast float %780, 5.000000e-01
  br i1 %516, label %874, label %782, !dx.controlflow.hints !44

; <label>:782                                     ; preds = %650
  %783 = fsub fast float %342, %334
  %784 = fsub fast float %343, %335
  %785 = fsub fast float %344, %336
  %786 = fsub fast float %687, %783
  %787 = fsub fast float %688, %784
  %788 = fsub fast float %689, %785
  %789 = call float @dx.op.dot3.f32(i32 55, float %786, float %787, float %788, float %786, float %787, float %788)  ; Dot3(ax,ay,az,bx,by,bz)
  %790 = call float @dx.op.unary.f32(i32 25, float %789)  ; Rsqrt(value)
  %791 = fmul fast float %790, %786
  %792 = fmul fast float %790, %787
  %793 = fmul fast float %790, %788
  %794 = fsub fast float %521, %783
  %795 = fsub fast float %522, %784
  %796 = fsub fast float %523, %785
  %797 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %794, float %795, float %796)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %799 = fdiv fast float 1.000000e+00, %798
  %800 = fmul fast float %799, %797
  %801 = fmul fast float %800, %791
  %802 = fmul fast float %800, %792
  %803 = fmul fast float %800, %793
  %804 = fadd fast float %801, %783
  %805 = fadd fast float %802, %784
  %806 = fadd fast float %803, %785
  %807 = fadd fast float %342, %334
  %808 = fadd fast float %343, %335
  %809 = fadd fast float %344, %336
  %810 = fsub fast float %687, %807
  %811 = fsub fast float %688, %808
  %812 = fsub fast float %689, %809
  %813 = call float @dx.op.dot3.f32(i32 55, float %810, float %811, float %812, float %810, float %811, float %812)  ; Dot3(ax,ay,az,bx,by,bz)
  %814 = call float @dx.op.unary.f32(i32 25, float %813)  ; Rsqrt(value)
  %815 = fmul fast float %814, %810
  %816 = fmul fast float %814, %811
  %817 = fmul fast float %814, %812
  %818 = fsub fast float %521, %807
  %819 = fsub fast float %522, %808
  %820 = fsub fast float %523, %809
  %821 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %818, float %819, float %820)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %815, float %816, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %823 = fdiv fast float 1.000000e+00, %822
  %824 = fmul fast float %823, %821
  %825 = fmul fast float %824, %815
  %826 = fmul fast float %824, %816
  %827 = fmul fast float %824, %817
  %828 = fadd fast float %825, %807
  %829 = fadd fast float %826, %808
  %830 = fadd fast float %827, %809
  %831 = fmul fast float %804, %467
  %832 = call float @dx.op.tertiary.f32(i32 46, float %805, float %473, float %831)  ; FMad(a,b,c)
  %833 = call float @dx.op.tertiary.f32(i32 46, float %806, float %479, float %832)  ; FMad(a,b,c)
  %834 = fadd fast float %833, %485
  %835 = fmul fast float %804, %468
  %836 = call float @dx.op.tertiary.f32(i32 46, float %805, float %474, float %835)  ; FMad(a,b,c)
  %837 = call float @dx.op.tertiary.f32(i32 46, float %806, float %480, float %836)  ; FMad(a,b,c)
  %838 = fadd fast float %837, %486
  %839 = fmul fast float %804, %470
  %840 = call float @dx.op.tertiary.f32(i32 46, float %805, float %476, float %839)  ; FMad(a,b,c)
  %841 = call float @dx.op.tertiary.f32(i32 46, float %806, float %482, float %840)  ; FMad(a,b,c)
  %842 = fadd fast float %841, %488
  %843 = fmul fast float %828, %467
  %844 = call float @dx.op.tertiary.f32(i32 46, float %829, float %473, float %843)  ; FMad(a,b,c)
  %845 = call float @dx.op.tertiary.f32(i32 46, float %830, float %479, float %844)  ; FMad(a,b,c)
  %846 = fadd fast float %845, %485
  %847 = fmul fast float %828, %468
  %848 = call float @dx.op.tertiary.f32(i32 46, float %829, float %474, float %847)  ; FMad(a,b,c)
  %849 = call float @dx.op.tertiary.f32(i32 46, float %830, float %480, float %848)  ; FMad(a,b,c)
  %850 = fadd fast float %849, %486
  %851 = fmul fast float %828, %470
  %852 = call float @dx.op.tertiary.f32(i32 46, float %829, float %476, float %851)  ; FMad(a,b,c)
  %853 = call float @dx.op.tertiary.f32(i32 46, float %830, float %482, float %852)  ; FMad(a,b,c)
  %854 = fadd fast float %853, %488
  %855 = fdiv fast float 1.000000e+00, %842
  %856 = fmul fast float %855, %834
  %857 = fmul fast float %855, %838
  %858 = fdiv fast float 1.000000e+00, %854
  %859 = fmul fast float %858, %846
  %860 = fmul fast float %858, %850
  %861 = fsub fast float %859, %856
  %862 = fsub fast float %860, %857
  %863 = call float @dx.op.dot2.f32(i32 54, float %861, float %862, float %861, float %862)  ; Dot2(ax,ay,bx,by)
  %864 = call float @dx.op.unary.f32(i32 25, float %863)  ; Rsqrt(value)
  %865 = fmul fast float %861, %864
  %866 = fmul fast float %862, %864
  %867 = fmul fast float %861, %861
  %868 = fmul fast float %862, %862
  %869 = fadd fast float %867, %868
  %870 = call float @dx.op.unary.f32(i32 24, float %869)  ; Sqrt(value)
  %871 = fmul fast float %870, 5.000000e-01
  %872 = fcmp fast olt float %871, %781
  br i1 %872, label %873, label %874, !dx.controlflow.hints !45

; <label>:873                                     ; preds = %782
  br label %874

; <label>:874                                     ; preds = %873, %782, %650
  %875 = phi float [ %781, %650 ], [ %871, %873 ], [ %781, %782 ]
  %876 = phi float [ %781, %650 ], [ %781, %873 ], [ %871, %782 ]
  %877 = phi float [ %775, %650 ], [ %775, %873 ], [ %865, %782 ]
  %878 = phi float [ %776, %650 ], [ %776, %873 ], [ %866, %782 ]
  %879 = fmul fast float %875, %462
  %880 = fdiv fast float %879, %876
  %881 = fsub fast float %462, %880
  %882 = fmul fast float %877, %877
  %883 = fmul fast float %882, %881
  %884 = fadd fast float %883, %880
  %885 = fmul fast float %878, %877
  %886 = fmul fast float %885, %881
  %887 = fmul fast float %878, %878
  %888 = fmul fast float %887, %881
  %889 = fadd fast float %888, %880
  %890 = fmul fast float %884, %546
  %891 = call float @dx.op.tertiary.f32(i32 46, float %545, float %886, float %890)  ; FMad(a,b,c)
  %892 = fmul fast float %886, %546
  %893 = call float @dx.op.tertiary.f32(i32 46, float %545, float %889, float %892)  ; FMad(a,b,c)
  %894 = fmul fast float %884, %547
  %895 = call float @dx.op.tertiary.f32(i32 46, float %546, float %886, float %894)  ; FMad(a,b,c)
  %896 = fmul fast float %886, %547
  %897 = call float @dx.op.tertiary.f32(i32 46, float %546, float %889, float %896)  ; FMad(a,b,c)
  br label %898

; <label>:898                                     ; preds = %936, %874
  %899 = phi float [ 0.000000e+00, %874 ], [ %937, %936 ]
  %900 = phi float [ 0.000000e+00, %874 ], [ %938, %936 ]
  %901 = phi float [ 0.000000e+00, %874 ], [ %939, %936 ]
  %902 = phi float [ 0.000000e+00, %874 ], [ %940, %936 ]
  %903 = phi i32 [ 0, %874 ], [ %941, %936 ]
  %904 = mul i32 %903, 2
  %905 = add i32 0, %904
  %906 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %905
  %907 = load float, float* %906, align 4
  %908 = mul i32 %903, 2
  %909 = add i32 1, %908
  %910 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %909
  %911 = load float, float* %910, align 4
  %912 = fmul fast float %907, %891
  %913 = call float @dx.op.tertiary.f32(i32 46, float %911, float %895, float %912)  ; FMad(a,b,c)
  %914 = fmul fast float %907, %893
  %915 = call float @dx.op.tertiary.f32(i32 46, float %911, float %897, float %914)  ; FMad(a,b,c)
  %916 = fadd fast float %913, %540
  %917 = fadd fast float %915, %541
  %918 = fmul fast float %916, %457
  %919 = fmul fast float %917, %457
  %920 = call float @dx.op.binary.f32(i32 35, float %918, float %453)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 35, float %919, float %453)  ; FMax(a,b)
  %922 = call float @dx.op.binary.f32(i32 36, float %920, float %454)  ; FMin(a,b)
  %923 = call float @dx.op.binary.f32(i32 36, float %921, float %454)  ; FMin(a,b)
  %924 = fadd fast float %922, %451
  %925 = fadd fast float %923, %452
  %926 = uitofp i32 %513 to float
  %927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %924, float %925, float %926, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = fadd fast float %543, %461
  %930 = fcmp fast olt float %929, %928
  br i1 %930, label %931, label %936, !dx.controlflow.hints !46

; <label>:931                                     ; preds = %898
  %932 = fadd fast float %928, %901
  %933 = fadd fast float %913, %899
  %934 = fadd fast float %915, %900
  %935 = fadd fast float %902, 1.000000e+00
  br label %936

; <label>:936                                     ; preds = %931, %898
  %937 = phi float [ %933, %931 ], [ %899, %898 ]
  %938 = phi float [ %934, %931 ], [ %900, %898 ]
  %939 = phi float [ %932, %931 ], [ %901, %898 ]
  %940 = phi float [ %935, %931 ], [ %902, %898 ]
  %941 = add nuw nsw i32 %903, 1
  %942 = icmp eq i32 %941, 8
  br i1 %942, label %943, label %898

; <label>:943                                     ; preds = %936
  %944 = fdiv fast float 1.000000e+00, %940
  %945 = fcmp fast oeq float %940, 0.000000e+00
  %946 = fmul fast float %944, %939
  %947 = select i1 %945, float -1.000000e+00, float %946
  %948 = fcmp fast olt float %947, 0.000000e+00
  br i1 %948, label %1235, label %949, !dx.controlflow.hints !47

; <label>:949                                     ; preds = %943
  %950 = fmul fast float %944, %938
  %951 = select i1 %945, float 0.000000e+00, float %950
  %952 = fmul fast float %944, %937
  %953 = select i1 %945, float 0.000000e+00, float %952
  %954 = fadd fast float %953, %540
  %955 = fadd fast float %951, %541
  br i1 %516, label %956, label %960, !dx.controlflow.hints !43

; <label>:956                                     ; preds = %949
  %957 = fcmp fast olt float %640, 0x3FE6666660000000
  %958 = select i1 %957, float 1.000000e+00, float 0.000000e+00
  %959 = select i1 %957, float 0.000000e+00, float 1.000000e+00
  br label %960

; <label>:960                                     ; preds = %956, %949
  %961 = phi float [ 0.000000e+00, %956 ], [ %643, %949 ]
  %962 = phi float [ %958, %956 ], [ %644, %949 ]
  %963 = phi float [ %959, %956 ], [ %645, %949 ]
  %964 = fmul fast float %962, %641
  %965 = fmul fast float %963, %640
  %966 = fsub fast float %964, %965
  %967 = fmul fast float %963, %639
  %968 = fmul fast float %961, %641
  %969 = fsub fast float %967, %968
  %970 = fmul fast float %961, %640
  %971 = fmul fast float %962, %639
  %972 = fsub fast float %970, %971
  %973 = call float @dx.op.dot3.f32(i32 55, float %966, float %969, float %972, float %966, float %969, float %972)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = call float @dx.op.unary.f32(i32 25, float %973)  ; Rsqrt(value)
  %975 = fmul fast float %974, %339
  %976 = fmul fast float %975, %966
  %977 = fmul fast float %975, %969
  %978 = fmul fast float %972, %339
  %979 = fmul fast float %978, %974
  %980 = fmul fast float %954, %491
  %981 = call float @dx.op.tertiary.f32(i32 46, float %955, float %497, float %980)  ; FMad(a,b,c)
  %982 = call float @dx.op.tertiary.f32(i32 46, float %947, float %503, float %981)  ; FMad(a,b,c)
  %983 = fadd fast float %982, %509
  %984 = fmul fast float %954, %492
  %985 = call float @dx.op.tertiary.f32(i32 46, float %955, float %498, float %984)  ; FMad(a,b,c)
  %986 = call float @dx.op.tertiary.f32(i32 46, float %947, float %504, float %985)  ; FMad(a,b,c)
  %987 = fadd fast float %986, %510
  %988 = fmul fast float %954, %493
  %989 = call float @dx.op.tertiary.f32(i32 46, float %955, float %499, float %988)  ; FMad(a,b,c)
  %990 = call float @dx.op.tertiary.f32(i32 46, float %947, float %505, float %989)  ; FMad(a,b,c)
  %991 = fadd fast float %990, %511
  %992 = fmul fast float %954, %494
  %993 = call float @dx.op.tertiary.f32(i32 46, float %955, float %500, float %992)  ; FMad(a,b,c)
  %994 = call float @dx.op.tertiary.f32(i32 46, float %947, float %506, float %993)  ; FMad(a,b,c)
  %995 = fadd fast float %994, %512
  %996 = fdiv fast float 1.000000e+00, %995
  %997 = fmul fast float %996, %983
  %998 = fmul fast float %996, %987
  %999 = fmul fast float %996, %991
  %1000 = fsub fast float %342, %976
  %1001 = fsub fast float %343, %977
  %1002 = fsub fast float %344, %979
  %1003 = fsub fast float %997, %1000
  %1004 = fsub fast float %998, %1001
  %1005 = fsub fast float %999, %1002
  %1006 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1004, float %1005, float %1003, float %1004, float %1005)  ; Dot3(ax,ay,az,bx,by,bz)
  %1007 = call float @dx.op.unary.f32(i32 25, float %1006)  ; Rsqrt(value)
  %1008 = fmul fast float %1003, %1007
  %1009 = fmul fast float %1004, %1007
  %1010 = fmul fast float %1005, %1007
  %1011 = fsub fast float %521, %1000
  %1012 = fsub fast float %522, %1001
  %1013 = fsub fast float %523, %1002
  %1014 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %1011, float %1012, float %1013)  ; Dot3(ax,ay,az,bx,by,bz)
  %1015 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %1008, float %1009, float %1010)  ; Dot3(ax,ay,az,bx,by,bz)
  %1016 = fdiv fast float 1.000000e+00, %1015
  %1017 = fmul fast float %1016, %1014
  %1018 = fmul fast float %1017, %1008
  %1019 = fmul fast float %1017, %1009
  %1020 = fmul fast float %1017, %1010
  %1021 = fadd fast float %1018, %1000
  %1022 = fadd fast float %1019, %1001
  %1023 = fadd fast float %1020, %1002
  %1024 = fadd fast float %976, %342
  %1025 = fadd fast float %977, %343
  %1026 = fadd fast float %979, %344
  %1027 = fsub fast float %997, %1024
  %1028 = fsub fast float %998, %1025
  %1029 = fsub fast float %999, %1026
  %1030 = call float @dx.op.dot3.f32(i32 55, float %1027, float %1028, float %1029, float %1027, float %1028, float %1029)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = call float @dx.op.unary.f32(i32 25, float %1030)  ; Rsqrt(value)
  %1032 = fmul fast float %1031, %1027
  %1033 = fmul fast float %1031, %1028
  %1034 = fmul fast float %1031, %1029
  %1035 = fsub fast float %521, %1024
  %1036 = fsub fast float %522, %1025
  %1037 = fsub fast float %523, %1026
  %1038 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %1035, float %1036, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %1032, float %1033, float %1034)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = fdiv fast float 1.000000e+00, %1039
  %1041 = fmul fast float %1040, %1038
  %1042 = fmul fast float %1041, %1032
  %1043 = fmul fast float %1041, %1033
  %1044 = fmul fast float %1041, %1034
  %1045 = fadd fast float %1042, %1024
  %1046 = fadd fast float %1043, %1025
  %1047 = fadd fast float %1044, %1026
  %1048 = fmul fast float %1021, %467
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %473, float %1048)  ; FMad(a,b,c)
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %1023, float %479, float %1049)  ; FMad(a,b,c)
  %1051 = fadd fast float %1050, %485
  %1052 = fmul fast float %1021, %468
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %474, float %1052)  ; FMad(a,b,c)
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1023, float %480, float %1053)  ; FMad(a,b,c)
  %1055 = fadd fast float %1054, %486
  %1056 = fmul fast float %1021, %470
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %476, float %1056)  ; FMad(a,b,c)
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1023, float %482, float %1057)  ; FMad(a,b,c)
  %1059 = fadd fast float %1058, %488
  %1060 = fmul fast float %1045, %467
  %1061 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %473, float %1060)  ; FMad(a,b,c)
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %479, float %1061)  ; FMad(a,b,c)
  %1063 = fadd fast float %1062, %485
  %1064 = fmul fast float %1045, %468
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %474, float %1064)  ; FMad(a,b,c)
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %480, float %1065)  ; FMad(a,b,c)
  %1067 = fadd fast float %1066, %486
  %1068 = fmul fast float %1045, %470
  %1069 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %476, float %1068)  ; FMad(a,b,c)
  %1070 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %482, float %1069)  ; FMad(a,b,c)
  %1071 = fadd fast float %1070, %488
  %1072 = fdiv fast float 1.000000e+00, %1059
  %1073 = fmul fast float %1072, %1051
  %1074 = fmul fast float %1072, %1055
  %1075 = fdiv fast float 1.000000e+00, %1071
  %1076 = fmul fast float %1075, %1063
  %1077 = fmul fast float %1075, %1067
  %1078 = fsub fast float %1076, %1073
  %1079 = fsub fast float %1077, %1074
  %1080 = call float @dx.op.dot2.f32(i32 54, float %1078, float %1079, float %1078, float %1079)  ; Dot2(ax,ay,bx,by)
  %1081 = call float @dx.op.unary.f32(i32 25, float %1080)  ; Rsqrt(value)
  %1082 = fmul fast float %1078, %1081
  %1083 = fmul fast float %1079, %1081
  %1084 = fmul fast float %1078, %1078
  %1085 = fmul fast float %1079, %1079
  %1086 = fadd fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 24, float %1086)  ; Sqrt(value)
  %1088 = fmul fast float %1087, 5.000000e-01
  br i1 %516, label %1181, label %1089, !dx.controlflow.hints !44

; <label>:1089                                    ; preds = %960
  %1090 = fsub fast float %342, %334
  %1091 = fsub fast float %343, %335
  %1092 = fsub fast float %344, %336
  %1093 = fsub fast float %997, %1090
  %1094 = fsub fast float %998, %1091
  %1095 = fsub fast float %999, %1092
  %1096 = call float @dx.op.dot3.f32(i32 55, float %1093, float %1094, float %1095, float %1093, float %1094, float %1095)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = call float @dx.op.unary.f32(i32 25, float %1096)  ; Rsqrt(value)
  %1098 = fmul fast float %1097, %1093
  %1099 = fmul fast float %1097, %1094
  %1100 = fmul fast float %1097, %1095
  %1101 = fsub fast float %521, %1090
  %1102 = fsub fast float %522, %1091
  %1103 = fsub fast float %523, %1092
  %1104 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %1101, float %1102, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %1098, float %1099, float %1100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1106 = fdiv fast float 1.000000e+00, %1105
  %1107 = fmul fast float %1106, %1104
  %1108 = fmul fast float %1107, %1098
  %1109 = fmul fast float %1107, %1099
  %1110 = fmul fast float %1107, %1100
  %1111 = fadd fast float %1108, %1090
  %1112 = fadd fast float %1109, %1091
  %1113 = fadd fast float %1110, %1092
  %1114 = fadd fast float %342, %334
  %1115 = fadd fast float %343, %335
  %1116 = fadd fast float %344, %336
  %1117 = fsub fast float %997, %1114
  %1118 = fsub fast float %998, %1115
  %1119 = fsub fast float %999, %1116
  %1120 = call float @dx.op.dot3.f32(i32 55, float %1117, float %1118, float %1119, float %1117, float %1118, float %1119)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = call float @dx.op.unary.f32(i32 25, float %1120)  ; Rsqrt(value)
  %1122 = fmul fast float %1121, %1117
  %1123 = fmul fast float %1121, %1118
  %1124 = fmul fast float %1121, %1119
  %1125 = fsub fast float %521, %1114
  %1126 = fsub fast float %522, %1115
  %1127 = fsub fast float %523, %1116
  %1128 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %1125, float %1126, float %1127)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %1122, float %1123, float %1124)  ; Dot3(ax,ay,az,bx,by,bz)
  %1130 = fdiv fast float 1.000000e+00, %1129
  %1131 = fmul fast float %1130, %1128
  %1132 = fmul fast float %1131, %1122
  %1133 = fmul fast float %1131, %1123
  %1134 = fmul fast float %1131, %1124
  %1135 = fadd fast float %1132, %1114
  %1136 = fadd fast float %1133, %1115
  %1137 = fadd fast float %1134, %1116
  %1138 = fmul fast float %1111, %467
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %473, float %1138)  ; FMad(a,b,c)
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1113, float %479, float %1139)  ; FMad(a,b,c)
  %1141 = fadd fast float %1140, %485
  %1142 = fmul fast float %1111, %468
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %474, float %1142)  ; FMad(a,b,c)
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1113, float %480, float %1143)  ; FMad(a,b,c)
  %1145 = fadd fast float %1144, %486
  %1146 = fmul fast float %1111, %470
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %476, float %1146)  ; FMad(a,b,c)
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1113, float %482, float %1147)  ; FMad(a,b,c)
  %1149 = fadd fast float %1148, %488
  %1150 = fmul fast float %1135, %467
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %473, float %1150)  ; FMad(a,b,c)
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %479, float %1151)  ; FMad(a,b,c)
  %1153 = fadd fast float %1152, %485
  %1154 = fmul fast float %1135, %468
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %474, float %1154)  ; FMad(a,b,c)
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %480, float %1155)  ; FMad(a,b,c)
  %1157 = fadd fast float %1156, %486
  %1158 = fmul fast float %1135, %470
  %1159 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %476, float %1158)  ; FMad(a,b,c)
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %482, float %1159)  ; FMad(a,b,c)
  %1161 = fadd fast float %1160, %488
  %1162 = fdiv fast float 1.000000e+00, %1149
  %1163 = fmul fast float %1162, %1141
  %1164 = fmul fast float %1162, %1145
  %1165 = fdiv fast float 1.000000e+00, %1161
  %1166 = fmul fast float %1165, %1153
  %1167 = fmul fast float %1165, %1157
  %1168 = fsub fast float %1166, %1163
  %1169 = fsub fast float %1167, %1164
  %1170 = call float @dx.op.dot2.f32(i32 54, float %1168, float %1169, float %1168, float %1169)  ; Dot2(ax,ay,bx,by)
  %1171 = call float @dx.op.unary.f32(i32 25, float %1170)  ; Rsqrt(value)
  %1172 = fmul fast float %1168, %1171
  %1173 = fmul fast float %1169, %1171
  %1174 = fmul fast float %1168, %1168
  %1175 = fmul fast float %1169, %1169
  %1176 = fadd fast float %1174, %1175
  %1177 = call float @dx.op.unary.f32(i32 24, float %1176)  ; Sqrt(value)
  %1178 = fmul fast float %1177, 5.000000e-01
  %1179 = fcmp fast olt float %1178, %1088
  br i1 %1179, label %1180, label %1181, !dx.controlflow.hints !45

; <label>:1180                                    ; preds = %1089
  br label %1181

; <label>:1181                                    ; preds = %1180, %1089, %960
  %1182 = phi float [ %1088, %960 ], [ %1178, %1180 ], [ %1088, %1089 ]
  %1183 = phi float [ %1088, %960 ], [ %1088, %1180 ], [ %1178, %1089 ]
  %1184 = phi float [ %1082, %960 ], [ %1082, %1180 ], [ %1172, %1089 ]
  %1185 = phi float [ %1083, %960 ], [ %1083, %1180 ], [ %1173, %1089 ]
  %1186 = fsub fast float %1183, %1182
  %1187 = fmul fast float %1184, %1184
  %1188 = fmul fast float %1187, %1186
  %1189 = fadd fast float %1188, %1182
  %1190 = fmul fast float %1184, %1186
  %1191 = fmul fast float %1190, %1185
  %1192 = fmul fast float %1185, %1185
  %1193 = fmul fast float %1192, %1186
  %1194 = fadd fast float %1193, %1182
  %1195 = fmul fast float %1189, %546
  %1196 = call float @dx.op.tertiary.f32(i32 46, float %545, float %1191, float %1195)  ; FMad(a,b,c)
  %1197 = fmul fast float %1191, %546
  %1198 = call float @dx.op.tertiary.f32(i32 46, float %545, float %1194, float %1197)  ; FMad(a,b,c)
  %1199 = fmul fast float %1189, %547
  %1200 = call float @dx.op.tertiary.f32(i32 46, float %546, float %1191, float %1199)  ; FMad(a,b,c)
  %1201 = fmul fast float %1191, %547
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %546, float %1194, float %1201)  ; FMad(a,b,c)
  br label %1203

; <label>:1203                                    ; preds = %1203, %1181
  %1204 = phi float [ 0.000000e+00, %1181 ], [ %1230, %1203 ]
  %1205 = phi i32 [ 0, %1181 ], [ %1231, %1203 ]
  %1206 = mul i32 %1205, 2
  %1207 = add i32 0, %1206
  %1208 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1207
  %1209 = load float, float* %1208, align 4
  %1210 = mul i32 %1205, 2
  %1211 = add i32 1, %1210
  %1212 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1211
  %1213 = load float, float* %1212, align 4
  %1214 = fmul fast float %1209, %1196
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %1200, float %1214)  ; FMad(a,b,c)
  %1216 = fmul fast float %1209, %1198
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %1202, float %1216)  ; FMad(a,b,c)
  %1218 = fadd fast float %1215, %540
  %1219 = fadd fast float %1217, %541
  %1220 = fmul fast float %1218, %457
  %1221 = fmul fast float %1219, %457
  %1222 = call float @dx.op.binary.f32(i32 35, float %1220, float %453)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 35, float %1221, float %453)  ; FMax(a,b)
  %1224 = call float @dx.op.binary.f32(i32 36, float %1222, float %454)  ; FMin(a,b)
  %1225 = call float @dx.op.binary.f32(i32 36, float %1223, float %454)  ; FMin(a,b)
  %1226 = fadd fast float %1224, %451
  %1227 = fadd fast float %1225, %452
  %1228 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %17, float %1226, float %1227, float %926, float undef, i32 0, i32 0, i32 undef, float %929)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = fadd fast float %1229, %1204
  %1231 = add nuw nsw i32 %1205, 1
  %1232 = icmp eq i32 %1231, 8
  br i1 %1232, label %1233, label %1203

; <label>:1233                                    ; preds = %1203
  %1234 = fmul fast float %1230, 1.250000e-01
  br label %1235

; <label>:1235                                    ; preds = %1233, %943, %592
  %1236 = phi float [ %619, %592 ], [ %1234, %1233 ], [ 1.000000e+00, %943 ]
  %1237 = fcmp fast ogt float %1236, 0.000000e+00
  %1238 = xor i1 %70, true
  %1239 = and i1 %1237, %1238
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1242 = fcmp fast olt float %1241, 0.000000e+00
  %1243 = and i1 %1239, %1242
  br i1 %1243, label %1244, label %1355, !dx.controlflow.hints !48

; <label>:1244                                    ; preds = %1235
  %1245 = fadd fast float %540, %453
  %1246 = fadd fast float %541, %453
  %1247 = fadd fast float %543, %461
  %1248 = fmul fast float %540, %491
  %1249 = call float @dx.op.tertiary.f32(i32 46, float %541, float %497, float %1248)  ; FMad(a,b,c)
  %1250 = call float @dx.op.tertiary.f32(i32 46, float %543, float %503, float %1249)  ; FMad(a,b,c)
  %1251 = fadd fast float %1250, %509
  %1252 = fmul fast float %540, %492
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %541, float %498, float %1252)  ; FMad(a,b,c)
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %543, float %504, float %1253)  ; FMad(a,b,c)
  %1255 = fadd fast float %1254, %510
  %1256 = fmul fast float %540, %493
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %541, float %499, float %1256)  ; FMad(a,b,c)
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %543, float %505, float %1257)  ; FMad(a,b,c)
  %1259 = fadd fast float %1258, %511
  %1260 = fmul fast float %540, %494
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %541, float %500, float %1260)  ; FMad(a,b,c)
  %1262 = call float @dx.op.tertiary.f32(i32 46, float %543, float %506, float %1261)  ; FMad(a,b,c)
  %1263 = fadd fast float %1262, %512
  %1264 = fmul fast float %1245, %491
  %1265 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %497, float %1264)  ; FMad(a,b,c)
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %503, float %1265)  ; FMad(a,b,c)
  %1267 = fadd fast float %1266, %509
  %1268 = fmul fast float %1245, %492
  %1269 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %498, float %1268)  ; FMad(a,b,c)
  %1270 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %504, float %1269)  ; FMad(a,b,c)
  %1271 = fadd fast float %1270, %510
  %1272 = fmul fast float %1245, %493
  %1273 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %499, float %1272)  ; FMad(a,b,c)
  %1274 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %505, float %1273)  ; FMad(a,b,c)
  %1275 = fadd fast float %1274, %511
  %1276 = fmul fast float %1245, %494
  %1277 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %500, float %1276)  ; FMad(a,b,c)
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %506, float %1277)  ; FMad(a,b,c)
  %1279 = fadd fast float %1278, %512
  %1280 = fdiv fast float 1.000000e+00, %1263
  %1281 = fmul fast float %1280, %1251
  %1282 = fmul fast float %1280, %1255
  %1283 = fmul fast float %1280, %1259
  %1284 = fdiv fast float 1.000000e+00, %1279
  %1285 = fmul fast float %1284, %1267
  %1286 = fmul fast float %1284, %1271
  %1287 = fmul fast float %1284, %1275
  %1288 = fsub fast float %1281, %1285
  %1289 = fsub fast float %1282, %1286
  %1290 = fsub fast float %1283, %1287
  %1291 = fmul fast float %1288, %1288
  %1292 = fmul fast float %1289, %1289
  %1293 = fadd fast float %1291, %1292
  %1294 = fmul fast float %1290, %1290
  %1295 = fadd fast float %1293, %1294
  %1296 = call float @dx.op.unary.f32(i32 24, float %1295)  ; Sqrt(value)
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1301 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.CBufRet.f32 %1302, 2
  %1306 = extractvalue %dx.types.CBufRet.f32 %1302, 3
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 0
  %1309 = extractvalue %dx.types.CBufRet.f32 %1307, 1
  %1310 = extractvalue %dx.types.CBufRet.f32 %1307, 2
  %1311 = extractvalue %dx.types.CBufRet.f32 %1307, 3
  %1312 = fmul fast float %1298, %1281
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1299, float %1312)  ; FMad(a,b,c)
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1300, float %1313)  ; FMad(a,b,c)
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1263, float %1301, float %1314)  ; FMad(a,b,c)
  %1316 = fmul fast float %1303, %1281
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1304, float %1316)  ; FMad(a,b,c)
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1305, float %1317)  ; FMad(a,b,c)
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1263, float %1306, float %1318)  ; FMad(a,b,c)
  %1320 = fmul fast float %1308, %1281
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1309, float %1320)  ; FMad(a,b,c)
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1310, float %1321)  ; FMad(a,b,c)
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1263, float %1311, float %1322)  ; FMad(a,b,c)
  %1324 = fmul fast float %1298, %1285
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1286, float %1299, float %1324)  ; FMad(a,b,c)
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1300, float %1325)  ; FMad(a,b,c)
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1301, float %1326)  ; FMad(a,b,c)
  %1328 = fmul fast float %1303, %1285
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1286, float %1304, float %1328)  ; FMad(a,b,c)
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1305, float %1329)  ; FMad(a,b,c)
  %1331 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1306, float %1330)  ; FMad(a,b,c)
  %1332 = fmul fast float %1308, %1285
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1286, float %1309, float %1332)  ; FMad(a,b,c)
  %1334 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1310, float %1333)  ; FMad(a,b,c)
  %1335 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %1311, float %1334)  ; FMad(a,b,c)
  %1336 = fdiv fast float 1.000000e+00, %1323
  %1337 = fmul fast float %1336, %1315
  %1338 = fmul fast float %1336, %1319
  %1339 = fdiv fast float 1.000000e+00, %1335
  %1340 = fmul fast float %1339, %1327
  %1341 = fmul fast float %1339, %1331
  %1342 = fsub fast float %1337, %1340
  %1343 = fsub fast float %1338, %1341
  %1344 = fmul fast float %1342, 5.000000e-01
  %1345 = fmul fast float %1343, 5.000000e-01
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.CBufRet.f32 %1346, 1
  %1349 = fmul fast float %1344, %1347
  %1350 = fmul fast float %1345, %1348
  %1351 = fmul fast float %1349, %1349
  %1352 = fmul fast float %1350, %1350
  %1353 = fadd fast float %1351, %1352
  %1354 = call float @dx.op.unary.f32(i32 24, float %1353)  ; Sqrt(value)
  br label %1355

; <label>:1355                                    ; preds = %1244, %1235
  %1356 = phi float [ %1296, %1244 ], [ 0.000000e+00, %1235 ]
  %1357 = phi float [ %1354, %1244 ], [ 0.000000e+00, %1235 ]
  %1358 = fadd fast float %1236, -1.000000e+00
  %1359 = fmul fast float %1358, %430
  %1360 = fadd fast float %1359, 1.000000e+00
  %1361 = fmul fast float %1360, %442
  br label %1362

; <label>:1362                                    ; preds = %1355, %409
  %1363 = phi float [ %1361, %1355 ], [ %442, %409 ]
  %1364 = phi float [ %1356, %1355 ], [ 0.000000e+00, %409 ]
  %1365 = phi float [ %1357, %1355 ], [ 0.000000e+00, %409 ]
  %1366 = call float @dx.op.binary.f32(i32 36, float %1363, float %1363)  ; FMin(a,b)
  %1367 = call float @dx.op.binary.f32(i32 36, float %1363, float %1366)  ; FMin(a,b)
  %1368 = fcmp fast ogt float %1367, 0.000000e+00
  %1369 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %382, float %383, float %384)  ; Dot3(ax,ay,az,bx,by,bz)
  %1370 = fcmp fast ogt float %1369, 0.000000e+00
  %1371 = and i1 %1368, %1370
  br i1 %1371, label %1372, label %1653, !dx.controlflow.hints !49

; <label>:1372                                    ; preds = %1362
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 1
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1377 = select i1 %70, float %1374, float %1376
  %1378 = extractvalue %dx.types.CBufRet.f32 %1373, 2
  %1379 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1380 = select i1 %70, float %1378, float %1379
  %1381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.i32 %1381, 0
  %1383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.i32 %1383, 0
  %1385 = select i1 %70, i32 %1382, i32 %1384
  %1386 = fcmp fast ogt float %1364, 0.000000e+00
  br i1 %1386, label %1387, label %1391, !dx.controlflow.hints !50

; <label>:1387                                    ; preds = %1372
  %1388 = fptosi float %1365 to i32
  %1389 = call i32 @dx.op.binary.i32(i32 37, i32 %1388, i32 1)  ; IMax(a,b)
  %1390 = call i32 @dx.op.binary.i32(i32 38, i32 %1389, i32 16)  ; IMin(a,b)
  br label %1391

; <label>:1391                                    ; preds = %1387, %1372
  %1392 = phi float [ 0.000000e+00, %1387 ], [ 1.000000e+00, %1372 ]
  %1393 = phi float [ %1364, %1387 ], [ %1377, %1372 ]
  %1394 = phi i32 [ %1390, %1387 ], [ %1385, %1372 ]
  %1395 = fcmp fast olt float %1393, 5.000000e-01
  %1396 = icmp eq i32 %1394, 0
  %1397 = or i1 %1395, %1396
  br i1 %1397, label %1648, label %1398, !dx.controlflow.hints !51

; <label>:1398                                    ; preds = %1391
  %1399 = fsub fast float %342, %132
  %1400 = fsub fast float %343, %133
  %1401 = fsub fast float %344, %134
  %1402 = fmul fast float %1399, %1399
  %1403 = fmul fast float %1400, %1400
  %1404 = fadd fast float %1402, %1403
  %1405 = fmul fast float %1401, %1401
  %1406 = fadd fast float %1404, %1405
  %1407 = call float @dx.op.unary.f32(i32 24, float %1406)  ; Sqrt(value)
  %1408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.i32 %1408, 0
  %1410 = uitofp i32 %1409 to float
  %1411 = fmul fast float %1393, %339
  %1412 = fdiv fast float %1411, %1407
  %1413 = call float @dx.op.binary.f32(i32 36, float %1412, float 1.000000e+01)  ; FMin(a,b)
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1418 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  %1423 = extractvalue %dx.types.CBufRet.f32 %1419, 3
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1433 = extractvalue %dx.types.CBufRet.f32 %1429, 3
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1438 = extractvalue %dx.types.CBufRet.f32 %1434, 3
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.CBufRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.CBufRet.f32 %1439, 2
  %1443 = extractvalue %dx.types.CBufRet.f32 %1439, 3
  %1444 = select i1 %70, float %1415, float %1430
  %1445 = select i1 %70, float %1420, float %1435
  %1446 = select i1 %70, float %1425, float %1440
  %1447 = select i1 %70, float %1416, float %1431
  %1448 = select i1 %70, float %1421, float %1436
  %1449 = select i1 %70, float %1426, float %1441
  %1450 = select i1 %70, float %1417, float %1432
  %1451 = select i1 %70, float %1422, float %1437
  %1452 = select i1 %70, float %1427, float %1442
  %1453 = select i1 %70, float %1418, float %1433
  %1454 = select i1 %70, float %1423, float %1438
  %1455 = select i1 %70, float %1428, float %1443
  %1456 = fmul fast float %251, 0x401061CAC0000000
  %1457 = fmul fast float %251, 0x4023E1D7E0000000
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 0
  %1460 = extractvalue %dx.types.CBufRet.f32 %1458, 1
  %1461 = extractvalue %dx.types.CBufRet.f32 %1458, 2
  %1462 = extractvalue %dx.types.CBufRet.f32 %1458, 3
  %1463 = fsub fast float -0.000000e+00, %382
  %1464 = fmul fast float %384, %1463
  %1465 = fmul fast float %382, %1463
  %1466 = fmul fast float %383, %383
  %1467 = fsub fast float %1465, %1466
  %1468 = fdiv fast float 1.000000e+00, %77
  %1469 = fmul fast float %1461, %66
  %1470 = fmul fast float %1462, %67
  %1471 = fmul fast float %1393, %382
  %1472 = fmul fast float %1393, %384
  %1473 = fadd fast float %1471, %132
  %1474 = fadd fast float %1472, %134
  %1475 = fadd fast float %1457, 5.000000e-01
  %1476 = call float @dx.op.unary.f32(i32 22, float %1475)  ; Frc(value)
  %1477 = bitcast float %1476 to i32
  %1478 = ashr i32 %1477, 1
  %1479 = add nsw i32 %1478, 532487669
  %1480 = bitcast i32 %1479 to float
  %1481 = fmul fast float %1480, %1413
  %1482 = fadd fast float %1456, 5.000000e-01
  %1483 = call float @dx.op.unary.f32(i32 22, float %1482)  ; Frc(value)
  %1484 = fmul fast float %1483, 0x401921FB60000000
  %1485 = call float @dx.op.unary.f32(i32 12, float %1484)  ; Cos(value)
  %1486 = fmul fast float %1485, %1485
  %1487 = fsub fast float 1.000000e+00, %1486
  %1488 = bitcast float %1487 to i32
  %1489 = ashr i32 %1488, 1
  %1490 = add nsw i32 %1489, 532487669
  %1491 = bitcast i32 %1490 to float
  %1492 = fmul fast float %1481, %1485
  %1493 = fmul fast float %1492, %383
  %1494 = fmul fast float %1492, %1463
  %1495 = fadd fast float %1473, %1493
  %1496 = fmul fast float %1491, %1481
  %1497 = fmul fast float %1464, %1496
  %1498 = fmul fast float %1496, %384
  %1499 = fmul fast float %1496, %1467
  %1500 = fsub fast float %1495, %1497
  %1501 = fadd fast float %1498, %1393
  %1502 = fmul fast float %1501, %383
  %1503 = fadd fast float %1494, %133
  %1504 = fadd fast float %1503, %1502
  %1505 = fadd fast float %1474, %1499
  %1506 = fmul fast float %1500, %1444
  %1507 = call float @dx.op.tertiary.f32(i32 46, float %1504, float %1447, float %1506)  ; FMad(a,b,c)
  %1508 = call float @dx.op.tertiary.f32(i32 46, float %1505, float %1450, float %1507)  ; FMad(a,b,c)
  %1509 = fadd fast float %1508, %1453
  %1510 = fmul fast float %1500, %1445
  %1511 = call float @dx.op.tertiary.f32(i32 46, float %1504, float %1448, float %1510)  ; FMad(a,b,c)
  %1512 = call float @dx.op.tertiary.f32(i32 46, float %1505, float %1451, float %1511)  ; FMad(a,b,c)
  %1513 = fadd fast float %1512, %1454
  %1514 = fmul fast float %1500, %1446
  %1515 = call float @dx.op.tertiary.f32(i32 46, float %1504, float %1449, float %1514)  ; FMad(a,b,c)
  %1516 = call float @dx.op.tertiary.f32(i32 46, float %1505, float %1452, float %1515)  ; FMad(a,b,c)
  %1517 = fadd fast float %1516, %1455
  %1518 = fdiv fast float 1.000000e+00, %1517
  %1519 = fmul fast float %1509, 5.000000e-01
  %1520 = fmul fast float %1513, -5.000000e-01
  %1521 = fmul fast float %1519, %1518
  %1522 = fmul fast float %1520, %1518
  %1523 = fsub fast float 5.000000e-01, %1469
  %1524 = fadd fast float %1523, %1521
  %1525 = fsub fast float 5.000000e-01, %1470
  %1526 = fadd fast float %1525, %1522
  %1527 = fsub fast float %1518, %1468
  %1528 = call float @dx.op.dot2.f32(i32 54, float %1524, float %1526, float %1524, float %1526)  ; Dot2(ax,ay,bx,by)
  %1529 = call float @dx.op.binary.f32(i32 35, float %1528, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1530 = call float @dx.op.dot2.f32(i32 54, float %1459, float %1460, float %1459, float %1460)  ; Dot2(ax,ay,bx,by)
  %1531 = fmul fast float %1530, %1529
  %1532 = call float @dx.op.unary.f32(i32 25, float %1531)  ; Rsqrt(value)
  %1533 = fmul fast float %1532, %1524
  %1534 = fmul fast float %1532, %1526
  %1535 = fadd fast float %1533, %1469
  %1536 = fadd fast float %1534, %1470
  %1537 = fmul fast float %1524, %1459
  %1538 = fmul fast float %1526, %1460
  %1539 = fmul fast float %1537, %1537
  %1540 = fmul fast float %1538, %1538
  %1541 = fadd fast float %1539, %1540
  %1542 = call float @dx.op.unary.f32(i32 24, float %1541)  ; Sqrt(value)
  %1543 = fdiv fast float 1.000000e+00, %1542
  %1544 = fmul fast float %1542, 3.906250e-03
  %1545 = fmul fast float %237, 0x3F70624DE0000000
  %1546 = fadd fast float %1545, 0x3F70624DE0000000
  %1547 = icmp sgt i32 %1394, -1
  br i1 %1547, label %1548, label %1613

; <label>:1548                                    ; preds = %1398
  br label %1549

; <label>:1549                                    ; preds = %1609, %1548
  %1550 = phi float [ %1584, %1609 ], [ %77, %1548 ]
  %1551 = phi float [ %1571, %1609 ], [ %77, %1548 ]
  %1552 = phi float [ %1551, %1609 ], [ %77, %1548 ]
  %1553 = phi i32 [ %1610, %1609 ], [ 0, %1548 ]
  %1554 = sitofp i32 %1553 to float
  %1555 = fadd fast float %251, 5.000000e-01
  %1556 = call float @dx.op.unary.f32(i32 22, float %1555)  ; Frc(value)
  %1557 = fadd fast float %1554, %1556
  %1558 = sitofp i32 %1394 to float
  %1559 = fdiv fast float %1557, %1558
  %1560 = fmul fast float %1559, %1559
  %1561 = fsub fast float %1560, %1559
  %1562 = fmul fast float %1561, %1392
  %1563 = fadd fast float %1562, %1559
  %1564 = call float @dx.op.binary.f32(i32 36, float %1563, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1565 = fmul fast float %1564, %1524
  %1566 = fmul fast float %1564, %1526
  %1567 = fmul fast float %1564, %1527
  %1568 = fadd fast float %1565, %1535
  %1569 = fadd fast float %1566, %1536
  %1570 = fadd fast float %1567, %1468
  %1571 = fdiv fast float 1.000000e+00, %1570
  %1572 = icmp ne i32 %1409, 0
  %1573 = fmul fast float %1544, %1564
  %1574 = call float @dx.op.binary.f32(i32 36, float %1573, float %1410)  ; FMin(a,b)
  %1575 = select i1 %1572, float %1574, float 0.000000e+00
  %1576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1568, float %1569, float undef, float undef, i32 0, i32 0, i32 undef, float %1575)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = fcmp fast ogt float %1577, -1.000000e+00
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1581 = select i1 %1578, float %1580, float 1.000000e+00
  %1582 = fadd fast float %1577, 1.000000e+00
  %1583 = fmul fast float %1581, %1582
  %1584 = call float @dx.op.unary.f32(i32 6, float %1583)  ; FAbs(value)
  %1585 = fmul fast float %1584, %1546
  %1586 = fsub fast float %1571, %1584
  %1587 = fsub fast float %1586, %1585
  %1588 = fcmp fast ogt float %1587, 0.000000e+00
  %1589 = fcmp fast ogt float %1380, 0.000000e+00
  br i1 %1589, label %1590, label %1593, !dx.controlflow.hints !52

; <label>:1590                                    ; preds = %1549
  %1591 = fsub fast float %1571, %1552
  %1592 = call float @dx.op.binary.f32(i32 35, float %1591, float %1380)  ; FMax(a,b)
  br label %1593

; <label>:1593                                    ; preds = %1590, %1549
  %1594 = phi float [ %1592, %1590 ], [ %1393, %1549 ]
  %1595 = fcmp fast olt float %1587, %1594
  %1596 = fcmp uge float %1577, -1.000000e+00
  %1597 = or i1 %70, %1596
  %1598 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1599 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1600 = fcmp fast oeq float %1568, %1598
  %1601 = fcmp fast oeq float %1569, %1599
  %1602 = and i1 %1600, %1601
  %1603 = and i1 %1597, %1602
  %1604 = and i1 %1588, %1595
  %1605 = and i1 %1604, %1603
  %1606 = fcmp fast ogt float %1564, %1543
  %1607 = and i1 %1606, %1605
  %1608 = zext i1 %1607 to i32
  br i1 %1607, label %1612, label %1609, !dx.controlflow.hints !53

; <label>:1609                                    ; preds = %1593
  %1610 = add nuw nsw i32 %1553, 1
  %1611 = icmp slt i32 %1553, %1394
  br i1 %1611, label %1549, label %1612

; <label>:1612                                    ; preds = %1609, %1593
  br label %1613

; <label>:1613                                    ; preds = %1612, %1398
  %1614 = phi i32 [ 0, %1398 ], [ %1608, %1612 ]
  %1615 = phi float [ %77, %1398 ], [ %1584, %1612 ]
  %1616 = phi float [ %77, %1398 ], [ %1550, %1612 ]
  %1617 = phi float [ %77, %1398 ], [ %1571, %1612 ]
  %1618 = phi float [ %77, %1398 ], [ %1551, %1612 ]
  %1619 = fsub fast float %1618, %1616
  %1620 = fsub fast float %1617, %1615
  %1621 = fsub fast float %1619, %1620
  %1622 = fcmp fast une float %1621, 0.000000e+00
  %1623 = fmul fast float %1619, %1617
  %1624 = fmul fast float %1618, %1620
  %1625 = fsub fast float %1623, %1624
  %1626 = fdiv fast float 1.000000e+00, %1621
  %1627 = fmul fast float %1625, %1626
  %1628 = select i1 %1622, float %1627, float %1617
  %1629 = fdiv fast float 1.000000e+00, %1628
  %1630 = fsub fast float %1629, %1468
  %1631 = fdiv fast float %1630, %1527
  %1632 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1633 = fmul fast float %1632, %1524
  %1634 = fmul fast float %1632, %1526
  %1635 = fadd fast float %1633, %1535
  %1636 = fadd fast float %1634, %1536
  %1637 = fadd fast float %1635, -5.000000e-01
  %1638 = fadd fast float %1636, -5.000000e-01
  %1639 = call float @dx.op.unary.f32(i32 6, float %1637)  ; FAbs(value)
  %1640 = call float @dx.op.unary.f32(i32 6, float %1638)  ; FAbs(value)
  %1641 = fadd fast float %1639, -5.000000e-01
  %1642 = fadd fast float %1640, -5.000000e-01
  %1643 = call float @dx.op.binary.f32(i32 35, float %1641, float %1642)  ; FMax(a,b)
  %1644 = fcmp fast olt float %1643, 0.000000e+00
  %1645 = icmp ne i32 %1614, 0
  %1646 = and i1 %1645, %1644
  %1647 = select i1 %1646, float 0.000000e+00, float 1.000000e+00
  br label %1648

; <label>:1648                                    ; preds = %1613, %1391
  %1649 = phi float [ %1647, %1613 ], [ 1.000000e+00, %1391 ]
  %1650 = fmul fast float %1649, %1363
  %1651 = fmul fast float %1649, %1363
  %1652 = fmul fast float %1649, %1363
  br label %1653

; <label>:1653                                    ; preds = %1648, %1362
  %1654 = phi float [ %1650, %1648 ], [ %1363, %1362 ]
  %1655 = phi float [ %1651, %1648 ], [ %1363, %1362 ]
  %1656 = phi float [ %1652, %1648 ], [ %1363, %1362 ]
  %1657 = call float @dx.op.binary.f32(i32 36, float %1655, float %1656)  ; FMin(a,b)
  %1658 = call float @dx.op.binary.f32(i32 36, float %1654, float %1657)  ; FMin(a,b)
  %1659 = fcmp fast ogt float %1658, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1660 = zext i1 %1659 to i32
  %1661 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %1660 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1662 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  %1663 = icmp eq i32 %1662, 0
  %1664 = select i1 %1663, i32 0, i32 %321
  %1665 = or i32 %316, %1664
  %1666 = lshr i32 %256, 5
  %1667 = lshr i32 %257, 5
  %1668 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1666, i32 %1667, i32 %319, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = lshr i32 %256, 1
  %1671 = lshr i32 %257, 1
  %1672 = and i32 %1670, 15
  %1673 = and i32 %1671, 15
  %1674 = and i32 %256, 1
  %1675 = shl i32 %257, 1
  %1676 = and i32 %1675, 2
  %1677 = or i32 %1676, %1674
  %1678 = lshr i32 %1669, 2
  %1679 = and i32 %1678, 8176
  %1680 = lshr i32 %1669, 11
  %1681 = and i32 %1680, 4080
  %1682 = or i32 %1679, %1672
  %1683 = or i32 %1681, %1673
  %1684 = lshr i32 %1669, 21
  %1685 = and i32 %1684, 1020
  %1686 = or i32 %1677, %1685
  %1687 = fmul fast float %1654, 2.550000e+02
  %1688 = fadd fast float %1687, %250
  %1689 = call float @dx.op.unary.f32(i32 27, float %1688)  ; Round_ni(value)
  %1690 = fmul fast float %1689, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1682, i32 %1683, i32 %1686, float %1690, float %1690, float %1690, float %1690, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1691 = icmp eq i32 %317, %321
  br i1 %1691, label %1692, label %315, !llvm.loop !54

; <label>:1692                                    ; preds = %1653
  br label %1693

; <label>:1693                                    ; preds = %1692, %311
  %1694 = phi i32 [ 0, %311 ], [ %1665, %1692 ]
  %1695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.i32 %1695, 0
  %1697 = call i32 @dx.op.tertiary.i32(i32 49, i32 %262, i32 %1696, i32 %284)  ; UMad(a,b,c)
  %1698 = shl i32 %1697, 2
  %1699 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1698, i32 undef, i32 undef, i32 %1694)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1700 = add i32 %284, 1
  %1701 = icmp ugt i32 %1700, %280
  br i1 %1701, label %1702, label %283

; <label>:1702                                    ; preds = %1693
  br label %1703

; <label>:1703                                    ; preds = %1702, %255, %57
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!30}

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
!26 = !{!27, !28, !29}
!27 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!29 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 8, i32 8, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}

