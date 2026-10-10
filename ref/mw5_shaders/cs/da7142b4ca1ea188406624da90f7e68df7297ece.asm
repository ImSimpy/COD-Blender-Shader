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
; shader hash: aa89f5c7bed2f72c8e386f91b64e05a7
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
  br i1 %194, label %1229, label %195, !dx.controlflow.hints !38

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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %212 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %215 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %216 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %213 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  %218 = lshr i32 %215, 5
  %219 = lshr i32 %217, 5
  %220 = call i32 @dx.op.binary.i32(i32 40, i32 %219, i32 %204)  ; UMin(a,b)
  %221 = icmp ugt i32 %218, %220
  br i1 %221, label %1229, label %222

; <label>:222                                     ; preds = %195
  br label %223

; <label>:223                                     ; preds = %1219, %222
  %224 = phi i32 [ %1226, %1219 ], [ %218, %222 ]
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 0
  %227 = call i32 @dx.op.tertiary.i32(i32 49, i32 %202, i32 %226, i32 %224)  ; UMad(a,b,c)
  %228 = shl i32 %227, 2
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = shl i32 %224, 5
  %232 = sub nsw i32 %212, %231
  %233 = call i32 @dx.op.binary.i32(i32 37, i32 %232, i32 0)  ; IMax(a,b)
  %234 = call i32 @dx.op.binary.i32(i32 38, i32 %233, i32 31)  ; IMin(a,b)
  %235 = sub nsw i32 1, %212
  %236 = add nsw i32 %235, %213
  %237 = call i32 @dx.op.binary.i32(i32 37, i32 %236, i32 0)  ; IMax(a,b)
  %238 = call i32 @dx.op.binary.i32(i32 38, i32 %237, i32 32)  ; IMin(a,b)
  %239 = and i32 %238, 31
  %240 = shl i32 -1, %239
  %241 = xor i32 %240, -1
  %242 = and i32 %234, 31
  %243 = shl i32 %241, %242
  %244 = icmp eq i32 %238, 32
  %245 = select i1 %244, i32 -1, i32 %243
  %246 = and i32 %245, %230
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %247 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %246 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %248 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = icmp eq i32 %23, 0
  br i1 %249, label %250, label %251, !dx.controlflow.hints !39

; <label>:250                                     ; preds = %223
  store i32 %248, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  br label %251

; <label>:251                                     ; preds = %250, %223
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %252 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %1219, label %254

; <label>:254                                     ; preds = %251
  br label %255

; <label>:255                                     ; preds = %1181, %254
  %256 = phi i32 [ %1191, %1181 ], [ 0, %254 ]
  %257 = phi i32 [ %262, %1181 ], [ %252, %254 ]
  %258 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %257)  ; FirstbitLo(value)
  %259 = add i32 %258, %231
  %260 = and i32 %258, 31
  %261 = shl i32 1, %260
  %262 = xor i32 %261, %257
  %263 = mul i32 %259, 112
  %264 = add i32 %263, 16
  %265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = add i32 %263, 28
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = add i32 %263, 32
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = add i32 %263, 44
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = add i32 %263, 48
  %281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = extractvalue %dx.types.ResRet.f32 %281, 1
  %284 = extractvalue %dx.types.ResRet.f32 %281, 2
  %285 = extractvalue %dx.types.ResRet.f32 %281, 3
  %286 = add i32 %263, 64
  %287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = extractvalue %dx.types.ResRet.f32 %287, 3
  %292 = add i32 %263, 92
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = uitofp i32 %295 to float
  %297 = lshr i32 %294, 16
  %298 = uitofp i32 %297 to float
  %299 = and i32 %271, 65535
  %300 = and i32 %271, 50331648
  %301 = icmp eq i32 %300, 33554432
  %302 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fsub fast float %132, %282
  %304 = fsub fast float %133, %283
  %305 = fsub fast float %134, %284
  %306 = call float @dx.op.dot3.f32(i32 55, float %303, float %304, float %305, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = fdiv fast float %306, %302
  %308 = call float @dx.op.binary.f32(i32 35, float %307, float -1.000000e+00)  ; FMax(a,b)
  %309 = call float @dx.op.binary.f32(i32 36, float %308, float 1.000000e+00)  ; FMin(a,b)
  %310 = fmul fast float %309, %274
  %311 = fmul fast float %309, %275
  %312 = fmul fast float %309, %276
  %313 = fadd fast float %310, %282
  %314 = fadd fast float %311, %283
  %315 = fadd fast float %312, %284
  %316 = fsub fast float %313, %132
  %317 = fsub fast float %314, %133
  %318 = fsub fast float %315, %134
  %319 = call float @dx.op.dot3.f32(i32 55, float %316, float %317, float %318, float %316, float %317, float %318)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %321 = fdiv fast float 1.000000e+00, %320
  %322 = fmul fast float %316, %321
  %323 = fmul fast float %317, %321
  %324 = fmul fast float %318, %321
  br i1 %301, label %325, label %349, !dx.controlflow.hints !40

; <label>:325                                     ; preds = %255
  %326 = fmul fast float %290, %266
  %327 = fmul fast float %290, %267
  %328 = fmul fast float %290, %268
  %329 = fsub fast float %326, %132
  %330 = fadd fast float %329, %313
  %331 = fsub fast float %327, %133
  %332 = fadd fast float %331, %314
  %333 = fsub fast float %328, %134
  %334 = fadd fast float %333, %315
  %335 = call float @dx.op.dot3.f32(i32 55, float %330, float %332, float %334, float %330, float %332, float %334)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = call float @dx.op.unary.f32(i32 25, float %335)  ; Rsqrt(value)
  %337 = fmul fast float %336, %330
  %338 = fmul fast float %336, %332
  %339 = fmul fast float %336, %334
  %340 = fsub fast float %132, %313
  %341 = fsub fast float %133, %314
  %342 = fsub fast float %134, %315
  %343 = fsub fast float -0.000000e+00, %340
  %344 = fsub fast float -0.000000e+00, %341
  %345 = fsub fast float -0.000000e+00, %342
  %346 = call float @dx.op.dot3.f32(i32 55, float %343, float %344, float %345, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %347 = fcmp fast ogt float %346, 0.000000e+00
  %348 = uitofp i1 %347 to float
  br label %349

; <label>:349                                     ; preds = %325, %255
  %350 = phi float [ %348, %325 ], [ 1.000000e+00, %255 ]
  %351 = phi float [ %337, %325 ], [ %322, %255 ]
  %352 = phi float [ %338, %325 ], [ %323, %255 ]
  %353 = phi float [ %339, %325 ], [ %324, %255 ]
  %354 = call float @dx.op.dot3.f32(i32 55, float %266, float %267, float %268, float %351, float %352, float %353)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = fmul fast float %354, %354
  %356 = call float @dx.op.unary.f32(i32 7, float %355)  ; Saturate(value)
  %357 = fsub fast float 1.000000e+00, %356
  %358 = fmul fast float %357, 5.000000e-01
  %359 = fcmp fast ogt float %354, 0.000000e+00
  %360 = fsub fast float 1.000000e+00, %358
  %361 = select i1 %359, float %358, float %360
  %362 = fmul fast float %361, %298
  %363 = fadd fast float %362, %296
  %364 = fmul fast float %363, 0x3EF0001000000000
  %365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %364, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = fmul fast float %354, %288
  %368 = fadd fast float %367, %289
  %369 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  %370 = select i1 %301, float 1.000000e+00, float %369
  %371 = select i1 %301, float %369, float 1.000000e+00
  %372 = fmul fast float %320, %285
  %373 = fsub fast float 1.000000e+00, %372
  %374 = fmul fast float %373, %291
  %375 = call float @dx.op.unary.f32(i32 7, float %374)  ; Saturate(value)
  %376 = fmul fast float %375, %371
  %377 = fmul fast float %376, 2.000000e+00
  %378 = fsub fast float 3.000000e+00, %377
  %379 = fmul fast float %366, %350
  %380 = fmul fast float %376, %376
  %381 = fmul fast float %380, %379
  %382 = fmul fast float %381, %378
  %383 = icmp ne i32 %299, 255
  %384 = call float @dx.op.binary.f32(i32 36, float %382, float %382)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 36, float %382, float %384)  ; FMin(a,b)
  %386 = fcmp fast ogt float %385, 0.000000e+00
  %387 = and i1 %383, %386
  br i1 %387, label %388, label %1181, !dx.controlflow.hints !41

; <label>:388                                     ; preds = %349
  %389 = mul nuw nsw i32 %299, 176
  %390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = extractvalue %dx.types.ResRet.f32 %390, 2
  %394 = extractvalue %dx.types.ResRet.f32 %390, 3
  %395 = add nuw nsw i32 %389, 16
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = add nuw nsw i32 %389, 32
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = extractvalue %dx.types.ResRet.f32 %400, 3
  %405 = add nuw nsw i32 %389, 48
  %406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = extractvalue %dx.types.ResRet.f32 %406, 3
  %411 = add nuw nsw i32 %389, 64
  %412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = add nuw nsw i32 %389, 80
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = extractvalue %dx.types.ResRet.f32 %418, 3
  %423 = add nuw nsw i32 %389, 96
  %424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  %429 = add nuw nsw i32 %389, 112
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = add nuw nsw i32 %389, 128
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = add nuw nsw i32 %389, 144
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = extractvalue %dx.types.ResRet.f32 %442, 3
  %447 = add nuw nsw i32 %389, 160
  %448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = bitcast float %398 to i32
  %454 = bitcast float %404 to i32
  %455 = and i32 %454, 1
  %456 = icmp ne i32 %455, 0
  %457 = and i32 %454, 2
  %458 = fmul fast float %178, %403
  %459 = fmul fast float %179, %403
  %460 = fmul fast float %180, %403
  %461 = fadd fast float %458, %132
  %462 = fadd fast float %459, %133
  %463 = fadd fast float %460, %134
  %464 = fmul fast float %461, %407
  %465 = call float @dx.op.tertiary.f32(i32 46, float %462, float %413, float %464)  ; FMad(a,b,c)
  %466 = call float @dx.op.tertiary.f32(i32 46, float %463, float %419, float %465)  ; FMad(a,b,c)
  %467 = fadd fast float %466, %425
  %468 = fmul fast float %461, %408
  %469 = call float @dx.op.tertiary.f32(i32 46, float %462, float %414, float %468)  ; FMad(a,b,c)
  %470 = call float @dx.op.tertiary.f32(i32 46, float %463, float %420, float %469)  ; FMad(a,b,c)
  %471 = fadd fast float %470, %426
  %472 = fmul fast float %461, %409
  %473 = call float @dx.op.tertiary.f32(i32 46, float %462, float %415, float %472)  ; FMad(a,b,c)
  %474 = call float @dx.op.tertiary.f32(i32 46, float %463, float %421, float %473)  ; FMad(a,b,c)
  %475 = fadd fast float %474, %427
  %476 = fmul fast float %461, %410
  %477 = call float @dx.op.tertiary.f32(i32 46, float %462, float %416, float %476)  ; FMad(a,b,c)
  %478 = call float @dx.op.tertiary.f32(i32 46, float %463, float %422, float %477)  ; FMad(a,b,c)
  %479 = fadd fast float %478, %428
  %480 = fdiv fast float %467, %479
  %481 = fdiv fast float %471, %479
  %482 = fdiv fast float %475, %479
  %483 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %482)  ; FMax(a,b)
  %484 = fmul fast float %191, 0x401921FB60000000
  %485 = call float @dx.op.unary.f32(i32 13, float %484)  ; Sin(value)
  %486 = call float @dx.op.unary.f32(i32 12, float %484)  ; Cos(value)
  %487 = fsub fast float -0.000000e+00, %485
  %488 = icmp eq i32 %457, 0
  br i1 %488, label %489, label %560, !dx.controlflow.hints !42

; <label>:489                                     ; preds = %388
  %490 = fmul fast float %486, %402
  %491 = call float @dx.op.tertiary.f32(i32 46, float %485, float %402, float 0.000000e+00)  ; FMad(a,b,c)
  %492 = fmul fast float %402, %487
  %493 = call float @dx.op.tertiary.f32(i32 46, float %486, float %402, float 0.000000e+00)  ; FMad(a,b,c)
  br label %494

; <label>:494                                     ; preds = %494, %489
  %495 = phi float [ 0.000000e+00, %489 ], [ %527, %494 ]
  %496 = phi float [ 0.000000e+00, %489 ], [ %529, %494 ]
  %497 = phi i32 [ 0, %489 ], [ %530, %494 ]
  %498 = mul i32 %497, 2
  %499 = add i32 0, %498
  %500 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %499
  %501 = load float, float* %500, align 4
  %502 = mul i32 %497, 2
  %503 = add i32 1, %502
  %504 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %503
  %505 = load float, float* %504, align 4
  %506 = fmul fast float %490, %501
  %507 = call float @dx.op.tertiary.f32(i32 46, float %505, float %492, float %506)  ; FMad(a,b,c)
  %508 = fmul fast float %501, %491
  %509 = call float @dx.op.tertiary.f32(i32 46, float %505, float %493, float %508)  ; FMad(a,b,c)
  %510 = fadd fast float %507, %480
  %511 = fadd fast float %509, %481
  %512 = fmul fast float %510, %397
  %513 = fmul fast float %511, %397
  %514 = call float @dx.op.binary.f32(i32 35, float %512, float %393)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 35, float %513, float %393)  ; FMax(a,b)
  %516 = call float @dx.op.binary.f32(i32 36, float %514, float %394)  ; FMin(a,b)
  %517 = call float @dx.op.binary.f32(i32 36, float %515, float %394)  ; FMin(a,b)
  %518 = fadd fast float %516, %391
  %519 = fadd fast float %517, %392
  %520 = uitofp i32 %453 to float
  %521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %518, float %519, float %520, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = fsub fast float %522, %483
  %524 = fsub fast float %523, %401
  %525 = fcmp fast ogt float %524, 0.000000e+00
  %526 = select i1 %525, float 1.000000e+00, float 0.000000e+00
  %527 = fadd fast float %526, %495
  %528 = select i1 %525, float %524, float 0.000000e+00
  %529 = fadd fast float %528, %496
  %530 = add nuw nsw i32 %497, 1
  %531 = icmp eq i32 %530, 8
  br i1 %531, label %532, label %494

; <label>:532                                     ; preds = %494
  %533 = fdiv fast float 1.000000e+00, %527
  %534 = fmul fast float %533, %529
  %535 = fdiv fast float 1.000000e+00, %483
  %536 = fmul fast float %534, %535
  %537 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  %538 = call float @dx.op.binary.f32(i32 35, float %537, float 0.000000e+00)  ; FMax(a,b)
  %539 = fmul fast float %527, 1.250000e-01
  %540 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %541 = fmul fast float %540, 2.000000e+00
  %542 = fadd fast float %541, -1.000000e+00
  %543 = fcmp fast ogt float %542, 0.000000e+00
  %544 = fcmp fast olt float %542, 0.000000e+00
  %545 = zext i1 %543 to i32
  %546 = zext i1 %544 to i32
  %547 = sub nsw i32 %545, %546
  %548 = sitofp i32 %547 to float
  %549 = fmul fast float %548, %542
  %550 = fsub fast float 1.000000e+00, %549
  %551 = fmul fast float %550, %550
  %552 = fmul fast float %551, %550
  %553 = fsub fast float %550, %552
  %554 = fmul fast float %553, %538
  %555 = fsub fast float 1.000000e+00, %552
  %556 = fsub fast float %555, %554
  %557 = fmul fast float %548, 5.000000e-01
  %558 = fmul fast float %557, %556
  %559 = fsub fast float 5.000000e-01, %558
  br label %1175

; <label>:560                                     ; preds = %388
  %561 = fsub fast float 1.000000e+00, %483
  %562 = fmul fast float %561, 5.000000e-01
  %563 = fadd fast float %562, %483
  %564 = fsub fast float %461, %282
  %565 = fsub fast float %462, %283
  %566 = fsub fast float %463, %284
  %567 = call float @dx.op.dot3.f32(i32 55, float %564, float %565, float %566, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = fdiv fast float %567, %302
  %569 = call float @dx.op.binary.f32(i32 35, float %568, float -1.000000e+00)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 36, float %569, float 1.000000e+00)  ; FMin(a,b)
  %571 = fmul fast float %570, %274
  %572 = fmul fast float %570, %275
  %573 = fmul fast float %570, %276
  %574 = fsub fast float %564, %571
  %575 = fsub fast float %565, %572
  %576 = fsub fast float %566, %573
  %577 = call float @dx.op.dot3.f32(i32 55, float %574, float %575, float %576, float %574, float %575, float %576)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = call float @dx.op.unary.f32(i32 25, float %577)  ; Rsqrt(value)
  %579 = fmul fast float %574, %578
  %580 = fmul fast float %575, %578
  %581 = fmul fast float %576, %578
  %582 = call float @dx.op.unary.f32(i32 25, float %302)  ; Rsqrt(value)
  %583 = fmul fast float %582, %274
  %584 = fmul fast float %582, %275
  %585 = fmul fast float %582, %276
  br i1 %456, label %586, label %590, !dx.controlflow.hints !43

; <label>:586                                     ; preds = %560
  %587 = fcmp fast olt float %580, 0x3FE6666660000000
  %588 = select i1 %587, float 1.000000e+00, float 0.000000e+00
  %589 = select i1 %587, float 0.000000e+00, float 1.000000e+00
  br label %590

; <label>:590                                     ; preds = %586, %560
  %591 = phi float [ 0.000000e+00, %586 ], [ %583, %560 ]
  %592 = phi float [ %588, %586 ], [ %584, %560 ]
  %593 = phi float [ %589, %586 ], [ %585, %560 ]
  %594 = fmul fast float %592, %581
  %595 = fmul fast float %593, %580
  %596 = fsub fast float %594, %595
  %597 = fmul fast float %593, %579
  %598 = fmul fast float %591, %581
  %599 = fsub fast float %597, %598
  %600 = fmul fast float %591, %580
  %601 = fmul fast float %592, %579
  %602 = fsub fast float %600, %601
  %603 = call float @dx.op.dot3.f32(i32 55, float %596, float %599, float %602, float %596, float %599, float %602)  ; Dot3(ax,ay,az,bx,by,bz)
  %604 = call float @dx.op.unary.f32(i32 25, float %603)  ; Rsqrt(value)
  %605 = fmul fast float %604, %279
  %606 = fmul fast float %605, %596
  %607 = fmul fast float %605, %599
  %608 = fmul fast float %602, %279
  %609 = fmul fast float %608, %604
  %610 = fmul fast float %480, %431
  %611 = call float @dx.op.tertiary.f32(i32 46, float %481, float %437, float %610)  ; FMad(a,b,c)
  %612 = call float @dx.op.tertiary.f32(i32 46, float %563, float %443, float %611)  ; FMad(a,b,c)
  %613 = fadd fast float %612, %449
  %614 = fmul fast float %480, %432
  %615 = call float @dx.op.tertiary.f32(i32 46, float %481, float %438, float %614)  ; FMad(a,b,c)
  %616 = call float @dx.op.tertiary.f32(i32 46, float %563, float %444, float %615)  ; FMad(a,b,c)
  %617 = fadd fast float %616, %450
  %618 = fmul fast float %480, %433
  %619 = call float @dx.op.tertiary.f32(i32 46, float %481, float %439, float %618)  ; FMad(a,b,c)
  %620 = call float @dx.op.tertiary.f32(i32 46, float %563, float %445, float %619)  ; FMad(a,b,c)
  %621 = fadd fast float %620, %451
  %622 = fmul fast float %480, %434
  %623 = call float @dx.op.tertiary.f32(i32 46, float %481, float %440, float %622)  ; FMad(a,b,c)
  %624 = call float @dx.op.tertiary.f32(i32 46, float %563, float %446, float %623)  ; FMad(a,b,c)
  %625 = fadd fast float %624, %452
  %626 = fdiv fast float 1.000000e+00, %625
  %627 = fmul fast float %626, %613
  %628 = fmul fast float %626, %617
  %629 = fmul fast float %626, %621
  %630 = fsub fast float -0.000000e+00, %579
  %631 = fsub fast float -0.000000e+00, %580
  %632 = fsub fast float -0.000000e+00, %581
  %633 = fsub fast float %282, %606
  %634 = fsub fast float %283, %607
  %635 = fsub fast float %284, %609
  %636 = fsub fast float %627, %633
  %637 = fsub fast float %628, %634
  %638 = fsub fast float %629, %635
  %639 = call float @dx.op.dot3.f32(i32 55, float %636, float %637, float %638, float %636, float %637, float %638)  ; Dot3(ax,ay,az,bx,by,bz)
  %640 = call float @dx.op.unary.f32(i32 25, float %639)  ; Rsqrt(value)
  %641 = fmul fast float %636, %640
  %642 = fmul fast float %637, %640
  %643 = fmul fast float %638, %640
  %644 = fsub fast float %461, %633
  %645 = fsub fast float %462, %634
  %646 = fsub fast float %463, %635
  %647 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %644, float %645, float %646)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %641, float %642, float %643)  ; Dot3(ax,ay,az,bx,by,bz)
  %649 = fdiv fast float 1.000000e+00, %648
  %650 = fmul fast float %649, %647
  %651 = fmul fast float %650, %641
  %652 = fmul fast float %650, %642
  %653 = fmul fast float %650, %643
  %654 = fadd fast float %651, %633
  %655 = fadd fast float %652, %634
  %656 = fadd fast float %653, %635
  %657 = fadd fast float %606, %282
  %658 = fadd fast float %607, %283
  %659 = fadd fast float %609, %284
  %660 = fsub fast float %627, %657
  %661 = fsub fast float %628, %658
  %662 = fsub fast float %629, %659
  %663 = call float @dx.op.dot3.f32(i32 55, float %660, float %661, float %662, float %660, float %661, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %664 = call float @dx.op.unary.f32(i32 25, float %663)  ; Rsqrt(value)
  %665 = fmul fast float %664, %660
  %666 = fmul fast float %664, %661
  %667 = fmul fast float %664, %662
  %668 = fsub fast float %461, %657
  %669 = fsub fast float %462, %658
  %670 = fsub fast float %463, %659
  %671 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %668, float %669, float %670)  ; Dot3(ax,ay,az,bx,by,bz)
  %672 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %665, float %666, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = fdiv fast float 1.000000e+00, %672
  %674 = fmul fast float %673, %671
  %675 = fmul fast float %674, %665
  %676 = fmul fast float %674, %666
  %677 = fmul fast float %674, %667
  %678 = fadd fast float %675, %657
  %679 = fadd fast float %676, %658
  %680 = fadd fast float %677, %659
  %681 = fmul fast float %654, %407
  %682 = call float @dx.op.tertiary.f32(i32 46, float %655, float %413, float %681)  ; FMad(a,b,c)
  %683 = call float @dx.op.tertiary.f32(i32 46, float %656, float %419, float %682)  ; FMad(a,b,c)
  %684 = fadd fast float %683, %425
  %685 = fmul fast float %654, %408
  %686 = call float @dx.op.tertiary.f32(i32 46, float %655, float %414, float %685)  ; FMad(a,b,c)
  %687 = call float @dx.op.tertiary.f32(i32 46, float %656, float %420, float %686)  ; FMad(a,b,c)
  %688 = fadd fast float %687, %426
  %689 = fmul fast float %654, %410
  %690 = call float @dx.op.tertiary.f32(i32 46, float %655, float %416, float %689)  ; FMad(a,b,c)
  %691 = call float @dx.op.tertiary.f32(i32 46, float %656, float %422, float %690)  ; FMad(a,b,c)
  %692 = fadd fast float %691, %428
  %693 = fmul fast float %678, %407
  %694 = call float @dx.op.tertiary.f32(i32 46, float %679, float %413, float %693)  ; FMad(a,b,c)
  %695 = call float @dx.op.tertiary.f32(i32 46, float %680, float %419, float %694)  ; FMad(a,b,c)
  %696 = fadd fast float %695, %425
  %697 = fmul fast float %678, %408
  %698 = call float @dx.op.tertiary.f32(i32 46, float %679, float %414, float %697)  ; FMad(a,b,c)
  %699 = call float @dx.op.tertiary.f32(i32 46, float %680, float %420, float %698)  ; FMad(a,b,c)
  %700 = fadd fast float %699, %426
  %701 = fmul fast float %678, %410
  %702 = call float @dx.op.tertiary.f32(i32 46, float %679, float %416, float %701)  ; FMad(a,b,c)
  %703 = call float @dx.op.tertiary.f32(i32 46, float %680, float %422, float %702)  ; FMad(a,b,c)
  %704 = fadd fast float %703, %428
  %705 = fdiv fast float 1.000000e+00, %692
  %706 = fmul fast float %705, %684
  %707 = fmul fast float %705, %688
  %708 = fdiv fast float 1.000000e+00, %704
  %709 = fmul fast float %708, %696
  %710 = fmul fast float %708, %700
  %711 = fsub fast float %709, %706
  %712 = fsub fast float %710, %707
  %713 = call float @dx.op.dot2.f32(i32 54, float %711, float %712, float %711, float %712)  ; Dot2(ax,ay,bx,by)
  %714 = call float @dx.op.unary.f32(i32 25, float %713)  ; Rsqrt(value)
  %715 = fmul fast float %711, %714
  %716 = fmul fast float %712, %714
  %717 = fmul fast float %711, %711
  %718 = fmul fast float %712, %712
  %719 = fadd fast float %717, %718
  %720 = call float @dx.op.unary.f32(i32 24, float %719)  ; Sqrt(value)
  %721 = fmul fast float %720, 5.000000e-01
  br i1 %456, label %814, label %722, !dx.controlflow.hints !44

; <label>:722                                     ; preds = %590
  %723 = fsub fast float %282, %274
  %724 = fsub fast float %283, %275
  %725 = fsub fast float %284, %276
  %726 = fsub fast float %627, %723
  %727 = fsub fast float %628, %724
  %728 = fsub fast float %629, %725
  %729 = call float @dx.op.dot3.f32(i32 55, float %726, float %727, float %728, float %726, float %727, float %728)  ; Dot3(ax,ay,az,bx,by,bz)
  %730 = call float @dx.op.unary.f32(i32 25, float %729)  ; Rsqrt(value)
  %731 = fmul fast float %730, %726
  %732 = fmul fast float %730, %727
  %733 = fmul fast float %730, %728
  %734 = fsub fast float %461, %723
  %735 = fsub fast float %462, %724
  %736 = fsub fast float %463, %725
  %737 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %734, float %735, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %738 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %731, float %732, float %733)  ; Dot3(ax,ay,az,bx,by,bz)
  %739 = fdiv fast float 1.000000e+00, %738
  %740 = fmul fast float %739, %737
  %741 = fmul fast float %740, %731
  %742 = fmul fast float %740, %732
  %743 = fmul fast float %740, %733
  %744 = fadd fast float %741, %723
  %745 = fadd fast float %742, %724
  %746 = fadd fast float %743, %725
  %747 = fadd fast float %282, %274
  %748 = fadd fast float %283, %275
  %749 = fadd fast float %284, %276
  %750 = fsub fast float %627, %747
  %751 = fsub fast float %628, %748
  %752 = fsub fast float %629, %749
  %753 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float %750, float %751, float %752)  ; Dot3(ax,ay,az,bx,by,bz)
  %754 = call float @dx.op.unary.f32(i32 25, float %753)  ; Rsqrt(value)
  %755 = fmul fast float %754, %750
  %756 = fmul fast float %754, %751
  %757 = fmul fast float %754, %752
  %758 = fsub fast float %461, %747
  %759 = fsub fast float %462, %748
  %760 = fsub fast float %463, %749
  %761 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %758, float %759, float %760)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %755, float %756, float %757)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = fdiv fast float 1.000000e+00, %762
  %764 = fmul fast float %763, %761
  %765 = fmul fast float %764, %755
  %766 = fmul fast float %764, %756
  %767 = fmul fast float %764, %757
  %768 = fadd fast float %765, %747
  %769 = fadd fast float %766, %748
  %770 = fadd fast float %767, %749
  %771 = fmul fast float %744, %407
  %772 = call float @dx.op.tertiary.f32(i32 46, float %745, float %413, float %771)  ; FMad(a,b,c)
  %773 = call float @dx.op.tertiary.f32(i32 46, float %746, float %419, float %772)  ; FMad(a,b,c)
  %774 = fadd fast float %773, %425
  %775 = fmul fast float %744, %408
  %776 = call float @dx.op.tertiary.f32(i32 46, float %745, float %414, float %775)  ; FMad(a,b,c)
  %777 = call float @dx.op.tertiary.f32(i32 46, float %746, float %420, float %776)  ; FMad(a,b,c)
  %778 = fadd fast float %777, %426
  %779 = fmul fast float %744, %410
  %780 = call float @dx.op.tertiary.f32(i32 46, float %745, float %416, float %779)  ; FMad(a,b,c)
  %781 = call float @dx.op.tertiary.f32(i32 46, float %746, float %422, float %780)  ; FMad(a,b,c)
  %782 = fadd fast float %781, %428
  %783 = fmul fast float %768, %407
  %784 = call float @dx.op.tertiary.f32(i32 46, float %769, float %413, float %783)  ; FMad(a,b,c)
  %785 = call float @dx.op.tertiary.f32(i32 46, float %770, float %419, float %784)  ; FMad(a,b,c)
  %786 = fadd fast float %785, %425
  %787 = fmul fast float %768, %408
  %788 = call float @dx.op.tertiary.f32(i32 46, float %769, float %414, float %787)  ; FMad(a,b,c)
  %789 = call float @dx.op.tertiary.f32(i32 46, float %770, float %420, float %788)  ; FMad(a,b,c)
  %790 = fadd fast float %789, %426
  %791 = fmul fast float %768, %410
  %792 = call float @dx.op.tertiary.f32(i32 46, float %769, float %416, float %791)  ; FMad(a,b,c)
  %793 = call float @dx.op.tertiary.f32(i32 46, float %770, float %422, float %792)  ; FMad(a,b,c)
  %794 = fadd fast float %793, %428
  %795 = fdiv fast float 1.000000e+00, %782
  %796 = fmul fast float %795, %774
  %797 = fmul fast float %795, %778
  %798 = fdiv fast float 1.000000e+00, %794
  %799 = fmul fast float %798, %786
  %800 = fmul fast float %798, %790
  %801 = fsub fast float %799, %796
  %802 = fsub fast float %800, %797
  %803 = call float @dx.op.dot2.f32(i32 54, float %801, float %802, float %801, float %802)  ; Dot2(ax,ay,bx,by)
  %804 = call float @dx.op.unary.f32(i32 25, float %803)  ; Rsqrt(value)
  %805 = fmul fast float %801, %804
  %806 = fmul fast float %802, %804
  %807 = fmul fast float %801, %801
  %808 = fmul fast float %802, %802
  %809 = fadd fast float %807, %808
  %810 = call float @dx.op.unary.f32(i32 24, float %809)  ; Sqrt(value)
  %811 = fmul fast float %810, 5.000000e-01
  %812 = fcmp fast olt float %811, %721
  br i1 %812, label %813, label %814, !dx.controlflow.hints !45

; <label>:813                                     ; preds = %722
  br label %814

; <label>:814                                     ; preds = %813, %722, %590
  %815 = phi float [ %721, %590 ], [ %811, %813 ], [ %721, %722 ]
  %816 = phi float [ %721, %590 ], [ %721, %813 ], [ %811, %722 ]
  %817 = phi float [ %715, %590 ], [ %715, %813 ], [ %805, %722 ]
  %818 = phi float [ %716, %590 ], [ %716, %813 ], [ %806, %722 ]
  %819 = fmul fast float %815, %402
  %820 = fdiv fast float %819, %816
  %821 = fsub fast float %402, %820
  %822 = fmul fast float %817, %817
  %823 = fmul fast float %822, %821
  %824 = fadd fast float %823, %820
  %825 = fmul fast float %818, %817
  %826 = fmul fast float %825, %821
  %827 = fmul fast float %818, %818
  %828 = fmul fast float %827, %821
  %829 = fadd fast float %828, %820
  %830 = fmul fast float %824, %486
  %831 = call float @dx.op.tertiary.f32(i32 46, float %485, float %826, float %830)  ; FMad(a,b,c)
  %832 = fmul fast float %826, %486
  %833 = call float @dx.op.tertiary.f32(i32 46, float %485, float %829, float %832)  ; FMad(a,b,c)
  %834 = fmul fast float %824, %487
  %835 = call float @dx.op.tertiary.f32(i32 46, float %486, float %826, float %834)  ; FMad(a,b,c)
  %836 = fmul fast float %826, %487
  %837 = call float @dx.op.tertiary.f32(i32 46, float %486, float %829, float %836)  ; FMad(a,b,c)
  br label %838

; <label>:838                                     ; preds = %876, %814
  %839 = phi float [ 0.000000e+00, %814 ], [ %877, %876 ]
  %840 = phi float [ 0.000000e+00, %814 ], [ %878, %876 ]
  %841 = phi float [ 0.000000e+00, %814 ], [ %879, %876 ]
  %842 = phi float [ 0.000000e+00, %814 ], [ %880, %876 ]
  %843 = phi i32 [ 0, %814 ], [ %881, %876 ]
  %844 = mul i32 %843, 2
  %845 = add i32 0, %844
  %846 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %845
  %847 = load float, float* %846, align 4
  %848 = mul i32 %843, 2
  %849 = add i32 1, %848
  %850 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %849
  %851 = load float, float* %850, align 4
  %852 = fmul fast float %847, %831
  %853 = call float @dx.op.tertiary.f32(i32 46, float %851, float %835, float %852)  ; FMad(a,b,c)
  %854 = fmul fast float %847, %833
  %855 = call float @dx.op.tertiary.f32(i32 46, float %851, float %837, float %854)  ; FMad(a,b,c)
  %856 = fadd fast float %853, %480
  %857 = fadd fast float %855, %481
  %858 = fmul fast float %856, %397
  %859 = fmul fast float %857, %397
  %860 = call float @dx.op.binary.f32(i32 35, float %858, float %393)  ; FMax(a,b)
  %861 = call float @dx.op.binary.f32(i32 35, float %859, float %393)  ; FMax(a,b)
  %862 = call float @dx.op.binary.f32(i32 36, float %860, float %394)  ; FMin(a,b)
  %863 = call float @dx.op.binary.f32(i32 36, float %861, float %394)  ; FMin(a,b)
  %864 = fadd fast float %862, %391
  %865 = fadd fast float %863, %392
  %866 = uitofp i32 %453 to float
  %867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %864, float %865, float %866, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = fadd fast float %483, %401
  %870 = fcmp fast olt float %869, %868
  br i1 %870, label %871, label %876, !dx.controlflow.hints !46

; <label>:871                                     ; preds = %838
  %872 = fadd fast float %868, %841
  %873 = fadd fast float %853, %839
  %874 = fadd fast float %855, %840
  %875 = fadd fast float %842, 1.000000e+00
  br label %876

; <label>:876                                     ; preds = %871, %838
  %877 = phi float [ %873, %871 ], [ %839, %838 ]
  %878 = phi float [ %874, %871 ], [ %840, %838 ]
  %879 = phi float [ %872, %871 ], [ %841, %838 ]
  %880 = phi float [ %875, %871 ], [ %842, %838 ]
  %881 = add nuw nsw i32 %843, 1
  %882 = icmp eq i32 %881, 8
  br i1 %882, label %883, label %838

; <label>:883                                     ; preds = %876
  %884 = fdiv fast float 1.000000e+00, %880
  %885 = fcmp fast oeq float %880, 0.000000e+00
  %886 = fmul fast float %884, %879
  %887 = select i1 %885, float -1.000000e+00, float %886
  %888 = fcmp fast olt float %887, 0.000000e+00
  br i1 %888, label %1175, label %889, !dx.controlflow.hints !47

; <label>:889                                     ; preds = %883
  %890 = fmul fast float %884, %878
  %891 = select i1 %885, float 0.000000e+00, float %890
  %892 = fmul fast float %884, %877
  %893 = select i1 %885, float 0.000000e+00, float %892
  %894 = fadd fast float %893, %480
  %895 = fadd fast float %891, %481
  br i1 %456, label %896, label %900, !dx.controlflow.hints !43

; <label>:896                                     ; preds = %889
  %897 = fcmp fast olt float %580, 0x3FE6666660000000
  %898 = select i1 %897, float 1.000000e+00, float 0.000000e+00
  %899 = select i1 %897, float 0.000000e+00, float 1.000000e+00
  br label %900

; <label>:900                                     ; preds = %896, %889
  %901 = phi float [ 0.000000e+00, %896 ], [ %583, %889 ]
  %902 = phi float [ %898, %896 ], [ %584, %889 ]
  %903 = phi float [ %899, %896 ], [ %585, %889 ]
  %904 = fmul fast float %902, %581
  %905 = fmul fast float %903, %580
  %906 = fsub fast float %904, %905
  %907 = fmul fast float %903, %579
  %908 = fmul fast float %901, %581
  %909 = fsub fast float %907, %908
  %910 = fmul fast float %901, %580
  %911 = fmul fast float %902, %579
  %912 = fsub fast float %910, %911
  %913 = call float @dx.op.dot3.f32(i32 55, float %906, float %909, float %912, float %906, float %909, float %912)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = call float @dx.op.unary.f32(i32 25, float %913)  ; Rsqrt(value)
  %915 = fmul fast float %914, %279
  %916 = fmul fast float %915, %906
  %917 = fmul fast float %915, %909
  %918 = fmul fast float %912, %279
  %919 = fmul fast float %918, %914
  %920 = fmul fast float %894, %431
  %921 = call float @dx.op.tertiary.f32(i32 46, float %895, float %437, float %920)  ; FMad(a,b,c)
  %922 = call float @dx.op.tertiary.f32(i32 46, float %887, float %443, float %921)  ; FMad(a,b,c)
  %923 = fadd fast float %922, %449
  %924 = fmul fast float %894, %432
  %925 = call float @dx.op.tertiary.f32(i32 46, float %895, float %438, float %924)  ; FMad(a,b,c)
  %926 = call float @dx.op.tertiary.f32(i32 46, float %887, float %444, float %925)  ; FMad(a,b,c)
  %927 = fadd fast float %926, %450
  %928 = fmul fast float %894, %433
  %929 = call float @dx.op.tertiary.f32(i32 46, float %895, float %439, float %928)  ; FMad(a,b,c)
  %930 = call float @dx.op.tertiary.f32(i32 46, float %887, float %445, float %929)  ; FMad(a,b,c)
  %931 = fadd fast float %930, %451
  %932 = fmul fast float %894, %434
  %933 = call float @dx.op.tertiary.f32(i32 46, float %895, float %440, float %932)  ; FMad(a,b,c)
  %934 = call float @dx.op.tertiary.f32(i32 46, float %887, float %446, float %933)  ; FMad(a,b,c)
  %935 = fadd fast float %934, %452
  %936 = fdiv fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %923
  %938 = fmul fast float %936, %927
  %939 = fmul fast float %936, %931
  %940 = fsub fast float %282, %916
  %941 = fsub fast float %283, %917
  %942 = fsub fast float %284, %919
  %943 = fsub fast float %937, %940
  %944 = fsub fast float %938, %941
  %945 = fsub fast float %939, %942
  %946 = call float @dx.op.dot3.f32(i32 55, float %943, float %944, float %945, float %943, float %944, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %947 = call float @dx.op.unary.f32(i32 25, float %946)  ; Rsqrt(value)
  %948 = fmul fast float %943, %947
  %949 = fmul fast float %944, %947
  %950 = fmul fast float %945, %947
  %951 = fsub fast float %461, %940
  %952 = fsub fast float %462, %941
  %953 = fsub fast float %463, %942
  %954 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %951, float %952, float %953)  ; Dot3(ax,ay,az,bx,by,bz)
  %955 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %948, float %949, float %950)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = fdiv fast float 1.000000e+00, %955
  %957 = fmul fast float %956, %954
  %958 = fmul fast float %957, %948
  %959 = fmul fast float %957, %949
  %960 = fmul fast float %957, %950
  %961 = fadd fast float %958, %940
  %962 = fadd fast float %959, %941
  %963 = fadd fast float %960, %942
  %964 = fadd fast float %916, %282
  %965 = fadd fast float %917, %283
  %966 = fadd fast float %919, %284
  %967 = fsub fast float %937, %964
  %968 = fsub fast float %938, %965
  %969 = fsub fast float %939, %966
  %970 = call float @dx.op.dot3.f32(i32 55, float %967, float %968, float %969, float %967, float %968, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = call float @dx.op.unary.f32(i32 25, float %970)  ; Rsqrt(value)
  %972 = fmul fast float %971, %967
  %973 = fmul fast float %971, %968
  %974 = fmul fast float %971, %969
  %975 = fsub fast float %461, %964
  %976 = fsub fast float %462, %965
  %977 = fsub fast float %463, %966
  %978 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %975, float %976, float %977)  ; Dot3(ax,ay,az,bx,by,bz)
  %979 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %972, float %973, float %974)  ; Dot3(ax,ay,az,bx,by,bz)
  %980 = fdiv fast float 1.000000e+00, %979
  %981 = fmul fast float %980, %978
  %982 = fmul fast float %981, %972
  %983 = fmul fast float %981, %973
  %984 = fmul fast float %981, %974
  %985 = fadd fast float %982, %964
  %986 = fadd fast float %983, %965
  %987 = fadd fast float %984, %966
  %988 = fmul fast float %961, %407
  %989 = call float @dx.op.tertiary.f32(i32 46, float %962, float %413, float %988)  ; FMad(a,b,c)
  %990 = call float @dx.op.tertiary.f32(i32 46, float %963, float %419, float %989)  ; FMad(a,b,c)
  %991 = fadd fast float %990, %425
  %992 = fmul fast float %961, %408
  %993 = call float @dx.op.tertiary.f32(i32 46, float %962, float %414, float %992)  ; FMad(a,b,c)
  %994 = call float @dx.op.tertiary.f32(i32 46, float %963, float %420, float %993)  ; FMad(a,b,c)
  %995 = fadd fast float %994, %426
  %996 = fmul fast float %961, %410
  %997 = call float @dx.op.tertiary.f32(i32 46, float %962, float %416, float %996)  ; FMad(a,b,c)
  %998 = call float @dx.op.tertiary.f32(i32 46, float %963, float %422, float %997)  ; FMad(a,b,c)
  %999 = fadd fast float %998, %428
  %1000 = fmul fast float %985, %407
  %1001 = call float @dx.op.tertiary.f32(i32 46, float %986, float %413, float %1000)  ; FMad(a,b,c)
  %1002 = call float @dx.op.tertiary.f32(i32 46, float %987, float %419, float %1001)  ; FMad(a,b,c)
  %1003 = fadd fast float %1002, %425
  %1004 = fmul fast float %985, %408
  %1005 = call float @dx.op.tertiary.f32(i32 46, float %986, float %414, float %1004)  ; FMad(a,b,c)
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %987, float %420, float %1005)  ; FMad(a,b,c)
  %1007 = fadd fast float %1006, %426
  %1008 = fmul fast float %985, %410
  %1009 = call float @dx.op.tertiary.f32(i32 46, float %986, float %416, float %1008)  ; FMad(a,b,c)
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %987, float %422, float %1009)  ; FMad(a,b,c)
  %1011 = fadd fast float %1010, %428
  %1012 = fdiv fast float 1.000000e+00, %999
  %1013 = fmul fast float %1012, %991
  %1014 = fmul fast float %1012, %995
  %1015 = fdiv fast float 1.000000e+00, %1011
  %1016 = fmul fast float %1015, %1003
  %1017 = fmul fast float %1015, %1007
  %1018 = fsub fast float %1016, %1013
  %1019 = fsub fast float %1017, %1014
  %1020 = call float @dx.op.dot2.f32(i32 54, float %1018, float %1019, float %1018, float %1019)  ; Dot2(ax,ay,bx,by)
  %1021 = call float @dx.op.unary.f32(i32 25, float %1020)  ; Rsqrt(value)
  %1022 = fmul fast float %1018, %1021
  %1023 = fmul fast float %1019, %1021
  %1024 = fmul fast float %1018, %1018
  %1025 = fmul fast float %1019, %1019
  %1026 = fadd fast float %1024, %1025
  %1027 = call float @dx.op.unary.f32(i32 24, float %1026)  ; Sqrt(value)
  %1028 = fmul fast float %1027, 5.000000e-01
  br i1 %456, label %1121, label %1029, !dx.controlflow.hints !44

; <label>:1029                                    ; preds = %900
  %1030 = fsub fast float %282, %274
  %1031 = fsub fast float %283, %275
  %1032 = fsub fast float %284, %276
  %1033 = fsub fast float %937, %1030
  %1034 = fsub fast float %938, %1031
  %1035 = fsub fast float %939, %1032
  %1036 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1034, float %1035, float %1033, float %1034, float %1035)  ; Dot3(ax,ay,az,bx,by,bz)
  %1037 = call float @dx.op.unary.f32(i32 25, float %1036)  ; Rsqrt(value)
  %1038 = fmul fast float %1037, %1033
  %1039 = fmul fast float %1037, %1034
  %1040 = fmul fast float %1037, %1035
  %1041 = fsub fast float %461, %1030
  %1042 = fsub fast float %462, %1031
  %1043 = fsub fast float %463, %1032
  %1044 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %1041, float %1042, float %1043)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %1038, float %1039, float %1040)  ; Dot3(ax,ay,az,bx,by,bz)
  %1046 = fdiv fast float 1.000000e+00, %1045
  %1047 = fmul fast float %1046, %1044
  %1048 = fmul fast float %1047, %1038
  %1049 = fmul fast float %1047, %1039
  %1050 = fmul fast float %1047, %1040
  %1051 = fadd fast float %1048, %1030
  %1052 = fadd fast float %1049, %1031
  %1053 = fadd fast float %1050, %1032
  %1054 = fadd fast float %282, %274
  %1055 = fadd fast float %283, %275
  %1056 = fadd fast float %284, %276
  %1057 = fsub fast float %937, %1054
  %1058 = fsub fast float %938, %1055
  %1059 = fsub fast float %939, %1056
  %1060 = call float @dx.op.dot3.f32(i32 55, float %1057, float %1058, float %1059, float %1057, float %1058, float %1059)  ; Dot3(ax,ay,az,bx,by,bz)
  %1061 = call float @dx.op.unary.f32(i32 25, float %1060)  ; Rsqrt(value)
  %1062 = fmul fast float %1061, %1057
  %1063 = fmul fast float %1061, %1058
  %1064 = fmul fast float %1061, %1059
  %1065 = fsub fast float %461, %1054
  %1066 = fsub fast float %462, %1055
  %1067 = fsub fast float %463, %1056
  %1068 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %1065, float %1066, float %1067)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %1062, float %1063, float %1064)  ; Dot3(ax,ay,az,bx,by,bz)
  %1070 = fdiv fast float 1.000000e+00, %1069
  %1071 = fmul fast float %1070, %1068
  %1072 = fmul fast float %1071, %1062
  %1073 = fmul fast float %1071, %1063
  %1074 = fmul fast float %1071, %1064
  %1075 = fadd fast float %1072, %1054
  %1076 = fadd fast float %1073, %1055
  %1077 = fadd fast float %1074, %1056
  %1078 = fmul fast float %1051, %407
  %1079 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %413, float %1078)  ; FMad(a,b,c)
  %1080 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %419, float %1079)  ; FMad(a,b,c)
  %1081 = fadd fast float %1080, %425
  %1082 = fmul fast float %1051, %408
  %1083 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %414, float %1082)  ; FMad(a,b,c)
  %1084 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %420, float %1083)  ; FMad(a,b,c)
  %1085 = fadd fast float %1084, %426
  %1086 = fmul fast float %1051, %410
  %1087 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %416, float %1086)  ; FMad(a,b,c)
  %1088 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %422, float %1087)  ; FMad(a,b,c)
  %1089 = fadd fast float %1088, %428
  %1090 = fmul fast float %1075, %407
  %1091 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %413, float %1090)  ; FMad(a,b,c)
  %1092 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %419, float %1091)  ; FMad(a,b,c)
  %1093 = fadd fast float %1092, %425
  %1094 = fmul fast float %1075, %408
  %1095 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %414, float %1094)  ; FMad(a,b,c)
  %1096 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %420, float %1095)  ; FMad(a,b,c)
  %1097 = fadd fast float %1096, %426
  %1098 = fmul fast float %1075, %410
  %1099 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %416, float %1098)  ; FMad(a,b,c)
  %1100 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %422, float %1099)  ; FMad(a,b,c)
  %1101 = fadd fast float %1100, %428
  %1102 = fdiv fast float 1.000000e+00, %1089
  %1103 = fmul fast float %1102, %1081
  %1104 = fmul fast float %1102, %1085
  %1105 = fdiv fast float 1.000000e+00, %1101
  %1106 = fmul fast float %1105, %1093
  %1107 = fmul fast float %1105, %1097
  %1108 = fsub fast float %1106, %1103
  %1109 = fsub fast float %1107, %1104
  %1110 = call float @dx.op.dot2.f32(i32 54, float %1108, float %1109, float %1108, float %1109)  ; Dot2(ax,ay,bx,by)
  %1111 = call float @dx.op.unary.f32(i32 25, float %1110)  ; Rsqrt(value)
  %1112 = fmul fast float %1108, %1111
  %1113 = fmul fast float %1109, %1111
  %1114 = fmul fast float %1108, %1108
  %1115 = fmul fast float %1109, %1109
  %1116 = fadd fast float %1114, %1115
  %1117 = call float @dx.op.unary.f32(i32 24, float %1116)  ; Sqrt(value)
  %1118 = fmul fast float %1117, 5.000000e-01
  %1119 = fcmp fast olt float %1118, %1028
  br i1 %1119, label %1120, label %1121, !dx.controlflow.hints !45

; <label>:1120                                    ; preds = %1029
  br label %1121

; <label>:1121                                    ; preds = %1120, %1029, %900
  %1122 = phi float [ %1028, %900 ], [ %1118, %1120 ], [ %1028, %1029 ]
  %1123 = phi float [ %1028, %900 ], [ %1028, %1120 ], [ %1118, %1029 ]
  %1124 = phi float [ %1022, %900 ], [ %1022, %1120 ], [ %1112, %1029 ]
  %1125 = phi float [ %1023, %900 ], [ %1023, %1120 ], [ %1113, %1029 ]
  %1126 = fsub fast float %1123, %1122
  %1127 = fmul fast float %1124, %1124
  %1128 = fmul fast float %1127, %1126
  %1129 = fadd fast float %1128, %1122
  %1130 = fmul fast float %1124, %1126
  %1131 = fmul fast float %1130, %1125
  %1132 = fmul fast float %1125, %1125
  %1133 = fmul fast float %1132, %1126
  %1134 = fadd fast float %1133, %1122
  %1135 = fmul fast float %1129, %486
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %485, float %1131, float %1135)  ; FMad(a,b,c)
  %1137 = fmul fast float %1131, %486
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %485, float %1134, float %1137)  ; FMad(a,b,c)
  %1139 = fmul fast float %1129, %487
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %486, float %1131, float %1139)  ; FMad(a,b,c)
  %1141 = fmul fast float %1131, %487
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %486, float %1134, float %1141)  ; FMad(a,b,c)
  br label %1143

; <label>:1143                                    ; preds = %1143, %1121
  %1144 = phi float [ 0.000000e+00, %1121 ], [ %1170, %1143 ]
  %1145 = phi i32 [ 0, %1121 ], [ %1171, %1143 ]
  %1146 = mul i32 %1145, 2
  %1147 = add i32 0, %1146
  %1148 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1147
  %1149 = load float, float* %1148, align 4
  %1150 = mul i32 %1145, 2
  %1151 = add i32 1, %1150
  %1152 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1151
  %1153 = load float, float* %1152, align 4
  %1154 = fmul fast float %1149, %1136
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1153, float %1140, float %1154)  ; FMad(a,b,c)
  %1156 = fmul fast float %1149, %1138
  %1157 = call float @dx.op.tertiary.f32(i32 46, float %1153, float %1142, float %1156)  ; FMad(a,b,c)
  %1158 = fadd fast float %1155, %480
  %1159 = fadd fast float %1157, %481
  %1160 = fmul fast float %1158, %397
  %1161 = fmul fast float %1159, %397
  %1162 = call float @dx.op.binary.f32(i32 35, float %1160, float %393)  ; FMax(a,b)
  %1163 = call float @dx.op.binary.f32(i32 35, float %1161, float %393)  ; FMax(a,b)
  %1164 = call float @dx.op.binary.f32(i32 36, float %1162, float %394)  ; FMin(a,b)
  %1165 = call float @dx.op.binary.f32(i32 36, float %1163, float %394)  ; FMin(a,b)
  %1166 = fadd fast float %1164, %391
  %1167 = fadd fast float %1165, %392
  %1168 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %17, float %1166, float %1167, float %866, float undef, i32 0, i32 0, i32 undef, float %869)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = fadd fast float %1169, %1144
  %1171 = add nuw nsw i32 %1145, 1
  %1172 = icmp eq i32 %1171, 8
  br i1 %1172, label %1173, label %1143

; <label>:1173                                    ; preds = %1143
  %1174 = fmul fast float %1170, 1.250000e-01
  br label %1175

; <label>:1175                                    ; preds = %1173, %883, %532
  %1176 = phi float [ %559, %532 ], [ %1174, %1173 ], [ 1.000000e+00, %883 ]
  %1177 = fadd fast float %1176, -1.000000e+00
  %1178 = fmul fast float %1177, %370
  %1179 = fadd fast float %1178, 1.000000e+00
  %1180 = fmul fast float %1179, %382
  br label %1181

; <label>:1181                                    ; preds = %1175, %349
  %1182 = phi float [ %1180, %1175 ], [ %382, %349 ]
  %1183 = call float @dx.op.binary.f32(i32 36, float %1182, float %1182)  ; FMin(a,b)
  %1184 = call float @dx.op.binary.f32(i32 36, float %1182, float %1183)  ; FMin(a,b)
  %1185 = fcmp fast ogt float %1184, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1186 = zext i1 %1185 to i32
  %1187 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %1186 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1188 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !34
  %1189 = icmp eq i32 %1188, 0
  %1190 = select i1 %1189, i32 0, i32 %261
  %1191 = or i32 %256, %1190
  %1192 = lshr i32 %196, 5
  %1193 = lshr i32 %197, 5
  %1194 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1192, i32 %1193, i32 %259, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = lshr i32 %196, 1
  %1197 = lshr i32 %197, 1
  %1198 = and i32 %1196, 15
  %1199 = and i32 %1197, 15
  %1200 = and i32 %196, 1
  %1201 = shl i32 %197, 1
  %1202 = and i32 %1201, 2
  %1203 = or i32 %1202, %1200
  %1204 = lshr i32 %1195, 2
  %1205 = and i32 %1204, 8176
  %1206 = lshr i32 %1195, 11
  %1207 = and i32 %1206, 4080
  %1208 = or i32 %1205, %1198
  %1209 = or i32 %1207, %1199
  %1210 = lshr i32 %1195, 21
  %1211 = and i32 %1210, 1020
  %1212 = or i32 %1203, %1211
  %1213 = fmul fast float %1182, 2.550000e+02
  %1214 = fadd fast float %1213, %191
  %1215 = call float @dx.op.unary.f32(i32 27, float %1214)  ; Round_ni(value)
  %1216 = fmul fast float %1215, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1208, i32 %1209, i32 %1212, float %1216, float %1216, float %1216, float %1216, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1217 = icmp eq i32 %257, %261
  br i1 %1217, label %1218, label %255, !llvm.loop !48

; <label>:1218                                    ; preds = %1181
  br label %1219

; <label>:1219                                    ; preds = %1218, %251
  %1220 = phi i32 [ 0, %251 ], [ %1191, %1218 ]
  %1221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.i32 %1221, 0
  %1223 = call i32 @dx.op.tertiary.i32(i32 49, i32 %202, i32 %1222, i32 %224)  ; UMad(a,b,c)
  %1224 = shl i32 %1223, 2
  %1225 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1224, i32 undef, i32 undef, i32 %1220)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1226 = add i32 %224, 1
  %1227 = icmp ugt i32 %1226, %220
  br i1 %1227, label %1228, label %223

; <label>:1228                                    ; preds = %1219
  br label %1229

; <label>:1229                                    ; preds = %1228, %195, %57
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
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}

