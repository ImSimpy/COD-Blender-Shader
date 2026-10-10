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
; shader hash: ae4ffb52588224282aaae45cfa23d5d0
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
%struct.SamplerState = type { i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?gsPackedTileData@@3IA" = external addrspace(3) global i32, align 4
@"\01?gsLightIterator@@3IA" = external addrspace(3) global i32, align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

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
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %48 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %45, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
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
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 0
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %1063, label %256, !dx.controlflow.hints !40

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
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 16
  %274 = and i32 %272, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %273 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %274 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %279 = lshr i32 %276, 5
  %280 = lshr i32 %278, 5
  %281 = call i32 @dx.op.binary.i32(i32 40, i32 %280, i32 %265)  ; UMin(a,b)
  %282 = icmp ugt i32 %279, %281
  br i1 %282, label %1063, label %283

; <label>:283                                     ; preds = %256
  br label %284

; <label>:284                                     ; preds = %1053, %283
  %285 = phi i32 [ %1060, %1053 ], [ %279, %283 ]
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 0
  %288 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %287, i32 %285)  ; UMad(a,b,c)
  %289 = shl i32 %288, 2
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = shl i32 %285, 5
  %293 = sub nsw i32 %273, %292
  %294 = call i32 @dx.op.binary.i32(i32 37, i32 %293, i32 0)  ; IMax(a,b)
  %295 = call i32 @dx.op.binary.i32(i32 38, i32 %294, i32 31)  ; IMin(a,b)
  %296 = sub nsw i32 1, %273
  %297 = add nsw i32 %296, %274
  %298 = call i32 @dx.op.binary.i32(i32 37, i32 %297, i32 0)  ; IMax(a,b)
  %299 = call i32 @dx.op.binary.i32(i32 38, i32 %298, i32 32)  ; IMin(a,b)
  %300 = and i32 %299, 31
  %301 = shl i32 -1, %300
  %302 = xor i32 %301, -1
  %303 = and i32 %295, 31
  %304 = shl i32 %302, %303
  %305 = icmp eq i32 %299, 32
  %306 = select i1 %305, i32 -1, i32 %304
  %307 = and i32 %306, %291
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %308 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %307 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %309 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %310 = icmp eq i32 %24, 0
  br i1 %310, label %311, label %312, !dx.controlflow.hints !41

; <label>:311                                     ; preds = %284
  store i32 %309, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  br label %312

; <label>:312                                     ; preds = %311, %284
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %313 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %1053, label %315

; <label>:315                                     ; preds = %312
  br label %316

; <label>:316                                     ; preds = %1050, %315
  %317 = phi i32 [ %882, %1050 ], [ 0, %315 ]
  %318 = phi i32 [ %323, %1050 ], [ %313, %315 ]
  %319 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %318)  ; FirstbitLo(value)
  %320 = add i32 %319, %292
  %321 = and i32 %319, 31
  %322 = shl i32 1, %321
  %323 = xor i32 %322, %318
  %324 = mul i32 %320, 112
  %325 = add i32 %324, 16
  %326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = extractvalue %dx.types.ResRet.f32 %326, 1
  %329 = extractvalue %dx.types.ResRet.f32 %326, 2
  %330 = add i32 %324, 28
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = add i32 %324, 32
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = add i32 %324, 44
  %339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = add i32 %324, 48
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = extractvalue %dx.types.ResRet.f32 %342, 3
  %347 = add i32 %324, 64
  %348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = extractvalue %dx.types.ResRet.f32 %348, 2
  %352 = extractvalue %dx.types.ResRet.f32 %348, 3
  %353 = add i32 %324, 92
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = uitofp i32 %356 to float
  %358 = lshr i32 %355, 16
  %359 = uitofp i32 %358 to float
  %360 = and i32 %332, 65535
  %361 = and i32 %332, 50331648
  %362 = icmp eq i32 %361, 33554432
  %363 = call float @dx.op.dot3.f32(i32 55, float %335, float %336, float %337, float %335, float %336, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = fsub fast float %133, %343
  %365 = fsub fast float %134, %344
  %366 = fsub fast float %135, %345
  %367 = call float @dx.op.dot3.f32(i32 55, float %364, float %365, float %366, float %335, float %336, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %368 = fdiv fast float %367, %363
  %369 = call float @dx.op.binary.f32(i32 35, float %368, float -1.000000e+00)  ; FMax(a,b)
  %370 = call float @dx.op.binary.f32(i32 36, float %369, float 1.000000e+00)  ; FMin(a,b)
  %371 = fmul fast float %370, %335
  %372 = fmul fast float %370, %336
  %373 = fmul fast float %370, %337
  %374 = fadd fast float %371, %343
  %375 = fadd fast float %372, %344
  %376 = fadd fast float %373, %345
  %377 = fsub fast float %374, %133
  %378 = fsub fast float %375, %134
  %379 = fsub fast float %376, %135
  %380 = call float @dx.op.dot3.f32(i32 55, float %377, float %378, float %379, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %382 = fdiv fast float 1.000000e+00, %381
  %383 = fmul fast float %377, %382
  %384 = fmul fast float %378, %382
  %385 = fmul fast float %379, %382
  br i1 %362, label %386, label %410, !dx.controlflow.hints !42

; <label>:386                                     ; preds = %316
  %387 = fmul fast float %351, %327
  %388 = fmul fast float %351, %328
  %389 = fmul fast float %351, %329
  %390 = fsub fast float %387, %133
  %391 = fadd fast float %390, %374
  %392 = fsub fast float %388, %134
  %393 = fadd fast float %392, %375
  %394 = fsub fast float %389, %135
  %395 = fadd fast float %394, %376
  %396 = call float @dx.op.dot3.f32(i32 55, float %391, float %393, float %395, float %391, float %393, float %395)  ; Dot3(ax,ay,az,bx,by,bz)
  %397 = call float @dx.op.unary.f32(i32 25, float %396)  ; Rsqrt(value)
  %398 = fmul fast float %397, %391
  %399 = fmul fast float %397, %393
  %400 = fmul fast float %397, %395
  %401 = fsub fast float %133, %374
  %402 = fsub fast float %134, %375
  %403 = fsub fast float %135, %376
  %404 = fsub fast float -0.000000e+00, %401
  %405 = fsub fast float -0.000000e+00, %402
  %406 = fsub fast float -0.000000e+00, %403
  %407 = call float @dx.op.dot3.f32(i32 55, float %404, float %405, float %406, float %327, float %328, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %408 = fcmp fast ogt float %407, 0.000000e+00
  %409 = uitofp i1 %408 to float
  br label %410

; <label>:410                                     ; preds = %386, %316
  %411 = phi float [ %409, %386 ], [ 1.000000e+00, %316 ]
  %412 = phi float [ %398, %386 ], [ %383, %316 ]
  %413 = phi float [ %399, %386 ], [ %384, %316 ]
  %414 = phi float [ %400, %386 ], [ %385, %316 ]
  %415 = call float @dx.op.dot3.f32(i32 55, float %327, float %328, float %329, float %412, float %413, float %414)  ; Dot3(ax,ay,az,bx,by,bz)
  %416 = fmul fast float %415, %415
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fsub fast float 1.000000e+00, %417
  %419 = fmul fast float %418, 5.000000e-01
  %420 = fcmp fast ogt float %415, 0.000000e+00
  %421 = fsub fast float 1.000000e+00, %419
  %422 = select i1 %420, float %419, float %421
  %423 = fmul fast float %422, %359
  %424 = fadd fast float %423, %357
  %425 = fmul fast float %424, 0x3EF0001000000000
  %426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %425, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = fmul fast float %415, %349
  %429 = fadd fast float %428, %350
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = select i1 %362, float 1.000000e+00, float %430
  %432 = select i1 %362, float %430, float 1.000000e+00
  %433 = fmul fast float %381, %346
  %434 = fsub fast float 1.000000e+00, %433
  %435 = fmul fast float %434, %352
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, %432
  %438 = fmul fast float %437, 2.000000e+00
  %439 = fsub fast float 3.000000e+00, %438
  %440 = fmul fast float %427, %411
  %441 = fmul fast float %437, %437
  %442 = fmul fast float %441, %440
  %443 = fmul fast float %442, %439
  %444 = icmp ne i32 %360, 255
  %445 = call float @dx.op.binary.f32(i32 36, float %443, float %443)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float %443, float %445)  ; FMin(a,b)
  %447 = fcmp fast ogt float %446, 0.000000e+00
  %448 = and i1 %444, %447
  br i1 %448, label %449, label %593, !dx.controlflow.hints !43

; <label>:449                                     ; preds = %410
  %450 = mul nuw nsw i32 %360, 176
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = add nuw nsw i32 %450, 16
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = add nuw nsw i32 %450, 32
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = add nuw nsw i32 %450, 48
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add nuw nsw i32 %450, 64
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = add nuw nsw i32 %450, 80
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = add nuw nsw i32 %450, 96
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = bitcast float %459 to i32
  %490 = fmul fast float %464, %179
  %491 = fmul fast float %464, %180
  %492 = fmul fast float %464, %181
  %493 = fadd fast float %490, %133
  %494 = fadd fast float %491, %134
  %495 = fadd fast float %492, %135
  %496 = fmul fast float %493, %467
  %497 = call float @dx.op.tertiary.f32(i32 46, float %494, float %473, float %496)  ; FMad(a,b,c)
  %498 = call float @dx.op.tertiary.f32(i32 46, float %495, float %479, float %497)  ; FMad(a,b,c)
  %499 = fadd fast float %498, %485
  %500 = fmul fast float %493, %468
  %501 = call float @dx.op.tertiary.f32(i32 46, float %494, float %474, float %500)  ; FMad(a,b,c)
  %502 = call float @dx.op.tertiary.f32(i32 46, float %495, float %480, float %501)  ; FMad(a,b,c)
  %503 = fadd fast float %502, %486
  %504 = fmul fast float %493, %469
  %505 = call float @dx.op.tertiary.f32(i32 46, float %494, float %475, float %504)  ; FMad(a,b,c)
  %506 = call float @dx.op.tertiary.f32(i32 46, float %495, float %481, float %505)  ; FMad(a,b,c)
  %507 = fadd fast float %506, %487
  %508 = fmul fast float %493, %470
  %509 = call float @dx.op.tertiary.f32(i32 46, float %494, float %476, float %508)  ; FMad(a,b,c)
  %510 = call float @dx.op.tertiary.f32(i32 46, float %495, float %482, float %509)  ; FMad(a,b,c)
  %511 = fadd fast float %510, %488
  %512 = fdiv fast float %499, %511
  %513 = fdiv fast float %503, %511
  %514 = fdiv fast float %507, %511
  %515 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %514)  ; FMax(a,b)
  %516 = fmul fast float %251, 0x401921FB60000000
  %517 = call float @dx.op.unary.f32(i32 13, float %516)  ; Sin(value)
  %518 = call float @dx.op.unary.f32(i32 12, float %516)  ; Cos(value)
  %519 = fmul fast float %518, %463
  %520 = call float @dx.op.tertiary.f32(i32 46, float %517, float %463, float 0.000000e+00)  ; FMad(a,b,c)
  %521 = fmul fast float %463, %517
  %522 = fsub fast float -0.000000e+00, %521
  %523 = call float @dx.op.tertiary.f32(i32 46, float %518, float %463, float 0.000000e+00)  ; FMad(a,b,c)
  br label %524

; <label>:524                                     ; preds = %524, %449
  %525 = phi float [ 0.000000e+00, %449 ], [ %557, %524 ]
  %526 = phi float [ 0.000000e+00, %449 ], [ %559, %524 ]
  %527 = phi i32 [ 0, %449 ], [ %560, %524 ]
  %528 = mul i32 %527, 2
  %529 = add i32 0, %528
  %530 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %529
  %531 = load float, float* %530, align 4
  %532 = mul i32 %527, 2
  %533 = add i32 1, %532
  %534 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %533
  %535 = load float, float* %534, align 4
  %536 = fmul fast float %519, %531
  %537 = call float @dx.op.tertiary.f32(i32 46, float %535, float %522, float %536)  ; FMad(a,b,c)
  %538 = fmul fast float %531, %520
  %539 = call float @dx.op.tertiary.f32(i32 46, float %535, float %523, float %538)  ; FMad(a,b,c)
  %540 = fadd fast float %537, %512
  %541 = fadd fast float %539, %513
  %542 = fmul fast float %540, %458
  %543 = fmul fast float %541, %458
  %544 = call float @dx.op.binary.f32(i32 35, float %542, float %454)  ; FMax(a,b)
  %545 = call float @dx.op.binary.f32(i32 35, float %543, float %454)  ; FMax(a,b)
  %546 = call float @dx.op.binary.f32(i32 36, float %544, float %455)  ; FMin(a,b)
  %547 = call float @dx.op.binary.f32(i32 36, float %545, float %455)  ; FMin(a,b)
  %548 = fadd fast float %546, %452
  %549 = fadd fast float %547, %453
  %550 = uitofp i32 %489 to float
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %548, float %549, float %550, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = fsub fast float %552, %515
  %554 = fsub fast float %553, %462
  %555 = fcmp fast ogt float %554, 0.000000e+00
  %556 = select i1 %555, float 1.000000e+00, float 0.000000e+00
  %557 = fadd fast float %556, %525
  %558 = select i1 %555, float %554, float 0.000000e+00
  %559 = fadd fast float %558, %526
  %560 = add nuw nsw i32 %527, 1
  %561 = icmp eq i32 %560, 8
  br i1 %561, label %562, label %524

; <label>:562                                     ; preds = %524
  %563 = fdiv fast float 1.000000e+00, %557
  %564 = fmul fast float %563, %559
  %565 = fdiv fast float 1.000000e+00, %515
  %566 = fmul fast float %564, %565
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = call float @dx.op.binary.f32(i32 35, float %567, float 0.000000e+00)  ; FMax(a,b)
  %569 = fmul fast float %557, 1.250000e-01
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %570, 2.000000e+00
  %572 = fadd fast float %571, -1.000000e+00
  %573 = fcmp fast ogt float %572, 0.000000e+00
  %574 = fcmp fast olt float %572, 0.000000e+00
  %575 = zext i1 %573 to i32
  %576 = zext i1 %574 to i32
  %577 = sub nsw i32 %575, %576
  %578 = sitofp i32 %577 to float
  %579 = fmul fast float %578, %572
  %580 = fsub fast float 1.000000e+00, %579
  %581 = fmul fast float %580, %580
  %582 = fmul fast float %581, %580
  %583 = fsub fast float %580, %582
  %584 = fmul fast float %583, %568
  %585 = fsub fast float 1.000000e+00, %582
  %586 = fsub fast float %585, %584
  %587 = fmul fast float %578, 5.000000e-01
  %588 = fmul fast float %587, %586
  %589 = fsub fast float -5.000000e-01, %588
  %590 = fmul fast float %589, %431
  %591 = fadd fast float %590, 1.000000e+00
  %592 = fmul fast float %591, %443
  br label %593

; <label>:593                                     ; preds = %562, %410
  %594 = phi float [ %592, %562 ], [ %443, %410 ]
  %595 = call float @dx.op.binary.f32(i32 36, float %594, float %594)  ; FMin(a,b)
  %596 = call float @dx.op.binary.f32(i32 36, float %594, float %595)  ; FMin(a,b)
  %597 = fcmp fast ogt float %596, 0.000000e+00
  %598 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %383, float %384, float %385)  ; Dot3(ax,ay,az,bx,by,bz)
  %599 = fcmp fast ogt float %598, 0.000000e+00
  %600 = and i1 %597, %599
  br i1 %600, label %601, label %870, !dx.controlflow.hints !44

; <label>:601                                     ; preds = %593
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 1
  %606 = select i1 %71, float %603, float %605
  %607 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %608 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %609 = select i1 %71, float %607, float %608
  %610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.i32 %610, 0
  %612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.i32 %612, 0
  %614 = select i1 %71, i32 %611, i32 %613
  %615 = fcmp fast olt float %606, 5.000000e-01
  %616 = icmp eq i32 %614, 0
  %617 = or i1 %615, %616
  br i1 %617, label %865, label %618, !dx.controlflow.hints !45

; <label>:618                                     ; preds = %601
  %619 = fsub fast float %343, %133
  %620 = fsub fast float %344, %134
  %621 = fsub fast float %345, %135
  %622 = fmul fast float %619, %619
  %623 = fmul fast float %620, %620
  %624 = fadd fast float %622, %623
  %625 = fmul fast float %621, %621
  %626 = fadd fast float %624, %625
  %627 = call float @dx.op.unary.f32(i32 24, float %626)  ; Sqrt(value)
  %628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.i32 %628, 0
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %606, %340
  %632 = fdiv fast float %631, %627
  %633 = call float @dx.op.binary.f32(i32 36, float %632, float 1.000000e+01)  ; FMin(a,b)
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %638 = extractvalue %dx.types.CBufRet.f32 %634, 3
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %642 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %643 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %647 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %648 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %651 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %652 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %653 = extractvalue %dx.types.CBufRet.f32 %649, 3
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %656 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %657 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %658 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %661 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %662 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %663 = extractvalue %dx.types.CBufRet.f32 %659, 3
  %664 = select i1 %71, float %635, float %650
  %665 = select i1 %71, float %640, float %655
  %666 = select i1 %71, float %645, float %660
  %667 = select i1 %71, float %636, float %651
  %668 = select i1 %71, float %641, float %656
  %669 = select i1 %71, float %646, float %661
  %670 = select i1 %71, float %637, float %652
  %671 = select i1 %71, float %642, float %657
  %672 = select i1 %71, float %647, float %662
  %673 = select i1 %71, float %638, float %653
  %674 = select i1 %71, float %643, float %658
  %675 = select i1 %71, float %648, float %663
  %676 = fmul fast float %252, 0x401061CAC0000000
  %677 = fmul fast float %252, 0x4023E1D7E0000000
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %681 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %682 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %683 = fsub fast float -0.000000e+00, %383
  %684 = fmul fast float %385, %683
  %685 = fmul fast float %383, %683
  %686 = fmul fast float %384, %384
  %687 = fsub fast float %685, %686
  %688 = fdiv fast float 1.000000e+00, %78
  %689 = fmul fast float %681, %67
  %690 = fmul fast float %682, %68
  %691 = fmul fast float %606, %383
  %692 = fmul fast float %606, %385
  %693 = fadd fast float %691, %133
  %694 = fadd fast float %692, %135
  %695 = fadd fast float %677, 5.000000e-01
  %696 = call float @dx.op.unary.f32(i32 22, float %695)  ; Frc(value)
  %697 = bitcast float %696 to i32
  %698 = ashr i32 %697, 1
  %699 = add nsw i32 %698, 532487669
  %700 = bitcast i32 %699 to float
  %701 = fmul fast float %700, %633
  %702 = fadd fast float %676, 5.000000e-01
  %703 = call float @dx.op.unary.f32(i32 22, float %702)  ; Frc(value)
  %704 = fmul fast float %703, 0x401921FB60000000
  %705 = call float @dx.op.unary.f32(i32 12, float %704)  ; Cos(value)
  %706 = fmul fast float %705, %705
  %707 = fsub fast float 1.000000e+00, %706
  %708 = bitcast float %707 to i32
  %709 = ashr i32 %708, 1
  %710 = add nsw i32 %709, 532487669
  %711 = bitcast i32 %710 to float
  %712 = fmul fast float %701, %705
  %713 = fmul fast float %712, %384
  %714 = fmul fast float %712, %683
  %715 = fadd fast float %693, %713
  %716 = fmul fast float %711, %701
  %717 = fmul fast float %684, %716
  %718 = fmul fast float %716, %385
  %719 = fmul fast float %716, %687
  %720 = fsub fast float %715, %717
  %721 = fadd fast float %718, %606
  %722 = fmul fast float %721, %384
  %723 = fadd fast float %714, %134
  %724 = fadd fast float %723, %722
  %725 = fadd fast float %694, %719
  %726 = fmul fast float %720, %664
  %727 = call float @dx.op.tertiary.f32(i32 46, float %724, float %667, float %726)  ; FMad(a,b,c)
  %728 = call float @dx.op.tertiary.f32(i32 46, float %725, float %670, float %727)  ; FMad(a,b,c)
  %729 = fadd fast float %728, %673
  %730 = fmul fast float %720, %665
  %731 = call float @dx.op.tertiary.f32(i32 46, float %724, float %668, float %730)  ; FMad(a,b,c)
  %732 = call float @dx.op.tertiary.f32(i32 46, float %725, float %671, float %731)  ; FMad(a,b,c)
  %733 = fadd fast float %732, %674
  %734 = fmul fast float %720, %666
  %735 = call float @dx.op.tertiary.f32(i32 46, float %724, float %669, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %725, float %672, float %735)  ; FMad(a,b,c)
  %737 = fadd fast float %736, %675
  %738 = fdiv fast float 1.000000e+00, %737
  %739 = fmul fast float %729, 5.000000e-01
  %740 = fmul fast float %733, -5.000000e-01
  %741 = fmul fast float %739, %738
  %742 = fmul fast float %740, %738
  %743 = fsub fast float 5.000000e-01, %689
  %744 = fadd fast float %743, %741
  %745 = fsub fast float 5.000000e-01, %690
  %746 = fadd fast float %745, %742
  %747 = fsub fast float %738, %688
  %748 = call float @dx.op.dot2.f32(i32 54, float %744, float %746, float %744, float %746)  ; Dot2(ax,ay,bx,by)
  %749 = call float @dx.op.binary.f32(i32 35, float %748, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %750 = call float @dx.op.dot2.f32(i32 54, float %679, float %680, float %679, float %680)  ; Dot2(ax,ay,bx,by)
  %751 = fmul fast float %750, %749
  %752 = call float @dx.op.unary.f32(i32 25, float %751)  ; Rsqrt(value)
  %753 = fmul fast float %752, %744
  %754 = fmul fast float %752, %746
  %755 = fadd fast float %753, %689
  %756 = fadd fast float %754, %690
  %757 = fmul fast float %744, %679
  %758 = fmul fast float %746, %680
  %759 = fmul fast float %757, %757
  %760 = fmul fast float %758, %758
  %761 = fadd fast float %759, %760
  %762 = call float @dx.op.unary.f32(i32 24, float %761)  ; Sqrt(value)
  %763 = fdiv fast float 1.000000e+00, %762
  %764 = fmul fast float %762, 3.906250e-03
  %765 = fmul fast float %238, 0x3F70624DE0000000
  %766 = fadd fast float %765, 0x3F70624DE0000000
  %767 = icmp sgt i32 %614, -1
  br i1 %767, label %768, label %830

; <label>:768                                     ; preds = %618
  br label %769

; <label>:769                                     ; preds = %826, %768
  %770 = phi float [ %801, %826 ], [ %78, %768 ]
  %771 = phi float [ %788, %826 ], [ %78, %768 ]
  %772 = phi float [ %771, %826 ], [ %78, %768 ]
  %773 = phi i32 [ %827, %826 ], [ 0, %768 ]
  %774 = sitofp i32 %773 to float
  %775 = fadd fast float %252, 5.000000e-01
  %776 = call float @dx.op.unary.f32(i32 22, float %775)  ; Frc(value)
  %777 = fadd fast float %774, %776
  %778 = sitofp i32 %614 to float
  %779 = fdiv fast float %777, %778
  %780 = fmul fast float %779, %779
  %781 = call float @dx.op.binary.f32(i32 36, float %780, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %782 = fmul fast float %781, %744
  %783 = fmul fast float %781, %746
  %784 = fmul fast float %781, %747
  %785 = fadd fast float %782, %755
  %786 = fadd fast float %783, %756
  %787 = fadd fast float %784, %688
  %788 = fdiv fast float 1.000000e+00, %787
  %789 = icmp ne i32 %629, 0
  %790 = fmul fast float %764, %781
  %791 = call float @dx.op.binary.f32(i32 36, float %790, float %630)  ; FMin(a,b)
  %792 = select i1 %789, float %791, float 0.000000e+00
  %793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %785, float %786, float undef, float undef, i32 0, i32 0, i32 undef, float %792)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = fcmp fast ogt float %794, -1.000000e+00
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 1
  %798 = select i1 %795, float %797, float 1.000000e+00
  %799 = fadd fast float %794, 1.000000e+00
  %800 = fmul fast float %798, %799
  %801 = call float @dx.op.unary.f32(i32 6, float %800)  ; FAbs(value)
  %802 = fmul fast float %801, %766
  %803 = fsub fast float %788, %801
  %804 = fsub fast float %803, %802
  %805 = fcmp fast ogt float %804, 0.000000e+00
  %806 = fcmp fast ogt float %609, 0.000000e+00
  br i1 %806, label %807, label %810, !dx.controlflow.hints !46

; <label>:807                                     ; preds = %769
  %808 = fsub fast float %788, %772
  %809 = call float @dx.op.binary.f32(i32 35, float %808, float %609)  ; FMax(a,b)
  br label %810

; <label>:810                                     ; preds = %807, %769
  %811 = phi float [ %809, %807 ], [ %606, %769 ]
  %812 = fcmp fast olt float %804, %811
  %813 = fcmp uge float %794, -1.000000e+00
  %814 = or i1 %71, %813
  %815 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %816 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %817 = fcmp fast oeq float %785, %815
  %818 = fcmp fast oeq float %786, %816
  %819 = and i1 %817, %818
  %820 = and i1 %814, %819
  %821 = and i1 %805, %812
  %822 = and i1 %821, %820
  %823 = fcmp fast ogt float %781, %763
  %824 = and i1 %823, %822
  %825 = zext i1 %824 to i32
  br i1 %824, label %829, label %826, !dx.controlflow.hints !47

; <label>:826                                     ; preds = %810
  %827 = add nuw nsw i32 %773, 1
  %828 = icmp slt i32 %773, %614
  br i1 %828, label %769, label %829

; <label>:829                                     ; preds = %826, %810
  br label %830

; <label>:830                                     ; preds = %829, %618
  %831 = phi i32 [ 0, %618 ], [ %825, %829 ]
  %832 = phi float [ %78, %618 ], [ %801, %829 ]
  %833 = phi float [ %78, %618 ], [ %770, %829 ]
  %834 = phi float [ %78, %618 ], [ %788, %829 ]
  %835 = phi float [ %78, %618 ], [ %771, %829 ]
  %836 = fsub fast float %835, %833
  %837 = fsub fast float %834, %832
  %838 = fsub fast float %836, %837
  %839 = fcmp fast une float %838, 0.000000e+00
  %840 = fmul fast float %836, %834
  %841 = fmul fast float %835, %837
  %842 = fsub fast float %840, %841
  %843 = fdiv fast float 1.000000e+00, %838
  %844 = fmul fast float %842, %843
  %845 = select i1 %839, float %844, float %834
  %846 = fdiv fast float 1.000000e+00, %845
  %847 = fsub fast float %846, %688
  %848 = fdiv fast float %847, %747
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = fmul fast float %849, %744
  %851 = fmul fast float %849, %746
  %852 = fadd fast float %850, %755
  %853 = fadd fast float %851, %756
  %854 = fadd fast float %852, -5.000000e-01
  %855 = fadd fast float %853, -5.000000e-01
  %856 = call float @dx.op.unary.f32(i32 6, float %854)  ; FAbs(value)
  %857 = call float @dx.op.unary.f32(i32 6, float %855)  ; FAbs(value)
  %858 = fadd fast float %856, -5.000000e-01
  %859 = fadd fast float %857, -5.000000e-01
  %860 = call float @dx.op.binary.f32(i32 35, float %858, float %859)  ; FMax(a,b)
  %861 = fcmp fast olt float %860, 0.000000e+00
  %862 = icmp ne i32 %831, 0
  %863 = and i1 %862, %861
  %864 = select i1 %863, float 0.000000e+00, float 1.000000e+00
  br label %865

; <label>:865                                     ; preds = %830, %601
  %866 = phi float [ %864, %830 ], [ 1.000000e+00, %601 ]
  %867 = fmul fast float %866, %594
  %868 = fmul fast float %866, %594
  %869 = fmul fast float %866, %594
  br label %870

; <label>:870                                     ; preds = %865, %593
  %871 = phi float [ %867, %865 ], [ %594, %593 ]
  %872 = phi float [ %868, %865 ], [ %594, %593 ]
  %873 = phi float [ %869, %865 ], [ %594, %593 ]
  %874 = call float @dx.op.binary.f32(i32 36, float %872, float %873)  ; FMin(a,b)
  %875 = call float @dx.op.binary.f32(i32 36, float %871, float %874)  ; FMin(a,b)
  %876 = fcmp fast ogt float %875, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %877 = zext i1 %876 to i32
  %878 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %877 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %879 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %880 = icmp eq i32 %879, 0
  %881 = select i1 %880, i32 0, i32 %322
  %882 = or i32 %317, %881
  %883 = lshr i32 %257, 5
  %884 = lshr i32 %258, 5
  %885 = fcmp fast olt float %871, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %886 = and i32 %24, 31
  %887 = zext i1 %885 to i32
  %888 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %887, i32 addrspace(3)* %888, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %889 = icmp ult i32 %886, 16
  br i1 %889, label %890, label %896, !dx.controlflow.hints !48

; <label>:890                                     ; preds = %870
  %891 = add i32 %24, 16
  %892 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %891
  %893 = load i32, i32 addrspace(3)* %892, align 4, !tbaa !36
  %894 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %895 = and i32 %894, %893
  store i32 %895, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %896

; <label>:896                                     ; preds = %890, %870
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %897 = icmp ult i32 %886, 8
  br i1 %897, label %898, label %904, !dx.controlflow.hints !49

; <label>:898                                     ; preds = %896
  %899 = add i32 %24, 8
  %900 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %899
  %901 = load i32, i32 addrspace(3)* %900, align 4, !tbaa !36
  %902 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %903 = and i32 %902, %901
  store i32 %903, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %904

; <label>:904                                     ; preds = %898, %896
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %905 = icmp ult i32 %886, 4
  br i1 %905, label %906, label %912, !dx.controlflow.hints !50

; <label>:906                                     ; preds = %904
  %907 = add i32 %24, 4
  %908 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %907
  %909 = load i32, i32 addrspace(3)* %908, align 4, !tbaa !36
  %910 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %911 = and i32 %910, %909
  store i32 %911, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %912

; <label>:912                                     ; preds = %906, %904
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %913 = icmp ult i32 %886, 2
  br i1 %913, label %914, label %920, !dx.controlflow.hints !51

; <label>:914                                     ; preds = %912
  %915 = add i32 %24, 2
  %916 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %915
  %917 = load i32, i32 addrspace(3)* %916, align 4, !tbaa !36
  %918 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %919 = and i32 %918, %917
  store i32 %919, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %920

; <label>:920                                     ; preds = %914, %912
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %921 = icmp eq i32 %886, 0
  br i1 %921, label %922, label %928, !dx.controlflow.hints !52

; <label>:922                                     ; preds = %920
  %923 = add i32 %24, 1
  %924 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %923
  %925 = load i32, i32 addrspace(3)* %924, align 4, !tbaa !36
  %926 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %927 = and i32 %926, %925
  store i32 %927, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %928

; <label>:928                                     ; preds = %922, %920
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %929 = and i32 %24, -64
  %930 = or i32 %929, 32
  %931 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %929
  %932 = load i32, i32 addrspace(3)* %931, align 4, !tbaa !36
  %933 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %930
  %934 = load i32, i32 addrspace(3)* %933, align 4, !tbaa !36
  %935 = and i32 %934, %932
  %936 = icmp ne i32 %935, 0
  %937 = fcmp fast ogt float %871, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %938 = zext i1 %937 to i32
  store i32 %938, i32 addrspace(3)* %888, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %889, label %939, label %945, !dx.controlflow.hints !48

; <label>:939                                     ; preds = %928
  %940 = add i32 %24, 16
  %941 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %940
  %942 = load i32, i32 addrspace(3)* %941, align 4, !tbaa !36
  %943 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %944 = and i32 %943, %942
  store i32 %944, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %945

; <label>:945                                     ; preds = %939, %928
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %897, label %946, label %952, !dx.controlflow.hints !49

; <label>:946                                     ; preds = %945
  %947 = add i32 %24, 8
  %948 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %947
  %949 = load i32, i32 addrspace(3)* %948, align 4, !tbaa !36
  %950 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %951 = and i32 %950, %949
  store i32 %951, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %952

; <label>:952                                     ; preds = %946, %945
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %905, label %953, label %959, !dx.controlflow.hints !50

; <label>:953                                     ; preds = %952
  %954 = add i32 %24, 4
  %955 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %954
  %956 = load i32, i32 addrspace(3)* %955, align 4, !tbaa !36
  %957 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %958 = and i32 %957, %956
  store i32 %958, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %959

; <label>:959                                     ; preds = %953, %952
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %913, label %960, label %966, !dx.controlflow.hints !51

; <label>:960                                     ; preds = %959
  %961 = add i32 %24, 2
  %962 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %961
  %963 = load i32, i32 addrspace(3)* %962, align 4, !tbaa !36
  %964 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %965 = and i32 %964, %963
  store i32 %965, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %966

; <label>:966                                     ; preds = %960, %959
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %921, label %967, label %973, !dx.controlflow.hints !52

; <label>:967                                     ; preds = %966
  %968 = add i32 %24, 1
  %969 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %968
  %970 = load i32, i32 addrspace(3)* %969, align 4, !tbaa !36
  %971 = load i32, i32 addrspace(3)* %888, align 4, !tbaa !36
  %972 = and i32 %971, %970
  store i32 %972, i32 addrspace(3)* %888, align 4, !tbaa !36
  br label %973

; <label>:973                                     ; preds = %967, %966
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %974 = load i32, i32 addrspace(3)* %931, align 4, !tbaa !36
  %975 = load i32, i32 addrspace(3)* %933, align 4, !tbaa !36
  %976 = and i32 %975, %974
  %977 = or i32 %976, %935
  %978 = icmp eq i32 %977, 0
  %979 = lshr i32 %258, 1
  %980 = and i32 %979, 8
  %981 = lshr i32 %257, 2
  %982 = and i32 %981, 4
  %983 = or i32 %982, %37
  %984 = or i32 %983, %980
  br i1 %310, label %985, label %1027, !dx.controlflow.hints !53

; <label>:985                                     ; preds = %973
  %986 = icmp ne i32 %976, 0
  %987 = shl i32 1, %984
  %988 = select i1 %986, i32 %987, i32 0
  %989 = shl i32 65536, %984
  %990 = select i1 %936, i32 %989, i32 0
  %991 = or i32 %988, %990
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %995, label %993, !dx.controlflow.hints !54

; <label>:993                                     ; preds = %985
  %994 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %883, i32 %884, i32 %320, i32 %991)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %995

; <label>:995                                     ; preds = %993, %985
  br i1 %978, label %996, label %1025

; <label>:996                                     ; preds = %995
  br label %997

; <label>:997                                     ; preds = %1022, %996
  %998 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %883, i32 %884, i32 %320, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %999 = and i32 %998, 3
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1001, label %1022, !dx.controlflow.hints !55

; <label>:1001                                    ; preds = %997
  %1002 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.i32 %1003, 3
  %1005 = call i32 @dx.op.binary.i32(i32 40, i32 %1004, i32 %1002)  ; UMin(a,b)
  %1006 = extractvalue %dx.types.CBufRet.i32 %1003, 2
  %1007 = udiv i32 %1005, %1006
  %1008 = urem i32 %1005, %1006
  %1009 = extractvalue %dx.types.CBufRet.i32 %1003, 1
  %1010 = urem i32 %1008, %1009
  %1011 = udiv i32 %1008, %1009
  %1012 = shl i32 %1010, 6
  %1013 = and i32 %1012, 32704
  %1014 = shl i32 %1011, 15
  %1015 = and i32 %1014, 8355840
  %1016 = shl i32 %1007, 23
  %1017 = and i32 %1016, 2139095040
  %1018 = or i32 %1017, %1013
  %1019 = or i32 %1018, %1015
  %1020 = or i32 %1019, 3
  %1021 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %883, i32 %884, i32 %320, i32 %1020)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1025

; <label>:1022                                    ; preds = %997
  %1023 = icmp eq i32 %999, 3
  br i1 %1023, label %1024, label %997, !dx.controlflow.hints !56

; <label>:1024                                    ; preds = %1022
  br label %1025

; <label>:1025                                    ; preds = %1024, %1001, %995
  %1026 = phi i32 [ 0, %995 ], [ %1020, %1001 ], [ %998, %1024 ]
  store i32 %1026, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %1027

; <label>:1027                                    ; preds = %1025, %973
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1028 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br i1 %978, label %1029, label %1050, !dx.controlflow.hints !57

; <label>:1029                                    ; preds = %1027
  %1030 = lshr i32 %257, 1
  %1031 = and i32 %1030, 15
  %1032 = and i32 %979, 15
  %1033 = and i32 %257, 1
  %1034 = shl i32 %258, 1
  %1035 = and i32 %1034, 2
  %1036 = or i32 %1035, %1033
  %1037 = lshr i32 %1028, 2
  %1038 = and i32 %1037, 8176
  %1039 = lshr i32 %1028, 11
  %1040 = and i32 %1039, 4080
  %1041 = or i32 %1038, %1031
  %1042 = or i32 %1040, %1032
  %1043 = lshr i32 %1028, 21
  %1044 = and i32 %1043, 1020
  %1045 = or i32 %1036, %1044
  %1046 = fmul fast float %871, 2.550000e+02
  %1047 = fadd fast float %1046, %251
  %1048 = call float @dx.op.unary.f32(i32 27, float %1047)  ; Round_ni(value)
  %1049 = fmul fast float %1048, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1041, i32 %1042, i32 %1045, float %1049, float %1049, float %1049, float %1049, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1050

; <label>:1050                                    ; preds = %1029, %1027
  %1051 = icmp eq i32 %318, %322
  br i1 %1051, label %1052, label %316, !llvm.loop !58

; <label>:1052                                    ; preds = %1050
  br label %1053

; <label>:1053                                    ; preds = %1052, %312
  %1054 = phi i32 [ 0, %312 ], [ %882, %1052 ]
  %1055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.i32 %1055, 0
  %1057 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %1056, i32 %285)  ; UMad(a,b,c)
  %1058 = shl i32 %1057, 2
  %1059 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1058, i32 undef, i32 undef, i32 %1054)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1060 = add i32 %285, 1
  %1061 = icmp ugt i32 %1060, %281
  br i1 %1061, label %1062, label %284

; <label>:1062                                    ; preds = %1053
  br label %1063

; <label>:1063                                    ; preds = %1062, %256, %58
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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!29 = !{!30, !31}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{void ()* @cs_spotvis, !"cs_spotvis", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}

