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
; shader hash: 1bb339d30be7aec28c1f329f03b5a868
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
  %80 = fmul fast float %78, %65
  %81 = fmul fast float %79, %66
  %82 = fmul fast float %80, 2.000000e+00
  %83 = fmul fast float %81, 2.000000e+00
  %84 = fsub fast float 1.000000e+00, %82
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
  %180 = fmul fast float %78, %63
  %181 = fmul fast float %79, %64
  %182 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %180, float %181, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = extractvalue %dx.types.ResRet.f32 %182, 1
  %185 = extractvalue %dx.types.ResRet.f32 %182, 2
  %186 = fcmp fast ogt float %183, -1.000000e+00
  %187 = select i1 %186, float %72, float 1.000000e+00
  %188 = fadd fast float %183, 1.000000e+00
  %189 = fmul fast float %187, %188
  %190 = call float @dx.op.unary.f32(i32 6, float %189)  ; FAbs(value)
  %191 = fcmp fast ogt float %184, -1.000000e+00
  %192 = select i1 %191, float %72, float 1.000000e+00
  %193 = fadd fast float %184, 1.000000e+00
  %194 = fmul fast float %192, %193
  %195 = call float @dx.op.unary.f32(i32 6, float %194)  ; FAbs(value)
  %196 = fcmp fast ogt float %185, -1.000000e+00
  %197 = select i1 %196, float %72, float 1.000000e+00
  %198 = fadd fast float %185, 1.000000e+00
  %199 = fmul fast float %197, %198
  %200 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %201 = fadd fast float %63, 1.000000e+00
  %202 = fmul fast float %78, %201
  %203 = fadd fast float %64, 1.000000e+00
  %204 = fmul fast float %79, %203
  %205 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %202, float %204, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = extractvalue %dx.types.ResRet.f32 %205, 2
  %208 = fcmp fast ogt float %206, -1.000000e+00
  %209 = select i1 %208, float %72, float 1.000000e+00
  %210 = fadd fast float %206, 1.000000e+00
  %211 = fmul fast float %209, %210
  %212 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %213 = fcmp fast ogt float %207, -1.000000e+00
  %214 = select i1 %213, float %72, float 1.000000e+00
  %215 = fadd fast float %207, 1.000000e+00
  %216 = fmul fast float %214, %215
  %217 = call float @dx.op.unary.f32(i32 6, float %216)  ; FAbs(value)
  %218 = fsub fast float %200, %195
  %219 = fsub fast float %212, %195
  %220 = fsub fast float %190, %195
  %221 = fsub fast float %217, %195
  %222 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %223 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %224 = call float @dx.op.binary.f32(i32 35, float %223, float %222)  ; FMax(a,b)
  %225 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %226 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %227 = call float @dx.op.binary.f32(i32 35, float %226, float %225)  ; FMax(a,b)
  %228 = fadd fast float %219, %218
  %229 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %230 = fadd fast float %221, %220
  %231 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %232 = fsub fast float %227, %231
  %233 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %234 = fsub fast float %224, %229
  %235 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %236 = call float @dx.op.binary.f32(i32 35, float %235, float %233)  ; FMax(a,b)
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = fmul fast float %238, 0x3FE3C6EF40000000
  %240 = frem fast float %65, 2.560000e+02
  %241 = frem fast float %66, 2.560000e+02
  %242 = fptoui float %240 to i32
  %243 = fptoui float %241 to i32
  %244 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %242, i32 %243, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 2
  %247 = fadd fast float %245, %239
  %248 = fadd fast float %246, %239
  %249 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %250 = call float @dx.op.unary.f32(i32 22, float %248)  ; Frc(value)
  %251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.i32 %251, 0
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %918, label %254, !dx.controlflow.hints !37

; <label>:254                                     ; preds = %56
  %255 = fptoui float %65 to i32
  %256 = fptoui float %66 to i32
  %257 = lshr i32 %255, 4
  %258 = lshr i32 %256, 4
  %259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.i32 %259, 0
  %261 = call i32 @dx.op.tertiary.i32(i32 49, i32 %258, i32 %260, i32 %257)  ; UMad(a,b,c)
  %262 = add nsw i32 %252, -1
  %263 = call i32 @dx.op.binary.i32(i32 37, i32 %262, i32 0)  ; IMax(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %265 = fptoui float %264 to i32
  %266 = lshr i32 %265, 5
  %267 = call i32 @dx.op.binary.i32(i32 40, i32 %266, i32 8191)  ; UMin(a,b)
  %268 = shl i32 %267, 2
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = lshr i32 %270, 16
  %272 = and i32 %270, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %273 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %271 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %274 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %272 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %277 = lshr i32 %274, 5
  %278 = lshr i32 %276, 5
  %279 = call i32 @dx.op.binary.i32(i32 40, i32 %278, i32 %263)  ; UMin(a,b)
  %280 = icmp ugt i32 %277, %279
  br i1 %280, label %918, label %281

; <label>:281                                     ; preds = %254
  br label %282

; <label>:282                                     ; preds = %908, %281
  %283 = phi i32 [ %915, %908 ], [ %277, %281 ]
  %284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.i32 %284, 0
  %286 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %285, i32 %283)  ; UMad(a,b,c)
  %287 = shl i32 %286, 2
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %283, 5
  %291 = sub nsw i32 %271, %290
  %292 = call i32 @dx.op.binary.i32(i32 37, i32 %291, i32 0)  ; IMax(a,b)
  %293 = call i32 @dx.op.binary.i32(i32 38, i32 %292, i32 31)  ; IMin(a,b)
  %294 = sub nsw i32 1, %271
  %295 = add nsw i32 %294, %272
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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %306 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %305 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %307 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %308 = icmp eq i32 %22, 0
  br i1 %308, label %309, label %310, !dx.controlflow.hints !38

; <label>:309                                     ; preds = %282
  store i32 %307, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  br label %310

; <label>:310                                     ; preds = %309, %282
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %311 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %908, label %313

; <label>:313                                     ; preds = %310
  br label %314

; <label>:314                                     ; preds = %868, %313
  %315 = phi i32 [ %880, %868 ], [ 0, %313 ]
  %316 = phi i32 [ %321, %868 ], [ %311, %313 ]
  %317 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %316)  ; FirstbitLo(value)
  %318 = add i32 %317, %290
  %319 = and i32 %317, 31
  %320 = shl i32 1, %319
  %321 = xor i32 %320, %316
  %322 = mul i32 %318, 112
  %323 = add i32 %322, 16
  %324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = extractvalue %dx.types.ResRet.f32 %324, 1
  %327 = extractvalue %dx.types.ResRet.f32 %324, 2
  %328 = add i32 %322, 28
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = add i32 %322, 32
  %332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = extractvalue %dx.types.ResRet.f32 %332, 1
  %335 = extractvalue %dx.types.ResRet.f32 %332, 2
  %336 = add i32 %322, 44
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = add i32 %322, 48
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = extractvalue %dx.types.ResRet.f32 %340, 1
  %343 = extractvalue %dx.types.ResRet.f32 %340, 2
  %344 = extractvalue %dx.types.ResRet.f32 %340, 3
  %345 = add i32 %322, 64
  %346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = extractvalue %dx.types.ResRet.f32 %346, 1
  %349 = extractvalue %dx.types.ResRet.f32 %346, 2
  %350 = extractvalue %dx.types.ResRet.f32 %346, 3
  %351 = add i32 %322, 92
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = uitofp i32 %354 to float
  %356 = lshr i32 %353, 16
  %357 = uitofp i32 %356 to float
  %358 = and i32 %330, 65535
  %359 = and i32 %330, 50331648
  %360 = icmp eq i32 %359, 33554432
  %361 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = fsub fast float %131, %341
  %363 = fsub fast float %132, %342
  %364 = fsub fast float %133, %343
  %365 = call float @dx.op.dot3.f32(i32 55, float %362, float %363, float %364, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = fdiv fast float %365, %361
  %367 = call float @dx.op.binary.f32(i32 35, float %366, float -1.000000e+00)  ; FMax(a,b)
  %368 = call float @dx.op.binary.f32(i32 36, float %367, float 1.000000e+00)  ; FMin(a,b)
  %369 = fmul fast float %368, %333
  %370 = fmul fast float %368, %334
  %371 = fmul fast float %368, %335
  %372 = fadd fast float %369, %341
  %373 = fadd fast float %370, %342
  %374 = fadd fast float %371, %343
  %375 = fsub fast float %372, %131
  %376 = fsub fast float %373, %132
  %377 = fsub fast float %374, %133
  %378 = call float @dx.op.dot3.f32(i32 55, float %375, float %376, float %377, float %375, float %376, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %380 = fdiv fast float 1.000000e+00, %379
  %381 = fmul fast float %375, %380
  %382 = fmul fast float %376, %380
  %383 = fmul fast float %377, %380
  br i1 %360, label %384, label %408, !dx.controlflow.hints !39

; <label>:384                                     ; preds = %314
  %385 = fmul fast float %349, %325
  %386 = fmul fast float %349, %326
  %387 = fmul fast float %349, %327
  %388 = fsub fast float %385, %131
  %389 = fadd fast float %388, %372
  %390 = fsub fast float %386, %132
  %391 = fadd fast float %390, %373
  %392 = fsub fast float %387, %133
  %393 = fadd fast float %392, %374
  %394 = call float @dx.op.dot3.f32(i32 55, float %389, float %391, float %393, float %389, float %391, float %393)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = call float @dx.op.unary.f32(i32 25, float %394)  ; Rsqrt(value)
  %396 = fmul fast float %395, %389
  %397 = fmul fast float %395, %391
  %398 = fmul fast float %395, %393
  %399 = fsub fast float %131, %372
  %400 = fsub fast float %132, %373
  %401 = fsub fast float %133, %374
  %402 = fsub fast float -0.000000e+00, %399
  %403 = fsub fast float -0.000000e+00, %400
  %404 = fsub fast float -0.000000e+00, %401
  %405 = call float @dx.op.dot3.f32(i32 55, float %402, float %403, float %404, float %325, float %326, float %327)  ; Dot3(ax,ay,az,bx,by,bz)
  %406 = fcmp fast ogt float %405, 0.000000e+00
  %407 = uitofp i1 %406 to float
  br label %408

; <label>:408                                     ; preds = %384, %314
  %409 = phi float [ %407, %384 ], [ 1.000000e+00, %314 ]
  %410 = phi float [ %396, %384 ], [ %381, %314 ]
  %411 = phi float [ %397, %384 ], [ %382, %314 ]
  %412 = phi float [ %398, %384 ], [ %383, %314 ]
  %413 = call float @dx.op.dot3.f32(i32 55, float %325, float %326, float %327, float %410, float %411, float %412)  ; Dot3(ax,ay,az,bx,by,bz)
  %414 = fmul fast float %413, %413
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = fsub fast float 1.000000e+00, %415
  %417 = fmul fast float %416, 5.000000e-01
  %418 = fcmp fast ogt float %413, 0.000000e+00
  %419 = fsub fast float 1.000000e+00, %417
  %420 = select i1 %418, float %417, float %419
  %421 = fmul fast float %420, %357
  %422 = fadd fast float %421, %355
  %423 = fmul fast float %422, 0x3EF0001000000000
  %424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %423, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = fmul fast float %413, %347
  %427 = fadd fast float %426, %348
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = select i1 %360, float 1.000000e+00, float %428
  %430 = select i1 %360, float %428, float 1.000000e+00
  %431 = fmul fast float %379, %344
  %432 = fsub fast float 1.000000e+00, %431
  %433 = fmul fast float %432, %350
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fmul fast float %434, %430
  %436 = fmul fast float %435, 2.000000e+00
  %437 = fsub fast float 3.000000e+00, %436
  %438 = fmul fast float %425, %409
  %439 = fmul fast float %435, %435
  %440 = fmul fast float %439, %438
  %441 = fmul fast float %440, %437
  %442 = icmp ne i32 %358, 255
  %443 = call float @dx.op.binary.f32(i32 36, float %441, float %441)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %441, float %443)  ; FMin(a,b)
  %445 = fcmp fast ogt float %444, 0.000000e+00
  %446 = and i1 %442, %445
  br i1 %446, label %447, label %591, !dx.controlflow.hints !40

; <label>:447                                     ; preds = %408
  %448 = mul nuw nsw i32 %358, 176
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = add nuw nsw i32 %448, 16
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = add nuw nsw i32 %448, 32
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = add nuw nsw i32 %448, 48
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = extractvalue %dx.types.ResRet.f32 %464, 3
  %469 = add nuw nsw i32 %448, 64
  %470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  %472 = extractvalue %dx.types.ResRet.f32 %470, 1
  %473 = extractvalue %dx.types.ResRet.f32 %470, 2
  %474 = extractvalue %dx.types.ResRet.f32 %470, 3
  %475 = add nuw nsw i32 %448, 80
  %476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = extractvalue %dx.types.ResRet.f32 %476, 1
  %479 = extractvalue %dx.types.ResRet.f32 %476, 2
  %480 = extractvalue %dx.types.ResRet.f32 %476, 3
  %481 = add nuw nsw i32 %448, 96
  %482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 0
  %484 = extractvalue %dx.types.ResRet.f32 %482, 1
  %485 = extractvalue %dx.types.ResRet.f32 %482, 2
  %486 = extractvalue %dx.types.ResRet.f32 %482, 3
  %487 = bitcast float %457 to i32
  %488 = fmul fast float %462, %177
  %489 = fmul fast float %462, %178
  %490 = fmul fast float %462, %179
  %491 = fadd fast float %488, %131
  %492 = fadd fast float %489, %132
  %493 = fadd fast float %490, %133
  %494 = fmul fast float %491, %465
  %495 = call float @dx.op.tertiary.f32(i32 46, float %492, float %471, float %494)  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %493, float %477, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %496, %483
  %498 = fmul fast float %491, %466
  %499 = call float @dx.op.tertiary.f32(i32 46, float %492, float %472, float %498)  ; FMad(a,b,c)
  %500 = call float @dx.op.tertiary.f32(i32 46, float %493, float %478, float %499)  ; FMad(a,b,c)
  %501 = fadd fast float %500, %484
  %502 = fmul fast float %491, %467
  %503 = call float @dx.op.tertiary.f32(i32 46, float %492, float %473, float %502)  ; FMad(a,b,c)
  %504 = call float @dx.op.tertiary.f32(i32 46, float %493, float %479, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %504, %485
  %506 = fmul fast float %491, %468
  %507 = call float @dx.op.tertiary.f32(i32 46, float %492, float %474, float %506)  ; FMad(a,b,c)
  %508 = call float @dx.op.tertiary.f32(i32 46, float %493, float %480, float %507)  ; FMad(a,b,c)
  %509 = fadd fast float %508, %486
  %510 = fdiv fast float %497, %509
  %511 = fdiv fast float %501, %509
  %512 = fdiv fast float %505, %509
  %513 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %512)  ; FMax(a,b)
  %514 = fmul fast float %249, 0x401921FB60000000
  %515 = call float @dx.op.unary.f32(i32 13, float %514)  ; Sin(value)
  %516 = call float @dx.op.unary.f32(i32 12, float %514)  ; Cos(value)
  %517 = fmul fast float %516, %461
  %518 = call float @dx.op.tertiary.f32(i32 46, float %515, float %461, float 0.000000e+00)  ; FMad(a,b,c)
  %519 = fmul fast float %461, %515
  %520 = fsub fast float -0.000000e+00, %519
  %521 = call float @dx.op.tertiary.f32(i32 46, float %516, float %461, float 0.000000e+00)  ; FMad(a,b,c)
  br label %522

; <label>:522                                     ; preds = %522, %447
  %523 = phi float [ 0.000000e+00, %447 ], [ %555, %522 ]
  %524 = phi float [ 0.000000e+00, %447 ], [ %557, %522 ]
  %525 = phi i32 [ 0, %447 ], [ %558, %522 ]
  %526 = mul i32 %525, 2
  %527 = add i32 0, %526
  %528 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %527
  %529 = load float, float* %528, align 4
  %530 = mul i32 %525, 2
  %531 = add i32 1, %530
  %532 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %531
  %533 = load float, float* %532, align 4
  %534 = fmul fast float %517, %529
  %535 = call float @dx.op.tertiary.f32(i32 46, float %533, float %520, float %534)  ; FMad(a,b,c)
  %536 = fmul fast float %529, %518
  %537 = call float @dx.op.tertiary.f32(i32 46, float %533, float %521, float %536)  ; FMad(a,b,c)
  %538 = fadd fast float %535, %510
  %539 = fadd fast float %537, %511
  %540 = fmul fast float %538, %456
  %541 = fmul fast float %539, %456
  %542 = call float @dx.op.binary.f32(i32 35, float %540, float %452)  ; FMax(a,b)
  %543 = call float @dx.op.binary.f32(i32 35, float %541, float %452)  ; FMax(a,b)
  %544 = call float @dx.op.binary.f32(i32 36, float %542, float %453)  ; FMin(a,b)
  %545 = call float @dx.op.binary.f32(i32 36, float %543, float %453)  ; FMin(a,b)
  %546 = fadd fast float %544, %450
  %547 = fadd fast float %545, %451
  %548 = uitofp i32 %487 to float
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %546, float %547, float %548, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = fsub fast float %550, %513
  %552 = fsub fast float %551, %460
  %553 = fcmp fast ogt float %552, 0.000000e+00
  %554 = select i1 %553, float 1.000000e+00, float 0.000000e+00
  %555 = fadd fast float %554, %523
  %556 = select i1 %553, float %552, float 0.000000e+00
  %557 = fadd fast float %556, %524
  %558 = add nuw nsw i32 %525, 1
  %559 = icmp eq i32 %558, 8
  br i1 %559, label %560, label %522

; <label>:560                                     ; preds = %522
  %561 = fdiv fast float 1.000000e+00, %555
  %562 = fmul fast float %561, %557
  %563 = fdiv fast float 1.000000e+00, %513
  %564 = fmul fast float %562, %563
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = call float @dx.op.binary.f32(i32 35, float %565, float 0.000000e+00)  ; FMax(a,b)
  %567 = fmul fast float %555, 1.250000e-01
  %568 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %569 = fmul fast float %568, 2.000000e+00
  %570 = fadd fast float %569, -1.000000e+00
  %571 = fcmp fast ogt float %570, 0.000000e+00
  %572 = fcmp fast olt float %570, 0.000000e+00
  %573 = zext i1 %571 to i32
  %574 = zext i1 %572 to i32
  %575 = sub nsw i32 %573, %574
  %576 = sitofp i32 %575 to float
  %577 = fmul fast float %576, %570
  %578 = fsub fast float 1.000000e+00, %577
  %579 = fmul fast float %578, %578
  %580 = fmul fast float %579, %578
  %581 = fsub fast float %578, %580
  %582 = fmul fast float %581, %566
  %583 = fsub fast float 1.000000e+00, %580
  %584 = fsub fast float %583, %582
  %585 = fmul fast float %576, 5.000000e-01
  %586 = fmul fast float %585, %584
  %587 = fsub fast float -5.000000e-01, %586
  %588 = fmul fast float %587, %429
  %589 = fadd fast float %588, 1.000000e+00
  %590 = fmul fast float %589, %441
  br label %591

; <label>:591                                     ; preds = %560, %408
  %592 = phi float [ %590, %560 ], [ %441, %408 ]
  %593 = call float @dx.op.binary.f32(i32 36, float %592, float %592)  ; FMin(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %592, float %593)  ; FMin(a,b)
  %595 = fcmp fast ogt float %594, 0.000000e+00
  %596 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %381, float %382, float %383)  ; Dot3(ax,ay,az,bx,by,bz)
  %597 = fcmp fast ogt float %596, 0.000000e+00
  %598 = and i1 %595, %597
  br i1 %598, label %599, label %868, !dx.controlflow.hints !41

; <label>:599                                     ; preds = %591
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %604 = select i1 %69, float %601, float %603
  %605 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %606 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %607 = select i1 %69, float %605, float %606
  %608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.i32 %608, 0
  %610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.i32 %610, 0
  %612 = select i1 %69, i32 %609, i32 %611
  %613 = fcmp fast olt float %604, 5.000000e-01
  %614 = icmp eq i32 %612, 0
  %615 = or i1 %613, %614
  br i1 %615, label %863, label %616, !dx.controlflow.hints !42

; <label>:616                                     ; preds = %599
  %617 = fsub fast float %341, %131
  %618 = fsub fast float %342, %132
  %619 = fsub fast float %343, %133
  %620 = fmul fast float %617, %617
  %621 = fmul fast float %618, %618
  %622 = fadd fast float %620, %621
  %623 = fmul fast float %619, %619
  %624 = fadd fast float %622, %623
  %625 = call float @dx.op.unary.f32(i32 24, float %624)  ; Sqrt(value)
  %626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.i32 %626, 0
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %604, %338
  %630 = fdiv fast float %629, %625
  %631 = call float @dx.op.binary.f32(i32 36, float %630, float 1.000000e+01)  ; FMin(a,b)
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %635 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %636 = extractvalue %dx.types.CBufRet.f32 %632, 3
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %640 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %641 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %649 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %650 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %651 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %655 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %656 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %660 = extractvalue %dx.types.CBufRet.f32 %657, 2
  %661 = extractvalue %dx.types.CBufRet.f32 %657, 3
  %662 = select i1 %69, float %633, float %648
  %663 = select i1 %69, float %638, float %653
  %664 = select i1 %69, float %643, float %658
  %665 = select i1 %69, float %634, float %649
  %666 = select i1 %69, float %639, float %654
  %667 = select i1 %69, float %644, float %659
  %668 = select i1 %69, float %635, float %650
  %669 = select i1 %69, float %640, float %655
  %670 = select i1 %69, float %645, float %660
  %671 = select i1 %69, float %636, float %651
  %672 = select i1 %69, float %641, float %656
  %673 = select i1 %69, float %646, float %661
  %674 = fmul fast float %250, 0x401061CAC0000000
  %675 = fmul fast float %250, 0x4023E1D7E0000000
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %678 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %679 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %680 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %681 = fsub fast float -0.000000e+00, %381
  %682 = fmul fast float %383, %681
  %683 = fmul fast float %381, %681
  %684 = fmul fast float %382, %382
  %685 = fsub fast float %683, %684
  %686 = fdiv fast float 1.000000e+00, %76
  %687 = fmul fast float %679, %65
  %688 = fmul fast float %680, %66
  %689 = fmul fast float %604, %381
  %690 = fmul fast float %604, %383
  %691 = fadd fast float %689, %131
  %692 = fadd fast float %690, %133
  %693 = fadd fast float %675, 5.000000e-01
  %694 = call float @dx.op.unary.f32(i32 22, float %693)  ; Frc(value)
  %695 = bitcast float %694 to i32
  %696 = ashr i32 %695, 1
  %697 = add nsw i32 %696, 532487669
  %698 = bitcast i32 %697 to float
  %699 = fmul fast float %698, %631
  %700 = fadd fast float %674, 5.000000e-01
  %701 = call float @dx.op.unary.f32(i32 22, float %700)  ; Frc(value)
  %702 = fmul fast float %701, 0x401921FB60000000
  %703 = call float @dx.op.unary.f32(i32 12, float %702)  ; Cos(value)
  %704 = fmul fast float %703, %703
  %705 = fsub fast float 1.000000e+00, %704
  %706 = bitcast float %705 to i32
  %707 = ashr i32 %706, 1
  %708 = add nsw i32 %707, 532487669
  %709 = bitcast i32 %708 to float
  %710 = fmul fast float %699, %703
  %711 = fmul fast float %710, %382
  %712 = fmul fast float %710, %681
  %713 = fadd fast float %691, %711
  %714 = fmul fast float %709, %699
  %715 = fmul fast float %682, %714
  %716 = fmul fast float %714, %383
  %717 = fmul fast float %714, %685
  %718 = fsub fast float %713, %715
  %719 = fadd fast float %716, %604
  %720 = fmul fast float %719, %382
  %721 = fadd fast float %712, %132
  %722 = fadd fast float %721, %720
  %723 = fadd fast float %692, %717
  %724 = fmul fast float %718, %662
  %725 = call float @dx.op.tertiary.f32(i32 46, float %722, float %665, float %724)  ; FMad(a,b,c)
  %726 = call float @dx.op.tertiary.f32(i32 46, float %723, float %668, float %725)  ; FMad(a,b,c)
  %727 = fadd fast float %726, %671
  %728 = fmul fast float %718, %663
  %729 = call float @dx.op.tertiary.f32(i32 46, float %722, float %666, float %728)  ; FMad(a,b,c)
  %730 = call float @dx.op.tertiary.f32(i32 46, float %723, float %669, float %729)  ; FMad(a,b,c)
  %731 = fadd fast float %730, %672
  %732 = fmul fast float %718, %664
  %733 = call float @dx.op.tertiary.f32(i32 46, float %722, float %667, float %732)  ; FMad(a,b,c)
  %734 = call float @dx.op.tertiary.f32(i32 46, float %723, float %670, float %733)  ; FMad(a,b,c)
  %735 = fadd fast float %734, %673
  %736 = fdiv fast float 1.000000e+00, %735
  %737 = fmul fast float %727, 5.000000e-01
  %738 = fmul fast float %731, -5.000000e-01
  %739 = fmul fast float %737, %736
  %740 = fmul fast float %738, %736
  %741 = fsub fast float 5.000000e-01, %687
  %742 = fadd fast float %741, %739
  %743 = fsub fast float 5.000000e-01, %688
  %744 = fadd fast float %743, %740
  %745 = fsub fast float %736, %686
  %746 = call float @dx.op.dot2.f32(i32 54, float %742, float %744, float %742, float %744)  ; Dot2(ax,ay,bx,by)
  %747 = call float @dx.op.binary.f32(i32 35, float %746, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %748 = call float @dx.op.dot2.f32(i32 54, float %677, float %678, float %677, float %678)  ; Dot2(ax,ay,bx,by)
  %749 = fmul fast float %748, %747
  %750 = call float @dx.op.unary.f32(i32 25, float %749)  ; Rsqrt(value)
  %751 = fmul fast float %750, %742
  %752 = fmul fast float %750, %744
  %753 = fadd fast float %751, %687
  %754 = fadd fast float %752, %688
  %755 = fmul fast float %742, %677
  %756 = fmul fast float %744, %678
  %757 = fmul fast float %755, %755
  %758 = fmul fast float %756, %756
  %759 = fadd fast float %757, %758
  %760 = call float @dx.op.unary.f32(i32 24, float %759)  ; Sqrt(value)
  %761 = fdiv fast float 1.000000e+00, %760
  %762 = fmul fast float %760, 3.906250e-03
  %763 = fmul fast float %236, 0x3F70624DE0000000
  %764 = fadd fast float %763, 0x3F70624DE0000000
  %765 = icmp sgt i32 %612, -1
  br i1 %765, label %766, label %828

; <label>:766                                     ; preds = %616
  br label %767

; <label>:767                                     ; preds = %824, %766
  %768 = phi float [ %799, %824 ], [ %76, %766 ]
  %769 = phi float [ %786, %824 ], [ %76, %766 ]
  %770 = phi float [ %769, %824 ], [ %76, %766 ]
  %771 = phi i32 [ %825, %824 ], [ 0, %766 ]
  %772 = sitofp i32 %771 to float
  %773 = fadd fast float %250, 5.000000e-01
  %774 = call float @dx.op.unary.f32(i32 22, float %773)  ; Frc(value)
  %775 = fadd fast float %772, %774
  %776 = sitofp i32 %612 to float
  %777 = fdiv fast float %775, %776
  %778 = fmul fast float %777, %777
  %779 = call float @dx.op.binary.f32(i32 36, float %778, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %780 = fmul fast float %779, %742
  %781 = fmul fast float %779, %744
  %782 = fmul fast float %779, %745
  %783 = fadd fast float %780, %753
  %784 = fadd fast float %781, %754
  %785 = fadd fast float %782, %686
  %786 = fdiv fast float 1.000000e+00, %785
  %787 = icmp ne i32 %627, 0
  %788 = fmul fast float %762, %779
  %789 = call float @dx.op.binary.f32(i32 36, float %788, float %628)  ; FMin(a,b)
  %790 = select i1 %787, float %789, float 0.000000e+00
  %791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %783, float %784, float undef, float undef, i32 0, i32 0, i32 undef, float %790)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  %793 = fcmp fast ogt float %792, -1.000000e+00
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %796 = select i1 %793, float %795, float 1.000000e+00
  %797 = fadd fast float %792, 1.000000e+00
  %798 = fmul fast float %796, %797
  %799 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %800 = fmul fast float %799, %764
  %801 = fsub fast float %786, %799
  %802 = fsub fast float %801, %800
  %803 = fcmp fast ogt float %802, 0.000000e+00
  %804 = fcmp fast ogt float %607, 0.000000e+00
  br i1 %804, label %805, label %808, !dx.controlflow.hints !43

; <label>:805                                     ; preds = %767
  %806 = fsub fast float %786, %770
  %807 = call float @dx.op.binary.f32(i32 35, float %806, float %607)  ; FMax(a,b)
  br label %808

; <label>:808                                     ; preds = %805, %767
  %809 = phi float [ %807, %805 ], [ %604, %767 ]
  %810 = fcmp fast olt float %802, %809
  %811 = fcmp uge float %792, -1.000000e+00
  %812 = or i1 %69, %811
  %813 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %814 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %815 = fcmp fast oeq float %783, %813
  %816 = fcmp fast oeq float %784, %814
  %817 = and i1 %815, %816
  %818 = and i1 %812, %817
  %819 = and i1 %803, %810
  %820 = and i1 %819, %818
  %821 = fcmp fast ogt float %779, %761
  %822 = and i1 %821, %820
  %823 = zext i1 %822 to i32
  br i1 %822, label %827, label %824, !dx.controlflow.hints !44

; <label>:824                                     ; preds = %808
  %825 = add nuw nsw i32 %771, 1
  %826 = icmp slt i32 %771, %612
  br i1 %826, label %767, label %827

; <label>:827                                     ; preds = %824, %808
  br label %828

; <label>:828                                     ; preds = %827, %616
  %829 = phi i32 [ 0, %616 ], [ %823, %827 ]
  %830 = phi float [ %76, %616 ], [ %799, %827 ]
  %831 = phi float [ %76, %616 ], [ %768, %827 ]
  %832 = phi float [ %76, %616 ], [ %786, %827 ]
  %833 = phi float [ %76, %616 ], [ %769, %827 ]
  %834 = fsub fast float %833, %831
  %835 = fsub fast float %832, %830
  %836 = fsub fast float %834, %835
  %837 = fcmp fast une float %836, 0.000000e+00
  %838 = fmul fast float %834, %832
  %839 = fmul fast float %833, %835
  %840 = fsub fast float %838, %839
  %841 = fdiv fast float 1.000000e+00, %836
  %842 = fmul fast float %840, %841
  %843 = select i1 %837, float %842, float %832
  %844 = fdiv fast float 1.000000e+00, %843
  %845 = fsub fast float %844, %686
  %846 = fdiv fast float %845, %745
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %848 = fmul fast float %847, %742
  %849 = fmul fast float %847, %744
  %850 = fadd fast float %848, %753
  %851 = fadd fast float %849, %754
  %852 = fadd fast float %850, -5.000000e-01
  %853 = fadd fast float %851, -5.000000e-01
  %854 = call float @dx.op.unary.f32(i32 6, float %852)  ; FAbs(value)
  %855 = call float @dx.op.unary.f32(i32 6, float %853)  ; FAbs(value)
  %856 = fadd fast float %854, -5.000000e-01
  %857 = fadd fast float %855, -5.000000e-01
  %858 = call float @dx.op.binary.f32(i32 35, float %856, float %857)  ; FMax(a,b)
  %859 = fcmp fast olt float %858, 0.000000e+00
  %860 = icmp ne i32 %829, 0
  %861 = and i1 %860, %859
  %862 = select i1 %861, float 0.000000e+00, float 1.000000e+00
  br label %863

; <label>:863                                     ; preds = %828, %599
  %864 = phi float [ %862, %828 ], [ 1.000000e+00, %599 ]
  %865 = fmul fast float %864, %592
  %866 = fmul fast float %864, %592
  %867 = fmul fast float %864, %592
  br label %868

; <label>:868                                     ; preds = %863, %591
  %869 = phi float [ %865, %863 ], [ %592, %591 ]
  %870 = phi float [ %866, %863 ], [ %592, %591 ]
  %871 = phi float [ %867, %863 ], [ %592, %591 ]
  %872 = call float @dx.op.binary.f32(i32 36, float %870, float %871)  ; FMin(a,b)
  %873 = call float @dx.op.binary.f32(i32 36, float %869, float %872)  ; FMin(a,b)
  %874 = fcmp fast ogt float %873, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %875 = zext i1 %874 to i32
  %876 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %875 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %877 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  %878 = icmp eq i32 %877, 0
  %879 = select i1 %878, i32 0, i32 %320
  %880 = or i32 %315, %879
  %881 = lshr i32 %255, 5
  %882 = lshr i32 %256, 5
  %883 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %881, i32 %882, i32 %318, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = lshr i32 %255, 1
  %886 = lshr i32 %256, 1
  %887 = and i32 %885, 15
  %888 = and i32 %886, 15
  %889 = and i32 %255, 1
  %890 = shl i32 %256, 1
  %891 = and i32 %890, 2
  %892 = or i32 %891, %889
  %893 = lshr i32 %884, 2
  %894 = and i32 %893, 8176
  %895 = lshr i32 %884, 11
  %896 = and i32 %895, 4080
  %897 = or i32 %894, %887
  %898 = or i32 %896, %888
  %899 = lshr i32 %884, 21
  %900 = and i32 %899, 1020
  %901 = or i32 %892, %900
  %902 = fmul fast float %869, 2.550000e+02
  %903 = fadd fast float %902, %249
  %904 = call float @dx.op.unary.f32(i32 27, float %903)  ; Round_ni(value)
  %905 = fmul fast float %904, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %897, i32 %898, i32 %901, float %905, float %905, float %905, float %905, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %906 = icmp eq i32 %316, %320
  br i1 %906, label %907, label %314, !llvm.loop !45

; <label>:907                                     ; preds = %868
  br label %908

; <label>:908                                     ; preds = %907, %310
  %909 = phi i32 [ 0, %310 ], [ %880, %907 ]
  %910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.i32 %910, 0
  %912 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %911, i32 %283)  ; UMad(a,b,c)
  %913 = shl i32 %912, 2
  %914 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %913, i32 undef, i32 undef, i32 %909)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %915 = add i32 %283, 1
  %916 = icmp ugt i32 %915, %279
  br i1 %916, label %917, label %282

; <label>:917                                     ; preds = %908
  br label %918

; <label>:918                                     ; preds = %917, %254, %56
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
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}

