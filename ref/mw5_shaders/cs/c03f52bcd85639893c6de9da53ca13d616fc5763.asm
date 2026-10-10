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
; shader hash: ca72237bef7d810b6fbaa7857ecdc712
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
  br i1 %253, label %1036, label %254, !dx.controlflow.hints !37

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
  %273 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %274 = udiv i32 %22, %273
  %275 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %271, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %276 = icmp eq i32 %273, 64
  br i1 %276, label %303, label %277, !dx.controlflow.hints !38

; <label>:277                                     ; preds = %254
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %278, label %279, label %281, !dx.controlflow.hints !39

; <label>:279                                     ; preds = %277
  %280 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %274
  store i32 %275, i32 addrspace(3)* %280, align 4, !tbaa !33
  br label %281

; <label>:281                                     ; preds = %279, %277
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %282 = icmp eq i32 %273, 32
  br i1 %282, label %283, label %288, !dx.controlflow.hints !40

; <label>:283                                     ; preds = %281
  %284 = xor i32 %274, 1
  %285 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %284
  %286 = load i32, i32 addrspace(3)* %285, align 4, !tbaa !33
  %287 = call i32 @dx.op.binary.i32(i32 40, i32 %275, i32 %286)  ; UMin(a,b)
  br label %303

; <label>:288                                     ; preds = %281
  %289 = icmp eq i32 %273, 16
  br i1 %289, label %290, label %303, !dx.controlflow.hints !41

; <label>:290                                     ; preds = %288
  %291 = xor i32 %274, 3
  %292 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %291
  %293 = load i32, i32 addrspace(3)* %292, align 4, !tbaa !33
  %294 = xor i32 %274, 2
  %295 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %294
  %296 = load i32, i32 addrspace(3)* %295, align 4, !tbaa !33
  %297 = call i32 @dx.op.binary.i32(i32 40, i32 %296, i32 %293)  ; UMin(a,b)
  %298 = xor i32 %274, 1
  %299 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %298
  %300 = load i32, i32 addrspace(3)* %299, align 4, !tbaa !33
  %301 = call i32 @dx.op.binary.i32(i32 40, i32 %275, i32 %300)  ; UMin(a,b)
  %302 = call i32 @dx.op.binary.i32(i32 40, i32 %301, i32 %297)  ; UMin(a,b)
  br label %303

; <label>:303                                     ; preds = %290, %288, %283, %254
  %304 = phi i32 [ %287, %283 ], [ %302, %290 ], [ %275, %254 ], [ 0, %288 ]
  %305 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %272, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %276, label %332, label %306, !dx.controlflow.hints !42

; <label>:306                                     ; preds = %303
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %307 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %307, label %308, label %310, !dx.controlflow.hints !43

; <label>:308                                     ; preds = %306
  %309 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %274
  store i32 %305, i32 addrspace(3)* %309, align 4, !tbaa !33
  br label %310

; <label>:310                                     ; preds = %308, %306
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %311 = icmp eq i32 %273, 32
  br i1 %311, label %312, label %317, !dx.controlflow.hints !44

; <label>:312                                     ; preds = %310
  %313 = xor i32 %274, 1
  %314 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %313
  %315 = load i32, i32 addrspace(3)* %314, align 4, !tbaa !33
  %316 = call i32 @dx.op.binary.i32(i32 39, i32 %305, i32 %315)  ; UMax(a,b)
  br label %332

; <label>:317                                     ; preds = %310
  %318 = icmp eq i32 %273, 16
  br i1 %318, label %319, label %332, !dx.controlflow.hints !45

; <label>:319                                     ; preds = %317
  %320 = xor i32 %274, 3
  %321 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %320
  %322 = load i32, i32 addrspace(3)* %321, align 4, !tbaa !33
  %323 = xor i32 %274, 2
  %324 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %323
  %325 = load i32, i32 addrspace(3)* %324, align 4, !tbaa !33
  %326 = call i32 @dx.op.binary.i32(i32 39, i32 %325, i32 %322)  ; UMax(a,b)
  %327 = xor i32 %274, 1
  %328 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %327
  %329 = load i32, i32 addrspace(3)* %328, align 4, !tbaa !33
  %330 = call i32 @dx.op.binary.i32(i32 39, i32 %305, i32 %329)  ; UMax(a,b)
  %331 = call i32 @dx.op.binary.i32(i32 39, i32 %330, i32 %326)  ; UMax(a,b)
  br label %332

; <label>:332                                     ; preds = %319, %317, %312, %303
  %333 = phi i32 [ %316, %312 ], [ %331, %319 ], [ %305, %303 ], [ 0, %317 ]
  %334 = lshr i32 %304, 5
  %335 = lshr i32 %333, 5
  %336 = call i32 @dx.op.binary.i32(i32 40, i32 %335, i32 %263)  ; UMin(a,b)
  %337 = icmp ugt i32 %334, %336
  br i1 %337, label %1036, label %338

; <label>:338                                     ; preds = %332
  br label %339

; <label>:339                                     ; preds = %1026, %338
  %340 = phi i32 [ %1033, %1026 ], [ %334, %338 ]
  %341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.i32 %341, 0
  %343 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %342, i32 %340)  ; UMad(a,b,c)
  %344 = shl i32 %343, 2
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = shl i32 %340, 5
  %348 = sub nsw i32 %271, %347
  %349 = call i32 @dx.op.binary.i32(i32 37, i32 %348, i32 0)  ; IMax(a,b)
  %350 = call i32 @dx.op.binary.i32(i32 38, i32 %349, i32 31)  ; IMin(a,b)
  %351 = sub nsw i32 1, %271
  %352 = add nsw i32 %351, %272
  %353 = call i32 @dx.op.binary.i32(i32 37, i32 %352, i32 0)  ; IMax(a,b)
  %354 = call i32 @dx.op.binary.i32(i32 38, i32 %353, i32 32)  ; IMin(a,b)
  %355 = and i32 %354, 31
  %356 = shl i32 -1, %355
  %357 = xor i32 %356, -1
  %358 = and i32 %350, 31
  %359 = shl i32 %357, %358
  %360 = icmp eq i32 %354, 32
  %361 = select i1 %360, i32 -1, i32 %359
  %362 = and i32 %361, %346
  %363 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %362, i8 1)  ; WaveActiveBit(value,op)
  br i1 %276, label %390, label %364, !dx.controlflow.hints !46

; <label>:364                                     ; preds = %339
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %365 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %365, label %366, label %368, !dx.controlflow.hints !47

; <label>:366                                     ; preds = %364
  %367 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %274
  store i32 %363, i32 addrspace(3)* %367, align 4, !tbaa !33
  br label %368

; <label>:368                                     ; preds = %366, %364
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %369 = icmp eq i32 %273, 32
  br i1 %369, label %370, label %375, !dx.controlflow.hints !48

; <label>:370                                     ; preds = %368
  %371 = xor i32 %274, 1
  %372 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %371
  %373 = load i32, i32 addrspace(3)* %372, align 4, !tbaa !33
  %374 = or i32 %373, %363
  br label %390

; <label>:375                                     ; preds = %368
  %376 = icmp eq i32 %273, 16
  br i1 %376, label %377, label %390, !dx.controlflow.hints !49

; <label>:377                                     ; preds = %375
  %378 = xor i32 %274, 1
  %379 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %378
  %380 = load i32, i32 addrspace(3)* %379, align 4, !tbaa !33
  %381 = or i32 %380, %363
  %382 = xor i32 %274, 2
  %383 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %382
  %384 = load i32, i32 addrspace(3)* %383, align 4, !tbaa !33
  %385 = or i32 %381, %384
  %386 = xor i32 %274, 3
  %387 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %386
  %388 = load i32, i32 addrspace(3)* %387, align 4, !tbaa !33
  %389 = or i32 %385, %388
  br label %390

; <label>:390                                     ; preds = %377, %375, %370, %339
  %391 = phi i32 [ %374, %370 ], [ %389, %377 ], [ %363, %339 ], [ 0, %375 ]
  br i1 %276, label %392, label %394, !dx.controlflow.hints !50

; <label>:392                                     ; preds = %390
  %393 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %391)  ; WaveReadLaneFirst(value)
  br label %399

; <label>:394                                     ; preds = %390
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %395 = icmp eq i32 %22, 0
  br i1 %395, label %396, label %397, !dx.controlflow.hints !51

; <label>:396                                     ; preds = %394
  store i32 %391, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  br label %397

; <label>:397                                     ; preds = %396, %394
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %398 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !33
  br label %399

; <label>:399                                     ; preds = %397, %392
  %400 = phi i32 [ %393, %392 ], [ %398, %397 ]
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %1026, label %402

; <label>:402                                     ; preds = %399
  br label %403

; <label>:403                                     ; preds = %995, %402
  %404 = phi i32 [ %998, %995 ], [ 0, %402 ]
  %405 = phi i32 [ %410, %995 ], [ %400, %402 ]
  %406 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %405)  ; FirstbitLo(value)
  %407 = add i32 %406, %347
  %408 = and i32 %406, 31
  %409 = shl i32 1, %408
  %410 = xor i32 %409, %405
  %411 = mul i32 %407, 112
  %412 = add i32 %411, 16
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = add i32 %411, 28
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %411, 32
  %421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = add i32 %411, 44
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = add i32 %411, 48
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = extractvalue %dx.types.ResRet.f32 %429, 3
  %434 = add i32 %411, 64
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = extractvalue %dx.types.ResRet.f32 %435, 3
  %440 = add i32 %411, 92
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 65535
  %444 = uitofp i32 %443 to float
  %445 = lshr i32 %442, 16
  %446 = uitofp i32 %445 to float
  %447 = and i32 %419, 65535
  %448 = and i32 %419, 50331648
  %449 = icmp eq i32 %448, 33554432
  %450 = call float @dx.op.dot3.f32(i32 55, float %422, float %423, float %424, float %422, float %423, float %424)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = fsub fast float %131, %430
  %452 = fsub fast float %132, %431
  %453 = fsub fast float %133, %432
  %454 = call float @dx.op.dot3.f32(i32 55, float %451, float %452, float %453, float %422, float %423, float %424)  ; Dot3(ax,ay,az,bx,by,bz)
  %455 = fdiv fast float %454, %450
  %456 = call float @dx.op.binary.f32(i32 35, float %455, float -1.000000e+00)  ; FMax(a,b)
  %457 = call float @dx.op.binary.f32(i32 36, float %456, float 1.000000e+00)  ; FMin(a,b)
  %458 = fmul fast float %457, %422
  %459 = fmul fast float %457, %423
  %460 = fmul fast float %457, %424
  %461 = fadd fast float %458, %430
  %462 = fadd fast float %459, %431
  %463 = fadd fast float %460, %432
  %464 = fsub fast float %461, %131
  %465 = fsub fast float %462, %132
  %466 = fsub fast float %463, %133
  %467 = call float @dx.op.dot3.f32(i32 55, float %464, float %465, float %466, float %464, float %465, float %466)  ; Dot3(ax,ay,az,bx,by,bz)
  %468 = call float @dx.op.unary.f32(i32 24, float %467)  ; Sqrt(value)
  %469 = fdiv fast float 1.000000e+00, %468
  %470 = fmul fast float %464, %469
  %471 = fmul fast float %465, %469
  %472 = fmul fast float %466, %469
  br i1 %449, label %473, label %497, !dx.controlflow.hints !52

; <label>:473                                     ; preds = %403
  %474 = fmul fast float %438, %414
  %475 = fmul fast float %438, %415
  %476 = fmul fast float %438, %416
  %477 = fsub fast float %474, %131
  %478 = fadd fast float %477, %461
  %479 = fsub fast float %475, %132
  %480 = fadd fast float %479, %462
  %481 = fsub fast float %476, %133
  %482 = fadd fast float %481, %463
  %483 = call float @dx.op.dot3.f32(i32 55, float %478, float %480, float %482, float %478, float %480, float %482)  ; Dot3(ax,ay,az,bx,by,bz)
  %484 = call float @dx.op.unary.f32(i32 25, float %483)  ; Rsqrt(value)
  %485 = fmul fast float %484, %478
  %486 = fmul fast float %484, %480
  %487 = fmul fast float %484, %482
  %488 = fsub fast float %131, %461
  %489 = fsub fast float %132, %462
  %490 = fsub fast float %133, %463
  %491 = fsub fast float -0.000000e+00, %488
  %492 = fsub fast float -0.000000e+00, %489
  %493 = fsub fast float -0.000000e+00, %490
  %494 = call float @dx.op.dot3.f32(i32 55, float %491, float %492, float %493, float %414, float %415, float %416)  ; Dot3(ax,ay,az,bx,by,bz)
  %495 = fcmp fast ogt float %494, 0.000000e+00
  %496 = uitofp i1 %495 to float
  br label %497

; <label>:497                                     ; preds = %473, %403
  %498 = phi float [ %496, %473 ], [ 1.000000e+00, %403 ]
  %499 = phi float [ %485, %473 ], [ %470, %403 ]
  %500 = phi float [ %486, %473 ], [ %471, %403 ]
  %501 = phi float [ %487, %473 ], [ %472, %403 ]
  %502 = call float @dx.op.dot3.f32(i32 55, float %414, float %415, float %416, float %499, float %500, float %501)  ; Dot3(ax,ay,az,bx,by,bz)
  %503 = fmul fast float %502, %502
  %504 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %505 = fsub fast float 1.000000e+00, %504
  %506 = fmul fast float %505, 5.000000e-01
  %507 = fcmp fast ogt float %502, 0.000000e+00
  %508 = fsub fast float 1.000000e+00, %506
  %509 = select i1 %507, float %506, float %508
  %510 = fmul fast float %509, %446
  %511 = fadd fast float %510, %444
  %512 = fmul fast float %511, 0x3EF0001000000000
  %513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %15, float %512, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = fmul fast float %502, %436
  %516 = fadd fast float %515, %437
  %517 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  %518 = select i1 %449, float 1.000000e+00, float %517
  %519 = select i1 %449, float %517, float 1.000000e+00
  %520 = fmul fast float %468, %433
  %521 = fsub fast float 1.000000e+00, %520
  %522 = fmul fast float %521, %439
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %524 = fmul fast float %523, %519
  %525 = fmul fast float %524, 2.000000e+00
  %526 = fsub fast float 3.000000e+00, %525
  %527 = fmul fast float %514, %498
  %528 = fmul fast float %524, %524
  %529 = fmul fast float %528, %527
  %530 = fmul fast float %529, %526
  %531 = icmp ne i32 %447, 255
  %532 = call float @dx.op.binary.f32(i32 36, float %530, float %530)  ; FMin(a,b)
  %533 = call float @dx.op.binary.f32(i32 36, float %530, float %532)  ; FMin(a,b)
  %534 = fcmp fast ogt float %533, 0.000000e+00
  %535 = and i1 %531, %534
  br i1 %535, label %536, label %680, !dx.controlflow.hints !53

; <label>:536                                     ; preds = %497
  %537 = mul nuw nsw i32 %447, 176
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  %543 = add nuw nsw i32 %537, 16
  %544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = add nuw nsw i32 %537, 32
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = extractvalue %dx.types.ResRet.f32 %548, 1
  %551 = extractvalue %dx.types.ResRet.f32 %548, 2
  %552 = add nuw nsw i32 %537, 48
  %553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = extractvalue %dx.types.ResRet.f32 %553, 3
  %558 = add nuw nsw i32 %537, 64
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = extractvalue %dx.types.ResRet.f32 %559, 3
  %564 = add nuw nsw i32 %537, 80
  %565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = extractvalue %dx.types.ResRet.f32 %565, 3
  %570 = add nuw nsw i32 %537, 96
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = extractvalue %dx.types.ResRet.f32 %571, 3
  %576 = bitcast float %546 to i32
  %577 = fmul fast float %551, %177
  %578 = fmul fast float %551, %178
  %579 = fmul fast float %551, %179
  %580 = fadd fast float %577, %131
  %581 = fadd fast float %578, %132
  %582 = fadd fast float %579, %133
  %583 = fmul fast float %580, %554
  %584 = call float @dx.op.tertiary.f32(i32 46, float %581, float %560, float %583)  ; FMad(a,b,c)
  %585 = call float @dx.op.tertiary.f32(i32 46, float %582, float %566, float %584)  ; FMad(a,b,c)
  %586 = fadd fast float %585, %572
  %587 = fmul fast float %580, %555
  %588 = call float @dx.op.tertiary.f32(i32 46, float %581, float %561, float %587)  ; FMad(a,b,c)
  %589 = call float @dx.op.tertiary.f32(i32 46, float %582, float %567, float %588)  ; FMad(a,b,c)
  %590 = fadd fast float %589, %573
  %591 = fmul fast float %580, %556
  %592 = call float @dx.op.tertiary.f32(i32 46, float %581, float %562, float %591)  ; FMad(a,b,c)
  %593 = call float @dx.op.tertiary.f32(i32 46, float %582, float %568, float %592)  ; FMad(a,b,c)
  %594 = fadd fast float %593, %574
  %595 = fmul fast float %580, %557
  %596 = call float @dx.op.tertiary.f32(i32 46, float %581, float %563, float %595)  ; FMad(a,b,c)
  %597 = call float @dx.op.tertiary.f32(i32 46, float %582, float %569, float %596)  ; FMad(a,b,c)
  %598 = fadd fast float %597, %575
  %599 = fdiv fast float %586, %598
  %600 = fdiv fast float %590, %598
  %601 = fdiv fast float %594, %598
  %602 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %601)  ; FMax(a,b)
  %603 = fmul fast float %249, 0x401921FB60000000
  %604 = call float @dx.op.unary.f32(i32 13, float %603)  ; Sin(value)
  %605 = call float @dx.op.unary.f32(i32 12, float %603)  ; Cos(value)
  %606 = fmul fast float %605, %550
  %607 = call float @dx.op.tertiary.f32(i32 46, float %604, float %550, float 0.000000e+00)  ; FMad(a,b,c)
  %608 = fmul fast float %550, %604
  %609 = fsub fast float -0.000000e+00, %608
  %610 = call float @dx.op.tertiary.f32(i32 46, float %605, float %550, float 0.000000e+00)  ; FMad(a,b,c)
  br label %611

; <label>:611                                     ; preds = %611, %536
  %612 = phi float [ 0.000000e+00, %536 ], [ %644, %611 ]
  %613 = phi float [ 0.000000e+00, %536 ], [ %646, %611 ]
  %614 = phi i32 [ 0, %536 ], [ %647, %611 ]
  %615 = mul i32 %614, 2
  %616 = add i32 0, %615
  %617 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %616
  %618 = load float, float* %617, align 4
  %619 = mul i32 %614, 2
  %620 = add i32 1, %619
  %621 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %620
  %622 = load float, float* %621, align 4
  %623 = fmul fast float %606, %618
  %624 = call float @dx.op.tertiary.f32(i32 46, float %622, float %609, float %623)  ; FMad(a,b,c)
  %625 = fmul fast float %618, %607
  %626 = call float @dx.op.tertiary.f32(i32 46, float %622, float %610, float %625)  ; FMad(a,b,c)
  %627 = fadd fast float %624, %599
  %628 = fadd fast float %626, %600
  %629 = fmul fast float %627, %545
  %630 = fmul fast float %628, %545
  %631 = call float @dx.op.binary.f32(i32 35, float %629, float %541)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 35, float %630, float %541)  ; FMax(a,b)
  %633 = call float @dx.op.binary.f32(i32 36, float %631, float %542)  ; FMin(a,b)
  %634 = call float @dx.op.binary.f32(i32 36, float %632, float %542)  ; FMin(a,b)
  %635 = fadd fast float %633, %539
  %636 = fadd fast float %634, %540
  %637 = uitofp i32 %576 to float
  %638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %16, float %635, float %636, float %637, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = fsub fast float %639, %602
  %641 = fsub fast float %640, %549
  %642 = fcmp fast ogt float %641, 0.000000e+00
  %643 = select i1 %642, float 1.000000e+00, float 0.000000e+00
  %644 = fadd fast float %643, %612
  %645 = select i1 %642, float %641, float 0.000000e+00
  %646 = fadd fast float %645, %613
  %647 = add nuw nsw i32 %614, 1
  %648 = icmp eq i32 %647, 8
  br i1 %648, label %649, label %611

; <label>:649                                     ; preds = %611
  %650 = fdiv fast float 1.000000e+00, %644
  %651 = fmul fast float %650, %646
  %652 = fdiv fast float 1.000000e+00, %602
  %653 = fmul fast float %651, %652
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = call float @dx.op.binary.f32(i32 35, float %654, float 0.000000e+00)  ; FMax(a,b)
  %656 = fmul fast float %644, 1.250000e-01
  %657 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %658 = fmul fast float %657, 2.000000e+00
  %659 = fadd fast float %658, -1.000000e+00
  %660 = fcmp fast ogt float %659, 0.000000e+00
  %661 = fcmp fast olt float %659, 0.000000e+00
  %662 = zext i1 %660 to i32
  %663 = zext i1 %661 to i32
  %664 = sub nsw i32 %662, %663
  %665 = sitofp i32 %664 to float
  %666 = fmul fast float %665, %659
  %667 = fsub fast float 1.000000e+00, %666
  %668 = fmul fast float %667, %667
  %669 = fmul fast float %668, %667
  %670 = fsub fast float %667, %669
  %671 = fmul fast float %670, %655
  %672 = fsub fast float 1.000000e+00, %669
  %673 = fsub fast float %672, %671
  %674 = fmul fast float %665, 5.000000e-01
  %675 = fmul fast float %674, %673
  %676 = fsub fast float -5.000000e-01, %675
  %677 = fmul fast float %676, %518
  %678 = fadd fast float %677, 1.000000e+00
  %679 = fmul fast float %678, %530
  br label %680

; <label>:680                                     ; preds = %649, %497
  %681 = phi float [ %679, %649 ], [ %530, %497 ]
  %682 = call float @dx.op.binary.f32(i32 36, float %681, float %681)  ; FMin(a,b)
  %683 = call float @dx.op.binary.f32(i32 36, float %681, float %682)  ; FMin(a,b)
  %684 = fcmp fast ogt float %683, 0.000000e+00
  %685 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %470, float %471, float %472)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = fcmp fast ogt float %685, 0.000000e+00
  %687 = and i1 %684, %686
  br i1 %687, label %688, label %957, !dx.controlflow.hints !54

; <label>:688                                     ; preds = %680
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %693 = select i1 %69, float %690, float %692
  %694 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %696 = select i1 %69, float %694, float %695
  %697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.i32 %697, 0
  %699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.i32 %699, 0
  %701 = select i1 %69, i32 %698, i32 %700
  %702 = fcmp fast olt float %693, 5.000000e-01
  %703 = icmp eq i32 %701, 0
  %704 = or i1 %702, %703
  br i1 %704, label %952, label %705, !dx.controlflow.hints !55

; <label>:705                                     ; preds = %688
  %706 = fsub fast float %430, %131
  %707 = fsub fast float %431, %132
  %708 = fsub fast float %432, %133
  %709 = fmul fast float %706, %706
  %710 = fmul fast float %707, %707
  %711 = fadd fast float %709, %710
  %712 = fmul fast float %708, %708
  %713 = fadd fast float %711, %712
  %714 = call float @dx.op.unary.f32(i32 24, float %713)  ; Sqrt(value)
  %715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.i32 %715, 0
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %693, %427
  %719 = fdiv fast float %718, %714
  %720 = call float @dx.op.binary.f32(i32 36, float %719, float 1.000000e+01)  ; FMin(a,b)
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %724 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %725 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %729 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %730 = extractvalue %dx.types.CBufRet.f32 %726, 3
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %734 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %735 = extractvalue %dx.types.CBufRet.f32 %731, 3
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 0
  %738 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %739 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %740 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %743 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %744 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %745 = extractvalue %dx.types.CBufRet.f32 %741, 3
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %749 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %750 = extractvalue %dx.types.CBufRet.f32 %746, 3
  %751 = select i1 %69, float %722, float %737
  %752 = select i1 %69, float %727, float %742
  %753 = select i1 %69, float %732, float %747
  %754 = select i1 %69, float %723, float %738
  %755 = select i1 %69, float %728, float %743
  %756 = select i1 %69, float %733, float %748
  %757 = select i1 %69, float %724, float %739
  %758 = select i1 %69, float %729, float %744
  %759 = select i1 %69, float %734, float %749
  %760 = select i1 %69, float %725, float %740
  %761 = select i1 %69, float %730, float %745
  %762 = select i1 %69, float %735, float %750
  %763 = fmul fast float %250, 0x401061CAC0000000
  %764 = fmul fast float %250, 0x4023E1D7E0000000
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %767 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %768 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %769 = extractvalue %dx.types.CBufRet.f32 %765, 3
  %770 = fsub fast float -0.000000e+00, %470
  %771 = fmul fast float %472, %770
  %772 = fmul fast float %470, %770
  %773 = fmul fast float %471, %471
  %774 = fsub fast float %772, %773
  %775 = fdiv fast float 1.000000e+00, %76
  %776 = fmul fast float %768, %65
  %777 = fmul fast float %769, %66
  %778 = fmul fast float %693, %470
  %779 = fmul fast float %693, %472
  %780 = fadd fast float %778, %131
  %781 = fadd fast float %779, %133
  %782 = fadd fast float %764, 5.000000e-01
  %783 = call float @dx.op.unary.f32(i32 22, float %782)  ; Frc(value)
  %784 = bitcast float %783 to i32
  %785 = ashr i32 %784, 1
  %786 = add nsw i32 %785, 532487669
  %787 = bitcast i32 %786 to float
  %788 = fmul fast float %787, %720
  %789 = fadd fast float %763, 5.000000e-01
  %790 = call float @dx.op.unary.f32(i32 22, float %789)  ; Frc(value)
  %791 = fmul fast float %790, 0x401921FB60000000
  %792 = call float @dx.op.unary.f32(i32 12, float %791)  ; Cos(value)
  %793 = fmul fast float %792, %792
  %794 = fsub fast float 1.000000e+00, %793
  %795 = bitcast float %794 to i32
  %796 = ashr i32 %795, 1
  %797 = add nsw i32 %796, 532487669
  %798 = bitcast i32 %797 to float
  %799 = fmul fast float %788, %792
  %800 = fmul fast float %799, %471
  %801 = fmul fast float %799, %770
  %802 = fadd fast float %780, %800
  %803 = fmul fast float %798, %788
  %804 = fmul fast float %771, %803
  %805 = fmul fast float %803, %472
  %806 = fmul fast float %803, %774
  %807 = fsub fast float %802, %804
  %808 = fadd fast float %805, %693
  %809 = fmul fast float %808, %471
  %810 = fadd fast float %801, %132
  %811 = fadd fast float %810, %809
  %812 = fadd fast float %781, %806
  %813 = fmul fast float %807, %751
  %814 = call float @dx.op.tertiary.f32(i32 46, float %811, float %754, float %813)  ; FMad(a,b,c)
  %815 = call float @dx.op.tertiary.f32(i32 46, float %812, float %757, float %814)  ; FMad(a,b,c)
  %816 = fadd fast float %815, %760
  %817 = fmul fast float %807, %752
  %818 = call float @dx.op.tertiary.f32(i32 46, float %811, float %755, float %817)  ; FMad(a,b,c)
  %819 = call float @dx.op.tertiary.f32(i32 46, float %812, float %758, float %818)  ; FMad(a,b,c)
  %820 = fadd fast float %819, %761
  %821 = fmul fast float %807, %753
  %822 = call float @dx.op.tertiary.f32(i32 46, float %811, float %756, float %821)  ; FMad(a,b,c)
  %823 = call float @dx.op.tertiary.f32(i32 46, float %812, float %759, float %822)  ; FMad(a,b,c)
  %824 = fadd fast float %823, %762
  %825 = fdiv fast float 1.000000e+00, %824
  %826 = fmul fast float %816, 5.000000e-01
  %827 = fmul fast float %820, -5.000000e-01
  %828 = fmul fast float %826, %825
  %829 = fmul fast float %827, %825
  %830 = fsub fast float 5.000000e-01, %776
  %831 = fadd fast float %830, %828
  %832 = fsub fast float 5.000000e-01, %777
  %833 = fadd fast float %832, %829
  %834 = fsub fast float %825, %775
  %835 = call float @dx.op.dot2.f32(i32 54, float %831, float %833, float %831, float %833)  ; Dot2(ax,ay,bx,by)
  %836 = call float @dx.op.binary.f32(i32 35, float %835, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %837 = call float @dx.op.dot2.f32(i32 54, float %766, float %767, float %766, float %767)  ; Dot2(ax,ay,bx,by)
  %838 = fmul fast float %837, %836
  %839 = call float @dx.op.unary.f32(i32 25, float %838)  ; Rsqrt(value)
  %840 = fmul fast float %839, %831
  %841 = fmul fast float %839, %833
  %842 = fadd fast float %840, %776
  %843 = fadd fast float %841, %777
  %844 = fmul fast float %831, %766
  %845 = fmul fast float %833, %767
  %846 = fmul fast float %844, %844
  %847 = fmul fast float %845, %845
  %848 = fadd fast float %846, %847
  %849 = call float @dx.op.unary.f32(i32 24, float %848)  ; Sqrt(value)
  %850 = fdiv fast float 1.000000e+00, %849
  %851 = fmul fast float %849, 3.906250e-03
  %852 = fmul fast float %236, 0x3F70624DE0000000
  %853 = fadd fast float %852, 0x3F70624DE0000000
  %854 = icmp sgt i32 %701, -1
  br i1 %854, label %855, label %917

; <label>:855                                     ; preds = %705
  br label %856

; <label>:856                                     ; preds = %913, %855
  %857 = phi float [ %888, %913 ], [ %76, %855 ]
  %858 = phi float [ %875, %913 ], [ %76, %855 ]
  %859 = phi float [ %858, %913 ], [ %76, %855 ]
  %860 = phi i32 [ %914, %913 ], [ 0, %855 ]
  %861 = sitofp i32 %860 to float
  %862 = fadd fast float %250, 5.000000e-01
  %863 = call float @dx.op.unary.f32(i32 22, float %862)  ; Frc(value)
  %864 = fadd fast float %861, %863
  %865 = sitofp i32 %701 to float
  %866 = fdiv fast float %864, %865
  %867 = fmul fast float %866, %866
  %868 = call float @dx.op.binary.f32(i32 36, float %867, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %869 = fmul fast float %868, %831
  %870 = fmul fast float %868, %833
  %871 = fmul fast float %868, %834
  %872 = fadd fast float %869, %842
  %873 = fadd fast float %870, %843
  %874 = fadd fast float %871, %775
  %875 = fdiv fast float 1.000000e+00, %874
  %876 = icmp ne i32 %716, 0
  %877 = fmul fast float %851, %868
  %878 = call float @dx.op.binary.f32(i32 36, float %877, float %717)  ; FMin(a,b)
  %879 = select i1 %876, float %878, float 0.000000e+00
  %880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float %879)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = fcmp fast ogt float %881, -1.000000e+00
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 1
  %885 = select i1 %882, float %884, float 1.000000e+00
  %886 = fadd fast float %881, 1.000000e+00
  %887 = fmul fast float %885, %886
  %888 = call float @dx.op.unary.f32(i32 6, float %887)  ; FAbs(value)
  %889 = fmul fast float %888, %853
  %890 = fsub fast float %875, %888
  %891 = fsub fast float %890, %889
  %892 = fcmp fast ogt float %891, 0.000000e+00
  %893 = fcmp fast ogt float %696, 0.000000e+00
  br i1 %893, label %894, label %897, !dx.controlflow.hints !56

; <label>:894                                     ; preds = %856
  %895 = fsub fast float %875, %859
  %896 = call float @dx.op.binary.f32(i32 35, float %895, float %696)  ; FMax(a,b)
  br label %897

; <label>:897                                     ; preds = %894, %856
  %898 = phi float [ %896, %894 ], [ %693, %856 ]
  %899 = fcmp fast olt float %891, %898
  %900 = fcmp uge float %881, -1.000000e+00
  %901 = or i1 %69, %900
  %902 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %903 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  %904 = fcmp fast oeq float %872, %902
  %905 = fcmp fast oeq float %873, %903
  %906 = and i1 %904, %905
  %907 = and i1 %901, %906
  %908 = and i1 %892, %899
  %909 = and i1 %908, %907
  %910 = fcmp fast ogt float %868, %850
  %911 = and i1 %910, %909
  %912 = zext i1 %911 to i32
  br i1 %911, label %916, label %913, !dx.controlflow.hints !57

; <label>:913                                     ; preds = %897
  %914 = add nuw nsw i32 %860, 1
  %915 = icmp slt i32 %860, %701
  br i1 %915, label %856, label %916

; <label>:916                                     ; preds = %913, %897
  br label %917

; <label>:917                                     ; preds = %916, %705
  %918 = phi i32 [ 0, %705 ], [ %912, %916 ]
  %919 = phi float [ %76, %705 ], [ %888, %916 ]
  %920 = phi float [ %76, %705 ], [ %857, %916 ]
  %921 = phi float [ %76, %705 ], [ %875, %916 ]
  %922 = phi float [ %76, %705 ], [ %858, %916 ]
  %923 = fsub fast float %922, %920
  %924 = fsub fast float %921, %919
  %925 = fsub fast float %923, %924
  %926 = fcmp fast une float %925, 0.000000e+00
  %927 = fmul fast float %923, %921
  %928 = fmul fast float %922, %924
  %929 = fsub fast float %927, %928
  %930 = fdiv fast float 1.000000e+00, %925
  %931 = fmul fast float %929, %930
  %932 = select i1 %926, float %931, float %921
  %933 = fdiv fast float 1.000000e+00, %932
  %934 = fsub fast float %933, %775
  %935 = fdiv fast float %934, %834
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = fmul fast float %936, %831
  %938 = fmul fast float %936, %833
  %939 = fadd fast float %937, %842
  %940 = fadd fast float %938, %843
  %941 = fadd fast float %939, -5.000000e-01
  %942 = fadd fast float %940, -5.000000e-01
  %943 = call float @dx.op.unary.f32(i32 6, float %941)  ; FAbs(value)
  %944 = call float @dx.op.unary.f32(i32 6, float %942)  ; FAbs(value)
  %945 = fadd fast float %943, -5.000000e-01
  %946 = fadd fast float %944, -5.000000e-01
  %947 = call float @dx.op.binary.f32(i32 35, float %945, float %946)  ; FMax(a,b)
  %948 = fcmp fast olt float %947, 0.000000e+00
  %949 = icmp ne i32 %918, 0
  %950 = and i1 %949, %948
  %951 = select i1 %950, float 0.000000e+00, float 1.000000e+00
  br label %952

; <label>:952                                     ; preds = %917, %688
  %953 = phi float [ %951, %917 ], [ 1.000000e+00, %688 ]
  %954 = fmul fast float %953, %681
  %955 = fmul fast float %953, %681
  %956 = fmul fast float %953, %681
  br label %957

; <label>:957                                     ; preds = %952, %680
  %958 = phi float [ %954, %952 ], [ %681, %680 ]
  %959 = phi float [ %955, %952 ], [ %681, %680 ]
  %960 = phi float [ %956, %952 ], [ %681, %680 ]
  %961 = call float @dx.op.binary.f32(i32 36, float %959, float %960)  ; FMin(a,b)
  %962 = call float @dx.op.binary.f32(i32 36, float %958, float %961)  ; FMin(a,b)
  %963 = fcmp fast ogt float %962, 0x3F10000000000000
  %964 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %963)  ; WaveAnyTrue(cond)
  %965 = icmp ugt i32 %273, 63
  br i1 %965, label %995, label %966, !dx.controlflow.hints !58

; <label>:966                                     ; preds = %957
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %967 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %967, label %968, label %971, !dx.controlflow.hints !59

; <label>:968                                     ; preds = %966
  %969 = zext i1 %964 to i32
  %970 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %274
  store i32 %969, i32 addrspace(3)* %970, align 4, !tbaa !33
  br label %971

; <label>:971                                     ; preds = %968, %966
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %972 = icmp eq i32 %273, 32
  br i1 %972, label %973, label %979, !dx.controlflow.hints !60

; <label>:973                                     ; preds = %971
  %974 = xor i32 %274, 1
  %975 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %974
  %976 = load i32, i32 addrspace(3)* %975, align 4, !tbaa !33
  %977 = icmp ne i32 %976, 0
  %978 = or i1 %964, %977
  br label %995

; <label>:979                                     ; preds = %971
  %980 = icmp eq i32 %273, 16
  br i1 %980, label %981, label %995, !dx.controlflow.hints !61

; <label>:981                                     ; preds = %979
  %982 = xor i32 %274, 1
  %983 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %982
  %984 = load i32, i32 addrspace(3)* %983, align 4, !tbaa !33
  %985 = xor i32 %274, 2
  %986 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %985
  %987 = load i32, i32 addrspace(3)* %986, align 4, !tbaa !33
  %988 = or i32 %987, %984
  %989 = xor i32 %274, 3
  %990 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %989
  %991 = load i32, i32 addrspace(3)* %990, align 4, !tbaa !33
  %992 = or i32 %988, %991
  %993 = icmp ne i32 %992, 0
  %994 = or i1 %964, %993
  br label %995

; <label>:995                                     ; preds = %981, %979, %973, %957
  %996 = phi i1 [ %978, %973 ], [ %994, %981 ], [ %964, %957 ], [ false, %979 ]
  %997 = select i1 %996, i32 %409, i32 0
  %998 = or i32 %404, %997
  %999 = lshr i32 %255, 5
  %1000 = lshr i32 %256, 5
  %1001 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %999, i32 %1000, i32 %407, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = lshr i32 %255, 1
  %1004 = lshr i32 %256, 1
  %1005 = and i32 %1003, 15
  %1006 = and i32 %1004, 15
  %1007 = and i32 %255, 1
  %1008 = shl i32 %256, 1
  %1009 = and i32 %1008, 2
  %1010 = or i32 %1009, %1007
  %1011 = lshr i32 %1002, 2
  %1012 = and i32 %1011, 8176
  %1013 = lshr i32 %1002, 11
  %1014 = and i32 %1013, 4080
  %1015 = or i32 %1012, %1005
  %1016 = or i32 %1014, %1006
  %1017 = lshr i32 %1002, 21
  %1018 = and i32 %1017, 1020
  %1019 = or i32 %1010, %1018
  %1020 = fmul fast float %958, 2.550000e+02
  %1021 = fadd fast float %1020, %249
  %1022 = call float @dx.op.unary.f32(i32 27, float %1021)  ; Round_ni(value)
  %1023 = fmul fast float %1022, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1015, i32 %1016, i32 %1019, float %1023, float %1023, float %1023, float %1023, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1024 = icmp eq i32 %405, %409
  br i1 %1024, label %1025, label %403, !llvm.loop !62

; <label>:1025                                    ; preds = %995
  br label %1026

; <label>:1026                                    ; preds = %1025, %399
  %1027 = phi i32 [ 0, %399 ], [ %998, %1025 ]
  %1028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.i32 %1028, 0
  %1030 = call i32 @dx.op.tertiary.i32(i32 49, i32 %261, i32 %1029, i32 %340)  ; UMad(a,b,c)
  %1031 = shl i32 %1030, 2
  %1032 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1031, i32 undef, i32 undef, i32 %1027)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1033 = add i32 %340, 1
  %1034 = icmp ugt i32 %1033, %336
  br i1 %1034, label %1035, label %339

; <label>:1035                                    ; preds = %1026
  br label %1036

; <label>:1036                                    ; preds = %1035, %332, %56
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
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}

