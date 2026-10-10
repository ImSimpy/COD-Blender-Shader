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
; shader hash: e8d958851080c60054056ad7faf0b055
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = lshr i32 %34, 28
  %36 = and i32 %35, 3
  %37 = lshr i32 %34, 14
  %38 = and i32 %37, 16383
  %39 = and i32 %34, 16383
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %52, label %41, !dx.controlflow.hints !34

; <label>:41                                      ; preds = %0
  %42 = shl nuw nsw i32 %38, 3
  %43 = shl nuw nsw i32 %39, 3
  %44 = or i32 %42, %21
  %45 = or i32 %43, %22
  %46 = add nsw i32 %36, -1
  %47 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %14, i32 0, i32 %44, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %68 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %62, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %151 = load i32, i32* %150, align 4, !tbaa !35
  %152 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 %151, i32 %140, i32 %141, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %17, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %206 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %17, float %203, float %205, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %245 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = extractvalue %dx.types.ResRet.f32 %245, 2
  %248 = fadd fast float %246, %240
  %249 = fadd fast float %247, %240
  %250 = call float @dx.op.unary.f32(i32 22, float %248)  ; Frc(value)
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 0
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %1033, label %255, !dx.controlflow.hints !39

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
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = lshr i32 %271, 16
  %273 = and i32 %271, 65535
  %274 = lshr i32 %271, 21
  %275 = lshr i32 %273, 5
  %276 = call i32 @dx.op.binary.i32(i32 40, i32 %275, i32 %264)  ; UMin(a,b)
  %277 = icmp ugt i32 %274, %276
  br i1 %277, label %1033, label %278

; <label>:278                                     ; preds = %255
  br label %279

; <label>:279                                     ; preds = %1029, %278
  %280 = phi i32 [ %1030, %1029 ], [ %274, %278 ]
  %281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.i32 %281, 0
  %283 = call i32 @dx.op.tertiary.i32(i32 49, i32 %262, i32 %282, i32 %280)  ; UMad(a,b,c)
  %284 = shl i32 %283, 2
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %280, 5
  %288 = sub nsw i32 %272, %287
  %289 = call i32 @dx.op.binary.i32(i32 37, i32 %288, i32 0)  ; IMax(a,b)
  %290 = call i32 @dx.op.binary.i32(i32 38, i32 %289, i32 31)  ; IMin(a,b)
  %291 = sub nsw i32 1, %272
  %292 = add nsw i32 %291, %273
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
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %1029, label %304

; <label>:304                                     ; preds = %279
  br label %305

; <label>:305                                     ; preds = %1026, %304
  %306 = phi i32 [ %311, %1026 ], [ %302, %304 ]
  %307 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %306)  ; FirstbitLo(value)
  %308 = add i32 %307, %287
  %309 = and i32 %307, 31
  %310 = shl i32 1, %309
  %311 = xor i32 %310, %306
  %312 = mul i32 %308, 112
  %313 = add i32 %312, 16
  %314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = extractvalue %dx.types.ResRet.f32 %314, 1
  %317 = extractvalue %dx.types.ResRet.f32 %314, 2
  %318 = add i32 %312, 28
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = add i32 %312, 32
  %322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 0
  %324 = extractvalue %dx.types.ResRet.f32 %322, 1
  %325 = extractvalue %dx.types.ResRet.f32 %322, 2
  %326 = add i32 %312, 44
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = add i32 %312, 48
  %330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = extractvalue %dx.types.ResRet.f32 %330, 1
  %333 = extractvalue %dx.types.ResRet.f32 %330, 2
  %334 = extractvalue %dx.types.ResRet.f32 %330, 3
  %335 = add i32 %312, 64
  %336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = extractvalue %dx.types.ResRet.f32 %336, 3
  %341 = add i32 %312, 92
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = uitofp i32 %344 to float
  %346 = lshr i32 %343, 16
  %347 = uitofp i32 %346 to float
  %348 = and i32 %320, 65535
  %349 = and i32 %320, 50331648
  %350 = icmp eq i32 %349, 33554432
  %351 = call float @dx.op.dot3.f32(i32 55, float %323, float %324, float %325, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %352 = fsub fast float %132, %331
  %353 = fsub fast float %133, %332
  %354 = fsub fast float %134, %333
  %355 = call float @dx.op.dot3.f32(i32 55, float %352, float %353, float %354, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = fdiv fast float %355, %351
  %357 = call float @dx.op.binary.f32(i32 35, float %356, float -1.000000e+00)  ; FMax(a,b)
  %358 = call float @dx.op.binary.f32(i32 36, float %357, float 1.000000e+00)  ; FMin(a,b)
  %359 = fmul fast float %358, %323
  %360 = fmul fast float %358, %324
  %361 = fmul fast float %358, %325
  %362 = fadd fast float %359, %331
  %363 = fadd fast float %360, %332
  %364 = fadd fast float %361, %333
  %365 = fsub fast float %362, %132
  %366 = fsub fast float %363, %133
  %367 = fsub fast float %364, %134
  %368 = call float @dx.op.dot3.f32(i32 55, float %365, float %366, float %367, float %365, float %366, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %370 = fdiv fast float 1.000000e+00, %369
  %371 = fmul fast float %365, %370
  %372 = fmul fast float %366, %370
  %373 = fmul fast float %367, %370
  br i1 %350, label %374, label %398, !dx.controlflow.hints !40

; <label>:374                                     ; preds = %305
  %375 = fmul fast float %339, %315
  %376 = fmul fast float %339, %316
  %377 = fmul fast float %339, %317
  %378 = fsub fast float %375, %132
  %379 = fadd fast float %378, %362
  %380 = fsub fast float %376, %133
  %381 = fadd fast float %380, %363
  %382 = fsub fast float %377, %134
  %383 = fadd fast float %382, %364
  %384 = call float @dx.op.dot3.f32(i32 55, float %379, float %381, float %383, float %379, float %381, float %383)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = call float @dx.op.unary.f32(i32 25, float %384)  ; Rsqrt(value)
  %386 = fmul fast float %385, %379
  %387 = fmul fast float %385, %381
  %388 = fmul fast float %385, %383
  %389 = fsub fast float %132, %362
  %390 = fsub fast float %133, %363
  %391 = fsub fast float %134, %364
  %392 = fsub fast float -0.000000e+00, %389
  %393 = fsub fast float -0.000000e+00, %390
  %394 = fsub fast float -0.000000e+00, %391
  %395 = call float @dx.op.dot3.f32(i32 55, float %392, float %393, float %394, float %315, float %316, float %317)  ; Dot3(ax,ay,az,bx,by,bz)
  %396 = fcmp fast ogt float %395, 0.000000e+00
  %397 = uitofp i1 %396 to float
  br label %398

; <label>:398                                     ; preds = %374, %305
  %399 = phi float [ %397, %374 ], [ 1.000000e+00, %305 ]
  %400 = phi float [ %386, %374 ], [ %371, %305 ]
  %401 = phi float [ %387, %374 ], [ %372, %305 ]
  %402 = phi float [ %388, %374 ], [ %373, %305 ]
  %403 = call float @dx.op.dot3.f32(i32 55, float %315, float %316, float %317, float %400, float %401, float %402)  ; Dot3(ax,ay,az,bx,by,bz)
  %404 = fmul fast float %403, %403
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fsub fast float 1.000000e+00, %405
  %407 = fmul fast float %406, 5.000000e-01
  %408 = fcmp fast ogt float %403, 0.000000e+00
  %409 = fsub fast float 1.000000e+00, %407
  %410 = select i1 %408, float %407, float %409
  %411 = fmul fast float %410, %347
  %412 = fadd fast float %411, %345
  %413 = fmul fast float %412, 0x3EF0001000000000
  %414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %413, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = fmul fast float %403, %337
  %417 = fadd fast float %416, %338
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = select i1 %350, float 1.000000e+00, float %418
  %420 = select i1 %350, float %418, float 1.000000e+00
  %421 = fmul fast float %369, %334
  %422 = fsub fast float 1.000000e+00, %421
  %423 = fmul fast float %422, %340
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = fmul fast float %424, %420
  %426 = fmul fast float %425, 2.000000e+00
  %427 = fsub fast float 3.000000e+00, %426
  %428 = fmul fast float %415, %399
  %429 = fmul fast float %425, %425
  %430 = fmul fast float %429, %428
  %431 = fmul fast float %430, %427
  %432 = icmp ne i32 %348, 255
  %433 = call float @dx.op.binary.f32(i32 36, float %431, float %431)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 36, float %431, float %433)  ; FMin(a,b)
  %435 = fcmp fast ogt float %434, 0.000000e+00
  %436 = and i1 %432, %435
  br i1 %436, label %437, label %581, !dx.controlflow.hints !41

; <label>:437                                     ; preds = %398
  %438 = mul nuw nsw i32 %348, 176
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = extractvalue %dx.types.ResRet.f32 %439, 3
  %444 = add nuw nsw i32 %438, 16
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = add nuw nsw i32 %438, 32
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = add nuw nsw i32 %438, 48
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  %459 = add nuw nsw i32 %438, 64
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add nuw nsw i32 %438, 80
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add nuw nsw i32 %438, 96
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = bitcast float %447 to i32
  %478 = fmul fast float %452, %178
  %479 = fmul fast float %452, %179
  %480 = fmul fast float %452, %180
  %481 = fadd fast float %478, %132
  %482 = fadd fast float %479, %133
  %483 = fadd fast float %480, %134
  %484 = fmul fast float %481, %455
  %485 = call float @dx.op.tertiary.f32(i32 46, float %482, float %461, float %484)  ; FMad(a,b,c)
  %486 = call float @dx.op.tertiary.f32(i32 46, float %483, float %467, float %485)  ; FMad(a,b,c)
  %487 = fadd fast float %486, %473
  %488 = fmul fast float %481, %456
  %489 = call float @dx.op.tertiary.f32(i32 46, float %482, float %462, float %488)  ; FMad(a,b,c)
  %490 = call float @dx.op.tertiary.f32(i32 46, float %483, float %468, float %489)  ; FMad(a,b,c)
  %491 = fadd fast float %490, %474
  %492 = fmul fast float %481, %457
  %493 = call float @dx.op.tertiary.f32(i32 46, float %482, float %463, float %492)  ; FMad(a,b,c)
  %494 = call float @dx.op.tertiary.f32(i32 46, float %483, float %469, float %493)  ; FMad(a,b,c)
  %495 = fadd fast float %494, %475
  %496 = fmul fast float %481, %458
  %497 = call float @dx.op.tertiary.f32(i32 46, float %482, float %464, float %496)  ; FMad(a,b,c)
  %498 = call float @dx.op.tertiary.f32(i32 46, float %483, float %470, float %497)  ; FMad(a,b,c)
  %499 = fadd fast float %498, %476
  %500 = fdiv fast float %487, %499
  %501 = fdiv fast float %491, %499
  %502 = fdiv fast float %495, %499
  %503 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %502)  ; FMax(a,b)
  %504 = fmul fast float %250, 0x401921FB60000000
  %505 = call float @dx.op.unary.f32(i32 13, float %504)  ; Sin(value)
  %506 = call float @dx.op.unary.f32(i32 12, float %504)  ; Cos(value)
  %507 = fmul fast float %506, %451
  %508 = call float @dx.op.tertiary.f32(i32 46, float %505, float %451, float 0.000000e+00)  ; FMad(a,b,c)
  %509 = fmul fast float %451, %505
  %510 = fsub fast float -0.000000e+00, %509
  %511 = call float @dx.op.tertiary.f32(i32 46, float %506, float %451, float 0.000000e+00)  ; FMad(a,b,c)
  br label %512

; <label>:512                                     ; preds = %512, %437
  %513 = phi float [ 0.000000e+00, %437 ], [ %545, %512 ]
  %514 = phi float [ 0.000000e+00, %437 ], [ %547, %512 ]
  %515 = phi i32 [ 0, %437 ], [ %548, %512 ]
  %516 = mul i32 %515, 2
  %517 = add i32 0, %516
  %518 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %517
  %519 = load float, float* %518, align 4
  %520 = mul i32 %515, 2
  %521 = add i32 1, %520
  %522 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %521
  %523 = load float, float* %522, align 4
  %524 = fmul fast float %507, %519
  %525 = call float @dx.op.tertiary.f32(i32 46, float %523, float %510, float %524)  ; FMad(a,b,c)
  %526 = fmul fast float %519, %508
  %527 = call float @dx.op.tertiary.f32(i32 46, float %523, float %511, float %526)  ; FMad(a,b,c)
  %528 = fadd fast float %525, %500
  %529 = fadd fast float %527, %501
  %530 = fmul fast float %528, %446
  %531 = fmul fast float %529, %446
  %532 = call float @dx.op.binary.f32(i32 35, float %530, float %442)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 35, float %531, float %442)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float %532, float %443)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float %533, float %443)  ; FMin(a,b)
  %536 = fadd fast float %534, %440
  %537 = fadd fast float %535, %441
  %538 = uitofp i32 %477 to float
  %539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %536, float %537, float %538, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = fsub fast float %540, %503
  %542 = fsub fast float %541, %450
  %543 = fcmp fast ogt float %542, 0.000000e+00
  %544 = select i1 %543, float 1.000000e+00, float 0.000000e+00
  %545 = fadd fast float %544, %513
  %546 = select i1 %543, float %542, float 0.000000e+00
  %547 = fadd fast float %546, %514
  %548 = add nuw nsw i32 %515, 1
  %549 = icmp eq i32 %548, 8
  br i1 %549, label %550, label %512

; <label>:550                                     ; preds = %512
  %551 = fdiv fast float 1.000000e+00, %545
  %552 = fmul fast float %551, %547
  %553 = fdiv fast float 1.000000e+00, %503
  %554 = fmul fast float %552, %553
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = call float @dx.op.binary.f32(i32 35, float %555, float 0.000000e+00)  ; FMax(a,b)
  %557 = fmul fast float %545, 1.250000e-01
  %558 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %559 = fmul fast float %558, 2.000000e+00
  %560 = fadd fast float %559, -1.000000e+00
  %561 = fcmp fast ogt float %560, 0.000000e+00
  %562 = fcmp fast olt float %560, 0.000000e+00
  %563 = zext i1 %561 to i32
  %564 = zext i1 %562 to i32
  %565 = sub nsw i32 %563, %564
  %566 = sitofp i32 %565 to float
  %567 = fmul fast float %566, %560
  %568 = fsub fast float 1.000000e+00, %567
  %569 = fmul fast float %568, %568
  %570 = fmul fast float %569, %568
  %571 = fsub fast float %568, %570
  %572 = fmul fast float %571, %556
  %573 = fsub fast float 1.000000e+00, %570
  %574 = fsub fast float %573, %572
  %575 = fmul fast float %566, 5.000000e-01
  %576 = fmul fast float %575, %574
  %577 = fsub fast float -5.000000e-01, %576
  %578 = fmul fast float %577, %419
  %579 = fadd fast float %578, 1.000000e+00
  %580 = fmul fast float %579, %431
  br label %581

; <label>:581                                     ; preds = %550, %398
  %582 = phi float [ %580, %550 ], [ %431, %398 ]
  %583 = call float @dx.op.binary.f32(i32 36, float %582, float %582)  ; FMin(a,b)
  %584 = call float @dx.op.binary.f32(i32 36, float %582, float %583)  ; FMin(a,b)
  %585 = fcmp fast ogt float %584, 0.000000e+00
  %586 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %371, float %372, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = fcmp fast ogt float %586, 0.000000e+00
  %588 = and i1 %585, %587
  br i1 %588, label %589, label %856, !dx.controlflow.hints !42

; <label>:589                                     ; preds = %581
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %594 = select i1 %70, float %591, float %593
  %595 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %596 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %597 = select i1 %70, float %595, float %596
  %598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.i32 %598, 0
  %600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.i32 %600, 0
  %602 = select i1 %70, i32 %599, i32 %601
  %603 = fcmp fast olt float %594, 5.000000e-01
  %604 = icmp eq i32 %602, 0
  %605 = or i1 %603, %604
  br i1 %605, label %853, label %606, !dx.controlflow.hints !43

; <label>:606                                     ; preds = %589
  %607 = fsub fast float %331, %132
  %608 = fsub fast float %332, %133
  %609 = fsub fast float %333, %134
  %610 = fmul fast float %607, %607
  %611 = fmul fast float %608, %608
  %612 = fadd fast float %610, %611
  %613 = fmul fast float %609, %609
  %614 = fadd fast float %612, %613
  %615 = call float @dx.op.unary.f32(i32 24, float %614)  ; Sqrt(value)
  %616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.i32 %616, 0
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %594, %328
  %620 = fdiv fast float %619, %615
  %621 = call float @dx.op.binary.f32(i32 36, float %620, float 1.000000e+01)  ; FMin(a,b)
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %625 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %626 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %630 = extractvalue %dx.types.CBufRet.f32 %627, 2
  %631 = extractvalue %dx.types.CBufRet.f32 %627, 3
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %635 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %636 = extractvalue %dx.types.CBufRet.f32 %632, 3
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %640 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %641 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %649 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %650 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %651 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %652 = select i1 %70, float %623, float %638
  %653 = select i1 %70, float %628, float %643
  %654 = select i1 %70, float %633, float %648
  %655 = select i1 %70, float %624, float %639
  %656 = select i1 %70, float %629, float %644
  %657 = select i1 %70, float %634, float %649
  %658 = select i1 %70, float %625, float %640
  %659 = select i1 %70, float %630, float %645
  %660 = select i1 %70, float %635, float %650
  %661 = select i1 %70, float %626, float %641
  %662 = select i1 %70, float %631, float %646
  %663 = select i1 %70, float %636, float %651
  %664 = fmul fast float %251, 0x401061CAC0000000
  %665 = fmul fast float %251, 0x4023E1D7E0000000
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 0
  %668 = extractvalue %dx.types.CBufRet.f32 %666, 1
  %669 = extractvalue %dx.types.CBufRet.f32 %666, 2
  %670 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %671 = fsub fast float -0.000000e+00, %371
  %672 = fmul fast float %373, %671
  %673 = fmul fast float %371, %671
  %674 = fmul fast float %372, %372
  %675 = fsub fast float %673, %674
  %676 = fdiv fast float 1.000000e+00, %77
  %677 = fmul fast float %669, %66
  %678 = fmul fast float %670, %67
  %679 = fmul fast float %594, %371
  %680 = fmul fast float %594, %373
  %681 = fadd fast float %679, %132
  %682 = fadd fast float %680, %134
  %683 = fadd fast float %665, 5.000000e-01
  %684 = call float @dx.op.unary.f32(i32 22, float %683)  ; Frc(value)
  %685 = bitcast float %684 to i32
  %686 = ashr i32 %685, 1
  %687 = add nsw i32 %686, 532487669
  %688 = bitcast i32 %687 to float
  %689 = fmul fast float %688, %621
  %690 = fadd fast float %664, 5.000000e-01
  %691 = call float @dx.op.unary.f32(i32 22, float %690)  ; Frc(value)
  %692 = fmul fast float %691, 0x401921FB60000000
  %693 = call float @dx.op.unary.f32(i32 12, float %692)  ; Cos(value)
  %694 = fmul fast float %693, %693
  %695 = fsub fast float 1.000000e+00, %694
  %696 = bitcast float %695 to i32
  %697 = ashr i32 %696, 1
  %698 = add nsw i32 %697, 532487669
  %699 = bitcast i32 %698 to float
  %700 = fmul fast float %689, %693
  %701 = fmul fast float %700, %372
  %702 = fmul fast float %700, %671
  %703 = fadd fast float %681, %701
  %704 = fmul fast float %699, %689
  %705 = fmul fast float %672, %704
  %706 = fmul fast float %704, %373
  %707 = fmul fast float %704, %675
  %708 = fsub fast float %703, %705
  %709 = fadd fast float %706, %594
  %710 = fmul fast float %709, %372
  %711 = fadd fast float %702, %133
  %712 = fadd fast float %711, %710
  %713 = fadd fast float %682, %707
  %714 = fmul fast float %708, %652
  %715 = call float @dx.op.tertiary.f32(i32 46, float %712, float %655, float %714)  ; FMad(a,b,c)
  %716 = call float @dx.op.tertiary.f32(i32 46, float %713, float %658, float %715)  ; FMad(a,b,c)
  %717 = fadd fast float %716, %661
  %718 = fmul fast float %708, %653
  %719 = call float @dx.op.tertiary.f32(i32 46, float %712, float %656, float %718)  ; FMad(a,b,c)
  %720 = call float @dx.op.tertiary.f32(i32 46, float %713, float %659, float %719)  ; FMad(a,b,c)
  %721 = fadd fast float %720, %662
  %722 = fmul fast float %708, %654
  %723 = call float @dx.op.tertiary.f32(i32 46, float %712, float %657, float %722)  ; FMad(a,b,c)
  %724 = call float @dx.op.tertiary.f32(i32 46, float %713, float %660, float %723)  ; FMad(a,b,c)
  %725 = fadd fast float %724, %663
  %726 = fdiv fast float 1.000000e+00, %725
  %727 = fmul fast float %717, 5.000000e-01
  %728 = fmul fast float %721, -5.000000e-01
  %729 = fmul fast float %727, %726
  %730 = fmul fast float %728, %726
  %731 = fsub fast float 5.000000e-01, %677
  %732 = fadd fast float %731, %729
  %733 = fsub fast float 5.000000e-01, %678
  %734 = fadd fast float %733, %730
  %735 = fsub fast float %726, %676
  %736 = call float @dx.op.dot2.f32(i32 54, float %732, float %734, float %732, float %734)  ; Dot2(ax,ay,bx,by)
  %737 = call float @dx.op.binary.f32(i32 35, float %736, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %738 = call float @dx.op.dot2.f32(i32 54, float %667, float %668, float %667, float %668)  ; Dot2(ax,ay,bx,by)
  %739 = fmul fast float %738, %737
  %740 = call float @dx.op.unary.f32(i32 25, float %739)  ; Rsqrt(value)
  %741 = fmul fast float %740, %732
  %742 = fmul fast float %740, %734
  %743 = fadd fast float %741, %677
  %744 = fadd fast float %742, %678
  %745 = fmul fast float %732, %667
  %746 = fmul fast float %734, %668
  %747 = fmul fast float %745, %745
  %748 = fmul fast float %746, %746
  %749 = fadd fast float %747, %748
  %750 = call float @dx.op.unary.f32(i32 24, float %749)  ; Sqrt(value)
  %751 = fdiv fast float 1.000000e+00, %750
  %752 = fmul fast float %750, 3.906250e-03
  %753 = fmul fast float %237, 0x3F70624DE0000000
  %754 = fadd fast float %753, 0x3F70624DE0000000
  %755 = icmp sgt i32 %602, -1
  br i1 %755, label %756, label %818

; <label>:756                                     ; preds = %606
  br label %757

; <label>:757                                     ; preds = %814, %756
  %758 = phi float [ %789, %814 ], [ %77, %756 ]
  %759 = phi float [ %776, %814 ], [ %77, %756 ]
  %760 = phi float [ %759, %814 ], [ %77, %756 ]
  %761 = phi i32 [ %815, %814 ], [ 0, %756 ]
  %762 = sitofp i32 %761 to float
  %763 = fadd fast float %251, 5.000000e-01
  %764 = call float @dx.op.unary.f32(i32 22, float %763)  ; Frc(value)
  %765 = fadd fast float %762, %764
  %766 = sitofp i32 %602 to float
  %767 = fdiv fast float %765, %766
  %768 = fmul fast float %767, %767
  %769 = call float @dx.op.binary.f32(i32 36, float %768, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %770 = fmul fast float %769, %732
  %771 = fmul fast float %769, %734
  %772 = fmul fast float %769, %735
  %773 = fadd fast float %770, %743
  %774 = fadd fast float %771, %744
  %775 = fadd fast float %772, %676
  %776 = fdiv fast float 1.000000e+00, %775
  %777 = icmp ne i32 %617, 0
  %778 = fmul fast float %752, %769
  %779 = call float @dx.op.binary.f32(i32 36, float %778, float %618)  ; FMin(a,b)
  %780 = select i1 %777, float %779, float 0.000000e+00
  %781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %773, float %774, float undef, float undef, i32 0, i32 0, i32 undef, float %780)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = fcmp fast ogt float %782, -1.000000e+00
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 1
  %786 = select i1 %783, float %785, float 1.000000e+00
  %787 = fadd fast float %782, 1.000000e+00
  %788 = fmul fast float %786, %787
  %789 = call float @dx.op.unary.f32(i32 6, float %788)  ; FAbs(value)
  %790 = fmul fast float %789, %754
  %791 = fsub fast float %776, %789
  %792 = fsub fast float %791, %790
  %793 = fcmp fast ogt float %792, 0.000000e+00
  %794 = fcmp fast ogt float %597, 0.000000e+00
  br i1 %794, label %795, label %798, !dx.controlflow.hints !44

; <label>:795                                     ; preds = %757
  %796 = fsub fast float %776, %760
  %797 = call float @dx.op.binary.f32(i32 35, float %796, float %597)  ; FMax(a,b)
  br label %798

; <label>:798                                     ; preds = %795, %757
  %799 = phi float [ %797, %795 ], [ %594, %757 ]
  %800 = fcmp fast olt float %792, %799
  %801 = fcmp uge float %782, -1.000000e+00
  %802 = or i1 %70, %801
  %803 = call float @dx.op.unary.f32(i32 7, float %773)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %805 = fcmp fast oeq float %773, %803
  %806 = fcmp fast oeq float %774, %804
  %807 = and i1 %805, %806
  %808 = and i1 %802, %807
  %809 = and i1 %793, %800
  %810 = and i1 %809, %808
  %811 = fcmp fast ogt float %769, %751
  %812 = and i1 %811, %810
  %813 = zext i1 %812 to i32
  br i1 %812, label %817, label %814, !dx.controlflow.hints !45

; <label>:814                                     ; preds = %798
  %815 = add nuw nsw i32 %761, 1
  %816 = icmp slt i32 %761, %602
  br i1 %816, label %757, label %817

; <label>:817                                     ; preds = %814, %798
  br label %818

; <label>:818                                     ; preds = %817, %606
  %819 = phi i32 [ 0, %606 ], [ %813, %817 ]
  %820 = phi float [ %77, %606 ], [ %789, %817 ]
  %821 = phi float [ %77, %606 ], [ %758, %817 ]
  %822 = phi float [ %77, %606 ], [ %776, %817 ]
  %823 = phi float [ %77, %606 ], [ %759, %817 ]
  %824 = fsub fast float %823, %821
  %825 = fsub fast float %822, %820
  %826 = fsub fast float %824, %825
  %827 = fcmp fast une float %826, 0.000000e+00
  %828 = fmul fast float %824, %822
  %829 = fmul fast float %823, %825
  %830 = fsub fast float %828, %829
  %831 = fdiv fast float 1.000000e+00, %826
  %832 = fmul fast float %830, %831
  %833 = select i1 %827, float %832, float %822
  %834 = fdiv fast float 1.000000e+00, %833
  %835 = fsub fast float %834, %676
  %836 = fdiv fast float %835, %735
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = fmul fast float %837, %732
  %839 = fmul fast float %837, %734
  %840 = fadd fast float %838, %743
  %841 = fadd fast float %839, %744
  %842 = fadd fast float %840, -5.000000e-01
  %843 = fadd fast float %841, -5.000000e-01
  %844 = call float @dx.op.unary.f32(i32 6, float %842)  ; FAbs(value)
  %845 = call float @dx.op.unary.f32(i32 6, float %843)  ; FAbs(value)
  %846 = fadd fast float %844, -5.000000e-01
  %847 = fadd fast float %845, -5.000000e-01
  %848 = call float @dx.op.binary.f32(i32 35, float %846, float %847)  ; FMax(a,b)
  %849 = fcmp fast olt float %848, 0.000000e+00
  %850 = icmp ne i32 %819, 0
  %851 = and i1 %850, %849
  %852 = select i1 %851, float 0.000000e+00, float 1.000000e+00
  br label %853

; <label>:853                                     ; preds = %818, %589
  %854 = phi float [ %852, %818 ], [ 1.000000e+00, %589 ]
  %855 = fmul fast float %854, %582
  br label %856

; <label>:856                                     ; preds = %853, %581
  %857 = phi float [ %855, %853 ], [ %582, %581 ]
  %858 = lshr i32 %256, 5
  %859 = lshr i32 %257, 5
  %860 = fcmp fast olt float %857, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %861 = and i32 %23, 31
  %862 = zext i1 %860 to i32
  %863 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %23
  store i32 %862, i32 addrspace(3)* %863, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %864 = icmp ult i32 %861, 16
  br i1 %864, label %865, label %871, !dx.controlflow.hints !46

; <label>:865                                     ; preds = %856
  %866 = add i32 %23, 16
  %867 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %866
  %868 = load i32, i32 addrspace(3)* %867, align 4, !tbaa !35
  %869 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %870 = and i32 %869, %868
  store i32 %870, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %871

; <label>:871                                     ; preds = %865, %856
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %872 = icmp ult i32 %861, 8
  br i1 %872, label %873, label %879, !dx.controlflow.hints !47

; <label>:873                                     ; preds = %871
  %874 = add i32 %23, 8
  %875 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %874
  %876 = load i32, i32 addrspace(3)* %875, align 4, !tbaa !35
  %877 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %878 = and i32 %877, %876
  store i32 %878, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %879

; <label>:879                                     ; preds = %873, %871
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %880 = icmp ult i32 %861, 4
  br i1 %880, label %881, label %887, !dx.controlflow.hints !48

; <label>:881                                     ; preds = %879
  %882 = add i32 %23, 4
  %883 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %882
  %884 = load i32, i32 addrspace(3)* %883, align 4, !tbaa !35
  %885 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %886 = and i32 %885, %884
  store i32 %886, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %887

; <label>:887                                     ; preds = %881, %879
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %888 = icmp ult i32 %861, 2
  br i1 %888, label %889, label %895, !dx.controlflow.hints !49

; <label>:889                                     ; preds = %887
  %890 = add i32 %23, 2
  %891 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %890
  %892 = load i32, i32 addrspace(3)* %891, align 4, !tbaa !35
  %893 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %894 = and i32 %893, %892
  store i32 %894, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %895

; <label>:895                                     ; preds = %889, %887
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %896 = icmp eq i32 %861, 0
  br i1 %896, label %897, label %903, !dx.controlflow.hints !50

; <label>:897                                     ; preds = %895
  %898 = add i32 %23, 1
  %899 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %898
  %900 = load i32, i32 addrspace(3)* %899, align 4, !tbaa !35
  %901 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %902 = and i32 %901, %900
  store i32 %902, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %903

; <label>:903                                     ; preds = %897, %895
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %904 = and i32 %23, -64
  %905 = or i32 %904, 32
  %906 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %904
  %907 = load i32, i32 addrspace(3)* %906, align 4, !tbaa !35
  %908 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %905
  %909 = load i32, i32 addrspace(3)* %908, align 4, !tbaa !35
  %910 = and i32 %909, %907
  %911 = icmp ne i32 %910, 0
  %912 = fcmp fast ogt float %857, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %913 = zext i1 %912 to i32
  store i32 %913, i32 addrspace(3)* %863, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %864, label %914, label %920, !dx.controlflow.hints !46

; <label>:914                                     ; preds = %903
  %915 = add i32 %23, 16
  %916 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %915
  %917 = load i32, i32 addrspace(3)* %916, align 4, !tbaa !35
  %918 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %919 = and i32 %918, %917
  store i32 %919, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %920

; <label>:920                                     ; preds = %914, %903
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %872, label %921, label %927, !dx.controlflow.hints !47

; <label>:921                                     ; preds = %920
  %922 = add i32 %23, 8
  %923 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %922
  %924 = load i32, i32 addrspace(3)* %923, align 4, !tbaa !35
  %925 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %926 = and i32 %925, %924
  store i32 %926, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %927

; <label>:927                                     ; preds = %921, %920
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %880, label %928, label %934, !dx.controlflow.hints !48

; <label>:928                                     ; preds = %927
  %929 = add i32 %23, 4
  %930 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %929
  %931 = load i32, i32 addrspace(3)* %930, align 4, !tbaa !35
  %932 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %933 = and i32 %932, %931
  store i32 %933, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %934

; <label>:934                                     ; preds = %928, %927
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %888, label %935, label %941, !dx.controlflow.hints !49

; <label>:935                                     ; preds = %934
  %936 = add i32 %23, 2
  %937 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %936
  %938 = load i32, i32 addrspace(3)* %937, align 4, !tbaa !35
  %939 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %940 = and i32 %939, %938
  store i32 %940, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %941

; <label>:941                                     ; preds = %935, %934
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %896, label %942, label %948, !dx.controlflow.hints !50

; <label>:942                                     ; preds = %941
  %943 = add i32 %23, 1
  %944 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %943
  %945 = load i32, i32 addrspace(3)* %944, align 4, !tbaa !35
  %946 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !35
  %947 = and i32 %946, %945
  store i32 %947, i32 addrspace(3)* %863, align 4, !tbaa !35
  br label %948

; <label>:948                                     ; preds = %942, %941
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %949 = load i32, i32 addrspace(3)* %906, align 4, !tbaa !35
  %950 = load i32, i32 addrspace(3)* %908, align 4, !tbaa !35
  %951 = and i32 %950, %949
  %952 = or i32 %951, %910
  %953 = icmp eq i32 %952, 0
  %954 = lshr i32 %257, 1
  %955 = and i32 %954, 8
  %956 = lshr i32 %256, 2
  %957 = and i32 %956, 4
  %958 = or i32 %957, %36
  %959 = or i32 %958, %955
  %960 = icmp eq i32 %23, 0
  br i1 %960, label %961, label %1003, !dx.controlflow.hints !51

; <label>:961                                     ; preds = %948
  %962 = icmp ne i32 %951, 0
  %963 = shl i32 1, %959
  %964 = select i1 %962, i32 %963, i32 0
  %965 = shl i32 65536, %959
  %966 = select i1 %911, i32 %965, i32 0
  %967 = or i32 %964, %966
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %971, label %969, !dx.controlflow.hints !52

; <label>:969                                     ; preds = %961
  %970 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %858, i32 %859, i32 %308, i32 %967)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %971

; <label>:971                                     ; preds = %969, %961
  br i1 %953, label %972, label %1001

; <label>:972                                     ; preds = %971
  br label %973

; <label>:973                                     ; preds = %998, %972
  %974 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %3, i32 %858, i32 %859, i32 %308, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %975 = and i32 %974, 3
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %977, label %998, !dx.controlflow.hints !53

; <label>:977                                     ; preds = %973
  %978 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %979 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.i32 %979, 3
  %981 = call i32 @dx.op.binary.i32(i32 40, i32 %980, i32 %978)  ; UMin(a,b)
  %982 = extractvalue %dx.types.CBufRet.i32 %979, 2
  %983 = udiv i32 %981, %982
  %984 = urem i32 %981, %982
  %985 = extractvalue %dx.types.CBufRet.i32 %979, 1
  %986 = urem i32 %984, %985
  %987 = udiv i32 %984, %985
  %988 = shl i32 %986, 6
  %989 = and i32 %988, 32704
  %990 = shl i32 %987, 15
  %991 = and i32 %990, 8355840
  %992 = shl i32 %983, 23
  %993 = and i32 %992, 2139095040
  %994 = or i32 %993, %989
  %995 = or i32 %994, %991
  %996 = or i32 %995, 3
  %997 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 8, i32 %858, i32 %859, i32 %308, i32 %996)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1001

; <label>:998                                     ; preds = %973
  %999 = icmp eq i32 %975, 3
  br i1 %999, label %1000, label %973, !dx.controlflow.hints !54

; <label>:1000                                    ; preds = %998
  br label %1001

; <label>:1001                                    ; preds = %1000, %977, %971
  %1002 = phi i32 [ 0, %971 ], [ %996, %977 ], [ %974, %1000 ]
  store i32 %1002, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !35
  br label %1003

; <label>:1003                                    ; preds = %1001, %948
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1004 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !35
  br i1 %953, label %1005, label %1026, !dx.controlflow.hints !55

; <label>:1005                                    ; preds = %1003
  %1006 = lshr i32 %256, 1
  %1007 = and i32 %1006, 15
  %1008 = and i32 %954, 15
  %1009 = and i32 %256, 1
  %1010 = shl i32 %257, 1
  %1011 = and i32 %1010, 2
  %1012 = or i32 %1011, %1009
  %1013 = lshr i32 %1004, 2
  %1014 = and i32 %1013, 8176
  %1015 = lshr i32 %1004, 11
  %1016 = and i32 %1015, 4080
  %1017 = or i32 %1014, %1007
  %1018 = or i32 %1016, %1008
  %1019 = lshr i32 %1004, 21
  %1020 = and i32 %1019, 1020
  %1021 = or i32 %1012, %1020
  %1022 = fmul fast float %857, 2.550000e+02
  %1023 = fadd fast float %1022, %250
  %1024 = call float @dx.op.unary.f32(i32 27, float %1023)  ; Round_ni(value)
  %1025 = fmul fast float %1024, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1017, i32 %1018, i32 %1021, float %1025, float %1025, float %1025, float %1025, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1026

; <label>:1026                                    ; preds = %1005, %1003
  %1027 = icmp eq i32 %306, %310
  br i1 %1027, label %1028, label %305, !llvm.loop !56

; <label>:1028                                    ; preds = %1026
  br label %1029

; <label>:1029                                    ; preds = %1028, %279
  %1030 = add i32 %280, 1
  %1031 = icmp ugt i32 %1030, %276
  br i1 %1031, label %1032, label %279

; <label>:1032                                    ; preds = %1029
  br label %1033

; <label>:1033                                    ; preds = %1032, %255, %57
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
!dx.entryPoints = !{!31}

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
!28 = !{!29, !30}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !32}
!32 = !{i32 0, i64 272, i32 4, !33}
!33 = !{i32 8, i32 8, i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}

