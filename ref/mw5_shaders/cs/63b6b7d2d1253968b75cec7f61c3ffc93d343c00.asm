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
; shader hash: 7957c6b3c3865de0389e1ec4c61e2b89
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
;                                   sampler      NA          NA      S0             s1     1
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  br i1 %193, label %694, label %194, !dx.controlflow.hints !37

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
  %213 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %214 = udiv i32 %22, %213
  %215 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %211, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %216 = icmp eq i32 %213, 64
  br i1 %216, label %243, label %217, !dx.controlflow.hints !38

; <label>:217                                     ; preds = %194
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %218, label %219, label %221, !dx.controlflow.hints !39

; <label>:219                                     ; preds = %217
  %220 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %214
  store i32 %215, i32 addrspace(3)* %220, align 4, !tbaa !33
  br label %221

; <label>:221                                     ; preds = %219, %217
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %222 = icmp eq i32 %213, 32
  br i1 %222, label %223, label %228, !dx.controlflow.hints !40

; <label>:223                                     ; preds = %221
  %224 = xor i32 %214, 1
  %225 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %224
  %226 = load i32, i32 addrspace(3)* %225, align 4, !tbaa !33
  %227 = call i32 @dx.op.binary.i32(i32 40, i32 %215, i32 %226)  ; UMin(a,b)
  br label %243

; <label>:228                                     ; preds = %221
  %229 = icmp eq i32 %213, 16
  br i1 %229, label %230, label %243, !dx.controlflow.hints !41

; <label>:230                                     ; preds = %228
  %231 = xor i32 %214, 3
  %232 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %231
  %233 = load i32, i32 addrspace(3)* %232, align 4, !tbaa !33
  %234 = xor i32 %214, 2
  %235 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %234
  %236 = load i32, i32 addrspace(3)* %235, align 4, !tbaa !33
  %237 = call i32 @dx.op.binary.i32(i32 40, i32 %236, i32 %233)  ; UMin(a,b)
  %238 = xor i32 %214, 1
  %239 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %238
  %240 = load i32, i32 addrspace(3)* %239, align 4, !tbaa !33
  %241 = call i32 @dx.op.binary.i32(i32 40, i32 %215, i32 %240)  ; UMin(a,b)
  %242 = call i32 @dx.op.binary.i32(i32 40, i32 %241, i32 %237)  ; UMin(a,b)
  br label %243

; <label>:243                                     ; preds = %230, %228, %223, %194
  %244 = phi i32 [ %227, %223 ], [ %242, %230 ], [ %215, %194 ], [ 0, %228 ]
  %245 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %212, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %216, label %272, label %246, !dx.controlflow.hints !42

; <label>:246                                     ; preds = %243
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %247 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %247, label %248, label %250, !dx.controlflow.hints !43

; <label>:248                                     ; preds = %246
  %249 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %214
  store i32 %245, i32 addrspace(3)* %249, align 4, !tbaa !33
  br label %250

; <label>:250                                     ; preds = %248, %246
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %251 = icmp eq i32 %213, 32
  br i1 %251, label %252, label %257, !dx.controlflow.hints !44

; <label>:252                                     ; preds = %250
  %253 = xor i32 %214, 1
  %254 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %253
  %255 = load i32, i32 addrspace(3)* %254, align 4, !tbaa !33
  %256 = call i32 @dx.op.binary.i32(i32 39, i32 %245, i32 %255)  ; UMax(a,b)
  br label %272

; <label>:257                                     ; preds = %250
  %258 = icmp eq i32 %213, 16
  br i1 %258, label %259, label %272, !dx.controlflow.hints !45

; <label>:259                                     ; preds = %257
  %260 = xor i32 %214, 3
  %261 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %260
  %262 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !33
  %263 = xor i32 %214, 2
  %264 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %263
  %265 = load i32, i32 addrspace(3)* %264, align 4, !tbaa !33
  %266 = call i32 @dx.op.binary.i32(i32 39, i32 %265, i32 %262)  ; UMax(a,b)
  %267 = xor i32 %214, 1
  %268 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %267
  %269 = load i32, i32 addrspace(3)* %268, align 4, !tbaa !33
  %270 = call i32 @dx.op.binary.i32(i32 39, i32 %245, i32 %269)  ; UMax(a,b)
  %271 = call i32 @dx.op.binary.i32(i32 39, i32 %270, i32 %266)  ; UMax(a,b)
  br label %272

; <label>:272                                     ; preds = %259, %257, %252, %243
  %273 = phi i32 [ %256, %252 ], [ %271, %259 ], [ %245, %243 ], [ 0, %257 ]
  %274 = lshr i32 %244, 5
  %275 = lshr i32 %273, 5
  %276 = call i32 @dx.op.binary.i32(i32 40, i32 %275, i32 %203)  ; UMin(a,b)
  %277 = icmp ugt i32 %274, %276
  br i1 %277, label %694, label %278

; <label>:278                                     ; preds = %272
  br label %279

; <label>:279                                     ; preds = %684, %278
  %280 = phi i32 [ %691, %684 ], [ %274, %278 ]
  %281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.i32 %281, 0
  %283 = call i32 @dx.op.tertiary.i32(i32 49, i32 %201, i32 %282, i32 %280)  ; UMad(a,b,c)
  %284 = shl i32 %283, 2
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %280, 5
  %288 = sub nsw i32 %211, %287
  %289 = call i32 @dx.op.binary.i32(i32 37, i32 %288, i32 0)  ; IMax(a,b)
  %290 = call i32 @dx.op.binary.i32(i32 38, i32 %289, i32 31)  ; IMin(a,b)
  %291 = sub nsw i32 1, %211
  %292 = add nsw i32 %291, %212
  %293 = call i32 @dx.op.binary.i32(i32 37, i32 %292, i32 0)  ; IMax(a,b)
  %294 = call i32 @dx.op.binary.i32(i32 38, i32 %293, i32 32)  ; IMin(a,b)
  %295 = and i32 %294, 31
  %296 = shl i32 -1, %295
  %297 = xor i32 %296, -1
  %298 = and i32 %290, 31
  %299 = shl i32 %297, %298
  %300 = icmp eq i32 %294, 32
  %301 = select i1 %300, i32 -1, i32 %299
  %302 = and i32 %301, %286
  %303 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %302, i8 1)  ; WaveActiveBit(value,op)
  br i1 %216, label %330, label %304, !dx.controlflow.hints !46

; <label>:304                                     ; preds = %279
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %305 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %305, label %306, label %308, !dx.controlflow.hints !47

; <label>:306                                     ; preds = %304
  %307 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %214
  store i32 %303, i32 addrspace(3)* %307, align 4, !tbaa !33
  br label %308

; <label>:308                                     ; preds = %306, %304
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %309 = icmp eq i32 %213, 32
  br i1 %309, label %310, label %315, !dx.controlflow.hints !48

; <label>:310                                     ; preds = %308
  %311 = xor i32 %214, 1
  %312 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %311
  %313 = load i32, i32 addrspace(3)* %312, align 4, !tbaa !33
  %314 = or i32 %313, %303
  br label %330

; <label>:315                                     ; preds = %308
  %316 = icmp eq i32 %213, 16
  br i1 %316, label %317, label %330, !dx.controlflow.hints !49

; <label>:317                                     ; preds = %315
  %318 = xor i32 %214, 1
  %319 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %318
  %320 = load i32, i32 addrspace(3)* %319, align 4, !tbaa !33
  %321 = or i32 %320, %303
  %322 = xor i32 %214, 2
  %323 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %322
  %324 = load i32, i32 addrspace(3)* %323, align 4, !tbaa !33
  %325 = or i32 %321, %324
  %326 = xor i32 %214, 3
  %327 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %326
  %328 = load i32, i32 addrspace(3)* %327, align 4, !tbaa !33
  %329 = or i32 %325, %328
  br label %330

; <label>:330                                     ; preds = %317, %315, %310, %279
  %331 = phi i32 [ %314, %310 ], [ %329, %317 ], [ %303, %279 ], [ 0, %315 ]
  br i1 %216, label %332, label %334, !dx.controlflow.hints !50

; <label>:332                                     ; preds = %330
  %333 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %331)  ; WaveReadLaneFirst(value)
  br label %339

; <label>:334                                     ; preds = %330
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %335 = icmp eq i32 %22, 0
  br i1 %335, label %336, label %337, !dx.controlflow.hints !51

; <label>:336                                     ; preds = %334
  store i32 %331, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  br label %337

; <label>:337                                     ; preds = %336, %334
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %338 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  br label %339

; <label>:339                                     ; preds = %337, %332
  %340 = phi i32 [ %333, %332 ], [ %338, %337 ]
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %684, label %342

; <label>:342                                     ; preds = %339
  br label %343

; <label>:343                                     ; preds = %653, %342
  %344 = phi i32 [ %656, %653 ], [ 0, %342 ]
  %345 = phi i32 [ %350, %653 ], [ %340, %342 ]
  %346 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %345)  ; FirstbitLo(value)
  %347 = add i32 %346, %287
  %348 = and i32 %346, 31
  %349 = shl i32 1, %348
  %350 = xor i32 %349, %345
  %351 = mul i32 %347, 112
  %352 = add i32 %351, 16
  %353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = add i32 %351, 28
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = add i32 %351, 32
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = add i32 %351, 48
  %366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = extractvalue %dx.types.ResRet.f32 %366, 3
  %371 = add i32 %351, 64
  %372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = extractvalue %dx.types.ResRet.f32 %372, 3
  %377 = add i32 %351, 92
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 65535
  %381 = uitofp i32 %380 to float
  %382 = lshr i32 %379, 16
  %383 = uitofp i32 %382 to float
  %384 = and i32 %359, 65535
  %385 = and i32 %359, 50331648
  %386 = icmp eq i32 %385, 33554432
  %387 = call float @dx.op.dot3.f32(i32 55, float %362, float %363, float %364, float %362, float %363, float %364)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = fsub fast float %131, %367
  %389 = fsub fast float %132, %368
  %390 = fsub fast float %133, %369
  %391 = call float @dx.op.dot3.f32(i32 55, float %388, float %389, float %390, float %362, float %363, float %364)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = fdiv fast float %391, %387
  %393 = call float @dx.op.binary.f32(i32 35, float %392, float -1.000000e+00)  ; FMax(a,b)
  %394 = call float @dx.op.binary.f32(i32 36, float %393, float 1.000000e+00)  ; FMin(a,b)
  %395 = fmul fast float %394, %362
  %396 = fmul fast float %394, %363
  %397 = fmul fast float %394, %364
  %398 = fadd fast float %395, %367
  %399 = fadd fast float %396, %368
  %400 = fadd fast float %397, %369
  %401 = fsub fast float %398, %131
  %402 = fsub fast float %399, %132
  %403 = fsub fast float %400, %133
  %404 = call float @dx.op.dot3.f32(i32 55, float %401, float %402, float %403, float %401, float %402, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %406 = fdiv fast float 1.000000e+00, %405
  %407 = fmul fast float %401, %406
  %408 = fmul fast float %402, %406
  %409 = fmul fast float %403, %406
  br i1 %386, label %410, label %434, !dx.controlflow.hints !52

; <label>:410                                     ; preds = %343
  %411 = fmul fast float %375, %354
  %412 = fmul fast float %375, %355
  %413 = fmul fast float %375, %356
  %414 = fsub fast float %411, %131
  %415 = fadd fast float %414, %398
  %416 = fsub fast float %412, %132
  %417 = fadd fast float %416, %399
  %418 = fsub fast float %413, %133
  %419 = fadd fast float %418, %400
  %420 = call float @dx.op.dot3.f32(i32 55, float %415, float %417, float %419, float %415, float %417, float %419)  ; Dot3(ax,ay,az,bx,by,bz)
  %421 = call float @dx.op.unary.f32(i32 25, float %420)  ; Rsqrt(value)
  %422 = fmul fast float %421, %415
  %423 = fmul fast float %421, %417
  %424 = fmul fast float %421, %419
  %425 = fsub fast float %131, %398
  %426 = fsub fast float %132, %399
  %427 = fsub fast float %133, %400
  %428 = fsub fast float -0.000000e+00, %425
  %429 = fsub fast float -0.000000e+00, %426
  %430 = fsub fast float -0.000000e+00, %427
  %431 = call float @dx.op.dot3.f32(i32 55, float %428, float %429, float %430, float %354, float %355, float %356)  ; Dot3(ax,ay,az,bx,by,bz)
  %432 = fcmp fast ogt float %431, 0.000000e+00
  %433 = uitofp i1 %432 to float
  br label %434

; <label>:434                                     ; preds = %410, %343
  %435 = phi float [ %433, %410 ], [ 1.000000e+00, %343 ]
  %436 = phi float [ %422, %410 ], [ %407, %343 ]
  %437 = phi float [ %423, %410 ], [ %408, %343 ]
  %438 = phi float [ %424, %410 ], [ %409, %343 ]
  %439 = call float @dx.op.dot3.f32(i32 55, float %354, float %355, float %356, float %436, float %437, float %438)  ; Dot3(ax,ay,az,bx,by,bz)
  %440 = fmul fast float %439, %439
  %441 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %442 = fsub fast float 1.000000e+00, %441
  %443 = fmul fast float %442, 5.000000e-01
  %444 = fcmp fast ogt float %439, 0.000000e+00
  %445 = fsub fast float 1.000000e+00, %443
  %446 = select i1 %444, float %443, float %445
  %447 = fmul fast float %446, %383
  %448 = fadd fast float %447, %381
  %449 = fmul fast float %448, 0x3EF0001000000000
  %450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %449, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = fmul fast float %439, %373
  %453 = fadd fast float %452, %374
  %454 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %455 = select i1 %386, float 1.000000e+00, float %454
  %456 = select i1 %386, float %454, float 1.000000e+00
  %457 = fmul fast float %405, %370
  %458 = fsub fast float 1.000000e+00, %457
  %459 = fmul fast float %458, %376
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %461 = fmul fast float %460, %456
  %462 = fmul fast float %461, 2.000000e+00
  %463 = fsub fast float 3.000000e+00, %462
  %464 = fmul fast float %451, %435
  %465 = fmul fast float %461, %461
  %466 = fmul fast float %465, %464
  %467 = fmul fast float %466, %463
  %468 = icmp ne i32 %384, 255
  %469 = call float @dx.op.binary.f32(i32 36, float %467, float %467)  ; FMin(a,b)
  %470 = call float @dx.op.binary.f32(i32 36, float %467, float %469)  ; FMin(a,b)
  %471 = fcmp fast ogt float %470, 0.000000e+00
  %472 = and i1 %468, %471
  br i1 %472, label %473, label %617, !dx.controlflow.hints !53

; <label>:473                                     ; preds = %434
  %474 = mul nuw nsw i32 %384, 176
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = extractvalue %dx.types.ResRet.f32 %475, 3
  %480 = add nuw nsw i32 %474, 16
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = add nuw nsw i32 %474, 32
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = extractvalue %dx.types.ResRet.f32 %485, 2
  %489 = add nuw nsw i32 %474, 48
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = add nuw nsw i32 %474, 64
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = extractvalue %dx.types.ResRet.f32 %496, 3
  %501 = add nuw nsw i32 %474, 80
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = add nuw nsw i32 %474, 96
  %508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = bitcast float %483 to i32
  %514 = fmul fast float %177, %488
  %515 = fmul fast float %178, %488
  %516 = fmul fast float %179, %488
  %517 = fadd fast float %514, %131
  %518 = fadd fast float %515, %132
  %519 = fadd fast float %516, %133
  %520 = fmul fast float %517, %491
  %521 = call float @dx.op.tertiary.f32(i32 46, float %518, float %497, float %520)  ; FMad(a,b,c)
  %522 = call float @dx.op.tertiary.f32(i32 46, float %519, float %503, float %521)  ; FMad(a,b,c)
  %523 = fadd fast float %522, %509
  %524 = fmul fast float %517, %492
  %525 = call float @dx.op.tertiary.f32(i32 46, float %518, float %498, float %524)  ; FMad(a,b,c)
  %526 = call float @dx.op.tertiary.f32(i32 46, float %519, float %504, float %525)  ; FMad(a,b,c)
  %527 = fadd fast float %526, %510
  %528 = fmul fast float %517, %493
  %529 = call float @dx.op.tertiary.f32(i32 46, float %518, float %499, float %528)  ; FMad(a,b,c)
  %530 = call float @dx.op.tertiary.f32(i32 46, float %519, float %505, float %529)  ; FMad(a,b,c)
  %531 = fadd fast float %530, %511
  %532 = fmul fast float %517, %494
  %533 = call float @dx.op.tertiary.f32(i32 46, float %518, float %500, float %532)  ; FMad(a,b,c)
  %534 = call float @dx.op.tertiary.f32(i32 46, float %519, float %506, float %533)  ; FMad(a,b,c)
  %535 = fadd fast float %534, %512
  %536 = fdiv fast float %523, %535
  %537 = fdiv fast float %527, %535
  %538 = fdiv fast float %531, %535
  %539 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %538)  ; FMax(a,b)
  %540 = fmul fast float %190, 0x401921FB60000000
  %541 = call float @dx.op.unary.f32(i32 13, float %540)  ; Sin(value)
  %542 = call float @dx.op.unary.f32(i32 12, float %540)  ; Cos(value)
  %543 = fmul fast float %542, %487
  %544 = call float @dx.op.tertiary.f32(i32 46, float %541, float %487, float 0.000000e+00)  ; FMad(a,b,c)
  %545 = fmul fast float %487, %541
  %546 = fsub fast float -0.000000e+00, %545
  %547 = call float @dx.op.tertiary.f32(i32 46, float %542, float %487, float 0.000000e+00)  ; FMad(a,b,c)
  br label %548

; <label>:548                                     ; preds = %548, %473
  %549 = phi float [ 0.000000e+00, %473 ], [ %581, %548 ]
  %550 = phi float [ 0.000000e+00, %473 ], [ %583, %548 ]
  %551 = phi i32 [ 0, %473 ], [ %584, %548 ]
  %552 = mul i32 %551, 2
  %553 = add i32 0, %552
  %554 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %553
  %555 = load float, float* %554, align 4
  %556 = mul i32 %551, 2
  %557 = add i32 1, %556
  %558 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %557
  %559 = load float, float* %558, align 4
  %560 = fmul fast float %543, %555
  %561 = call float @dx.op.tertiary.f32(i32 46, float %559, float %546, float %560)  ; FMad(a,b,c)
  %562 = fmul fast float %555, %544
  %563 = call float @dx.op.tertiary.f32(i32 46, float %559, float %547, float %562)  ; FMad(a,b,c)
  %564 = fadd fast float %561, %536
  %565 = fadd fast float %563, %537
  %566 = fmul fast float %564, %482
  %567 = fmul fast float %565, %482
  %568 = call float @dx.op.binary.f32(i32 35, float %566, float %478)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float %567, float %478)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 36, float %568, float %479)  ; FMin(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float %569, float %479)  ; FMin(a,b)
  %572 = fadd fast float %570, %476
  %573 = fadd fast float %571, %477
  %574 = uitofp i32 %513 to float
  %575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %572, float %573, float %574, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = fsub fast float %576, %539
  %578 = fsub fast float %577, %486
  %579 = fcmp fast ogt float %578, 0.000000e+00
  %580 = select i1 %579, float 1.000000e+00, float 0.000000e+00
  %581 = fadd fast float %580, %549
  %582 = select i1 %579, float %578, float 0.000000e+00
  %583 = fadd fast float %582, %550
  %584 = add nuw nsw i32 %551, 1
  %585 = icmp eq i32 %584, 8
  br i1 %585, label %586, label %548

; <label>:586                                     ; preds = %548
  %587 = fdiv fast float 1.000000e+00, %581
  %588 = fmul fast float %587, %583
  %589 = fdiv fast float 1.000000e+00, %539
  %590 = fmul fast float %588, %589
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %592 = call float @dx.op.binary.f32(i32 35, float %591, float 0.000000e+00)  ; FMax(a,b)
  %593 = fmul fast float %581, 1.250000e-01
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %595 = fmul fast float %594, 2.000000e+00
  %596 = fadd fast float %595, -1.000000e+00
  %597 = fcmp fast ogt float %596, 0.000000e+00
  %598 = fcmp fast olt float %596, 0.000000e+00
  %599 = zext i1 %597 to i32
  %600 = zext i1 %598 to i32
  %601 = sub nsw i32 %599, %600
  %602 = sitofp i32 %601 to float
  %603 = fmul fast float %602, %596
  %604 = fsub fast float 1.000000e+00, %603
  %605 = fmul fast float %604, %604
  %606 = fmul fast float %605, %604
  %607 = fsub fast float %604, %606
  %608 = fmul fast float %607, %592
  %609 = fsub fast float 1.000000e+00, %606
  %610 = fsub fast float %609, %608
  %611 = fmul fast float %602, 5.000000e-01
  %612 = fmul fast float %611, %610
  %613 = fsub fast float -5.000000e-01, %612
  %614 = fmul fast float %613, %455
  %615 = fadd fast float %614, 1.000000e+00
  %616 = fmul fast float %615, %467
  br label %617

; <label>:617                                     ; preds = %586, %434
  %618 = phi float [ %616, %586 ], [ %467, %434 ]
  %619 = call float @dx.op.binary.f32(i32 36, float %618, float %618)  ; FMin(a,b)
  %620 = call float @dx.op.binary.f32(i32 36, float %618, float %619)  ; FMin(a,b)
  %621 = fcmp fast ogt float %620, 0x3F10000000000000
  %622 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %621)  ; WaveAnyTrue(cond)
  %623 = icmp ugt i32 %213, 63
  br i1 %623, label %653, label %624, !dx.controlflow.hints !54

; <label>:624                                     ; preds = %617
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %625 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %625, label %626, label %629, !dx.controlflow.hints !55

; <label>:626                                     ; preds = %624
  %627 = zext i1 %622 to i32
  %628 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %214
  store i32 %627, i32 addrspace(3)* %628, align 4, !tbaa !33
  br label %629

; <label>:629                                     ; preds = %626, %624
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %630 = icmp eq i32 %213, 32
  br i1 %630, label %631, label %637, !dx.controlflow.hints !56

; <label>:631                                     ; preds = %629
  %632 = xor i32 %214, 1
  %633 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %632
  %634 = load i32, i32 addrspace(3)* %633, align 4, !tbaa !33
  %635 = icmp ne i32 %634, 0
  %636 = or i1 %622, %635
  br label %653

; <label>:637                                     ; preds = %629
  %638 = icmp eq i32 %213, 16
  br i1 %638, label %639, label %653, !dx.controlflow.hints !57

; <label>:639                                     ; preds = %637
  %640 = xor i32 %214, 1
  %641 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %640
  %642 = load i32, i32 addrspace(3)* %641, align 4, !tbaa !33
  %643 = xor i32 %214, 2
  %644 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %643
  %645 = load i32, i32 addrspace(3)* %644, align 4, !tbaa !33
  %646 = or i32 %645, %642
  %647 = xor i32 %214, 3
  %648 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %647
  %649 = load i32, i32 addrspace(3)* %648, align 4, !tbaa !33
  %650 = or i32 %646, %649
  %651 = icmp ne i32 %650, 0
  %652 = or i1 %622, %651
  br label %653

; <label>:653                                     ; preds = %639, %637, %631, %617
  %654 = phi i1 [ %636, %631 ], [ %652, %639 ], [ %622, %617 ], [ false, %637 ]
  %655 = select i1 %654, i32 %349, i32 0
  %656 = or i32 %344, %655
  %657 = lshr i32 %195, 5
  %658 = lshr i32 %196, 5
  %659 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %657, i32 %658, i32 %347, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = lshr i32 %195, 1
  %662 = lshr i32 %196, 1
  %663 = and i32 %661, 15
  %664 = and i32 %662, 15
  %665 = and i32 %195, 1
  %666 = shl i32 %196, 1
  %667 = and i32 %666, 2
  %668 = or i32 %667, %665
  %669 = lshr i32 %660, 2
  %670 = and i32 %669, 8176
  %671 = lshr i32 %660, 11
  %672 = and i32 %671, 4080
  %673 = or i32 %670, %663
  %674 = or i32 %672, %664
  %675 = lshr i32 %660, 21
  %676 = and i32 %675, 1020
  %677 = or i32 %668, %676
  %678 = fmul fast float %618, 2.550000e+02
  %679 = fadd fast float %678, %190
  %680 = call float @dx.op.unary.f32(i32 27, float %679)  ; Round_ni(value)
  %681 = fmul fast float %680, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %673, i32 %674, i32 %677, float %681, float %681, float %681, float %681, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %682 = icmp eq i32 %345, %349
  br i1 %682, label %683, label %343, !llvm.loop !58

; <label>:683                                     ; preds = %653
  br label %684

; <label>:684                                     ; preds = %683, %339
  %685 = phi i32 [ 0, %339 ], [ %656, %683 ]
  %686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.i32 %686, 0
  %688 = call i32 @dx.op.tertiary.i32(i32 49, i32 %201, i32 %687, i32 %280)  ; UMad(a,b,c)
  %689 = shl i32 %688, 2
  %690 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %689, i32 undef, i32 undef, i32 %685)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %691 = add i32 %280, 1
  %692 = icmp ugt i32 %691, %276
  br i1 %692, label %693, label %279

; <label>:693                                     ; preds = %684
  br label %694

; <label>:694                                     ; preds = %693, %272, %56
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
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !30}
!30 = !{i32 0, i64 524560, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}

