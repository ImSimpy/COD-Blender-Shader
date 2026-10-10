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
; shader hash: 31dc7023959b918e1c21317647436428
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?gsPackedTileData@@3IA" = external addrspace(3) global i32, align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_spotvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = alloca [4 x i32], align 4
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %30 = shl i32 %27, 2
  %31 = mul i32 %30, %29
  %32 = add i32 %31, %21
  %33 = shl i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = lshr i32 %35, 28
  %37 = and i32 %36, 3
  %38 = lshr i32 %35, 14
  %39 = and i32 %38, 16383
  %40 = and i32 %35, 16383
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %53, label %42, !dx.controlflow.hints !35

; <label>:42                                      ; preds = %0
  %43 = shl nuw nsw i32 %39, 3
  %44 = shl nuw nsw i32 %40, 3
  %45 = or i32 %43, %22
  %46 = or i32 %44, %23
  %47 = add nsw i32 %37, -1
  %48 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %14, i32 0, i32 %45, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = lshr i32 %49, 4
  %51 = and i32 %50, 15
  %52 = and i32 %49, 15
  br label %58

; <label>:53                                      ; preds = %0
  %54 = shl i32 %22, 1
  %55 = shl i32 %23, 1
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
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = fcmp fast olt float %70, -1.000000e+00
  %72 = fcmp fast ogt float %70, -1.000000e+00
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %75 = select i1 %72, float %74, float 1.000000e+00
  %76 = fadd fast float %70, 1.000000e+00
  %77 = fmul fast float %75, %76
  %78 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 3
  %82 = fmul fast float %80, %67
  %83 = fmul fast float %81, %68
  %84 = fmul fast float %82, 2.000000e+00
  %85 = fmul fast float %83, 2.000000e+00
  %86 = fsub fast float 1.000000e+00, %84
  %87 = fsub fast float 1.000000e+00, %85
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = select i1 %71, float %89, float %93
  %97 = select i1 %71, float %90, float %94
  %98 = select i1 %71, float %91, float %95
  %99 = fmul fast float %96, %86
  %100 = fmul fast float %97, %86
  %101 = fmul fast float %98, %86
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
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
  %152 = load i32, i32* %151, align 4, !tbaa !36
  %153 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 %152, i32 %141, i32 %142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %17, float %182, float %183, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %207 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %17, float %204, float %206, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fmul fast float %240, 0x3FE3C6EF40000000
  %242 = frem fast float %67, 2.560000e+02
  %243 = frem fast float %68, 2.560000e+02
  %244 = fptoui float %242 to i32
  %245 = fptoui float %243 to i32
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %244, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 2
  %249 = fadd fast float %247, %241
  %250 = fadd fast float %248, %241
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 0
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %1818, label %256, !dx.controlflow.hints !40

; <label>:256                                     ; preds = %58
  %257 = fptoui float %67 to i32
  %258 = fptoui float %68 to i32
  %259 = lshr i32 %257, 4
  %260 = lshr i32 %258, 4
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 0
  %263 = call i32 @dx.op.tertiary.i32(i32 49, i32 %260, i32 %262, i32 %259)  ; UMad(a,b,c)
  %264 = add nsw i32 %254, -1
  %265 = call i32 @dx.op.binary.i32(i32 37, i32 %264, i32 0)  ; IMax(a,b)
  %266 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %267 = fptoui float %266 to i32
  %268 = lshr i32 %267, 5
  %269 = call i32 @dx.op.binary.i32(i32 40, i32 %268, i32 8191)  ; UMin(a,b)
  %270 = shl i32 %269, 2
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 16
  %274 = and i32 %272, 65535
  %275 = lshr i32 %272, 21
  %276 = lshr i32 %274, 5
  %277 = call i32 @dx.op.binary.i32(i32 40, i32 %276, i32 %265)  ; UMin(a,b)
  %278 = icmp ugt i32 %275, %277
  br i1 %278, label %1818, label %279

; <label>:279                                     ; preds = %256
  br label %280

; <label>:280                                     ; preds = %1814, %279
  %281 = phi i32 [ %1815, %1814 ], [ %275, %279 ]
  %282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.i32 %282, 0
  %284 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %283, i32 %281)  ; UMad(a,b,c)
  %285 = shl i32 %284, 2
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %281, 5
  %289 = sub nsw i32 %273, %288
  %290 = call i32 @dx.op.binary.i32(i32 37, i32 %289, i32 0)  ; IMax(a,b)
  %291 = call i32 @dx.op.binary.i32(i32 38, i32 %290, i32 31)  ; IMin(a,b)
  %292 = sub nsw i32 1, %273
  %293 = add nsw i32 %292, %274
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
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %1814, label %305

; <label>:305                                     ; preds = %280
  br label %306

; <label>:306                                     ; preds = %1811, %305
  %307 = phi i32 [ %312, %1811 ], [ %303, %305 ]
  %308 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %307)  ; FirstbitLo(value)
  %309 = add i32 %308, %288
  %310 = and i32 %308, 31
  %311 = shl i32 1, %310
  %312 = xor i32 %311, %307
  %313 = mul i32 %309, 112
  %314 = add i32 %313, 16
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = add i32 %313, 28
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = add i32 %313, 32
  %323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = extractvalue %dx.types.ResRet.f32 %323, 2
  %327 = add i32 %313, 44
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = add i32 %313, 48
  %331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = extractvalue %dx.types.ResRet.f32 %331, 1
  %334 = extractvalue %dx.types.ResRet.f32 %331, 2
  %335 = extractvalue %dx.types.ResRet.f32 %331, 3
  %336 = add i32 %313, 64
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = extractvalue %dx.types.ResRet.f32 %337, 1
  %340 = extractvalue %dx.types.ResRet.f32 %337, 2
  %341 = extractvalue %dx.types.ResRet.f32 %337, 3
  %342 = add i32 %313, 92
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = uitofp i32 %345 to float
  %347 = lshr i32 %344, 16
  %348 = uitofp i32 %347 to float
  %349 = and i32 %321, 65535
  %350 = and i32 %321, 50331648
  %351 = icmp eq i32 %350, 33554432
  %352 = call float @dx.op.dot3.f32(i32 55, float %324, float %325, float %326, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %353 = fsub fast float %133, %332
  %354 = fsub fast float %134, %333
  %355 = fsub fast float %135, %334
  %356 = call float @dx.op.dot3.f32(i32 55, float %353, float %354, float %355, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = fdiv fast float %356, %352
  %358 = call float @dx.op.binary.f32(i32 35, float %357, float -1.000000e+00)  ; FMax(a,b)
  %359 = call float @dx.op.binary.f32(i32 36, float %358, float 1.000000e+00)  ; FMin(a,b)
  %360 = fmul fast float %359, %324
  %361 = fmul fast float %359, %325
  %362 = fmul fast float %359, %326
  %363 = fadd fast float %360, %332
  %364 = fadd fast float %361, %333
  %365 = fadd fast float %362, %334
  %366 = fsub fast float %363, %133
  %367 = fsub fast float %364, %134
  %368 = fsub fast float %365, %135
  %369 = call float @dx.op.dot3.f32(i32 55, float %366, float %367, float %368, float %366, float %367, float %368)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %371 = fdiv fast float 1.000000e+00, %370
  %372 = fmul fast float %366, %371
  %373 = fmul fast float %367, %371
  %374 = fmul fast float %368, %371
  br i1 %351, label %375, label %399, !dx.controlflow.hints !41

; <label>:375                                     ; preds = %306
  %376 = fmul fast float %340, %316
  %377 = fmul fast float %340, %317
  %378 = fmul fast float %340, %318
  %379 = fsub fast float %376, %133
  %380 = fadd fast float %379, %363
  %381 = fsub fast float %377, %134
  %382 = fadd fast float %381, %364
  %383 = fsub fast float %378, %135
  %384 = fadd fast float %383, %365
  %385 = call float @dx.op.dot3.f32(i32 55, float %380, float %382, float %384, float %380, float %382, float %384)  ; Dot3(ax,ay,az,bx,by,bz)
  %386 = call float @dx.op.unary.f32(i32 25, float %385)  ; Rsqrt(value)
  %387 = fmul fast float %386, %380
  %388 = fmul fast float %386, %382
  %389 = fmul fast float %386, %384
  %390 = fsub fast float %133, %363
  %391 = fsub fast float %134, %364
  %392 = fsub fast float %135, %365
  %393 = fsub fast float -0.000000e+00, %390
  %394 = fsub fast float -0.000000e+00, %391
  %395 = fsub fast float -0.000000e+00, %392
  %396 = call float @dx.op.dot3.f32(i32 55, float %393, float %394, float %395, float %316, float %317, float %318)  ; Dot3(ax,ay,az,bx,by,bz)
  %397 = fcmp fast ogt float %396, 0.000000e+00
  %398 = uitofp i1 %397 to float
  br label %399

; <label>:399                                     ; preds = %375, %306
  %400 = phi float [ %398, %375 ], [ 1.000000e+00, %306 ]
  %401 = phi float [ %387, %375 ], [ %372, %306 ]
  %402 = phi float [ %388, %375 ], [ %373, %306 ]
  %403 = phi float [ %389, %375 ], [ %374, %306 ]
  %404 = call float @dx.op.dot3.f32(i32 55, float %316, float %317, float %318, float %401, float %402, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = fmul fast float %404, %404
  %406 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  %407 = fsub fast float 1.000000e+00, %406
  %408 = fmul fast float %407, 5.000000e-01
  %409 = fcmp fast ogt float %404, 0.000000e+00
  %410 = fsub fast float 1.000000e+00, %408
  %411 = select i1 %409, float %408, float %410
  %412 = fmul fast float %411, %348
  %413 = fadd fast float %412, %346
  %414 = fmul fast float %413, 0x3EF0001000000000
  %415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %414, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = fmul fast float %404, %338
  %418 = fadd fast float %417, %339
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = select i1 %351, float 1.000000e+00, float %419
  %421 = select i1 %351, float %419, float 1.000000e+00
  %422 = fmul fast float %370, %335
  %423 = fsub fast float 1.000000e+00, %422
  %424 = fmul fast float %423, %341
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, %421
  %427 = fmul fast float %426, 2.000000e+00
  %428 = fsub fast float 3.000000e+00, %427
  %429 = fmul fast float %416, %400
  %430 = fmul fast float %426, %426
  %431 = fmul fast float %430, %429
  %432 = fmul fast float %431, %428
  %433 = icmp ne i32 %349, 255
  %434 = call float @dx.op.binary.f32(i32 36, float %432, float %432)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 36, float %432, float %434)  ; FMin(a,b)
  %436 = fcmp fast ogt float %435, 0.000000e+00
  %437 = and i1 %433, %436
  br i1 %437, label %438, label %1352, !dx.controlflow.hints !42

; <label>:438                                     ; preds = %399
  %439 = mul nuw nsw i32 %349, 176
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = extractvalue %dx.types.ResRet.f32 %440, 3
  %445 = add nuw nsw i32 %439, 16
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = add nuw nsw i32 %439, 32
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = add nuw nsw i32 %439, 48
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = extractvalue %dx.types.ResRet.f32 %456, 3
  %461 = add nuw nsw i32 %439, 64
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = add nuw nsw i32 %439, 80
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = add nuw nsw i32 %439, 96
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = add nuw nsw i32 %439, 112
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = extractvalue %dx.types.ResRet.f32 %480, 3
  %485 = add nuw nsw i32 %439, 128
  %486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = extractvalue %dx.types.ResRet.f32 %486, 3
  %491 = add nuw nsw i32 %439, 144
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  %496 = extractvalue %dx.types.ResRet.f32 %492, 3
  %497 = add nuw nsw i32 %439, 160
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = extractvalue %dx.types.ResRet.f32 %498, 3
  %503 = bitcast float %448 to i32
  %504 = bitcast float %454 to i32
  %505 = and i32 %504, 1
  %506 = icmp ne i32 %505, 0
  %507 = and i32 %504, 2
  %508 = fmul fast float %453, %179
  %509 = fmul fast float %453, %180
  %510 = fmul fast float %453, %181
  %511 = fadd fast float %508, %133
  %512 = fadd fast float %509, %134
  %513 = fadd fast float %510, %135
  %514 = fmul fast float %511, %457
  %515 = call float @dx.op.tertiary.f32(i32 46, float %512, float %463, float %514)  ; FMad(a,b,c)
  %516 = call float @dx.op.tertiary.f32(i32 46, float %513, float %469, float %515)  ; FMad(a,b,c)
  %517 = fadd fast float %516, %475
  %518 = fmul fast float %511, %458
  %519 = call float @dx.op.tertiary.f32(i32 46, float %512, float %464, float %518)  ; FMad(a,b,c)
  %520 = call float @dx.op.tertiary.f32(i32 46, float %513, float %470, float %519)  ; FMad(a,b,c)
  %521 = fadd fast float %520, %476
  %522 = fmul fast float %511, %459
  %523 = call float @dx.op.tertiary.f32(i32 46, float %512, float %465, float %522)  ; FMad(a,b,c)
  %524 = call float @dx.op.tertiary.f32(i32 46, float %513, float %471, float %523)  ; FMad(a,b,c)
  %525 = fadd fast float %524, %477
  %526 = fmul fast float %511, %460
  %527 = call float @dx.op.tertiary.f32(i32 46, float %512, float %466, float %526)  ; FMad(a,b,c)
  %528 = call float @dx.op.tertiary.f32(i32 46, float %513, float %472, float %527)  ; FMad(a,b,c)
  %529 = fadd fast float %528, %478
  %530 = fdiv fast float %517, %529
  %531 = fdiv fast float %521, %529
  %532 = fdiv fast float %525, %529
  %533 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %532)  ; FMax(a,b)
  %534 = fmul fast float %251, 0x401921FB60000000
  %535 = call float @dx.op.unary.f32(i32 13, float %534)  ; Sin(value)
  %536 = call float @dx.op.unary.f32(i32 12, float %534)  ; Cos(value)
  %537 = fsub fast float -0.000000e+00, %535
  %538 = icmp eq i32 %507, 0
  br i1 %538, label %539, label %610, !dx.controlflow.hints !43

; <label>:539                                     ; preds = %438
  %540 = fmul fast float %536, %452
  %541 = call float @dx.op.tertiary.f32(i32 46, float %535, float %452, float 0.000000e+00)  ; FMad(a,b,c)
  %542 = fmul fast float %452, %537
  %543 = call float @dx.op.tertiary.f32(i32 46, float %536, float %452, float 0.000000e+00)  ; FMad(a,b,c)
  br label %544

; <label>:544                                     ; preds = %544, %539
  %545 = phi float [ 0.000000e+00, %539 ], [ %577, %544 ]
  %546 = phi float [ 0.000000e+00, %539 ], [ %579, %544 ]
  %547 = phi i32 [ 0, %539 ], [ %580, %544 ]
  %548 = mul i32 %547, 2
  %549 = add i32 0, %548
  %550 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %549
  %551 = load float, float* %550, align 4
  %552 = mul i32 %547, 2
  %553 = add i32 1, %552
  %554 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %553
  %555 = load float, float* %554, align 4
  %556 = fmul fast float %540, %551
  %557 = call float @dx.op.tertiary.f32(i32 46, float %555, float %542, float %556)  ; FMad(a,b,c)
  %558 = fmul fast float %551, %541
  %559 = call float @dx.op.tertiary.f32(i32 46, float %555, float %543, float %558)  ; FMad(a,b,c)
  %560 = fadd fast float %557, %530
  %561 = fadd fast float %559, %531
  %562 = fmul fast float %560, %447
  %563 = fmul fast float %561, %447
  %564 = call float @dx.op.binary.f32(i32 35, float %562, float %443)  ; FMax(a,b)
  %565 = call float @dx.op.binary.f32(i32 35, float %563, float %443)  ; FMax(a,b)
  %566 = call float @dx.op.binary.f32(i32 36, float %564, float %444)  ; FMin(a,b)
  %567 = call float @dx.op.binary.f32(i32 36, float %565, float %444)  ; FMin(a,b)
  %568 = fadd fast float %566, %441
  %569 = fadd fast float %567, %442
  %570 = uitofp i32 %503 to float
  %571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %568, float %569, float %570, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = fsub fast float %572, %533
  %574 = fsub fast float %573, %451
  %575 = fcmp fast ogt float %574, 0.000000e+00
  %576 = select i1 %575, float 1.000000e+00, float 0.000000e+00
  %577 = fadd fast float %576, %545
  %578 = select i1 %575, float %574, float 0.000000e+00
  %579 = fadd fast float %578, %546
  %580 = add nuw nsw i32 %547, 1
  %581 = icmp eq i32 %580, 8
  br i1 %581, label %582, label %544

; <label>:582                                     ; preds = %544
  %583 = fdiv fast float 1.000000e+00, %577
  %584 = fmul fast float %583, %579
  %585 = fdiv fast float 1.000000e+00, %533
  %586 = fmul fast float %584, %585
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %588 = call float @dx.op.binary.f32(i32 35, float %587, float 0.000000e+00)  ; FMax(a,b)
  %589 = fmul fast float %577, 1.250000e-01
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = fmul fast float %590, 2.000000e+00
  %592 = fadd fast float %591, -1.000000e+00
  %593 = fcmp fast ogt float %592, 0.000000e+00
  %594 = fcmp fast olt float %592, 0.000000e+00
  %595 = zext i1 %593 to i32
  %596 = zext i1 %594 to i32
  %597 = sub nsw i32 %595, %596
  %598 = sitofp i32 %597 to float
  %599 = fmul fast float %598, %592
  %600 = fsub fast float 1.000000e+00, %599
  %601 = fmul fast float %600, %600
  %602 = fmul fast float %601, %600
  %603 = fsub fast float %600, %602
  %604 = fmul fast float %603, %588
  %605 = fsub fast float 1.000000e+00, %602
  %606 = fsub fast float %605, %604
  %607 = fmul fast float %598, 5.000000e-01
  %608 = fmul fast float %607, %606
  %609 = fsub fast float 5.000000e-01, %608
  br label %1225

; <label>:610                                     ; preds = %438
  %611 = fsub fast float 1.000000e+00, %533
  %612 = fmul fast float %611, 5.000000e-01
  %613 = fadd fast float %612, %533
  %614 = fsub fast float %511, %332
  %615 = fsub fast float %512, %333
  %616 = fsub fast float %513, %334
  %617 = call float @dx.op.dot3.f32(i32 55, float %614, float %615, float %616, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %618 = fdiv fast float %617, %352
  %619 = call float @dx.op.binary.f32(i32 35, float %618, float -1.000000e+00)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 36, float %619, float 1.000000e+00)  ; FMin(a,b)
  %621 = fmul fast float %620, %324
  %622 = fmul fast float %620, %325
  %623 = fmul fast float %620, %326
  %624 = fsub fast float %614, %621
  %625 = fsub fast float %615, %622
  %626 = fsub fast float %616, %623
  %627 = call float @dx.op.dot3.f32(i32 55, float %624, float %625, float %626, float %624, float %625, float %626)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = call float @dx.op.unary.f32(i32 25, float %627)  ; Rsqrt(value)
  %629 = fmul fast float %624, %628
  %630 = fmul fast float %625, %628
  %631 = fmul fast float %626, %628
  %632 = call float @dx.op.unary.f32(i32 25, float %352)  ; Rsqrt(value)
  %633 = fmul fast float %632, %324
  %634 = fmul fast float %632, %325
  %635 = fmul fast float %632, %326
  br i1 %506, label %636, label %640, !dx.controlflow.hints !44

; <label>:636                                     ; preds = %610
  %637 = fcmp fast olt float %630, 0x3FE6666660000000
  %638 = select i1 %637, float 1.000000e+00, float 0.000000e+00
  %639 = select i1 %637, float 0.000000e+00, float 1.000000e+00
  br label %640

; <label>:640                                     ; preds = %636, %610
  %641 = phi float [ 0.000000e+00, %636 ], [ %633, %610 ]
  %642 = phi float [ %638, %636 ], [ %634, %610 ]
  %643 = phi float [ %639, %636 ], [ %635, %610 ]
  %644 = fmul fast float %642, %631
  %645 = fmul fast float %643, %630
  %646 = fsub fast float %644, %645
  %647 = fmul fast float %643, %629
  %648 = fmul fast float %641, %631
  %649 = fsub fast float %647, %648
  %650 = fmul fast float %641, %630
  %651 = fmul fast float %642, %629
  %652 = fsub fast float %650, %651
  %653 = call float @dx.op.dot3.f32(i32 55, float %646, float %649, float %652, float %646, float %649, float %652)  ; Dot3(ax,ay,az,bx,by,bz)
  %654 = call float @dx.op.unary.f32(i32 25, float %653)  ; Rsqrt(value)
  %655 = fmul fast float %654, %329
  %656 = fmul fast float %655, %646
  %657 = fmul fast float %655, %649
  %658 = fmul fast float %652, %329
  %659 = fmul fast float %658, %654
  %660 = fmul fast float %530, %481
  %661 = call float @dx.op.tertiary.f32(i32 46, float %531, float %487, float %660)  ; FMad(a,b,c)
  %662 = call float @dx.op.tertiary.f32(i32 46, float %613, float %493, float %661)  ; FMad(a,b,c)
  %663 = fadd fast float %662, %499
  %664 = fmul fast float %530, %482
  %665 = call float @dx.op.tertiary.f32(i32 46, float %531, float %488, float %664)  ; FMad(a,b,c)
  %666 = call float @dx.op.tertiary.f32(i32 46, float %613, float %494, float %665)  ; FMad(a,b,c)
  %667 = fadd fast float %666, %500
  %668 = fmul fast float %530, %483
  %669 = call float @dx.op.tertiary.f32(i32 46, float %531, float %489, float %668)  ; FMad(a,b,c)
  %670 = call float @dx.op.tertiary.f32(i32 46, float %613, float %495, float %669)  ; FMad(a,b,c)
  %671 = fadd fast float %670, %501
  %672 = fmul fast float %530, %484
  %673 = call float @dx.op.tertiary.f32(i32 46, float %531, float %490, float %672)  ; FMad(a,b,c)
  %674 = call float @dx.op.tertiary.f32(i32 46, float %613, float %496, float %673)  ; FMad(a,b,c)
  %675 = fadd fast float %674, %502
  %676 = fdiv fast float 1.000000e+00, %675
  %677 = fmul fast float %676, %663
  %678 = fmul fast float %676, %667
  %679 = fmul fast float %676, %671
  %680 = fsub fast float -0.000000e+00, %629
  %681 = fsub fast float -0.000000e+00, %630
  %682 = fsub fast float -0.000000e+00, %631
  %683 = fsub fast float %332, %656
  %684 = fsub fast float %333, %657
  %685 = fsub fast float %334, %659
  %686 = fsub fast float %677, %683
  %687 = fsub fast float %678, %684
  %688 = fsub fast float %679, %685
  %689 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float %686, float %687, float %688)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = call float @dx.op.unary.f32(i32 25, float %689)  ; Rsqrt(value)
  %691 = fmul fast float %686, %690
  %692 = fmul fast float %687, %690
  %693 = fmul fast float %688, %690
  %694 = fsub fast float %511, %683
  %695 = fsub fast float %512, %684
  %696 = fsub fast float %513, %685
  %697 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %694, float %695, float %696)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %691, float %692, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = fdiv fast float 1.000000e+00, %698
  %700 = fmul fast float %699, %697
  %701 = fmul fast float %700, %691
  %702 = fmul fast float %700, %692
  %703 = fmul fast float %700, %693
  %704 = fadd fast float %701, %683
  %705 = fadd fast float %702, %684
  %706 = fadd fast float %703, %685
  %707 = fadd fast float %656, %332
  %708 = fadd fast float %657, %333
  %709 = fadd fast float %659, %334
  %710 = fsub fast float %677, %707
  %711 = fsub fast float %678, %708
  %712 = fsub fast float %679, %709
  %713 = call float @dx.op.dot3.f32(i32 55, float %710, float %711, float %712, float %710, float %711, float %712)  ; Dot3(ax,ay,az,bx,by,bz)
  %714 = call float @dx.op.unary.f32(i32 25, float %713)  ; Rsqrt(value)
  %715 = fmul fast float %714, %710
  %716 = fmul fast float %714, %711
  %717 = fmul fast float %714, %712
  %718 = fsub fast float %511, %707
  %719 = fsub fast float %512, %708
  %720 = fsub fast float %513, %709
  %721 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %718, float %719, float %720)  ; Dot3(ax,ay,az,bx,by,bz)
  %722 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %715, float %716, float %717)  ; Dot3(ax,ay,az,bx,by,bz)
  %723 = fdiv fast float 1.000000e+00, %722
  %724 = fmul fast float %723, %721
  %725 = fmul fast float %724, %715
  %726 = fmul fast float %724, %716
  %727 = fmul fast float %724, %717
  %728 = fadd fast float %725, %707
  %729 = fadd fast float %726, %708
  %730 = fadd fast float %727, %709
  %731 = fmul fast float %704, %457
  %732 = call float @dx.op.tertiary.f32(i32 46, float %705, float %463, float %731)  ; FMad(a,b,c)
  %733 = call float @dx.op.tertiary.f32(i32 46, float %706, float %469, float %732)  ; FMad(a,b,c)
  %734 = fadd fast float %733, %475
  %735 = fmul fast float %704, %458
  %736 = call float @dx.op.tertiary.f32(i32 46, float %705, float %464, float %735)  ; FMad(a,b,c)
  %737 = call float @dx.op.tertiary.f32(i32 46, float %706, float %470, float %736)  ; FMad(a,b,c)
  %738 = fadd fast float %737, %476
  %739 = fmul fast float %704, %460
  %740 = call float @dx.op.tertiary.f32(i32 46, float %705, float %466, float %739)  ; FMad(a,b,c)
  %741 = call float @dx.op.tertiary.f32(i32 46, float %706, float %472, float %740)  ; FMad(a,b,c)
  %742 = fadd fast float %741, %478
  %743 = fmul fast float %728, %457
  %744 = call float @dx.op.tertiary.f32(i32 46, float %729, float %463, float %743)  ; FMad(a,b,c)
  %745 = call float @dx.op.tertiary.f32(i32 46, float %730, float %469, float %744)  ; FMad(a,b,c)
  %746 = fadd fast float %745, %475
  %747 = fmul fast float %728, %458
  %748 = call float @dx.op.tertiary.f32(i32 46, float %729, float %464, float %747)  ; FMad(a,b,c)
  %749 = call float @dx.op.tertiary.f32(i32 46, float %730, float %470, float %748)  ; FMad(a,b,c)
  %750 = fadd fast float %749, %476
  %751 = fmul fast float %728, %460
  %752 = call float @dx.op.tertiary.f32(i32 46, float %729, float %466, float %751)  ; FMad(a,b,c)
  %753 = call float @dx.op.tertiary.f32(i32 46, float %730, float %472, float %752)  ; FMad(a,b,c)
  %754 = fadd fast float %753, %478
  %755 = fdiv fast float 1.000000e+00, %742
  %756 = fmul fast float %755, %734
  %757 = fmul fast float %755, %738
  %758 = fdiv fast float 1.000000e+00, %754
  %759 = fmul fast float %758, %746
  %760 = fmul fast float %758, %750
  %761 = fsub fast float %759, %756
  %762 = fsub fast float %760, %757
  %763 = call float @dx.op.dot2.f32(i32 54, float %761, float %762, float %761, float %762)  ; Dot2(ax,ay,bx,by)
  %764 = call float @dx.op.unary.f32(i32 25, float %763)  ; Rsqrt(value)
  %765 = fmul fast float %761, %764
  %766 = fmul fast float %762, %764
  %767 = fmul fast float %761, %761
  %768 = fmul fast float %762, %762
  %769 = fadd fast float %767, %768
  %770 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %771 = fmul fast float %770, 5.000000e-01
  br i1 %506, label %864, label %772, !dx.controlflow.hints !45

; <label>:772                                     ; preds = %640
  %773 = fsub fast float %332, %324
  %774 = fsub fast float %333, %325
  %775 = fsub fast float %334, %326
  %776 = fsub fast float %677, %773
  %777 = fsub fast float %678, %774
  %778 = fsub fast float %679, %775
  %779 = call float @dx.op.dot3.f32(i32 55, float %776, float %777, float %778, float %776, float %777, float %778)  ; Dot3(ax,ay,az,bx,by,bz)
  %780 = call float @dx.op.unary.f32(i32 25, float %779)  ; Rsqrt(value)
  %781 = fmul fast float %780, %776
  %782 = fmul fast float %780, %777
  %783 = fmul fast float %780, %778
  %784 = fsub fast float %511, %773
  %785 = fsub fast float %512, %774
  %786 = fsub fast float %513, %775
  %787 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %784, float %785, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %781, float %782, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %789 = fdiv fast float 1.000000e+00, %788
  %790 = fmul fast float %789, %787
  %791 = fmul fast float %790, %781
  %792 = fmul fast float %790, %782
  %793 = fmul fast float %790, %783
  %794 = fadd fast float %791, %773
  %795 = fadd fast float %792, %774
  %796 = fadd fast float %793, %775
  %797 = fadd fast float %332, %324
  %798 = fadd fast float %333, %325
  %799 = fadd fast float %334, %326
  %800 = fsub fast float %677, %797
  %801 = fsub fast float %678, %798
  %802 = fsub fast float %679, %799
  %803 = call float @dx.op.dot3.f32(i32 55, float %800, float %801, float %802, float %800, float %801, float %802)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = call float @dx.op.unary.f32(i32 25, float %803)  ; Rsqrt(value)
  %805 = fmul fast float %804, %800
  %806 = fmul fast float %804, %801
  %807 = fmul fast float %804, %802
  %808 = fsub fast float %511, %797
  %809 = fsub fast float %512, %798
  %810 = fsub fast float %513, %799
  %811 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %808, float %809, float %810)  ; Dot3(ax,ay,az,bx,by,bz)
  %812 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %805, float %806, float %807)  ; Dot3(ax,ay,az,bx,by,bz)
  %813 = fdiv fast float 1.000000e+00, %812
  %814 = fmul fast float %813, %811
  %815 = fmul fast float %814, %805
  %816 = fmul fast float %814, %806
  %817 = fmul fast float %814, %807
  %818 = fadd fast float %815, %797
  %819 = fadd fast float %816, %798
  %820 = fadd fast float %817, %799
  %821 = fmul fast float %794, %457
  %822 = call float @dx.op.tertiary.f32(i32 46, float %795, float %463, float %821)  ; FMad(a,b,c)
  %823 = call float @dx.op.tertiary.f32(i32 46, float %796, float %469, float %822)  ; FMad(a,b,c)
  %824 = fadd fast float %823, %475
  %825 = fmul fast float %794, %458
  %826 = call float @dx.op.tertiary.f32(i32 46, float %795, float %464, float %825)  ; FMad(a,b,c)
  %827 = call float @dx.op.tertiary.f32(i32 46, float %796, float %470, float %826)  ; FMad(a,b,c)
  %828 = fadd fast float %827, %476
  %829 = fmul fast float %794, %460
  %830 = call float @dx.op.tertiary.f32(i32 46, float %795, float %466, float %829)  ; FMad(a,b,c)
  %831 = call float @dx.op.tertiary.f32(i32 46, float %796, float %472, float %830)  ; FMad(a,b,c)
  %832 = fadd fast float %831, %478
  %833 = fmul fast float %818, %457
  %834 = call float @dx.op.tertiary.f32(i32 46, float %819, float %463, float %833)  ; FMad(a,b,c)
  %835 = call float @dx.op.tertiary.f32(i32 46, float %820, float %469, float %834)  ; FMad(a,b,c)
  %836 = fadd fast float %835, %475
  %837 = fmul fast float %818, %458
  %838 = call float @dx.op.tertiary.f32(i32 46, float %819, float %464, float %837)  ; FMad(a,b,c)
  %839 = call float @dx.op.tertiary.f32(i32 46, float %820, float %470, float %838)  ; FMad(a,b,c)
  %840 = fadd fast float %839, %476
  %841 = fmul fast float %818, %460
  %842 = call float @dx.op.tertiary.f32(i32 46, float %819, float %466, float %841)  ; FMad(a,b,c)
  %843 = call float @dx.op.tertiary.f32(i32 46, float %820, float %472, float %842)  ; FMad(a,b,c)
  %844 = fadd fast float %843, %478
  %845 = fdiv fast float 1.000000e+00, %832
  %846 = fmul fast float %845, %824
  %847 = fmul fast float %845, %828
  %848 = fdiv fast float 1.000000e+00, %844
  %849 = fmul fast float %848, %836
  %850 = fmul fast float %848, %840
  %851 = fsub fast float %849, %846
  %852 = fsub fast float %850, %847
  %853 = call float @dx.op.dot2.f32(i32 54, float %851, float %852, float %851, float %852)  ; Dot2(ax,ay,bx,by)
  %854 = call float @dx.op.unary.f32(i32 25, float %853)  ; Rsqrt(value)
  %855 = fmul fast float %851, %854
  %856 = fmul fast float %852, %854
  %857 = fmul fast float %851, %851
  %858 = fmul fast float %852, %852
  %859 = fadd fast float %857, %858
  %860 = call float @dx.op.unary.f32(i32 24, float %859)  ; Sqrt(value)
  %861 = fmul fast float %860, 5.000000e-01
  %862 = fcmp fast olt float %861, %771
  br i1 %862, label %863, label %864, !dx.controlflow.hints !46

; <label>:863                                     ; preds = %772
  br label %864

; <label>:864                                     ; preds = %863, %772, %640
  %865 = phi float [ %771, %640 ], [ %861, %863 ], [ %771, %772 ]
  %866 = phi float [ %771, %640 ], [ %771, %863 ], [ %861, %772 ]
  %867 = phi float [ %765, %640 ], [ %765, %863 ], [ %855, %772 ]
  %868 = phi float [ %766, %640 ], [ %766, %863 ], [ %856, %772 ]
  %869 = fmul fast float %865, %452
  %870 = fdiv fast float %869, %866
  %871 = fsub fast float %452, %870
  %872 = fmul fast float %867, %867
  %873 = fmul fast float %872, %871
  %874 = fadd fast float %873, %870
  %875 = fmul fast float %868, %867
  %876 = fmul fast float %875, %871
  %877 = fmul fast float %868, %868
  %878 = fmul fast float %877, %871
  %879 = fadd fast float %878, %870
  %880 = fmul fast float %874, %536
  %881 = call float @dx.op.tertiary.f32(i32 46, float %535, float %876, float %880)  ; FMad(a,b,c)
  %882 = fmul fast float %876, %536
  %883 = call float @dx.op.tertiary.f32(i32 46, float %535, float %879, float %882)  ; FMad(a,b,c)
  %884 = fmul fast float %874, %537
  %885 = call float @dx.op.tertiary.f32(i32 46, float %536, float %876, float %884)  ; FMad(a,b,c)
  %886 = fmul fast float %876, %537
  %887 = call float @dx.op.tertiary.f32(i32 46, float %536, float %879, float %886)  ; FMad(a,b,c)
  br label %888

; <label>:888                                     ; preds = %926, %864
  %889 = phi float [ 0.000000e+00, %864 ], [ %927, %926 ]
  %890 = phi float [ 0.000000e+00, %864 ], [ %928, %926 ]
  %891 = phi float [ 0.000000e+00, %864 ], [ %929, %926 ]
  %892 = phi float [ 0.000000e+00, %864 ], [ %930, %926 ]
  %893 = phi i32 [ 0, %864 ], [ %931, %926 ]
  %894 = mul i32 %893, 2
  %895 = add i32 0, %894
  %896 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %895
  %897 = load float, float* %896, align 4
  %898 = mul i32 %893, 2
  %899 = add i32 1, %898
  %900 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %899
  %901 = load float, float* %900, align 4
  %902 = fmul fast float %897, %881
  %903 = call float @dx.op.tertiary.f32(i32 46, float %901, float %885, float %902)  ; FMad(a,b,c)
  %904 = fmul fast float %897, %883
  %905 = call float @dx.op.tertiary.f32(i32 46, float %901, float %887, float %904)  ; FMad(a,b,c)
  %906 = fadd fast float %903, %530
  %907 = fadd fast float %905, %531
  %908 = fmul fast float %906, %447
  %909 = fmul fast float %907, %447
  %910 = call float @dx.op.binary.f32(i32 35, float %908, float %443)  ; FMax(a,b)
  %911 = call float @dx.op.binary.f32(i32 35, float %909, float %443)  ; FMax(a,b)
  %912 = call float @dx.op.binary.f32(i32 36, float %910, float %444)  ; FMin(a,b)
  %913 = call float @dx.op.binary.f32(i32 36, float %911, float %444)  ; FMin(a,b)
  %914 = fadd fast float %912, %441
  %915 = fadd fast float %913, %442
  %916 = uitofp i32 %503 to float
  %917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %914, float %915, float %916, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = fadd fast float %533, %451
  %920 = fcmp fast olt float %919, %918
  br i1 %920, label %921, label %926, !dx.controlflow.hints !47

; <label>:921                                     ; preds = %888
  %922 = fadd fast float %918, %891
  %923 = fadd fast float %903, %889
  %924 = fadd fast float %905, %890
  %925 = fadd fast float %892, 1.000000e+00
  br label %926

; <label>:926                                     ; preds = %921, %888
  %927 = phi float [ %923, %921 ], [ %889, %888 ]
  %928 = phi float [ %924, %921 ], [ %890, %888 ]
  %929 = phi float [ %922, %921 ], [ %891, %888 ]
  %930 = phi float [ %925, %921 ], [ %892, %888 ]
  %931 = add nuw nsw i32 %893, 1
  %932 = icmp eq i32 %931, 8
  br i1 %932, label %933, label %888

; <label>:933                                     ; preds = %926
  %934 = fdiv fast float 1.000000e+00, %930
  %935 = fcmp fast oeq float %930, 0.000000e+00
  %936 = fmul fast float %934, %929
  %937 = select i1 %935, float -1.000000e+00, float %936
  %938 = fcmp fast olt float %937, 0.000000e+00
  br i1 %938, label %1225, label %939, !dx.controlflow.hints !48

; <label>:939                                     ; preds = %933
  %940 = fmul fast float %934, %928
  %941 = select i1 %935, float 0.000000e+00, float %940
  %942 = fmul fast float %934, %927
  %943 = select i1 %935, float 0.000000e+00, float %942
  %944 = fadd fast float %943, %530
  %945 = fadd fast float %941, %531
  br i1 %506, label %946, label %950, !dx.controlflow.hints !44

; <label>:946                                     ; preds = %939
  %947 = fcmp fast olt float %630, 0x3FE6666660000000
  %948 = select i1 %947, float 1.000000e+00, float 0.000000e+00
  %949 = select i1 %947, float 0.000000e+00, float 1.000000e+00
  br label %950

; <label>:950                                     ; preds = %946, %939
  %951 = phi float [ 0.000000e+00, %946 ], [ %633, %939 ]
  %952 = phi float [ %948, %946 ], [ %634, %939 ]
  %953 = phi float [ %949, %946 ], [ %635, %939 ]
  %954 = fmul fast float %952, %631
  %955 = fmul fast float %953, %630
  %956 = fsub fast float %954, %955
  %957 = fmul fast float %953, %629
  %958 = fmul fast float %951, %631
  %959 = fsub fast float %957, %958
  %960 = fmul fast float %951, %630
  %961 = fmul fast float %952, %629
  %962 = fsub fast float %960, %961
  %963 = call float @dx.op.dot3.f32(i32 55, float %956, float %959, float %962, float %956, float %959, float %962)  ; Dot3(ax,ay,az,bx,by,bz)
  %964 = call float @dx.op.unary.f32(i32 25, float %963)  ; Rsqrt(value)
  %965 = fmul fast float %964, %329
  %966 = fmul fast float %965, %956
  %967 = fmul fast float %965, %959
  %968 = fmul fast float %962, %329
  %969 = fmul fast float %968, %964
  %970 = fmul fast float %944, %481
  %971 = call float @dx.op.tertiary.f32(i32 46, float %945, float %487, float %970)  ; FMad(a,b,c)
  %972 = call float @dx.op.tertiary.f32(i32 46, float %937, float %493, float %971)  ; FMad(a,b,c)
  %973 = fadd fast float %972, %499
  %974 = fmul fast float %944, %482
  %975 = call float @dx.op.tertiary.f32(i32 46, float %945, float %488, float %974)  ; FMad(a,b,c)
  %976 = call float @dx.op.tertiary.f32(i32 46, float %937, float %494, float %975)  ; FMad(a,b,c)
  %977 = fadd fast float %976, %500
  %978 = fmul fast float %944, %483
  %979 = call float @dx.op.tertiary.f32(i32 46, float %945, float %489, float %978)  ; FMad(a,b,c)
  %980 = call float @dx.op.tertiary.f32(i32 46, float %937, float %495, float %979)  ; FMad(a,b,c)
  %981 = fadd fast float %980, %501
  %982 = fmul fast float %944, %484
  %983 = call float @dx.op.tertiary.f32(i32 46, float %945, float %490, float %982)  ; FMad(a,b,c)
  %984 = call float @dx.op.tertiary.f32(i32 46, float %937, float %496, float %983)  ; FMad(a,b,c)
  %985 = fadd fast float %984, %502
  %986 = fdiv fast float 1.000000e+00, %985
  %987 = fmul fast float %986, %973
  %988 = fmul fast float %986, %977
  %989 = fmul fast float %986, %981
  %990 = fsub fast float %332, %966
  %991 = fsub fast float %333, %967
  %992 = fsub fast float %334, %969
  %993 = fsub fast float %987, %990
  %994 = fsub fast float %988, %991
  %995 = fsub fast float %989, %992
  %996 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float %993, float %994, float %995)  ; Dot3(ax,ay,az,bx,by,bz)
  %997 = call float @dx.op.unary.f32(i32 25, float %996)  ; Rsqrt(value)
  %998 = fmul fast float %993, %997
  %999 = fmul fast float %994, %997
  %1000 = fmul fast float %995, %997
  %1001 = fsub fast float %511, %990
  %1002 = fsub fast float %512, %991
  %1003 = fsub fast float %513, %992
  %1004 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %1001, float %1002, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %998, float %999, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = fdiv fast float 1.000000e+00, %1005
  %1007 = fmul fast float %1006, %1004
  %1008 = fmul fast float %1007, %998
  %1009 = fmul fast float %1007, %999
  %1010 = fmul fast float %1007, %1000
  %1011 = fadd fast float %1008, %990
  %1012 = fadd fast float %1009, %991
  %1013 = fadd fast float %1010, %992
  %1014 = fadd fast float %966, %332
  %1015 = fadd fast float %967, %333
  %1016 = fadd fast float %969, %334
  %1017 = fsub fast float %987, %1014
  %1018 = fsub fast float %988, %1015
  %1019 = fsub fast float %989, %1016
  %1020 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1018, float %1019, float %1017, float %1018, float %1019)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = call float @dx.op.unary.f32(i32 25, float %1020)  ; Rsqrt(value)
  %1022 = fmul fast float %1021, %1017
  %1023 = fmul fast float %1021, %1018
  %1024 = fmul fast float %1021, %1019
  %1025 = fsub fast float %511, %1014
  %1026 = fsub fast float %512, %1015
  %1027 = fsub fast float %513, %1016
  %1028 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %1025, float %1026, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %1022, float %1023, float %1024)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = fdiv fast float 1.000000e+00, %1029
  %1031 = fmul fast float %1030, %1028
  %1032 = fmul fast float %1031, %1022
  %1033 = fmul fast float %1031, %1023
  %1034 = fmul fast float %1031, %1024
  %1035 = fadd fast float %1032, %1014
  %1036 = fadd fast float %1033, %1015
  %1037 = fadd fast float %1034, %1016
  %1038 = fmul fast float %1011, %457
  %1039 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %463, float %1038)  ; FMad(a,b,c)
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %469, float %1039)  ; FMad(a,b,c)
  %1041 = fadd fast float %1040, %475
  %1042 = fmul fast float %1011, %458
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %464, float %1042)  ; FMad(a,b,c)
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %470, float %1043)  ; FMad(a,b,c)
  %1045 = fadd fast float %1044, %476
  %1046 = fmul fast float %1011, %460
  %1047 = call float @dx.op.tertiary.f32(i32 46, float %1012, float %466, float %1046)  ; FMad(a,b,c)
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %472, float %1047)  ; FMad(a,b,c)
  %1049 = fadd fast float %1048, %478
  %1050 = fmul fast float %1035, %457
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %463, float %1050)  ; FMad(a,b,c)
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %469, float %1051)  ; FMad(a,b,c)
  %1053 = fadd fast float %1052, %475
  %1054 = fmul fast float %1035, %458
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %464, float %1054)  ; FMad(a,b,c)
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %470, float %1055)  ; FMad(a,b,c)
  %1057 = fadd fast float %1056, %476
  %1058 = fmul fast float %1035, %460
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %466, float %1058)  ; FMad(a,b,c)
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %472, float %1059)  ; FMad(a,b,c)
  %1061 = fadd fast float %1060, %478
  %1062 = fdiv fast float 1.000000e+00, %1049
  %1063 = fmul fast float %1062, %1041
  %1064 = fmul fast float %1062, %1045
  %1065 = fdiv fast float 1.000000e+00, %1061
  %1066 = fmul fast float %1065, %1053
  %1067 = fmul fast float %1065, %1057
  %1068 = fsub fast float %1066, %1063
  %1069 = fsub fast float %1067, %1064
  %1070 = call float @dx.op.dot2.f32(i32 54, float %1068, float %1069, float %1068, float %1069)  ; Dot2(ax,ay,bx,by)
  %1071 = call float @dx.op.unary.f32(i32 25, float %1070)  ; Rsqrt(value)
  %1072 = fmul fast float %1068, %1071
  %1073 = fmul fast float %1069, %1071
  %1074 = fmul fast float %1068, %1068
  %1075 = fmul fast float %1069, %1069
  %1076 = fadd fast float %1074, %1075
  %1077 = call float @dx.op.unary.f32(i32 24, float %1076)  ; Sqrt(value)
  %1078 = fmul fast float %1077, 5.000000e-01
  br i1 %506, label %1171, label %1079, !dx.controlflow.hints !45

; <label>:1079                                    ; preds = %950
  %1080 = fsub fast float %332, %324
  %1081 = fsub fast float %333, %325
  %1082 = fsub fast float %334, %326
  %1083 = fsub fast float %987, %1080
  %1084 = fsub fast float %988, %1081
  %1085 = fsub fast float %989, %1082
  %1086 = call float @dx.op.dot3.f32(i32 55, float %1083, float %1084, float %1085, float %1083, float %1084, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1087 = call float @dx.op.unary.f32(i32 25, float %1086)  ; Rsqrt(value)
  %1088 = fmul fast float %1087, %1083
  %1089 = fmul fast float %1087, %1084
  %1090 = fmul fast float %1087, %1085
  %1091 = fsub fast float %511, %1080
  %1092 = fsub fast float %512, %1081
  %1093 = fsub fast float %513, %1082
  %1094 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %1091, float %1092, float %1093)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %1088, float %1089, float %1090)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = fdiv fast float 1.000000e+00, %1095
  %1097 = fmul fast float %1096, %1094
  %1098 = fmul fast float %1097, %1088
  %1099 = fmul fast float %1097, %1089
  %1100 = fmul fast float %1097, %1090
  %1101 = fadd fast float %1098, %1080
  %1102 = fadd fast float %1099, %1081
  %1103 = fadd fast float %1100, %1082
  %1104 = fadd fast float %332, %324
  %1105 = fadd fast float %333, %325
  %1106 = fadd fast float %334, %326
  %1107 = fsub fast float %987, %1104
  %1108 = fsub fast float %988, %1105
  %1109 = fsub fast float %989, %1106
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1107, float %1108, float %1109, float %1107, float %1108, float %1109)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call float @dx.op.unary.f32(i32 25, float %1110)  ; Rsqrt(value)
  %1112 = fmul fast float %1111, %1107
  %1113 = fmul fast float %1111, %1108
  %1114 = fmul fast float %1111, %1109
  %1115 = fsub fast float %511, %1104
  %1116 = fsub fast float %512, %1105
  %1117 = fsub fast float %513, %1106
  %1118 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %1115, float %1116, float %1117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1119 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %1112, float %1113, float %1114)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = fdiv fast float 1.000000e+00, %1119
  %1121 = fmul fast float %1120, %1118
  %1122 = fmul fast float %1121, %1112
  %1123 = fmul fast float %1121, %1113
  %1124 = fmul fast float %1121, %1114
  %1125 = fadd fast float %1122, %1104
  %1126 = fadd fast float %1123, %1105
  %1127 = fadd fast float %1124, %1106
  %1128 = fmul fast float %1101, %457
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %1102, float %463, float %1128)  ; FMad(a,b,c)
  %1130 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %469, float %1129)  ; FMad(a,b,c)
  %1131 = fadd fast float %1130, %475
  %1132 = fmul fast float %1101, %458
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %1102, float %464, float %1132)  ; FMad(a,b,c)
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %470, float %1133)  ; FMad(a,b,c)
  %1135 = fadd fast float %1134, %476
  %1136 = fmul fast float %1101, %460
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %1102, float %466, float %1136)  ; FMad(a,b,c)
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1103, float %472, float %1137)  ; FMad(a,b,c)
  %1139 = fadd fast float %1138, %478
  %1140 = fmul fast float %1125, %457
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %463, float %1140)  ; FMad(a,b,c)
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %469, float %1141)  ; FMad(a,b,c)
  %1143 = fadd fast float %1142, %475
  %1144 = fmul fast float %1125, %458
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %464, float %1144)  ; FMad(a,b,c)
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %470, float %1145)  ; FMad(a,b,c)
  %1147 = fadd fast float %1146, %476
  %1148 = fmul fast float %1125, %460
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %466, float %1148)  ; FMad(a,b,c)
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %472, float %1149)  ; FMad(a,b,c)
  %1151 = fadd fast float %1150, %478
  %1152 = fdiv fast float 1.000000e+00, %1139
  %1153 = fmul fast float %1152, %1131
  %1154 = fmul fast float %1152, %1135
  %1155 = fdiv fast float 1.000000e+00, %1151
  %1156 = fmul fast float %1155, %1143
  %1157 = fmul fast float %1155, %1147
  %1158 = fsub fast float %1156, %1153
  %1159 = fsub fast float %1157, %1154
  %1160 = call float @dx.op.dot2.f32(i32 54, float %1158, float %1159, float %1158, float %1159)  ; Dot2(ax,ay,bx,by)
  %1161 = call float @dx.op.unary.f32(i32 25, float %1160)  ; Rsqrt(value)
  %1162 = fmul fast float %1158, %1161
  %1163 = fmul fast float %1159, %1161
  %1164 = fmul fast float %1158, %1158
  %1165 = fmul fast float %1159, %1159
  %1166 = fadd fast float %1164, %1165
  %1167 = call float @dx.op.unary.f32(i32 24, float %1166)  ; Sqrt(value)
  %1168 = fmul fast float %1167, 5.000000e-01
  %1169 = fcmp fast olt float %1168, %1078
  br i1 %1169, label %1170, label %1171, !dx.controlflow.hints !46

; <label>:1170                                    ; preds = %1079
  br label %1171

; <label>:1171                                    ; preds = %1170, %1079, %950
  %1172 = phi float [ %1078, %950 ], [ %1168, %1170 ], [ %1078, %1079 ]
  %1173 = phi float [ %1078, %950 ], [ %1078, %1170 ], [ %1168, %1079 ]
  %1174 = phi float [ %1072, %950 ], [ %1072, %1170 ], [ %1162, %1079 ]
  %1175 = phi float [ %1073, %950 ], [ %1073, %1170 ], [ %1163, %1079 ]
  %1176 = fsub fast float %1173, %1172
  %1177 = fmul fast float %1174, %1174
  %1178 = fmul fast float %1177, %1176
  %1179 = fadd fast float %1178, %1172
  %1180 = fmul fast float %1174, %1176
  %1181 = fmul fast float %1180, %1175
  %1182 = fmul fast float %1175, %1175
  %1183 = fmul fast float %1182, %1176
  %1184 = fadd fast float %1183, %1172
  %1185 = fmul fast float %1179, %536
  %1186 = call float @dx.op.tertiary.f32(i32 46, float %535, float %1181, float %1185)  ; FMad(a,b,c)
  %1187 = fmul fast float %1181, %536
  %1188 = call float @dx.op.tertiary.f32(i32 46, float %535, float %1184, float %1187)  ; FMad(a,b,c)
  %1189 = fmul fast float %1179, %537
  %1190 = call float @dx.op.tertiary.f32(i32 46, float %536, float %1181, float %1189)  ; FMad(a,b,c)
  %1191 = fmul fast float %1181, %537
  %1192 = call float @dx.op.tertiary.f32(i32 46, float %536, float %1184, float %1191)  ; FMad(a,b,c)
  br label %1193

; <label>:1193                                    ; preds = %1193, %1171
  %1194 = phi float [ 0.000000e+00, %1171 ], [ %1220, %1193 ]
  %1195 = phi i32 [ 0, %1171 ], [ %1221, %1193 ]
  %1196 = mul i32 %1195, 2
  %1197 = add i32 0, %1196
  %1198 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1197
  %1199 = load float, float* %1198, align 4
  %1200 = mul i32 %1195, 2
  %1201 = add i32 1, %1200
  %1202 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1201
  %1203 = load float, float* %1202, align 4
  %1204 = fmul fast float %1199, %1186
  %1205 = call float @dx.op.tertiary.f32(i32 46, float %1203, float %1190, float %1204)  ; FMad(a,b,c)
  %1206 = fmul fast float %1199, %1188
  %1207 = call float @dx.op.tertiary.f32(i32 46, float %1203, float %1192, float %1206)  ; FMad(a,b,c)
  %1208 = fadd fast float %1205, %530
  %1209 = fadd fast float %1207, %531
  %1210 = fmul fast float %1208, %447
  %1211 = fmul fast float %1209, %447
  %1212 = call float @dx.op.binary.f32(i32 35, float %1210, float %443)  ; FMax(a,b)
  %1213 = call float @dx.op.binary.f32(i32 35, float %1211, float %443)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 36, float %1212, float %444)  ; FMin(a,b)
  %1215 = call float @dx.op.binary.f32(i32 36, float %1213, float %444)  ; FMin(a,b)
  %1216 = fadd fast float %1214, %441
  %1217 = fadd fast float %1215, %442
  %1218 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %18, float %1216, float %1217, float %916, float undef, i32 0, i32 0, i32 undef, float %919)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = fadd fast float %1219, %1194
  %1221 = add nuw nsw i32 %1195, 1
  %1222 = icmp eq i32 %1221, 8
  br i1 %1222, label %1223, label %1193

; <label>:1223                                    ; preds = %1193
  %1224 = fmul fast float %1220, 1.250000e-01
  br label %1225

; <label>:1225                                    ; preds = %1223, %933, %582
  %1226 = phi float [ %609, %582 ], [ %1224, %1223 ], [ 1.000000e+00, %933 ]
  %1227 = fcmp fast ogt float %1226, 0.000000e+00
  %1228 = xor i1 %71, true
  %1229 = and i1 %1227, %1228
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 1
  %1232 = fcmp fast olt float %1231, 0.000000e+00
  %1233 = and i1 %1229, %1232
  br i1 %1233, label %1234, label %1345, !dx.controlflow.hints !49

; <label>:1234                                    ; preds = %1225
  %1235 = fadd fast float %530, %443
  %1236 = fadd fast float %531, %443
  %1237 = fadd fast float %533, %451
  %1238 = fmul fast float %530, %481
  %1239 = call float @dx.op.tertiary.f32(i32 46, float %531, float %487, float %1238)  ; FMad(a,b,c)
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %533, float %493, float %1239)  ; FMad(a,b,c)
  %1241 = fadd fast float %1240, %499
  %1242 = fmul fast float %530, %482
  %1243 = call float @dx.op.tertiary.f32(i32 46, float %531, float %488, float %1242)  ; FMad(a,b,c)
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %533, float %494, float %1243)  ; FMad(a,b,c)
  %1245 = fadd fast float %1244, %500
  %1246 = fmul fast float %530, %483
  %1247 = call float @dx.op.tertiary.f32(i32 46, float %531, float %489, float %1246)  ; FMad(a,b,c)
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %533, float %495, float %1247)  ; FMad(a,b,c)
  %1249 = fadd fast float %1248, %501
  %1250 = fmul fast float %530, %484
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %531, float %490, float %1250)  ; FMad(a,b,c)
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %533, float %496, float %1251)  ; FMad(a,b,c)
  %1253 = fadd fast float %1252, %502
  %1254 = fmul fast float %1235, %481
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %1236, float %487, float %1254)  ; FMad(a,b,c)
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %493, float %1255)  ; FMad(a,b,c)
  %1257 = fadd fast float %1256, %499
  %1258 = fmul fast float %1235, %482
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %1236, float %488, float %1258)  ; FMad(a,b,c)
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %494, float %1259)  ; FMad(a,b,c)
  %1261 = fadd fast float %1260, %500
  %1262 = fmul fast float %1235, %483
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1236, float %489, float %1262)  ; FMad(a,b,c)
  %1264 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %495, float %1263)  ; FMad(a,b,c)
  %1265 = fadd fast float %1264, %501
  %1266 = fmul fast float %1235, %484
  %1267 = call float @dx.op.tertiary.f32(i32 46, float %1236, float %490, float %1266)  ; FMad(a,b,c)
  %1268 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %496, float %1267)  ; FMad(a,b,c)
  %1269 = fadd fast float %1268, %502
  %1270 = fdiv fast float 1.000000e+00, %1253
  %1271 = fmul fast float %1270, %1241
  %1272 = fmul fast float %1270, %1245
  %1273 = fmul fast float %1270, %1249
  %1274 = fdiv fast float 1.000000e+00, %1269
  %1275 = fmul fast float %1274, %1257
  %1276 = fmul fast float %1274, %1261
  %1277 = fmul fast float %1274, %1265
  %1278 = fsub fast float %1271, %1275
  %1279 = fsub fast float %1272, %1276
  %1280 = fsub fast float %1273, %1277
  %1281 = fmul fast float %1278, %1278
  %1282 = fmul fast float %1279, %1279
  %1283 = fadd fast float %1281, %1282
  %1284 = fmul fast float %1280, %1280
  %1285 = fadd fast float %1283, %1284
  %1286 = call float @dx.op.unary.f32(i32 24, float %1285)  ; Sqrt(value)
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1291 = extractvalue %dx.types.CBufRet.f32 %1287, 3
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1296 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1301 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1302 = fmul fast float %1288, %1271
  %1303 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1289, float %1302)  ; FMad(a,b,c)
  %1304 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1290, float %1303)  ; FMad(a,b,c)
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1291, float %1304)  ; FMad(a,b,c)
  %1306 = fmul fast float %1293, %1271
  %1307 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1294, float %1306)  ; FMad(a,b,c)
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1295, float %1307)  ; FMad(a,b,c)
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1296, float %1308)  ; FMad(a,b,c)
  %1310 = fmul fast float %1298, %1271
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1272, float %1299, float %1310)  ; FMad(a,b,c)
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1300, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1301, float %1312)  ; FMad(a,b,c)
  %1314 = fmul fast float %1288, %1275
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1289, float %1314)  ; FMad(a,b,c)
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1290, float %1315)  ; FMad(a,b,c)
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1269, float %1291, float %1316)  ; FMad(a,b,c)
  %1318 = fmul fast float %1293, %1275
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1294, float %1318)  ; FMad(a,b,c)
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1295, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1269, float %1296, float %1320)  ; FMad(a,b,c)
  %1322 = fmul fast float %1298, %1275
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1299, float %1322)  ; FMad(a,b,c)
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1300, float %1323)  ; FMad(a,b,c)
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1269, float %1301, float %1324)  ; FMad(a,b,c)
  %1326 = fdiv fast float 1.000000e+00, %1313
  %1327 = fmul fast float %1326, %1305
  %1328 = fmul fast float %1326, %1309
  %1329 = fdiv fast float 1.000000e+00, %1325
  %1330 = fmul fast float %1329, %1317
  %1331 = fmul fast float %1329, %1321
  %1332 = fsub fast float %1327, %1330
  %1333 = fsub fast float %1328, %1331
  %1334 = fmul fast float %1332, 5.000000e-01
  %1335 = fmul fast float %1333, 5.000000e-01
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1339 = fmul fast float %1334, %1337
  %1340 = fmul fast float %1335, %1338
  %1341 = fmul fast float %1339, %1339
  %1342 = fmul fast float %1340, %1340
  %1343 = fadd fast float %1341, %1342
  %1344 = call float @dx.op.unary.f32(i32 24, float %1343)  ; Sqrt(value)
  br label %1345

; <label>:1345                                    ; preds = %1234, %1225
  %1346 = phi float [ %1286, %1234 ], [ 0.000000e+00, %1225 ]
  %1347 = phi float [ %1344, %1234 ], [ 0.000000e+00, %1225 ]
  %1348 = fadd fast float %1226, -1.000000e+00
  %1349 = fmul fast float %1348, %420
  %1350 = fadd fast float %1349, 1.000000e+00
  %1351 = fmul fast float %1350, %432
  br label %1352

; <label>:1352                                    ; preds = %1345, %399
  %1353 = phi float [ %1351, %1345 ], [ %432, %399 ]
  %1354 = phi float [ %1346, %1345 ], [ 0.000000e+00, %399 ]
  %1355 = phi float [ %1347, %1345 ], [ 0.000000e+00, %399 ]
  %1356 = call float @dx.op.binary.f32(i32 36, float %1353, float %1353)  ; FMin(a,b)
  %1357 = call float @dx.op.binary.f32(i32 36, float %1353, float %1356)  ; FMin(a,b)
  %1358 = fcmp fast ogt float %1357, 0.000000e+00
  %1359 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %372, float %373, float %374)  ; Dot3(ax,ay,az,bx,by,bz)
  %1360 = fcmp fast ogt float %1359, 0.000000e+00
  %1361 = and i1 %1358, %1360
  br i1 %1361, label %1362, label %1641, !dx.controlflow.hints !50

; <label>:1362                                    ; preds = %1352
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1367 = select i1 %71, float %1364, float %1366
  %1368 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1369 = extractvalue %dx.types.CBufRet.f32 %1365, 2
  %1370 = select i1 %71, float %1368, float %1369
  %1371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.i32 %1371, 0
  %1373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.i32 %1373, 0
  %1375 = select i1 %71, i32 %1372, i32 %1374
  %1376 = fcmp fast ogt float %1354, 0.000000e+00
  br i1 %1376, label %1377, label %1381, !dx.controlflow.hints !51

; <label>:1377                                    ; preds = %1362
  %1378 = fptosi float %1355 to i32
  %1379 = call i32 @dx.op.binary.i32(i32 37, i32 %1378, i32 1)  ; IMax(a,b)
  %1380 = call i32 @dx.op.binary.i32(i32 38, i32 %1379, i32 16)  ; IMin(a,b)
  br label %1381

; <label>:1381                                    ; preds = %1377, %1362
  %1382 = phi float [ 0.000000e+00, %1377 ], [ 1.000000e+00, %1362 ]
  %1383 = phi float [ %1354, %1377 ], [ %1367, %1362 ]
  %1384 = phi i32 [ %1380, %1377 ], [ %1375, %1362 ]
  %1385 = fcmp fast olt float %1383, 5.000000e-01
  %1386 = icmp eq i32 %1384, 0
  %1387 = or i1 %1385, %1386
  br i1 %1387, label %1638, label %1388, !dx.controlflow.hints !52

; <label>:1388                                    ; preds = %1381
  %1389 = fsub fast float %332, %133
  %1390 = fsub fast float %333, %134
  %1391 = fsub fast float %334, %135
  %1392 = fmul fast float %1389, %1389
  %1393 = fmul fast float %1390, %1390
  %1394 = fadd fast float %1392, %1393
  %1395 = fmul fast float %1391, %1391
  %1396 = fadd fast float %1394, %1395
  %1397 = call float @dx.op.unary.f32(i32 24, float %1396)  ; Sqrt(value)
  %1398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.i32 %1398, 0
  %1400 = uitofp i32 %1399 to float
  %1401 = fmul fast float %1383, %329
  %1402 = fdiv fast float %1401, %1397
  %1403 = call float @dx.op.binary.f32(i32 36, float %1402, float 1.000000e+01)  ; FMin(a,b)
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1408 = extractvalue %dx.types.CBufRet.f32 %1404, 3
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.CBufRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1413 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1418 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  %1423 = extractvalue %dx.types.CBufRet.f32 %1419, 3
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1433 = extractvalue %dx.types.CBufRet.f32 %1429, 3
  %1434 = select i1 %71, float %1405, float %1420
  %1435 = select i1 %71, float %1410, float %1425
  %1436 = select i1 %71, float %1415, float %1430
  %1437 = select i1 %71, float %1406, float %1421
  %1438 = select i1 %71, float %1411, float %1426
  %1439 = select i1 %71, float %1416, float %1431
  %1440 = select i1 %71, float %1407, float %1422
  %1441 = select i1 %71, float %1412, float %1427
  %1442 = select i1 %71, float %1417, float %1432
  %1443 = select i1 %71, float %1408, float %1423
  %1444 = select i1 %71, float %1413, float %1428
  %1445 = select i1 %71, float %1418, float %1433
  %1446 = fmul fast float %252, 0x401061CAC0000000
  %1447 = fmul fast float %252, 0x4023E1D7E0000000
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.CBufRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.CBufRet.f32 %1448, 2
  %1452 = extractvalue %dx.types.CBufRet.f32 %1448, 3
  %1453 = fsub fast float -0.000000e+00, %372
  %1454 = fmul fast float %374, %1453
  %1455 = fmul fast float %372, %1453
  %1456 = fmul fast float %373, %373
  %1457 = fsub fast float %1455, %1456
  %1458 = fdiv fast float 1.000000e+00, %78
  %1459 = fmul fast float %1451, %67
  %1460 = fmul fast float %1452, %68
  %1461 = fmul fast float %1383, %372
  %1462 = fmul fast float %1383, %374
  %1463 = fadd fast float %1461, %133
  %1464 = fadd fast float %1462, %135
  %1465 = fadd fast float %1447, 5.000000e-01
  %1466 = call float @dx.op.unary.f32(i32 22, float %1465)  ; Frc(value)
  %1467 = bitcast float %1466 to i32
  %1468 = ashr i32 %1467, 1
  %1469 = add nsw i32 %1468, 532487669
  %1470 = bitcast i32 %1469 to float
  %1471 = fmul fast float %1470, %1403
  %1472 = fadd fast float %1446, 5.000000e-01
  %1473 = call float @dx.op.unary.f32(i32 22, float %1472)  ; Frc(value)
  %1474 = fmul fast float %1473, 0x401921FB60000000
  %1475 = call float @dx.op.unary.f32(i32 12, float %1474)  ; Cos(value)
  %1476 = fmul fast float %1475, %1475
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = bitcast float %1477 to i32
  %1479 = ashr i32 %1478, 1
  %1480 = add nsw i32 %1479, 532487669
  %1481 = bitcast i32 %1480 to float
  %1482 = fmul fast float %1471, %1475
  %1483 = fmul fast float %1482, %373
  %1484 = fmul fast float %1482, %1453
  %1485 = fadd fast float %1463, %1483
  %1486 = fmul fast float %1481, %1471
  %1487 = fmul fast float %1454, %1486
  %1488 = fmul fast float %1486, %374
  %1489 = fmul fast float %1486, %1457
  %1490 = fsub fast float %1485, %1487
  %1491 = fadd fast float %1488, %1383
  %1492 = fmul fast float %1491, %373
  %1493 = fadd fast float %1484, %134
  %1494 = fadd fast float %1493, %1492
  %1495 = fadd fast float %1464, %1489
  %1496 = fmul fast float %1490, %1434
  %1497 = call float @dx.op.tertiary.f32(i32 46, float %1494, float %1437, float %1496)  ; FMad(a,b,c)
  %1498 = call float @dx.op.tertiary.f32(i32 46, float %1495, float %1440, float %1497)  ; FMad(a,b,c)
  %1499 = fadd fast float %1498, %1443
  %1500 = fmul fast float %1490, %1435
  %1501 = call float @dx.op.tertiary.f32(i32 46, float %1494, float %1438, float %1500)  ; FMad(a,b,c)
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1495, float %1441, float %1501)  ; FMad(a,b,c)
  %1503 = fadd fast float %1502, %1444
  %1504 = fmul fast float %1490, %1436
  %1505 = call float @dx.op.tertiary.f32(i32 46, float %1494, float %1439, float %1504)  ; FMad(a,b,c)
  %1506 = call float @dx.op.tertiary.f32(i32 46, float %1495, float %1442, float %1505)  ; FMad(a,b,c)
  %1507 = fadd fast float %1506, %1445
  %1508 = fdiv fast float 1.000000e+00, %1507
  %1509 = fmul fast float %1499, 5.000000e-01
  %1510 = fmul fast float %1503, -5.000000e-01
  %1511 = fmul fast float %1509, %1508
  %1512 = fmul fast float %1510, %1508
  %1513 = fsub fast float 5.000000e-01, %1459
  %1514 = fadd fast float %1513, %1511
  %1515 = fsub fast float 5.000000e-01, %1460
  %1516 = fadd fast float %1515, %1512
  %1517 = fsub fast float %1508, %1458
  %1518 = call float @dx.op.dot2.f32(i32 54, float %1514, float %1516, float %1514, float %1516)  ; Dot2(ax,ay,bx,by)
  %1519 = call float @dx.op.binary.f32(i32 35, float %1518, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %1520 = call float @dx.op.dot2.f32(i32 54, float %1449, float %1450, float %1449, float %1450)  ; Dot2(ax,ay,bx,by)
  %1521 = fmul fast float %1520, %1519
  %1522 = call float @dx.op.unary.f32(i32 25, float %1521)  ; Rsqrt(value)
  %1523 = fmul fast float %1522, %1514
  %1524 = fmul fast float %1522, %1516
  %1525 = fadd fast float %1523, %1459
  %1526 = fadd fast float %1524, %1460
  %1527 = fmul fast float %1514, %1449
  %1528 = fmul fast float %1516, %1450
  %1529 = fmul fast float %1527, %1527
  %1530 = fmul fast float %1528, %1528
  %1531 = fadd fast float %1529, %1530
  %1532 = call float @dx.op.unary.f32(i32 24, float %1531)  ; Sqrt(value)
  %1533 = fdiv fast float 1.000000e+00, %1532
  %1534 = fmul fast float %1532, 3.906250e-03
  %1535 = fmul fast float %238, 0x3F70624DE0000000
  %1536 = fadd fast float %1535, 0x3F70624DE0000000
  %1537 = icmp sgt i32 %1384, -1
  br i1 %1537, label %1538, label %1603

; <label>:1538                                    ; preds = %1388
  br label %1539

; <label>:1539                                    ; preds = %1599, %1538
  %1540 = phi float [ %1574, %1599 ], [ %78, %1538 ]
  %1541 = phi float [ %1561, %1599 ], [ %78, %1538 ]
  %1542 = phi float [ %1541, %1599 ], [ %78, %1538 ]
  %1543 = phi i32 [ %1600, %1599 ], [ 0, %1538 ]
  %1544 = sitofp i32 %1543 to float
  %1545 = fadd fast float %252, 5.000000e-01
  %1546 = call float @dx.op.unary.f32(i32 22, float %1545)  ; Frc(value)
  %1547 = fadd fast float %1544, %1546
  %1548 = sitofp i32 %1384 to float
  %1549 = fdiv fast float %1547, %1548
  %1550 = fmul fast float %1549, %1549
  %1551 = fsub fast float %1550, %1549
  %1552 = fmul fast float %1551, %1382
  %1553 = fadd fast float %1552, %1549
  %1554 = call float @dx.op.binary.f32(i32 36, float %1553, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %1555 = fmul fast float %1554, %1514
  %1556 = fmul fast float %1554, %1516
  %1557 = fmul fast float %1554, %1517
  %1558 = fadd fast float %1555, %1525
  %1559 = fadd fast float %1556, %1526
  %1560 = fadd fast float %1557, %1458
  %1561 = fdiv fast float 1.000000e+00, %1560
  %1562 = icmp ne i32 %1399, 0
  %1563 = fmul fast float %1534, %1554
  %1564 = call float @dx.op.binary.f32(i32 36, float %1563, float %1400)  ; FMin(a,b)
  %1565 = select i1 %1562, float %1564, float 0.000000e+00
  %1566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %1558, float %1559, float undef, float undef, i32 0, i32 0, i32 undef, float %1565)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = fcmp fast ogt float %1567, -1.000000e+00
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1571 = select i1 %1568, float %1570, float 1.000000e+00
  %1572 = fadd fast float %1567, 1.000000e+00
  %1573 = fmul fast float %1571, %1572
  %1574 = call float @dx.op.unary.f32(i32 6, float %1573)  ; FAbs(value)
  %1575 = fmul fast float %1574, %1536
  %1576 = fsub fast float %1561, %1574
  %1577 = fsub fast float %1576, %1575
  %1578 = fcmp fast ogt float %1577, 0.000000e+00
  %1579 = fcmp fast ogt float %1370, 0.000000e+00
  br i1 %1579, label %1580, label %1583, !dx.controlflow.hints !53

; <label>:1580                                    ; preds = %1539
  %1581 = fsub fast float %1561, %1542
  %1582 = call float @dx.op.binary.f32(i32 35, float %1581, float %1370)  ; FMax(a,b)
  br label %1583

; <label>:1583                                    ; preds = %1580, %1539
  %1584 = phi float [ %1582, %1580 ], [ %1383, %1539 ]
  %1585 = fcmp fast olt float %1577, %1584
  %1586 = fcmp uge float %1567, -1.000000e+00
  %1587 = or i1 %71, %1586
  %1588 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1589 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1590 = fcmp fast oeq float %1558, %1588
  %1591 = fcmp fast oeq float %1559, %1589
  %1592 = and i1 %1590, %1591
  %1593 = and i1 %1587, %1592
  %1594 = and i1 %1578, %1585
  %1595 = and i1 %1594, %1593
  %1596 = fcmp fast ogt float %1554, %1533
  %1597 = and i1 %1596, %1595
  %1598 = zext i1 %1597 to i32
  br i1 %1597, label %1602, label %1599, !dx.controlflow.hints !54

; <label>:1599                                    ; preds = %1583
  %1600 = add nuw nsw i32 %1543, 1
  %1601 = icmp slt i32 %1543, %1384
  br i1 %1601, label %1539, label %1602

; <label>:1602                                    ; preds = %1599, %1583
  br label %1603

; <label>:1603                                    ; preds = %1602, %1388
  %1604 = phi i32 [ 0, %1388 ], [ %1598, %1602 ]
  %1605 = phi float [ %78, %1388 ], [ %1574, %1602 ]
  %1606 = phi float [ %78, %1388 ], [ %1540, %1602 ]
  %1607 = phi float [ %78, %1388 ], [ %1561, %1602 ]
  %1608 = phi float [ %78, %1388 ], [ %1541, %1602 ]
  %1609 = fsub fast float %1608, %1606
  %1610 = fsub fast float %1607, %1605
  %1611 = fsub fast float %1609, %1610
  %1612 = fcmp fast une float %1611, 0.000000e+00
  %1613 = fmul fast float %1609, %1607
  %1614 = fmul fast float %1608, %1610
  %1615 = fsub fast float %1613, %1614
  %1616 = fdiv fast float 1.000000e+00, %1611
  %1617 = fmul fast float %1615, %1616
  %1618 = select i1 %1612, float %1617, float %1607
  %1619 = fdiv fast float 1.000000e+00, %1618
  %1620 = fsub fast float %1619, %1458
  %1621 = fdiv fast float %1620, %1517
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1623 = fmul fast float %1622, %1514
  %1624 = fmul fast float %1622, %1516
  %1625 = fadd fast float %1623, %1525
  %1626 = fadd fast float %1624, %1526
  %1627 = fadd fast float %1625, -5.000000e-01
  %1628 = fadd fast float %1626, -5.000000e-01
  %1629 = call float @dx.op.unary.f32(i32 6, float %1627)  ; FAbs(value)
  %1630 = call float @dx.op.unary.f32(i32 6, float %1628)  ; FAbs(value)
  %1631 = fadd fast float %1629, -5.000000e-01
  %1632 = fadd fast float %1630, -5.000000e-01
  %1633 = call float @dx.op.binary.f32(i32 35, float %1631, float %1632)  ; FMax(a,b)
  %1634 = fcmp fast olt float %1633, 0.000000e+00
  %1635 = icmp ne i32 %1604, 0
  %1636 = and i1 %1635, %1634
  %1637 = select i1 %1636, float 0.000000e+00, float 1.000000e+00
  br label %1638

; <label>:1638                                    ; preds = %1603, %1381
  %1639 = phi float [ %1637, %1603 ], [ 1.000000e+00, %1381 ]
  %1640 = fmul fast float %1639, %1353
  br label %1641

; <label>:1641                                    ; preds = %1638, %1352
  %1642 = phi float [ %1640, %1638 ], [ %1353, %1352 ]
  %1643 = lshr i32 %257, 5
  %1644 = lshr i32 %258, 5
  %1645 = fcmp fast olt float %1642, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1646 = and i32 %24, 31
  %1647 = zext i1 %1645 to i32
  %1648 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1647, i32 addrspace(3)* %1648, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1649 = icmp ult i32 %1646, 16
  br i1 %1649, label %1650, label %1656, !dx.controlflow.hints !55

; <label>:1650                                    ; preds = %1641
  %1651 = add i32 %24, 16
  %1652 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1651
  %1653 = load i32, i32 addrspace(3)* %1652, align 4, !tbaa !36
  %1654 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1655 = and i32 %1654, %1653
  store i32 %1655, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1656

; <label>:1656                                    ; preds = %1650, %1641
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1657 = icmp ult i32 %1646, 8
  br i1 %1657, label %1658, label %1664, !dx.controlflow.hints !56

; <label>:1658                                    ; preds = %1656
  %1659 = add i32 %24, 8
  %1660 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1659
  %1661 = load i32, i32 addrspace(3)* %1660, align 4, !tbaa !36
  %1662 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1663 = and i32 %1662, %1661
  store i32 %1663, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1664

; <label>:1664                                    ; preds = %1658, %1656
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1665 = icmp ult i32 %1646, 4
  br i1 %1665, label %1666, label %1672, !dx.controlflow.hints !57

; <label>:1666                                    ; preds = %1664
  %1667 = add i32 %24, 4
  %1668 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1667
  %1669 = load i32, i32 addrspace(3)* %1668, align 4, !tbaa !36
  %1670 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1671 = and i32 %1670, %1669
  store i32 %1671, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1672

; <label>:1672                                    ; preds = %1666, %1664
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1673 = icmp ult i32 %1646, 2
  br i1 %1673, label %1674, label %1680, !dx.controlflow.hints !58

; <label>:1674                                    ; preds = %1672
  %1675 = add i32 %24, 2
  %1676 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1675
  %1677 = load i32, i32 addrspace(3)* %1676, align 4, !tbaa !36
  %1678 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1679 = and i32 %1678, %1677
  store i32 %1679, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1680

; <label>:1680                                    ; preds = %1674, %1672
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1681 = icmp eq i32 %1646, 0
  br i1 %1681, label %1682, label %1688, !dx.controlflow.hints !59

; <label>:1682                                    ; preds = %1680
  %1683 = add i32 %24, 1
  %1684 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1683
  %1685 = load i32, i32 addrspace(3)* %1684, align 4, !tbaa !36
  %1686 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1687 = and i32 %1686, %1685
  store i32 %1687, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1688

; <label>:1688                                    ; preds = %1682, %1680
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1689 = and i32 %24, -64
  %1690 = or i32 %1689, 32
  %1691 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1689
  %1692 = load i32, i32 addrspace(3)* %1691, align 4, !tbaa !36
  %1693 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1690
  %1694 = load i32, i32 addrspace(3)* %1693, align 4, !tbaa !36
  %1695 = and i32 %1694, %1692
  %1696 = icmp ne i32 %1695, 0
  %1697 = fcmp fast ogt float %1642, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1698 = zext i1 %1697 to i32
  store i32 %1698, i32 addrspace(3)* %1648, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1649, label %1699, label %1705, !dx.controlflow.hints !55

; <label>:1699                                    ; preds = %1688
  %1700 = add i32 %24, 16
  %1701 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1700
  %1702 = load i32, i32 addrspace(3)* %1701, align 4, !tbaa !36
  %1703 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1704 = and i32 %1703, %1702
  store i32 %1704, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1705

; <label>:1705                                    ; preds = %1699, %1688
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1657, label %1706, label %1712, !dx.controlflow.hints !56

; <label>:1706                                    ; preds = %1705
  %1707 = add i32 %24, 8
  %1708 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1707
  %1709 = load i32, i32 addrspace(3)* %1708, align 4, !tbaa !36
  %1710 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1711 = and i32 %1710, %1709
  store i32 %1711, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1712

; <label>:1712                                    ; preds = %1706, %1705
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1665, label %1713, label %1719, !dx.controlflow.hints !57

; <label>:1713                                    ; preds = %1712
  %1714 = add i32 %24, 4
  %1715 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1714
  %1716 = load i32, i32 addrspace(3)* %1715, align 4, !tbaa !36
  %1717 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1718 = and i32 %1717, %1716
  store i32 %1718, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1719

; <label>:1719                                    ; preds = %1713, %1712
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1673, label %1720, label %1726, !dx.controlflow.hints !58

; <label>:1720                                    ; preds = %1719
  %1721 = add i32 %24, 2
  %1722 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1721
  %1723 = load i32, i32 addrspace(3)* %1722, align 4, !tbaa !36
  %1724 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1725 = and i32 %1724, %1723
  store i32 %1725, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1726

; <label>:1726                                    ; preds = %1720, %1719
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1681, label %1727, label %1733, !dx.controlflow.hints !59

; <label>:1727                                    ; preds = %1726
  %1728 = add i32 %24, 1
  %1729 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1728
  %1730 = load i32, i32 addrspace(3)* %1729, align 4, !tbaa !36
  %1731 = load i32, i32 addrspace(3)* %1648, align 4, !tbaa !36
  %1732 = and i32 %1731, %1730
  store i32 %1732, i32 addrspace(3)* %1648, align 4, !tbaa !36
  br label %1733

; <label>:1733                                    ; preds = %1727, %1726
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1734 = load i32, i32 addrspace(3)* %1691, align 4, !tbaa !36
  %1735 = load i32, i32 addrspace(3)* %1693, align 4, !tbaa !36
  %1736 = and i32 %1735, %1734
  %1737 = or i32 %1736, %1695
  %1738 = icmp eq i32 %1737, 0
  %1739 = lshr i32 %258, 1
  %1740 = and i32 %1739, 8
  %1741 = lshr i32 %257, 2
  %1742 = and i32 %1741, 4
  %1743 = or i32 %1742, %37
  %1744 = or i32 %1743, %1740
  %1745 = icmp eq i32 %24, 0
  br i1 %1745, label %1746, label %1788, !dx.controlflow.hints !60

; <label>:1746                                    ; preds = %1733
  %1747 = icmp ne i32 %1736, 0
  %1748 = shl i32 1, %1744
  %1749 = select i1 %1747, i32 %1748, i32 0
  %1750 = shl i32 65536, %1744
  %1751 = select i1 %1696, i32 %1750, i32 0
  %1752 = or i32 %1749, %1751
  %1753 = icmp eq i32 %1752, 0
  br i1 %1753, label %1756, label %1754, !dx.controlflow.hints !61

; <label>:1754                                    ; preds = %1746
  %1755 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1643, i32 %1644, i32 %309, i32 %1752)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1756

; <label>:1756                                    ; preds = %1754, %1746
  br i1 %1738, label %1757, label %1786

; <label>:1757                                    ; preds = %1756
  br label %1758

; <label>:1758                                    ; preds = %1783, %1757
  %1759 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %3, i32 %1643, i32 %1644, i32 %309, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1760 = and i32 %1759, 3
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1762, label %1783, !dx.controlflow.hints !62

; <label>:1762                                    ; preds = %1758
  %1763 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.i32 %1764, 3
  %1766 = call i32 @dx.op.binary.i32(i32 40, i32 %1765, i32 %1763)  ; UMin(a,b)
  %1767 = extractvalue %dx.types.CBufRet.i32 %1764, 2
  %1768 = udiv i32 %1766, %1767
  %1769 = urem i32 %1766, %1767
  %1770 = extractvalue %dx.types.CBufRet.i32 %1764, 1
  %1771 = urem i32 %1769, %1770
  %1772 = udiv i32 %1769, %1770
  %1773 = shl i32 %1771, 6
  %1774 = and i32 %1773, 32704
  %1775 = shl i32 %1772, 15
  %1776 = and i32 %1775, 8355840
  %1777 = shl i32 %1768, 23
  %1778 = and i32 %1777, 2139095040
  %1779 = or i32 %1778, %1774
  %1780 = or i32 %1779, %1776
  %1781 = or i32 %1780, 3
  %1782 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 8, i32 %1643, i32 %1644, i32 %309, i32 %1781)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1786

; <label>:1783                                    ; preds = %1758
  %1784 = icmp eq i32 %1760, 3
  br i1 %1784, label %1785, label %1758, !dx.controlflow.hints !63

; <label>:1785                                    ; preds = %1783
  br label %1786

; <label>:1786                                    ; preds = %1785, %1762, %1756
  %1787 = phi i32 [ 0, %1756 ], [ %1781, %1762 ], [ %1759, %1785 ]
  store i32 %1787, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %1788

; <label>:1788                                    ; preds = %1786, %1733
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1789 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br i1 %1738, label %1790, label %1811, !dx.controlflow.hints !64

; <label>:1790                                    ; preds = %1788
  %1791 = lshr i32 %257, 1
  %1792 = and i32 %1791, 15
  %1793 = and i32 %1739, 15
  %1794 = and i32 %257, 1
  %1795 = shl i32 %258, 1
  %1796 = and i32 %1795, 2
  %1797 = or i32 %1796, %1794
  %1798 = lshr i32 %1789, 2
  %1799 = and i32 %1798, 8176
  %1800 = lshr i32 %1789, 11
  %1801 = and i32 %1800, 4080
  %1802 = or i32 %1799, %1792
  %1803 = or i32 %1801, %1793
  %1804 = lshr i32 %1789, 21
  %1805 = and i32 %1804, 1020
  %1806 = or i32 %1797, %1805
  %1807 = fmul fast float %1642, 2.550000e+02
  %1808 = fadd fast float %1807, %251
  %1809 = call float @dx.op.unary.f32(i32 27, float %1808)  ; Round_ni(value)
  %1810 = fmul fast float %1809, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1802, i32 %1803, i32 %1806, float %1810, float %1810, float %1810, float %1810, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1811

; <label>:1811                                    ; preds = %1790, %1788
  %1812 = icmp eq i32 %307, %311
  br i1 %1812, label %1813, label %306, !llvm.loop !65

; <label>:1813                                    ; preds = %1811
  br label %1814

; <label>:1814                                    ; preds = %1813, %280
  %1815 = add i32 %281, 1
  %1816 = icmp ugt i32 %1815, %277
  br i1 %1816, label %1817, label %280

; <label>:1817                                    ; preds = %1814
  br label %1818

; <label>:1818                                    ; preds = %1817, %256, %58
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

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
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !25, !28}
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
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !11}
!21 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !24}
!24 = !{i32 1, i32 4}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %ConstantBufferSpotvis* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
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

