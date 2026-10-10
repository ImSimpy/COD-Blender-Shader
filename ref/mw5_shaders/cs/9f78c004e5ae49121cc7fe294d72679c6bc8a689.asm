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
; shader hash: c6d8b4848608497a4d1ef03905f5c35a
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
  %81 = fmul fast float %66, 2.000000e+00
  %82 = fmul fast float %81, %79
  %83 = fmul fast float %67, 2.000000e+00
  %84 = fmul fast float %83, %80
  %85 = fsub fast float 1.000000e+00, %82
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
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = fmul fast float %182, 0x3FE3C6EF40000000
  %184 = frem fast float %66, 2.560000e+02
  %185 = frem fast float %67, 2.560000e+02
  %186 = fptoui float %184 to i32
  %187 = fptoui float %185 to i32
  %188 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %186, i32 %187, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fadd fast float %189, %183
  %191 = call float @dx.op.unary.f32(i32 22, float %190)  ; Frc(value)
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 0
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %1347, label %195, !dx.controlflow.hints !38

; <label>:195                                     ; preds = %57
  %196 = fptoui float %66 to i32
  %197 = fptoui float %67 to i32
  %198 = lshr i32 %196, 4
  %199 = lshr i32 %197, 4
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 0
  %202 = call i32 @dx.op.tertiary.i32(i32 49, i32 %199, i32 %201, i32 %198)  ; UMad(a,b,c)
  %203 = add nsw i32 %193, -1
  %204 = call i32 @dx.op.binary.i32(i32 37, i32 %203, i32 0)  ; IMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %206 = fptoui float %205 to i32
  %207 = lshr i32 %206, 5
  %208 = call i32 @dx.op.binary.i32(i32 40, i32 %207, i32 8191)  ; UMin(a,b)
  %209 = shl i32 %208, 2
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 16
  %213 = and i32 %211, 65535
  %214 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %215 = udiv i32 %23, %214
  %216 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %212, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %217 = icmp eq i32 %214, 64
  br i1 %217, label %244, label %218, !dx.controlflow.hints !39

; <label>:218                                     ; preds = %195
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %219 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %219, label %220, label %222, !dx.controlflow.hints !40

; <label>:220                                     ; preds = %218
  %221 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %215
  store i32 %216, i32 addrspace(3)* %221, align 4, !tbaa !34
  br label %222

; <label>:222                                     ; preds = %220, %218
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %223 = icmp eq i32 %214, 32
  br i1 %223, label %224, label %229, !dx.controlflow.hints !41

; <label>:224                                     ; preds = %222
  %225 = xor i32 %215, 1
  %226 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %225
  %227 = load i32, i32 addrspace(3)* %226, align 4, !tbaa !34
  %228 = call i32 @dx.op.binary.i32(i32 40, i32 %216, i32 %227)  ; UMin(a,b)
  br label %244

; <label>:229                                     ; preds = %222
  %230 = icmp eq i32 %214, 16
  br i1 %230, label %231, label %244, !dx.controlflow.hints !42

; <label>:231                                     ; preds = %229
  %232 = xor i32 %215, 3
  %233 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %232
  %234 = load i32, i32 addrspace(3)* %233, align 4, !tbaa !34
  %235 = xor i32 %215, 2
  %236 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %235
  %237 = load i32, i32 addrspace(3)* %236, align 4, !tbaa !34
  %238 = call i32 @dx.op.binary.i32(i32 40, i32 %237, i32 %234)  ; UMin(a,b)
  %239 = xor i32 %215, 1
  %240 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %239
  %241 = load i32, i32 addrspace(3)* %240, align 4, !tbaa !34
  %242 = call i32 @dx.op.binary.i32(i32 40, i32 %216, i32 %241)  ; UMin(a,b)
  %243 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %238)  ; UMin(a,b)
  br label %244

; <label>:244                                     ; preds = %231, %229, %224, %195
  %245 = phi i32 [ %228, %224 ], [ %243, %231 ], [ %216, %195 ], [ 0, %229 ]
  %246 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %213, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %217, label %273, label %247, !dx.controlflow.hints !43

; <label>:247                                     ; preds = %244
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %248 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %248, label %249, label %251, !dx.controlflow.hints !44

; <label>:249                                     ; preds = %247
  %250 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %215
  store i32 %246, i32 addrspace(3)* %250, align 4, !tbaa !34
  br label %251

; <label>:251                                     ; preds = %249, %247
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %252 = icmp eq i32 %214, 32
  br i1 %252, label %253, label %258, !dx.controlflow.hints !45

; <label>:253                                     ; preds = %251
  %254 = xor i32 %215, 1
  %255 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %254
  %256 = load i32, i32 addrspace(3)* %255, align 4, !tbaa !34
  %257 = call i32 @dx.op.binary.i32(i32 39, i32 %246, i32 %256)  ; UMax(a,b)
  br label %273

; <label>:258                                     ; preds = %251
  %259 = icmp eq i32 %214, 16
  br i1 %259, label %260, label %273, !dx.controlflow.hints !46

; <label>:260                                     ; preds = %258
  %261 = xor i32 %215, 3
  %262 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %261
  %263 = load i32, i32 addrspace(3)* %262, align 4, !tbaa !34
  %264 = xor i32 %215, 2
  %265 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %264
  %266 = load i32, i32 addrspace(3)* %265, align 4, !tbaa !34
  %267 = call i32 @dx.op.binary.i32(i32 39, i32 %266, i32 %263)  ; UMax(a,b)
  %268 = xor i32 %215, 1
  %269 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %268
  %270 = load i32, i32 addrspace(3)* %269, align 4, !tbaa !34
  %271 = call i32 @dx.op.binary.i32(i32 39, i32 %246, i32 %270)  ; UMax(a,b)
  %272 = call i32 @dx.op.binary.i32(i32 39, i32 %271, i32 %267)  ; UMax(a,b)
  br label %273

; <label>:273                                     ; preds = %260, %258, %253, %244
  %274 = phi i32 [ %257, %253 ], [ %272, %260 ], [ %246, %244 ], [ 0, %258 ]
  %275 = lshr i32 %245, 5
  %276 = lshr i32 %274, 5
  %277 = call i32 @dx.op.binary.i32(i32 40, i32 %276, i32 %204)  ; UMin(a,b)
  %278 = icmp ugt i32 %275, %277
  br i1 %278, label %1347, label %279

; <label>:279                                     ; preds = %273
  br label %280

; <label>:280                                     ; preds = %1337, %279
  %281 = phi i32 [ %1344, %1337 ], [ %275, %279 ]
  %282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.i32 %282, 0
  %284 = call i32 @dx.op.tertiary.i32(i32 49, i32 %202, i32 %283, i32 %281)  ; UMad(a,b,c)
  %285 = shl i32 %284, 2
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %281, 5
  %289 = sub nsw i32 %212, %288
  %290 = call i32 @dx.op.binary.i32(i32 37, i32 %289, i32 0)  ; IMax(a,b)
  %291 = call i32 @dx.op.binary.i32(i32 38, i32 %290, i32 31)  ; IMin(a,b)
  %292 = sub nsw i32 1, %212
  %293 = add nsw i32 %292, %213
  %294 = call i32 @dx.op.binary.i32(i32 37, i32 %293, i32 0)  ; IMax(a,b)
  %295 = call i32 @dx.op.binary.i32(i32 38, i32 %294, i32 32)  ; IMin(a,b)
  %296 = and i32 %295, 31
  %297 = shl i32 -1, %296
  %298 = xor i32 %297, -1
  %299 = and i32 %291, 31
  %300 = shl i32 %298, %299
  %301 = icmp eq i32 %295, 32
  %302 = select i1 %301, i32 -1, i32 %300
  %303 = and i32 %302, %287
  %304 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %303, i8 1)  ; WaveActiveBit(value,op)
  br i1 %217, label %331, label %305, !dx.controlflow.hints !47

; <label>:305                                     ; preds = %280
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %306 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %306, label %307, label %309, !dx.controlflow.hints !48

; <label>:307                                     ; preds = %305
  %308 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %215
  store i32 %304, i32 addrspace(3)* %308, align 4, !tbaa !34
  br label %309

; <label>:309                                     ; preds = %307, %305
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %310 = icmp eq i32 %214, 32
  br i1 %310, label %311, label %316, !dx.controlflow.hints !49

; <label>:311                                     ; preds = %309
  %312 = xor i32 %215, 1
  %313 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %312
  %314 = load i32, i32 addrspace(3)* %313, align 4, !tbaa !34
  %315 = or i32 %314, %304
  br label %331

; <label>:316                                     ; preds = %309
  %317 = icmp eq i32 %214, 16
  br i1 %317, label %318, label %331, !dx.controlflow.hints !50

; <label>:318                                     ; preds = %316
  %319 = xor i32 %215, 1
  %320 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %319
  %321 = load i32, i32 addrspace(3)* %320, align 4, !tbaa !34
  %322 = or i32 %321, %304
  %323 = xor i32 %215, 2
  %324 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %323
  %325 = load i32, i32 addrspace(3)* %324, align 4, !tbaa !34
  %326 = or i32 %322, %325
  %327 = xor i32 %215, 3
  %328 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %327
  %329 = load i32, i32 addrspace(3)* %328, align 4, !tbaa !34
  %330 = or i32 %326, %329
  br label %331

; <label>:331                                     ; preds = %318, %316, %311, %280
  %332 = phi i32 [ %315, %311 ], [ %330, %318 ], [ %304, %280 ], [ 0, %316 ]
  br i1 %217, label %333, label %335, !dx.controlflow.hints !51

; <label>:333                                     ; preds = %331
  %334 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %332)  ; WaveReadLaneFirst(value)
  br label %340

; <label>:335                                     ; preds = %331
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %336 = icmp eq i32 %23, 0
  br i1 %336, label %337, label %338, !dx.controlflow.hints !52

; <label>:337                                     ; preds = %335
  store i32 %332, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %338

; <label>:338                                     ; preds = %337, %335
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %339 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %340

; <label>:340                                     ; preds = %338, %333
  %341 = phi i32 [ %334, %333 ], [ %339, %338 ]
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %1337, label %343

; <label>:343                                     ; preds = %340
  br label %344

; <label>:344                                     ; preds = %1306, %343
  %345 = phi i32 [ %1309, %1306 ], [ 0, %343 ]
  %346 = phi i32 [ %351, %1306 ], [ %341, %343 ]
  %347 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %346)  ; FirstbitLo(value)
  %348 = add i32 %347, %288
  %349 = and i32 %347, 31
  %350 = shl i32 1, %349
  %351 = xor i32 %350, %346
  %352 = mul i32 %348, 112
  %353 = add i32 %352, 16
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = add i32 %352, 28
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = add i32 %352, 32
  %362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = extractvalue %dx.types.ResRet.f32 %362, 1
  %365 = extractvalue %dx.types.ResRet.f32 %362, 2
  %366 = add i32 %352, 44
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = add i32 %352, 48
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = extractvalue %dx.types.ResRet.f32 %370, 3
  %375 = add i32 %352, 64
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = extractvalue %dx.types.ResRet.f32 %376, 3
  %381 = add i32 %352, 92
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = uitofp i32 %384 to float
  %386 = lshr i32 %383, 16
  %387 = uitofp i32 %386 to float
  %388 = and i32 %360, 65535
  %389 = and i32 %360, 50331648
  %390 = icmp eq i32 %389, 33554432
  %391 = call float @dx.op.dot3.f32(i32 55, float %363, float %364, float %365, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = fsub fast float %132, %371
  %393 = fsub fast float %133, %372
  %394 = fsub fast float %134, %373
  %395 = call float @dx.op.dot3.f32(i32 55, float %392, float %393, float %394, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %396 = fdiv fast float %395, %391
  %397 = call float @dx.op.binary.f32(i32 35, float %396, float -1.000000e+00)  ; FMax(a,b)
  %398 = call float @dx.op.binary.f32(i32 36, float %397, float 1.000000e+00)  ; FMin(a,b)
  %399 = fmul fast float %398, %363
  %400 = fmul fast float %398, %364
  %401 = fmul fast float %398, %365
  %402 = fadd fast float %399, %371
  %403 = fadd fast float %400, %372
  %404 = fadd fast float %401, %373
  %405 = fsub fast float %402, %132
  %406 = fsub fast float %403, %133
  %407 = fsub fast float %404, %134
  %408 = call float @dx.op.dot3.f32(i32 55, float %405, float %406, float %407, float %405, float %406, float %407)  ; Dot3(ax,ay,az,bx,by,bz)
  %409 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %410 = fdiv fast float 1.000000e+00, %409
  %411 = fmul fast float %405, %410
  %412 = fmul fast float %406, %410
  %413 = fmul fast float %407, %410
  br i1 %390, label %414, label %438, !dx.controlflow.hints !53

; <label>:414                                     ; preds = %344
  %415 = fmul fast float %379, %355
  %416 = fmul fast float %379, %356
  %417 = fmul fast float %379, %357
  %418 = fsub fast float %415, %132
  %419 = fadd fast float %418, %402
  %420 = fsub fast float %416, %133
  %421 = fadd fast float %420, %403
  %422 = fsub fast float %417, %134
  %423 = fadd fast float %422, %404
  %424 = call float @dx.op.dot3.f32(i32 55, float %419, float %421, float %423, float %419, float %421, float %423)  ; Dot3(ax,ay,az,bx,by,bz)
  %425 = call float @dx.op.unary.f32(i32 25, float %424)  ; Rsqrt(value)
  %426 = fmul fast float %425, %419
  %427 = fmul fast float %425, %421
  %428 = fmul fast float %425, %423
  %429 = fsub fast float %132, %402
  %430 = fsub fast float %133, %403
  %431 = fsub fast float %134, %404
  %432 = fsub fast float -0.000000e+00, %429
  %433 = fsub fast float -0.000000e+00, %430
  %434 = fsub fast float -0.000000e+00, %431
  %435 = call float @dx.op.dot3.f32(i32 55, float %432, float %433, float %434, float %355, float %356, float %357)  ; Dot3(ax,ay,az,bx,by,bz)
  %436 = fcmp fast ogt float %435, 0.000000e+00
  %437 = uitofp i1 %436 to float
  br label %438

; <label>:438                                     ; preds = %414, %344
  %439 = phi float [ %437, %414 ], [ 1.000000e+00, %344 ]
  %440 = phi float [ %426, %414 ], [ %411, %344 ]
  %441 = phi float [ %427, %414 ], [ %412, %344 ]
  %442 = phi float [ %428, %414 ], [ %413, %344 ]
  %443 = call float @dx.op.dot3.f32(i32 55, float %355, float %356, float %357, float %440, float %441, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %444 = fmul fast float %443, %443
  %445 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %446 = fsub fast float 1.000000e+00, %445
  %447 = fmul fast float %446, 5.000000e-01
  %448 = fcmp fast ogt float %443, 0.000000e+00
  %449 = fsub fast float 1.000000e+00, %447
  %450 = select i1 %448, float %447, float %449
  %451 = fmul fast float %450, %387
  %452 = fadd fast float %451, %385
  %453 = fmul fast float %452, 0x3EF0001000000000
  %454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %453, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = fmul fast float %443, %377
  %457 = fadd fast float %456, %378
  %458 = call float @dx.op.unary.f32(i32 7, float %457)  ; Saturate(value)
  %459 = select i1 %390, float 1.000000e+00, float %458
  %460 = select i1 %390, float %458, float 1.000000e+00
  %461 = fmul fast float %409, %374
  %462 = fsub fast float 1.000000e+00, %461
  %463 = fmul fast float %462, %380
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = fmul fast float %464, %460
  %466 = fmul fast float %465, 2.000000e+00
  %467 = fsub fast float 3.000000e+00, %466
  %468 = fmul fast float %455, %439
  %469 = fmul fast float %465, %465
  %470 = fmul fast float %469, %468
  %471 = fmul fast float %470, %467
  %472 = icmp ne i32 %388, 255
  %473 = call float @dx.op.binary.f32(i32 36, float %471, float %471)  ; FMin(a,b)
  %474 = call float @dx.op.binary.f32(i32 36, float %471, float %473)  ; FMin(a,b)
  %475 = fcmp fast ogt float %474, 0.000000e+00
  %476 = and i1 %472, %475
  br i1 %476, label %477, label %1270, !dx.controlflow.hints !54

; <label>:477                                     ; preds = %438
  %478 = mul nuw nsw i32 %388, 176
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = extractvalue %dx.types.ResRet.f32 %479, 3
  %484 = add nuw nsw i32 %478, 16
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = add nuw nsw i32 %478, 32
  %489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = extractvalue %dx.types.ResRet.f32 %489, 3
  %494 = add nuw nsw i32 %478, 48
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = add nuw nsw i32 %478, 64
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = add nuw nsw i32 %478, 80
  %507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  %512 = add nuw nsw i32 %478, 96
  %513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = extractvalue %dx.types.ResRet.f32 %513, 2
  %517 = extractvalue %dx.types.ResRet.f32 %513, 3
  %518 = add nuw nsw i32 %478, 112
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  %524 = add nuw nsw i32 %478, 128
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = extractvalue %dx.types.ResRet.f32 %525, 3
  %530 = add nuw nsw i32 %478, 144
  %531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = extractvalue %dx.types.ResRet.f32 %531, 3
  %536 = add nuw nsw i32 %478, 160
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = extractvalue %dx.types.ResRet.f32 %537, 2
  %541 = extractvalue %dx.types.ResRet.f32 %537, 3
  %542 = bitcast float %487 to i32
  %543 = bitcast float %493 to i32
  %544 = and i32 %543, 1
  %545 = icmp ne i32 %544, 0
  %546 = and i32 %543, 2
  %547 = fmul fast float %178, %492
  %548 = fmul fast float %179, %492
  %549 = fmul fast float %180, %492
  %550 = fadd fast float %547, %132
  %551 = fadd fast float %548, %133
  %552 = fadd fast float %549, %134
  %553 = fmul fast float %550, %496
  %554 = call float @dx.op.tertiary.f32(i32 46, float %551, float %502, float %553)  ; FMad(a,b,c)
  %555 = call float @dx.op.tertiary.f32(i32 46, float %552, float %508, float %554)  ; FMad(a,b,c)
  %556 = fadd fast float %555, %514
  %557 = fmul fast float %550, %497
  %558 = call float @dx.op.tertiary.f32(i32 46, float %551, float %503, float %557)  ; FMad(a,b,c)
  %559 = call float @dx.op.tertiary.f32(i32 46, float %552, float %509, float %558)  ; FMad(a,b,c)
  %560 = fadd fast float %559, %515
  %561 = fmul fast float %550, %498
  %562 = call float @dx.op.tertiary.f32(i32 46, float %551, float %504, float %561)  ; FMad(a,b,c)
  %563 = call float @dx.op.tertiary.f32(i32 46, float %552, float %510, float %562)  ; FMad(a,b,c)
  %564 = fadd fast float %563, %516
  %565 = fmul fast float %550, %499
  %566 = call float @dx.op.tertiary.f32(i32 46, float %551, float %505, float %565)  ; FMad(a,b,c)
  %567 = call float @dx.op.tertiary.f32(i32 46, float %552, float %511, float %566)  ; FMad(a,b,c)
  %568 = fadd fast float %567, %517
  %569 = fdiv fast float %556, %568
  %570 = fdiv fast float %560, %568
  %571 = fdiv fast float %564, %568
  %572 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %571)  ; FMax(a,b)
  %573 = fmul fast float %191, 0x401921FB60000000
  %574 = call float @dx.op.unary.f32(i32 13, float %573)  ; Sin(value)
  %575 = call float @dx.op.unary.f32(i32 12, float %573)  ; Cos(value)
  %576 = fsub fast float -0.000000e+00, %574
  %577 = icmp eq i32 %546, 0
  br i1 %577, label %578, label %649, !dx.controlflow.hints !55

; <label>:578                                     ; preds = %477
  %579 = fmul fast float %575, %491
  %580 = call float @dx.op.tertiary.f32(i32 46, float %574, float %491, float 0.000000e+00)  ; FMad(a,b,c)
  %581 = fmul fast float %491, %576
  %582 = call float @dx.op.tertiary.f32(i32 46, float %575, float %491, float 0.000000e+00)  ; FMad(a,b,c)
  br label %583

; <label>:583                                     ; preds = %583, %578
  %584 = phi float [ 0.000000e+00, %578 ], [ %616, %583 ]
  %585 = phi float [ 0.000000e+00, %578 ], [ %618, %583 ]
  %586 = phi i32 [ 0, %578 ], [ %619, %583 ]
  %587 = mul i32 %586, 2
  %588 = add i32 0, %587
  %589 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %588
  %590 = load float, float* %589, align 4
  %591 = mul i32 %586, 2
  %592 = add i32 1, %591
  %593 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %592
  %594 = load float, float* %593, align 4
  %595 = fmul fast float %579, %590
  %596 = call float @dx.op.tertiary.f32(i32 46, float %594, float %581, float %595)  ; FMad(a,b,c)
  %597 = fmul fast float %590, %580
  %598 = call float @dx.op.tertiary.f32(i32 46, float %594, float %582, float %597)  ; FMad(a,b,c)
  %599 = fadd fast float %596, %569
  %600 = fadd fast float %598, %570
  %601 = fmul fast float %599, %486
  %602 = fmul fast float %600, %486
  %603 = call float @dx.op.binary.f32(i32 35, float %601, float %482)  ; FMax(a,b)
  %604 = call float @dx.op.binary.f32(i32 35, float %602, float %482)  ; FMax(a,b)
  %605 = call float @dx.op.binary.f32(i32 36, float %603, float %483)  ; FMin(a,b)
  %606 = call float @dx.op.binary.f32(i32 36, float %604, float %483)  ; FMin(a,b)
  %607 = fadd fast float %605, %480
  %608 = fadd fast float %606, %481
  %609 = uitofp i32 %542 to float
  %610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %607, float %608, float %609, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = fsub fast float %611, %572
  %613 = fsub fast float %612, %490
  %614 = fcmp fast ogt float %613, 0.000000e+00
  %615 = select i1 %614, float 1.000000e+00, float 0.000000e+00
  %616 = fadd fast float %615, %584
  %617 = select i1 %614, float %613, float 0.000000e+00
  %618 = fadd fast float %617, %585
  %619 = add nuw nsw i32 %586, 1
  %620 = icmp eq i32 %619, 8
  br i1 %620, label %621, label %583

; <label>:621                                     ; preds = %583
  %622 = fdiv fast float 1.000000e+00, %616
  %623 = fmul fast float %622, %618
  %624 = fdiv fast float 1.000000e+00, %572
  %625 = fmul fast float %623, %624
  %626 = call float @dx.op.unary.f32(i32 7, float %625)  ; Saturate(value)
  %627 = call float @dx.op.binary.f32(i32 35, float %626, float 0.000000e+00)  ; FMax(a,b)
  %628 = fmul fast float %616, 1.250000e-01
  %629 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %630 = fmul fast float %629, 2.000000e+00
  %631 = fadd fast float %630, -1.000000e+00
  %632 = fcmp fast ogt float %631, 0.000000e+00
  %633 = fcmp fast olt float %631, 0.000000e+00
  %634 = zext i1 %632 to i32
  %635 = zext i1 %633 to i32
  %636 = sub nsw i32 %634, %635
  %637 = sitofp i32 %636 to float
  %638 = fmul fast float %637, %631
  %639 = fsub fast float 1.000000e+00, %638
  %640 = fmul fast float %639, %639
  %641 = fmul fast float %640, %639
  %642 = fsub fast float %639, %641
  %643 = fmul fast float %642, %627
  %644 = fsub fast float 1.000000e+00, %641
  %645 = fsub fast float %644, %643
  %646 = fmul fast float %637, 5.000000e-01
  %647 = fmul fast float %646, %645
  %648 = fsub fast float 5.000000e-01, %647
  br label %1264

; <label>:649                                     ; preds = %477
  %650 = fsub fast float 1.000000e+00, %572
  %651 = fmul fast float %650, 5.000000e-01
  %652 = fadd fast float %651, %572
  %653 = fsub fast float %550, %371
  %654 = fsub fast float %551, %372
  %655 = fsub fast float %552, %373
  %656 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %363, float %364, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = fdiv fast float %656, %391
  %658 = call float @dx.op.binary.f32(i32 35, float %657, float -1.000000e+00)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 36, float %658, float 1.000000e+00)  ; FMin(a,b)
  %660 = fmul fast float %659, %363
  %661 = fmul fast float %659, %364
  %662 = fmul fast float %659, %365
  %663 = fsub fast float %653, %660
  %664 = fsub fast float %654, %661
  %665 = fsub fast float %655, %662
  %666 = call float @dx.op.dot3.f32(i32 55, float %663, float %664, float %665, float %663, float %664, float %665)  ; Dot3(ax,ay,az,bx,by,bz)
  %667 = call float @dx.op.unary.f32(i32 25, float %666)  ; Rsqrt(value)
  %668 = fmul fast float %663, %667
  %669 = fmul fast float %664, %667
  %670 = fmul fast float %665, %667
  %671 = call float @dx.op.unary.f32(i32 25, float %391)  ; Rsqrt(value)
  %672 = fmul fast float %671, %363
  %673 = fmul fast float %671, %364
  %674 = fmul fast float %671, %365
  br i1 %545, label %675, label %679, !dx.controlflow.hints !56

; <label>:675                                     ; preds = %649
  %676 = fcmp fast olt float %669, 0x3FE6666660000000
  %677 = select i1 %676, float 1.000000e+00, float 0.000000e+00
  %678 = select i1 %676, float 0.000000e+00, float 1.000000e+00
  br label %679

; <label>:679                                     ; preds = %675, %649
  %680 = phi float [ 0.000000e+00, %675 ], [ %672, %649 ]
  %681 = phi float [ %677, %675 ], [ %673, %649 ]
  %682 = phi float [ %678, %675 ], [ %674, %649 ]
  %683 = fmul fast float %681, %670
  %684 = fmul fast float %682, %669
  %685 = fsub fast float %683, %684
  %686 = fmul fast float %682, %668
  %687 = fmul fast float %680, %670
  %688 = fsub fast float %686, %687
  %689 = fmul fast float %680, %669
  %690 = fmul fast float %681, %668
  %691 = fsub fast float %689, %690
  %692 = call float @dx.op.dot3.f32(i32 55, float %685, float %688, float %691, float %685, float %688, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.unary.f32(i32 25, float %692)  ; Rsqrt(value)
  %694 = fmul fast float %693, %368
  %695 = fmul fast float %694, %685
  %696 = fmul fast float %694, %688
  %697 = fmul fast float %691, %368
  %698 = fmul fast float %697, %693
  %699 = fmul fast float %569, %520
  %700 = call float @dx.op.tertiary.f32(i32 46, float %570, float %526, float %699)  ; FMad(a,b,c)
  %701 = call float @dx.op.tertiary.f32(i32 46, float %652, float %532, float %700)  ; FMad(a,b,c)
  %702 = fadd fast float %701, %538
  %703 = fmul fast float %569, %521
  %704 = call float @dx.op.tertiary.f32(i32 46, float %570, float %527, float %703)  ; FMad(a,b,c)
  %705 = call float @dx.op.tertiary.f32(i32 46, float %652, float %533, float %704)  ; FMad(a,b,c)
  %706 = fadd fast float %705, %539
  %707 = fmul fast float %569, %522
  %708 = call float @dx.op.tertiary.f32(i32 46, float %570, float %528, float %707)  ; FMad(a,b,c)
  %709 = call float @dx.op.tertiary.f32(i32 46, float %652, float %534, float %708)  ; FMad(a,b,c)
  %710 = fadd fast float %709, %540
  %711 = fmul fast float %569, %523
  %712 = call float @dx.op.tertiary.f32(i32 46, float %570, float %529, float %711)  ; FMad(a,b,c)
  %713 = call float @dx.op.tertiary.f32(i32 46, float %652, float %535, float %712)  ; FMad(a,b,c)
  %714 = fadd fast float %713, %541
  %715 = fdiv fast float 1.000000e+00, %714
  %716 = fmul fast float %715, %702
  %717 = fmul fast float %715, %706
  %718 = fmul fast float %715, %710
  %719 = fsub fast float -0.000000e+00, %668
  %720 = fsub fast float -0.000000e+00, %669
  %721 = fsub fast float -0.000000e+00, %670
  %722 = fsub fast float %371, %695
  %723 = fsub fast float %372, %696
  %724 = fsub fast float %373, %698
  %725 = fsub fast float %716, %722
  %726 = fsub fast float %717, %723
  %727 = fsub fast float %718, %724
  %728 = call float @dx.op.dot3.f32(i32 55, float %725, float %726, float %727, float %725, float %726, float %727)  ; Dot3(ax,ay,az,bx,by,bz)
  %729 = call float @dx.op.unary.f32(i32 25, float %728)  ; Rsqrt(value)
  %730 = fmul fast float %725, %729
  %731 = fmul fast float %726, %729
  %732 = fmul fast float %727, %729
  %733 = fsub fast float %550, %722
  %734 = fsub fast float %551, %723
  %735 = fsub fast float %552, %724
  %736 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %733, float %734, float %735)  ; Dot3(ax,ay,az,bx,by,bz)
  %737 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %730, float %731, float %732)  ; Dot3(ax,ay,az,bx,by,bz)
  %738 = fdiv fast float 1.000000e+00, %737
  %739 = fmul fast float %738, %736
  %740 = fmul fast float %739, %730
  %741 = fmul fast float %739, %731
  %742 = fmul fast float %739, %732
  %743 = fadd fast float %740, %722
  %744 = fadd fast float %741, %723
  %745 = fadd fast float %742, %724
  %746 = fadd fast float %695, %371
  %747 = fadd fast float %696, %372
  %748 = fadd fast float %698, %373
  %749 = fsub fast float %716, %746
  %750 = fsub fast float %717, %747
  %751 = fsub fast float %718, %748
  %752 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float %749, float %750, float %751)  ; Dot3(ax,ay,az,bx,by,bz)
  %753 = call float @dx.op.unary.f32(i32 25, float %752)  ; Rsqrt(value)
  %754 = fmul fast float %753, %749
  %755 = fmul fast float %753, %750
  %756 = fmul fast float %753, %751
  %757 = fsub fast float %550, %746
  %758 = fsub fast float %551, %747
  %759 = fsub fast float %552, %748
  %760 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %757, float %758, float %759)  ; Dot3(ax,ay,az,bx,by,bz)
  %761 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %754, float %755, float %756)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = fdiv fast float 1.000000e+00, %761
  %763 = fmul fast float %762, %760
  %764 = fmul fast float %763, %754
  %765 = fmul fast float %763, %755
  %766 = fmul fast float %763, %756
  %767 = fadd fast float %764, %746
  %768 = fadd fast float %765, %747
  %769 = fadd fast float %766, %748
  %770 = fmul fast float %743, %496
  %771 = call float @dx.op.tertiary.f32(i32 46, float %744, float %502, float %770)  ; FMad(a,b,c)
  %772 = call float @dx.op.tertiary.f32(i32 46, float %745, float %508, float %771)  ; FMad(a,b,c)
  %773 = fadd fast float %772, %514
  %774 = fmul fast float %743, %497
  %775 = call float @dx.op.tertiary.f32(i32 46, float %744, float %503, float %774)  ; FMad(a,b,c)
  %776 = call float @dx.op.tertiary.f32(i32 46, float %745, float %509, float %775)  ; FMad(a,b,c)
  %777 = fadd fast float %776, %515
  %778 = fmul fast float %743, %499
  %779 = call float @dx.op.tertiary.f32(i32 46, float %744, float %505, float %778)  ; FMad(a,b,c)
  %780 = call float @dx.op.tertiary.f32(i32 46, float %745, float %511, float %779)  ; FMad(a,b,c)
  %781 = fadd fast float %780, %517
  %782 = fmul fast float %767, %496
  %783 = call float @dx.op.tertiary.f32(i32 46, float %768, float %502, float %782)  ; FMad(a,b,c)
  %784 = call float @dx.op.tertiary.f32(i32 46, float %769, float %508, float %783)  ; FMad(a,b,c)
  %785 = fadd fast float %784, %514
  %786 = fmul fast float %767, %497
  %787 = call float @dx.op.tertiary.f32(i32 46, float %768, float %503, float %786)  ; FMad(a,b,c)
  %788 = call float @dx.op.tertiary.f32(i32 46, float %769, float %509, float %787)  ; FMad(a,b,c)
  %789 = fadd fast float %788, %515
  %790 = fmul fast float %767, %499
  %791 = call float @dx.op.tertiary.f32(i32 46, float %768, float %505, float %790)  ; FMad(a,b,c)
  %792 = call float @dx.op.tertiary.f32(i32 46, float %769, float %511, float %791)  ; FMad(a,b,c)
  %793 = fadd fast float %792, %517
  %794 = fdiv fast float 1.000000e+00, %781
  %795 = fmul fast float %794, %773
  %796 = fmul fast float %794, %777
  %797 = fdiv fast float 1.000000e+00, %793
  %798 = fmul fast float %797, %785
  %799 = fmul fast float %797, %789
  %800 = fsub fast float %798, %795
  %801 = fsub fast float %799, %796
  %802 = call float @dx.op.dot2.f32(i32 54, float %800, float %801, float %800, float %801)  ; Dot2(ax,ay,bx,by)
  %803 = call float @dx.op.unary.f32(i32 25, float %802)  ; Rsqrt(value)
  %804 = fmul fast float %800, %803
  %805 = fmul fast float %801, %803
  %806 = fmul fast float %800, %800
  %807 = fmul fast float %801, %801
  %808 = fadd fast float %806, %807
  %809 = call float @dx.op.unary.f32(i32 24, float %808)  ; Sqrt(value)
  %810 = fmul fast float %809, 5.000000e-01
  br i1 %545, label %903, label %811, !dx.controlflow.hints !57

; <label>:811                                     ; preds = %679
  %812 = fsub fast float %371, %363
  %813 = fsub fast float %372, %364
  %814 = fsub fast float %373, %365
  %815 = fsub fast float %716, %812
  %816 = fsub fast float %717, %813
  %817 = fsub fast float %718, %814
  %818 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float %815, float %816, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.unary.f32(i32 25, float %818)  ; Rsqrt(value)
  %820 = fmul fast float %819, %815
  %821 = fmul fast float %819, %816
  %822 = fmul fast float %819, %817
  %823 = fsub fast float %550, %812
  %824 = fsub fast float %551, %813
  %825 = fsub fast float %552, %814
  %826 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %823, float %824, float %825)  ; Dot3(ax,ay,az,bx,by,bz)
  %827 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %820, float %821, float %822)  ; Dot3(ax,ay,az,bx,by,bz)
  %828 = fdiv fast float 1.000000e+00, %827
  %829 = fmul fast float %828, %826
  %830 = fmul fast float %829, %820
  %831 = fmul fast float %829, %821
  %832 = fmul fast float %829, %822
  %833 = fadd fast float %830, %812
  %834 = fadd fast float %831, %813
  %835 = fadd fast float %832, %814
  %836 = fadd fast float %371, %363
  %837 = fadd fast float %372, %364
  %838 = fadd fast float %373, %365
  %839 = fsub fast float %716, %836
  %840 = fsub fast float %717, %837
  %841 = fsub fast float %718, %838
  %842 = call float @dx.op.dot3.f32(i32 55, float %839, float %840, float %841, float %839, float %840, float %841)  ; Dot3(ax,ay,az,bx,by,bz)
  %843 = call float @dx.op.unary.f32(i32 25, float %842)  ; Rsqrt(value)
  %844 = fmul fast float %843, %839
  %845 = fmul fast float %843, %840
  %846 = fmul fast float %843, %841
  %847 = fsub fast float %550, %836
  %848 = fsub fast float %551, %837
  %849 = fsub fast float %552, %838
  %850 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %847, float %848, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %844, float %845, float %846)  ; Dot3(ax,ay,az,bx,by,bz)
  %852 = fdiv fast float 1.000000e+00, %851
  %853 = fmul fast float %852, %850
  %854 = fmul fast float %853, %844
  %855 = fmul fast float %853, %845
  %856 = fmul fast float %853, %846
  %857 = fadd fast float %854, %836
  %858 = fadd fast float %855, %837
  %859 = fadd fast float %856, %838
  %860 = fmul fast float %833, %496
  %861 = call float @dx.op.tertiary.f32(i32 46, float %834, float %502, float %860)  ; FMad(a,b,c)
  %862 = call float @dx.op.tertiary.f32(i32 46, float %835, float %508, float %861)  ; FMad(a,b,c)
  %863 = fadd fast float %862, %514
  %864 = fmul fast float %833, %497
  %865 = call float @dx.op.tertiary.f32(i32 46, float %834, float %503, float %864)  ; FMad(a,b,c)
  %866 = call float @dx.op.tertiary.f32(i32 46, float %835, float %509, float %865)  ; FMad(a,b,c)
  %867 = fadd fast float %866, %515
  %868 = fmul fast float %833, %499
  %869 = call float @dx.op.tertiary.f32(i32 46, float %834, float %505, float %868)  ; FMad(a,b,c)
  %870 = call float @dx.op.tertiary.f32(i32 46, float %835, float %511, float %869)  ; FMad(a,b,c)
  %871 = fadd fast float %870, %517
  %872 = fmul fast float %857, %496
  %873 = call float @dx.op.tertiary.f32(i32 46, float %858, float %502, float %872)  ; FMad(a,b,c)
  %874 = call float @dx.op.tertiary.f32(i32 46, float %859, float %508, float %873)  ; FMad(a,b,c)
  %875 = fadd fast float %874, %514
  %876 = fmul fast float %857, %497
  %877 = call float @dx.op.tertiary.f32(i32 46, float %858, float %503, float %876)  ; FMad(a,b,c)
  %878 = call float @dx.op.tertiary.f32(i32 46, float %859, float %509, float %877)  ; FMad(a,b,c)
  %879 = fadd fast float %878, %515
  %880 = fmul fast float %857, %499
  %881 = call float @dx.op.tertiary.f32(i32 46, float %858, float %505, float %880)  ; FMad(a,b,c)
  %882 = call float @dx.op.tertiary.f32(i32 46, float %859, float %511, float %881)  ; FMad(a,b,c)
  %883 = fadd fast float %882, %517
  %884 = fdiv fast float 1.000000e+00, %871
  %885 = fmul fast float %884, %863
  %886 = fmul fast float %884, %867
  %887 = fdiv fast float 1.000000e+00, %883
  %888 = fmul fast float %887, %875
  %889 = fmul fast float %887, %879
  %890 = fsub fast float %888, %885
  %891 = fsub fast float %889, %886
  %892 = call float @dx.op.dot2.f32(i32 54, float %890, float %891, float %890, float %891)  ; Dot2(ax,ay,bx,by)
  %893 = call float @dx.op.unary.f32(i32 25, float %892)  ; Rsqrt(value)
  %894 = fmul fast float %890, %893
  %895 = fmul fast float %891, %893
  %896 = fmul fast float %890, %890
  %897 = fmul fast float %891, %891
  %898 = fadd fast float %896, %897
  %899 = call float @dx.op.unary.f32(i32 24, float %898)  ; Sqrt(value)
  %900 = fmul fast float %899, 5.000000e-01
  %901 = fcmp fast olt float %900, %810
  br i1 %901, label %902, label %903, !dx.controlflow.hints !58

; <label>:902                                     ; preds = %811
  br label %903

; <label>:903                                     ; preds = %902, %811, %679
  %904 = phi float [ %810, %679 ], [ %900, %902 ], [ %810, %811 ]
  %905 = phi float [ %810, %679 ], [ %810, %902 ], [ %900, %811 ]
  %906 = phi float [ %804, %679 ], [ %804, %902 ], [ %894, %811 ]
  %907 = phi float [ %805, %679 ], [ %805, %902 ], [ %895, %811 ]
  %908 = fmul fast float %904, %491
  %909 = fdiv fast float %908, %905
  %910 = fsub fast float %491, %909
  %911 = fmul fast float %906, %906
  %912 = fmul fast float %911, %910
  %913 = fadd fast float %912, %909
  %914 = fmul fast float %907, %906
  %915 = fmul fast float %914, %910
  %916 = fmul fast float %907, %907
  %917 = fmul fast float %916, %910
  %918 = fadd fast float %917, %909
  %919 = fmul fast float %913, %575
  %920 = call float @dx.op.tertiary.f32(i32 46, float %574, float %915, float %919)  ; FMad(a,b,c)
  %921 = fmul fast float %915, %575
  %922 = call float @dx.op.tertiary.f32(i32 46, float %574, float %918, float %921)  ; FMad(a,b,c)
  %923 = fmul fast float %913, %576
  %924 = call float @dx.op.tertiary.f32(i32 46, float %575, float %915, float %923)  ; FMad(a,b,c)
  %925 = fmul fast float %915, %576
  %926 = call float @dx.op.tertiary.f32(i32 46, float %575, float %918, float %925)  ; FMad(a,b,c)
  br label %927

; <label>:927                                     ; preds = %965, %903
  %928 = phi float [ 0.000000e+00, %903 ], [ %966, %965 ]
  %929 = phi float [ 0.000000e+00, %903 ], [ %967, %965 ]
  %930 = phi float [ 0.000000e+00, %903 ], [ %968, %965 ]
  %931 = phi float [ 0.000000e+00, %903 ], [ %969, %965 ]
  %932 = phi i32 [ 0, %903 ], [ %970, %965 ]
  %933 = mul i32 %932, 2
  %934 = add i32 0, %933
  %935 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %934
  %936 = load float, float* %935, align 4
  %937 = mul i32 %932, 2
  %938 = add i32 1, %937
  %939 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %938
  %940 = load float, float* %939, align 4
  %941 = fmul fast float %936, %920
  %942 = call float @dx.op.tertiary.f32(i32 46, float %940, float %924, float %941)  ; FMad(a,b,c)
  %943 = fmul fast float %936, %922
  %944 = call float @dx.op.tertiary.f32(i32 46, float %940, float %926, float %943)  ; FMad(a,b,c)
  %945 = fadd fast float %942, %569
  %946 = fadd fast float %944, %570
  %947 = fmul fast float %945, %486
  %948 = fmul fast float %946, %486
  %949 = call float @dx.op.binary.f32(i32 35, float %947, float %482)  ; FMax(a,b)
  %950 = call float @dx.op.binary.f32(i32 35, float %948, float %482)  ; FMax(a,b)
  %951 = call float @dx.op.binary.f32(i32 36, float %949, float %483)  ; FMin(a,b)
  %952 = call float @dx.op.binary.f32(i32 36, float %950, float %483)  ; FMin(a,b)
  %953 = fadd fast float %951, %480
  %954 = fadd fast float %952, %481
  %955 = uitofp i32 %542 to float
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %953, float %954, float %955, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = fadd fast float %572, %490
  %959 = fcmp fast olt float %958, %957
  br i1 %959, label %960, label %965, !dx.controlflow.hints !59

; <label>:960                                     ; preds = %927
  %961 = fadd fast float %957, %930
  %962 = fadd fast float %942, %928
  %963 = fadd fast float %944, %929
  %964 = fadd fast float %931, 1.000000e+00
  br label %965

; <label>:965                                     ; preds = %960, %927
  %966 = phi float [ %962, %960 ], [ %928, %927 ]
  %967 = phi float [ %963, %960 ], [ %929, %927 ]
  %968 = phi float [ %961, %960 ], [ %930, %927 ]
  %969 = phi float [ %964, %960 ], [ %931, %927 ]
  %970 = add nuw nsw i32 %932, 1
  %971 = icmp eq i32 %970, 8
  br i1 %971, label %972, label %927

; <label>:972                                     ; preds = %965
  %973 = fdiv fast float 1.000000e+00, %969
  %974 = fcmp fast oeq float %969, 0.000000e+00
  %975 = fmul fast float %973, %968
  %976 = select i1 %974, float -1.000000e+00, float %975
  %977 = fcmp fast olt float %976, 0.000000e+00
  br i1 %977, label %1264, label %978, !dx.controlflow.hints !60

; <label>:978                                     ; preds = %972
  %979 = fmul fast float %973, %967
  %980 = select i1 %974, float 0.000000e+00, float %979
  %981 = fmul fast float %973, %966
  %982 = select i1 %974, float 0.000000e+00, float %981
  %983 = fadd fast float %982, %569
  %984 = fadd fast float %980, %570
  br i1 %545, label %985, label %989, !dx.controlflow.hints !56

; <label>:985                                     ; preds = %978
  %986 = fcmp fast olt float %669, 0x3FE6666660000000
  %987 = select i1 %986, float 1.000000e+00, float 0.000000e+00
  %988 = select i1 %986, float 0.000000e+00, float 1.000000e+00
  br label %989

; <label>:989                                     ; preds = %985, %978
  %990 = phi float [ 0.000000e+00, %985 ], [ %672, %978 ]
  %991 = phi float [ %987, %985 ], [ %673, %978 ]
  %992 = phi float [ %988, %985 ], [ %674, %978 ]
  %993 = fmul fast float %991, %670
  %994 = fmul fast float %992, %669
  %995 = fsub fast float %993, %994
  %996 = fmul fast float %992, %668
  %997 = fmul fast float %990, %670
  %998 = fsub fast float %996, %997
  %999 = fmul fast float %990, %669
  %1000 = fmul fast float %991, %668
  %1001 = fsub fast float %999, %1000
  %1002 = call float @dx.op.dot3.f32(i32 55, float %995, float %998, float %1001, float %995, float %998, float %1001)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.unary.f32(i32 25, float %1002)  ; Rsqrt(value)
  %1004 = fmul fast float %1003, %368
  %1005 = fmul fast float %1004, %995
  %1006 = fmul fast float %1004, %998
  %1007 = fmul fast float %1001, %368
  %1008 = fmul fast float %1007, %1003
  %1009 = fmul fast float %983, %520
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %984, float %526, float %1009)  ; FMad(a,b,c)
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %976, float %532, float %1010)  ; FMad(a,b,c)
  %1012 = fadd fast float %1011, %538
  %1013 = fmul fast float %983, %521
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %984, float %527, float %1013)  ; FMad(a,b,c)
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %976, float %533, float %1014)  ; FMad(a,b,c)
  %1016 = fadd fast float %1015, %539
  %1017 = fmul fast float %983, %522
  %1018 = call float @dx.op.tertiary.f32(i32 46, float %984, float %528, float %1017)  ; FMad(a,b,c)
  %1019 = call float @dx.op.tertiary.f32(i32 46, float %976, float %534, float %1018)  ; FMad(a,b,c)
  %1020 = fadd fast float %1019, %540
  %1021 = fmul fast float %983, %523
  %1022 = call float @dx.op.tertiary.f32(i32 46, float %984, float %529, float %1021)  ; FMad(a,b,c)
  %1023 = call float @dx.op.tertiary.f32(i32 46, float %976, float %535, float %1022)  ; FMad(a,b,c)
  %1024 = fadd fast float %1023, %541
  %1025 = fdiv fast float 1.000000e+00, %1024
  %1026 = fmul fast float %1025, %1012
  %1027 = fmul fast float %1025, %1016
  %1028 = fmul fast float %1025, %1020
  %1029 = fsub fast float %371, %1005
  %1030 = fsub fast float %372, %1006
  %1031 = fsub fast float %373, %1008
  %1032 = fsub fast float %1026, %1029
  %1033 = fsub fast float %1027, %1030
  %1034 = fsub fast float %1028, %1031
  %1035 = call float @dx.op.dot3.f32(i32 55, float %1032, float %1033, float %1034, float %1032, float %1033, float %1034)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = call float @dx.op.unary.f32(i32 25, float %1035)  ; Rsqrt(value)
  %1037 = fmul fast float %1032, %1036
  %1038 = fmul fast float %1033, %1036
  %1039 = fmul fast float %1034, %1036
  %1040 = fsub fast float %550, %1029
  %1041 = fsub fast float %551, %1030
  %1042 = fsub fast float %552, %1031
  %1043 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %1040, float %1041, float %1042)  ; Dot3(ax,ay,az,bx,by,bz)
  %1044 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %1037, float %1038, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = fdiv fast float 1.000000e+00, %1044
  %1046 = fmul fast float %1045, %1043
  %1047 = fmul fast float %1046, %1037
  %1048 = fmul fast float %1046, %1038
  %1049 = fmul fast float %1046, %1039
  %1050 = fadd fast float %1047, %1029
  %1051 = fadd fast float %1048, %1030
  %1052 = fadd fast float %1049, %1031
  %1053 = fadd fast float %1005, %371
  %1054 = fadd fast float %1006, %372
  %1055 = fadd fast float %1008, %373
  %1056 = fsub fast float %1026, %1053
  %1057 = fsub fast float %1027, %1054
  %1058 = fsub fast float %1028, %1055
  %1059 = call float @dx.op.dot3.f32(i32 55, float %1056, float %1057, float %1058, float %1056, float %1057, float %1058)  ; Dot3(ax,ay,az,bx,by,bz)
  %1060 = call float @dx.op.unary.f32(i32 25, float %1059)  ; Rsqrt(value)
  %1061 = fmul fast float %1060, %1056
  %1062 = fmul fast float %1060, %1057
  %1063 = fmul fast float %1060, %1058
  %1064 = fsub fast float %550, %1053
  %1065 = fsub fast float %551, %1054
  %1066 = fsub fast float %552, %1055
  %1067 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %1064, float %1065, float %1066)  ; Dot3(ax,ay,az,bx,by,bz)
  %1068 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %1061, float %1062, float %1063)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = fdiv fast float 1.000000e+00, %1068
  %1070 = fmul fast float %1069, %1067
  %1071 = fmul fast float %1070, %1061
  %1072 = fmul fast float %1070, %1062
  %1073 = fmul fast float %1070, %1063
  %1074 = fadd fast float %1071, %1053
  %1075 = fadd fast float %1072, %1054
  %1076 = fadd fast float %1073, %1055
  %1077 = fmul fast float %1050, %496
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1051, float %502, float %1077)  ; FMad(a,b,c)
  %1079 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %508, float %1078)  ; FMad(a,b,c)
  %1080 = fadd fast float %1079, %514
  %1081 = fmul fast float %1050, %497
  %1082 = call float @dx.op.tertiary.f32(i32 46, float %1051, float %503, float %1081)  ; FMad(a,b,c)
  %1083 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %509, float %1082)  ; FMad(a,b,c)
  %1084 = fadd fast float %1083, %515
  %1085 = fmul fast float %1050, %499
  %1086 = call float @dx.op.tertiary.f32(i32 46, float %1051, float %505, float %1085)  ; FMad(a,b,c)
  %1087 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %511, float %1086)  ; FMad(a,b,c)
  %1088 = fadd fast float %1087, %517
  %1089 = fmul fast float %1074, %496
  %1090 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %502, float %1089)  ; FMad(a,b,c)
  %1091 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %508, float %1090)  ; FMad(a,b,c)
  %1092 = fadd fast float %1091, %514
  %1093 = fmul fast float %1074, %497
  %1094 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %503, float %1093)  ; FMad(a,b,c)
  %1095 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %509, float %1094)  ; FMad(a,b,c)
  %1096 = fadd fast float %1095, %515
  %1097 = fmul fast float %1074, %499
  %1098 = call float @dx.op.tertiary.f32(i32 46, float %1075, float %505, float %1097)  ; FMad(a,b,c)
  %1099 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %511, float %1098)  ; FMad(a,b,c)
  %1100 = fadd fast float %1099, %517
  %1101 = fdiv fast float 1.000000e+00, %1088
  %1102 = fmul fast float %1101, %1080
  %1103 = fmul fast float %1101, %1084
  %1104 = fdiv fast float 1.000000e+00, %1100
  %1105 = fmul fast float %1104, %1092
  %1106 = fmul fast float %1104, %1096
  %1107 = fsub fast float %1105, %1102
  %1108 = fsub fast float %1106, %1103
  %1109 = call float @dx.op.dot2.f32(i32 54, float %1107, float %1108, float %1107, float %1108)  ; Dot2(ax,ay,bx,by)
  %1110 = call float @dx.op.unary.f32(i32 25, float %1109)  ; Rsqrt(value)
  %1111 = fmul fast float %1107, %1110
  %1112 = fmul fast float %1108, %1110
  %1113 = fmul fast float %1107, %1107
  %1114 = fmul fast float %1108, %1108
  %1115 = fadd fast float %1113, %1114
  %1116 = call float @dx.op.unary.f32(i32 24, float %1115)  ; Sqrt(value)
  %1117 = fmul fast float %1116, 5.000000e-01
  br i1 %545, label %1210, label %1118, !dx.controlflow.hints !57

; <label>:1118                                    ; preds = %989
  %1119 = fsub fast float %371, %363
  %1120 = fsub fast float %372, %364
  %1121 = fsub fast float %373, %365
  %1122 = fsub fast float %1026, %1119
  %1123 = fsub fast float %1027, %1120
  %1124 = fsub fast float %1028, %1121
  %1125 = call float @dx.op.dot3.f32(i32 55, float %1122, float %1123, float %1124, float %1122, float %1123, float %1124)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = call float @dx.op.unary.f32(i32 25, float %1125)  ; Rsqrt(value)
  %1127 = fmul fast float %1126, %1122
  %1128 = fmul fast float %1126, %1123
  %1129 = fmul fast float %1126, %1124
  %1130 = fsub fast float %550, %1119
  %1131 = fsub fast float %551, %1120
  %1132 = fsub fast float %552, %1121
  %1133 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %1130, float %1131, float %1132)  ; Dot3(ax,ay,az,bx,by,bz)
  %1134 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %1127, float %1128, float %1129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1135 = fdiv fast float 1.000000e+00, %1134
  %1136 = fmul fast float %1135, %1133
  %1137 = fmul fast float %1136, %1127
  %1138 = fmul fast float %1136, %1128
  %1139 = fmul fast float %1136, %1129
  %1140 = fadd fast float %1137, %1119
  %1141 = fadd fast float %1138, %1120
  %1142 = fadd fast float %1139, %1121
  %1143 = fadd fast float %371, %363
  %1144 = fadd fast float %372, %364
  %1145 = fadd fast float %373, %365
  %1146 = fsub fast float %1026, %1143
  %1147 = fsub fast float %1027, %1144
  %1148 = fsub fast float %1028, %1145
  %1149 = call float @dx.op.dot3.f32(i32 55, float %1146, float %1147, float %1148, float %1146, float %1147, float %1148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = call float @dx.op.unary.f32(i32 25, float %1149)  ; Rsqrt(value)
  %1151 = fmul fast float %1150, %1146
  %1152 = fmul fast float %1150, %1147
  %1153 = fmul fast float %1150, %1148
  %1154 = fsub fast float %550, %1143
  %1155 = fsub fast float %551, %1144
  %1156 = fsub fast float %552, %1145
  %1157 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %1154, float %1155, float %1156)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = call float @dx.op.dot3.f32(i32 55, float %719, float %720, float %721, float %1151, float %1152, float %1153)  ; Dot3(ax,ay,az,bx,by,bz)
  %1159 = fdiv fast float 1.000000e+00, %1158
  %1160 = fmul fast float %1159, %1157
  %1161 = fmul fast float %1160, %1151
  %1162 = fmul fast float %1160, %1152
  %1163 = fmul fast float %1160, %1153
  %1164 = fadd fast float %1161, %1143
  %1165 = fadd fast float %1162, %1144
  %1166 = fadd fast float %1163, %1145
  %1167 = fmul fast float %1140, %496
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1141, float %502, float %1167)  ; FMad(a,b,c)
  %1169 = call float @dx.op.tertiary.f32(i32 46, float %1142, float %508, float %1168)  ; FMad(a,b,c)
  %1170 = fadd fast float %1169, %514
  %1171 = fmul fast float %1140, %497
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %1141, float %503, float %1171)  ; FMad(a,b,c)
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1142, float %509, float %1172)  ; FMad(a,b,c)
  %1174 = fadd fast float %1173, %515
  %1175 = fmul fast float %1140, %499
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %1141, float %505, float %1175)  ; FMad(a,b,c)
  %1177 = call float @dx.op.tertiary.f32(i32 46, float %1142, float %511, float %1176)  ; FMad(a,b,c)
  %1178 = fadd fast float %1177, %517
  %1179 = fmul fast float %1164, %496
  %1180 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %502, float %1179)  ; FMad(a,b,c)
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %508, float %1180)  ; FMad(a,b,c)
  %1182 = fadd fast float %1181, %514
  %1183 = fmul fast float %1164, %497
  %1184 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %503, float %1183)  ; FMad(a,b,c)
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %509, float %1184)  ; FMad(a,b,c)
  %1186 = fadd fast float %1185, %515
  %1187 = fmul fast float %1164, %499
  %1188 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %505, float %1187)  ; FMad(a,b,c)
  %1189 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %511, float %1188)  ; FMad(a,b,c)
  %1190 = fadd fast float %1189, %517
  %1191 = fdiv fast float 1.000000e+00, %1178
  %1192 = fmul fast float %1191, %1170
  %1193 = fmul fast float %1191, %1174
  %1194 = fdiv fast float 1.000000e+00, %1190
  %1195 = fmul fast float %1194, %1182
  %1196 = fmul fast float %1194, %1186
  %1197 = fsub fast float %1195, %1192
  %1198 = fsub fast float %1196, %1193
  %1199 = call float @dx.op.dot2.f32(i32 54, float %1197, float %1198, float %1197, float %1198)  ; Dot2(ax,ay,bx,by)
  %1200 = call float @dx.op.unary.f32(i32 25, float %1199)  ; Rsqrt(value)
  %1201 = fmul fast float %1197, %1200
  %1202 = fmul fast float %1198, %1200
  %1203 = fmul fast float %1197, %1197
  %1204 = fmul fast float %1198, %1198
  %1205 = fadd fast float %1203, %1204
  %1206 = call float @dx.op.unary.f32(i32 24, float %1205)  ; Sqrt(value)
  %1207 = fmul fast float %1206, 5.000000e-01
  %1208 = fcmp fast olt float %1207, %1117
  br i1 %1208, label %1209, label %1210, !dx.controlflow.hints !58

; <label>:1209                                    ; preds = %1118
  br label %1210

; <label>:1210                                    ; preds = %1209, %1118, %989
  %1211 = phi float [ %1117, %989 ], [ %1207, %1209 ], [ %1117, %1118 ]
  %1212 = phi float [ %1117, %989 ], [ %1117, %1209 ], [ %1207, %1118 ]
  %1213 = phi float [ %1111, %989 ], [ %1111, %1209 ], [ %1201, %1118 ]
  %1214 = phi float [ %1112, %989 ], [ %1112, %1209 ], [ %1202, %1118 ]
  %1215 = fsub fast float %1212, %1211
  %1216 = fmul fast float %1213, %1213
  %1217 = fmul fast float %1216, %1215
  %1218 = fadd fast float %1217, %1211
  %1219 = fmul fast float %1213, %1215
  %1220 = fmul fast float %1219, %1214
  %1221 = fmul fast float %1214, %1214
  %1222 = fmul fast float %1221, %1215
  %1223 = fadd fast float %1222, %1211
  %1224 = fmul fast float %1218, %575
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %574, float %1220, float %1224)  ; FMad(a,b,c)
  %1226 = fmul fast float %1220, %575
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %574, float %1223, float %1226)  ; FMad(a,b,c)
  %1228 = fmul fast float %1218, %576
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %575, float %1220, float %1228)  ; FMad(a,b,c)
  %1230 = fmul fast float %1220, %576
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %575, float %1223, float %1230)  ; FMad(a,b,c)
  br label %1232

; <label>:1232                                    ; preds = %1232, %1210
  %1233 = phi float [ 0.000000e+00, %1210 ], [ %1259, %1232 ]
  %1234 = phi i32 [ 0, %1210 ], [ %1260, %1232 ]
  %1235 = mul i32 %1234, 2
  %1236 = add i32 0, %1235
  %1237 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1236
  %1238 = load float, float* %1237, align 4
  %1239 = mul i32 %1234, 2
  %1240 = add i32 1, %1239
  %1241 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1240
  %1242 = load float, float* %1241, align 4
  %1243 = fmul fast float %1238, %1225
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1229, float %1243)  ; FMad(a,b,c)
  %1245 = fmul fast float %1238, %1227
  %1246 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1231, float %1245)  ; FMad(a,b,c)
  %1247 = fadd fast float %1244, %569
  %1248 = fadd fast float %1246, %570
  %1249 = fmul fast float %1247, %486
  %1250 = fmul fast float %1248, %486
  %1251 = call float @dx.op.binary.f32(i32 35, float %1249, float %482)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 35, float %1250, float %482)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 36, float %1251, float %483)  ; FMin(a,b)
  %1254 = call float @dx.op.binary.f32(i32 36, float %1252, float %483)  ; FMin(a,b)
  %1255 = fadd fast float %1253, %480
  %1256 = fadd fast float %1254, %481
  %1257 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %17, float %1255, float %1256, float %955, float undef, i32 0, i32 0, i32 undef, float %958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = fadd fast float %1258, %1233
  %1260 = add nuw nsw i32 %1234, 1
  %1261 = icmp eq i32 %1260, 8
  br i1 %1261, label %1262, label %1232

; <label>:1262                                    ; preds = %1232
  %1263 = fmul fast float %1259, 1.250000e-01
  br label %1264

; <label>:1264                                    ; preds = %1262, %972, %621
  %1265 = phi float [ %648, %621 ], [ %1263, %1262 ], [ 1.000000e+00, %972 ]
  %1266 = fadd fast float %1265, -1.000000e+00
  %1267 = fmul fast float %1266, %459
  %1268 = fadd fast float %1267, 1.000000e+00
  %1269 = fmul fast float %1268, %471
  br label %1270

; <label>:1270                                    ; preds = %1264, %438
  %1271 = phi float [ %1269, %1264 ], [ %471, %438 ]
  %1272 = call float @dx.op.binary.f32(i32 36, float %1271, float %1271)  ; FMin(a,b)
  %1273 = call float @dx.op.binary.f32(i32 36, float %1271, float %1272)  ; FMin(a,b)
  %1274 = fcmp fast ogt float %1273, 0x3F10000000000000
  %1275 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %1274)  ; WaveAnyTrue(cond)
  %1276 = icmp ugt i32 %214, 63
  br i1 %1276, label %1306, label %1277, !dx.controlflow.hints !61

; <label>:1277                                    ; preds = %1270
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1278 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1278, label %1279, label %1282, !dx.controlflow.hints !62

; <label>:1279                                    ; preds = %1277
  %1280 = zext i1 %1275 to i32
  %1281 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %215
  store i32 %1280, i32 addrspace(3)* %1281, align 4, !tbaa !34
  br label %1282

; <label>:1282                                    ; preds = %1279, %1277
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1283 = icmp eq i32 %214, 32
  br i1 %1283, label %1284, label %1290, !dx.controlflow.hints !63

; <label>:1284                                    ; preds = %1282
  %1285 = xor i32 %215, 1
  %1286 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1285
  %1287 = load i32, i32 addrspace(3)* %1286, align 4, !tbaa !34
  %1288 = icmp ne i32 %1287, 0
  %1289 = or i1 %1275, %1288
  br label %1306

; <label>:1290                                    ; preds = %1282
  %1291 = icmp eq i32 %214, 16
  br i1 %1291, label %1292, label %1306, !dx.controlflow.hints !64

; <label>:1292                                    ; preds = %1290
  %1293 = xor i32 %215, 1
  %1294 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1293
  %1295 = load i32, i32 addrspace(3)* %1294, align 4, !tbaa !34
  %1296 = xor i32 %215, 2
  %1297 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1296
  %1298 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !34
  %1299 = or i32 %1298, %1295
  %1300 = xor i32 %215, 3
  %1301 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1300
  %1302 = load i32, i32 addrspace(3)* %1301, align 4, !tbaa !34
  %1303 = or i32 %1299, %1302
  %1304 = icmp ne i32 %1303, 0
  %1305 = or i1 %1275, %1304
  br label %1306

; <label>:1306                                    ; preds = %1292, %1290, %1284, %1270
  %1307 = phi i1 [ %1289, %1284 ], [ %1305, %1292 ], [ %1275, %1270 ], [ false, %1290 ]
  %1308 = select i1 %1307, i32 %350, i32 0
  %1309 = or i32 %345, %1308
  %1310 = lshr i32 %196, 5
  %1311 = lshr i32 %197, 5
  %1312 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1310, i32 %1311, i32 %348, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = lshr i32 %196, 1
  %1315 = lshr i32 %197, 1
  %1316 = and i32 %1314, 15
  %1317 = and i32 %1315, 15
  %1318 = and i32 %196, 1
  %1319 = shl i32 %197, 1
  %1320 = and i32 %1319, 2
  %1321 = or i32 %1320, %1318
  %1322 = lshr i32 %1313, 2
  %1323 = and i32 %1322, 8176
  %1324 = lshr i32 %1313, 11
  %1325 = and i32 %1324, 4080
  %1326 = or i32 %1323, %1316
  %1327 = or i32 %1325, %1317
  %1328 = lshr i32 %1313, 21
  %1329 = and i32 %1328, 1020
  %1330 = or i32 %1321, %1329
  %1331 = fmul fast float %1271, 2.550000e+02
  %1332 = fadd fast float %1331, %191
  %1333 = call float @dx.op.unary.f32(i32 27, float %1332)  ; Round_ni(value)
  %1334 = fmul fast float %1333, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1326, i32 %1327, i32 %1330, float %1334, float %1334, float %1334, float %1334, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1335 = icmp eq i32 %346, %350
  br i1 %1335, label %1336, label %344, !llvm.loop !65

; <label>:1336                                    ; preds = %1306
  br label %1337

; <label>:1337                                    ; preds = %1336, %340
  %1338 = phi i32 [ 0, %340 ], [ %1309, %1336 ]
  %1339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.i32 %1339, 0
  %1341 = call i32 @dx.op.tertiary.i32(i32 49, i32 %202, i32 %1340, i32 %281)  ; UMad(a,b,c)
  %1342 = shl i32 %1341, 2
  %1343 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1342, i32 undef, i32 undef, i32 %1338)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1344 = add i32 %281, 1
  %1345 = icmp ugt i32 %1344, %277
  br i1 %1345, label %1346, label %280

; <label>:1346                                    ; preds = %1337
  br label %1347

; <label>:1347                                    ; preds = %1346, %273, %57
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
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}

