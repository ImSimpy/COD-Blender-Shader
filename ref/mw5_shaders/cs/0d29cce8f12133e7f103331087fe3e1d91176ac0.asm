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
; shader hash: 76996b53d988c78271c598439b5c1149
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
  %82 = fmul fast float %67, 2.000000e+00
  %83 = fmul fast float %82, %80
  %84 = fmul fast float %68, 2.000000e+00
  %85 = fmul fast float %84, %81
  %86 = fsub fast float 1.000000e+00, %83
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
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fmul fast float %183, 0x3FE3C6EF40000000
  %185 = frem fast float %67, 2.560000e+02
  %186 = frem fast float %68, 2.560000e+02
  %187 = fptoui float %185 to i32
  %188 = fptoui float %186 to i32
  %189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %187, i32 %188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fadd fast float %190, %184
  %192 = call float @dx.op.unary.f32(i32 22, float %191)  ; Frc(value)
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 0
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %1348, label %196, !dx.controlflow.hints !40

; <label>:196                                     ; preds = %58
  %197 = fptoui float %67 to i32
  %198 = fptoui float %68 to i32
  %199 = lshr i32 %197, 4
  %200 = lshr i32 %198, 4
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 0
  %203 = call i32 @dx.op.tertiary.i32(i32 49, i32 %200, i32 %202, i32 %199)  ; UMad(a,b,c)
  %204 = add nsw i32 %194, -1
  %205 = call i32 @dx.op.binary.i32(i32 37, i32 %204, i32 0)  ; IMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %207 = fptoui float %206 to i32
  %208 = lshr i32 %207, 5
  %209 = call i32 @dx.op.binary.i32(i32 40, i32 %208, i32 8191)  ; UMin(a,b)
  %210 = shl i32 %209, 2
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = lshr i32 %212, 16
  %214 = and i32 %212, 65535
  %215 = lshr i32 %212, 21
  %216 = lshr i32 %214, 5
  %217 = call i32 @dx.op.binary.i32(i32 40, i32 %216, i32 %205)  ; UMin(a,b)
  %218 = icmp ugt i32 %215, %217
  br i1 %218, label %1348, label %219

; <label>:219                                     ; preds = %196
  br label %220

; <label>:220                                     ; preds = %1344, %219
  %221 = phi i32 [ %1345, %1344 ], [ %215, %219 ]
  %222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.i32 %222, 0
  %224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %203, i32 %223, i32 %221)  ; UMad(a,b,c)
  %225 = shl i32 %224, 2
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = shl i32 %221, 5
  %229 = sub nsw i32 %213, %228
  %230 = call i32 @dx.op.binary.i32(i32 37, i32 %229, i32 0)  ; IMax(a,b)
  %231 = call i32 @dx.op.binary.i32(i32 38, i32 %230, i32 31)  ; IMin(a,b)
  %232 = sub nsw i32 1, %213
  %233 = add nsw i32 %232, %214
  %234 = call i32 @dx.op.binary.i32(i32 37, i32 %233, i32 0)  ; IMax(a,b)
  %235 = call i32 @dx.op.binary.i32(i32 38, i32 %234, i32 32)  ; IMin(a,b)
  %236 = and i32 %235, 31
  %237 = shl i32 -1, %236
  %238 = xor i32 %237, -1
  %239 = and i32 %231, 31
  %240 = shl i32 %238, %239
  %241 = icmp eq i32 %235, 32
  %242 = select i1 %241, i32 -1, i32 %240
  %243 = and i32 %242, %227
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %1344, label %245

; <label>:245                                     ; preds = %220
  br label %246

; <label>:246                                     ; preds = %1341, %245
  %247 = phi i32 [ %252, %1341 ], [ %243, %245 ]
  %248 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %247)  ; FirstbitLo(value)
  %249 = add i32 %248, %228
  %250 = and i32 %248, 31
  %251 = shl i32 1, %250
  %252 = xor i32 %251, %247
  %253 = mul i32 %249, 112
  %254 = add i32 %253, 16
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = extractvalue %dx.types.ResRet.f32 %255, 2
  %259 = add i32 %253, 28
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = add i32 %253, 32
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = add i32 %253, 44
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = add i32 %253, 48
  %271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = extractvalue %dx.types.ResRet.f32 %271, 1
  %274 = extractvalue %dx.types.ResRet.f32 %271, 2
  %275 = extractvalue %dx.types.ResRet.f32 %271, 3
  %276 = add i32 %253, 64
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  %282 = add i32 %253, 92
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = uitofp i32 %285 to float
  %287 = lshr i32 %284, 16
  %288 = uitofp i32 %287 to float
  %289 = and i32 %261, 65535
  %290 = and i32 %261, 50331648
  %291 = icmp eq i32 %290, 33554432
  %292 = call float @dx.op.dot3.f32(i32 55, float %264, float %265, float %266, float %264, float %265, float %266)  ; Dot3(ax,ay,az,bx,by,bz)
  %293 = fsub fast float %133, %272
  %294 = fsub fast float %134, %273
  %295 = fsub fast float %135, %274
  %296 = call float @dx.op.dot3.f32(i32 55, float %293, float %294, float %295, float %264, float %265, float %266)  ; Dot3(ax,ay,az,bx,by,bz)
  %297 = fdiv fast float %296, %292
  %298 = call float @dx.op.binary.f32(i32 35, float %297, float -1.000000e+00)  ; FMax(a,b)
  %299 = call float @dx.op.binary.f32(i32 36, float %298, float 1.000000e+00)  ; FMin(a,b)
  %300 = fmul fast float %299, %264
  %301 = fmul fast float %299, %265
  %302 = fmul fast float %299, %266
  %303 = fadd fast float %300, %272
  %304 = fadd fast float %301, %273
  %305 = fadd fast float %302, %274
  %306 = fsub fast float %303, %133
  %307 = fsub fast float %304, %134
  %308 = fsub fast float %305, %135
  %309 = call float @dx.op.dot3.f32(i32 55, float %306, float %307, float %308, float %306, float %307, float %308)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %311 = fdiv fast float 1.000000e+00, %310
  %312 = fmul fast float %306, %311
  %313 = fmul fast float %307, %311
  %314 = fmul fast float %308, %311
  br i1 %291, label %315, label %339, !dx.controlflow.hints !41

; <label>:315                                     ; preds = %246
  %316 = fmul fast float %280, %256
  %317 = fmul fast float %280, %257
  %318 = fmul fast float %280, %258
  %319 = fsub fast float %316, %133
  %320 = fadd fast float %319, %303
  %321 = fsub fast float %317, %134
  %322 = fadd fast float %321, %304
  %323 = fsub fast float %318, %135
  %324 = fadd fast float %323, %305
  %325 = call float @dx.op.dot3.f32(i32 55, float %320, float %322, float %324, float %320, float %322, float %324)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = call float @dx.op.unary.f32(i32 25, float %325)  ; Rsqrt(value)
  %327 = fmul fast float %326, %320
  %328 = fmul fast float %326, %322
  %329 = fmul fast float %326, %324
  %330 = fsub fast float %133, %303
  %331 = fsub fast float %134, %304
  %332 = fsub fast float %135, %305
  %333 = fsub fast float -0.000000e+00, %330
  %334 = fsub fast float -0.000000e+00, %331
  %335 = fsub fast float -0.000000e+00, %332
  %336 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %337 = fcmp fast ogt float %336, 0.000000e+00
  %338 = uitofp i1 %337 to float
  br label %339

; <label>:339                                     ; preds = %315, %246
  %340 = phi float [ %338, %315 ], [ 1.000000e+00, %246 ]
  %341 = phi float [ %327, %315 ], [ %312, %246 ]
  %342 = phi float [ %328, %315 ], [ %313, %246 ]
  %343 = phi float [ %329, %315 ], [ %314, %246 ]
  %344 = call float @dx.op.dot3.f32(i32 55, float %256, float %257, float %258, float %341, float %342, float %343)  ; Dot3(ax,ay,az,bx,by,bz)
  %345 = fmul fast float %344, %344
  %346 = call float @dx.op.unary.f32(i32 7, float %345)  ; Saturate(value)
  %347 = fsub fast float 1.000000e+00, %346
  %348 = fmul fast float %347, 5.000000e-01
  %349 = fcmp fast ogt float %344, 0.000000e+00
  %350 = fsub fast float 1.000000e+00, %348
  %351 = select i1 %349, float %348, float %350
  %352 = fmul fast float %351, %288
  %353 = fadd fast float %352, %286
  %354 = fmul fast float %353, 0x3EF0001000000000
  %355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %354, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = fmul fast float %344, %278
  %358 = fadd fast float %357, %279
  %359 = call float @dx.op.unary.f32(i32 7, float %358)  ; Saturate(value)
  %360 = select i1 %291, float 1.000000e+00, float %359
  %361 = select i1 %291, float %359, float 1.000000e+00
  %362 = fmul fast float %310, %275
  %363 = fsub fast float 1.000000e+00, %362
  %364 = fmul fast float %363, %281
  %365 = call float @dx.op.unary.f32(i32 7, float %364)  ; Saturate(value)
  %366 = fmul fast float %365, %361
  %367 = fmul fast float %366, 2.000000e+00
  %368 = fsub fast float 3.000000e+00, %367
  %369 = fmul fast float %356, %340
  %370 = fmul fast float %366, %366
  %371 = fmul fast float %370, %369
  %372 = fmul fast float %371, %368
  %373 = icmp ne i32 %289, 255
  %374 = call float @dx.op.binary.f32(i32 36, float %372, float %372)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 36, float %372, float %374)  ; FMin(a,b)
  %376 = fcmp fast ogt float %375, 0.000000e+00
  %377 = and i1 %373, %376
  br i1 %377, label %378, label %1171, !dx.controlflow.hints !42

; <label>:378                                     ; preds = %339
  %379 = mul nuw nsw i32 %289, 176
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = extractvalue %dx.types.ResRet.f32 %380, 2
  %384 = extractvalue %dx.types.ResRet.f32 %380, 3
  %385 = add nuw nsw i32 %379, 16
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = add nuw nsw i32 %379, 32
  %390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = extractvalue %dx.types.ResRet.f32 %390, 2
  %394 = extractvalue %dx.types.ResRet.f32 %390, 3
  %395 = add nuw nsw i32 %379, 48
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = extractvalue %dx.types.ResRet.f32 %396, 3
  %401 = add nuw nsw i32 %379, 64
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add nuw nsw i32 %379, 80
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = add nuw nsw i32 %379, 96
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = add nuw nsw i32 %379, 112
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = extractvalue %dx.types.ResRet.f32 %420, 3
  %425 = add nuw nsw i32 %379, 128
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = add nuw nsw i32 %379, 144
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = add nuw nsw i32 %379, 160
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = bitcast float %388 to i32
  %444 = bitcast float %394 to i32
  %445 = and i32 %444, 1
  %446 = icmp ne i32 %445, 0
  %447 = and i32 %444, 2
  %448 = fmul fast float %179, %393
  %449 = fmul fast float %180, %393
  %450 = fmul fast float %181, %393
  %451 = fadd fast float %448, %133
  %452 = fadd fast float %449, %134
  %453 = fadd fast float %450, %135
  %454 = fmul fast float %451, %397
  %455 = call float @dx.op.tertiary.f32(i32 46, float %452, float %403, float %454)  ; FMad(a,b,c)
  %456 = call float @dx.op.tertiary.f32(i32 46, float %453, float %409, float %455)  ; FMad(a,b,c)
  %457 = fadd fast float %456, %415
  %458 = fmul fast float %451, %398
  %459 = call float @dx.op.tertiary.f32(i32 46, float %452, float %404, float %458)  ; FMad(a,b,c)
  %460 = call float @dx.op.tertiary.f32(i32 46, float %453, float %410, float %459)  ; FMad(a,b,c)
  %461 = fadd fast float %460, %416
  %462 = fmul fast float %451, %399
  %463 = call float @dx.op.tertiary.f32(i32 46, float %452, float %405, float %462)  ; FMad(a,b,c)
  %464 = call float @dx.op.tertiary.f32(i32 46, float %453, float %411, float %463)  ; FMad(a,b,c)
  %465 = fadd fast float %464, %417
  %466 = fmul fast float %451, %400
  %467 = call float @dx.op.tertiary.f32(i32 46, float %452, float %406, float %466)  ; FMad(a,b,c)
  %468 = call float @dx.op.tertiary.f32(i32 46, float %453, float %412, float %467)  ; FMad(a,b,c)
  %469 = fadd fast float %468, %418
  %470 = fdiv fast float %457, %469
  %471 = fdiv fast float %461, %469
  %472 = fdiv fast float %465, %469
  %473 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %472)  ; FMax(a,b)
  %474 = fmul fast float %192, 0x401921FB60000000
  %475 = call float @dx.op.unary.f32(i32 13, float %474)  ; Sin(value)
  %476 = call float @dx.op.unary.f32(i32 12, float %474)  ; Cos(value)
  %477 = fsub fast float -0.000000e+00, %475
  %478 = icmp eq i32 %447, 0
  br i1 %478, label %479, label %550, !dx.controlflow.hints !43

; <label>:479                                     ; preds = %378
  %480 = fmul fast float %476, %392
  %481 = call float @dx.op.tertiary.f32(i32 46, float %475, float %392, float 0.000000e+00)  ; FMad(a,b,c)
  %482 = fmul fast float %392, %477
  %483 = call float @dx.op.tertiary.f32(i32 46, float %476, float %392, float 0.000000e+00)  ; FMad(a,b,c)
  br label %484

; <label>:484                                     ; preds = %484, %479
  %485 = phi float [ 0.000000e+00, %479 ], [ %517, %484 ]
  %486 = phi float [ 0.000000e+00, %479 ], [ %519, %484 ]
  %487 = phi i32 [ 0, %479 ], [ %520, %484 ]
  %488 = mul i32 %487, 2
  %489 = add i32 0, %488
  %490 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %489
  %491 = load float, float* %490, align 4
  %492 = mul i32 %487, 2
  %493 = add i32 1, %492
  %494 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %493
  %495 = load float, float* %494, align 4
  %496 = fmul fast float %480, %491
  %497 = call float @dx.op.tertiary.f32(i32 46, float %495, float %482, float %496)  ; FMad(a,b,c)
  %498 = fmul fast float %491, %481
  %499 = call float @dx.op.tertiary.f32(i32 46, float %495, float %483, float %498)  ; FMad(a,b,c)
  %500 = fadd fast float %497, %470
  %501 = fadd fast float %499, %471
  %502 = fmul fast float %500, %387
  %503 = fmul fast float %501, %387
  %504 = call float @dx.op.binary.f32(i32 35, float %502, float %383)  ; FMax(a,b)
  %505 = call float @dx.op.binary.f32(i32 35, float %503, float %383)  ; FMax(a,b)
  %506 = call float @dx.op.binary.f32(i32 36, float %504, float %384)  ; FMin(a,b)
  %507 = call float @dx.op.binary.f32(i32 36, float %505, float %384)  ; FMin(a,b)
  %508 = fadd fast float %506, %381
  %509 = fadd fast float %507, %382
  %510 = uitofp i32 %443 to float
  %511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %508, float %509, float %510, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = fsub fast float %512, %473
  %514 = fsub fast float %513, %391
  %515 = fcmp fast ogt float %514, 0.000000e+00
  %516 = select i1 %515, float 1.000000e+00, float 0.000000e+00
  %517 = fadd fast float %516, %485
  %518 = select i1 %515, float %514, float 0.000000e+00
  %519 = fadd fast float %518, %486
  %520 = add nuw nsw i32 %487, 1
  %521 = icmp eq i32 %520, 8
  br i1 %521, label %522, label %484

; <label>:522                                     ; preds = %484
  %523 = fdiv fast float 1.000000e+00, %517
  %524 = fmul fast float %523, %519
  %525 = fdiv fast float 1.000000e+00, %473
  %526 = fmul fast float %524, %525
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = call float @dx.op.binary.f32(i32 35, float %527, float 0.000000e+00)  ; FMax(a,b)
  %529 = fmul fast float %517, 1.250000e-01
  %530 = call float @dx.op.unary.f32(i32 7, float %529)  ; Saturate(value)
  %531 = fmul fast float %530, 2.000000e+00
  %532 = fadd fast float %531, -1.000000e+00
  %533 = fcmp fast ogt float %532, 0.000000e+00
  %534 = fcmp fast olt float %532, 0.000000e+00
  %535 = zext i1 %533 to i32
  %536 = zext i1 %534 to i32
  %537 = sub nsw i32 %535, %536
  %538 = sitofp i32 %537 to float
  %539 = fmul fast float %538, %532
  %540 = fsub fast float 1.000000e+00, %539
  %541 = fmul fast float %540, %540
  %542 = fmul fast float %541, %540
  %543 = fsub fast float %540, %542
  %544 = fmul fast float %543, %528
  %545 = fsub fast float 1.000000e+00, %542
  %546 = fsub fast float %545, %544
  %547 = fmul fast float %538, 5.000000e-01
  %548 = fmul fast float %547, %546
  %549 = fsub fast float 5.000000e-01, %548
  br label %1165

; <label>:550                                     ; preds = %378
  %551 = fsub fast float 1.000000e+00, %473
  %552 = fmul fast float %551, 5.000000e-01
  %553 = fadd fast float %552, %473
  %554 = fsub fast float %451, %272
  %555 = fsub fast float %452, %273
  %556 = fsub fast float %453, %274
  %557 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %264, float %265, float %266)  ; Dot3(ax,ay,az,bx,by,bz)
  %558 = fdiv fast float %557, %292
  %559 = call float @dx.op.binary.f32(i32 35, float %558, float -1.000000e+00)  ; FMax(a,b)
  %560 = call float @dx.op.binary.f32(i32 36, float %559, float 1.000000e+00)  ; FMin(a,b)
  %561 = fmul fast float %560, %264
  %562 = fmul fast float %560, %265
  %563 = fmul fast float %560, %266
  %564 = fsub fast float %554, %561
  %565 = fsub fast float %555, %562
  %566 = fsub fast float %556, %563
  %567 = call float @dx.op.dot3.f32(i32 55, float %564, float %565, float %566, float %564, float %565, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = call float @dx.op.unary.f32(i32 25, float %567)  ; Rsqrt(value)
  %569 = fmul fast float %564, %568
  %570 = fmul fast float %565, %568
  %571 = fmul fast float %566, %568
  %572 = call float @dx.op.unary.f32(i32 25, float %292)  ; Rsqrt(value)
  %573 = fmul fast float %572, %264
  %574 = fmul fast float %572, %265
  %575 = fmul fast float %572, %266
  br i1 %446, label %576, label %580, !dx.controlflow.hints !44

; <label>:576                                     ; preds = %550
  %577 = fcmp fast olt float %570, 0x3FE6666660000000
  %578 = select i1 %577, float 1.000000e+00, float 0.000000e+00
  %579 = select i1 %577, float 0.000000e+00, float 1.000000e+00
  br label %580

; <label>:580                                     ; preds = %576, %550
  %581 = phi float [ 0.000000e+00, %576 ], [ %573, %550 ]
  %582 = phi float [ %578, %576 ], [ %574, %550 ]
  %583 = phi float [ %579, %576 ], [ %575, %550 ]
  %584 = fmul fast float %582, %571
  %585 = fmul fast float %583, %570
  %586 = fsub fast float %584, %585
  %587 = fmul fast float %583, %569
  %588 = fmul fast float %581, %571
  %589 = fsub fast float %587, %588
  %590 = fmul fast float %581, %570
  %591 = fmul fast float %582, %569
  %592 = fsub fast float %590, %591
  %593 = call float @dx.op.dot3.f32(i32 55, float %586, float %589, float %592, float %586, float %589, float %592)  ; Dot3(ax,ay,az,bx,by,bz)
  %594 = call float @dx.op.unary.f32(i32 25, float %593)  ; Rsqrt(value)
  %595 = fmul fast float %594, %269
  %596 = fmul fast float %595, %586
  %597 = fmul fast float %595, %589
  %598 = fmul fast float %592, %269
  %599 = fmul fast float %598, %594
  %600 = fmul fast float %470, %421
  %601 = call float @dx.op.tertiary.f32(i32 46, float %471, float %427, float %600)  ; FMad(a,b,c)
  %602 = call float @dx.op.tertiary.f32(i32 46, float %553, float %433, float %601)  ; FMad(a,b,c)
  %603 = fadd fast float %602, %439
  %604 = fmul fast float %470, %422
  %605 = call float @dx.op.tertiary.f32(i32 46, float %471, float %428, float %604)  ; FMad(a,b,c)
  %606 = call float @dx.op.tertiary.f32(i32 46, float %553, float %434, float %605)  ; FMad(a,b,c)
  %607 = fadd fast float %606, %440
  %608 = fmul fast float %470, %423
  %609 = call float @dx.op.tertiary.f32(i32 46, float %471, float %429, float %608)  ; FMad(a,b,c)
  %610 = call float @dx.op.tertiary.f32(i32 46, float %553, float %435, float %609)  ; FMad(a,b,c)
  %611 = fadd fast float %610, %441
  %612 = fmul fast float %470, %424
  %613 = call float @dx.op.tertiary.f32(i32 46, float %471, float %430, float %612)  ; FMad(a,b,c)
  %614 = call float @dx.op.tertiary.f32(i32 46, float %553, float %436, float %613)  ; FMad(a,b,c)
  %615 = fadd fast float %614, %442
  %616 = fdiv fast float 1.000000e+00, %615
  %617 = fmul fast float %616, %603
  %618 = fmul fast float %616, %607
  %619 = fmul fast float %616, %611
  %620 = fsub fast float -0.000000e+00, %569
  %621 = fsub fast float -0.000000e+00, %570
  %622 = fsub fast float -0.000000e+00, %571
  %623 = fsub fast float %272, %596
  %624 = fsub fast float %273, %597
  %625 = fsub fast float %274, %599
  %626 = fsub fast float %617, %623
  %627 = fsub fast float %618, %624
  %628 = fsub fast float %619, %625
  %629 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %628, float %626, float %627, float %628)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = call float @dx.op.unary.f32(i32 25, float %629)  ; Rsqrt(value)
  %631 = fmul fast float %626, %630
  %632 = fmul fast float %627, %630
  %633 = fmul fast float %628, %630
  %634 = fsub fast float %451, %623
  %635 = fsub fast float %452, %624
  %636 = fsub fast float %453, %625
  %637 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %634, float %635, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %638 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %631, float %632, float %633)  ; Dot3(ax,ay,az,bx,by,bz)
  %639 = fdiv fast float 1.000000e+00, %638
  %640 = fmul fast float %639, %637
  %641 = fmul fast float %640, %631
  %642 = fmul fast float %640, %632
  %643 = fmul fast float %640, %633
  %644 = fadd fast float %641, %623
  %645 = fadd fast float %642, %624
  %646 = fadd fast float %643, %625
  %647 = fadd fast float %596, %272
  %648 = fadd fast float %597, %273
  %649 = fadd fast float %599, %274
  %650 = fsub fast float %617, %647
  %651 = fsub fast float %618, %648
  %652 = fsub fast float %619, %649
  %653 = call float @dx.op.dot3.f32(i32 55, float %650, float %651, float %652, float %650, float %651, float %652)  ; Dot3(ax,ay,az,bx,by,bz)
  %654 = call float @dx.op.unary.f32(i32 25, float %653)  ; Rsqrt(value)
  %655 = fmul fast float %654, %650
  %656 = fmul fast float %654, %651
  %657 = fmul fast float %654, %652
  %658 = fsub fast float %451, %647
  %659 = fsub fast float %452, %648
  %660 = fsub fast float %453, %649
  %661 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %658, float %659, float %660)  ; Dot3(ax,ay,az,bx,by,bz)
  %662 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %655, float %656, float %657)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = fdiv fast float 1.000000e+00, %662
  %664 = fmul fast float %663, %661
  %665 = fmul fast float %664, %655
  %666 = fmul fast float %664, %656
  %667 = fmul fast float %664, %657
  %668 = fadd fast float %665, %647
  %669 = fadd fast float %666, %648
  %670 = fadd fast float %667, %649
  %671 = fmul fast float %644, %397
  %672 = call float @dx.op.tertiary.f32(i32 46, float %645, float %403, float %671)  ; FMad(a,b,c)
  %673 = call float @dx.op.tertiary.f32(i32 46, float %646, float %409, float %672)  ; FMad(a,b,c)
  %674 = fadd fast float %673, %415
  %675 = fmul fast float %644, %398
  %676 = call float @dx.op.tertiary.f32(i32 46, float %645, float %404, float %675)  ; FMad(a,b,c)
  %677 = call float @dx.op.tertiary.f32(i32 46, float %646, float %410, float %676)  ; FMad(a,b,c)
  %678 = fadd fast float %677, %416
  %679 = fmul fast float %644, %400
  %680 = call float @dx.op.tertiary.f32(i32 46, float %645, float %406, float %679)  ; FMad(a,b,c)
  %681 = call float @dx.op.tertiary.f32(i32 46, float %646, float %412, float %680)  ; FMad(a,b,c)
  %682 = fadd fast float %681, %418
  %683 = fmul fast float %668, %397
  %684 = call float @dx.op.tertiary.f32(i32 46, float %669, float %403, float %683)  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float %670, float %409, float %684)  ; FMad(a,b,c)
  %686 = fadd fast float %685, %415
  %687 = fmul fast float %668, %398
  %688 = call float @dx.op.tertiary.f32(i32 46, float %669, float %404, float %687)  ; FMad(a,b,c)
  %689 = call float @dx.op.tertiary.f32(i32 46, float %670, float %410, float %688)  ; FMad(a,b,c)
  %690 = fadd fast float %689, %416
  %691 = fmul fast float %668, %400
  %692 = call float @dx.op.tertiary.f32(i32 46, float %669, float %406, float %691)  ; FMad(a,b,c)
  %693 = call float @dx.op.tertiary.f32(i32 46, float %670, float %412, float %692)  ; FMad(a,b,c)
  %694 = fadd fast float %693, %418
  %695 = fdiv fast float 1.000000e+00, %682
  %696 = fmul fast float %695, %674
  %697 = fmul fast float %695, %678
  %698 = fdiv fast float 1.000000e+00, %694
  %699 = fmul fast float %698, %686
  %700 = fmul fast float %698, %690
  %701 = fsub fast float %699, %696
  %702 = fsub fast float %700, %697
  %703 = call float @dx.op.dot2.f32(i32 54, float %701, float %702, float %701, float %702)  ; Dot2(ax,ay,bx,by)
  %704 = call float @dx.op.unary.f32(i32 25, float %703)  ; Rsqrt(value)
  %705 = fmul fast float %701, %704
  %706 = fmul fast float %702, %704
  %707 = fmul fast float %701, %701
  %708 = fmul fast float %702, %702
  %709 = fadd fast float %707, %708
  %710 = call float @dx.op.unary.f32(i32 24, float %709)  ; Sqrt(value)
  %711 = fmul fast float %710, 5.000000e-01
  br i1 %446, label %804, label %712, !dx.controlflow.hints !45

; <label>:712                                     ; preds = %580
  %713 = fsub fast float %272, %264
  %714 = fsub fast float %273, %265
  %715 = fsub fast float %274, %266
  %716 = fsub fast float %617, %713
  %717 = fsub fast float %618, %714
  %718 = fsub fast float %619, %715
  %719 = call float @dx.op.dot3.f32(i32 55, float %716, float %717, float %718, float %716, float %717, float %718)  ; Dot3(ax,ay,az,bx,by,bz)
  %720 = call float @dx.op.unary.f32(i32 25, float %719)  ; Rsqrt(value)
  %721 = fmul fast float %720, %716
  %722 = fmul fast float %720, %717
  %723 = fmul fast float %720, %718
  %724 = fsub fast float %451, %713
  %725 = fsub fast float %452, %714
  %726 = fsub fast float %453, %715
  %727 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %724, float %725, float %726)  ; Dot3(ax,ay,az,bx,by,bz)
  %728 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %721, float %722, float %723)  ; Dot3(ax,ay,az,bx,by,bz)
  %729 = fdiv fast float 1.000000e+00, %728
  %730 = fmul fast float %729, %727
  %731 = fmul fast float %730, %721
  %732 = fmul fast float %730, %722
  %733 = fmul fast float %730, %723
  %734 = fadd fast float %731, %713
  %735 = fadd fast float %732, %714
  %736 = fadd fast float %733, %715
  %737 = fadd fast float %272, %264
  %738 = fadd fast float %273, %265
  %739 = fadd fast float %274, %266
  %740 = fsub fast float %617, %737
  %741 = fsub fast float %618, %738
  %742 = fsub fast float %619, %739
  %743 = call float @dx.op.dot3.f32(i32 55, float %740, float %741, float %742, float %740, float %741, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = call float @dx.op.unary.f32(i32 25, float %743)  ; Rsqrt(value)
  %745 = fmul fast float %744, %740
  %746 = fmul fast float %744, %741
  %747 = fmul fast float %744, %742
  %748 = fsub fast float %451, %737
  %749 = fsub fast float %452, %738
  %750 = fsub fast float %453, %739
  %751 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %748, float %749, float %750)  ; Dot3(ax,ay,az,bx,by,bz)
  %752 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %745, float %746, float %747)  ; Dot3(ax,ay,az,bx,by,bz)
  %753 = fdiv fast float 1.000000e+00, %752
  %754 = fmul fast float %753, %751
  %755 = fmul fast float %754, %745
  %756 = fmul fast float %754, %746
  %757 = fmul fast float %754, %747
  %758 = fadd fast float %755, %737
  %759 = fadd fast float %756, %738
  %760 = fadd fast float %757, %739
  %761 = fmul fast float %734, %397
  %762 = call float @dx.op.tertiary.f32(i32 46, float %735, float %403, float %761)  ; FMad(a,b,c)
  %763 = call float @dx.op.tertiary.f32(i32 46, float %736, float %409, float %762)  ; FMad(a,b,c)
  %764 = fadd fast float %763, %415
  %765 = fmul fast float %734, %398
  %766 = call float @dx.op.tertiary.f32(i32 46, float %735, float %404, float %765)  ; FMad(a,b,c)
  %767 = call float @dx.op.tertiary.f32(i32 46, float %736, float %410, float %766)  ; FMad(a,b,c)
  %768 = fadd fast float %767, %416
  %769 = fmul fast float %734, %400
  %770 = call float @dx.op.tertiary.f32(i32 46, float %735, float %406, float %769)  ; FMad(a,b,c)
  %771 = call float @dx.op.tertiary.f32(i32 46, float %736, float %412, float %770)  ; FMad(a,b,c)
  %772 = fadd fast float %771, %418
  %773 = fmul fast float %758, %397
  %774 = call float @dx.op.tertiary.f32(i32 46, float %759, float %403, float %773)  ; FMad(a,b,c)
  %775 = call float @dx.op.tertiary.f32(i32 46, float %760, float %409, float %774)  ; FMad(a,b,c)
  %776 = fadd fast float %775, %415
  %777 = fmul fast float %758, %398
  %778 = call float @dx.op.tertiary.f32(i32 46, float %759, float %404, float %777)  ; FMad(a,b,c)
  %779 = call float @dx.op.tertiary.f32(i32 46, float %760, float %410, float %778)  ; FMad(a,b,c)
  %780 = fadd fast float %779, %416
  %781 = fmul fast float %758, %400
  %782 = call float @dx.op.tertiary.f32(i32 46, float %759, float %406, float %781)  ; FMad(a,b,c)
  %783 = call float @dx.op.tertiary.f32(i32 46, float %760, float %412, float %782)  ; FMad(a,b,c)
  %784 = fadd fast float %783, %418
  %785 = fdiv fast float 1.000000e+00, %772
  %786 = fmul fast float %785, %764
  %787 = fmul fast float %785, %768
  %788 = fdiv fast float 1.000000e+00, %784
  %789 = fmul fast float %788, %776
  %790 = fmul fast float %788, %780
  %791 = fsub fast float %789, %786
  %792 = fsub fast float %790, %787
  %793 = call float @dx.op.dot2.f32(i32 54, float %791, float %792, float %791, float %792)  ; Dot2(ax,ay,bx,by)
  %794 = call float @dx.op.unary.f32(i32 25, float %793)  ; Rsqrt(value)
  %795 = fmul fast float %791, %794
  %796 = fmul fast float %792, %794
  %797 = fmul fast float %791, %791
  %798 = fmul fast float %792, %792
  %799 = fadd fast float %797, %798
  %800 = call float @dx.op.unary.f32(i32 24, float %799)  ; Sqrt(value)
  %801 = fmul fast float %800, 5.000000e-01
  %802 = fcmp fast olt float %801, %711
  br i1 %802, label %803, label %804, !dx.controlflow.hints !46

; <label>:803                                     ; preds = %712
  br label %804

; <label>:804                                     ; preds = %803, %712, %580
  %805 = phi float [ %711, %580 ], [ %801, %803 ], [ %711, %712 ]
  %806 = phi float [ %711, %580 ], [ %711, %803 ], [ %801, %712 ]
  %807 = phi float [ %705, %580 ], [ %705, %803 ], [ %795, %712 ]
  %808 = phi float [ %706, %580 ], [ %706, %803 ], [ %796, %712 ]
  %809 = fmul fast float %805, %392
  %810 = fdiv fast float %809, %806
  %811 = fsub fast float %392, %810
  %812 = fmul fast float %807, %807
  %813 = fmul fast float %812, %811
  %814 = fadd fast float %813, %810
  %815 = fmul fast float %808, %807
  %816 = fmul fast float %815, %811
  %817 = fmul fast float %808, %808
  %818 = fmul fast float %817, %811
  %819 = fadd fast float %818, %810
  %820 = fmul fast float %814, %476
  %821 = call float @dx.op.tertiary.f32(i32 46, float %475, float %816, float %820)  ; FMad(a,b,c)
  %822 = fmul fast float %816, %476
  %823 = call float @dx.op.tertiary.f32(i32 46, float %475, float %819, float %822)  ; FMad(a,b,c)
  %824 = fmul fast float %814, %477
  %825 = call float @dx.op.tertiary.f32(i32 46, float %476, float %816, float %824)  ; FMad(a,b,c)
  %826 = fmul fast float %816, %477
  %827 = call float @dx.op.tertiary.f32(i32 46, float %476, float %819, float %826)  ; FMad(a,b,c)
  br label %828

; <label>:828                                     ; preds = %866, %804
  %829 = phi float [ 0.000000e+00, %804 ], [ %867, %866 ]
  %830 = phi float [ 0.000000e+00, %804 ], [ %868, %866 ]
  %831 = phi float [ 0.000000e+00, %804 ], [ %869, %866 ]
  %832 = phi float [ 0.000000e+00, %804 ], [ %870, %866 ]
  %833 = phi i32 [ 0, %804 ], [ %871, %866 ]
  %834 = mul i32 %833, 2
  %835 = add i32 0, %834
  %836 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %835
  %837 = load float, float* %836, align 4
  %838 = mul i32 %833, 2
  %839 = add i32 1, %838
  %840 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %839
  %841 = load float, float* %840, align 4
  %842 = fmul fast float %837, %821
  %843 = call float @dx.op.tertiary.f32(i32 46, float %841, float %825, float %842)  ; FMad(a,b,c)
  %844 = fmul fast float %837, %823
  %845 = call float @dx.op.tertiary.f32(i32 46, float %841, float %827, float %844)  ; FMad(a,b,c)
  %846 = fadd fast float %843, %470
  %847 = fadd fast float %845, %471
  %848 = fmul fast float %846, %387
  %849 = fmul fast float %847, %387
  %850 = call float @dx.op.binary.f32(i32 35, float %848, float %383)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 35, float %849, float %383)  ; FMax(a,b)
  %852 = call float @dx.op.binary.f32(i32 36, float %850, float %384)  ; FMin(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float %851, float %384)  ; FMin(a,b)
  %854 = fadd fast float %852, %381
  %855 = fadd fast float %853, %382
  %856 = uitofp i32 %443 to float
  %857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %854, float %855, float %856, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = fadd fast float %473, %391
  %860 = fcmp fast olt float %859, %858
  br i1 %860, label %861, label %866, !dx.controlflow.hints !47

; <label>:861                                     ; preds = %828
  %862 = fadd fast float %858, %831
  %863 = fadd fast float %843, %829
  %864 = fadd fast float %845, %830
  %865 = fadd fast float %832, 1.000000e+00
  br label %866

; <label>:866                                     ; preds = %861, %828
  %867 = phi float [ %863, %861 ], [ %829, %828 ]
  %868 = phi float [ %864, %861 ], [ %830, %828 ]
  %869 = phi float [ %862, %861 ], [ %831, %828 ]
  %870 = phi float [ %865, %861 ], [ %832, %828 ]
  %871 = add nuw nsw i32 %833, 1
  %872 = icmp eq i32 %871, 8
  br i1 %872, label %873, label %828

; <label>:873                                     ; preds = %866
  %874 = fdiv fast float 1.000000e+00, %870
  %875 = fcmp fast oeq float %870, 0.000000e+00
  %876 = fmul fast float %874, %869
  %877 = select i1 %875, float -1.000000e+00, float %876
  %878 = fcmp fast olt float %877, 0.000000e+00
  br i1 %878, label %1165, label %879, !dx.controlflow.hints !48

; <label>:879                                     ; preds = %873
  %880 = fmul fast float %874, %868
  %881 = select i1 %875, float 0.000000e+00, float %880
  %882 = fmul fast float %874, %867
  %883 = select i1 %875, float 0.000000e+00, float %882
  %884 = fadd fast float %883, %470
  %885 = fadd fast float %881, %471
  br i1 %446, label %886, label %890, !dx.controlflow.hints !44

; <label>:886                                     ; preds = %879
  %887 = fcmp fast olt float %570, 0x3FE6666660000000
  %888 = select i1 %887, float 1.000000e+00, float 0.000000e+00
  %889 = select i1 %887, float 0.000000e+00, float 1.000000e+00
  br label %890

; <label>:890                                     ; preds = %886, %879
  %891 = phi float [ 0.000000e+00, %886 ], [ %573, %879 ]
  %892 = phi float [ %888, %886 ], [ %574, %879 ]
  %893 = phi float [ %889, %886 ], [ %575, %879 ]
  %894 = fmul fast float %892, %571
  %895 = fmul fast float %893, %570
  %896 = fsub fast float %894, %895
  %897 = fmul fast float %893, %569
  %898 = fmul fast float %891, %571
  %899 = fsub fast float %897, %898
  %900 = fmul fast float %891, %570
  %901 = fmul fast float %892, %569
  %902 = fsub fast float %900, %901
  %903 = call float @dx.op.dot3.f32(i32 55, float %896, float %899, float %902, float %896, float %899, float %902)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = call float @dx.op.unary.f32(i32 25, float %903)  ; Rsqrt(value)
  %905 = fmul fast float %904, %269
  %906 = fmul fast float %905, %896
  %907 = fmul fast float %905, %899
  %908 = fmul fast float %902, %269
  %909 = fmul fast float %908, %904
  %910 = fmul fast float %884, %421
  %911 = call float @dx.op.tertiary.f32(i32 46, float %885, float %427, float %910)  ; FMad(a,b,c)
  %912 = call float @dx.op.tertiary.f32(i32 46, float %877, float %433, float %911)  ; FMad(a,b,c)
  %913 = fadd fast float %912, %439
  %914 = fmul fast float %884, %422
  %915 = call float @dx.op.tertiary.f32(i32 46, float %885, float %428, float %914)  ; FMad(a,b,c)
  %916 = call float @dx.op.tertiary.f32(i32 46, float %877, float %434, float %915)  ; FMad(a,b,c)
  %917 = fadd fast float %916, %440
  %918 = fmul fast float %884, %423
  %919 = call float @dx.op.tertiary.f32(i32 46, float %885, float %429, float %918)  ; FMad(a,b,c)
  %920 = call float @dx.op.tertiary.f32(i32 46, float %877, float %435, float %919)  ; FMad(a,b,c)
  %921 = fadd fast float %920, %441
  %922 = fmul fast float %884, %424
  %923 = call float @dx.op.tertiary.f32(i32 46, float %885, float %430, float %922)  ; FMad(a,b,c)
  %924 = call float @dx.op.tertiary.f32(i32 46, float %877, float %436, float %923)  ; FMad(a,b,c)
  %925 = fadd fast float %924, %442
  %926 = fdiv fast float 1.000000e+00, %925
  %927 = fmul fast float %926, %913
  %928 = fmul fast float %926, %917
  %929 = fmul fast float %926, %921
  %930 = fsub fast float %272, %906
  %931 = fsub fast float %273, %907
  %932 = fsub fast float %274, %909
  %933 = fsub fast float %927, %930
  %934 = fsub fast float %928, %931
  %935 = fsub fast float %929, %932
  %936 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float %933, float %934, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = call float @dx.op.unary.f32(i32 25, float %936)  ; Rsqrt(value)
  %938 = fmul fast float %933, %937
  %939 = fmul fast float %934, %937
  %940 = fmul fast float %935, %937
  %941 = fsub fast float %451, %930
  %942 = fsub fast float %452, %931
  %943 = fsub fast float %453, %932
  %944 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %941, float %942, float %943)  ; Dot3(ax,ay,az,bx,by,bz)
  %945 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %938, float %939, float %940)  ; Dot3(ax,ay,az,bx,by,bz)
  %946 = fdiv fast float 1.000000e+00, %945
  %947 = fmul fast float %946, %944
  %948 = fmul fast float %947, %938
  %949 = fmul fast float %947, %939
  %950 = fmul fast float %947, %940
  %951 = fadd fast float %948, %930
  %952 = fadd fast float %949, %931
  %953 = fadd fast float %950, %932
  %954 = fadd fast float %906, %272
  %955 = fadd fast float %907, %273
  %956 = fadd fast float %909, %274
  %957 = fsub fast float %927, %954
  %958 = fsub fast float %928, %955
  %959 = fsub fast float %929, %956
  %960 = call float @dx.op.dot3.f32(i32 55, float %957, float %958, float %959, float %957, float %958, float %959)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = call float @dx.op.unary.f32(i32 25, float %960)  ; Rsqrt(value)
  %962 = fmul fast float %961, %957
  %963 = fmul fast float %961, %958
  %964 = fmul fast float %961, %959
  %965 = fsub fast float %451, %954
  %966 = fsub fast float %452, %955
  %967 = fsub fast float %453, %956
  %968 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %965, float %966, float %967)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %962, float %963, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = fdiv fast float 1.000000e+00, %969
  %971 = fmul fast float %970, %968
  %972 = fmul fast float %971, %962
  %973 = fmul fast float %971, %963
  %974 = fmul fast float %971, %964
  %975 = fadd fast float %972, %954
  %976 = fadd fast float %973, %955
  %977 = fadd fast float %974, %956
  %978 = fmul fast float %951, %397
  %979 = call float @dx.op.tertiary.f32(i32 46, float %952, float %403, float %978)  ; FMad(a,b,c)
  %980 = call float @dx.op.tertiary.f32(i32 46, float %953, float %409, float %979)  ; FMad(a,b,c)
  %981 = fadd fast float %980, %415
  %982 = fmul fast float %951, %398
  %983 = call float @dx.op.tertiary.f32(i32 46, float %952, float %404, float %982)  ; FMad(a,b,c)
  %984 = call float @dx.op.tertiary.f32(i32 46, float %953, float %410, float %983)  ; FMad(a,b,c)
  %985 = fadd fast float %984, %416
  %986 = fmul fast float %951, %400
  %987 = call float @dx.op.tertiary.f32(i32 46, float %952, float %406, float %986)  ; FMad(a,b,c)
  %988 = call float @dx.op.tertiary.f32(i32 46, float %953, float %412, float %987)  ; FMad(a,b,c)
  %989 = fadd fast float %988, %418
  %990 = fmul fast float %975, %397
  %991 = call float @dx.op.tertiary.f32(i32 46, float %976, float %403, float %990)  ; FMad(a,b,c)
  %992 = call float @dx.op.tertiary.f32(i32 46, float %977, float %409, float %991)  ; FMad(a,b,c)
  %993 = fadd fast float %992, %415
  %994 = fmul fast float %975, %398
  %995 = call float @dx.op.tertiary.f32(i32 46, float %976, float %404, float %994)  ; FMad(a,b,c)
  %996 = call float @dx.op.tertiary.f32(i32 46, float %977, float %410, float %995)  ; FMad(a,b,c)
  %997 = fadd fast float %996, %416
  %998 = fmul fast float %975, %400
  %999 = call float @dx.op.tertiary.f32(i32 46, float %976, float %406, float %998)  ; FMad(a,b,c)
  %1000 = call float @dx.op.tertiary.f32(i32 46, float %977, float %412, float %999)  ; FMad(a,b,c)
  %1001 = fadd fast float %1000, %418
  %1002 = fdiv fast float 1.000000e+00, %989
  %1003 = fmul fast float %1002, %981
  %1004 = fmul fast float %1002, %985
  %1005 = fdiv fast float 1.000000e+00, %1001
  %1006 = fmul fast float %1005, %993
  %1007 = fmul fast float %1005, %997
  %1008 = fsub fast float %1006, %1003
  %1009 = fsub fast float %1007, %1004
  %1010 = call float @dx.op.dot2.f32(i32 54, float %1008, float %1009, float %1008, float %1009)  ; Dot2(ax,ay,bx,by)
  %1011 = call float @dx.op.unary.f32(i32 25, float %1010)  ; Rsqrt(value)
  %1012 = fmul fast float %1008, %1011
  %1013 = fmul fast float %1009, %1011
  %1014 = fmul fast float %1008, %1008
  %1015 = fmul fast float %1009, %1009
  %1016 = fadd fast float %1014, %1015
  %1017 = call float @dx.op.unary.f32(i32 24, float %1016)  ; Sqrt(value)
  %1018 = fmul fast float %1017, 5.000000e-01
  br i1 %446, label %1111, label %1019, !dx.controlflow.hints !45

; <label>:1019                                    ; preds = %890
  %1020 = fsub fast float %272, %264
  %1021 = fsub fast float %273, %265
  %1022 = fsub fast float %274, %266
  %1023 = fsub fast float %927, %1020
  %1024 = fsub fast float %928, %1021
  %1025 = fsub fast float %929, %1022
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1024, float %1025, float %1023, float %1024, float %1025)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = call float @dx.op.unary.f32(i32 25, float %1026)  ; Rsqrt(value)
  %1028 = fmul fast float %1027, %1023
  %1029 = fmul fast float %1027, %1024
  %1030 = fmul fast float %1027, %1025
  %1031 = fsub fast float %451, %1020
  %1032 = fsub fast float %452, %1021
  %1033 = fsub fast float %453, %1022
  %1034 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %1031, float %1032, float %1033)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %1028, float %1029, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = fdiv fast float 1.000000e+00, %1035
  %1037 = fmul fast float %1036, %1034
  %1038 = fmul fast float %1037, %1028
  %1039 = fmul fast float %1037, %1029
  %1040 = fmul fast float %1037, %1030
  %1041 = fadd fast float %1038, %1020
  %1042 = fadd fast float %1039, %1021
  %1043 = fadd fast float %1040, %1022
  %1044 = fadd fast float %272, %264
  %1045 = fadd fast float %273, %265
  %1046 = fadd fast float %274, %266
  %1047 = fsub fast float %927, %1044
  %1048 = fsub fast float %928, %1045
  %1049 = fsub fast float %929, %1046
  %1050 = call float @dx.op.dot3.f32(i32 55, float %1047, float %1048, float %1049, float %1047, float %1048, float %1049)  ; Dot3(ax,ay,az,bx,by,bz)
  %1051 = call float @dx.op.unary.f32(i32 25, float %1050)  ; Rsqrt(value)
  %1052 = fmul fast float %1051, %1047
  %1053 = fmul fast float %1051, %1048
  %1054 = fmul fast float %1051, %1049
  %1055 = fsub fast float %451, %1044
  %1056 = fsub fast float %452, %1045
  %1057 = fsub fast float %453, %1046
  %1058 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %1055, float %1056, float %1057)  ; Dot3(ax,ay,az,bx,by,bz)
  %1059 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %1052, float %1053, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1060 = fdiv fast float 1.000000e+00, %1059
  %1061 = fmul fast float %1060, %1058
  %1062 = fmul fast float %1061, %1052
  %1063 = fmul fast float %1061, %1053
  %1064 = fmul fast float %1061, %1054
  %1065 = fadd fast float %1062, %1044
  %1066 = fadd fast float %1063, %1045
  %1067 = fadd fast float %1064, %1046
  %1068 = fmul fast float %1041, %397
  %1069 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %403, float %1068)  ; FMad(a,b,c)
  %1070 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %409, float %1069)  ; FMad(a,b,c)
  %1071 = fadd fast float %1070, %415
  %1072 = fmul fast float %1041, %398
  %1073 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %404, float %1072)  ; FMad(a,b,c)
  %1074 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %410, float %1073)  ; FMad(a,b,c)
  %1075 = fadd fast float %1074, %416
  %1076 = fmul fast float %1041, %400
  %1077 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %406, float %1076)  ; FMad(a,b,c)
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1043, float %412, float %1077)  ; FMad(a,b,c)
  %1079 = fadd fast float %1078, %418
  %1080 = fmul fast float %1065, %397
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %403, float %1080)  ; FMad(a,b,c)
  %1082 = call float @dx.op.tertiary.f32(i32 46, float %1067, float %409, float %1081)  ; FMad(a,b,c)
  %1083 = fadd fast float %1082, %415
  %1084 = fmul fast float %1065, %398
  %1085 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %404, float %1084)  ; FMad(a,b,c)
  %1086 = call float @dx.op.tertiary.f32(i32 46, float %1067, float %410, float %1085)  ; FMad(a,b,c)
  %1087 = fadd fast float %1086, %416
  %1088 = fmul fast float %1065, %400
  %1089 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %406, float %1088)  ; FMad(a,b,c)
  %1090 = call float @dx.op.tertiary.f32(i32 46, float %1067, float %412, float %1089)  ; FMad(a,b,c)
  %1091 = fadd fast float %1090, %418
  %1092 = fdiv fast float 1.000000e+00, %1079
  %1093 = fmul fast float %1092, %1071
  %1094 = fmul fast float %1092, %1075
  %1095 = fdiv fast float 1.000000e+00, %1091
  %1096 = fmul fast float %1095, %1083
  %1097 = fmul fast float %1095, %1087
  %1098 = fsub fast float %1096, %1093
  %1099 = fsub fast float %1097, %1094
  %1100 = call float @dx.op.dot2.f32(i32 54, float %1098, float %1099, float %1098, float %1099)  ; Dot2(ax,ay,bx,by)
  %1101 = call float @dx.op.unary.f32(i32 25, float %1100)  ; Rsqrt(value)
  %1102 = fmul fast float %1098, %1101
  %1103 = fmul fast float %1099, %1101
  %1104 = fmul fast float %1098, %1098
  %1105 = fmul fast float %1099, %1099
  %1106 = fadd fast float %1104, %1105
  %1107 = call float @dx.op.unary.f32(i32 24, float %1106)  ; Sqrt(value)
  %1108 = fmul fast float %1107, 5.000000e-01
  %1109 = fcmp fast olt float %1108, %1018
  br i1 %1109, label %1110, label %1111, !dx.controlflow.hints !46

; <label>:1110                                    ; preds = %1019
  br label %1111

; <label>:1111                                    ; preds = %1110, %1019, %890
  %1112 = phi float [ %1018, %890 ], [ %1108, %1110 ], [ %1018, %1019 ]
  %1113 = phi float [ %1018, %890 ], [ %1018, %1110 ], [ %1108, %1019 ]
  %1114 = phi float [ %1012, %890 ], [ %1012, %1110 ], [ %1102, %1019 ]
  %1115 = phi float [ %1013, %890 ], [ %1013, %1110 ], [ %1103, %1019 ]
  %1116 = fsub fast float %1113, %1112
  %1117 = fmul fast float %1114, %1114
  %1118 = fmul fast float %1117, %1116
  %1119 = fadd fast float %1118, %1112
  %1120 = fmul fast float %1114, %1116
  %1121 = fmul fast float %1120, %1115
  %1122 = fmul fast float %1115, %1115
  %1123 = fmul fast float %1122, %1116
  %1124 = fadd fast float %1123, %1112
  %1125 = fmul fast float %1119, %476
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %475, float %1121, float %1125)  ; FMad(a,b,c)
  %1127 = fmul fast float %1121, %476
  %1128 = call float @dx.op.tertiary.f32(i32 46, float %475, float %1124, float %1127)  ; FMad(a,b,c)
  %1129 = fmul fast float %1119, %477
  %1130 = call float @dx.op.tertiary.f32(i32 46, float %476, float %1121, float %1129)  ; FMad(a,b,c)
  %1131 = fmul fast float %1121, %477
  %1132 = call float @dx.op.tertiary.f32(i32 46, float %476, float %1124, float %1131)  ; FMad(a,b,c)
  br label %1133

; <label>:1133                                    ; preds = %1133, %1111
  %1134 = phi float [ 0.000000e+00, %1111 ], [ %1160, %1133 ]
  %1135 = phi i32 [ 0, %1111 ], [ %1161, %1133 ]
  %1136 = mul i32 %1135, 2
  %1137 = add i32 0, %1136
  %1138 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1137
  %1139 = load float, float* %1138, align 4
  %1140 = mul i32 %1135, 2
  %1141 = add i32 1, %1140
  %1142 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %1141
  %1143 = load float, float* %1142, align 4
  %1144 = fmul fast float %1139, %1126
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %1130, float %1144)  ; FMad(a,b,c)
  %1146 = fmul fast float %1139, %1128
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %1132, float %1146)  ; FMad(a,b,c)
  %1148 = fadd fast float %1145, %470
  %1149 = fadd fast float %1147, %471
  %1150 = fmul fast float %1148, %387
  %1151 = fmul fast float %1149, %387
  %1152 = call float @dx.op.binary.f32(i32 35, float %1150, float %383)  ; FMax(a,b)
  %1153 = call float @dx.op.binary.f32(i32 35, float %1151, float %383)  ; FMax(a,b)
  %1154 = call float @dx.op.binary.f32(i32 36, float %1152, float %384)  ; FMin(a,b)
  %1155 = call float @dx.op.binary.f32(i32 36, float %1153, float %384)  ; FMin(a,b)
  %1156 = fadd fast float %1154, %381
  %1157 = fadd fast float %1155, %382
  %1158 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %18, float %1156, float %1157, float %856, float undef, i32 0, i32 0, i32 undef, float %859)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = fadd fast float %1159, %1134
  %1161 = add nuw nsw i32 %1135, 1
  %1162 = icmp eq i32 %1161, 8
  br i1 %1162, label %1163, label %1133

; <label>:1163                                    ; preds = %1133
  %1164 = fmul fast float %1160, 1.250000e-01
  br label %1165

; <label>:1165                                    ; preds = %1163, %873, %522
  %1166 = phi float [ %549, %522 ], [ %1164, %1163 ], [ 1.000000e+00, %873 ]
  %1167 = fadd fast float %1166, -1.000000e+00
  %1168 = fmul fast float %1167, %360
  %1169 = fadd fast float %1168, 1.000000e+00
  %1170 = fmul fast float %1169, %372
  br label %1171

; <label>:1171                                    ; preds = %1165, %339
  %1172 = phi float [ %1170, %1165 ], [ %372, %339 ]
  %1173 = lshr i32 %197, 5
  %1174 = lshr i32 %198, 5
  %1175 = fcmp fast olt float %1172, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1176 = and i32 %24, 31
  %1177 = zext i1 %1175 to i32
  %1178 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %1177, i32 addrspace(3)* %1178, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1179 = icmp ult i32 %1176, 16
  br i1 %1179, label %1180, label %1186, !dx.controlflow.hints !49

; <label>:1180                                    ; preds = %1171
  %1181 = add i32 %24, 16
  %1182 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1181
  %1183 = load i32, i32 addrspace(3)* %1182, align 4, !tbaa !36
  %1184 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1185 = and i32 %1184, %1183
  store i32 %1185, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1186

; <label>:1186                                    ; preds = %1180, %1171
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1187 = icmp ult i32 %1176, 8
  br i1 %1187, label %1188, label %1194, !dx.controlflow.hints !50

; <label>:1188                                    ; preds = %1186
  %1189 = add i32 %24, 8
  %1190 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1189
  %1191 = load i32, i32 addrspace(3)* %1190, align 4, !tbaa !36
  %1192 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1193 = and i32 %1192, %1191
  store i32 %1193, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1194

; <label>:1194                                    ; preds = %1188, %1186
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1195 = icmp ult i32 %1176, 4
  br i1 %1195, label %1196, label %1202, !dx.controlflow.hints !51

; <label>:1196                                    ; preds = %1194
  %1197 = add i32 %24, 4
  %1198 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1197
  %1199 = load i32, i32 addrspace(3)* %1198, align 4, !tbaa !36
  %1200 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1201 = and i32 %1200, %1199
  store i32 %1201, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1202

; <label>:1202                                    ; preds = %1196, %1194
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1203 = icmp ult i32 %1176, 2
  br i1 %1203, label %1204, label %1210, !dx.controlflow.hints !52

; <label>:1204                                    ; preds = %1202
  %1205 = add i32 %24, 2
  %1206 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1205
  %1207 = load i32, i32 addrspace(3)* %1206, align 4, !tbaa !36
  %1208 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1209 = and i32 %1208, %1207
  store i32 %1209, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1210

; <label>:1210                                    ; preds = %1204, %1202
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1211 = icmp eq i32 %1176, 0
  br i1 %1211, label %1212, label %1218, !dx.controlflow.hints !53

; <label>:1212                                    ; preds = %1210
  %1213 = add i32 %24, 1
  %1214 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1213
  %1215 = load i32, i32 addrspace(3)* %1214, align 4, !tbaa !36
  %1216 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1217 = and i32 %1216, %1215
  store i32 %1217, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1218

; <label>:1218                                    ; preds = %1212, %1210
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1219 = and i32 %24, -64
  %1220 = or i32 %1219, 32
  %1221 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1219
  %1222 = load i32, i32 addrspace(3)* %1221, align 4, !tbaa !36
  %1223 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1220
  %1224 = load i32, i32 addrspace(3)* %1223, align 4, !tbaa !36
  %1225 = and i32 %1224, %1222
  %1226 = icmp ne i32 %1225, 0
  %1227 = fcmp fast ogt float %1172, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1228 = zext i1 %1227 to i32
  store i32 %1228, i32 addrspace(3)* %1178, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1179, label %1229, label %1235, !dx.controlflow.hints !49

; <label>:1229                                    ; preds = %1218
  %1230 = add i32 %24, 16
  %1231 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1230
  %1232 = load i32, i32 addrspace(3)* %1231, align 4, !tbaa !36
  %1233 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1234 = and i32 %1233, %1232
  store i32 %1234, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1235

; <label>:1235                                    ; preds = %1229, %1218
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1187, label %1236, label %1242, !dx.controlflow.hints !50

; <label>:1236                                    ; preds = %1235
  %1237 = add i32 %24, 8
  %1238 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1237
  %1239 = load i32, i32 addrspace(3)* %1238, align 4, !tbaa !36
  %1240 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1241 = and i32 %1240, %1239
  store i32 %1241, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1242

; <label>:1242                                    ; preds = %1236, %1235
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1195, label %1243, label %1249, !dx.controlflow.hints !51

; <label>:1243                                    ; preds = %1242
  %1244 = add i32 %24, 4
  %1245 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1244
  %1246 = load i32, i32 addrspace(3)* %1245, align 4, !tbaa !36
  %1247 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1248 = and i32 %1247, %1246
  store i32 %1248, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1249

; <label>:1249                                    ; preds = %1243, %1242
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1203, label %1250, label %1256, !dx.controlflow.hints !52

; <label>:1250                                    ; preds = %1249
  %1251 = add i32 %24, 2
  %1252 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1251
  %1253 = load i32, i32 addrspace(3)* %1252, align 4, !tbaa !36
  %1254 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1255 = and i32 %1254, %1253
  store i32 %1255, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1256

; <label>:1256                                    ; preds = %1250, %1249
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1211, label %1257, label %1263, !dx.controlflow.hints !53

; <label>:1257                                    ; preds = %1256
  %1258 = add i32 %24, 1
  %1259 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1258
  %1260 = load i32, i32 addrspace(3)* %1259, align 4, !tbaa !36
  %1261 = load i32, i32 addrspace(3)* %1178, align 4, !tbaa !36
  %1262 = and i32 %1261, %1260
  store i32 %1262, i32 addrspace(3)* %1178, align 4, !tbaa !36
  br label %1263

; <label>:1263                                    ; preds = %1257, %1256
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1264 = load i32, i32 addrspace(3)* %1221, align 4, !tbaa !36
  %1265 = load i32, i32 addrspace(3)* %1223, align 4, !tbaa !36
  %1266 = and i32 %1265, %1264
  %1267 = or i32 %1266, %1225
  %1268 = icmp eq i32 %1267, 0
  %1269 = lshr i32 %198, 1
  %1270 = and i32 %1269, 8
  %1271 = lshr i32 %197, 2
  %1272 = and i32 %1271, 4
  %1273 = or i32 %1272, %37
  %1274 = or i32 %1273, %1270
  %1275 = icmp eq i32 %24, 0
  br i1 %1275, label %1276, label %1318, !dx.controlflow.hints !54

; <label>:1276                                    ; preds = %1263
  %1277 = icmp ne i32 %1266, 0
  %1278 = shl i32 1, %1274
  %1279 = select i1 %1277, i32 %1278, i32 0
  %1280 = shl i32 65536, %1274
  %1281 = select i1 %1226, i32 %1280, i32 0
  %1282 = or i32 %1279, %1281
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1286, label %1284, !dx.controlflow.hints !55

; <label>:1284                                    ; preds = %1276
  %1285 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %1173, i32 %1174, i32 %249, i32 %1282)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1286

; <label>:1286                                    ; preds = %1284, %1276
  br i1 %1268, label %1287, label %1316

; <label>:1287                                    ; preds = %1286
  br label %1288

; <label>:1288                                    ; preds = %1313, %1287
  %1289 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %3, i32 %1173, i32 %1174, i32 %249, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1290 = and i32 %1289, 3
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1292, label %1313, !dx.controlflow.hints !56

; <label>:1292                                    ; preds = %1288
  %1293 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.i32 %1294, 3
  %1296 = call i32 @dx.op.binary.i32(i32 40, i32 %1295, i32 %1293)  ; UMin(a,b)
  %1297 = extractvalue %dx.types.CBufRet.i32 %1294, 2
  %1298 = udiv i32 %1296, %1297
  %1299 = urem i32 %1296, %1297
  %1300 = extractvalue %dx.types.CBufRet.i32 %1294, 1
  %1301 = urem i32 %1299, %1300
  %1302 = udiv i32 %1299, %1300
  %1303 = shl i32 %1301, 6
  %1304 = and i32 %1303, 32704
  %1305 = shl i32 %1302, 15
  %1306 = and i32 %1305, 8355840
  %1307 = shl i32 %1298, 23
  %1308 = and i32 %1307, 2139095040
  %1309 = or i32 %1308, %1304
  %1310 = or i32 %1309, %1306
  %1311 = or i32 %1310, 3
  %1312 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 8, i32 %1173, i32 %1174, i32 %249, i32 %1311)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1316

; <label>:1313                                    ; preds = %1288
  %1314 = icmp eq i32 %1290, 3
  br i1 %1314, label %1315, label %1288, !dx.controlflow.hints !57

; <label>:1315                                    ; preds = %1313
  br label %1316

; <label>:1316                                    ; preds = %1315, %1292, %1286
  %1317 = phi i32 [ 0, %1286 ], [ %1311, %1292 ], [ %1289, %1315 ]
  store i32 %1317, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %1318

; <label>:1318                                    ; preds = %1316, %1263
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1319 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br i1 %1268, label %1320, label %1341, !dx.controlflow.hints !58

; <label>:1320                                    ; preds = %1318
  %1321 = lshr i32 %197, 1
  %1322 = and i32 %1321, 15
  %1323 = and i32 %1269, 15
  %1324 = and i32 %197, 1
  %1325 = shl i32 %198, 1
  %1326 = and i32 %1325, 2
  %1327 = or i32 %1326, %1324
  %1328 = lshr i32 %1319, 2
  %1329 = and i32 %1328, 8176
  %1330 = lshr i32 %1319, 11
  %1331 = and i32 %1330, 4080
  %1332 = or i32 %1329, %1322
  %1333 = or i32 %1331, %1323
  %1334 = lshr i32 %1319, 21
  %1335 = and i32 %1334, 1020
  %1336 = or i32 %1327, %1335
  %1337 = fmul fast float %1172, 2.550000e+02
  %1338 = fadd fast float %1337, %192
  %1339 = call float @dx.op.unary.f32(i32 27, float %1338)  ; Round_ni(value)
  %1340 = fmul fast float %1339, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1332, i32 %1333, i32 %1336, float %1340, float %1340, float %1340, float %1340, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1341

; <label>:1341                                    ; preds = %1320, %1318
  %1342 = icmp eq i32 %247, %251
  br i1 %1342, label %1343, label %246, !llvm.loop !59

; <label>:1343                                    ; preds = %1341
  br label %1344

; <label>:1344                                    ; preds = %1343, %220
  %1345 = add i32 %221, 1
  %1346 = icmp ugt i32 %1345, %217
  br i1 %1346, label %1347, label %220

; <label>:1347                                    ; preds = %1344
  br label %1348

; <label>:1348                                    ; preds = %1347, %196, %58
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
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}

