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
; shader hash: 52d7b0a976f107a55c35fb123c1caa0f
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
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

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
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %30 = shl i32 %27, 2
  %31 = mul i32 %30, %29
  %32 = add i32 %31, %22
  %33 = shl i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = lshr i32 %35, 28
  %37 = and i32 %36, 3
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
  %48 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %45, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %82 = fmul fast float %80, %67
  %83 = fmul fast float %81, %68
  %84 = fmul fast float %82, 2.000000e+00
  %85 = fmul fast float %83, 2.000000e+00
  %86 = fsub fast float 1.000000e+00, %84
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
  %153 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 %152, i32 %141, i32 %142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %182 = fmul fast float %80, %65
  %183 = fmul fast float %81, %66
  %184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %18, float %182, float %183, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = extractvalue %dx.types.ResRet.f32 %184, 1
  %187 = extractvalue %dx.types.ResRet.f32 %184, 2
  %188 = fcmp fast ogt float %185, -1.000000e+00
  %189 = select i1 %188, float %74, float 1.000000e+00
  %190 = fadd fast float %185, 1.000000e+00
  %191 = fmul fast float %189, %190
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = fcmp fast ogt float %186, -1.000000e+00
  %194 = select i1 %193, float %74, float 1.000000e+00
  %195 = fadd fast float %186, 1.000000e+00
  %196 = fmul fast float %194, %195
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fcmp fast ogt float %187, -1.000000e+00
  %199 = select i1 %198, float %74, float 1.000000e+00
  %200 = fadd fast float %187, 1.000000e+00
  %201 = fmul fast float %199, %200
  %202 = call float @dx.op.unary.f32(i32 6, float %201)  ; FAbs(value)
  %203 = fadd fast float %65, 1.000000e+00
  %204 = fmul fast float %80, %203
  %205 = fadd fast float %66, 1.000000e+00
  %206 = fmul fast float %81, %205
  %207 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %18, float %204, float %206, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 2
  %210 = fcmp fast ogt float %208, -1.000000e+00
  %211 = select i1 %210, float %74, float 1.000000e+00
  %212 = fadd fast float %208, 1.000000e+00
  %213 = fmul fast float %211, %212
  %214 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %215 = fcmp fast ogt float %209, -1.000000e+00
  %216 = select i1 %215, float %74, float 1.000000e+00
  %217 = fadd fast float %209, 1.000000e+00
  %218 = fmul fast float %216, %217
  %219 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %220 = fsub fast float %202, %197
  %221 = fsub fast float %214, %197
  %222 = fsub fast float %192, %197
  %223 = fsub fast float %219, %197
  %224 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %225 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float %224)  ; FMax(a,b)
  %227 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %228 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %229 = call float @dx.op.binary.f32(i32 35, float %228, float %227)  ; FMax(a,b)
  %230 = fadd fast float %221, %220
  %231 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %232 = fadd fast float %223, %222
  %233 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %234 = fsub fast float %229, %233
  %235 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %236 = fsub fast float %226, %231
  %237 = call float @dx.op.unary.f32(i32 6, float %236)  ; FAbs(value)
  %238 = call float @dx.op.binary.f32(i32 35, float %237, float %235)  ; FMax(a,b)
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fmul fast float %240, 0x3FE3C6EF40000000
  %242 = frem fast float %67, 2.560000e+02
  %243 = frem fast float %68, 2.560000e+02
  %244 = fptoui float %242 to i32
  %245 = fptoui float %243 to i32
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %244, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 2
  %249 = fadd fast float %247, %241
  %250 = fadd fast float %248, %241
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 0
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %920, label %256, !dx.controlflow.hints !41

; <label>:256                                     ; preds = %58
  %257 = fptoui float %67 to i32
  %258 = fptoui float %68 to i32
  %259 = lshr i32 %257, 4
  %260 = lshr i32 %258, 4
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 0
  %263 = call i32 @dx.op.tertiary.i32(i32 49, i32 %260, i32 %262, i32 %259)  ; UMad(a,b,c)
  %264 = add nsw i32 %254, -1
  %265 = call i32 @dx.op.binary.i32(i32 37, i32 %264, i32 0)  ; IMax(a,b)
  %266 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %267 = fptoui float %266 to i32
  %268 = lshr i32 %267, 5
  %269 = call i32 @dx.op.binary.i32(i32 40, i32 %268, i32 8191)  ; UMin(a,b)
  %270 = shl i32 %269, 2
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 16
  %274 = and i32 %272, 65535
  %275 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %273, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %276 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %274, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %277 = lshr i32 %275, 5
  %278 = lshr i32 %276, 5
  %279 = call i32 @dx.op.binary.i32(i32 40, i32 %278, i32 %265)  ; UMin(a,b)
  %280 = icmp ugt i32 %277, %279
  br i1 %280, label %920, label %281

; <label>:281                                     ; preds = %256
  br label %282

; <label>:282                                     ; preds = %910, %281
  %283 = phi i32 [ %917, %910 ], [ %277, %281 ]
  %284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.i32 %284, 0
  %286 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %285, i32 %283)  ; UMad(a,b,c)
  %287 = shl i32 %286, 2
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %283, 5
  %291 = sub nsw i32 %273, %290
  %292 = call i32 @dx.op.binary.i32(i32 37, i32 %291, i32 0)  ; IMax(a,b)
  %293 = call i32 @dx.op.binary.i32(i32 38, i32 %292, i32 31)  ; IMin(a,b)
  %294 = sub nsw i32 1, %273
  %295 = add nsw i32 %294, %274
  %296 = call i32 @dx.op.binary.i32(i32 37, i32 %295, i32 0)  ; IMax(a,b)
  %297 = call i32 @dx.op.binary.i32(i32 38, i32 %296, i32 32)  ; IMin(a,b)
  %298 = and i32 %297, 31
  %299 = shl i32 -1, %298
  %300 = xor i32 %299, -1
  %301 = and i32 %293, 31
  %302 = shl i32 %300, %301
  %303 = icmp eq i32 %297, 32
  %304 = select i1 %303, i32 -1, i32 %302
  %305 = and i32 %304, %289
  %306 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %305, i8 1)  ; WaveActiveBit(value,op)
  %307 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %306)  ; WaveReadLaneFirst(value)
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %910, label %309

; <label>:309                                     ; preds = %282
  br label %310

; <label>:310                                     ; preds = %907, %309
  %311 = phi i32 [ %827, %907 ], [ 0, %309 ]
  %312 = phi i32 [ %317, %907 ], [ %307, %309 ]
  %313 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %312)  ; FirstbitLo(value)
  %314 = add i32 %313, %290
  %315 = and i32 %313, 31
  %316 = shl i32 1, %315
  %317 = xor i32 %316, %312
  %318 = mul i32 %314, 112
  %319 = add i32 %318, 16
  %320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = extractvalue %dx.types.ResRet.f32 %320, 1
  %323 = extractvalue %dx.types.ResRet.f32 %320, 2
  %324 = add i32 %318, 28
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = add i32 %318, 32
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = add i32 %318, 44
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = add i32 %318, 48
  %336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = extractvalue %dx.types.ResRet.f32 %336, 3
  %341 = add i32 %318, 64
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = extractvalue %dx.types.ResRet.f32 %342, 3
  %347 = add i32 %318, 92
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = uitofp i32 %350 to float
  %352 = lshr i32 %349, 16
  %353 = uitofp i32 %352 to float
  %354 = and i32 %326, 65535
  %355 = and i32 %326, 50331648
  %356 = icmp eq i32 %355, 33554432
  %357 = call float @dx.op.dot3.f32(i32 55, float %329, float %330, float %331, float %329, float %330, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = fsub fast float %133, %337
  %359 = fsub fast float %134, %338
  %360 = fsub fast float %135, %339
  %361 = call float @dx.op.dot3.f32(i32 55, float %358, float %359, float %360, float %329, float %330, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = fdiv fast float %361, %357
  %363 = call float @dx.op.binary.f32(i32 35, float %362, float -1.000000e+00)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float %363, float 1.000000e+00)  ; FMin(a,b)
  %365 = fmul fast float %364, %329
  %366 = fmul fast float %364, %330
  %367 = fmul fast float %364, %331
  %368 = fadd fast float %365, %337
  %369 = fadd fast float %366, %338
  %370 = fadd fast float %367, %339
  %371 = fsub fast float %368, %133
  %372 = fsub fast float %369, %134
  %373 = fsub fast float %370, %135
  %374 = call float @dx.op.dot3.f32(i32 55, float %371, float %372, float %373, float %371, float %372, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %376 = fdiv fast float 1.000000e+00, %375
  %377 = fmul fast float %371, %376
  %378 = fmul fast float %372, %376
  %379 = fmul fast float %373, %376
  br i1 %356, label %380, label %404, !dx.controlflow.hints !42

; <label>:380                                     ; preds = %310
  %381 = fmul fast float %345, %321
  %382 = fmul fast float %345, %322
  %383 = fmul fast float %345, %323
  %384 = fsub fast float %381, %133
  %385 = fadd fast float %384, %368
  %386 = fsub fast float %382, %134
  %387 = fadd fast float %386, %369
  %388 = fsub fast float %383, %135
  %389 = fadd fast float %388, %370
  %390 = call float @dx.op.dot3.f32(i32 55, float %385, float %387, float %389, float %385, float %387, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.unary.f32(i32 25, float %390)  ; Rsqrt(value)
  %392 = fmul fast float %391, %385
  %393 = fmul fast float %391, %387
  %394 = fmul fast float %391, %389
  %395 = fsub fast float %133, %368
  %396 = fsub fast float %134, %369
  %397 = fsub fast float %135, %370
  %398 = fsub fast float -0.000000e+00, %395
  %399 = fsub fast float -0.000000e+00, %396
  %400 = fsub fast float -0.000000e+00, %397
  %401 = call float @dx.op.dot3.f32(i32 55, float %398, float %399, float %400, float %321, float %322, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %402 = fcmp fast ogt float %401, 0.000000e+00
  %403 = uitofp i1 %402 to float
  br label %404

; <label>:404                                     ; preds = %380, %310
  %405 = phi float [ %403, %380 ], [ 1.000000e+00, %310 ]
  %406 = phi float [ %392, %380 ], [ %377, %310 ]
  %407 = phi float [ %393, %380 ], [ %378, %310 ]
  %408 = phi float [ %394, %380 ], [ %379, %310 ]
  %409 = call float @dx.op.dot3.f32(i32 55, float %321, float %322, float %323, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fmul fast float %409, %409
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = fsub fast float 1.000000e+00, %411
  %413 = fmul fast float %412, 5.000000e-01
  %414 = fcmp fast ogt float %409, 0.000000e+00
  %415 = fsub fast float 1.000000e+00, %413
  %416 = select i1 %414, float %413, float %415
  %417 = fmul fast float %416, %353
  %418 = fadd fast float %417, %351
  %419 = fmul fast float %418, 0x3EF0001000000000
  %420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %419, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = fmul fast float %409, %343
  %423 = fadd fast float %422, %344
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = select i1 %356, float %424, float 1.000000e+00
  %426 = fmul fast float %375, %340
  %427 = fsub fast float 1.000000e+00, %426
  %428 = fmul fast float %427, %346
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = fmul fast float %429, %425
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fsub fast float 3.000000e+00, %431
  %433 = fmul fast float %421, %405
  %434 = fmul fast float %430, %430
  %435 = fmul fast float %434, %433
  %436 = fmul fast float %435, %432
  %437 = icmp ne i32 %354, 255
  %438 = call float @dx.op.binary.f32(i32 36, float %436, float %436)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %436, float %438)  ; FMin(a,b)
  %440 = fcmp fast ogt float %439, 0.000000e+00
  %441 = and i1 %437, %440
  br i1 %441, label %442, label %541, !dx.controlflow.hints !43

; <label>:442                                     ; preds = %404
  %443 = select i1 %356, float 1.000000e+00, float %424
  %444 = mul nuw nsw i32 %354, 176
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = extractvalue %dx.types.ResRet.f32 %445, 3
  %450 = add nuw nsw i32 %444, 16
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = add nuw nsw i32 %444, 32
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = add nuw nsw i32 %444, 48
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add nuw nsw i32 %444, 64
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add nuw nsw i32 %444, 80
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = add nuw nsw i32 %444, 96
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = bitcast float %453 to i32
  %484 = fmul fast float %458, %179
  %485 = fmul fast float %458, %180
  %486 = fmul fast float %458, %181
  %487 = fadd fast float %484, %133
  %488 = fadd fast float %485, %134
  %489 = fadd fast float %486, %135
  %490 = fmul fast float %487, %461
  %491 = call float @dx.op.tertiary.f32(i32 46, float %488, float %467, float %490)  ; FMad(a,b,c)
  %492 = call float @dx.op.tertiary.f32(i32 46, float %489, float %473, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %492, %479
  %494 = fmul fast float %487, %462
  %495 = call float @dx.op.tertiary.f32(i32 46, float %488, float %468, float %494)  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %489, float %474, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %496, %480
  %498 = fmul fast float %487, %463
  %499 = call float @dx.op.tertiary.f32(i32 46, float %488, float %469, float %498)  ; FMad(a,b,c)
  %500 = call float @dx.op.tertiary.f32(i32 46, float %489, float %475, float %499)  ; FMad(a,b,c)
  %501 = fadd fast float %500, %481
  %502 = fmul fast float %487, %464
  %503 = call float @dx.op.tertiary.f32(i32 46, float %488, float %470, float %502)  ; FMad(a,b,c)
  %504 = call float @dx.op.tertiary.f32(i32 46, float %489, float %476, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %504, %482
  %506 = fdiv fast float %493, %505
  %507 = fdiv fast float %497, %505
  %508 = fdiv fast float %501, %505
  %509 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %508)  ; FMax(a,b)
  %510 = fmul fast float %251, 0x401921FB60000000
  %511 = call float @dx.op.unary.f32(i32 13, float %510)  ; Sin(value)
  %512 = call float @dx.op.unary.f32(i32 12, float %510)  ; Cos(value)
  %513 = fsub fast float -0.000000e+00, %511
  %514 = fmul fast float %448, 5.000000e-01
  %515 = call float @dx.op.dot2.f32(i32 54, float %251, float %251, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = fmul fast float %516, 0x404A7DD040000000
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fmul fast float %518, %457
  %520 = fadd fast float %519, %514
  %521 = call float @dx.op.tertiary.f32(i32 46, float %520, float %513, float 0.000000e+00)  ; FMad(a,b,c)
  %522 = call float @dx.op.tertiary.f32(i32 46, float %520, float %512, float 0.000000e+00)  ; FMad(a,b,c)
  %523 = fadd fast float %521, %506
  %524 = fadd fast float %522, %507
  %525 = fmul fast float %523, %452
  %526 = fmul fast float %524, %452
  %527 = call float @dx.op.binary.f32(i32 35, float %525, float %448)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 35, float %526, float %448)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 36, float %527, float %449)  ; FMin(a,b)
  %530 = call float @dx.op.binary.f32(i32 36, float %528, float %449)  ; FMin(a,b)
  %531 = fadd fast float %529, %446
  %532 = fadd fast float %530, %447
  %533 = uitofp i32 %483 to float
  %534 = fadd fast float %509, %456
  %535 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %19, float %531, float %532, float %533, float undef, i32 0, i32 0, i32 undef, float %534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = fadd fast float %536, -1.000000e+00
  %538 = fmul fast float %537, %443
  %539 = fadd fast float %538, 1.000000e+00
  %540 = fmul fast float %539, %436
  br label %541

; <label>:541                                     ; preds = %442, %404
  %542 = phi float [ %540, %442 ], [ %436, %404 ]
  %543 = call float @dx.op.binary.f32(i32 36, float %542, float %542)  ; FMin(a,b)
  %544 = call float @dx.op.binary.f32(i32 36, float %542, float %543)  ; FMin(a,b)
  %545 = fcmp fast ogt float %544, 0.000000e+00
  %546 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %547 = fcmp fast ogt float %546, 0.000000e+00
  %548 = and i1 %545, %547
  br i1 %548, label %549, label %818, !dx.controlflow.hints !44

; <label>:549                                     ; preds = %541
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 1
  %554 = select i1 %71, float %551, float %553
  %555 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %556 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %557 = select i1 %71, float %555, float %556
  %558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.i32 %558, 0
  %560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.i32 %560, 0
  %562 = select i1 %71, i32 %559, i32 %561
  %563 = fcmp fast olt float %554, 5.000000e-01
  %564 = icmp eq i32 %562, 0
  %565 = or i1 %563, %564
  br i1 %565, label %813, label %566, !dx.controlflow.hints !45

; <label>:566                                     ; preds = %549
  %567 = fsub fast float %337, %133
  %568 = fsub fast float %338, %134
  %569 = fsub fast float %339, %135
  %570 = fmul fast float %567, %567
  %571 = fmul fast float %568, %568
  %572 = fadd fast float %570, %571
  %573 = fmul fast float %569, %569
  %574 = fadd fast float %572, %573
  %575 = call float @dx.op.unary.f32(i32 24, float %574)  ; Sqrt(value)
  %576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.i32 %576, 0
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %554, %334
  %580 = fdiv fast float %579, %575
  %581 = call float @dx.op.binary.f32(i32 36, float %580, float 1.000000e+01)  ; FMin(a,b)
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %596 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %600 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %601 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = extractvalue %dx.types.CBufRet.f32 %602, 3
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %610 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %611 = extractvalue %dx.types.CBufRet.f32 %607, 3
  %612 = select i1 %71, float %583, float %598
  %613 = select i1 %71, float %588, float %603
  %614 = select i1 %71, float %593, float %608
  %615 = select i1 %71, float %584, float %599
  %616 = select i1 %71, float %589, float %604
  %617 = select i1 %71, float %594, float %609
  %618 = select i1 %71, float %585, float %600
  %619 = select i1 %71, float %590, float %605
  %620 = select i1 %71, float %595, float %610
  %621 = select i1 %71, float %586, float %601
  %622 = select i1 %71, float %591, float %606
  %623 = select i1 %71, float %596, float %611
  %624 = fmul fast float %252, 0x401061CAC0000000
  %625 = fmul fast float %252, 0x4023E1D7E0000000
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 0
  %628 = extractvalue %dx.types.CBufRet.f32 %626, 1
  %629 = extractvalue %dx.types.CBufRet.f32 %626, 2
  %630 = extractvalue %dx.types.CBufRet.f32 %626, 3
  %631 = fsub fast float -0.000000e+00, %377
  %632 = fmul fast float %379, %631
  %633 = fmul fast float %377, %631
  %634 = fmul fast float %378, %378
  %635 = fsub fast float %633, %634
  %636 = fdiv fast float 1.000000e+00, %78
  %637 = fmul fast float %629, %67
  %638 = fmul fast float %630, %68
  %639 = fmul fast float %554, %377
  %640 = fmul fast float %554, %379
  %641 = fadd fast float %639, %133
  %642 = fadd fast float %640, %135
  %643 = fadd fast float %625, 5.000000e-01
  %644 = call float @dx.op.unary.f32(i32 22, float %643)  ; Frc(value)
  %645 = bitcast float %644 to i32
  %646 = ashr i32 %645, 1
  %647 = add nsw i32 %646, 532487669
  %648 = bitcast i32 %647 to float
  %649 = fmul fast float %648, %581
  %650 = fadd fast float %624, 5.000000e-01
  %651 = call float @dx.op.unary.f32(i32 22, float %650)  ; Frc(value)
  %652 = fmul fast float %651, 0x401921FB60000000
  %653 = call float @dx.op.unary.f32(i32 12, float %652)  ; Cos(value)
  %654 = fmul fast float %653, %653
  %655 = fsub fast float 1.000000e+00, %654
  %656 = bitcast float %655 to i32
  %657 = ashr i32 %656, 1
  %658 = add nsw i32 %657, 532487669
  %659 = bitcast i32 %658 to float
  %660 = fmul fast float %649, %653
  %661 = fmul fast float %660, %378
  %662 = fmul fast float %660, %631
  %663 = fadd fast float %641, %661
  %664 = fmul fast float %659, %649
  %665 = fmul fast float %632, %664
  %666 = fmul fast float %664, %379
  %667 = fmul fast float %664, %635
  %668 = fsub fast float %663, %665
  %669 = fadd fast float %666, %554
  %670 = fmul fast float %669, %378
  %671 = fadd fast float %662, %134
  %672 = fadd fast float %671, %670
  %673 = fadd fast float %642, %667
  %674 = fmul fast float %668, %612
  %675 = call float @dx.op.tertiary.f32(i32 46, float %672, float %615, float %674)  ; FMad(a,b,c)
  %676 = call float @dx.op.tertiary.f32(i32 46, float %673, float %618, float %675)  ; FMad(a,b,c)
  %677 = fadd fast float %676, %621
  %678 = fmul fast float %668, %613
  %679 = call float @dx.op.tertiary.f32(i32 46, float %672, float %616, float %678)  ; FMad(a,b,c)
  %680 = call float @dx.op.tertiary.f32(i32 46, float %673, float %619, float %679)  ; FMad(a,b,c)
  %681 = fadd fast float %680, %622
  %682 = fmul fast float %668, %614
  %683 = call float @dx.op.tertiary.f32(i32 46, float %672, float %617, float %682)  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float %673, float %620, float %683)  ; FMad(a,b,c)
  %685 = fadd fast float %684, %623
  %686 = fdiv fast float 1.000000e+00, %685
  %687 = fmul fast float %677, 5.000000e-01
  %688 = fmul fast float %681, -5.000000e-01
  %689 = fmul fast float %687, %686
  %690 = fmul fast float %688, %686
  %691 = fsub fast float 5.000000e-01, %637
  %692 = fadd fast float %691, %689
  %693 = fsub fast float 5.000000e-01, %638
  %694 = fadd fast float %693, %690
  %695 = fsub fast float %686, %636
  %696 = call float @dx.op.dot2.f32(i32 54, float %692, float %694, float %692, float %694)  ; Dot2(ax,ay,bx,by)
  %697 = call float @dx.op.binary.f32(i32 35, float %696, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %698 = call float @dx.op.dot2.f32(i32 54, float %627, float %628, float %627, float %628)  ; Dot2(ax,ay,bx,by)
  %699 = fmul fast float %698, %697
  %700 = call float @dx.op.unary.f32(i32 25, float %699)  ; Rsqrt(value)
  %701 = fmul fast float %700, %692
  %702 = fmul fast float %700, %694
  %703 = fadd fast float %701, %637
  %704 = fadd fast float %702, %638
  %705 = fmul fast float %692, %627
  %706 = fmul fast float %694, %628
  %707 = fmul fast float %705, %705
  %708 = fmul fast float %706, %706
  %709 = fadd fast float %707, %708
  %710 = call float @dx.op.unary.f32(i32 24, float %709)  ; Sqrt(value)
  %711 = fdiv fast float 1.000000e+00, %710
  %712 = fmul fast float %710, 3.906250e-03
  %713 = fmul fast float %238, 0x3F70624DE0000000
  %714 = fadd fast float %713, 0x3F70624DE0000000
  %715 = icmp sgt i32 %562, -1
  br i1 %715, label %716, label %778

; <label>:716                                     ; preds = %566
  br label %717

; <label>:717                                     ; preds = %774, %716
  %718 = phi float [ %749, %774 ], [ %78, %716 ]
  %719 = phi float [ %736, %774 ], [ %78, %716 ]
  %720 = phi float [ %719, %774 ], [ %78, %716 ]
  %721 = phi i32 [ %775, %774 ], [ 0, %716 ]
  %722 = sitofp i32 %721 to float
  %723 = fadd fast float %252, 5.000000e-01
  %724 = call float @dx.op.unary.f32(i32 22, float %723)  ; Frc(value)
  %725 = fadd fast float %722, %724
  %726 = sitofp i32 %562 to float
  %727 = fdiv fast float %725, %726
  %728 = fmul fast float %727, %727
  %729 = call float @dx.op.binary.f32(i32 36, float %728, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %730 = fmul fast float %729, %692
  %731 = fmul fast float %729, %694
  %732 = fmul fast float %729, %695
  %733 = fadd fast float %730, %703
  %734 = fadd fast float %731, %704
  %735 = fadd fast float %732, %636
  %736 = fdiv fast float 1.000000e+00, %735
  %737 = icmp ne i32 %577, 0
  %738 = fmul fast float %712, %729
  %739 = call float @dx.op.binary.f32(i32 36, float %738, float %578)  ; FMin(a,b)
  %740 = select i1 %737, float %739, float 0.000000e+00
  %741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %733, float %734, float undef, float undef, i32 0, i32 0, i32 undef, float %740)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = fcmp fast ogt float %742, -1.000000e+00
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 1
  %746 = select i1 %743, float %745, float 1.000000e+00
  %747 = fadd fast float %742, 1.000000e+00
  %748 = fmul fast float %746, %747
  %749 = call float @dx.op.unary.f32(i32 6, float %748)  ; FAbs(value)
  %750 = fmul fast float %749, %714
  %751 = fsub fast float %736, %749
  %752 = fsub fast float %751, %750
  %753 = fcmp fast ogt float %752, 0.000000e+00
  %754 = fcmp fast ogt float %557, 0.000000e+00
  br i1 %754, label %755, label %758, !dx.controlflow.hints !46

; <label>:755                                     ; preds = %717
  %756 = fsub fast float %736, %720
  %757 = call float @dx.op.binary.f32(i32 35, float %756, float %557)  ; FMax(a,b)
  br label %758

; <label>:758                                     ; preds = %755, %717
  %759 = phi float [ %757, %755 ], [ %554, %717 ]
  %760 = fcmp fast olt float %752, %759
  %761 = fcmp uge float %742, -1.000000e+00
  %762 = or i1 %71, %761
  %763 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %764 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %765 = fcmp fast oeq float %733, %763
  %766 = fcmp fast oeq float %734, %764
  %767 = and i1 %765, %766
  %768 = and i1 %762, %767
  %769 = and i1 %753, %760
  %770 = and i1 %769, %768
  %771 = fcmp fast ogt float %729, %711
  %772 = and i1 %771, %770
  %773 = zext i1 %772 to i32
  br i1 %772, label %777, label %774, !dx.controlflow.hints !47

; <label>:774                                     ; preds = %758
  %775 = add nuw nsw i32 %721, 1
  %776 = icmp slt i32 %721, %562
  br i1 %776, label %717, label %777

; <label>:777                                     ; preds = %774, %758
  br label %778

; <label>:778                                     ; preds = %777, %566
  %779 = phi i32 [ 0, %566 ], [ %773, %777 ]
  %780 = phi float [ %78, %566 ], [ %749, %777 ]
  %781 = phi float [ %78, %566 ], [ %718, %777 ]
  %782 = phi float [ %78, %566 ], [ %736, %777 ]
  %783 = phi float [ %78, %566 ], [ %719, %777 ]
  %784 = fsub fast float %783, %781
  %785 = fsub fast float %782, %780
  %786 = fsub fast float %784, %785
  %787 = fcmp fast une float %786, 0.000000e+00
  %788 = fmul fast float %784, %782
  %789 = fmul fast float %783, %785
  %790 = fsub fast float %788, %789
  %791 = fdiv fast float 1.000000e+00, %786
  %792 = fmul fast float %790, %791
  %793 = select i1 %787, float %792, float %782
  %794 = fdiv fast float 1.000000e+00, %793
  %795 = fsub fast float %794, %636
  %796 = fdiv fast float %795, %695
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %798 = fmul fast float %797, %692
  %799 = fmul fast float %797, %694
  %800 = fadd fast float %798, %703
  %801 = fadd fast float %799, %704
  %802 = fadd fast float %800, -5.000000e-01
  %803 = fadd fast float %801, -5.000000e-01
  %804 = call float @dx.op.unary.f32(i32 6, float %802)  ; FAbs(value)
  %805 = call float @dx.op.unary.f32(i32 6, float %803)  ; FAbs(value)
  %806 = fadd fast float %804, -5.000000e-01
  %807 = fadd fast float %805, -5.000000e-01
  %808 = call float @dx.op.binary.f32(i32 35, float %806, float %807)  ; FMax(a,b)
  %809 = fcmp fast olt float %808, 0.000000e+00
  %810 = icmp ne i32 %779, 0
  %811 = and i1 %810, %809
  %812 = select i1 %811, float 0.000000e+00, float 1.000000e+00
  br label %813

; <label>:813                                     ; preds = %778, %549
  %814 = phi float [ %812, %778 ], [ 1.000000e+00, %549 ]
  %815 = fmul fast float %814, %542
  %816 = fmul fast float %814, %542
  %817 = fmul fast float %814, %542
  br label %818

; <label>:818                                     ; preds = %813, %541
  %819 = phi float [ %815, %813 ], [ %542, %541 ]
  %820 = phi float [ %816, %813 ], [ %542, %541 ]
  %821 = phi float [ %817, %813 ], [ %542, %541 ]
  %822 = call float @dx.op.binary.f32(i32 36, float %820, float %821)  ; FMin(a,b)
  %823 = call float @dx.op.binary.f32(i32 36, float %819, float %822)  ; FMin(a,b)
  %824 = fcmp fast ogt float %823, 0x3F10000000000000
  %825 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %824)  ; WaveAnyTrue(cond)
  %826 = select i1 %825, i32 %316, i32 0
  %827 = or i32 %311, %826
  %828 = lshr i32 %257, 5
  %829 = lshr i32 %258, 5
  %830 = fcmp fast olt float %819, 0x3F10000000000000
  %831 = call i1 @dx.op.waveAllTrue(i32 114, i1 %830)  ; WaveAllTrue(cond)
  %832 = fcmp fast ogt float %819, 0x3FEFFF8000000000
  %833 = call i1 @dx.op.waveAllTrue(i32 114, i1 %832)  ; WaveAllTrue(cond)
  %834 = or i1 %831, %833
  %835 = xor i1 %834, true
  %836 = lshr i32 %258, 1
  %837 = and i32 %836, 8
  %838 = lshr i32 %257, 2
  %839 = and i32 %838, 4
  %840 = or i32 %839, %37
  %841 = or i32 %840, %837
  %842 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %842, label %843, label %882, !dx.controlflow.hints !48

; <label>:843                                     ; preds = %818
  %844 = shl i32 1, %841
  %845 = select i1 %833, i32 %844, i32 0
  %846 = shl i32 65536, %841
  %847 = select i1 %831, i32 %846, i32 0
  %848 = or i32 %845, %847
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %852, label %850, !dx.controlflow.hints !49

; <label>:850                                     ; preds = %843
  %851 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %828, i32 %829, i32 %314, i32 %848)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %852

; <label>:852                                     ; preds = %850, %843
  br i1 %834, label %882, label %853

; <label>:853                                     ; preds = %852
  br label %854

; <label>:854                                     ; preds = %879, %853
  %855 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %828, i32 %829, i32 %314, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %856 = and i32 %855, 3
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %879, !dx.controlflow.hints !50

; <label>:858                                     ; preds = %854
  %859 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.i32 %860, 3
  %862 = call i32 @dx.op.binary.i32(i32 40, i32 %861, i32 %859)  ; UMin(a,b)
  %863 = extractvalue %dx.types.CBufRet.i32 %860, 2
  %864 = udiv i32 %862, %863
  %865 = urem i32 %862, %863
  %866 = extractvalue %dx.types.CBufRet.i32 %860, 1
  %867 = urem i32 %865, %866
  %868 = udiv i32 %865, %866
  %869 = shl i32 %867, 6
  %870 = and i32 %869, 32704
  %871 = shl i32 %868, 15
  %872 = and i32 %871, 8355840
  %873 = shl i32 %864, 23
  %874 = and i32 %873, 2139095040
  %875 = or i32 %874, %870
  %876 = or i32 %875, %872
  %877 = or i32 %876, 3
  %878 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %828, i32 %829, i32 %314, i32 %877)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %882

; <label>:879                                     ; preds = %854
  %880 = icmp eq i32 %856, 3
  br i1 %880, label %881, label %854, !dx.controlflow.hints !51

; <label>:881                                     ; preds = %879
  br label %882

; <label>:882                                     ; preds = %881, %858, %852, %818
  %883 = phi i32 [ 0, %852 ], [ %877, %858 ], [ 0, %818 ], [ %855, %881 ]
  %884 = phi i1 [ false, %852 ], [ %835, %858 ], [ %835, %818 ], [ %835, %881 ]
  br i1 %884, label %885, label %907, !dx.controlflow.hints !52

; <label>:885                                     ; preds = %882
  %886 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %883)  ; WaveReadLaneFirst(value)
  %887 = lshr i32 %257, 1
  %888 = and i32 %887, 15
  %889 = and i32 %836, 15
  %890 = and i32 %257, 1
  %891 = shl i32 %258, 1
  %892 = and i32 %891, 2
  %893 = or i32 %892, %890
  %894 = lshr i32 %886, 2
  %895 = and i32 %894, 8176
  %896 = lshr i32 %886, 11
  %897 = and i32 %896, 4080
  %898 = or i32 %895, %888
  %899 = or i32 %897, %889
  %900 = lshr i32 %886, 21
  %901 = and i32 %900, 1020
  %902 = or i32 %893, %901
  %903 = fmul fast float %819, 2.550000e+02
  %904 = fadd fast float %903, %251
  %905 = call float @dx.op.unary.f32(i32 27, float %904)  ; Round_ni(value)
  %906 = fmul fast float %905, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %898, i32 %899, i32 %902, float %906, float %906, float %906, float %906, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %907

; <label>:907                                     ; preds = %885, %882
  %908 = icmp eq i32 %312, %316
  br i1 %908, label %909, label %310, !llvm.loop !53

; <label>:909                                     ; preds = %907
  br label %910

; <label>:910                                     ; preds = %909, %282
  %911 = phi i32 [ 0, %282 ], [ %827, %909 ]
  %912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.i32 %912, 0
  %914 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %913, i32 %283)  ; UMad(a,b,c)
  %915 = shl i32 %914, 2
  %916 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %915, i32 undef, i32 undef, i32 %911)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %917 = add i32 %283, 1
  %918 = icmp ugt i32 %917, %279
  br i1 %918, label %919, label %282

; <label>:919                                     ; preds = %910
  br label %920

; <label>:920                                     ; preds = %919, %256, %58
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
!dx.entryPoints = !{!33}

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
!29 = !{!30, !31, !32}
!30 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !34}
!34 = !{i32 0, i64 524560, i32 4, !35}
!35 = !{i32 8, i32 8, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}

