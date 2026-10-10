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
; shader hash: 38f6f1bd453648dd1d0979fe2a1dca34
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
  br i1 %254, label %873, label %255, !dx.controlflow.hints !38

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
  br i1 %281, label %873, label %282

; <label>:282                                     ; preds = %255
  br label %283

; <label>:283                                     ; preds = %863, %282
  %284 = phi i32 [ %870, %863 ], [ %278, %282 ]
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
  br i1 %313, label %863, label %314

; <label>:314                                     ; preds = %311
  br label %315

; <label>:315                                     ; preds = %823, %314
  %316 = phi i32 [ %835, %823 ], [ 0, %314 ]
  %317 = phi i32 [ %322, %823 ], [ %312, %314 ]
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
  %430 = select i1 %361, float %429, float 1.000000e+00
  %431 = fmul fast float %380, %345
  %432 = fsub fast float 1.000000e+00, %431
  %433 = fmul fast float %432, %351
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fmul fast float %434, %430
  %436 = fmul fast float %435, 2.000000e+00
  %437 = fsub fast float 3.000000e+00, %436
  %438 = fmul fast float %426, %410
  %439 = fmul fast float %435, %435
  %440 = fmul fast float %439, %438
  %441 = fmul fast float %440, %437
  %442 = icmp ne i32 %359, 255
  %443 = call float @dx.op.binary.f32(i32 36, float %441, float %441)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %441, float %443)  ; FMin(a,b)
  %445 = fcmp fast ogt float %444, 0.000000e+00
  %446 = and i1 %442, %445
  br i1 %446, label %447, label %546, !dx.controlflow.hints !41

; <label>:447                                     ; preds = %409
  %448 = select i1 %361, float 1.000000e+00, float %429
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
  %464 = add nuw nsw i32 %449, 48
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = add nuw nsw i32 %449, 64
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = add nuw nsw i32 %449, 80
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = add nuw nsw i32 %449, 96
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = extractvalue %dx.types.ResRet.f32 %483, 2
  %487 = extractvalue %dx.types.ResRet.f32 %483, 3
  %488 = bitcast float %458 to i32
  %489 = fmul fast float %463, %178
  %490 = fmul fast float %463, %179
  %491 = fmul fast float %463, %180
  %492 = fadd fast float %489, %132
  %493 = fadd fast float %490, %133
  %494 = fadd fast float %491, %134
  %495 = fmul fast float %492, %466
  %496 = call float @dx.op.tertiary.f32(i32 46, float %493, float %472, float %495)  ; FMad(a,b,c)
  %497 = call float @dx.op.tertiary.f32(i32 46, float %494, float %478, float %496)  ; FMad(a,b,c)
  %498 = fadd fast float %497, %484
  %499 = fmul fast float %492, %467
  %500 = call float @dx.op.tertiary.f32(i32 46, float %493, float %473, float %499)  ; FMad(a,b,c)
  %501 = call float @dx.op.tertiary.f32(i32 46, float %494, float %479, float %500)  ; FMad(a,b,c)
  %502 = fadd fast float %501, %485
  %503 = fmul fast float %492, %468
  %504 = call float @dx.op.tertiary.f32(i32 46, float %493, float %474, float %503)  ; FMad(a,b,c)
  %505 = call float @dx.op.tertiary.f32(i32 46, float %494, float %480, float %504)  ; FMad(a,b,c)
  %506 = fadd fast float %505, %486
  %507 = fmul fast float %492, %469
  %508 = call float @dx.op.tertiary.f32(i32 46, float %493, float %475, float %507)  ; FMad(a,b,c)
  %509 = call float @dx.op.tertiary.f32(i32 46, float %494, float %481, float %508)  ; FMad(a,b,c)
  %510 = fadd fast float %509, %487
  %511 = fdiv fast float %498, %510
  %512 = fdiv fast float %502, %510
  %513 = fdiv fast float %506, %510
  %514 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %513)  ; FMax(a,b)
  %515 = fmul fast float %250, 0x401921FB60000000
  %516 = call float @dx.op.unary.f32(i32 13, float %515)  ; Sin(value)
  %517 = call float @dx.op.unary.f32(i32 12, float %515)  ; Cos(value)
  %518 = fsub fast float -0.000000e+00, %516
  %519 = fmul fast float %453, 5.000000e-01
  %520 = call float @dx.op.dot2.f32(i32 54, float %250, float %250, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fmul fast float %521, 0x404A7DD040000000
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = fmul fast float %523, %462
  %525 = fadd fast float %524, %519
  %526 = call float @dx.op.tertiary.f32(i32 46, float %525, float %518, float 0.000000e+00)  ; FMad(a,b,c)
  %527 = call float @dx.op.tertiary.f32(i32 46, float %525, float %517, float 0.000000e+00)  ; FMad(a,b,c)
  %528 = fadd fast float %526, %511
  %529 = fadd fast float %527, %512
  %530 = fmul fast float %528, %457
  %531 = fmul fast float %529, %457
  %532 = call float @dx.op.binary.f32(i32 35, float %530, float %453)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 35, float %531, float %453)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float %532, float %454)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float %533, float %454)  ; FMin(a,b)
  %536 = fadd fast float %534, %451
  %537 = fadd fast float %535, %452
  %538 = uitofp i32 %488 to float
  %539 = fadd fast float %514, %461
  %540 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %17, float %536, float %537, float %538, float undef, i32 0, i32 0, i32 undef, float %539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = fadd fast float %541, -1.000000e+00
  %543 = fmul fast float %542, %448
  %544 = fadd fast float %543, 1.000000e+00
  %545 = fmul fast float %544, %441
  br label %546

; <label>:546                                     ; preds = %447, %409
  %547 = phi float [ %545, %447 ], [ %441, %409 ]
  %548 = call float @dx.op.binary.f32(i32 36, float %547, float %547)  ; FMin(a,b)
  %549 = call float @dx.op.binary.f32(i32 36, float %547, float %548)  ; FMin(a,b)
  %550 = fcmp fast ogt float %549, 0.000000e+00
  %551 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %382, float %383, float %384)  ; Dot3(ax,ay,az,bx,by,bz)
  %552 = fcmp fast ogt float %551, 0.000000e+00
  %553 = and i1 %550, %552
  br i1 %553, label %554, label %823, !dx.controlflow.hints !42

; <label>:554                                     ; preds = %546
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %559 = select i1 %70, float %556, float %558
  %560 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %561 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %562 = select i1 %70, float %560, float %561
  %563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.i32 %563, 0
  %565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.i32 %565, 0
  %567 = select i1 %70, i32 %564, i32 %566
  %568 = fcmp fast olt float %559, 5.000000e-01
  %569 = icmp eq i32 %567, 0
  %570 = or i1 %568, %569
  br i1 %570, label %818, label %571, !dx.controlflow.hints !43

; <label>:571                                     ; preds = %554
  %572 = fsub fast float %342, %132
  %573 = fsub fast float %343, %133
  %574 = fsub fast float %344, %134
  %575 = fmul fast float %572, %572
  %576 = fmul fast float %573, %573
  %577 = fadd fast float %575, %576
  %578 = fmul fast float %574, %574
  %579 = fadd fast float %577, %578
  %580 = call float @dx.op.unary.f32(i32 24, float %579)  ; Sqrt(value)
  %581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.i32 %581, 0
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %559, %339
  %585 = fdiv fast float %584, %580
  %586 = call float @dx.op.binary.f32(i32 36, float %585, float 1.000000e+01)  ; FMin(a,b)
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %596 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %600 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %601 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = extractvalue %dx.types.CBufRet.f32 %602, 3
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %610 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %611 = extractvalue %dx.types.CBufRet.f32 %607, 3
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %616 = extractvalue %dx.types.CBufRet.f32 %612, 3
  %617 = select i1 %70, float %588, float %603
  %618 = select i1 %70, float %593, float %608
  %619 = select i1 %70, float %598, float %613
  %620 = select i1 %70, float %589, float %604
  %621 = select i1 %70, float %594, float %609
  %622 = select i1 %70, float %599, float %614
  %623 = select i1 %70, float %590, float %605
  %624 = select i1 %70, float %595, float %610
  %625 = select i1 %70, float %600, float %615
  %626 = select i1 %70, float %591, float %606
  %627 = select i1 %70, float %596, float %611
  %628 = select i1 %70, float %601, float %616
  %629 = fmul fast float %251, 0x401061CAC0000000
  %630 = fmul fast float %251, 0x4023E1D7E0000000
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %634 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %635 = extractvalue %dx.types.CBufRet.f32 %631, 3
  %636 = fsub fast float -0.000000e+00, %382
  %637 = fmul fast float %384, %636
  %638 = fmul fast float %382, %636
  %639 = fmul fast float %383, %383
  %640 = fsub fast float %638, %639
  %641 = fdiv fast float 1.000000e+00, %77
  %642 = fmul fast float %634, %66
  %643 = fmul fast float %635, %67
  %644 = fmul fast float %559, %382
  %645 = fmul fast float %559, %384
  %646 = fadd fast float %644, %132
  %647 = fadd fast float %645, %134
  %648 = fadd fast float %630, 5.000000e-01
  %649 = call float @dx.op.unary.f32(i32 22, float %648)  ; Frc(value)
  %650 = bitcast float %649 to i32
  %651 = ashr i32 %650, 1
  %652 = add nsw i32 %651, 532487669
  %653 = bitcast i32 %652 to float
  %654 = fmul fast float %653, %586
  %655 = fadd fast float %629, 5.000000e-01
  %656 = call float @dx.op.unary.f32(i32 22, float %655)  ; Frc(value)
  %657 = fmul fast float %656, 0x401921FB60000000
  %658 = call float @dx.op.unary.f32(i32 12, float %657)  ; Cos(value)
  %659 = fmul fast float %658, %658
  %660 = fsub fast float 1.000000e+00, %659
  %661 = bitcast float %660 to i32
  %662 = ashr i32 %661, 1
  %663 = add nsw i32 %662, 532487669
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %654, %658
  %666 = fmul fast float %665, %383
  %667 = fmul fast float %665, %636
  %668 = fadd fast float %646, %666
  %669 = fmul fast float %664, %654
  %670 = fmul fast float %637, %669
  %671 = fmul fast float %669, %384
  %672 = fmul fast float %669, %640
  %673 = fsub fast float %668, %670
  %674 = fadd fast float %671, %559
  %675 = fmul fast float %674, %383
  %676 = fadd fast float %667, %133
  %677 = fadd fast float %676, %675
  %678 = fadd fast float %647, %672
  %679 = fmul fast float %673, %617
  %680 = call float @dx.op.tertiary.f32(i32 46, float %677, float %620, float %679)  ; FMad(a,b,c)
  %681 = call float @dx.op.tertiary.f32(i32 46, float %678, float %623, float %680)  ; FMad(a,b,c)
  %682 = fadd fast float %681, %626
  %683 = fmul fast float %673, %618
  %684 = call float @dx.op.tertiary.f32(i32 46, float %677, float %621, float %683)  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float %678, float %624, float %684)  ; FMad(a,b,c)
  %686 = fadd fast float %685, %627
  %687 = fmul fast float %673, %619
  %688 = call float @dx.op.tertiary.f32(i32 46, float %677, float %622, float %687)  ; FMad(a,b,c)
  %689 = call float @dx.op.tertiary.f32(i32 46, float %678, float %625, float %688)  ; FMad(a,b,c)
  %690 = fadd fast float %689, %628
  %691 = fdiv fast float 1.000000e+00, %690
  %692 = fmul fast float %682, 5.000000e-01
  %693 = fmul fast float %686, -5.000000e-01
  %694 = fmul fast float %692, %691
  %695 = fmul fast float %693, %691
  %696 = fsub fast float 5.000000e-01, %642
  %697 = fadd fast float %696, %694
  %698 = fsub fast float 5.000000e-01, %643
  %699 = fadd fast float %698, %695
  %700 = fsub fast float %691, %641
  %701 = call float @dx.op.dot2.f32(i32 54, float %697, float %699, float %697, float %699)  ; Dot2(ax,ay,bx,by)
  %702 = call float @dx.op.binary.f32(i32 35, float %701, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %703 = call float @dx.op.dot2.f32(i32 54, float %632, float %633, float %632, float %633)  ; Dot2(ax,ay,bx,by)
  %704 = fmul fast float %703, %702
  %705 = call float @dx.op.unary.f32(i32 25, float %704)  ; Rsqrt(value)
  %706 = fmul fast float %705, %697
  %707 = fmul fast float %705, %699
  %708 = fadd fast float %706, %642
  %709 = fadd fast float %707, %643
  %710 = fmul fast float %697, %632
  %711 = fmul fast float %699, %633
  %712 = fmul fast float %710, %710
  %713 = fmul fast float %711, %711
  %714 = fadd fast float %712, %713
  %715 = call float @dx.op.unary.f32(i32 24, float %714)  ; Sqrt(value)
  %716 = fdiv fast float 1.000000e+00, %715
  %717 = fmul fast float %715, 3.906250e-03
  %718 = fmul fast float %237, 0x3F70624DE0000000
  %719 = fadd fast float %718, 0x3F70624DE0000000
  %720 = icmp sgt i32 %567, -1
  br i1 %720, label %721, label %783

; <label>:721                                     ; preds = %571
  br label %722

; <label>:722                                     ; preds = %779, %721
  %723 = phi float [ %754, %779 ], [ %77, %721 ]
  %724 = phi float [ %741, %779 ], [ %77, %721 ]
  %725 = phi float [ %724, %779 ], [ %77, %721 ]
  %726 = phi i32 [ %780, %779 ], [ 0, %721 ]
  %727 = sitofp i32 %726 to float
  %728 = fadd fast float %251, 5.000000e-01
  %729 = call float @dx.op.unary.f32(i32 22, float %728)  ; Frc(value)
  %730 = fadd fast float %727, %729
  %731 = sitofp i32 %567 to float
  %732 = fdiv fast float %730, %731
  %733 = fmul fast float %732, %732
  %734 = call float @dx.op.binary.f32(i32 36, float %733, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %735 = fmul fast float %734, %697
  %736 = fmul fast float %734, %699
  %737 = fmul fast float %734, %700
  %738 = fadd fast float %735, %708
  %739 = fadd fast float %736, %709
  %740 = fadd fast float %737, %641
  %741 = fdiv fast float 1.000000e+00, %740
  %742 = icmp ne i32 %582, 0
  %743 = fmul fast float %717, %734
  %744 = call float @dx.op.binary.f32(i32 36, float %743, float %583)  ; FMin(a,b)
  %745 = select i1 %742, float %744, float 0.000000e+00
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %738, float %739, float undef, float undef, i32 0, i32 0, i32 undef, float %745)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = fcmp fast ogt float %747, -1.000000e+00
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %751 = select i1 %748, float %750, float 1.000000e+00
  %752 = fadd fast float %747, 1.000000e+00
  %753 = fmul fast float %751, %752
  %754 = call float @dx.op.unary.f32(i32 6, float %753)  ; FAbs(value)
  %755 = fmul fast float %754, %719
  %756 = fsub fast float %741, %754
  %757 = fsub fast float %756, %755
  %758 = fcmp fast ogt float %757, 0.000000e+00
  %759 = fcmp fast ogt float %562, 0.000000e+00
  br i1 %759, label %760, label %763, !dx.controlflow.hints !44

; <label>:760                                     ; preds = %722
  %761 = fsub fast float %741, %725
  %762 = call float @dx.op.binary.f32(i32 35, float %761, float %562)  ; FMax(a,b)
  br label %763

; <label>:763                                     ; preds = %760, %722
  %764 = phi float [ %762, %760 ], [ %559, %722 ]
  %765 = fcmp fast olt float %757, %764
  %766 = fcmp uge float %747, -1.000000e+00
  %767 = or i1 %70, %766
  %768 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %769 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %770 = fcmp fast oeq float %738, %768
  %771 = fcmp fast oeq float %739, %769
  %772 = and i1 %770, %771
  %773 = and i1 %767, %772
  %774 = and i1 %758, %765
  %775 = and i1 %774, %773
  %776 = fcmp fast ogt float %734, %716
  %777 = and i1 %776, %775
  %778 = zext i1 %777 to i32
  br i1 %777, label %782, label %779, !dx.controlflow.hints !45

; <label>:779                                     ; preds = %763
  %780 = add nuw nsw i32 %726, 1
  %781 = icmp slt i32 %726, %567
  br i1 %781, label %722, label %782

; <label>:782                                     ; preds = %779, %763
  br label %783

; <label>:783                                     ; preds = %782, %571
  %784 = phi i32 [ 0, %571 ], [ %778, %782 ]
  %785 = phi float [ %77, %571 ], [ %754, %782 ]
  %786 = phi float [ %77, %571 ], [ %723, %782 ]
  %787 = phi float [ %77, %571 ], [ %741, %782 ]
  %788 = phi float [ %77, %571 ], [ %724, %782 ]
  %789 = fsub fast float %788, %786
  %790 = fsub fast float %787, %785
  %791 = fsub fast float %789, %790
  %792 = fcmp fast une float %791, 0.000000e+00
  %793 = fmul fast float %789, %787
  %794 = fmul fast float %788, %790
  %795 = fsub fast float %793, %794
  %796 = fdiv fast float 1.000000e+00, %791
  %797 = fmul fast float %795, %796
  %798 = select i1 %792, float %797, float %787
  %799 = fdiv fast float 1.000000e+00, %798
  %800 = fsub fast float %799, %641
  %801 = fdiv fast float %800, %700
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %803 = fmul fast float %802, %697
  %804 = fmul fast float %802, %699
  %805 = fadd fast float %803, %708
  %806 = fadd fast float %804, %709
  %807 = fadd fast float %805, -5.000000e-01
  %808 = fadd fast float %806, -5.000000e-01
  %809 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %810 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %811 = fadd fast float %809, -5.000000e-01
  %812 = fadd fast float %810, -5.000000e-01
  %813 = call float @dx.op.binary.f32(i32 35, float %811, float %812)  ; FMax(a,b)
  %814 = fcmp fast olt float %813, 0.000000e+00
  %815 = icmp ne i32 %784, 0
  %816 = and i1 %815, %814
  %817 = select i1 %816, float 0.000000e+00, float 1.000000e+00
  br label %818

; <label>:818                                     ; preds = %783, %554
  %819 = phi float [ %817, %783 ], [ 1.000000e+00, %554 ]
  %820 = fmul fast float %819, %547
  %821 = fmul fast float %819, %547
  %822 = fmul fast float %819, %547
  br label %823

; <label>:823                                     ; preds = %818, %546
  %824 = phi float [ %820, %818 ], [ %547, %546 ]
  %825 = phi float [ %821, %818 ], [ %547, %546 ]
  %826 = phi float [ %822, %818 ], [ %547, %546 ]
  %827 = call float @dx.op.binary.f32(i32 36, float %825, float %826)  ; FMin(a,b)
  %828 = call float @dx.op.binary.f32(i32 36, float %824, float %827)  ; FMin(a,b)
  %829 = fcmp fast ogt float %828, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %830 = zext i1 %829 to i32
  %831 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %830 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %832 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  %833 = icmp eq i32 %832, 0
  %834 = select i1 %833, i32 0, i32 %321
  %835 = or i32 %316, %834
  %836 = lshr i32 %256, 5
  %837 = lshr i32 %257, 5
  %838 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %836, i32 %837, i32 %319, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = lshr i32 %256, 1
  %841 = lshr i32 %257, 1
  %842 = and i32 %840, 15
  %843 = and i32 %841, 15
  %844 = and i32 %256, 1
  %845 = shl i32 %257, 1
  %846 = and i32 %845, 2
  %847 = or i32 %846, %844
  %848 = lshr i32 %839, 2
  %849 = and i32 %848, 8176
  %850 = lshr i32 %839, 11
  %851 = and i32 %850, 4080
  %852 = or i32 %849, %842
  %853 = or i32 %851, %843
  %854 = lshr i32 %839, 21
  %855 = and i32 %854, 1020
  %856 = or i32 %847, %855
  %857 = fmul fast float %824, 2.550000e+02
  %858 = fadd fast float %857, %250
  %859 = call float @dx.op.unary.f32(i32 27, float %858)  ; Round_ni(value)
  %860 = fmul fast float %859, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %852, i32 %853, i32 %856, float %860, float %860, float %860, float %860, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %861 = icmp eq i32 %317, %321
  br i1 %861, label %862, label %315, !llvm.loop !46

; <label>:862                                     ; preds = %823
  br label %863

; <label>:863                                     ; preds = %862, %311
  %864 = phi i32 [ 0, %311 ], [ %835, %862 ]
  %865 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.i32 %865, 0
  %867 = call i32 @dx.op.tertiary.i32(i32 49, i32 %262, i32 %866, i32 %284)  ; UMad(a,b,c)
  %868 = shl i32 %867, 2
  %869 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %868, i32 undef, i32 undef, i32 %864)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %870 = add i32 %284, 1
  %871 = icmp ugt i32 %870, %280
  br i1 %871, label %872, label %283

; <label>:872                                     ; preds = %863
  br label %873

; <label>:873                                     ; preds = %872, %255, %57
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
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}

