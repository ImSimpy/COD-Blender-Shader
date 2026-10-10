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
; shader hash: d81dd805e5c2557c62b149fd3ffa9d79
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

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4
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
  br i1 %254, label %1821, label %255, !dx.controlflow.hints !38

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
  %274 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %275 = udiv i32 %23, %274
  %276 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %272, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %277 = icmp eq i32 %274, 64
  br i1 %277, label %304, label %278, !dx.controlflow.hints !39

; <label>:278                                     ; preds = %255
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %279 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %279, label %280, label %282, !dx.controlflow.hints !40

; <label>:280                                     ; preds = %278
  %281 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %275
  store i32 %276, i32 addrspace(3)* %281, align 4, !tbaa !34
  br label %282

; <label>:282                                     ; preds = %280, %278
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %283 = icmp eq i32 %274, 32
  br i1 %283, label %284, label %289, !dx.controlflow.hints !41

; <label>:284                                     ; preds = %282
  %285 = xor i32 %275, 1
  %286 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %285
  %287 = load i32, i32 addrspace(3)* %286, align 4, !tbaa !34
  %288 = call i32 @dx.op.binary.i32(i32 40, i32 %276, i32 %287)  ; UMin(a,b)
  br label %304

; <label>:289                                     ; preds = %282
  %290 = icmp eq i32 %274, 16
  br i1 %290, label %291, label %304, !dx.controlflow.hints !42

; <label>:291                                     ; preds = %289
  %292 = xor i32 %275, 3
  %293 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %292
  %294 = load i32, i32 addrspace(3)* %293, align 4, !tbaa !34
  %295 = xor i32 %275, 2
  %296 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %295
  %297 = load i32, i32 addrspace(3)* %296, align 4, !tbaa !34
  %298 = call i32 @dx.op.binary.i32(i32 40, i32 %297, i32 %294)  ; UMin(a,b)
  %299 = xor i32 %275, 1
  %300 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %299
  %301 = load i32, i32 addrspace(3)* %300, align 4, !tbaa !34
  %302 = call i32 @dx.op.binary.i32(i32 40, i32 %276, i32 %301)  ; UMin(a,b)
  %303 = call i32 @dx.op.binary.i32(i32 40, i32 %302, i32 %298)  ; UMin(a,b)
  br label %304

; <label>:304                                     ; preds = %291, %289, %284, %255
  %305 = phi i32 [ %288, %284 ], [ %303, %291 ], [ %276, %255 ], [ 0, %289 ]
  %306 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %273, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %277, label %333, label %307, !dx.controlflow.hints !43

; <label>:307                                     ; preds = %304
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %308 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %308, label %309, label %311, !dx.controlflow.hints !44

; <label>:309                                     ; preds = %307
  %310 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %275
  store i32 %306, i32 addrspace(3)* %310, align 4, !tbaa !34
  br label %311

; <label>:311                                     ; preds = %309, %307
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %312 = icmp eq i32 %274, 32
  br i1 %312, label %313, label %318, !dx.controlflow.hints !45

; <label>:313                                     ; preds = %311
  %314 = xor i32 %275, 1
  %315 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %314
  %316 = load i32, i32 addrspace(3)* %315, align 4, !tbaa !34
  %317 = call i32 @dx.op.binary.i32(i32 39, i32 %306, i32 %316)  ; UMax(a,b)
  br label %333

; <label>:318                                     ; preds = %311
  %319 = icmp eq i32 %274, 16
  br i1 %319, label %320, label %333, !dx.controlflow.hints !46

; <label>:320                                     ; preds = %318
  %321 = xor i32 %275, 3
  %322 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %321
  %323 = load i32, i32 addrspace(3)* %322, align 4, !tbaa !34
  %324 = xor i32 %275, 2
  %325 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %324
  %326 = load i32, i32 addrspace(3)* %325, align 4, !tbaa !34
  %327 = call i32 @dx.op.binary.i32(i32 39, i32 %326, i32 %323)  ; UMax(a,b)
  %328 = xor i32 %275, 1
  %329 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %328
  %330 = load i32, i32 addrspace(3)* %329, align 4, !tbaa !34
  %331 = call i32 @dx.op.binary.i32(i32 39, i32 %306, i32 %330)  ; UMax(a,b)
  %332 = call i32 @dx.op.binary.i32(i32 39, i32 %331, i32 %327)  ; UMax(a,b)
  br label %333

; <label>:333                                     ; preds = %320, %318, %313, %304
  %334 = phi i32 [ %317, %313 ], [ %332, %320 ], [ %306, %304 ], [ 0, %318 ]
  %335 = lshr i32 %305, 5
  %336 = lshr i32 %334, 5
  %337 = call i32 @dx.op.binary.i32(i32 40, i32 %336, i32 %264)  ; UMin(a,b)
  %338 = icmp ugt i32 %335, %337
  br i1 %338, label %1821, label %339

; <label>:339                                     ; preds = %333
  br label %340

; <label>:340                                     ; preds = %1811, %339
  %341 = phi i32 [ %1818, %1811 ], [ %335, %339 ]
  %342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.i32 %342, 0
  %344 = call i32 @dx.op.tertiary.i32(i32 49, i32 %262, i32 %343, i32 %341)  ; UMad(a,b,c)
  %345 = shl i32 %344, 2
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = shl i32 %341, 5
  %349 = sub nsw i32 %272, %348
  %350 = call i32 @dx.op.binary.i32(i32 37, i32 %349, i32 0)  ; IMax(a,b)
  %351 = call i32 @dx.op.binary.i32(i32 38, i32 %350, i32 31)  ; IMin(a,b)
  %352 = sub nsw i32 1, %272
  %353 = add nsw i32 %352, %273
  %354 = call i32 @dx.op.binary.i32(i32 37, i32 %353, i32 0)  ; IMax(a,b)
  %355 = call i32 @dx.op.binary.i32(i32 38, i32 %354, i32 32)  ; IMin(a,b)
  %356 = and i32 %355, 31
  %357 = shl i32 -1, %356
  %358 = xor i32 %357, -1
  %359 = and i32 %351, 31
  %360 = shl i32 %358, %359
  %361 = icmp eq i32 %355, 32
  %362 = select i1 %361, i32 -1, i32 %360
  %363 = and i32 %362, %347
  %364 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %363, i8 1)  ; WaveActiveBit(value,op)
  br i1 %277, label %391, label %365, !dx.controlflow.hints !47

; <label>:365                                     ; preds = %340
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %366 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %366, label %367, label %369, !dx.controlflow.hints !48

; <label>:367                                     ; preds = %365
  %368 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %275
  store i32 %364, i32 addrspace(3)* %368, align 4, !tbaa !34
  br label %369

; <label>:369                                     ; preds = %367, %365
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %370 = icmp eq i32 %274, 32
  br i1 %370, label %371, label %376, !dx.controlflow.hints !49

; <label>:371                                     ; preds = %369
  %372 = xor i32 %275, 1
  %373 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %372
  %374 = load i32, i32 addrspace(3)* %373, align 4, !tbaa !34
  %375 = or i32 %374, %364
  br label %391

; <label>:376                                     ; preds = %369
  %377 = icmp eq i32 %274, 16
  br i1 %377, label %378, label %391, !dx.controlflow.hints !50

; <label>:378                                     ; preds = %376
  %379 = xor i32 %275, 1
  %380 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %379
  %381 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !34
  %382 = or i32 %381, %364
  %383 = xor i32 %275, 2
  %384 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %383
  %385 = load i32, i32 addrspace(3)* %384, align 4, !tbaa !34
  %386 = or i32 %382, %385
  %387 = xor i32 %275, 3
  %388 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %387
  %389 = load i32, i32 addrspace(3)* %388, align 4, !tbaa !34
  %390 = or i32 %386, %389
  br label %391

; <label>:391                                     ; preds = %378, %376, %371, %340
  %392 = phi i32 [ %375, %371 ], [ %390, %378 ], [ %364, %340 ], [ 0, %376 ]
  br i1 %277, label %393, label %395, !dx.controlflow.hints !51

; <label>:393                                     ; preds = %391
  %394 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %392)  ; WaveReadLaneFirst(value)
  br label %400

; <label>:395                                     ; preds = %391
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %396 = icmp eq i32 %23, 0
  br i1 %396, label %397, label %398, !dx.controlflow.hints !52

; <label>:397                                     ; preds = %395
  store i32 %392, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %398

; <label>:398                                     ; preds = %397, %395
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %399 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %400

; <label>:400                                     ; preds = %398, %393
  %401 = phi i32 [ %394, %393 ], [ %399, %398 ]
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %1811, label %403

; <label>:403                                     ; preds = %400
  br label %404

; <label>:404                                     ; preds = %1780, %403
  %405 = phi i32 [ %1783, %1780 ], [ 0, %403 ]
  %406 = phi i32 [ %411, %1780 ], [ %401, %403 ]
  %407 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %406)  ; FirstbitLo(value)
  %408 = add i32 %407, %348
  %409 = and i32 %407, 31
  %410 = shl i32 1, %409
  %411 = xor i32 %410, %406
  %412 = mul i32 %408, 112
  %413 = add i32 %412, 16
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = add i32 %412, 28
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = add i32 %412, 32
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = add i32 %412, 44
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = add i32 %412, 48
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = add i32 %412, 64
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = add i32 %412, 92
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 65535
  %445 = uitofp i32 %444 to float
  %446 = lshr i32 %443, 16
  %447 = uitofp i32 %446 to float
  %448 = and i32 %420, 65535
  %449 = and i32 %420, 50331648
  %450 = icmp eq i32 %449, 33554432
  %451 = call float @dx.op.dot3.f32(i32 55, float %423, float %424, float %425, float %423, float %424, float %425)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = fsub fast float %132, %431
  %453 = fsub fast float %133, %432
  %454 = fsub fast float %134, %433
  %455 = call float @dx.op.dot3.f32(i32 55, float %452, float %453, float %454, float %423, float %424, float %425)  ; Dot3(ax,ay,az,bx,by,bz)
  %456 = fdiv fast float %455, %451
  %457 = call float @dx.op.binary.f32(i32 35, float %456, float -1.000000e+00)  ; FMax(a,b)
  %458 = call float @dx.op.binary.f32(i32 36, float %457, float 1.000000e+00)  ; FMin(a,b)
  %459 = fmul fast float %458, %423
  %460 = fmul fast float %458, %424
  %461 = fmul fast float %458, %425
  %462 = fadd fast float %459, %431
  %463 = fadd fast float %460, %432
  %464 = fadd fast float %461, %433
  %465 = fsub fast float %462, %132
  %466 = fsub fast float %463, %133
  %467 = fsub fast float %464, %134
  %468 = call float @dx.op.dot3.f32(i32 55, float %465, float %466, float %467, float %465, float %466, float %467)  ; Dot3(ax,ay,az,bx,by,bz)
  %469 = call float @dx.op.unary.f32(i32 24, float %468)  ; Sqrt(value)
  %470 = fdiv fast float 1.000000e+00, %469
  %471 = fmul fast float %465, %470
  %472 = fmul fast float %466, %470
  %473 = fmul fast float %467, %470
  br i1 %450, label %474, label %498, !dx.controlflow.hints !53

; <label>:474                                     ; preds = %404
  %475 = fmul fast float %439, %415
  %476 = fmul fast float %439, %416
  %477 = fmul fast float %439, %417
  %478 = fsub fast float %475, %132
  %479 = fadd fast float %478, %462
  %480 = fsub fast float %476, %133
  %481 = fadd fast float %480, %463
  %482 = fsub fast float %477, %134
  %483 = fadd fast float %482, %464
  %484 = call float @dx.op.dot3.f32(i32 55, float %479, float %481, float %483, float %479, float %481, float %483)  ; Dot3(ax,ay,az,bx,by,bz)
  %485 = call float @dx.op.unary.f32(i32 25, float %484)  ; Rsqrt(value)
  %486 = fmul fast float %485, %479
  %487 = fmul fast float %485, %481
  %488 = fmul fast float %485, %483
  %489 = fsub fast float %132, %462
  %490 = fsub fast float %133, %463
  %491 = fsub fast float %134, %464
  %492 = fsub fast float -0.000000e+00, %489
  %493 = fsub fast float -0.000000e+00, %490
  %494 = fsub fast float -0.000000e+00, %491
  %495 = call float @dx.op.dot3.f32(i32 55, float %492, float %493, float %494, float %415, float %416, float %417)  ; Dot3(ax,ay,az,bx,by,bz)
  %496 = fcmp fast ogt float %495, 0.000000e+00
  %497 = uitofp i1 %496 to float
  br label %498

; <label>:498                                     ; preds = %474, %404
  %499 = phi float [ %497, %474 ], [ 1.000000e+00, %404 ]
  %500 = phi float [ %486, %474 ], [ %471, %404 ]
  %501 = phi float [ %487, %474 ], [ %472, %404 ]
  %502 = phi float [ %488, %474 ], [ %473, %404 ]
  %503 = call float @dx.op.dot3.f32(i32 55, float %415, float %416, float %417, float %500, float %501, float %502)  ; Dot3(ax,ay,az,bx,by,bz)
  %504 = fmul fast float %503, %503
  %505 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %506 = fsub fast float 1.000000e+00, %505
  %507 = fmul fast float %506, 5.000000e-01
  %508 = fcmp fast ogt float %503, 0.000000e+00
  %509 = fsub fast float 1.000000e+00, %507
  %510 = select i1 %508, float %507, float %509
  %511 = fmul fast float %510, %447
  %512 = fadd fast float %511, %445
  %513 = fmul fast float %512, 0x3EF0001000000000
  %514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %513, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = fmul fast float %503, %437
  %517 = fadd fast float %516, %438
  %518 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %519 = select i1 %450, float 1.000000e+00, float %518
  %520 = select i1 %450, float %518, float 1.000000e+00
  %521 = fmul fast float %469, %434
  %522 = fsub fast float 1.000000e+00, %521
  %523 = fmul fast float %522, %440
  %524 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %525 = fmul fast float %524, %520
  %526 = fmul fast float %525, 2.000000e+00
  %527 = fsub fast float 3.000000e+00, %526
  %528 = fmul fast float %515, %499
  %529 = fmul fast float %525, %525
  %530 = fmul fast float %529, %528
  %531 = fmul fast float %530, %527
  %532 = icmp ne i32 %448, 255
  %533 = call float @dx.op.binary.f32(i32 36, float %531, float %531)  ; FMin(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float %531, float %533)  ; FMin(a,b)
  %535 = fcmp fast ogt float %534, 0.000000e+00
  %536 = and i1 %532, %535
  br i1 %536, label %537, label %1451, !dx.controlflow.hints !54

; <label>:537                                     ; preds = %498
  %538 = mul nuw nsw i32 %448, 176
  %539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = extractvalue %dx.types.ResRet.f32 %539, 1
  %542 = extractvalue %dx.types.ResRet.f32 %539, 2
  %543 = extractvalue %dx.types.ResRet.f32 %539, 3
  %544 = add nuw nsw i32 %538, 16
  %545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = add nuw nsw i32 %538, 32
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  %553 = extractvalue %dx.types.ResRet.f32 %549, 3
  %554 = add nuw nsw i32 %538, 48
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = extractvalue %dx.types.ResRet.f32 %555, 3
  %560 = add nuw nsw i32 %538, 64
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = extractvalue %dx.types.ResRet.f32 %561, 3
  %566 = add nuw nsw i32 %538, 80
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = extractvalue %dx.types.ResRet.f32 %567, 1
  %570 = extractvalue %dx.types.ResRet.f32 %567, 2
  %571 = extractvalue %dx.types.ResRet.f32 %567, 3
  %572 = add nuw nsw i32 %538, 96
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = extractvalue %dx.types.ResRet.f32 %573, 3
  %578 = add nuw nsw i32 %538, 112
  %579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = extractvalue %dx.types.ResRet.f32 %579, 1
  %582 = extractvalue %dx.types.ResRet.f32 %579, 2
  %583 = extractvalue %dx.types.ResRet.f32 %579, 3
  %584 = add nuw nsw i32 %538, 128
  %585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = extractvalue %dx.types.ResRet.f32 %585, 2
  %589 = extractvalue %dx.types.ResRet.f32 %585, 3
  %590 = add nuw nsw i32 %538, 144
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = extractvalue %dx.types.ResRet.f32 %591, 3
  %596 = add nuw nsw i32 %538, 160
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = extractvalue %dx.types.ResRet.f32 %597, 3
  %602 = bitcast float %547 to i32
  %603 = bitcast float %553 to i32
  %604 = and i32 %603, 1
  %605 = icmp ne i32 %604, 0
  %606 = and i32 %603, 2
  %607 = fmul fast float %552, %178
  %608 = fmul fast float %552, %179
  %609 = fmul fast float %552, %180
  %610 = fadd fast float %607, %132
  %611 = fadd fast float %608, %133
  %612 = fadd fast float %609, %134
  %613 = fmul fast float %610, %556
  %614 = call float @dx.op.tertiary.f32(i32 46, float %611, float %562, float %613)  ; FMad(a,b,c)
  %615 = call float @dx.op.tertiary.f32(i32 46, float %612, float %568, float %614)  ; FMad(a,b,c)
  %616 = fadd fast float %615, %574
  %617 = fmul fast float %610, %557
  %618 = call float @dx.op.tertiary.f32(i32 46, float %611, float %563, float %617)  ; FMad(a,b,c)
  %619 = call float @dx.op.tertiary.f32(i32 46, float %612, float %569, float %618)  ; FMad(a,b,c)
  %620 = fadd fast float %619, %575
  %621 = fmul fast float %610, %558
  %622 = call float @dx.op.tertiary.f32(i32 46, float %611, float %564, float %621)  ; FMad(a,b,c)
  %623 = call float @dx.op.tertiary.f32(i32 46, float %612, float %570, float %622)  ; FMad(a,b,c)
  %624 = fadd fast float %623, %576
  %625 = fmul fast float %610, %559
  %626 = call float @dx.op.tertiary.f32(i32 46, float %611, float %565, float %625)  ; FMad(a,b,c)
  %627 = call float @dx.op.tertiary.f32(i32 46, float %612, float %571, float %626)  ; FMad(a,b,c)
  %628 = fadd fast float %627, %577
  %629 = fdiv fast float %616, %628
  %630 = fdiv fast float %620, %628
  %631 = fdiv fast float %624, %628
  %632 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %631)  ; FMax(a,b)
  %633 = fmul fast float %250, 0x401921FB60000000
  %634 = call float @dx.op.unary.f32(i32 13, float %633)  ; Sin(value)
  %635 = call float @dx.op.unary.f32(i32 12, float %633)  ; Cos(value)
  %636 = fsub fast float -0.000000e+00, %634
  %637 = icmp eq i32 %606, 0
  br i1 %637, label %638, label %709, !dx.controlflow.hints !55

; <label>:638                                     ; preds = %537
  %639 = fmul fast float %635, %551
  %640 = call float @dx.op.tertiary.f32(i32 46, float %634, float %551, float 0.000000e+00)  ; FMad(a,b,c)
  %641 = fmul fast float %551, %636
  %642 = call float @dx.op.tertiary.f32(i32 46, float %635, float %551, float 0.000000e+00)  ; FMad(a,b,c)
  br label %643

; <label>:643                                     ; preds = %643, %638
  %644 = phi float [ 0.000000e+00, %638 ], [ %676, %643 ]
  %645 = phi float [ 0.000000e+00, %638 ], [ %678, %643 ]
  %646 = phi i32 [ 0, %638 ], [ %679, %643 ]
  %647 = mul i32 %646, 2
  %648 = add i32 0, %647
  %649 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %648
  %650 = load float, float* %649, align 4
  %651 = mul i32 %646, 2
  %652 = add i32 1, %651
  %653 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %652
  %654 = load float, float* %653, align 4
  %655 = fmul fast float %639, %650
  %656 = call float @dx.op.tertiary.f32(i32 46, float %654, float %641, float %655)  ; FMad(a,b,c)
  %657 = fmul fast float %650, %640
  %658 = call float @dx.op.tertiary.f32(i32 46, float %654, float %642, float %657)  ; FMad(a,b,c)
  %659 = fadd fast float %656, %629
  %660 = fadd fast float %658, %630
  %661 = fmul fast float %659, %546
  %662 = fmul fast float %660, %546
  %663 = call float @dx.op.binary.f32(i32 35, float %661, float %542)  ; FMax(a,b)
  %664 = call float @dx.op.binary.f32(i32 35, float %662, float %542)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %663, float %543)  ; FMin(a,b)
  %666 = call float @dx.op.binary.f32(i32 36, float %664, float %543)  ; FMin(a,b)
  %667 = fadd fast float %665, %540
  %668 = fadd fast float %666, %541
  %669 = uitofp i32 %602 to float
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %667, float %668, float %669, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = fsub fast float %671, %632
  %673 = fsub fast float %672, %550
  %674 = fcmp fast ogt float %673, 0.000000e+00
  %675 = select i1 %674, float 1.000000e+00, float 0.000000e+00
  %676 = fadd fast float %675, %644
  %677 = select i1 %674, float %673, float 0.000000e+00
  %678 = fadd fast float %677, %645
  %679 = add nuw nsw i32 %646, 1
  %680 = icmp eq i32 %679, 8
  br i1 %680, label %681, label %643

; <label>:681                                     ; preds = %643
  %682 = fdiv fast float 1.000000e+00, %676
  %683 = fmul fast float %682, %678
  %684 = fdiv fast float 1.000000e+00, %632
  %685 = fmul fast float %683, %684
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %687 = call float @dx.op.binary.f32(i32 35, float %686, float 0.000000e+00)  ; FMax(a,b)
  %688 = fmul fast float %676, 1.250000e-01
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = fmul fast float %689, 2.000000e+00
  %691 = fadd fast float %690, -1.000000e+00
  %692 = fcmp fast ogt float %691, 0.000000e+00
  %693 = fcmp fast olt float %691, 0.000000e+00
  %694 = zext i1 %692 to i32
  %695 = zext i1 %693 to i32
  %696 = sub nsw i32 %694, %695
  %697 = sitofp i32 %696 to float
  %698 = fmul fast float %697, %691
  %699 = fsub fast float 1.000000e+00, %698
  %700 = fmul fast float %699, %699
  %701 = fmul fast float %700, %699
  %702 = fsub fast float %699, %701
  %703 = fmul fast float %702, %687
  %704 = fsub fast float 1.000000e+00, %701
  %705 = fsub fast float %704, %703
  %706 = fmul fast float %697, 5.000000e-01
  %707 = fmul fast float %706, %705
  %708 = fsub fast float 5.000000e-01, %707
  br label %1324

; <label>:709                                     ; preds = %537
  %710 = fsub fast float 1.000000e+00, %632
  %711 = fmul fast float %710, 5.000000e-01
  %712 = fadd fast float %711, %632
  %713 = fsub fast float %610, %431
  %714 = fsub fast float %611, %432
  %715 = fsub fast float %612, %433
  %716 = call float @dx.op.dot3.f32(i32 55, float %713, float %714, float %715, float %423, float %424, float %425)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = fdiv fast float %716, %451
  %718 = call float @dx.op.binary.f32(i32 35, float %717, float -1.000000e+00)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 36, float %718, float 1.000000e+00)  ; FMin(a,b)
  %720 = fmul fast float %719, %423
  %721 = fmul fast float %719, %424
  %722 = fmul fast float %719, %425
  %723 = fsub fast float %713, %720
  %724 = fsub fast float %714, %721
  %725 = fsub fast float %715, %722
  %726 = call float @dx.op.dot3.f32(i32 55, float %723, float %724, float %725, float %723, float %724, float %725)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = call float @dx.op.unary.f32(i32 25, float %726)  ; Rsqrt(value)
  %728 = fmul fast float %723, %727
  %729 = fmul fast float %724, %727
  %730 = fmul fast float %725, %727
  %731 = call float @dx.op.unary.f32(i32 25, float %451)  ; Rsqrt(value)
  %732 = fmul fast float %731, %423
  %733 = fmul fast float %731, %424
  %734 = fmul fast float %731, %425
  br i1 %605, label %735, label %739, !dx.controlflow.hints !56

; <label>:735                                     ; preds = %709
  %736 = fcmp fast olt float %729, 0x3FE6666660000000
  %737 = select i1 %736, float 1.000000e+00, float 0.000000e+00
  %738 = select i1 %736, float 0.000000e+00, float 1.000000e+00
  br label %739

; <label>:739                                     ; preds = %735, %709
  %740 = phi float [ 0.000000e+00, %735 ], [ %732, %709 ]
  %741 = phi float [ %737, %735 ], [ %733, %709 ]
  %742 = phi float [ %738, %735 ], [ %734, %709 ]
  %743 = fmul fast float %741, %730
  %744 = fmul fast float %742, %729
  %745 = fsub fast float %743, %744
  %746 = fmul fast float %742, %728
  %747 = fmul fast float %740, %730
  %748 = fsub fast float %746, %747
  %749 = fmul fast float %740, %729
  %750 = fmul fast float %741, %728
  %751 = fsub fast float %749, %750
  %752 = call float @dx.op.dot3.f32(i32 55, float %745, float %748, float %751, float %745, float %748, float %751)  ; Dot3(ax,ay,az,bx,by,bz)
  %753 = call float @dx.op.unary.f32(i32 25, float %752)  ; Rsqrt(value)
  %754 = fmul fast float %753, %428
  %755 = fmul fast float %754, %745
  %756 = fmul fast float %754, %748
  %757 = fmul fast float %751, %428
  %758 = fmul fast float %757, %753
  %759 = fmul fast float %629, %580
  %760 = call float @dx.op.tertiary.f32(i32 46, float %630, float %586, float %759)  ; FMad(a,b,c)
  %761 = call float @dx.op.tertiary.f32(i32 46, float %712, float %592, float %760)  ; FMad(a,b,c)
  %762 = fadd fast float %761, %598
  %763 = fmul fast float %629, %581
  %764 = call float @dx.op.tertiary.f32(i32 46, float %630, float %587, float %763)  ; FMad(a,b,c)
  %765 = call float @dx.op.tertiary.f32(i32 46, float %712, float %593, float %764)  ; FMad(a,b,c)
  %766 = fadd fast float %765, %599
  %767 = fmul fast float %629, %582
  %768 = call float @dx.op.tertiary.f32(i32 46, float %630, float %588, float %767)  ; FMad(a,b,c)
  %769 = call float @dx.op.tertiary.f32(i32 46, float %712, float %594, float %768)  ; FMad(a,b,c)
  %770 = fadd fast float %769, %600
  %771 = fmul fast float %629, %583
  %772 = call float @dx.op.tertiary.f32(i32 46, float %630, float %589, float %771)  ; FMad(a,b,c)
  %773 = call float @dx.op.tertiary.f32(i32 46, float %712, float %595, float %772)  ; FMad(a,b,c)
  %774 = fadd fast float %773, %601
  %775 = fdiv fast float 1.000000e+00, %774
  %776 = fmul fast float %775, %762
  %777 = fmul fast float %775, %766
  %778 = fmul fast float %775, %770
  %779 = fsub fast float -0.000000e+00, %728
  %780 = fsub fast float -0.000000e+00, %729
  %781 = fsub fast float -0.000000e+00, %730
  %782 = fsub fast float %431, %755
  %783 = fsub fast float %432, %756
  %784 = fsub fast float %433, %758
  %785 = fsub fast float %776, %782
  %786 = fsub fast float %777, %783
  %787 = fsub fast float %778, %784
  %788 = call float @dx.op.dot3.f32(i32 55, float %785, float %786, float %787, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %789 = call float @dx.op.unary.f32(i32 25, float %788)  ; Rsqrt(value)
  %790 = fmul fast float %785, %789
  %791 = fmul fast float %786, %789
  %792 = fmul fast float %787, %789
  %793 = fsub fast float %610, %782
  %794 = fsub fast float %611, %783
  %795 = fsub fast float %612, %784
  %796 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %793, float %794, float %795)  ; Dot3(ax,ay,az,bx,by,bz)
  %797 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %790, float %791, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = fdiv fast float 1.000000e+00, %797
  %799 = fmul fast float %798, %796
  %800 = fmul fast float %799, %790
  %801 = fmul fast float %799, %791
  %802 = fmul fast float %799, %792
  %803 = fadd fast float %800, %782
  %804 = fadd fast float %801, %783
  %805 = fadd fast float %802, %784
  %806 = fadd fast float %755, %431
  %807 = fadd fast float %756, %432
  %808 = fadd fast float %758, %433
  %809 = fsub fast float %776, %806
  %810 = fsub fast float %777, %807
  %811 = fsub fast float %778, %808
  %812 = call float @dx.op.dot3.f32(i32 55, float %809, float %810, float %811, float %809, float %810, float %811)  ; Dot3(ax,ay,az,bx,by,bz)
  %813 = call float @dx.op.unary.f32(i32 25, float %812)  ; Rsqrt(value)
  %814 = fmul fast float %813, %809
  %815 = fmul fast float %813, %810
  %816 = fmul fast float %813, %811
  %817 = fsub fast float %610, %806
  %818 = fsub fast float %611, %807
  %819 = fsub fast float %612, %808
  %820 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %817, float %818, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %821 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %814, float %815, float %816)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = fdiv fast float 1.000000e+00, %821
  %823 = fmul fast float %822, %820
  %824 = fmul fast float %823, %814
  %825 = fmul fast float %823, %815
  %826 = fmul fast float %823, %816
  %827 = fadd fast float %824, %806
  %828 = fadd fast float %825, %807
  %829 = fadd fast float %826, %808
  %830 = fmul fast float %803, %556
  %831 = call float @dx.op.tertiary.f32(i32 46, float %804, float %562, float %830)  ; FMad(a,b,c)
  %832 = call float @dx.op.tertiary.f32(i32 46, float %805, float %568, float %831)  ; FMad(a,b,c)
  %833 = fadd fast float %832, %574
  %834 = fmul fast float %803, %557
  %835 = call float @dx.op.tertiary.f32(i32 46, float %804, float %563, float %834)  ; FMad(a,b,c)
  %836 = call float @dx.op.tertiary.f32(i32 46, float %805, float %569, float %835)  ; FMad(a,b,c)
  %837 = fadd fast float %836, %575
  %838 = fmul fast float %803, %559
  %839 = call float @dx.op.tertiary.f32(i32 46, float %804, float %565, float %838)  ; FMad(a,b,c)
  %840 = call float @dx.op.tertiary.f32(i32 46, float %805, float %571, float %839)  ; FMad(a,b,c)
  %841 = fadd fast float %840, %577
  %842 = fmul fast float %827, %556
  %843 = call float @dx.op.tertiary.f32(i32 46, float %828, float %562, float %842)  ; FMad(a,b,c)
  %844 = call float @dx.op.tertiary.f32(i32 46, float %829, float %568, float %843)  ; FMad(a,b,c)
  %845 = fadd fast float %844, %574
  %846 = fmul fast float %827, %557
  %847 = call float @dx.op.tertiary.f32(i32 46, float %828, float %563, float %846)  ; FMad(a,b,c)
  %848 = call float @dx.op.tertiary.f32(i32 46, float %829, float %569, float %847)  ; FMad(a,b,c)
  %849 = fadd fast float %848, %575
  %850 = fmul fast float %827, %559
  %851 = call float @dx.op.tertiary.f32(i32 46, float %828, float %565, float %850)  ; FMad(a,b,c)
  %852 = call float @dx.op.tertiary.f32(i32 46, float %829, float %571, float %851)  ; FMad(a,b,c)
  %853 = fadd fast float %852, %577
  %854 = fdiv fast float 1.000000e+00, %841
  %855 = fmul fast float %854, %833
  %856 = fmul fast float %854, %837
  %857 = fdiv fast float 1.000000e+00, %853
  %858 = fmul fast float %857, %845
  %859 = fmul fast float %857, %849
  %860 = fsub fast float %858, %855
  %861 = fsub fast float %859, %856
  %862 = call float @dx.op.dot2.f32(i32 54, float %860, float %861, float %860, float %861)  ; Dot2(ax,ay,bx,by)
  %863 = call float @dx.op.unary.f32(i32 25, float %862)  ; Rsqrt(value)
  %864 = fmul fast float %860, %863
  %865 = fmul fast float %861, %863
  %866 = fmul fast float %860, %860
  %867 = fmul fast float %861, %861
  %868 = fadd fast float %866, %867
  %869 = call float @dx.op.unary.f32(i32 24, float %868)  ; Sqrt(value)
  %870 = fmul fast float %869, 5.000000e-01
  br i1 %605, label %963, label %871, !dx.controlflow.hints !57

; <label>:871                                     ; preds = %739
  %872 = fsub fast float %431, %423
  %873 = fsub fast float %432, %424
  %874 = fsub fast float %433, %425
  %875 = fsub fast float %776, %872
  %876 = fsub fast float %777, %873
  %877 = fsub fast float %778, %874
  %878 = call float @dx.op.dot3.f32(i32 55, float %875, float %876, float %877, float %875, float %876, float %877)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = call float @dx.op.unary.f32(i32 25, float %878)  ; Rsqrt(value)
  %880 = fmul fast float %879, %875
  %881 = fmul fast float %879, %876
  %882 = fmul fast float %879, %877
  %883 = fsub fast float %610, %872
  %884 = fsub fast float %611, %873
  %885 = fsub fast float %612, %874
  %886 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %883, float %884, float %885)  ; Dot3(ax,ay,az,bx,by,bz)
  %887 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %880, float %881, float %882)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = fdiv fast float 1.000000e+00, %887
  %889 = fmul fast float %888, %886
  %890 = fmul fast float %889, %880
  %891 = fmul fast float %889, %881
  %892 = fmul fast float %889, %882
  %893 = fadd fast float %890, %872
  %894 = fadd fast float %891, %873
  %895 = fadd fast float %892, %874
  %896 = fadd fast float %431, %423
  %897 = fadd fast float %432, %424
  %898 = fadd fast float %433, %425
  %899 = fsub fast float %776, %896
  %900 = fsub fast float %777, %897
  %901 = fsub fast float %778, %898
  %902 = call float @dx.op.dot3.f32(i32 55, float %899, float %900, float %901, float %899, float %900, float %901)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = call float @dx.op.unary.f32(i32 25, float %902)  ; Rsqrt(value)
  %904 = fmul fast float %903, %899
  %905 = fmul fast float %903, %900
  %906 = fmul fast float %903, %901
  %907 = fsub fast float %610, %896
  %908 = fsub fast float %611, %897
  %909 = fsub fast float %612, %898
  %910 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %907, float %908, float %909)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %904, float %905, float %906)  ; Dot3(ax,ay,az,bx,by,bz)
  %912 = fdiv fast float 1.000000e+00, %911
  %913 = fmul fast float %912, %910
  %914 = fmul fast float %913, %904
  %915 = fmul fast float %913, %905
  %916 = fmul fast float %913, %906
  %917 = fadd fast float %914, %896
  %918 = fadd fast float %915, %897
  %919 = fadd fast float %916, %898
  %920 = fmul fast float %893, %556
  %921 = call float @dx.op.tertiary.f32(i32 46, float %894, float %562, float %920)  ; FMad(a,b,c)
  %922 = call float @dx.op.tertiary.f32(i32 46, float %895, float %568, float %921)  ; FMad(a,b,c)
  %923 = fadd fast float %922, %574
  %924 = fmul fast float %893, %557
  %925 = call float @dx.op.tertiary.f32(i32 46, float %894, float %563, float %924)  ; FMad(a,b,c)
  %926 = call float @dx.op.tertiary.f32(i32 46, float %895, float %569, float %925)  ; FMad(a,b,c)
  %927 = fadd fast float %926, %575
  %928 = fmul fast float %893, %559
  %929 = call float @dx.op.tertiary.f32(i32 46, float %894, float %565, float %928)  ; FMad(a,b,c)
  %930 = call float @dx.op.tertiary.f32(i32 46, float %895, float %571, float %929)  ; FMad(a,b,c)
  %931 = fadd fast float %930, %577
  %932 = fmul fast float %917, %556
  %933 = call float @dx.op.tertiary.f32(i32 46, float %918, float %562, float %932)  ; FMad(a,b,c)
  %934 = call float @dx.op.tertiary.f32(i32 46, float %919, float %568, float %933)  ; FMad(a,b,c)
  %935 = fadd fast float %934, %574
  %936 = fmul fast float %917, %557
  %937 = call float @dx.op.tertiary.f32(i32 46, float %918, float %563, float %936)  ; FMad(a,b,c)
  %938 = call float @dx.op.tertiary.f32(i32 46, float %919, float %569, float %937)  ; FMad(a,b,c)
  %939 = fadd fast float %938, %575
  %940 = fmul fast float %917, %559
  %941 = call float @dx.op.tertiary.f32(i32 46, float %918, float %565, float %940)  ; FMad(a,b,c)
  %942 = call float @dx.op.tertiary.f32(i32 46, float %919, float %571, float %941)  ; FMad(a,b,c)
  %943 = fadd fast float %942, %577
  %944 = fdiv fast float 1.000000e+00, %931
  %945 = fmul fast float %944, %923
  %946 = fmul fast float %944, %927
  %947 = fdiv fast float 1.000000e+00, %943
  %948 = fmul fast float %947, %935
  %949 = fmul fast float %947, %939
  %950 = fsub fast float %948, %945
  %951 = fsub fast float %949, %946
  %952 = call float @dx.op.dot2.f32(i32 54, float %950, float %951, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  %953 = call float @dx.op.unary.f32(i32 25, float %952)  ; Rsqrt(value)
  %954 = fmul fast float %950, %953
  %955 = fmul fast float %951, %953
  %956 = fmul fast float %950, %950
  %957 = fmul fast float %951, %951
  %958 = fadd fast float %956, %957
  %959 = call float @dx.op.unary.f32(i32 24, float %958)  ; Sqrt(value)
  %960 = fmul fast float %959, 5.000000e-01
  %961 = fcmp fast olt float %960, %870
  br i1 %961, label %962, label %963, !dx.controlflow.hints !58

; <label>:962                                     ; preds = %871
  br label %963

; <label>:963                                     ; preds = %962, %871, %739
  %964 = phi float [ %870, %739 ], [ %960, %962 ], [ %870, %871 ]
  %965 = phi float [ %870, %739 ], [ %870, %962 ], [ %960, %871 ]
  %966 = phi float [ %864, %739 ], [ %864, %962 ], [ %954, %871 ]
  %967 = phi float [ %865, %739 ], [ %865, %962 ], [ %955, %871 ]
  %968 = fmul fast float %964, %551
  %969 = fdiv fast float %968, %965
  %970 = fsub fast float %551, %969
  %971 = fmul fast float %966, %966
  %972 = fmul fast float %971, %970
  %973 = fadd fast float %972, %969
  %974 = fmul fast float %967, %966
  %975 = fmul fast float %974, %970
  %976 = fmul fast float %967, %967
  %977 = fmul fast float %976, %970
  %978 = fadd fast float %977, %969
  %979 = fmul fast float %973, %635
  %980 = call float @dx.op.tertiary.f32(i32 46, float %634, float %975, float %979)  ; FMad(a,b,c)
  %981 = fmul fast float %975, %635
  %982 = call float @dx.op.tertiary.f32(i32 46, float %634, float %978, float %981)  ; FMad(a,b,c)
  %983 = fmul fast float %973, %636
  %984 = call float @dx.op.tertiary.f32(i32 46, float %635, float %975, float %983)  ; FMad(a,b,c)
  %985 = fmul fast float %975, %636
  %986 = call float @dx.op.tertiary.f32(i32 46, float %635, float %978, float %985)  ; FMad(a,b,c)
  br label %987

; <label>:987                                     ; preds = %1025, %963
  %988 = phi float [ 0.000000e+00, %963 ], [ %1026, %1025 ]
  %989 = phi float [ 0.000000e+00, %963 ], [ %1027, %1025 ]
  %990 = phi float [ 0.000000e+00, %963 ], [ %1028, %1025 ]
  %991 = phi float [ 0.000000e+00, %963 ], [ %1029, %1025 ]
  %992 = phi i32 [ 0, %963 ], [ %1030, %1025 ]
  %993 = mul i32 %992, 2
  %994 = add i32 0, %993
  %995 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %994
  %996 = load float, float* %995, align 4
  %997 = mul i32 %992, 2
  %998 = add i32 1, %997
  %999 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %998
  %1000 = load float, float* %999, align 4
  %1001 = fmul fast float %996, %980
  %1002 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %984, float %1001)  ; FMad(a,b,c)
  %1003 = fmul fast float %996, %982
  %1004 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %986, float %1003)  ; FMad(a,b,c)
  %1005 = fadd fast float %1002, %629
  %1006 = fadd fast float %1004, %630
  %1007 = fmul fast float %1005, %546
  %1008 = fmul fast float %1006, %546
  %1009 = call float @dx.op.binary.f32(i32 35, float %1007, float %542)  ; FMax(a,b)
  %1010 = call float @dx.op.binary.f32(i32 35, float %1008, float %542)  ; FMax(a,b)
  %1011 = call float @dx.op.binary.f32(i32 36, float %1009, float %543)  ; FMin(a,b)
  %1012 = call float @dx.op.binary.f32(i32 36, float %1010, float %543)  ; FMin(a,b)
  %1013 = fadd fast float %1011, %540
  %1014 = fadd fast float %1012, %541
  %1015 = uitofp i32 %602 to float
  %1016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %1013, float %1014, float %1015, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = fadd fast float %632, %550
  %1019 = fcmp fast olt float %1018, %1017
  br i1 %1019, label %1020, label %1025, !dx.controlflow.hints !59

; <label>:1020                                    ; preds = %987
  %1021 = fadd fast float %1017, %990
  %1022 = fadd fast float %1002, %988
  %1023 = fadd fast float %1004, %989
  %1024 = fadd fast float %991, 1.000000e+00
  br label %1025

; <label>:1025                                    ; preds = %1020, %987
  %1026 = phi float [ %1022, %1020 ], [ %988, %987 ]
  %1027 = phi float [ %1023, %1020 ], [ %989, %987 ]
  %1028 = phi float [ %1021, %1020 ], [ %990, %987 ]
  %1029 = phi float [ %1024, %1020 ], [ %991, %987 ]
  %1030 = add nuw nsw i32 %992, 1
  %1031 = icmp eq i32 %1030, 8
  br i1 %1031, label %1032, label %987

; <label>:1032                                    ; preds = %1025
  %1033 = fdiv fast float 1.000000e+00, %1029
  %1034 = fcmp fast oeq float %1029, 0.000000e+00
  %1035 = fmul fast float %1033, %1028
  %1036 = select i1 %1034, float -1.000000e+00, float %1035
  %1037 = fcmp fast olt float %1036, 0.000000e+00
  br i1 %1037, label %1324, label %1038, !dx.controlflow.hints !60

; <label>:1038                                    ; preds = %1032
  %1039 = fmul fast float %1033, %1027
  %1040 = select i1 %1034, float 0.000000e+00, float %1039
  %1041 = fmul fast float %1033, %1026
  %1042 = select i1 %1034, float 0.000000e+00, float %1041
  %1043 = fadd fast float %1042, %629
  %1044 = fadd fast float %1040, %630
  br i1 %605, label %1045, label %1049, !dx.controlflow.hints !56

; <label>:1045                                    ; preds = %1038
  %1046 = fcmp fast olt float %729, 0x3FE6666660000000
  %1047 = select i1 %1046, float 1.000000e+00, float 0.000000e+00
  %1048 = select i1 %1046, float 0.000000e+00, float 1.000000e+00
  br label %1049

; <label>:1049                                    ; preds = %1045, %1038
  %1050 = phi float [ 0.000000e+00, %1045 ], [ %732, %1038 ]
  %1051 = phi float [ %1047, %1045 ], [ %733, %1038 ]
  %1052 = phi float [ %1048, %1045 ], [ %734, %1038 ]
  %1053 = fmul fast float %1051, %730
  %1054 = fmul fast float %1052, %729
  %1055 = fsub fast float %1053, %1054
  %1056 = fmul fast float %1052, %728
  %1057 = fmul fast float %1050, %730
  %1058 = fsub fast float %1056, %1057
  %1059 = fmul fast float %1050, %729
  %1060 = fmul fast float %1051, %728
  %1061 = fsub fast float %1059, %1060
  %1062 = call float @dx.op.dot3.f32(i32 55, float %1055, float %1058, float %1061, float %1055, float %1058, float %1061)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = call float @dx.op.unary.f32(i32 25, float %1062)  ; Rsqrt(value)
  %1064 = fmul fast float %1063, %428
  %1065 = fmul fast float %1064, %1055
  %1066 = fmul fast float %1064, %1058
  %1067 = fmul fast float %1061, %428
  %1068 = fmul fast float %1067, %1063
  %1069 = fmul fast float %1043, %580
  %1070 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %586, float %1069)  ; FMad(a,b,c)
  %1071 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %592, float %1070)  ; FMad(a,b,c)
  %1072 = fadd fast float %1071, %598
  %1073 = fmul fast float %1043, %581
  %1074 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %587, float %1073)  ; FMad(a,b,c)
  %1075 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %593, float %1074)  ; FMad(a,b,c)
  %1076 = fadd fast float %1075, %599
  %1077 = fmul fast float %1043, %582
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %588, float %1077)  ; FMad(a,b,c)
  %1079 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %594, float %1078)  ; FMad(a,b,c)
  %1080 = fadd fast float %1079, %600
  %1081 = fmul fast float %1043, %583
  %1082 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %589, float %1081)  ; FMad(a,b,c)
  %1083 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %595, float %1082)  ; FMad(a,b,c)
  %1084 = fadd fast float %1083, %601
  %1085 = fdiv fast float 1.000000e+00, %1084
  %1086 = fmul fast float %1085, %1072
  %1087 = fmul fast float %1085, %1076
  %1088 = fmul fast float %1085, %1080
  %1089 = fsub fast float %431, %1065
  %1090 = fsub fast float %432, %1066
  %1091 = fsub fast float %433, %1068
  %1092 = fsub fast float %1086, %1089
  %1093 = fsub fast float %1087, %1090
  %1094 = fsub fast float %1088, %1091
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1092, float %1093, float %1094, float %1092, float %1093, float %1094)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = call float @dx.op.unary.f32(i32 25, float %1095)  ; Rsqrt(value)
  %1097 = fmul fast float %1092, %1096
  %1098 = fmul fast float %1093, %1096
  %1099 = fmul fast float %1094, %1096
  %1100 = fsub fast float %610, %1089
  %1101 = fsub fast float %611, %1090
  %1102 = fsub fast float %612, %1091
  %1103 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %1100, float %1101, float %1102)  ; Dot3(ax,ay,az,bx,by,bz)
  %1104 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %1097, float %1098, float %1099)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = fdiv fast float 1.000000e+00, %1104
  %1106 = fmul fast float %1105, %1103
  %1107 = fmul fast float %1106, %1097
  %1108 = fmul fast float %1106, %1098
  %1109 = fmul fast float %1106, %1099
  %1110 = fadd fast float %1107, %1089
  %1111 = fadd fast float %1108, %1090
  %1112 = fadd fast float %1109, %1091
  %1113 = fadd fast float %1065, %431
  %1114 = fadd fast float %1066, %432
  %1115 = fadd fast float %1068, %433
  %1116 = fsub fast float %1086, %1113
  %1117 = fsub fast float %1087, %1114
  %1118 = fsub fast float %1088, %1115
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1116, float %1117, float %1118, float %1116, float %1117, float %1118)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call float @dx.op.unary.f32(i32 25, float %1119)  ; Rsqrt(value)
  %1121 = fmul fast float %1120, %1116
  %1122 = fmul fast float %1120, %1117
  %1123 = fmul fast float %1120, %1118
  %1124 = fsub fast float %610, %1113
  %1125 = fsub fast float %611, %1114
  %1126 = fsub fast float %612, %1115
  %1127 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %1124, float %1125, float %1126)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %1121, float %1122, float %1123)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = fdiv fast float 1.000000e+00, %1128
  %1130 = fmul fast float %1129, %1127
  %1131 = fmul fast float %1130, %1121
  %1132 = fmul fast float %1130, %1122
  %1133 = fmul fast float %1130, %1123
  %1134 = fadd fast float %1131, %1113
  %1135 = fadd fast float %1132, %1114
  %1136 = fadd fast float %1133, %1115
  %1137 = fmul fast float %1110, %556
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1111, float %562, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %568, float %1138)  ; FMad(a,b,c)
  %1140 = fadd fast float %1139, %574
  %1141 = fmul fast float %1110, %557
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1111, float %563, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %569, float %1142)  ; FMad(a,b,c)
  %1144 = fadd fast float %1143, %575
  %1145 = fmul fast float %1110, %559
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1111, float %565, float %1145)  ; FMad(a,b,c)
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1112, float %571, float %1146)  ; FMad(a,b,c)
  %1148 = fadd fast float %1147, %577
  %1149 = fmul fast float %1134, %556
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1135, float %562, float %1149)  ; FMad(a,b,c)
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %568, float %1150)  ; FMad(a,b,c)
  %1152 = fadd fast float %1151, %574
  %1153 = fmul fast float %1134, %557
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1135, float %563, float %1153)  ; FMad(a,b,c)
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %569, float %1154)  ; FMad(a,b,c)
  %1156 = fadd fast float %1155, %575
  %1157 = fmul fast float %1134, %559
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %1135, float %565, float %1157)  ; FMad(a,b,c)
  %1159 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %571, float %1158)  ; FMad(a,b,c)
  %1160 = fadd fast float %1159, %577
  %1161 = fdiv fast float 1.000000e+00, %1148
  %1162 = fmul fast float %1161, %1140
  %1163 = fmul fast float %1161, %1144
  %1164 = fdiv fast float 1.000000e+00, %1160
  %1165 = fmul fast float %1164, %1152
  %1166 = fmul fast float %1164, %1156
  %1167 = fsub fast float %1165, %1162
  %1168 = fsub fast float %1166, %1163
  %1169 = call float @dx.op.dot2.f32(i32 54, float %1167, float %1168, float %1167, float %1168)  ; Dot2(ax,ay,bx,by)
  %1170 = call float @dx.op.unary.f32(i32 25, float %1169)  ; Rsqrt(value)
  %1171 = fmul fast float %1167, %1170
  %1172 = fmul fast float %1168, %1170
  %1173 = fmul fast float %1167, %1167
  %1174 = fmul fast float %1168, %1168
  %1175 = fadd fast float %1173, %1174
  %1176 = call float @dx.op.unary.f32(i32 24, float %1175)  ; Sqrt(value)
  %1177 = fmul fast float %1176, 5.000000e-01
  br i1 %605, label %1270, label %1178, !dx.controlflow.hints !57

; <label>:1178                                    ; preds = %1049
  %1179 = fsub fast float %431, %423
  %1180 = fsub fast float %432, %424
  %1181 = fsub fast float %433, %425
  %1182 = fsub fast float %1086, %1179
  %1183 = fsub fast float %1087, %1180
  %1184 = fsub fast float %1088, %1181
  %1185 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1183, float %1184, float %1182, float %1183, float %1184)  ; Dot3(ax,ay,az,bx,by,bz)
  %1186 = call float @dx.op.unary.f32(i32 25, float %1185)  ; Rsqrt(value)
  %1187 = fmul fast float %1186, %1182
  %1188 = fmul fast float %1186, %1183
  %1189 = fmul fast float %1186, %1184
  %1190 = fsub fast float %610, %1179
  %1191 = fsub fast float %611, %1180
  %1192 = fsub fast float %612, %1181
  %1193 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %1190, float %1191, float %1192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1194 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %1187, float %1188, float %1189)  ; Dot3(ax,ay,az,bx,by,bz)
  %1195 = fdiv fast float 1.000000e+00, %1194
  %1196 = fmul fast float %1195, %1193
  %1197 = fmul fast float %1196, %1187
  %1198 = fmul fast float %1196, %1188
  %1199 = fmul fast float %1196, %1189
  %1200 = fadd fast float %1197, %1179
  %1201 = fadd fast float %1198, %1180
  %1202 = fadd fast float %1199, %1181
  %1203 = fadd fast float %431, %423
  %1204 = fadd fast float %432, %424
  %1205 = fadd fast float %433, %425
  %1206 = fsub fast float %1086, %1203
  %1207 = fsub fast float %1087, %1204
  %1208 = fsub fast float %1088, %1205
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1206, float %1207, float %1208, float %1206, float %1207, float %1208)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = call float @dx.op.unary.f32(i32 25, float %1209)  ; Rsqrt(value)
  %1211 = fmul fast float %1210, %1206
  %1212 = fmul fast float %1210, %1207
  %1213 = fmul fast float %1210, %1208
  %1214 = fsub fast float %610, %1203
  %1215 = fsub fast float %611, %1204
  %1216 = fsub fast float %612, %1205
  %1217 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %1214, float %1215, float %1216)  ; Dot3(ax,ay,az,bx,by,bz)
  %1218 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %1211, float %1212, float %1213)  ; Dot3(ax,ay,az,bx,by,bz)
  %1219 = fdiv fast float 1.000000e+00, %1218
  %1220 = fmul fast float %1219, %1217
  %1221 = fmul fast float %1220, %1211
  %1222 = fmul fast float %1220, %1212
  %1223 = fmul fast float %1220, %1213
  %1224 = fadd fast float %1221, %1203
  %1225 = fadd fast float %1222, %1204
  %1226 = fadd fast float %1223, %1205
  %1227 = fmul fast float %1200, %556
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %562, float %1227)  ; FMad(a,b,c)
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %568, float %1228)  ; FMad(a,b,c)
  %1230 = fadd fast float %1229, %574
  %1231 = fmul fast float %1200, %557
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %563, float %1231)  ; FMad(a,b,c)
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %569, float %1232)  ; FMad(a,b,c)
  %1234 = fadd fast float %1233, %575
  %1235 = fmul fast float %1200, %559
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %565, float %1235)  ; FMad(a,b,c)
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %571, float %1236)  ; FMad(a,b,c)
  %1238 = fadd fast float %1237, %577
  %1239 = fmul fast float %1224, %556
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1225, float %562, float %1239)  ; FMad(a,b,c)
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %568, float %1240)  ; FMad(a,b,c)
  %1242 = fadd fast float %1241, %574
  %1243 = fmul fast float %1224, %557
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %1225, float %563, float %1243)  ; FMad(a,b,c)
  %1245 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %569, float %1244)  ; FMad(a,b,c)
  %1246 = fadd fast float %1245, %575
  %1247 = fmul fast float %1224, %559
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %1225, float %565, float %1247)  ; FMad(a,b,c)
  %1249 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %571, float %1248)  ; FMad(a,b,c)
  %1250 = fadd fast float %1249, %577
  %1251 = fdiv fast float 1.000000e+00, %1238
  %1252 = fmul fast float %1251, %1230
  %1253 = fmul fast float %1251, %1234
  %1254 = fdiv fast float 1.000000e+00, %1250
  %1255 = fmul fast float %1254, %1242
  %1256 = fmul fast float %1254, %1246
  %1257 = fsub fast float %1255, %1252
  %1258 = fsub fast float %1256, %1253
  %1259 = call float @dx.op.dot2.f32(i32 54, float %1257, float %1258, float %1257, float %1258)  ; Dot2(ax,ay,bx,by)
  %1260 = call float @dx.op.unary.f32(i32 25, float %1259)  ; Rsqrt(value)
  %1261 = fmul fast float %1257, %1260
  %1262 = fmul fast float %1258, %1260
  %1263 = fmul fast float %1257, %1257
  %1264 = fmul fast float %1258, %1258
  %1265 = fadd fast float %1263, %1264
  %1266 = call float @dx.op.unary.f32(i32 24, float %1265)  ; Sqrt(value)
  %1267 = fmul fast float %1266, 5.000000e-01
  %1268 = fcmp fast olt float %1267, %1177
  br i1 %1268, label %1269, label %1270, !dx.controlflow.hints !58

; <label>:1269                                    ; preds = %1178
  br label %1270

; <label>:1270                                    ; preds = %1269, %1178, %1049
  %1271 = phi float [ %1177, %1049 ], [ %1267, %1269 ], [ %1177, %1178 ]
  %1272 = phi float [ %1177, %1049 ], [ %1177, %1269 ], [ %1267, %1178 ]
  %1273 = phi float [ %1171, %1049 ], [ %1171, %1269 ], [ %1261, %1178 ]
  %1274 = phi float [ %1172, %1049 ], [ %1172, %1269 ], [ %1262, %1178 ]
  %1275 = fsub fast float %1272, %1271
  %1276 = fmul fast float %1273, %1273
  %1277 = fmul fast float %1276, %1275
  %1278 = fadd fast float %1277, %1271
  %1279 = fmul fast float %1273, %1275
  %1280 = fmul fast float %1279, %1274
  %1281 = fmul fast float %1274, %1274
  %1282 = fmul fast float %1281, %1275
  %1283 = fadd fast float %1282, %1271
  %1284 = fmul fast float %1278, %635
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %634, float %1280, float %1284)  ; FMad(a,b,c)
  %1286 = fmul fast float %1280, %635
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %634, float %1283, float %1286)  ; FMad(a,b,c)
  %1288 = fmul fast float %1278, %636
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %635, float %1280, float %1288)  ; FMad(a,b,c)
  %1290 = fmul fast float %1280, %636
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %635, float %1283, float %1290)  ; FMad(a,b,c)
  br label %1292

; <label>:1292                                    ; preds = %1292, %1270
  %1293 = phi float [ 0.000000e+00, %1270 ], [ %1319, %1292 ]
  %1294 = phi i32 [ 0, %1270 ], [ %1320, %1292 ]
  %1295 = mul i32 %1294, 2
  %1296 = add i32 0, %1295
  %1297 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1296
  %1298 = load float, float* %1297, align 4
  %1299 = mul i32 %1294, 2
  %1300 = add i32 1, %1299
  %1301 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1300
  %1302 = load float, float* %1301, align 4
  %1303 = fmul fast float %1298, %1285
  %1304 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %1289, float %1303)  ; FMad(a,b,c)
  %1305 = fmul fast float %1298, %1287
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1302, float %1291, float %1305)  ; FMad(a,b,c)
  %1307 = fadd fast float %1304, %629
  %1308 = fadd fast float %1306, %630
  %1309 = fmul fast float %1307, %546
  %1310 = fmul fast float %1308, %546
  %1311 = call float @dx.op.binary.f32(i32 35, float %1309, float %542)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 35, float %1310, float %542)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 36, float %1311, float %543)  ; FMin(a,b)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1312, float %543)  ; FMin(a,b)
  %1315 = fadd fast float %1313, %540
  %1316 = fadd fast float %1314, %541
  %1317 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %17, float %1315, float %1316, float %1015, float undef, i32 0, i32 0, i32 undef, float %1018)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1318 = extractvalue %dx.types.ResRet.f32 %1317, 0
  %1319 = fadd fast float %1318, %1293
  %1320 = add nuw nsw i32 %1294, 1
  %1321 = icmp eq i32 %1320, 8
  br i1 %1321, label %1322, label %1292

; <label>:1322                                    ; preds = %1292
  %1323 = fmul fast float %1319, 1.250000e-01
  br label %1324

; <label>:1324                                    ; preds = %1322, %1032, %681
  %1325 = phi float [ %708, %681 ], [ %1323, %1322 ], [ 1.000000e+00, %1032 ]
  %1326 = fcmp fast ogt float %1325, 0.000000e+00
  %1327 = xor i1 %70, true
  %1328 = and i1 %1326, %1327
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1331 = fcmp fast olt float %1330, 0.000000e+00
  %1332 = and i1 %1328, %1331
  br i1 %1332, label %1333, label %1444, !dx.controlflow.hints !61

; <label>:1333                                    ; preds = %1324
  %1334 = fadd fast float %629, %542
  %1335 = fadd fast float %630, %542
  %1336 = fadd fast float %632, %550
  %1337 = fmul fast float %629, %580
  %1338 = call float @dx.op.tertiary.f32(i32 46, float %630, float %586, float %1337)  ; FMad(a,b,c)
  %1339 = call float @dx.op.tertiary.f32(i32 46, float %632, float %592, float %1338)  ; FMad(a,b,c)
  %1340 = fadd fast float %1339, %598
  %1341 = fmul fast float %629, %581
  %1342 = call float @dx.op.tertiary.f32(i32 46, float %630, float %587, float %1341)  ; FMad(a,b,c)
  %1343 = call float @dx.op.tertiary.f32(i32 46, float %632, float %593, float %1342)  ; FMad(a,b,c)
  %1344 = fadd fast float %1343, %599
  %1345 = fmul fast float %629, %582
  %1346 = call float @dx.op.tertiary.f32(i32 46, float %630, float %588, float %1345)  ; FMad(a,b,c)
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %632, float %594, float %1346)  ; FMad(a,b,c)
  %1348 = fadd fast float %1347, %600
  %1349 = fmul fast float %629, %583
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %630, float %589, float %1349)  ; FMad(a,b,c)
  %1351 = call float @dx.op.tertiary.f32(i32 46, float %632, float %595, float %1350)  ; FMad(a,b,c)
  %1352 = fadd fast float %1351, %601
  %1353 = fmul fast float %1334, %580
  %1354 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %586, float %1353)  ; FMad(a,b,c)
  %1355 = call float @dx.op.tertiary.f32(i32 46, float %1336, float %592, float %1354)  ; FMad(a,b,c)
  %1356 = fadd fast float %1355, %598
  %1357 = fmul fast float %1334, %581
  %1358 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %587, float %1357)  ; FMad(a,b,c)
  %1359 = call float @dx.op.tertiary.f32(i32 46, float %1336, float %593, float %1358)  ; FMad(a,b,c)
  %1360 = fadd fast float %1359, %599
  %1361 = fmul fast float %1334, %582
  %1362 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %588, float %1361)  ; FMad(a,b,c)
  %1363 = call float @dx.op.tertiary.f32(i32 46, float %1336, float %594, float %1362)  ; FMad(a,b,c)
  %1364 = fadd fast float %1363, %600
  %1365 = fmul fast float %1334, %583
  %1366 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %589, float %1365)  ; FMad(a,b,c)
  %1367 = call float @dx.op.tertiary.f32(i32 46, float %1336, float %595, float %1366)  ; FMad(a,b,c)
  %1368 = fadd fast float %1367, %601
  %1369 = fdiv fast float 1.000000e+00, %1352
  %1370 = fmul fast float %1369, %1340
  %1371 = fmul fast float %1369, %1344
  %1372 = fmul fast float %1369, %1348
  %1373 = fdiv fast float 1.000000e+00, %1368
  %1374 = fmul fast float %1373, %1356
  %1375 = fmul fast float %1373, %1360
  %1376 = fmul fast float %1373, %1364
  %1377 = fsub fast float %1370, %1374
  %1378 = fsub fast float %1371, %1375
  %1379 = fsub fast float %1372, %1376
  %1380 = fmul fast float %1377, %1377
  %1381 = fmul fast float %1378, %1378
  %1382 = fadd fast float %1380, %1381
  %1383 = fmul fast float %1379, %1379
  %1384 = fadd fast float %1382, %1383
  %1385 = call float @dx.op.unary.f32(i32 24, float %1384)  ; Sqrt(value)
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.CBufRet.f32 %1386, 2
  %1390 = extractvalue %dx.types.CBufRet.f32 %1386, 3
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1393 = extractvalue %dx.types.CBufRet.f32 %1391, 1
  %1394 = extractvalue %dx.types.CBufRet.f32 %1391, 2
  %1395 = extractvalue %dx.types.CBufRet.f32 %1391, 3
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.CBufRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.CBufRet.f32 %1396, 2
  %1400 = extractvalue %dx.types.CBufRet.f32 %1396, 3
  %1401 = fmul fast float %1387, %1370
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1371, float %1388, float %1401)  ; FMad(a,b,c)
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %1389, float %1402)  ; FMad(a,b,c)
  %1404 = call float @dx.op.tertiary.f32(i32 46, float %1352, float %1390, float %1403)  ; FMad(a,b,c)
  %1405 = fmul fast float %1392, %1370
  %1406 = call float @dx.op.tertiary.f32(i32 46, float %1371, float %1393, float %1405)  ; FMad(a,b,c)
  %1407 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %1394, float %1406)  ; FMad(a,b,c)
  %1408 = call float @dx.op.tertiary.f32(i32 46, float %1352, float %1395, float %1407)  ; FMad(a,b,c)
  %1409 = fmul fast float %1397, %1370
  %1410 = call float @dx.op.tertiary.f32(i32 46, float %1371, float %1398, float %1409)  ; FMad(a,b,c)
  %1411 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %1399, float %1410)  ; FMad(a,b,c)
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1352, float %1400, float %1411)  ; FMad(a,b,c)
  %1413 = fmul fast float %1387, %1374
  %1414 = call float @dx.op.tertiary.f32(i32 46, float %1375, float %1388, float %1413)  ; FMad(a,b,c)
  %1415 = call float @dx.op.tertiary.f32(i32 46, float %1376, float %1389, float %1414)  ; FMad(a,b,c)
  %1416 = call float @dx.op.tertiary.f32(i32 46, float %1368, float %1390, float %1415)  ; FMad(a,b,c)
  %1417 = fmul fast float %1392, %1374
  %1418 = call float @dx.op.tertiary.f32(i32 46, float %1375, float %1393, float %1417)  ; FMad(a,b,c)
  %1419 = call float @dx.op.tertiary.f32(i32 46, float %1376, float %1394, float %1418)  ; FMad(a,b,c)
  %1420 = call float @dx.op.tertiary.f32(i32 46, float %1368, float %1395, float %1419)  ; FMad(a,b,c)
  %1421 = fmul fast float %1397, %1374
  %1422 = call float @dx.op.tertiary.f32(i32 46, float %1375, float %1398, float %1421)  ; FMad(a,b,c)
  %1423 = call float @dx.op.tertiary.f32(i32 46, float %1376, float %1399, float %1422)  ; FMad(a,b,c)
  %1424 = call float @dx.op.tertiary.f32(i32 46, float %1368, float %1400, float %1423)  ; FMad(a,b,c)
  %1425 = fdiv fast float 1.000000e+00, %1412
  %1426 = fmul fast float %1425, %1404
  %1427 = fmul fast float %1425, %1408
  %1428 = fdiv fast float 1.000000e+00, %1424
  %1429 = fmul fast float %1428, %1416
  %1430 = fmul fast float %1428, %1420
  %1431 = fsub fast float %1426, %1429
  %1432 = fsub fast float %1427, %1430
  %1433 = fmul fast float %1431, 5.000000e-01
  %1434 = fmul fast float %1432, 5.000000e-01
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.CBufRet.f32 %1435, 1
  %1438 = fmul fast float %1433, %1436
  %1439 = fmul fast float %1434, %1437
  %1440 = fmul fast float %1438, %1438
  %1441 = fmul fast float %1439, %1439
  %1442 = fadd fast float %1440, %1441
  %1443 = call float @dx.op.unary.f32(i32 24, float %1442)  ; Sqrt(value)
  br label %1444

; <label>:1444                                    ; preds = %1333, %1324
  %1445 = phi float [ %1385, %1333 ], [ 0.000000e+00, %1324 ]
  %1446 = phi float [ %1443, %1333 ], [ 0.000000e+00, %1324 ]
  %1447 = fadd fast float %1325, -1.000000e+00
  %1448 = fmul fast float %1447, %519
  %1449 = fadd fast float %1448, 1.000000e+00
  %1450 = fmul fast float %1449, %531
  br label %1451

; <label>:1451                                    ; preds = %1444, %498
  %1452 = phi float [ %1445, %1444 ], [ 0.000000e+00, %498 ]
  %1453 = phi float [ %1446, %1444 ], [ 0.000000e+00, %498 ]
  %1454 = phi float [ %1450, %1444 ], [ %531, %498 ]
  %1455 = call float @dx.op.binary.f32(i32 36, float %1454, float %1454)  ; FMin(a,b)
  %1456 = call float @dx.op.binary.f32(i32 36, float %1454, float %1455)  ; FMin(a,b)
  %1457 = fcmp fast ogt float %1456, 0.000000e+00
  %1458 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %471, float %472, float %473)  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = fcmp fast ogt float %1458, 0.000000e+00
  %1460 = and i1 %1457, %1459
  br i1 %1460, label %1461, label %1742, !dx.controlflow.hints !62

; <label>:1461                                    ; preds = %1451
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 1
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1466 = select i1 %70, float %1463, float %1465
  %1467 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1468 = extractvalue %dx.types.CBufRet.f32 %1464, 2
  %1469 = select i1 %70, float %1467, float %1468
  %1470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.i32 %1470, 0
  %1472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.i32 %1472, 0
  %1474 = select i1 %70, i32 %1471, i32 %1473
  %1475 = fcmp fast ogt float %1452, 0.000000e+00
  br i1 %1475, label %1476, label %1480, !dx.controlflow.hints !63

; <label>:1476                                    ; preds = %1461
  %1477 = fptosi float %1453 to i32
  %1478 = call i32 @dx.op.binary.i32(i32 37, i32 %1477, i32 1)  ; IMax(a,b)
  %1479 = call i32 @dx.op.binary.i32(i32 38, i32 %1478, i32 16)  ; IMin(a,b)
  br label %1480

; <label>:1480                                    ; preds = %1476, %1461
  %1481 = phi float [ 0.000000e+00, %1476 ], [ 1.000000e+00, %1461 ]
  %1482 = phi float [ %1452, %1476 ], [ %1466, %1461 ]
  %1483 = phi i32 [ %1479, %1476 ], [ %1474, %1461 ]
  %1484 = fcmp fast olt float %1482, 5.000000e-01
  %1485 = icmp eq i32 %1483, 0
  %1486 = or i1 %1484, %1485
  br i1 %1486, label %1737, label %1487, !dx.controlflow.hints !64

; <label>:1487                                    ; preds = %1480
  %1488 = fsub fast float %431, %132
  %1489 = fsub fast float %432, %133
  %1490 = fsub fast float %433, %134
  %1491 = fmul fast float %1488, %1488
  %1492 = fmul fast float %1489, %1489
  %1493 = fadd fast float %1491, %1492
  %1494 = fmul fast float %1490, %1490
  %1495 = fadd fast float %1493, %1494
  %1496 = call float @dx.op.unary.f32(i32 24, float %1495)  ; Sqrt(value)
  %1497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.i32 %1497, 0
  %1499 = uitofp i32 %1498 to float
  %1500 = fmul fast float %1482, %428
  %1501 = fdiv fast float %1500, %1496
  %1502 = call float @dx.op.binary.f32(i32 36, float %1501, float 1.000000e+01)  ; FMin(a,b)
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.CBufRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.CBufRet.f32 %1503, 2
  %1507 = extractvalue %dx.types.CBufRet.f32 %1503, 3
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.CBufRet.f32 %1508, 2
  %1512 = extractvalue %dx.types.CBufRet.f32 %1508, 3
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1517 = extractvalue %dx.types.CBufRet.f32 %1513, 3
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.CBufRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1522 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1526 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1527 = extractvalue %dx.types.CBufRet.f32 %1523, 3
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.CBufRet.f32 %1528, 1
  %1531 = extractvalue %dx.types.CBufRet.f32 %1528, 2
  %1532 = extractvalue %dx.types.CBufRet.f32 %1528, 3
  %1533 = select i1 %70, float %1504, float %1519
  %1534 = select i1 %70, float %1509, float %1524
  %1535 = select i1 %70, float %1514, float %1529
  %1536 = select i1 %70, float %1505, float %1520
  %1537 = select i1 %70, float %1510, float %1525
  %1538 = select i1 %70, float %1515, float %1530
  %1539 = select i1 %70, float %1506, float %1521
  %1540 = select i1 %70, float %1511, float %1526
  %1541 = select i1 %70, float %1516, float %1531
  %1542 = select i1 %70, float %1507, float %1522
  %1543 = select i1 %70, float %1512, float %1527
  %1544 = select i1 %70, float %1517, float %1532
  %1545 = fmul fast float %251, 0x401061CAC0000000
  %1546 = fmul fast float %251, 0x4023E1D7E0000000
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.CBufRet.f32 %1547, 1
  %1550 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1551 = extractvalue %dx.types.CBufRet.f32 %1547, 3
  %1552 = fsub fast float -0.000000e+00, %471
  %1553 = fmul fast float %473, %1552
  %1554 = fmul fast float %471, %1552
  %1555 = fmul fast float %472, %472
  %1556 = fsub fast float %1554, %1555
  %1557 = fdiv fast float 1.000000e+00, %77
  %1558 = fmul fast float %1550, %66
  %1559 = fmul fast float %1551, %67
  %1560 = fmul fast float %1482, %471
  %1561 = fmul fast float %1482, %473
  %1562 = fadd fast float %1560, %132
  %1563 = fadd fast float %1561, %134
  %1564 = fadd fast float %1546, 5.000000e-01
  %1565 = call float @dx.op.unary.f32(i32 22, float %1564)  ; Frc(value)
  %1566 = bitcast float %1565 to i32
  %1567 = ashr i32 %1566, 1
  %1568 = add nsw i32 %1567, 532487669
  %1569 = bitcast i32 %1568 to float
  %1570 = fmul fast float %1569, %1502
  %1571 = fadd fast float %1545, 5.000000e-01
  %1572 = call float @dx.op.unary.f32(i32 22, float %1571)  ; Frc(value)
  %1573 = fmul fast float %1572, 0x401921FB60000000
  %1574 = call float @dx.op.unary.f32(i32 12, float %1573)  ; Cos(value)
  %1575 = fmul fast float %1574, %1574
  %1576 = fsub fast float 1.000000e+00, %1575
  %1577 = bitcast float %1576 to i32
  %1578 = ashr i32 %1577, 1
  %1579 = add nsw i32 %1578, 532487669
  %1580 = bitcast i32 %1579 to float
  %1581 = fmul fast float %1570, %1574
  %1582 = fmul fast float %1581, %472
  %1583 = fmul fast float %1581, %1552
  %1584 = fadd fast float %1562, %1582
  %1585 = fmul fast float %1580, %1570
  %1586 = fmul fast float %1553, %1585
  %1587 = fmul fast float %1585, %473
  %1588 = fmul fast float %1585, %1556
  %1589 = fsub fast float %1584, %1586
  %1590 = fadd fast float %1587, %1482
  %1591 = fmul fast float %1590, %472
  %1592 = fadd fast float %1583, %133
  %1593 = fadd fast float %1592, %1591
  %1594 = fadd fast float %1563, %1588
  %1595 = fmul fast float %1589, %1533
  %1596 = call float @dx.op.tertiary.f32(i32 46, float %1593, float %1536, float %1595)  ; FMad(a,b,c)
  %1597 = call float @dx.op.tertiary.f32(i32 46, float %1594, float %1539, float %1596)  ; FMad(a,b,c)
  %1598 = fadd fast float %1597, %1542
  %1599 = fmul fast float %1589, %1534
  %1600 = call float @dx.op.tertiary.f32(i32 46, float %1593, float %1537, float %1599)  ; FMad(a,b,c)
  %1601 = call float @dx.op.tertiary.f32(i32 46, float %1594, float %1540, float %1600)  ; FMad(a,b,c)
  %1602 = fadd fast float %1601, %1543
  %1603 = fmul fast float %1589, %1535
  %1604 = call float @dx.op.tertiary.f32(i32 46, float %1593, float %1538, float %1603)  ; FMad(a,b,c)
  %1605 = call float @dx.op.tertiary.f32(i32 46, float %1594, float %1541, float %1604)  ; FMad(a,b,c)
  %1606 = fadd fast float %1605, %1544
  %1607 = fdiv fast float 1.000000e+00, %1606
  %1608 = fmul fast float %1598, 5.000000e-01
  %1609 = fmul fast float %1602, -5.000000e-01
  %1610 = fmul fast float %1608, %1607
  %1611 = fmul fast float %1609, %1607
  %1612 = fsub fast float 5.000000e-01, %1558
  %1613 = fadd fast float %1612, %1610
  %1614 = fsub fast float 5.000000e-01, %1559
  %1615 = fadd fast float %1614, %1611
  %1616 = fsub fast float %1607, %1557
  %1617 = call float @dx.op.dot2.f32(i32 54, float %1613, float %1615, float %1613, float %1615)  ; Dot2(ax,ay,bx,by)
  %1618 = call float @dx.op.binary.f32(i32 35, float %1617, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1619 = call float @dx.op.dot2.f32(i32 54, float %1548, float %1549, float %1548, float %1549)  ; Dot2(ax,ay,bx,by)
  %1620 = fmul fast float %1619, %1618
  %1621 = call float @dx.op.unary.f32(i32 25, float %1620)  ; Rsqrt(value)
  %1622 = fmul fast float %1621, %1613
  %1623 = fmul fast float %1621, %1615
  %1624 = fadd fast float %1622, %1558
  %1625 = fadd fast float %1623, %1559
  %1626 = fmul fast float %1613, %1548
  %1627 = fmul fast float %1615, %1549
  %1628 = fmul fast float %1626, %1626
  %1629 = fmul fast float %1627, %1627
  %1630 = fadd fast float %1628, %1629
  %1631 = call float @dx.op.unary.f32(i32 24, float %1630)  ; Sqrt(value)
  %1632 = fdiv fast float 1.000000e+00, %1631
  %1633 = fmul fast float %1631, 3.906250e-03
  %1634 = fmul fast float %237, 0x3F70624DE0000000
  %1635 = fadd fast float %1634, 0x3F70624DE0000000
  %1636 = icmp sgt i32 %1483, -1
  br i1 %1636, label %1637, label %1702

; <label>:1637                                    ; preds = %1487
  br label %1638

; <label>:1638                                    ; preds = %1698, %1637
  %1639 = phi float [ %1673, %1698 ], [ %77, %1637 ]
  %1640 = phi float [ %1660, %1698 ], [ %77, %1637 ]
  %1641 = phi float [ %1640, %1698 ], [ %77, %1637 ]
  %1642 = phi i32 [ %1699, %1698 ], [ 0, %1637 ]
  %1643 = sitofp i32 %1642 to float
  %1644 = fadd fast float %251, 5.000000e-01
  %1645 = call float @dx.op.unary.f32(i32 22, float %1644)  ; Frc(value)
  %1646 = fadd fast float %1643, %1645
  %1647 = sitofp i32 %1483 to float
  %1648 = fdiv fast float %1646, %1647
  %1649 = fmul fast float %1648, %1648
  %1650 = fsub fast float %1649, %1648
  %1651 = fmul fast float %1650, %1481
  %1652 = fadd fast float %1651, %1648
  %1653 = call float @dx.op.binary.f32(i32 36, float %1652, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1654 = fmul fast float %1653, %1613
  %1655 = fmul fast float %1653, %1615
  %1656 = fmul fast float %1653, %1616
  %1657 = fadd fast float %1654, %1624
  %1658 = fadd fast float %1655, %1625
  %1659 = fadd fast float %1656, %1557
  %1660 = fdiv fast float 1.000000e+00, %1659
  %1661 = icmp ne i32 %1498, 0
  %1662 = fmul fast float %1633, %1653
  %1663 = call float @dx.op.binary.f32(i32 36, float %1662, float %1499)  ; FMin(a,b)
  %1664 = select i1 %1661, float %1663, float 0.000000e+00
  %1665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1657, float %1658, float undef, float undef, i32 0, i32 0, i32 undef, float %1664)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = fcmp fast ogt float %1666, -1.000000e+00
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 1
  %1670 = select i1 %1667, float %1669, float 1.000000e+00
  %1671 = fadd fast float %1666, 1.000000e+00
  %1672 = fmul fast float %1670, %1671
  %1673 = call float @dx.op.unary.f32(i32 6, float %1672)  ; FAbs(value)
  %1674 = fmul fast float %1673, %1635
  %1675 = fsub fast float %1660, %1673
  %1676 = fsub fast float %1675, %1674
  %1677 = fcmp fast ogt float %1676, 0.000000e+00
  %1678 = fcmp fast ogt float %1469, 0.000000e+00
  br i1 %1678, label %1679, label %1682, !dx.controlflow.hints !65

; <label>:1679                                    ; preds = %1638
  %1680 = fsub fast float %1660, %1641
  %1681 = call float @dx.op.binary.f32(i32 35, float %1680, float %1469)  ; FMax(a,b)
  br label %1682

; <label>:1682                                    ; preds = %1679, %1638
  %1683 = phi float [ %1681, %1679 ], [ %1482, %1638 ]
  %1684 = fcmp fast olt float %1676, %1683
  %1685 = fcmp uge float %1666, -1.000000e+00
  %1686 = or i1 %70, %1685
  %1687 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1688 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1689 = fcmp fast oeq float %1657, %1687
  %1690 = fcmp fast oeq float %1658, %1688
  %1691 = and i1 %1689, %1690
  %1692 = and i1 %1686, %1691
  %1693 = and i1 %1677, %1684
  %1694 = and i1 %1693, %1692
  %1695 = fcmp fast ogt float %1653, %1632
  %1696 = and i1 %1695, %1694
  %1697 = zext i1 %1696 to i32
  br i1 %1696, label %1701, label %1698, !dx.controlflow.hints !66

; <label>:1698                                    ; preds = %1682
  %1699 = add nuw nsw i32 %1642, 1
  %1700 = icmp slt i32 %1642, %1483
  br i1 %1700, label %1638, label %1701

; <label>:1701                                    ; preds = %1698, %1682
  br label %1702

; <label>:1702                                    ; preds = %1701, %1487
  %1703 = phi i32 [ 0, %1487 ], [ %1697, %1701 ]
  %1704 = phi float [ %77, %1487 ], [ %1673, %1701 ]
  %1705 = phi float [ %77, %1487 ], [ %1639, %1701 ]
  %1706 = phi float [ %77, %1487 ], [ %1660, %1701 ]
  %1707 = phi float [ %77, %1487 ], [ %1640, %1701 ]
  %1708 = fsub fast float %1707, %1705
  %1709 = fsub fast float %1706, %1704
  %1710 = fsub fast float %1708, %1709
  %1711 = fcmp fast une float %1710, 0.000000e+00
  %1712 = fmul fast float %1708, %1706
  %1713 = fmul fast float %1707, %1709
  %1714 = fsub fast float %1712, %1713
  %1715 = fdiv fast float 1.000000e+00, %1710
  %1716 = fmul fast float %1714, %1715
  %1717 = select i1 %1711, float %1716, float %1706
  %1718 = fdiv fast float 1.000000e+00, %1717
  %1719 = fsub fast float %1718, %1557
  %1720 = fdiv fast float %1719, %1616
  %1721 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1722 = fmul fast float %1721, %1613
  %1723 = fmul fast float %1721, %1615
  %1724 = fadd fast float %1722, %1624
  %1725 = fadd fast float %1723, %1625
  %1726 = fadd fast float %1724, -5.000000e-01
  %1727 = fadd fast float %1725, -5.000000e-01
  %1728 = call float @dx.op.unary.f32(i32 6, float %1726)  ; FAbs(value)
  %1729 = call float @dx.op.unary.f32(i32 6, float %1727)  ; FAbs(value)
  %1730 = fadd fast float %1728, -5.000000e-01
  %1731 = fadd fast float %1729, -5.000000e-01
  %1732 = call float @dx.op.binary.f32(i32 35, float %1730, float %1731)  ; FMax(a,b)
  %1733 = fcmp fast olt float %1732, 0.000000e+00
  %1734 = icmp ne i32 %1703, 0
  %1735 = and i1 %1734, %1733
  %1736 = select i1 %1735, float 0.000000e+00, float 1.000000e+00
  br label %1737

; <label>:1737                                    ; preds = %1702, %1480
  %1738 = phi float [ %1736, %1702 ], [ 1.000000e+00, %1480 ]
  %1739 = fmul fast float %1738, %1454
  %1740 = fmul fast float %1738, %1454
  %1741 = fmul fast float %1738, %1454
  br label %1742

; <label>:1742                                    ; preds = %1737, %1451
  %1743 = phi float [ %1739, %1737 ], [ %1454, %1451 ]
  %1744 = phi float [ %1740, %1737 ], [ %1454, %1451 ]
  %1745 = phi float [ %1741, %1737 ], [ %1454, %1451 ]
  %1746 = call float @dx.op.binary.f32(i32 36, float %1744, float %1745)  ; FMin(a,b)
  %1747 = call float @dx.op.binary.f32(i32 36, float %1743, float %1746)  ; FMin(a,b)
  %1748 = fcmp fast ogt float %1747, 0x3F10000000000000
  %1749 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1748)  ; WaveAnyTrue(cond)
  %1750 = icmp ugt i32 %274, 63
  br i1 %1750, label %1780, label %1751, !dx.controlflow.hints !67

; <label>:1751                                    ; preds = %1742
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1752 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1752, label %1753, label %1756, !dx.controlflow.hints !68

; <label>:1753                                    ; preds = %1751
  %1754 = zext i1 %1749 to i32
  %1755 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %275
  store i32 %1754, i32 addrspace(3)* %1755, align 4, !tbaa !34
  br label %1756

; <label>:1756                                    ; preds = %1753, %1751
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1757 = icmp eq i32 %274, 32
  br i1 %1757, label %1758, label %1764, !dx.controlflow.hints !69

; <label>:1758                                    ; preds = %1756
  %1759 = xor i32 %275, 1
  %1760 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1759
  %1761 = load i32, i32 addrspace(3)* %1760, align 4, !tbaa !34
  %1762 = icmp ne i32 %1761, 0
  %1763 = or i1 %1749, %1762
  br label %1780

; <label>:1764                                    ; preds = %1756
  %1765 = icmp eq i32 %274, 16
  br i1 %1765, label %1766, label %1780, !dx.controlflow.hints !70

; <label>:1766                                    ; preds = %1764
  %1767 = xor i32 %275, 1
  %1768 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1767
  %1769 = load i32, i32 addrspace(3)* %1768, align 4, !tbaa !34
  %1770 = xor i32 %275, 2
  %1771 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1770
  %1772 = load i32, i32 addrspace(3)* %1771, align 4, !tbaa !34
  %1773 = or i32 %1772, %1769
  %1774 = xor i32 %275, 3
  %1775 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1774
  %1776 = load i32, i32 addrspace(3)* %1775, align 4, !tbaa !34
  %1777 = or i32 %1773, %1776
  %1778 = icmp ne i32 %1777, 0
  %1779 = or i1 %1749, %1778
  br label %1780

; <label>:1780                                    ; preds = %1766, %1764, %1758, %1742
  %1781 = phi i1 [ %1763, %1758 ], [ %1779, %1766 ], [ %1749, %1742 ], [ false, %1764 ]
  %1782 = select i1 %1781, i32 %410, i32 0
  %1783 = or i32 %405, %1782
  %1784 = lshr i32 %256, 5
  %1785 = lshr i32 %257, 5
  %1786 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1784, i32 %1785, i32 %408, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %256, 1
  %1789 = lshr i32 %257, 1
  %1790 = and i32 %1788, 15
  %1791 = and i32 %1789, 15
  %1792 = and i32 %256, 1
  %1793 = shl i32 %257, 1
  %1794 = and i32 %1793, 2
  %1795 = or i32 %1794, %1792
  %1796 = lshr i32 %1787, 2
  %1797 = and i32 %1796, 8176
  %1798 = lshr i32 %1787, 11
  %1799 = and i32 %1798, 4080
  %1800 = or i32 %1797, %1790
  %1801 = or i32 %1799, %1791
  %1802 = lshr i32 %1787, 21
  %1803 = and i32 %1802, 1020
  %1804 = or i32 %1795, %1803
  %1805 = fmul fast float %1743, 2.550000e+02
  %1806 = fadd fast float %1805, %250
  %1807 = call float @dx.op.unary.f32(i32 27, float %1806)  ; Round_ni(value)
  %1808 = fmul fast float %1807, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1800, i32 %1801, i32 %1804, float %1808, float %1808, float %1808, float %1808, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1809 = icmp eq i32 %406, %410
  br i1 %1809, label %1810, label %404, !llvm.loop !71

; <label>:1810                                    ; preds = %1780
  br label %1811

; <label>:1811                                    ; preds = %1810, %400
  %1812 = phi i32 [ 0, %400 ], [ %1783, %1810 ]
  %1813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.i32 %1813, 0
  %1815 = call i32 @dx.op.tertiary.i32(i32 49, i32 %262, i32 %1814, i32 %341)  ; UMad(a,b,c)
  %1816 = shl i32 %1815, 2
  %1817 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1816, i32 undef, i32 undef, i32 %1812)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1818 = add i32 %341, 1
  %1819 = icmp ugt i32 %1818, %337
  br i1 %1819, label %1820, label %340

; <label>:1820                                    ; preds = %1811
  br label %1821

; <label>:1821                                    ; preds = %1820, %333, %57
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

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
!31 = !{i32 0, i64 524560, i32 4, !32}
!32 = !{i32 8, i32 8, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.unroll.disable"}

