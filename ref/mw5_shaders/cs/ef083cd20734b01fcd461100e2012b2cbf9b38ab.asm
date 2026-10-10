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
; shader hash: 7f8738f0bef4ff7e59def4a0de1fc584
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
  br i1 %256, label %923, label %257, !dx.controlflow.hints !42

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
  br i1 %281, label %923, label %282

; <label>:282                                     ; preds = %257
  br label %283

; <label>:283                                     ; preds = %913, %282
  %284 = phi i32 [ %920, %913 ], [ %278, %282 ]
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
  br i1 %309, label %913, label %310

; <label>:310                                     ; preds = %283
  br label %311

; <label>:311                                     ; preds = %910, %310
  %312 = phi i32 [ %828, %910 ], [ 0, %310 ]
  %313 = phi i32 [ %318, %910 ], [ %308, %310 ]
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
  %426 = select i1 %357, float %425, float 1.000000e+00
  %427 = fmul fast float %376, %341
  %428 = fsub fast float 1.000000e+00, %427
  %429 = fmul fast float %428, %347
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, %426
  %432 = fmul fast float %431, 2.000000e+00
  %433 = fsub fast float 3.000000e+00, %432
  %434 = fmul fast float %422, %406
  %435 = fmul fast float %431, %431
  %436 = fmul fast float %435, %434
  %437 = fmul fast float %436, %433
  %438 = icmp ne i32 %355, 255
  %439 = call float @dx.op.binary.f32(i32 36, float %437, float %437)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %437, float %439)  ; FMin(a,b)
  %441 = fcmp fast ogt float %440, 0.000000e+00
  %442 = and i1 %438, %441
  br i1 %442, label %443, label %542, !dx.controlflow.hints !44

; <label>:443                                     ; preds = %405
  %444 = select i1 %357, float 1.000000e+00, float %425
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
  %460 = add nuw nsw i32 %445, 48
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = add nuw nsw i32 %445, 64
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = add nuw nsw i32 %445, 80
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  %478 = add nuw nsw i32 %445, 96
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = extractvalue %dx.types.ResRet.f32 %479, 3
  %484 = bitcast float %454 to i32
  %485 = fmul fast float %459, %180
  %486 = fmul fast float %459, %181
  %487 = fmul fast float %459, %182
  %488 = fadd fast float %485, %134
  %489 = fadd fast float %486, %135
  %490 = fadd fast float %487, %136
  %491 = fmul fast float %488, %462
  %492 = call float @dx.op.tertiary.f32(i32 46, float %489, float %468, float %491)  ; FMad(a,b,c)
  %493 = call float @dx.op.tertiary.f32(i32 46, float %490, float %474, float %492)  ; FMad(a,b,c)
  %494 = fadd fast float %493, %480
  %495 = fmul fast float %488, %463
  %496 = call float @dx.op.tertiary.f32(i32 46, float %489, float %469, float %495)  ; FMad(a,b,c)
  %497 = call float @dx.op.tertiary.f32(i32 46, float %490, float %475, float %496)  ; FMad(a,b,c)
  %498 = fadd fast float %497, %481
  %499 = fmul fast float %488, %464
  %500 = call float @dx.op.tertiary.f32(i32 46, float %489, float %470, float %499)  ; FMad(a,b,c)
  %501 = call float @dx.op.tertiary.f32(i32 46, float %490, float %476, float %500)  ; FMad(a,b,c)
  %502 = fadd fast float %501, %482
  %503 = fmul fast float %488, %465
  %504 = call float @dx.op.tertiary.f32(i32 46, float %489, float %471, float %503)  ; FMad(a,b,c)
  %505 = call float @dx.op.tertiary.f32(i32 46, float %490, float %477, float %504)  ; FMad(a,b,c)
  %506 = fadd fast float %505, %483
  %507 = fdiv fast float %494, %506
  %508 = fdiv fast float %498, %506
  %509 = fdiv fast float %502, %506
  %510 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %509)  ; FMax(a,b)
  %511 = fmul fast float %252, 0x401921FB60000000
  %512 = call float @dx.op.unary.f32(i32 13, float %511)  ; Sin(value)
  %513 = call float @dx.op.unary.f32(i32 12, float %511)  ; Cos(value)
  %514 = fsub fast float -0.000000e+00, %512
  %515 = fmul fast float %449, 5.000000e-01
  %516 = call float @dx.op.dot2.f32(i32 54, float %252, float %252, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = fmul fast float %517, 0x404A7DD040000000
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = fmul fast float %519, %458
  %521 = fadd fast float %520, %515
  %522 = call float @dx.op.tertiary.f32(i32 46, float %521, float %514, float 0.000000e+00)  ; FMad(a,b,c)
  %523 = call float @dx.op.tertiary.f32(i32 46, float %521, float %513, float 0.000000e+00)  ; FMad(a,b,c)
  %524 = fadd fast float %522, %507
  %525 = fadd fast float %523, %508
  %526 = fmul fast float %524, %453
  %527 = fmul fast float %525, %453
  %528 = call float @dx.op.binary.f32(i32 35, float %526, float %449)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 35, float %527, float %449)  ; FMax(a,b)
  %530 = call float @dx.op.binary.f32(i32 36, float %528, float %450)  ; FMin(a,b)
  %531 = call float @dx.op.binary.f32(i32 36, float %529, float %450)  ; FMin(a,b)
  %532 = fadd fast float %530, %447
  %533 = fadd fast float %531, %448
  %534 = uitofp i32 %484 to float
  %535 = fadd fast float %510, %457
  %536 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %20, float %532, float %533, float %534, float undef, i32 0, i32 0, i32 undef, float %535)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = fadd fast float %537, -1.000000e+00
  %539 = fmul fast float %538, %444
  %540 = fadd fast float %539, 1.000000e+00
  %541 = fmul fast float %540, %437
  br label %542

; <label>:542                                     ; preds = %443, %405
  %543 = phi float [ %541, %443 ], [ %437, %405 ]
  %544 = call float @dx.op.binary.f32(i32 36, float %543, float %543)  ; FMin(a,b)
  %545 = call float @dx.op.binary.f32(i32 36, float %543, float %544)  ; FMin(a,b)
  %546 = fcmp fast ogt float %545, 0.000000e+00
  %547 = call float @dx.op.dot3.f32(i32 55, float %180, float %181, float %182, float %378, float %379, float %380)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = fcmp fast ogt float %547, 0.000000e+00
  %549 = and i1 %546, %548
  br i1 %549, label %550, label %819, !dx.controlflow.hints !45

; <label>:550                                     ; preds = %542
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %555 = select i1 %72, float %552, float %554
  %556 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %557 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %558 = select i1 %72, float %556, float %557
  %559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.i32 %559, 0
  %561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.i32 %561, 0
  %563 = select i1 %72, i32 %560, i32 %562
  %564 = fcmp fast olt float %555, 5.000000e-01
  %565 = icmp eq i32 %563, 0
  %566 = or i1 %564, %565
  br i1 %566, label %814, label %567, !dx.controlflow.hints !46

; <label>:567                                     ; preds = %550
  %568 = fsub fast float %338, %134
  %569 = fsub fast float %339, %135
  %570 = fsub fast float %340, %136
  %571 = fmul fast float %568, %568
  %572 = fmul fast float %569, %569
  %573 = fadd fast float %571, %572
  %574 = fmul fast float %570, %570
  %575 = fadd fast float %573, %574
  %576 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.i32 %577, 0
  %579 = uitofp i32 %578 to float
  %580 = fmul fast float %555, %335
  %581 = fdiv fast float %580, %576
  %582 = call float @dx.op.binary.f32(i32 36, float %581, float 1.000000e+01)  ; FMin(a,b)
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %587 = extractvalue %dx.types.CBufRet.f32 %583, 3
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %591 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %592 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %596 = extractvalue %dx.types.CBufRet.f32 %593, 2
  %597 = extractvalue %dx.types.CBufRet.f32 %593, 3
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %602 = extractvalue %dx.types.CBufRet.f32 %598, 3
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %607 = extractvalue %dx.types.CBufRet.f32 %603, 3
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 0
  %610 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %611 = extractvalue %dx.types.CBufRet.f32 %608, 2
  %612 = extractvalue %dx.types.CBufRet.f32 %608, 3
  %613 = select i1 %72, float %584, float %599
  %614 = select i1 %72, float %589, float %604
  %615 = select i1 %72, float %594, float %609
  %616 = select i1 %72, float %585, float %600
  %617 = select i1 %72, float %590, float %605
  %618 = select i1 %72, float %595, float %610
  %619 = select i1 %72, float %586, float %601
  %620 = select i1 %72, float %591, float %606
  %621 = select i1 %72, float %596, float %611
  %622 = select i1 %72, float %587, float %602
  %623 = select i1 %72, float %592, float %607
  %624 = select i1 %72, float %597, float %612
  %625 = fmul fast float %253, 0x401061CAC0000000
  %626 = fmul fast float %253, 0x4023E1D7E0000000
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %630 = extractvalue %dx.types.CBufRet.f32 %627, 2
  %631 = extractvalue %dx.types.CBufRet.f32 %627, 3
  %632 = fsub fast float -0.000000e+00, %378
  %633 = fmul fast float %380, %632
  %634 = fmul fast float %378, %632
  %635 = fmul fast float %379, %379
  %636 = fsub fast float %634, %635
  %637 = fdiv fast float 1.000000e+00, %79
  %638 = fmul fast float %630, %68
  %639 = fmul fast float %631, %69
  %640 = fmul fast float %555, %378
  %641 = fmul fast float %555, %380
  %642 = fadd fast float %640, %134
  %643 = fadd fast float %641, %136
  %644 = fadd fast float %626, 5.000000e-01
  %645 = call float @dx.op.unary.f32(i32 22, float %644)  ; Frc(value)
  %646 = bitcast float %645 to i32
  %647 = ashr i32 %646, 1
  %648 = add nsw i32 %647, 532487669
  %649 = bitcast i32 %648 to float
  %650 = fmul fast float %649, %582
  %651 = fadd fast float %625, 5.000000e-01
  %652 = call float @dx.op.unary.f32(i32 22, float %651)  ; Frc(value)
  %653 = fmul fast float %652, 0x401921FB60000000
  %654 = call float @dx.op.unary.f32(i32 12, float %653)  ; Cos(value)
  %655 = fmul fast float %654, %654
  %656 = fsub fast float 1.000000e+00, %655
  %657 = bitcast float %656 to i32
  %658 = ashr i32 %657, 1
  %659 = add nsw i32 %658, 532487669
  %660 = bitcast i32 %659 to float
  %661 = fmul fast float %650, %654
  %662 = fmul fast float %661, %379
  %663 = fmul fast float %661, %632
  %664 = fadd fast float %642, %662
  %665 = fmul fast float %660, %650
  %666 = fmul fast float %633, %665
  %667 = fmul fast float %665, %380
  %668 = fmul fast float %665, %636
  %669 = fsub fast float %664, %666
  %670 = fadd fast float %667, %555
  %671 = fmul fast float %670, %379
  %672 = fadd fast float %663, %135
  %673 = fadd fast float %672, %671
  %674 = fadd fast float %643, %668
  %675 = fmul fast float %669, %613
  %676 = call float @dx.op.tertiary.f32(i32 46, float %673, float %616, float %675)  ; FMad(a,b,c)
  %677 = call float @dx.op.tertiary.f32(i32 46, float %674, float %619, float %676)  ; FMad(a,b,c)
  %678 = fadd fast float %677, %622
  %679 = fmul fast float %669, %614
  %680 = call float @dx.op.tertiary.f32(i32 46, float %673, float %617, float %679)  ; FMad(a,b,c)
  %681 = call float @dx.op.tertiary.f32(i32 46, float %674, float %620, float %680)  ; FMad(a,b,c)
  %682 = fadd fast float %681, %623
  %683 = fmul fast float %669, %615
  %684 = call float @dx.op.tertiary.f32(i32 46, float %673, float %618, float %683)  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float %674, float %621, float %684)  ; FMad(a,b,c)
  %686 = fadd fast float %685, %624
  %687 = fdiv fast float 1.000000e+00, %686
  %688 = fmul fast float %678, 5.000000e-01
  %689 = fmul fast float %682, -5.000000e-01
  %690 = fmul fast float %688, %687
  %691 = fmul fast float %689, %687
  %692 = fsub fast float 5.000000e-01, %638
  %693 = fadd fast float %692, %690
  %694 = fsub fast float 5.000000e-01, %639
  %695 = fadd fast float %694, %691
  %696 = fsub fast float %687, %637
  %697 = call float @dx.op.dot2.f32(i32 54, float %693, float %695, float %693, float %695)  ; Dot2(ax,ay,bx,by)
  %698 = call float @dx.op.binary.f32(i32 35, float %697, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %699 = call float @dx.op.dot2.f32(i32 54, float %628, float %629, float %628, float %629)  ; Dot2(ax,ay,bx,by)
  %700 = fmul fast float %699, %698
  %701 = call float @dx.op.unary.f32(i32 25, float %700)  ; Rsqrt(value)
  %702 = fmul fast float %701, %693
  %703 = fmul fast float %701, %695
  %704 = fadd fast float %702, %638
  %705 = fadd fast float %703, %639
  %706 = fmul fast float %693, %628
  %707 = fmul fast float %695, %629
  %708 = fmul fast float %706, %706
  %709 = fmul fast float %707, %707
  %710 = fadd fast float %708, %709
  %711 = call float @dx.op.unary.f32(i32 24, float %710)  ; Sqrt(value)
  %712 = fdiv fast float 1.000000e+00, %711
  %713 = fmul fast float %711, 3.906250e-03
  %714 = fmul fast float %239, 0x3F70624DE0000000
  %715 = fadd fast float %714, 0x3F70624DE0000000
  %716 = icmp sgt i32 %563, -1
  br i1 %716, label %717, label %779

; <label>:717                                     ; preds = %567
  br label %718

; <label>:718                                     ; preds = %775, %717
  %719 = phi float [ %750, %775 ], [ %79, %717 ]
  %720 = phi float [ %737, %775 ], [ %79, %717 ]
  %721 = phi float [ %720, %775 ], [ %79, %717 ]
  %722 = phi i32 [ %776, %775 ], [ 0, %717 ]
  %723 = sitofp i32 %722 to float
  %724 = fadd fast float %253, 5.000000e-01
  %725 = call float @dx.op.unary.f32(i32 22, float %724)  ; Frc(value)
  %726 = fadd fast float %723, %725
  %727 = sitofp i32 %563 to float
  %728 = fdiv fast float %726, %727
  %729 = fmul fast float %728, %728
  %730 = call float @dx.op.binary.f32(i32 36, float %729, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %731 = fmul fast float %730, %693
  %732 = fmul fast float %730, %695
  %733 = fmul fast float %730, %696
  %734 = fadd fast float %731, %704
  %735 = fadd fast float %732, %705
  %736 = fadd fast float %733, %637
  %737 = fdiv fast float 1.000000e+00, %736
  %738 = icmp ne i32 %578, 0
  %739 = fmul fast float %713, %730
  %740 = call float @dx.op.binary.f32(i32 36, float %739, float %579)  ; FMin(a,b)
  %741 = select i1 %738, float %740, float 0.000000e+00
  %742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %734, float %735, float undef, float undef, i32 0, i32 0, i32 undef, float %741)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = fcmp fast ogt float %743, -1.000000e+00
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %747 = select i1 %744, float %746, float 1.000000e+00
  %748 = fadd fast float %743, 1.000000e+00
  %749 = fmul fast float %747, %748
  %750 = call float @dx.op.unary.f32(i32 6, float %749)  ; FAbs(value)
  %751 = fmul fast float %750, %715
  %752 = fsub fast float %737, %750
  %753 = fsub fast float %752, %751
  %754 = fcmp fast ogt float %753, 0.000000e+00
  %755 = fcmp fast ogt float %558, 0.000000e+00
  br i1 %755, label %756, label %759, !dx.controlflow.hints !47

; <label>:756                                     ; preds = %718
  %757 = fsub fast float %737, %721
  %758 = call float @dx.op.binary.f32(i32 35, float %757, float %558)  ; FMax(a,b)
  br label %759

; <label>:759                                     ; preds = %756, %718
  %760 = phi float [ %758, %756 ], [ %555, %718 ]
  %761 = fcmp fast olt float %753, %760
  %762 = fcmp uge float %743, -1.000000e+00
  %763 = or i1 %72, %762
  %764 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %765 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %766 = fcmp fast oeq float %734, %764
  %767 = fcmp fast oeq float %735, %765
  %768 = and i1 %766, %767
  %769 = and i1 %763, %768
  %770 = and i1 %754, %761
  %771 = and i1 %770, %769
  %772 = fcmp fast ogt float %730, %712
  %773 = and i1 %772, %771
  %774 = zext i1 %773 to i32
  br i1 %773, label %778, label %775, !dx.controlflow.hints !48

; <label>:775                                     ; preds = %759
  %776 = add nuw nsw i32 %722, 1
  %777 = icmp slt i32 %722, %563
  br i1 %777, label %718, label %778

; <label>:778                                     ; preds = %775, %759
  br label %779

; <label>:779                                     ; preds = %778, %567
  %780 = phi i32 [ 0, %567 ], [ %774, %778 ]
  %781 = phi float [ %79, %567 ], [ %750, %778 ]
  %782 = phi float [ %79, %567 ], [ %719, %778 ]
  %783 = phi float [ %79, %567 ], [ %737, %778 ]
  %784 = phi float [ %79, %567 ], [ %720, %778 ]
  %785 = fsub fast float %784, %782
  %786 = fsub fast float %783, %781
  %787 = fsub fast float %785, %786
  %788 = fcmp fast une float %787, 0.000000e+00
  %789 = fmul fast float %785, %783
  %790 = fmul fast float %784, %786
  %791 = fsub fast float %789, %790
  %792 = fdiv fast float 1.000000e+00, %787
  %793 = fmul fast float %791, %792
  %794 = select i1 %788, float %793, float %783
  %795 = fdiv fast float 1.000000e+00, %794
  %796 = fsub fast float %795, %637
  %797 = fdiv fast float %796, %696
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %799 = fmul fast float %798, %693
  %800 = fmul fast float %798, %695
  %801 = fadd fast float %799, %704
  %802 = fadd fast float %800, %705
  %803 = fadd fast float %801, -5.000000e-01
  %804 = fadd fast float %802, -5.000000e-01
  %805 = call float @dx.op.unary.f32(i32 6, float %803)  ; FAbs(value)
  %806 = call float @dx.op.unary.f32(i32 6, float %804)  ; FAbs(value)
  %807 = fadd fast float %805, -5.000000e-01
  %808 = fadd fast float %806, -5.000000e-01
  %809 = call float @dx.op.binary.f32(i32 35, float %807, float %808)  ; FMax(a,b)
  %810 = fcmp fast olt float %809, 0.000000e+00
  %811 = icmp ne i32 %780, 0
  %812 = and i1 %811, %810
  %813 = select i1 %812, float 0.000000e+00, float 1.000000e+00
  br label %814

; <label>:814                                     ; preds = %779, %550
  %815 = phi float [ %813, %779 ], [ 1.000000e+00, %550 ]
  %816 = fmul fast float %815, %543
  %817 = fmul fast float %815, %543
  %818 = fmul fast float %815, %543
  br label %819

; <label>:819                                     ; preds = %814, %542
  %820 = phi float [ %816, %814 ], [ %543, %542 ]
  %821 = phi float [ %817, %814 ], [ %543, %542 ]
  %822 = phi float [ %818, %814 ], [ %543, %542 ]
  %823 = call float @dx.op.binary.f32(i32 36, float %821, float %822)  ; FMin(a,b)
  %824 = call float @dx.op.binary.f32(i32 36, float %820, float %823)  ; FMin(a,b)
  %825 = fcmp fast ogt float %824, 0x3F10000000000000
  %826 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %825)  ; WaveAnyTrue(cond)
  %827 = select i1 %826, i32 %317, i32 0
  %828 = or i32 %312, %827
  %829 = lshr i32 %258, 5
  %830 = lshr i32 %259, 5
  %831 = fcmp fast olt float %820, 0x3F10000000000000
  %832 = call i1 @dx.op.waveAllTrue(i32 114, i1 %831)  ; WaveAllTrue(cond)
  %833 = fcmp fast ogt float %820, 0x3FEFFF8000000000
  %834 = call i1 @dx.op.waveAllTrue(i32 114, i1 %833)  ; WaveAllTrue(cond)
  %835 = or i1 %832, %834
  %836 = xor i1 %835, true
  %837 = and i32 %259, 16
  %838 = lshr i32 %258, 1
  %839 = and i32 %838, 8
  %840 = icmp eq i32 %837, 0
  %841 = or i32 %839, %38
  %842 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %842, label %843, label %885, !dx.controlflow.hints !49

; <label>:843                                     ; preds = %819
  %844 = shl i32 1, %841
  %845 = select i1 %834, i32 %844, i32 0
  %846 = shl i32 65536, %841
  %847 = select i1 %832, i32 %846, i32 0
  %848 = or i32 %845, %847
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %855, label %850, !dx.controlflow.hints !50

; <label>:850                                     ; preds = %843
  br i1 %840, label %853, label %851, !dx.controlflow.hints !51

; <label>:851                                     ; preds = %850
  %852 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %829, i32 %830, i32 %315, i32 %848)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %855

; <label>:853                                     ; preds = %850
  %854 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 2, i32 %829, i32 %830, i32 %315, i32 %848)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %855

; <label>:855                                     ; preds = %853, %851, %843
  br i1 %835, label %885, label %856

; <label>:856                                     ; preds = %855
  br label %857

; <label>:857                                     ; preds = %882, %856
  %858 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %5, i32 %829, i32 %830, i32 %315, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %859 = and i32 %858, 3
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %861, label %882, !dx.controlflow.hints !52

; <label>:861                                     ; preds = %857
  %862 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.i32 %863, 3
  %865 = call i32 @dx.op.binary.i32(i32 40, i32 %864, i32 %862)  ; UMin(a,b)
  %866 = extractvalue %dx.types.CBufRet.i32 %863, 2
  %867 = udiv i32 %865, %866
  %868 = urem i32 %865, %866
  %869 = extractvalue %dx.types.CBufRet.i32 %863, 1
  %870 = urem i32 %868, %869
  %871 = udiv i32 %868, %869
  %872 = shl i32 %870, 6
  %873 = and i32 %872, 32704
  %874 = shl i32 %871, 15
  %875 = and i32 %874, 8355840
  %876 = shl i32 %867, 23
  %877 = and i32 %876, 2139095040
  %878 = or i32 %877, %873
  %879 = or i32 %878, %875
  %880 = or i32 %879, 3
  %881 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 8, i32 %829, i32 %830, i32 %315, i32 %880)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %885

; <label>:882                                     ; preds = %857
  %883 = icmp eq i32 %859, 3
  br i1 %883, label %884, label %857, !dx.controlflow.hints !53

; <label>:884                                     ; preds = %882
  br label %885

; <label>:885                                     ; preds = %884, %861, %855, %819
  %886 = phi i32 [ 0, %855 ], [ %880, %861 ], [ 0, %819 ], [ %858, %884 ]
  %887 = phi i1 [ false, %855 ], [ %836, %861 ], [ %836, %819 ], [ %836, %884 ]
  br i1 %887, label %888, label %910, !dx.controlflow.hints !54

; <label>:888                                     ; preds = %885
  %889 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %886)  ; WaveReadLaneFirst(value)
  %890 = lshr i32 %259, 1
  %891 = and i32 %838, 15
  %892 = and i32 %890, 15
  %893 = and i32 %258, 1
  %894 = shl i32 %259, 1
  %895 = and i32 %894, 2
  %896 = or i32 %895, %893
  %897 = lshr i32 %889, 2
  %898 = and i32 %897, 8176
  %899 = lshr i32 %889, 11
  %900 = and i32 %899, 4080
  %901 = or i32 %898, %891
  %902 = or i32 %900, %892
  %903 = lshr i32 %889, 21
  %904 = and i32 %903, 1020
  %905 = or i32 %896, %904
  %906 = fmul fast float %820, 2.550000e+02
  %907 = fadd fast float %906, %252
  %908 = call float @dx.op.unary.f32(i32 27, float %907)  ; Round_ni(value)
  %909 = fmul fast float %908, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %901, i32 %902, i32 %905, float %909, float %909, float %909, float %909, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %910

; <label>:910                                     ; preds = %888, %885
  %911 = icmp eq i32 %313, %317
  br i1 %911, label %912, label %311, !llvm.loop !55

; <label>:912                                     ; preds = %910
  br label %913

; <label>:913                                     ; preds = %912, %283
  %914 = phi i32 [ 0, %283 ], [ %828, %912 ]
  %915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.i32 %915, 0
  %917 = call i32 @dx.op.tertiary.i32(i32 49, i32 %264, i32 %916, i32 %284)  ; UMad(a,b,c)
  %918 = shl i32 %917, 2
  %919 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %918, i32 undef, i32 undef, i32 %914)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %920 = add i32 %284, 1
  %921 = icmp ugt i32 %920, %280
  br i1 %921, label %922, label %283

; <label>:922                                     ; preds = %913
  br label %923

; <label>:923                                     ; preds = %922, %257, %59
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
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}

