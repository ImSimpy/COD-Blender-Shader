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
; shader hash: 07bf7216e763438887921b72bc3bd4e1
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

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4
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
  br i1 %255, label %1165, label %256, !dx.controlflow.hints !40

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
  %275 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %276 = udiv i32 %24, %275
  %277 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %273, i8 2, i8 1)  ; WaveActiveOp(value,op,sop)
  %278 = icmp eq i32 %275, 64
  br i1 %278, label %305, label %279, !dx.controlflow.hints !41

; <label>:279                                     ; preds = %256
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %280 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %280, label %281, label %283, !dx.controlflow.hints !42

; <label>:281                                     ; preds = %279
  %282 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %276
  store i32 %277, i32 addrspace(3)* %282, align 4, !tbaa !36
  br label %283

; <label>:283                                     ; preds = %281, %279
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %284 = icmp eq i32 %275, 32
  br i1 %284, label %285, label %290, !dx.controlflow.hints !43

; <label>:285                                     ; preds = %283
  %286 = xor i32 %276, 1
  %287 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %286
  %288 = load i32, i32 addrspace(3)* %287, align 4, !tbaa !36
  %289 = call i32 @dx.op.binary.i32(i32 40, i32 %277, i32 %288)  ; UMin(a,b)
  br label %305

; <label>:290                                     ; preds = %283
  %291 = icmp eq i32 %275, 16
  br i1 %291, label %292, label %305, !dx.controlflow.hints !44

; <label>:292                                     ; preds = %290
  %293 = xor i32 %276, 3
  %294 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %293
  %295 = load i32, i32 addrspace(3)* %294, align 4, !tbaa !36
  %296 = xor i32 %276, 2
  %297 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %296
  %298 = load i32, i32 addrspace(3)* %297, align 4, !tbaa !36
  %299 = call i32 @dx.op.binary.i32(i32 40, i32 %298, i32 %295)  ; UMin(a,b)
  %300 = xor i32 %276, 1
  %301 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %300
  %302 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !36
  %303 = call i32 @dx.op.binary.i32(i32 40, i32 %277, i32 %302)  ; UMin(a,b)
  %304 = call i32 @dx.op.binary.i32(i32 40, i32 %303, i32 %299)  ; UMin(a,b)
  br label %305

; <label>:305                                     ; preds = %292, %290, %285, %256
  %306 = phi i32 [ %289, %285 ], [ %304, %292 ], [ %277, %256 ], [ 0, %290 ]
  %307 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %274, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %278, label %334, label %308, !dx.controlflow.hints !45

; <label>:308                                     ; preds = %305
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %309 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %309, label %310, label %312, !dx.controlflow.hints !46

; <label>:310                                     ; preds = %308
  %311 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %276
  store i32 %307, i32 addrspace(3)* %311, align 4, !tbaa !36
  br label %312

; <label>:312                                     ; preds = %310, %308
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %313 = icmp eq i32 %275, 32
  br i1 %313, label %314, label %319, !dx.controlflow.hints !47

; <label>:314                                     ; preds = %312
  %315 = xor i32 %276, 1
  %316 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %315
  %317 = load i32, i32 addrspace(3)* %316, align 4, !tbaa !36
  %318 = call i32 @dx.op.binary.i32(i32 39, i32 %307, i32 %317)  ; UMax(a,b)
  br label %334

; <label>:319                                     ; preds = %312
  %320 = icmp eq i32 %275, 16
  br i1 %320, label %321, label %334, !dx.controlflow.hints !48

; <label>:321                                     ; preds = %319
  %322 = xor i32 %276, 3
  %323 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %322
  %324 = load i32, i32 addrspace(3)* %323, align 4, !tbaa !36
  %325 = xor i32 %276, 2
  %326 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %325
  %327 = load i32, i32 addrspace(3)* %326, align 4, !tbaa !36
  %328 = call i32 @dx.op.binary.i32(i32 39, i32 %327, i32 %324)  ; UMax(a,b)
  %329 = xor i32 %276, 1
  %330 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %329
  %331 = load i32, i32 addrspace(3)* %330, align 4, !tbaa !36
  %332 = call i32 @dx.op.binary.i32(i32 39, i32 %307, i32 %331)  ; UMax(a,b)
  %333 = call i32 @dx.op.binary.i32(i32 39, i32 %332, i32 %328)  ; UMax(a,b)
  br label %334

; <label>:334                                     ; preds = %321, %319, %314, %305
  %335 = phi i32 [ %318, %314 ], [ %333, %321 ], [ %307, %305 ], [ 0, %319 ]
  %336 = lshr i32 %306, 5
  %337 = lshr i32 %335, 5
  %338 = call i32 @dx.op.binary.i32(i32 40, i32 %337, i32 %265)  ; UMin(a,b)
  %339 = icmp ugt i32 %336, %338
  br i1 %339, label %1165, label %340

; <label>:340                                     ; preds = %334
  br label %341

; <label>:341                                     ; preds = %1155, %340
  %342 = phi i32 [ %1162, %1155 ], [ %336, %340 ]
  %343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.i32 %343, 0
  %345 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %344, i32 %342)  ; UMad(a,b,c)
  %346 = shl i32 %345, 2
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %342, 5
  %350 = sub nsw i32 %273, %349
  %351 = call i32 @dx.op.binary.i32(i32 37, i32 %350, i32 0)  ; IMax(a,b)
  %352 = call i32 @dx.op.binary.i32(i32 38, i32 %351, i32 31)  ; IMin(a,b)
  %353 = sub nsw i32 1, %273
  %354 = add nsw i32 %353, %274
  %355 = call i32 @dx.op.binary.i32(i32 37, i32 %354, i32 0)  ; IMax(a,b)
  %356 = call i32 @dx.op.binary.i32(i32 38, i32 %355, i32 32)  ; IMin(a,b)
  %357 = and i32 %356, 31
  %358 = shl i32 -1, %357
  %359 = xor i32 %358, -1
  %360 = and i32 %352, 31
  %361 = shl i32 %359, %360
  %362 = icmp eq i32 %356, 32
  %363 = select i1 %362, i32 -1, i32 %361
  %364 = and i32 %363, %348
  %365 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %364, i8 1)  ; WaveActiveBit(value,op)
  br i1 %278, label %392, label %366, !dx.controlflow.hints !49

; <label>:366                                     ; preds = %341
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %367 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %367, label %368, label %370, !dx.controlflow.hints !50

; <label>:368                                     ; preds = %366
  %369 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %276
  store i32 %365, i32 addrspace(3)* %369, align 4, !tbaa !36
  br label %370

; <label>:370                                     ; preds = %368, %366
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %371 = icmp eq i32 %275, 32
  br i1 %371, label %372, label %377, !dx.controlflow.hints !51

; <label>:372                                     ; preds = %370
  %373 = xor i32 %276, 1
  %374 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %373
  %375 = load i32, i32 addrspace(3)* %374, align 4, !tbaa !36
  %376 = or i32 %375, %365
  br label %392

; <label>:377                                     ; preds = %370
  %378 = icmp eq i32 %275, 16
  br i1 %378, label %379, label %392, !dx.controlflow.hints !52

; <label>:379                                     ; preds = %377
  %380 = xor i32 %276, 1
  %381 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %380
  %382 = load i32, i32 addrspace(3)* %381, align 4, !tbaa !36
  %383 = or i32 %382, %365
  %384 = xor i32 %276, 2
  %385 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %384
  %386 = load i32, i32 addrspace(3)* %385, align 4, !tbaa !36
  %387 = or i32 %383, %386
  %388 = xor i32 %276, 3
  %389 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %388
  %390 = load i32, i32 addrspace(3)* %389, align 4, !tbaa !36
  %391 = or i32 %387, %390
  br label %392

; <label>:392                                     ; preds = %379, %377, %372, %341
  %393 = phi i32 [ %376, %372 ], [ %391, %379 ], [ %365, %341 ], [ 0, %377 ]
  br i1 %278, label %394, label %396, !dx.controlflow.hints !53

; <label>:394                                     ; preds = %392
  %395 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %393)  ; WaveReadLaneFirst(value)
  br label %401

; <label>:396                                     ; preds = %392
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %397 = icmp eq i32 %24, 0
  br i1 %397, label %398, label %399, !dx.controlflow.hints !54

; <label>:398                                     ; preds = %396
  store i32 %393, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  br label %399

; <label>:399                                     ; preds = %398, %396
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %400 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  br label %401

; <label>:401                                     ; preds = %399, %394
  %402 = phi i32 [ %395, %394 ], [ %400, %399 ]
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %1155, label %404

; <label>:404                                     ; preds = %401
  br label %405

; <label>:405                                     ; preds = %1152, %404
  %406 = phi i32 [ %1000, %1152 ], [ 0, %404 ]
  %407 = phi i32 [ %412, %1152 ], [ %402, %404 ]
  %408 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %407)  ; FirstbitLo(value)
  %409 = add i32 %408, %349
  %410 = and i32 %408, 31
  %411 = shl i32 1, %410
  %412 = xor i32 %411, %407
  %413 = mul i32 %409, 112
  %414 = add i32 %413, 16
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = add i32 %413, 28
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = add i32 %413, 32
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = add i32 %413, 44
  %428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = add i32 %413, 48
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = add i32 %413, 64
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = extractvalue %dx.types.ResRet.f32 %437, 3
  %442 = add i32 %413, 92
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 65535
  %446 = uitofp i32 %445 to float
  %447 = lshr i32 %444, 16
  %448 = uitofp i32 %447 to float
  %449 = and i32 %421, 65535
  %450 = and i32 %421, 50331648
  %451 = icmp eq i32 %450, 33554432
  %452 = call float @dx.op.dot3.f32(i32 55, float %424, float %425, float %426, float %424, float %425, float %426)  ; Dot3(ax,ay,az,bx,by,bz)
  %453 = fsub fast float %133, %432
  %454 = fsub fast float %134, %433
  %455 = fsub fast float %135, %434
  %456 = call float @dx.op.dot3.f32(i32 55, float %453, float %454, float %455, float %424, float %425, float %426)  ; Dot3(ax,ay,az,bx,by,bz)
  %457 = fdiv fast float %456, %452
  %458 = call float @dx.op.binary.f32(i32 35, float %457, float -1.000000e+00)  ; FMax(a,b)
  %459 = call float @dx.op.binary.f32(i32 36, float %458, float 1.000000e+00)  ; FMin(a,b)
  %460 = fmul fast float %459, %424
  %461 = fmul fast float %459, %425
  %462 = fmul fast float %459, %426
  %463 = fadd fast float %460, %432
  %464 = fadd fast float %461, %433
  %465 = fadd fast float %462, %434
  %466 = fsub fast float %463, %133
  %467 = fsub fast float %464, %134
  %468 = fsub fast float %465, %135
  %469 = call float @dx.op.dot3.f32(i32 55, float %466, float %467, float %468, float %466, float %467, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = call float @dx.op.unary.f32(i32 24, float %469)  ; Sqrt(value)
  %471 = fdiv fast float 1.000000e+00, %470
  %472 = fmul fast float %466, %471
  %473 = fmul fast float %467, %471
  %474 = fmul fast float %468, %471
  br i1 %451, label %475, label %499, !dx.controlflow.hints !55

; <label>:475                                     ; preds = %405
  %476 = fmul fast float %440, %416
  %477 = fmul fast float %440, %417
  %478 = fmul fast float %440, %418
  %479 = fsub fast float %476, %133
  %480 = fadd fast float %479, %463
  %481 = fsub fast float %477, %134
  %482 = fadd fast float %481, %464
  %483 = fsub fast float %478, %135
  %484 = fadd fast float %483, %465
  %485 = call float @dx.op.dot3.f32(i32 55, float %480, float %482, float %484, float %480, float %482, float %484)  ; Dot3(ax,ay,az,bx,by,bz)
  %486 = call float @dx.op.unary.f32(i32 25, float %485)  ; Rsqrt(value)
  %487 = fmul fast float %486, %480
  %488 = fmul fast float %486, %482
  %489 = fmul fast float %486, %484
  %490 = fsub fast float %133, %463
  %491 = fsub fast float %134, %464
  %492 = fsub fast float %135, %465
  %493 = fsub fast float -0.000000e+00, %490
  %494 = fsub fast float -0.000000e+00, %491
  %495 = fsub fast float -0.000000e+00, %492
  %496 = call float @dx.op.dot3.f32(i32 55, float %493, float %494, float %495, float %416, float %417, float %418)  ; Dot3(ax,ay,az,bx,by,bz)
  %497 = fcmp fast ogt float %496, 0.000000e+00
  %498 = uitofp i1 %497 to float
  br label %499

; <label>:499                                     ; preds = %475, %405
  %500 = phi float [ %498, %475 ], [ 1.000000e+00, %405 ]
  %501 = phi float [ %487, %475 ], [ %472, %405 ]
  %502 = phi float [ %488, %475 ], [ %473, %405 ]
  %503 = phi float [ %489, %475 ], [ %474, %405 ]
  %504 = call float @dx.op.dot3.f32(i32 55, float %416, float %417, float %418, float %501, float %502, float %503)  ; Dot3(ax,ay,az,bx,by,bz)
  %505 = fmul fast float %504, %504
  %506 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %507 = fsub fast float 1.000000e+00, %506
  %508 = fmul fast float %507, 5.000000e-01
  %509 = fcmp fast ogt float %504, 0.000000e+00
  %510 = fsub fast float 1.000000e+00, %508
  %511 = select i1 %509, float %508, float %510
  %512 = fmul fast float %511, %448
  %513 = fadd fast float %512, %446
  %514 = fmul fast float %513, 0x3EF0001000000000
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %514, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = fmul fast float %504, %438
  %518 = fadd fast float %517, %439
  %519 = call float @dx.op.unary.f32(i32 7, float %518)  ; Saturate(value)
  %520 = select i1 %451, float 1.000000e+00, float %519
  %521 = select i1 %451, float %519, float 1.000000e+00
  %522 = fmul fast float %470, %435
  %523 = fsub fast float 1.000000e+00, %522
  %524 = fmul fast float %523, %441
  %525 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %526 = fmul fast float %525, %521
  %527 = fmul fast float %526, 2.000000e+00
  %528 = fsub fast float 3.000000e+00, %527
  %529 = fmul fast float %516, %500
  %530 = fmul fast float %526, %526
  %531 = fmul fast float %530, %529
  %532 = fmul fast float %531, %528
  %533 = icmp ne i32 %449, 255
  %534 = call float @dx.op.binary.f32(i32 36, float %532, float %532)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float %532, float %534)  ; FMin(a,b)
  %536 = fcmp fast ogt float %535, 0.000000e+00
  %537 = and i1 %533, %536
  br i1 %537, label %538, label %682, !dx.controlflow.hints !56

; <label>:538                                     ; preds = %499
  %539 = mul nuw nsw i32 %449, 176
  %540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = extractvalue %dx.types.ResRet.f32 %540, 1
  %543 = extractvalue %dx.types.ResRet.f32 %540, 2
  %544 = extractvalue %dx.types.ResRet.f32 %540, 3
  %545 = add nuw nsw i32 %539, 16
  %546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = add nuw nsw i32 %539, 32
  %550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = add nuw nsw i32 %539, 48
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = extractvalue %dx.types.ResRet.f32 %555, 3
  %560 = add nuw nsw i32 %539, 64
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = extractvalue %dx.types.ResRet.f32 %561, 3
  %566 = add nuw nsw i32 %539, 80
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = extractvalue %dx.types.ResRet.f32 %567, 1
  %570 = extractvalue %dx.types.ResRet.f32 %567, 2
  %571 = extractvalue %dx.types.ResRet.f32 %567, 3
  %572 = add nuw nsw i32 %539, 96
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = extractvalue %dx.types.ResRet.f32 %573, 3
  %578 = bitcast float %548 to i32
  %579 = fmul fast float %553, %179
  %580 = fmul fast float %553, %180
  %581 = fmul fast float %553, %181
  %582 = fadd fast float %579, %133
  %583 = fadd fast float %580, %134
  %584 = fadd fast float %581, %135
  %585 = fmul fast float %582, %556
  %586 = call float @dx.op.tertiary.f32(i32 46, float %583, float %562, float %585)  ; FMad(a,b,c)
  %587 = call float @dx.op.tertiary.f32(i32 46, float %584, float %568, float %586)  ; FMad(a,b,c)
  %588 = fadd fast float %587, %574
  %589 = fmul fast float %582, %557
  %590 = call float @dx.op.tertiary.f32(i32 46, float %583, float %563, float %589)  ; FMad(a,b,c)
  %591 = call float @dx.op.tertiary.f32(i32 46, float %584, float %569, float %590)  ; FMad(a,b,c)
  %592 = fadd fast float %591, %575
  %593 = fmul fast float %582, %558
  %594 = call float @dx.op.tertiary.f32(i32 46, float %583, float %564, float %593)  ; FMad(a,b,c)
  %595 = call float @dx.op.tertiary.f32(i32 46, float %584, float %570, float %594)  ; FMad(a,b,c)
  %596 = fadd fast float %595, %576
  %597 = fmul fast float %582, %559
  %598 = call float @dx.op.tertiary.f32(i32 46, float %583, float %565, float %597)  ; FMad(a,b,c)
  %599 = call float @dx.op.tertiary.f32(i32 46, float %584, float %571, float %598)  ; FMad(a,b,c)
  %600 = fadd fast float %599, %577
  %601 = fdiv fast float %588, %600
  %602 = fdiv fast float %592, %600
  %603 = fdiv fast float %596, %600
  %604 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %603)  ; FMax(a,b)
  %605 = fmul fast float %251, 0x401921FB60000000
  %606 = call float @dx.op.unary.f32(i32 13, float %605)  ; Sin(value)
  %607 = call float @dx.op.unary.f32(i32 12, float %605)  ; Cos(value)
  %608 = fmul fast float %607, %552
  %609 = call float @dx.op.tertiary.f32(i32 46, float %606, float %552, float 0.000000e+00)  ; FMad(a,b,c)
  %610 = fmul fast float %552, %606
  %611 = fsub fast float -0.000000e+00, %610
  %612 = call float @dx.op.tertiary.f32(i32 46, float %607, float %552, float 0.000000e+00)  ; FMad(a,b,c)
  br label %613

; <label>:613                                     ; preds = %613, %538
  %614 = phi float [ 0.000000e+00, %538 ], [ %646, %613 ]
  %615 = phi float [ 0.000000e+00, %538 ], [ %648, %613 ]
  %616 = phi i32 [ 0, %538 ], [ %649, %613 ]
  %617 = mul i32 %616, 2
  %618 = add i32 0, %617
  %619 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %618
  %620 = load float, float* %619, align 4
  %621 = mul i32 %616, 2
  %622 = add i32 1, %621
  %623 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %622
  %624 = load float, float* %623, align 4
  %625 = fmul fast float %608, %620
  %626 = call float @dx.op.tertiary.f32(i32 46, float %624, float %611, float %625)  ; FMad(a,b,c)
  %627 = fmul fast float %620, %609
  %628 = call float @dx.op.tertiary.f32(i32 46, float %624, float %612, float %627)  ; FMad(a,b,c)
  %629 = fadd fast float %626, %601
  %630 = fadd fast float %628, %602
  %631 = fmul fast float %629, %547
  %632 = fmul fast float %630, %547
  %633 = call float @dx.op.binary.f32(i32 35, float %631, float %543)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 35, float %632, float %543)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 36, float %633, float %544)  ; FMin(a,b)
  %636 = call float @dx.op.binary.f32(i32 36, float %634, float %544)  ; FMin(a,b)
  %637 = fadd fast float %635, %541
  %638 = fadd fast float %636, %542
  %639 = uitofp i32 %578 to float
  %640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %637, float %638, float %639, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = fsub fast float %641, %604
  %643 = fsub fast float %642, %551
  %644 = fcmp fast ogt float %643, 0.000000e+00
  %645 = select i1 %644, float 1.000000e+00, float 0.000000e+00
  %646 = fadd fast float %645, %614
  %647 = select i1 %644, float %643, float 0.000000e+00
  %648 = fadd fast float %647, %615
  %649 = add nuw nsw i32 %616, 1
  %650 = icmp eq i32 %649, 8
  br i1 %650, label %651, label %613

; <label>:651                                     ; preds = %613
  %652 = fdiv fast float 1.000000e+00, %646
  %653 = fmul fast float %652, %648
  %654 = fdiv fast float 1.000000e+00, %604
  %655 = fmul fast float %653, %654
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %657 = call float @dx.op.binary.f32(i32 35, float %656, float 0.000000e+00)  ; FMax(a,b)
  %658 = fmul fast float %646, 1.250000e-01
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %660 = fmul fast float %659, 2.000000e+00
  %661 = fadd fast float %660, -1.000000e+00
  %662 = fcmp fast ogt float %661, 0.000000e+00
  %663 = fcmp fast olt float %661, 0.000000e+00
  %664 = zext i1 %662 to i32
  %665 = zext i1 %663 to i32
  %666 = sub nsw i32 %664, %665
  %667 = sitofp i32 %666 to float
  %668 = fmul fast float %667, %661
  %669 = fsub fast float 1.000000e+00, %668
  %670 = fmul fast float %669, %669
  %671 = fmul fast float %670, %669
  %672 = fsub fast float %669, %671
  %673 = fmul fast float %672, %657
  %674 = fsub fast float 1.000000e+00, %671
  %675 = fsub fast float %674, %673
  %676 = fmul fast float %667, 5.000000e-01
  %677 = fmul fast float %676, %675
  %678 = fsub fast float -5.000000e-01, %677
  %679 = fmul fast float %678, %520
  %680 = fadd fast float %679, 1.000000e+00
  %681 = fmul fast float %680, %532
  br label %682

; <label>:682                                     ; preds = %651, %499
  %683 = phi float [ %681, %651 ], [ %532, %499 ]
  %684 = call float @dx.op.binary.f32(i32 36, float %683, float %683)  ; FMin(a,b)
  %685 = call float @dx.op.binary.f32(i32 36, float %683, float %684)  ; FMin(a,b)
  %686 = fcmp fast ogt float %685, 0.000000e+00
  %687 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %472, float %473, float %474)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = fcmp fast ogt float %687, 0.000000e+00
  %689 = and i1 %686, %688
  br i1 %689, label %690, label %959, !dx.controlflow.hints !57

; <label>:690                                     ; preds = %682
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %695 = select i1 %71, float %692, float %694
  %696 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %697 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %698 = select i1 %71, float %696, float %697
  %699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.i32 %699, 0
  %701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.i32 %701, 0
  %703 = select i1 %71, i32 %700, i32 %702
  %704 = fcmp fast olt float %695, 5.000000e-01
  %705 = icmp eq i32 %703, 0
  %706 = or i1 %704, %705
  br i1 %706, label %954, label %707, !dx.controlflow.hints !58

; <label>:707                                     ; preds = %690
  %708 = fsub fast float %432, %133
  %709 = fsub fast float %433, %134
  %710 = fsub fast float %434, %135
  %711 = fmul fast float %708, %708
  %712 = fmul fast float %709, %709
  %713 = fadd fast float %711, %712
  %714 = fmul fast float %710, %710
  %715 = fadd fast float %713, %714
  %716 = call float @dx.op.unary.f32(i32 24, float %715)  ; Sqrt(value)
  %717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.i32 %717, 0
  %719 = uitofp i32 %718 to float
  %720 = fmul fast float %695, %429
  %721 = fdiv fast float %720, %716
  %722 = call float @dx.op.binary.f32(i32 36, float %721, float 1.000000e+01)  ; FMin(a,b)
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 118)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 0
  %725 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %726 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %727 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 119)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %731 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %732 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 121)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %736 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %737 = extractvalue %dx.types.CBufRet.f32 %733, 3
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 0
  %740 = extractvalue %dx.types.CBufRet.f32 %738, 1
  %741 = extractvalue %dx.types.CBufRet.f32 %738, 2
  %742 = extractvalue %dx.types.CBufRet.f32 %738, 3
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %745 = extractvalue %dx.types.CBufRet.f32 %743, 1
  %746 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %747 = extractvalue %dx.types.CBufRet.f32 %743, 3
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 0
  %750 = extractvalue %dx.types.CBufRet.f32 %748, 1
  %751 = extractvalue %dx.types.CBufRet.f32 %748, 2
  %752 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %753 = select i1 %71, float %724, float %739
  %754 = select i1 %71, float %729, float %744
  %755 = select i1 %71, float %734, float %749
  %756 = select i1 %71, float %725, float %740
  %757 = select i1 %71, float %730, float %745
  %758 = select i1 %71, float %735, float %750
  %759 = select i1 %71, float %726, float %741
  %760 = select i1 %71, float %731, float %746
  %761 = select i1 %71, float %736, float %751
  %762 = select i1 %71, float %727, float %742
  %763 = select i1 %71, float %732, float %747
  %764 = select i1 %71, float %737, float %752
  %765 = fmul fast float %252, 0x401061CAC0000000
  %766 = fmul fast float %252, 0x4023E1D7E0000000
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %770 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %771 = extractvalue %dx.types.CBufRet.f32 %767, 3
  %772 = fsub fast float -0.000000e+00, %472
  %773 = fmul fast float %474, %772
  %774 = fmul fast float %472, %772
  %775 = fmul fast float %473, %473
  %776 = fsub fast float %774, %775
  %777 = fdiv fast float 1.000000e+00, %78
  %778 = fmul fast float %770, %67
  %779 = fmul fast float %771, %68
  %780 = fmul fast float %695, %472
  %781 = fmul fast float %695, %474
  %782 = fadd fast float %780, %133
  %783 = fadd fast float %781, %135
  %784 = fadd fast float %766, 5.000000e-01
  %785 = call float @dx.op.unary.f32(i32 22, float %784)  ; Frc(value)
  %786 = bitcast float %785 to i32
  %787 = ashr i32 %786, 1
  %788 = add nsw i32 %787, 532487669
  %789 = bitcast i32 %788 to float
  %790 = fmul fast float %789, %722
  %791 = fadd fast float %765, 5.000000e-01
  %792 = call float @dx.op.unary.f32(i32 22, float %791)  ; Frc(value)
  %793 = fmul fast float %792, 0x401921FB60000000
  %794 = call float @dx.op.unary.f32(i32 12, float %793)  ; Cos(value)
  %795 = fmul fast float %794, %794
  %796 = fsub fast float 1.000000e+00, %795
  %797 = bitcast float %796 to i32
  %798 = ashr i32 %797, 1
  %799 = add nsw i32 %798, 532487669
  %800 = bitcast i32 %799 to float
  %801 = fmul fast float %790, %794
  %802 = fmul fast float %801, %473
  %803 = fmul fast float %801, %772
  %804 = fadd fast float %782, %802
  %805 = fmul fast float %800, %790
  %806 = fmul fast float %773, %805
  %807 = fmul fast float %805, %474
  %808 = fmul fast float %805, %776
  %809 = fsub fast float %804, %806
  %810 = fadd fast float %807, %695
  %811 = fmul fast float %810, %473
  %812 = fadd fast float %803, %134
  %813 = fadd fast float %812, %811
  %814 = fadd fast float %783, %808
  %815 = fmul fast float %809, %753
  %816 = call float @dx.op.tertiary.f32(i32 46, float %813, float %756, float %815)  ; FMad(a,b,c)
  %817 = call float @dx.op.tertiary.f32(i32 46, float %814, float %759, float %816)  ; FMad(a,b,c)
  %818 = fadd fast float %817, %762
  %819 = fmul fast float %809, %754
  %820 = call float @dx.op.tertiary.f32(i32 46, float %813, float %757, float %819)  ; FMad(a,b,c)
  %821 = call float @dx.op.tertiary.f32(i32 46, float %814, float %760, float %820)  ; FMad(a,b,c)
  %822 = fadd fast float %821, %763
  %823 = fmul fast float %809, %755
  %824 = call float @dx.op.tertiary.f32(i32 46, float %813, float %758, float %823)  ; FMad(a,b,c)
  %825 = call float @dx.op.tertiary.f32(i32 46, float %814, float %761, float %824)  ; FMad(a,b,c)
  %826 = fadd fast float %825, %764
  %827 = fdiv fast float 1.000000e+00, %826
  %828 = fmul fast float %818, 5.000000e-01
  %829 = fmul fast float %822, -5.000000e-01
  %830 = fmul fast float %828, %827
  %831 = fmul fast float %829, %827
  %832 = fsub fast float 5.000000e-01, %778
  %833 = fadd fast float %832, %830
  %834 = fsub fast float 5.000000e-01, %779
  %835 = fadd fast float %834, %831
  %836 = fsub fast float %827, %777
  %837 = call float @dx.op.dot2.f32(i32 54, float %833, float %835, float %833, float %835)  ; Dot2(ax,ay,bx,by)
  %838 = call float @dx.op.binary.f32(i32 35, float %837, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %839 = call float @dx.op.dot2.f32(i32 54, float %768, float %769, float %768, float %769)  ; Dot2(ax,ay,bx,by)
  %840 = fmul fast float %839, %838
  %841 = call float @dx.op.unary.f32(i32 25, float %840)  ; Rsqrt(value)
  %842 = fmul fast float %841, %833
  %843 = fmul fast float %841, %835
  %844 = fadd fast float %842, %778
  %845 = fadd fast float %843, %779
  %846 = fmul fast float %833, %768
  %847 = fmul fast float %835, %769
  %848 = fmul fast float %846, %846
  %849 = fmul fast float %847, %847
  %850 = fadd fast float %848, %849
  %851 = call float @dx.op.unary.f32(i32 24, float %850)  ; Sqrt(value)
  %852 = fdiv fast float 1.000000e+00, %851
  %853 = fmul fast float %851, 3.906250e-03
  %854 = fmul fast float %238, 0x3F70624DE0000000
  %855 = fadd fast float %854, 0x3F70624DE0000000
  %856 = icmp sgt i32 %703, -1
  br i1 %856, label %857, label %919

; <label>:857                                     ; preds = %707
  br label %858

; <label>:858                                     ; preds = %915, %857
  %859 = phi float [ %890, %915 ], [ %78, %857 ]
  %860 = phi float [ %877, %915 ], [ %78, %857 ]
  %861 = phi float [ %860, %915 ], [ %78, %857 ]
  %862 = phi i32 [ %916, %915 ], [ 0, %857 ]
  %863 = sitofp i32 %862 to float
  %864 = fadd fast float %252, 5.000000e-01
  %865 = call float @dx.op.unary.f32(i32 22, float %864)  ; Frc(value)
  %866 = fadd fast float %863, %865
  %867 = sitofp i32 %703 to float
  %868 = fdiv fast float %866, %867
  %869 = fmul fast float %868, %868
  %870 = call float @dx.op.binary.f32(i32 36, float %869, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %871 = fmul fast float %870, %833
  %872 = fmul fast float %870, %835
  %873 = fmul fast float %870, %836
  %874 = fadd fast float %871, %844
  %875 = fadd fast float %872, %845
  %876 = fadd fast float %873, %777
  %877 = fdiv fast float 1.000000e+00, %876
  %878 = icmp ne i32 %718, 0
  %879 = fmul fast float %853, %870
  %880 = call float @dx.op.binary.f32(i32 36, float %879, float %719)  ; FMin(a,b)
  %881 = select i1 %878, float %880, float 0.000000e+00
  %882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %874, float %875, float undef, float undef, i32 0, i32 0, i32 undef, float %881)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = fcmp fast ogt float %883, -1.000000e+00
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %887 = select i1 %884, float %886, float 1.000000e+00
  %888 = fadd fast float %883, 1.000000e+00
  %889 = fmul fast float %887, %888
  %890 = call float @dx.op.unary.f32(i32 6, float %889)  ; FAbs(value)
  %891 = fmul fast float %890, %855
  %892 = fsub fast float %877, %890
  %893 = fsub fast float %892, %891
  %894 = fcmp fast ogt float %893, 0.000000e+00
  %895 = fcmp fast ogt float %698, 0.000000e+00
  br i1 %895, label %896, label %899, !dx.controlflow.hints !59

; <label>:896                                     ; preds = %858
  %897 = fsub fast float %877, %861
  %898 = call float @dx.op.binary.f32(i32 35, float %897, float %698)  ; FMax(a,b)
  br label %899

; <label>:899                                     ; preds = %896, %858
  %900 = phi float [ %898, %896 ], [ %695, %858 ]
  %901 = fcmp fast olt float %893, %900
  %902 = fcmp uge float %883, -1.000000e+00
  %903 = or i1 %71, %902
  %904 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  %905 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %906 = fcmp fast oeq float %874, %904
  %907 = fcmp fast oeq float %875, %905
  %908 = and i1 %906, %907
  %909 = and i1 %903, %908
  %910 = and i1 %894, %901
  %911 = and i1 %910, %909
  %912 = fcmp fast ogt float %870, %852
  %913 = and i1 %912, %911
  %914 = zext i1 %913 to i32
  br i1 %913, label %918, label %915, !dx.controlflow.hints !60

; <label>:915                                     ; preds = %899
  %916 = add nuw nsw i32 %862, 1
  %917 = icmp slt i32 %862, %703
  br i1 %917, label %858, label %918

; <label>:918                                     ; preds = %915, %899
  br label %919

; <label>:919                                     ; preds = %918, %707
  %920 = phi i32 [ 0, %707 ], [ %914, %918 ]
  %921 = phi float [ %78, %707 ], [ %890, %918 ]
  %922 = phi float [ %78, %707 ], [ %859, %918 ]
  %923 = phi float [ %78, %707 ], [ %877, %918 ]
  %924 = phi float [ %78, %707 ], [ %860, %918 ]
  %925 = fsub fast float %924, %922
  %926 = fsub fast float %923, %921
  %927 = fsub fast float %925, %926
  %928 = fcmp fast une float %927, 0.000000e+00
  %929 = fmul fast float %925, %923
  %930 = fmul fast float %924, %926
  %931 = fsub fast float %929, %930
  %932 = fdiv fast float 1.000000e+00, %927
  %933 = fmul fast float %931, %932
  %934 = select i1 %928, float %933, float %923
  %935 = fdiv fast float 1.000000e+00, %934
  %936 = fsub fast float %935, %777
  %937 = fdiv fast float %936, %836
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fmul fast float %938, %833
  %940 = fmul fast float %938, %835
  %941 = fadd fast float %939, %844
  %942 = fadd fast float %940, %845
  %943 = fadd fast float %941, -5.000000e-01
  %944 = fadd fast float %942, -5.000000e-01
  %945 = call float @dx.op.unary.f32(i32 6, float %943)  ; FAbs(value)
  %946 = call float @dx.op.unary.f32(i32 6, float %944)  ; FAbs(value)
  %947 = fadd fast float %945, -5.000000e-01
  %948 = fadd fast float %946, -5.000000e-01
  %949 = call float @dx.op.binary.f32(i32 35, float %947, float %948)  ; FMax(a,b)
  %950 = fcmp fast olt float %949, 0.000000e+00
  %951 = icmp ne i32 %920, 0
  %952 = and i1 %951, %950
  %953 = select i1 %952, float 0.000000e+00, float 1.000000e+00
  br label %954

; <label>:954                                     ; preds = %919, %690
  %955 = phi float [ %953, %919 ], [ 1.000000e+00, %690 ]
  %956 = fmul fast float %955, %683
  %957 = fmul fast float %955, %683
  %958 = fmul fast float %955, %683
  br label %959

; <label>:959                                     ; preds = %954, %682
  %960 = phi float [ %956, %954 ], [ %683, %682 ]
  %961 = phi float [ %957, %954 ], [ %683, %682 ]
  %962 = phi float [ %958, %954 ], [ %683, %682 ]
  %963 = call float @dx.op.binary.f32(i32 36, float %961, float %962)  ; FMin(a,b)
  %964 = call float @dx.op.binary.f32(i32 36, float %960, float %963)  ; FMin(a,b)
  %965 = fcmp fast ogt float %964, 0x3F10000000000000
  %966 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %965)  ; WaveAnyTrue(cond)
  %967 = icmp ugt i32 %275, 63
  br i1 %967, label %997, label %968, !dx.controlflow.hints !61

; <label>:968                                     ; preds = %959
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %969 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %969, label %970, label %973, !dx.controlflow.hints !62

; <label>:970                                     ; preds = %968
  %971 = zext i1 %966 to i32
  %972 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %276
  store i32 %971, i32 addrspace(3)* %972, align 4, !tbaa !36
  br label %973

; <label>:973                                     ; preds = %970, %968
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %974 = icmp eq i32 %275, 32
  br i1 %974, label %975, label %981, !dx.controlflow.hints !63

; <label>:975                                     ; preds = %973
  %976 = xor i32 %276, 1
  %977 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %976
  %978 = load i32, i32 addrspace(3)* %977, align 4, !tbaa !36
  %979 = icmp ne i32 %978, 0
  %980 = or i1 %966, %979
  br label %997

; <label>:981                                     ; preds = %973
  %982 = icmp eq i32 %275, 16
  br i1 %982, label %983, label %997, !dx.controlflow.hints !64

; <label>:983                                     ; preds = %981
  %984 = xor i32 %276, 1
  %985 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %984
  %986 = load i32, i32 addrspace(3)* %985, align 4, !tbaa !36
  %987 = xor i32 %276, 2
  %988 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %987
  %989 = load i32, i32 addrspace(3)* %988, align 4, !tbaa !36
  %990 = or i32 %989, %986
  %991 = xor i32 %276, 3
  %992 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %991
  %993 = load i32, i32 addrspace(3)* %992, align 4, !tbaa !36
  %994 = or i32 %990, %993
  %995 = icmp ne i32 %994, 0
  %996 = or i1 %966, %995
  br label %997

; <label>:997                                     ; preds = %983, %981, %975, %959
  %998 = phi i1 [ %980, %975 ], [ %996, %983 ], [ %966, %959 ], [ false, %981 ]
  %999 = select i1 %998, i32 %411, i32 0
  %1000 = or i32 %406, %999
  %1001 = lshr i32 %257, 5
  %1002 = lshr i32 %258, 5
  %1003 = fcmp fast olt float %960, 0x3F10000000000000
  %1004 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1003)  ; WaveAllTrue(cond)
  br i1 %967, label %1036, label %1005, !dx.controlflow.hints !65

; <label>:1005                                    ; preds = %997
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1006 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1006, label %1007, label %1010, !dx.controlflow.hints !66

; <label>:1007                                    ; preds = %1005
  %1008 = zext i1 %1004 to i32
  %1009 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %276
  store i32 %1008, i32 addrspace(3)* %1009, align 4, !tbaa !36
  br label %1010

; <label>:1010                                    ; preds = %1007, %1005
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1011 = icmp eq i32 %275, 32
  br i1 %1011, label %1012, label %1018, !dx.controlflow.hints !67

; <label>:1012                                    ; preds = %1010
  %1013 = xor i32 %276, 1
  %1014 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1013
  %1015 = load i32, i32 addrspace(3)* %1014, align 4, !tbaa !36
  %1016 = icmp ne i32 %1015, 0
  %1017 = and i1 %1004, %1016
  br label %1036

; <label>:1018                                    ; preds = %1010
  %1019 = icmp eq i32 %275, 16
  br i1 %1019, label %1020, label %1036, !dx.controlflow.hints !68

; <label>:1020                                    ; preds = %1018
  %1021 = xor i32 %276, 1
  %1022 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1021
  %1023 = load i32, i32 addrspace(3)* %1022, align 4, !tbaa !36
  %1024 = icmp ne i32 %1023, 0
  %1025 = and i1 %1004, %1024
  %1026 = xor i32 %276, 2
  %1027 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1026
  %1028 = load i32, i32 addrspace(3)* %1027, align 4, !tbaa !36
  %1029 = icmp ne i32 %1028, 0
  %1030 = and i1 %1025, %1029
  %1031 = xor i32 %276, 3
  %1032 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1031
  %1033 = load i32, i32 addrspace(3)* %1032, align 4, !tbaa !36
  %1034 = icmp ne i32 %1033, 0
  %1035 = and i1 %1030, %1034
  br label %1036

; <label>:1036                                    ; preds = %1020, %1018, %1012, %997
  %1037 = phi i1 [ %1017, %1012 ], [ %1035, %1020 ], [ %1004, %997 ], [ false, %1018 ]
  %1038 = fcmp fast ogt float %960, 0x3FEFFF8000000000
  %1039 = call i1 @dx.op.waveAllTrue(i32 114, i1 %1038)  ; WaveAllTrue(cond)
  br i1 %967, label %1071, label %1040, !dx.controlflow.hints !65

; <label>:1040                                    ; preds = %1036
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1041 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1041, label %1042, label %1045, !dx.controlflow.hints !66

; <label>:1042                                    ; preds = %1040
  %1043 = zext i1 %1039 to i32
  %1044 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %276
  store i32 %1043, i32 addrspace(3)* %1044, align 4, !tbaa !36
  br label %1045

; <label>:1045                                    ; preds = %1042, %1040
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1046 = icmp eq i32 %275, 32
  br i1 %1046, label %1047, label %1053, !dx.controlflow.hints !67

; <label>:1047                                    ; preds = %1045
  %1048 = xor i32 %276, 1
  %1049 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1048
  %1050 = load i32, i32 addrspace(3)* %1049, align 4, !tbaa !36
  %1051 = icmp ne i32 %1050, 0
  %1052 = and i1 %1039, %1051
  br label %1071

; <label>:1053                                    ; preds = %1045
  %1054 = icmp eq i32 %275, 16
  br i1 %1054, label %1055, label %1071, !dx.controlflow.hints !68

; <label>:1055                                    ; preds = %1053
  %1056 = xor i32 %276, 1
  %1057 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1056
  %1058 = load i32, i32 addrspace(3)* %1057, align 4, !tbaa !36
  %1059 = icmp ne i32 %1058, 0
  %1060 = and i1 %1039, %1059
  %1061 = xor i32 %276, 2
  %1062 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1061
  %1063 = load i32, i32 addrspace(3)* %1062, align 4, !tbaa !36
  %1064 = icmp ne i32 %1063, 0
  %1065 = and i1 %1060, %1064
  %1066 = xor i32 %276, 3
  %1067 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1066
  %1068 = load i32, i32 addrspace(3)* %1067, align 4, !tbaa !36
  %1069 = icmp ne i32 %1068, 0
  %1070 = and i1 %1065, %1069
  br label %1071

; <label>:1071                                    ; preds = %1055, %1053, %1047, %1036
  %1072 = phi i1 [ %1052, %1047 ], [ %1070, %1055 ], [ %1039, %1036 ], [ false, %1053 ]
  %1073 = or i1 %1037, %1072
  %1074 = lshr i32 %258, 1
  %1075 = and i32 %1074, 8
  %1076 = lshr i32 %257, 2
  %1077 = and i32 %1076, 4
  %1078 = or i32 %1077, %37
  %1079 = or i32 %1078, %1075
  %1080 = icmp eq i32 %24, 0
  br i1 %1080, label %1081, label %1123, !dx.controlflow.hints !69

; <label>:1081                                    ; preds = %1071
  %1082 = shl i32 1, %1079
  %1083 = select i1 %1072, i32 %1082, i32 0
  %1084 = shl i32 65536, %1079
  %1085 = select i1 %1037, i32 %1084, i32 0
  %1086 = or i32 %1083, %1085
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1090, label %1088, !dx.controlflow.hints !70

; <label>:1088                                    ; preds = %1081
  %1089 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %1001, i32 %1002, i32 %409, i32 %1086)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1090

; <label>:1090                                    ; preds = %1088, %1081
  br i1 %1073, label %1120, label %1091

; <label>:1091                                    ; preds = %1090
  br label %1092

; <label>:1092                                    ; preds = %1117, %1091
  %1093 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %1001, i32 %1002, i32 %409, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %1094 = and i32 %1093, 3
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1096, label %1117, !dx.controlflow.hints !71

; <label>:1096                                    ; preds = %1092
  %1097 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.i32 %1098, 3
  %1100 = call i32 @dx.op.binary.i32(i32 40, i32 %1099, i32 %1097)  ; UMin(a,b)
  %1101 = extractvalue %dx.types.CBufRet.i32 %1098, 2
  %1102 = udiv i32 %1100, %1101
  %1103 = urem i32 %1100, %1101
  %1104 = extractvalue %dx.types.CBufRet.i32 %1098, 1
  %1105 = urem i32 %1103, %1104
  %1106 = udiv i32 %1103, %1104
  %1107 = shl i32 %1105, 6
  %1108 = and i32 %1107, 32704
  %1109 = shl i32 %1106, 15
  %1110 = and i32 %1109, 8355840
  %1111 = shl i32 %1102, 23
  %1112 = and i32 %1111, 2139095040
  %1113 = or i32 %1112, %1108
  %1114 = or i32 %1113, %1110
  %1115 = or i32 %1114, 3
  %1116 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %1001, i32 %1002, i32 %409, i32 %1115)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1120

; <label>:1117                                    ; preds = %1092
  %1118 = icmp eq i32 %1094, 3
  br i1 %1118, label %1119, label %1092, !dx.controlflow.hints !72

; <label>:1119                                    ; preds = %1117
  br label %1120

; <label>:1120                                    ; preds = %1119, %1096, %1090
  %1121 = phi i32 [ 0, %1090 ], [ %1115, %1096 ], [ %1093, %1119 ]
  br i1 %278, label %1123, label %1122, !dx.controlflow.hints !73

; <label>:1122                                    ; preds = %1120
  store i32 %1121, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %1123

; <label>:1123                                    ; preds = %1122, %1120, %1071
  %1124 = phi i32 [ %1121, %1120 ], [ %1121, %1122 ], [ 0, %1071 ]
  br i1 %278, label %1125, label %1127, !dx.controlflow.hints !74

; <label>:1125                                    ; preds = %1123
  %1126 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %1124)  ; WaveReadLaneFirst(value)
  br label %1129

; <label>:1127                                    ; preds = %1123
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1128 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %1129

; <label>:1129                                    ; preds = %1127, %1125
  %1130 = phi i32 [ %1128, %1127 ], [ %1126, %1125 ]
  br i1 %1073, label %1152, label %1131, !dx.controlflow.hints !75

; <label>:1131                                    ; preds = %1129
  %1132 = lshr i32 %257, 1
  %1133 = and i32 %1132, 15
  %1134 = and i32 %1074, 15
  %1135 = and i32 %257, 1
  %1136 = shl i32 %258, 1
  %1137 = and i32 %1136, 2
  %1138 = or i32 %1137, %1135
  %1139 = lshr i32 %1130, 2
  %1140 = and i32 %1139, 8176
  %1141 = lshr i32 %1130, 11
  %1142 = and i32 %1141, 4080
  %1143 = or i32 %1140, %1133
  %1144 = or i32 %1142, %1134
  %1145 = lshr i32 %1130, 21
  %1146 = and i32 %1145, 1020
  %1147 = or i32 %1138, %1146
  %1148 = fmul fast float %960, 2.550000e+02
  %1149 = fadd fast float %1148, %251
  %1150 = call float @dx.op.unary.f32(i32 27, float %1149)  ; Round_ni(value)
  %1151 = fmul fast float %1150, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %1143, i32 %1144, i32 %1147, float %1151, float %1151, float %1151, float %1151, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1152

; <label>:1152                                    ; preds = %1131, %1129
  %1153 = icmp eq i32 %407, %411
  br i1 %1153, label %1154, label %405, !llvm.loop !76

; <label>:1154                                    ; preds = %1152
  br label %1155

; <label>:1155                                    ; preds = %1154, %401
  %1156 = phi i32 [ 0, %401 ], [ %1000, %1154 ]
  %1157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.i32 %1157, 0
  %1159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %263, i32 %1158, i32 %342)  ; UMad(a,b,c)
  %1160 = shl i32 %1159, 2
  %1161 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1160, i32 undef, i32 undef, i32 %1156)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1162 = add i32 %342, 1
  %1163 = icmp ugt i32 %1162, %338
  br i1 %1163, label %1164, label %341

; <label>:1164                                    ; preds = %1155
  br label %1165

; <label>:1165                                    ; preds = %1164, %334, %58
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #1

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveAllTrue(i32, i1) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #1

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
!33 = !{i32 0, i64 524560, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}

