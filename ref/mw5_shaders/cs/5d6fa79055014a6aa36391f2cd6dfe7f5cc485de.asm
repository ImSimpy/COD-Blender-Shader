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
; shader hash: ca5e2f21fcc173a1ed39bae79c341e2f
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
;                                   sampler      NA          NA      S1             s2     1
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %22 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %23 = alloca [4 x i32], align 4
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = shl i32 %25, 2
  %29 = mul i32 %28, %27
  %30 = add i32 %29, %19
  %31 = shl i32 %30, 2
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = lshr i32 %33, 28
  %35 = and i32 %34, 3
  %36 = lshr i32 %33, 14
  %37 = and i32 %36, 16383
  %38 = and i32 %33, 16383
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %51, label %40, !dx.controlflow.hints !32

; <label>:40                                      ; preds = %0
  %41 = shl nuw nsw i32 %37, 3
  %42 = shl nuw nsw i32 %38, 3
  %43 = or i32 %41, %20
  %44 = or i32 %42, %21
  %45 = add nsw i32 %35, -1
  %46 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %43, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 15
  %50 = and i32 %47, 15
  br label %56

; <label>:51                                      ; preds = %0
  %52 = shl i32 %20, 1
  %53 = shl i32 %21, 1
  %54 = and i32 %34, 1
  %55 = or i32 %54, %52
  br label %56

; <label>:56                                      ; preds = %51, %40
  %57 = phi i32 [ %49, %40 ], [ %55, %51 ]
  %58 = phi i32 [ %50, %40 ], [ %53, %51 ]
  %59 = shl nuw nsw i32 %37, 4
  %60 = shl nuw nsw i32 %38, 4
  %61 = or i32 %57, %59
  %62 = or i32 %58, %60
  %63 = uitofp i32 %61 to float
  %64 = uitofp i32 %62 to float
  %65 = fadd fast float %63, 5.000000e-01
  %66 = fadd fast float %64, 5.000000e-01
  %67 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %61, i32 %62, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = fcmp fast olt float %68, -1.000000e+00
  %70 = fcmp fast ogt float %68, -1.000000e+00
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %73 = select i1 %70, float %72, float 1.000000e+00
  %74 = fadd fast float %68, 1.000000e+00
  %75 = fmul fast float %73, %74
  %76 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 3
  %80 = fmul fast float %65, 2.000000e+00
  %81 = fmul fast float %80, %78
  %82 = fmul fast float %66, 2.000000e+00
  %83 = fmul fast float %82, %79
  %84 = fsub fast float 1.000000e+00, %81
  %85 = fsub fast float 1.000000e+00, %83
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = select i1 %69, float %87, float %91
  %95 = select i1 %69, float %88, float %92
  %96 = select i1 %69, float %89, float %93
  %97 = fmul fast float %94, %84
  %98 = fmul fast float %95, %84
  %99 = fmul fast float %96, %84
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %108 = select i1 %69, float %101, float %105
  %109 = select i1 %69, float %102, float %106
  %110 = select i1 %69, float %103, float %107
  %111 = fmul fast float %108, %85
  %112 = fmul fast float %109, %85
  %113 = fmul fast float %110, %85
  %114 = fadd fast float %111, %97
  %115 = fadd fast float %112, %98
  %116 = fadd fast float %113, %99
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = select i1 %69, float %118, float %122
  %126 = select i1 %69, float %119, float %123
  %127 = select i1 %69, float %120, float %124
  %128 = fadd fast float %114, %125
  %129 = fadd fast float %115, %126
  %130 = fadd fast float %116, %127
  %131 = fmul fast float %128, %76
  %132 = fmul fast float %129, %76
  %133 = fmul fast float %130, %76
  %134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.i32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.i32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.i32 %134, 2
  %138 = extractvalue %dx.types.CBufRet.i32 %134, 3
  %139 = lshr i32 %61, 1
  %140 = lshr i32 %62, 1
  %141 = and i32 %57, 1
  %142 = shl i32 %58, 1
  %143 = and i32 %142, 2
  %144 = or i32 %143, %141
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %135, i32* %145, align 4
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %136, i32* %146, align 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %137, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %138, i32* %148, align 4
  %149 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %144
  %150 = load i32, i32* %149, align 4, !tbaa !33
  %151 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %14, i32 %150, i32 %139, i32 %140, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = lshr i32 %152, 8
  %154 = and i32 %152, 255
  %155 = and i32 %153, 255
  %156 = uitofp i32 %154 to float
  %157 = uitofp i32 %155 to float
  %158 = fmul fast float %156, 0x3F80101020000000
  %159 = fmul fast float %157, 0x3F80101020000000
  %160 = fadd fast float %158, -1.000000e+00
  %161 = fadd fast float %159, -1.000000e+00
  %162 = call float @dx.op.unary.f32(i32 6, float %160)  ; FAbs(value)
  %163 = fsub fast float 1.000000e+00, %162
  %164 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %165 = fsub fast float %163, %164
  %166 = fsub fast float -0.000000e+00, %165
  %167 = call float @dx.op.binary.f32(i32 35, float %166, float 0.000000e+00)  ; FMax(a,b)
  %168 = fcmp fast ogt float %160, 0.000000e+00
  %169 = fsub fast float -0.000000e+00, %167
  %170 = select i1 %168, float %169, float %167
  %171 = fadd fast float %170, %160
  %172 = fcmp fast ogt float %161, 0.000000e+00
  %173 = select i1 %172, float %169, float %167
  %174 = fadd fast float %173, %161
  %175 = call float @dx.op.dot3.f32(i32 55, float %171, float %174, float %165, float %171, float %174, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = call float @dx.op.unary.f32(i32 25, float %175)  ; Rsqrt(value)
  %177 = fmul fast float %171, %176
  %178 = fmul fast float %174, %176
  %179 = fmul fast float %176, %165
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = fmul fast float %181, 0x3FE3C6EF40000000
  %183 = frem fast float %65, 2.560000e+02
  %184 = frem fast float %66, 2.560000e+02
  %185 = fptoui float %183 to i32
  %186 = fptoui float %184 to i32
  %187 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %185, i32 %186, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = fadd fast float %188, %182
  %190 = call float @dx.op.unary.f32(i32 22, float %189)  ; Frc(value)
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 0
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %530, label %194, !dx.controlflow.hints !37

; <label>:194                                     ; preds = %56
  %195 = fptoui float %65 to i32
  %196 = fptoui float %66 to i32
  %197 = lshr i32 %195, 4
  %198 = lshr i32 %196, 4
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %201 = call i32 @dx.op.tertiary.i32(i32 49, i32 %198, i32 %200, i32 %197)  ; UMad(a,b,c)
  %202 = add nsw i32 %192, -1
  %203 = call i32 @dx.op.binary.i32(i32 37, i32 %202, i32 0)  ; IMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %205 = fptoui float %204 to i32
  %206 = lshr i32 %205, 5
  %207 = call i32 @dx.op.binary.i32(i32 40, i32 %206, i32 8191)  ; UMin(a,b)
  %208 = shl i32 %207, 2
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = lshr i32 %210, 16
  %212 = and i32 %210, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %213 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %211 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %215 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %212 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %216 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %217 = lshr i32 %214, 5
  %218 = lshr i32 %216, 5
  %219 = call i32 @dx.op.binary.i32(i32 40, i32 %218, i32 %203)  ; UMin(a,b)
  %220 = icmp ugt i32 %217, %219
  br i1 %220, label %530, label %221

; <label>:221                                     ; preds = %194
  br label %222

; <label>:222                                     ; preds = %520, %221
  %223 = phi i32 [ %527, %520 ], [ %217, %221 ]
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 0
  %226 = call i32 @dx.op.tertiary.i32(i32 49, i32 %201, i32 %225, i32 %223)  ; UMad(a,b,c)
  %227 = shl i32 %226, 2
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = shl i32 %223, 5
  %231 = sub nsw i32 %211, %230
  %232 = call i32 @dx.op.binary.i32(i32 37, i32 %231, i32 0)  ; IMax(a,b)
  %233 = call i32 @dx.op.binary.i32(i32 38, i32 %232, i32 31)  ; IMin(a,b)
  %234 = sub nsw i32 1, %211
  %235 = add nsw i32 %234, %212
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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %246 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %245 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %247 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %248 = icmp eq i32 %22, 0
  br i1 %248, label %249, label %250, !dx.controlflow.hints !38

; <label>:249                                     ; preds = %222
  store i32 %247, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  br label %250

; <label>:250                                     ; preds = %249, %222
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %251 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %520, label %253

; <label>:253                                     ; preds = %250
  br label %254

; <label>:254                                     ; preds = %482, %253
  %255 = phi i32 [ %492, %482 ], [ 0, %253 ]
  %256 = phi i32 [ %261, %482 ], [ %251, %253 ]
  %257 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %256)  ; FirstbitLo(value)
  %258 = add i32 %257, %230
  %259 = and i32 %257, 31
  %260 = shl i32 1, %259
  %261 = xor i32 %260, %256
  %262 = mul i32 %258, 112
  %263 = add i32 %262, 16
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = add i32 %262, 28
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = add i32 %262, 32
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = add i32 %262, 48
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  %282 = add i32 %262, 64
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = add i32 %262, 92
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = uitofp i32 %291 to float
  %293 = lshr i32 %290, 16
  %294 = uitofp i32 %293 to float
  %295 = and i32 %270, 65535
  %296 = and i32 %270, 50331648
  %297 = icmp eq i32 %296, 33554432
  %298 = call float @dx.op.dot3.f32(i32 55, float %273, float %274, float %275, float %273, float %274, float %275)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = fsub fast float %131, %278
  %300 = fsub fast float %132, %279
  %301 = fsub fast float %133, %280
  %302 = call float @dx.op.dot3.f32(i32 55, float %299, float %300, float %301, float %273, float %274, float %275)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fdiv fast float %302, %298
  %304 = call float @dx.op.binary.f32(i32 35, float %303, float -1.000000e+00)  ; FMax(a,b)
  %305 = call float @dx.op.binary.f32(i32 36, float %304, float 1.000000e+00)  ; FMin(a,b)
  %306 = fmul fast float %305, %273
  %307 = fmul fast float %305, %274
  %308 = fmul fast float %305, %275
  %309 = fadd fast float %306, %278
  %310 = fadd fast float %307, %279
  %311 = fadd fast float %308, %280
  %312 = fsub fast float %309, %131
  %313 = fsub fast float %310, %132
  %314 = fsub fast float %311, %133
  %315 = call float @dx.op.dot3.f32(i32 55, float %312, float %313, float %314, float %312, float %313, float %314)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %317 = fdiv fast float 1.000000e+00, %316
  %318 = fmul fast float %312, %317
  %319 = fmul fast float %313, %317
  %320 = fmul fast float %314, %317
  br i1 %297, label %321, label %345, !dx.controlflow.hints !39

; <label>:321                                     ; preds = %254
  %322 = fmul fast float %286, %265
  %323 = fmul fast float %286, %266
  %324 = fmul fast float %286, %267
  %325 = fsub fast float %322, %131
  %326 = fadd fast float %325, %309
  %327 = fsub fast float %323, %132
  %328 = fadd fast float %327, %310
  %329 = fsub fast float %324, %133
  %330 = fadd fast float %329, %311
  %331 = call float @dx.op.dot3.f32(i32 55, float %326, float %328, float %330, float %326, float %328, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %332 = call float @dx.op.unary.f32(i32 25, float %331)  ; Rsqrt(value)
  %333 = fmul fast float %332, %326
  %334 = fmul fast float %332, %328
  %335 = fmul fast float %332, %330
  %336 = fsub fast float %131, %309
  %337 = fsub fast float %132, %310
  %338 = fsub fast float %133, %311
  %339 = fsub fast float -0.000000e+00, %336
  %340 = fsub fast float -0.000000e+00, %337
  %341 = fsub fast float -0.000000e+00, %338
  %342 = call float @dx.op.dot3.f32(i32 55, float %339, float %340, float %341, float %265, float %266, float %267)  ; Dot3(ax,ay,az,bx,by,bz)
  %343 = fcmp fast ogt float %342, 0.000000e+00
  %344 = uitofp i1 %343 to float
  br label %345

; <label>:345                                     ; preds = %321, %254
  %346 = phi float [ %344, %321 ], [ 1.000000e+00, %254 ]
  %347 = phi float [ %333, %321 ], [ %318, %254 ]
  %348 = phi float [ %334, %321 ], [ %319, %254 ]
  %349 = phi float [ %335, %321 ], [ %320, %254 ]
  %350 = call float @dx.op.dot3.f32(i32 55, float %265, float %266, float %267, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %351 = fmul fast float %350, %350
  %352 = call float @dx.op.unary.f32(i32 7, float %351)  ; Saturate(value)
  %353 = fsub fast float 1.000000e+00, %352
  %354 = fmul fast float %353, 5.000000e-01
  %355 = fcmp fast ogt float %350, 0.000000e+00
  %356 = fsub fast float 1.000000e+00, %354
  %357 = select i1 %355, float %354, float %356
  %358 = fmul fast float %357, %294
  %359 = fadd fast float %358, %292
  %360 = fmul fast float %359, 0x3EF0001000000000
  %361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %360, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = fmul fast float %350, %284
  %364 = fadd fast float %363, %285
  %365 = call float @dx.op.unary.f32(i32 7, float %364)  ; Saturate(value)
  %366 = select i1 %297, float %365, float 1.000000e+00
  %367 = fmul fast float %316, %281
  %368 = fsub fast float 1.000000e+00, %367
  %369 = fmul fast float %368, %287
  %370 = call float @dx.op.unary.f32(i32 7, float %369)  ; Saturate(value)
  %371 = fmul fast float %370, %366
  %372 = fmul fast float %371, 2.000000e+00
  %373 = fsub fast float 3.000000e+00, %372
  %374 = fmul fast float %362, %346
  %375 = fmul fast float %371, %371
  %376 = fmul fast float %375, %374
  %377 = fmul fast float %376, %373
  %378 = icmp ne i32 %295, 255
  %379 = call float @dx.op.binary.f32(i32 36, float %377, float %377)  ; FMin(a,b)
  %380 = call float @dx.op.binary.f32(i32 36, float %377, float %379)  ; FMin(a,b)
  %381 = fcmp fast ogt float %380, 0.000000e+00
  %382 = and i1 %378, %381
  br i1 %382, label %383, label %482, !dx.controlflow.hints !40

; <label>:383                                     ; preds = %345
  %384 = select i1 %297, float 1.000000e+00, float %365
  %385 = mul nuw nsw i32 %295, 176
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = extractvalue %dx.types.ResRet.f32 %386, 2
  %390 = extractvalue %dx.types.ResRet.f32 %386, 3
  %391 = add nuw nsw i32 %385, 16
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = add nuw nsw i32 %385, 32
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = add nuw nsw i32 %385, 48
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = extractvalue %dx.types.ResRet.f32 %401, 3
  %406 = add nuw nsw i32 %385, 64
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = extractvalue %dx.types.ResRet.f32 %407, 3
  %412 = add nuw nsw i32 %385, 80
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = extractvalue %dx.types.ResRet.f32 %413, 3
  %418 = add nuw nsw i32 %385, 96
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = bitcast float %394 to i32
  %425 = fmul fast float %177, %399
  %426 = fmul fast float %178, %399
  %427 = fmul fast float %179, %399
  %428 = fadd fast float %425, %131
  %429 = fadd fast float %426, %132
  %430 = fadd fast float %427, %133
  %431 = fmul fast float %428, %402
  %432 = call float @dx.op.tertiary.f32(i32 46, float %429, float %408, float %431)  ; FMad(a,b,c)
  %433 = call float @dx.op.tertiary.f32(i32 46, float %430, float %414, float %432)  ; FMad(a,b,c)
  %434 = fadd fast float %433, %420
  %435 = fmul fast float %428, %403
  %436 = call float @dx.op.tertiary.f32(i32 46, float %429, float %409, float %435)  ; FMad(a,b,c)
  %437 = call float @dx.op.tertiary.f32(i32 46, float %430, float %415, float %436)  ; FMad(a,b,c)
  %438 = fadd fast float %437, %421
  %439 = fmul fast float %428, %404
  %440 = call float @dx.op.tertiary.f32(i32 46, float %429, float %410, float %439)  ; FMad(a,b,c)
  %441 = call float @dx.op.tertiary.f32(i32 46, float %430, float %416, float %440)  ; FMad(a,b,c)
  %442 = fadd fast float %441, %422
  %443 = fmul fast float %428, %405
  %444 = call float @dx.op.tertiary.f32(i32 46, float %429, float %411, float %443)  ; FMad(a,b,c)
  %445 = call float @dx.op.tertiary.f32(i32 46, float %430, float %417, float %444)  ; FMad(a,b,c)
  %446 = fadd fast float %445, %423
  %447 = fdiv fast float %434, %446
  %448 = fdiv fast float %438, %446
  %449 = fdiv fast float %442, %446
  %450 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %449)  ; FMax(a,b)
  %451 = fmul fast float %190, 0x401921FB60000000
  %452 = call float @dx.op.unary.f32(i32 13, float %451)  ; Sin(value)
  %453 = call float @dx.op.unary.f32(i32 12, float %451)  ; Cos(value)
  %454 = fsub fast float -0.000000e+00, %452
  %455 = fmul fast float %389, 5.000000e-01
  %456 = call float @dx.op.dot2.f32(i32 54, float %190, float %190, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %457 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %458 = fmul fast float %457, 0x404A7DD040000000
  %459 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %460 = fmul fast float %459, %398
  %461 = fadd fast float %460, %455
  %462 = call float @dx.op.tertiary.f32(i32 46, float %461, float %454, float 0.000000e+00)  ; FMad(a,b,c)
  %463 = call float @dx.op.tertiary.f32(i32 46, float %461, float %453, float 0.000000e+00)  ; FMad(a,b,c)
  %464 = fadd fast float %462, %447
  %465 = fadd fast float %463, %448
  %466 = fmul fast float %464, %393
  %467 = fmul fast float %465, %393
  %468 = call float @dx.op.binary.f32(i32 35, float %466, float %389)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 35, float %467, float %389)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 36, float %468, float %390)  ; FMin(a,b)
  %471 = call float @dx.op.binary.f32(i32 36, float %469, float %390)  ; FMin(a,b)
  %472 = fadd fast float %470, %387
  %473 = fadd fast float %471, %388
  %474 = uitofp i32 %424 to float
  %475 = fadd fast float %450, %397
  %476 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %16, float %472, float %473, float %474, float undef, i32 0, i32 0, i32 undef, float %475)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = fadd fast float %477, -1.000000e+00
  %479 = fmul fast float %478, %384
  %480 = fadd fast float %479, 1.000000e+00
  %481 = fmul fast float %480, %377
  br label %482

; <label>:482                                     ; preds = %383, %345
  %483 = phi float [ %481, %383 ], [ %377, %345 ]
  %484 = call float @dx.op.binary.f32(i32 36, float %483, float %483)  ; FMin(a,b)
  %485 = call float @dx.op.binary.f32(i32 36, float %483, float %484)  ; FMin(a,b)
  %486 = fcmp fast ogt float %485, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %487 = zext i1 %486 to i32
  %488 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %487 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %489 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %490 = icmp eq i32 %489, 0
  %491 = select i1 %490, i32 0, i32 %260
  %492 = or i32 %255, %491
  %493 = lshr i32 %195, 5
  %494 = lshr i32 %196, 5
  %495 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %493, i32 %494, i32 %258, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = lshr i32 %195, 1
  %498 = lshr i32 %196, 1
  %499 = and i32 %497, 15
  %500 = and i32 %498, 15
  %501 = and i32 %195, 1
  %502 = shl i32 %196, 1
  %503 = and i32 %502, 2
  %504 = or i32 %503, %501
  %505 = lshr i32 %496, 2
  %506 = and i32 %505, 8176
  %507 = lshr i32 %496, 11
  %508 = and i32 %507, 4080
  %509 = or i32 %506, %499
  %510 = or i32 %508, %500
  %511 = lshr i32 %496, 21
  %512 = and i32 %511, 1020
  %513 = or i32 %504, %512
  %514 = fmul fast float %483, 2.550000e+02
  %515 = fadd fast float %514, %190
  %516 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %517 = fmul fast float %516, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %509, i32 %510, i32 %513, float %517, float %517, float %517, float %517, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %518 = icmp eq i32 %256, %260
  br i1 %518, label %519, label %254, !llvm.loop !41

; <label>:519                                     ; preds = %482
  br label %520

; <label>:520                                     ; preds = %519, %250
  %521 = phi i32 [ 0, %250 ], [ %492, %519 ]
  %522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.i32 %522, 0
  %524 = call i32 @dx.op.tertiary.i32(i32 49, i32 %201, i32 %523, i32 %223)  ; UMad(a,b,c)
  %525 = shl i32 %524, 2
  %526 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %525, i32 undef, i32 undef, i32 %521)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %527 = add i32 %223, 1
  %528 = icmp ugt i32 %527, %219
  br i1 %528, label %529, label %222

; <label>:529                                     ; preds = %520
  br label %530

; <label>:530                                     ; preds = %529, %194, %56
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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
!dx.entryPoints = !{!29}

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
!26 = !{!27, !28}
!27 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}

