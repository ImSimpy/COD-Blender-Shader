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
; shader hash: c374c0cf886007954388a19bffe0356a
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
  br i1 %254, label %991, label %255, !dx.controlflow.hints !38

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
  br i1 %338, label %991, label %339

; <label>:339                                     ; preds = %333
  br label %340

; <label>:340                                     ; preds = %981, %339
  %341 = phi i32 [ %988, %981 ], [ %335, %339 ]
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
  br i1 %402, label %981, label %403

; <label>:403                                     ; preds = %400
  br label %404

; <label>:404                                     ; preds = %950, %403
  %405 = phi i32 [ %953, %950 ], [ 0, %403 ]
  %406 = phi i32 [ %411, %950 ], [ %401, %403 ]
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
  %519 = select i1 %450, float %518, float 1.000000e+00
  %520 = fmul fast float %469, %434
  %521 = fsub fast float 1.000000e+00, %520
  %522 = fmul fast float %521, %440
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %524 = fmul fast float %523, %519
  %525 = fmul fast float %524, 2.000000e+00
  %526 = fsub fast float 3.000000e+00, %525
  %527 = fmul fast float %515, %499
  %528 = fmul fast float %524, %524
  %529 = fmul fast float %528, %527
  %530 = fmul fast float %529, %526
  %531 = icmp ne i32 %448, 255
  %532 = call float @dx.op.binary.f32(i32 36, float %530, float %530)  ; FMin(a,b)
  %533 = call float @dx.op.binary.f32(i32 36, float %530, float %532)  ; FMin(a,b)
  %534 = fcmp fast ogt float %533, 0.000000e+00
  %535 = and i1 %531, %534
  br i1 %535, label %536, label %635, !dx.controlflow.hints !54

; <label>:536                                     ; preds = %498
  %537 = select i1 %450, float 1.000000e+00, float %518
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
  %553 = add nuw nsw i32 %538, 48
  %554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = extractvalue %dx.types.ResRet.f32 %554, 1
  %557 = extractvalue %dx.types.ResRet.f32 %554, 2
  %558 = extractvalue %dx.types.ResRet.f32 %554, 3
  %559 = add nuw nsw i32 %538, 64
  %560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = extractvalue %dx.types.ResRet.f32 %560, 2
  %564 = extractvalue %dx.types.ResRet.f32 %560, 3
  %565 = add nuw nsw i32 %538, 80
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = extractvalue %dx.types.ResRet.f32 %566, 2
  %570 = extractvalue %dx.types.ResRet.f32 %566, 3
  %571 = add nuw nsw i32 %538, 96
  %572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  %577 = bitcast float %547 to i32
  %578 = fmul fast float %552, %178
  %579 = fmul fast float %552, %179
  %580 = fmul fast float %552, %180
  %581 = fadd fast float %578, %132
  %582 = fadd fast float %579, %133
  %583 = fadd fast float %580, %134
  %584 = fmul fast float %581, %555
  %585 = call float @dx.op.tertiary.f32(i32 46, float %582, float %561, float %584)  ; FMad(a,b,c)
  %586 = call float @dx.op.tertiary.f32(i32 46, float %583, float %567, float %585)  ; FMad(a,b,c)
  %587 = fadd fast float %586, %573
  %588 = fmul fast float %581, %556
  %589 = call float @dx.op.tertiary.f32(i32 46, float %582, float %562, float %588)  ; FMad(a,b,c)
  %590 = call float @dx.op.tertiary.f32(i32 46, float %583, float %568, float %589)  ; FMad(a,b,c)
  %591 = fadd fast float %590, %574
  %592 = fmul fast float %581, %557
  %593 = call float @dx.op.tertiary.f32(i32 46, float %582, float %563, float %592)  ; FMad(a,b,c)
  %594 = call float @dx.op.tertiary.f32(i32 46, float %583, float %569, float %593)  ; FMad(a,b,c)
  %595 = fadd fast float %594, %575
  %596 = fmul fast float %581, %558
  %597 = call float @dx.op.tertiary.f32(i32 46, float %582, float %564, float %596)  ; FMad(a,b,c)
  %598 = call float @dx.op.tertiary.f32(i32 46, float %583, float %570, float %597)  ; FMad(a,b,c)
  %599 = fadd fast float %598, %576
  %600 = fdiv fast float %587, %599
  %601 = fdiv fast float %591, %599
  %602 = fdiv fast float %595, %599
  %603 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %602)  ; FMax(a,b)
  %604 = fmul fast float %250, 0x401921FB60000000
  %605 = call float @dx.op.unary.f32(i32 13, float %604)  ; Sin(value)
  %606 = call float @dx.op.unary.f32(i32 12, float %604)  ; Cos(value)
  %607 = fsub fast float -0.000000e+00, %605
  %608 = fmul fast float %542, 5.000000e-01
  %609 = call float @dx.op.dot2.f32(i32 54, float %250, float %250, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %610 = call float @dx.op.unary.f32(i32 22, float %609)  ; Frc(value)
  %611 = fmul fast float %610, 0x404A7DD040000000
  %612 = call float @dx.op.unary.f32(i32 22, float %611)  ; Frc(value)
  %613 = fmul fast float %612, %551
  %614 = fadd fast float %613, %608
  %615 = call float @dx.op.tertiary.f32(i32 46, float %614, float %607, float 0.000000e+00)  ; FMad(a,b,c)
  %616 = call float @dx.op.tertiary.f32(i32 46, float %614, float %606, float 0.000000e+00)  ; FMad(a,b,c)
  %617 = fadd fast float %615, %600
  %618 = fadd fast float %616, %601
  %619 = fmul fast float %617, %546
  %620 = fmul fast float %618, %546
  %621 = call float @dx.op.binary.f32(i32 35, float %619, float %542)  ; FMax(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float %620, float %542)  ; FMax(a,b)
  %623 = call float @dx.op.binary.f32(i32 36, float %621, float %543)  ; FMin(a,b)
  %624 = call float @dx.op.binary.f32(i32 36, float %622, float %543)  ; FMin(a,b)
  %625 = fadd fast float %623, %540
  %626 = fadd fast float %624, %541
  %627 = uitofp i32 %577 to float
  %628 = fadd fast float %603, %550
  %629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %17, float %625, float %626, float %627, float undef, i32 0, i32 0, i32 undef, float %628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = fadd fast float %630, -1.000000e+00
  %632 = fmul fast float %631, %537
  %633 = fadd fast float %632, 1.000000e+00
  %634 = fmul fast float %633, %530
  br label %635

; <label>:635                                     ; preds = %536, %498
  %636 = phi float [ %634, %536 ], [ %530, %498 ]
  %637 = call float @dx.op.binary.f32(i32 36, float %636, float %636)  ; FMin(a,b)
  %638 = call float @dx.op.binary.f32(i32 36, float %636, float %637)  ; FMin(a,b)
  %639 = fcmp fast ogt float %638, 0.000000e+00
  %640 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %471, float %472, float %473)  ; Dot3(ax,ay,az,bx,by,bz)
  %641 = fcmp fast ogt float %640, 0.000000e+00
  %642 = and i1 %639, %641
  br i1 %642, label %643, label %912, !dx.controlflow.hints !55

; <label>:643                                     ; preds = %635
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 1
  %648 = select i1 %70, float %645, float %647
  %649 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %650 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %651 = select i1 %70, float %649, float %650
  %652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.i32 %652, 0
  %654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.i32 %654, 0
  %656 = select i1 %70, i32 %653, i32 %655
  %657 = fcmp fast olt float %648, 5.000000e-01
  %658 = icmp eq i32 %656, 0
  %659 = or i1 %657, %658
  br i1 %659, label %907, label %660, !dx.controlflow.hints !56

; <label>:660                                     ; preds = %643
  %661 = fsub fast float %431, %132
  %662 = fsub fast float %432, %133
  %663 = fsub fast float %433, %134
  %664 = fmul fast float %661, %661
  %665 = fmul fast float %662, %662
  %666 = fadd fast float %664, %665
  %667 = fmul fast float %663, %663
  %668 = fadd fast float %666, %667
  %669 = call float @dx.op.unary.f32(i32 24, float %668)  ; Sqrt(value)
  %670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.i32 %670, 0
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %648, %428
  %674 = fdiv fast float %673, %669
  %675 = call float @dx.op.binary.f32(i32 36, float %674, float 1.000000e+01)  ; FMin(a,b)
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %678 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %679 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %680 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %683 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %684 = extractvalue %dx.types.CBufRet.f32 %681, 2
  %685 = extractvalue %dx.types.CBufRet.f32 %681, 3
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %690 = extractvalue %dx.types.CBufRet.f32 %686, 3
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %694 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %691, 3
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %699 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %700 = extractvalue %dx.types.CBufRet.f32 %696, 3
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %703 = extractvalue %dx.types.CBufRet.f32 %701, 1
  %704 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %705 = extractvalue %dx.types.CBufRet.f32 %701, 3
  %706 = select i1 %70, float %677, float %692
  %707 = select i1 %70, float %682, float %697
  %708 = select i1 %70, float %687, float %702
  %709 = select i1 %70, float %678, float %693
  %710 = select i1 %70, float %683, float %698
  %711 = select i1 %70, float %688, float %703
  %712 = select i1 %70, float %679, float %694
  %713 = select i1 %70, float %684, float %699
  %714 = select i1 %70, float %689, float %704
  %715 = select i1 %70, float %680, float %695
  %716 = select i1 %70, float %685, float %700
  %717 = select i1 %70, float %690, float %705
  %718 = fmul fast float %251, 0x401061CAC0000000
  %719 = fmul fast float %251, 0x4023E1D7E0000000
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %723 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %724 = extractvalue %dx.types.CBufRet.f32 %720, 3
  %725 = fsub fast float -0.000000e+00, %471
  %726 = fmul fast float %473, %725
  %727 = fmul fast float %471, %725
  %728 = fmul fast float %472, %472
  %729 = fsub fast float %727, %728
  %730 = fdiv fast float 1.000000e+00, %77
  %731 = fmul fast float %723, %66
  %732 = fmul fast float %724, %67
  %733 = fmul fast float %648, %471
  %734 = fmul fast float %648, %473
  %735 = fadd fast float %733, %132
  %736 = fadd fast float %734, %134
  %737 = fadd fast float %719, 5.000000e-01
  %738 = call float @dx.op.unary.f32(i32 22, float %737)  ; Frc(value)
  %739 = bitcast float %738 to i32
  %740 = ashr i32 %739, 1
  %741 = add nsw i32 %740, 532487669
  %742 = bitcast i32 %741 to float
  %743 = fmul fast float %742, %675
  %744 = fadd fast float %718, 5.000000e-01
  %745 = call float @dx.op.unary.f32(i32 22, float %744)  ; Frc(value)
  %746 = fmul fast float %745, 0x401921FB60000000
  %747 = call float @dx.op.unary.f32(i32 12, float %746)  ; Cos(value)
  %748 = fmul fast float %747, %747
  %749 = fsub fast float 1.000000e+00, %748
  %750 = bitcast float %749 to i32
  %751 = ashr i32 %750, 1
  %752 = add nsw i32 %751, 532487669
  %753 = bitcast i32 %752 to float
  %754 = fmul fast float %743, %747
  %755 = fmul fast float %754, %472
  %756 = fmul fast float %754, %725
  %757 = fadd fast float %735, %755
  %758 = fmul fast float %753, %743
  %759 = fmul fast float %726, %758
  %760 = fmul fast float %758, %473
  %761 = fmul fast float %758, %729
  %762 = fsub fast float %757, %759
  %763 = fadd fast float %760, %648
  %764 = fmul fast float %763, %472
  %765 = fadd fast float %756, %133
  %766 = fadd fast float %765, %764
  %767 = fadd fast float %736, %761
  %768 = fmul fast float %762, %706
  %769 = call float @dx.op.tertiary.f32(i32 46, float %766, float %709, float %768)  ; FMad(a,b,c)
  %770 = call float @dx.op.tertiary.f32(i32 46, float %767, float %712, float %769)  ; FMad(a,b,c)
  %771 = fadd fast float %770, %715
  %772 = fmul fast float %762, %707
  %773 = call float @dx.op.tertiary.f32(i32 46, float %766, float %710, float %772)  ; FMad(a,b,c)
  %774 = call float @dx.op.tertiary.f32(i32 46, float %767, float %713, float %773)  ; FMad(a,b,c)
  %775 = fadd fast float %774, %716
  %776 = fmul fast float %762, %708
  %777 = call float @dx.op.tertiary.f32(i32 46, float %766, float %711, float %776)  ; FMad(a,b,c)
  %778 = call float @dx.op.tertiary.f32(i32 46, float %767, float %714, float %777)  ; FMad(a,b,c)
  %779 = fadd fast float %778, %717
  %780 = fdiv fast float 1.000000e+00, %779
  %781 = fmul fast float %771, 5.000000e-01
  %782 = fmul fast float %775, -5.000000e-01
  %783 = fmul fast float %781, %780
  %784 = fmul fast float %782, %780
  %785 = fsub fast float 5.000000e-01, %731
  %786 = fadd fast float %785, %783
  %787 = fsub fast float 5.000000e-01, %732
  %788 = fadd fast float %787, %784
  %789 = fsub fast float %780, %730
  %790 = call float @dx.op.dot2.f32(i32 54, float %786, float %788, float %786, float %788)  ; Dot2(ax,ay,bx,by)
  %791 = call float @dx.op.binary.f32(i32 35, float %790, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %792 = call float @dx.op.dot2.f32(i32 54, float %721, float %722, float %721, float %722)  ; Dot2(ax,ay,bx,by)
  %793 = fmul fast float %792, %791
  %794 = call float @dx.op.unary.f32(i32 25, float %793)  ; Rsqrt(value)
  %795 = fmul fast float %794, %786
  %796 = fmul fast float %794, %788
  %797 = fadd fast float %795, %731
  %798 = fadd fast float %796, %732
  %799 = fmul fast float %786, %721
  %800 = fmul fast float %788, %722
  %801 = fmul fast float %799, %799
  %802 = fmul fast float %800, %800
  %803 = fadd fast float %801, %802
  %804 = call float @dx.op.unary.f32(i32 24, float %803)  ; Sqrt(value)
  %805 = fdiv fast float 1.000000e+00, %804
  %806 = fmul fast float %804, 3.906250e-03
  %807 = fmul fast float %237, 0x3F70624DE0000000
  %808 = fadd fast float %807, 0x3F70624DE0000000
  %809 = icmp sgt i32 %656, -1
  br i1 %809, label %810, label %872

; <label>:810                                     ; preds = %660
  br label %811

; <label>:811                                     ; preds = %868, %810
  %812 = phi float [ %843, %868 ], [ %77, %810 ]
  %813 = phi float [ %830, %868 ], [ %77, %810 ]
  %814 = phi float [ %813, %868 ], [ %77, %810 ]
  %815 = phi i32 [ %869, %868 ], [ 0, %810 ]
  %816 = sitofp i32 %815 to float
  %817 = fadd fast float %251, 5.000000e-01
  %818 = call float @dx.op.unary.f32(i32 22, float %817)  ; Frc(value)
  %819 = fadd fast float %816, %818
  %820 = sitofp i32 %656 to float
  %821 = fdiv fast float %819, %820
  %822 = fmul fast float %821, %821
  %823 = call float @dx.op.binary.f32(i32 36, float %822, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %824 = fmul fast float %823, %786
  %825 = fmul fast float %823, %788
  %826 = fmul fast float %823, %789
  %827 = fadd fast float %824, %797
  %828 = fadd fast float %825, %798
  %829 = fadd fast float %826, %730
  %830 = fdiv fast float 1.000000e+00, %829
  %831 = icmp ne i32 %671, 0
  %832 = fmul fast float %806, %823
  %833 = call float @dx.op.binary.f32(i32 36, float %832, float %672)  ; FMin(a,b)
  %834 = select i1 %831, float %833, float 0.000000e+00
  %835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %827, float %828, float undef, float undef, i32 0, i32 0, i32 undef, float %834)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = fcmp fast ogt float %836, -1.000000e+00
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %840 = select i1 %837, float %839, float 1.000000e+00
  %841 = fadd fast float %836, 1.000000e+00
  %842 = fmul fast float %840, %841
  %843 = call float @dx.op.unary.f32(i32 6, float %842)  ; FAbs(value)
  %844 = fmul fast float %843, %808
  %845 = fsub fast float %830, %843
  %846 = fsub fast float %845, %844
  %847 = fcmp fast ogt float %846, 0.000000e+00
  %848 = fcmp fast ogt float %651, 0.000000e+00
  br i1 %848, label %849, label %852, !dx.controlflow.hints !57

; <label>:849                                     ; preds = %811
  %850 = fsub fast float %830, %814
  %851 = call float @dx.op.binary.f32(i32 35, float %850, float %651)  ; FMax(a,b)
  br label %852

; <label>:852                                     ; preds = %849, %811
  %853 = phi float [ %851, %849 ], [ %648, %811 ]
  %854 = fcmp fast olt float %846, %853
  %855 = fcmp uge float %836, -1.000000e+00
  %856 = or i1 %70, %855
  %857 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %858 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %859 = fcmp fast oeq float %827, %857
  %860 = fcmp fast oeq float %828, %858
  %861 = and i1 %859, %860
  %862 = and i1 %856, %861
  %863 = and i1 %847, %854
  %864 = and i1 %863, %862
  %865 = fcmp fast ogt float %823, %805
  %866 = and i1 %865, %864
  %867 = zext i1 %866 to i32
  br i1 %866, label %871, label %868, !dx.controlflow.hints !58

; <label>:868                                     ; preds = %852
  %869 = add nuw nsw i32 %815, 1
  %870 = icmp slt i32 %815, %656
  br i1 %870, label %811, label %871

; <label>:871                                     ; preds = %868, %852
  br label %872

; <label>:872                                     ; preds = %871, %660
  %873 = phi i32 [ 0, %660 ], [ %867, %871 ]
  %874 = phi float [ %77, %660 ], [ %843, %871 ]
  %875 = phi float [ %77, %660 ], [ %812, %871 ]
  %876 = phi float [ %77, %660 ], [ %830, %871 ]
  %877 = phi float [ %77, %660 ], [ %813, %871 ]
  %878 = fsub fast float %877, %875
  %879 = fsub fast float %876, %874
  %880 = fsub fast float %878, %879
  %881 = fcmp fast une float %880, 0.000000e+00
  %882 = fmul fast float %878, %876
  %883 = fmul fast float %877, %879
  %884 = fsub fast float %882, %883
  %885 = fdiv fast float 1.000000e+00, %880
  %886 = fmul fast float %884, %885
  %887 = select i1 %881, float %886, float %876
  %888 = fdiv fast float 1.000000e+00, %887
  %889 = fsub fast float %888, %730
  %890 = fdiv fast float %889, %789
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = fmul fast float %891, %786
  %893 = fmul fast float %891, %788
  %894 = fadd fast float %892, %797
  %895 = fadd fast float %893, %798
  %896 = fadd fast float %894, -5.000000e-01
  %897 = fadd fast float %895, -5.000000e-01
  %898 = call float @dx.op.unary.f32(i32 6, float %896)  ; FAbs(value)
  %899 = call float @dx.op.unary.f32(i32 6, float %897)  ; FAbs(value)
  %900 = fadd fast float %898, -5.000000e-01
  %901 = fadd fast float %899, -5.000000e-01
  %902 = call float @dx.op.binary.f32(i32 35, float %900, float %901)  ; FMax(a,b)
  %903 = fcmp fast olt float %902, 0.000000e+00
  %904 = icmp ne i32 %873, 0
  %905 = and i1 %904, %903
  %906 = select i1 %905, float 0.000000e+00, float 1.000000e+00
  br label %907

; <label>:907                                     ; preds = %872, %643
  %908 = phi float [ %906, %872 ], [ 1.000000e+00, %643 ]
  %909 = fmul fast float %908, %636
  %910 = fmul fast float %908, %636
  %911 = fmul fast float %908, %636
  br label %912

; <label>:912                                     ; preds = %907, %635
  %913 = phi float [ %909, %907 ], [ %636, %635 ]
  %914 = phi float [ %910, %907 ], [ %636, %635 ]
  %915 = phi float [ %911, %907 ], [ %636, %635 ]
  %916 = call float @dx.op.binary.f32(i32 36, float %914, float %915)  ; FMin(a,b)
  %917 = call float @dx.op.binary.f32(i32 36, float %913, float %916)  ; FMin(a,b)
  %918 = fcmp fast ogt float %917, 0x3F10000000000000
  %919 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %918)  ; WaveAnyTrue(cond)
  %920 = icmp ugt i32 %274, 63
  br i1 %920, label %950, label %921, !dx.controlflow.hints !59

; <label>:921                                     ; preds = %912
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %922 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %922, label %923, label %926, !dx.controlflow.hints !60

; <label>:923                                     ; preds = %921
  %924 = zext i1 %919 to i32
  %925 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %275
  store i32 %924, i32 addrspace(3)* %925, align 4, !tbaa !34
  br label %926

; <label>:926                                     ; preds = %923, %921
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %927 = icmp eq i32 %274, 32
  br i1 %927, label %928, label %934, !dx.controlflow.hints !61

; <label>:928                                     ; preds = %926
  %929 = xor i32 %275, 1
  %930 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %929
  %931 = load i32, i32 addrspace(3)* %930, align 4, !tbaa !34
  %932 = icmp ne i32 %931, 0
  %933 = or i1 %919, %932
  br label %950

; <label>:934                                     ; preds = %926
  %935 = icmp eq i32 %274, 16
  br i1 %935, label %936, label %950, !dx.controlflow.hints !62

; <label>:936                                     ; preds = %934
  %937 = xor i32 %275, 1
  %938 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %937
  %939 = load i32, i32 addrspace(3)* %938, align 4, !tbaa !34
  %940 = xor i32 %275, 2
  %941 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %940
  %942 = load i32, i32 addrspace(3)* %941, align 4, !tbaa !34
  %943 = or i32 %942, %939
  %944 = xor i32 %275, 3
  %945 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %944
  %946 = load i32, i32 addrspace(3)* %945, align 4, !tbaa !34
  %947 = or i32 %943, %946
  %948 = icmp ne i32 %947, 0
  %949 = or i1 %919, %948
  br label %950

; <label>:950                                     ; preds = %936, %934, %928, %912
  %951 = phi i1 [ %933, %928 ], [ %949, %936 ], [ %919, %912 ], [ false, %934 ]
  %952 = select i1 %951, i32 %410, i32 0
  %953 = or i32 %405, %952
  %954 = lshr i32 %256, 5
  %955 = lshr i32 %257, 5
  %956 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %954, i32 %955, i32 %408, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %256, 1
  %959 = lshr i32 %257, 1
  %960 = and i32 %958, 15
  %961 = and i32 %959, 15
  %962 = and i32 %256, 1
  %963 = shl i32 %257, 1
  %964 = and i32 %963, 2
  %965 = or i32 %964, %962
  %966 = lshr i32 %957, 2
  %967 = and i32 %966, 8176
  %968 = lshr i32 %957, 11
  %969 = and i32 %968, 4080
  %970 = or i32 %967, %960
  %971 = or i32 %969, %961
  %972 = lshr i32 %957, 21
  %973 = and i32 %972, 1020
  %974 = or i32 %965, %973
  %975 = fmul fast float %913, 2.550000e+02
  %976 = fadd fast float %975, %250
  %977 = call float @dx.op.unary.f32(i32 27, float %976)  ; Round_ni(value)
  %978 = fmul fast float %977, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %970, i32 %971, i32 %974, float %978, float %978, float %978, float %978, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %979 = icmp eq i32 %406, %410
  br i1 %979, label %980, label %404, !llvm.loop !63

; <label>:980                                     ; preds = %950
  br label %981

; <label>:981                                     ; preds = %980, %400
  %982 = phi i32 [ 0, %400 ], [ %953, %980 ]
  %983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.i32 %983, 0
  %985 = call i32 @dx.op.tertiary.i32(i32 49, i32 %262, i32 %984, i32 %341)  ; UMad(a,b,c)
  %986 = shl i32 %985, 2
  %987 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %986, i32 undef, i32 undef, i32 %982)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %988 = add i32 %341, 1
  %989 = icmp ugt i32 %988, %337
  br i1 %989, label %990, label %340

; <label>:990                                     ; preds = %981
  br label %991

; <label>:991                                     ; preds = %990, %333, %57
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
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.unroll.disable"}

