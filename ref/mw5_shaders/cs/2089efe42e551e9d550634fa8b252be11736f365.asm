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
; shader hash: d87031d86eaa94af695e2f66eabc8dd9
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
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fmul fast float %183, 0x3FE3C6EF40000000
  %185 = frem fast float %67, 2.560000e+02
  %186 = frem fast float %68, 2.560000e+02
  %187 = fptoui float %185 to i32
  %188 = fptoui float %186 to i32
  %189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %187, i32 %188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fadd fast float %190, %184
  %192 = call float @dx.op.unary.f32(i32 22, float %191)  ; Frc(value)
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 0
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %721, label %196, !dx.controlflow.hints !40

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
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = lshr i32 %212, 16
  %214 = and i32 %212, 65535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 -1, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %215 = atomicrmw umin i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %213 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %216 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = atomicrmw umax i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %214 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %219 = lshr i32 %216, 5
  %220 = lshr i32 %218, 5
  %221 = call i32 @dx.op.binary.i32(i32 40, i32 %220, i32 %205)  ; UMin(a,b)
  %222 = icmp ugt i32 %219, %221
  br i1 %222, label %721, label %223

; <label>:223                                     ; preds = %196
  br label %224

; <label>:224                                     ; preds = %711, %223
  %225 = phi i32 [ %718, %711 ], [ %219, %223 ]
  %226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.i32 %226, 0
  %228 = call i32 @dx.op.tertiary.i32(i32 49, i32 %203, i32 %227, i32 %225)  ; UMad(a,b,c)
  %229 = shl i32 %228, 2
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %225, 5
  %233 = sub nsw i32 %213, %232
  %234 = call i32 @dx.op.binary.i32(i32 37, i32 %233, i32 0)  ; IMax(a,b)
  %235 = call i32 @dx.op.binary.i32(i32 38, i32 %234, i32 31)  ; IMin(a,b)
  %236 = sub nsw i32 1, %213
  %237 = add nsw i32 %236, %214
  %238 = call i32 @dx.op.binary.i32(i32 37, i32 %237, i32 0)  ; IMax(a,b)
  %239 = call i32 @dx.op.binary.i32(i32 38, i32 %238, i32 32)  ; IMin(a,b)
  %240 = and i32 %239, 31
  %241 = shl i32 -1, %240
  %242 = xor i32 %241, -1
  %243 = and i32 %235, 31
  %244 = shl i32 %242, %243
  %245 = icmp eq i32 %239, 32
  %246 = select i1 %245, i32 -1, i32 %244
  %247 = and i32 %246, %231
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %248 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %247 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %250 = icmp eq i32 %24, 0
  br i1 %250, label %251, label %252, !dx.controlflow.hints !41

; <label>:251                                     ; preds = %224
  store i32 %249, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  br label %252

; <label>:252                                     ; preds = %251, %224
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %253 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %711, label %255

; <label>:255                                     ; preds = %252
  br label %256

; <label>:256                                     ; preds = %708, %255
  %257 = phi i32 [ %540, %708 ], [ 0, %255 ]
  %258 = phi i32 [ %263, %708 ], [ %253, %255 ]
  %259 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %258)  ; FirstbitLo(value)
  %260 = add i32 %259, %232
  %261 = and i32 %259, 31
  %262 = shl i32 1, %261
  %263 = xor i32 %262, %258
  %264 = mul i32 %260, 112
  %265 = add i32 %264, 16
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = add i32 %264, 28
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = add i32 %264, 32
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = add i32 %264, 48
  %279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = extractvalue %dx.types.ResRet.f32 %279, 1
  %282 = extractvalue %dx.types.ResRet.f32 %279, 2
  %283 = extractvalue %dx.types.ResRet.f32 %279, 3
  %284 = add i32 %264, 64
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = extractvalue %dx.types.ResRet.f32 %285, 3
  %290 = add i32 %264, 92
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = uitofp i32 %293 to float
  %295 = lshr i32 %292, 16
  %296 = uitofp i32 %295 to float
  %297 = and i32 %272, 65535
  %298 = and i32 %272, 50331648
  %299 = icmp eq i32 %298, 33554432
  %300 = call float @dx.op.dot3.f32(i32 55, float %275, float %276, float %277, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = fsub fast float %133, %280
  %302 = fsub fast float %134, %281
  %303 = fsub fast float %135, %282
  %304 = call float @dx.op.dot3.f32(i32 55, float %301, float %302, float %303, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = fdiv fast float %304, %300
  %306 = call float @dx.op.binary.f32(i32 35, float %305, float -1.000000e+00)  ; FMax(a,b)
  %307 = call float @dx.op.binary.f32(i32 36, float %306, float 1.000000e+00)  ; FMin(a,b)
  %308 = fmul fast float %307, %275
  %309 = fmul fast float %307, %276
  %310 = fmul fast float %307, %277
  %311 = fadd fast float %308, %280
  %312 = fadd fast float %309, %281
  %313 = fadd fast float %310, %282
  %314 = fsub fast float %311, %133
  %315 = fsub fast float %312, %134
  %316 = fsub fast float %313, %135
  %317 = call float @dx.op.dot3.f32(i32 55, float %314, float %315, float %316, float %314, float %315, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %319 = fdiv fast float 1.000000e+00, %318
  %320 = fmul fast float %314, %319
  %321 = fmul fast float %315, %319
  %322 = fmul fast float %316, %319
  br i1 %299, label %323, label %347, !dx.controlflow.hints !42

; <label>:323                                     ; preds = %256
  %324 = fmul fast float %288, %267
  %325 = fmul fast float %288, %268
  %326 = fmul fast float %288, %269
  %327 = fsub fast float %324, %133
  %328 = fadd fast float %327, %311
  %329 = fsub fast float %325, %134
  %330 = fadd fast float %329, %312
  %331 = fsub fast float %326, %135
  %332 = fadd fast float %331, %313
  %333 = call float @dx.op.dot3.f32(i32 55, float %328, float %330, float %332, float %328, float %330, float %332)  ; Dot3(ax,ay,az,bx,by,bz)
  %334 = call float @dx.op.unary.f32(i32 25, float %333)  ; Rsqrt(value)
  %335 = fmul fast float %334, %328
  %336 = fmul fast float %334, %330
  %337 = fmul fast float %334, %332
  %338 = fsub fast float %133, %311
  %339 = fsub fast float %134, %312
  %340 = fsub fast float %135, %313
  %341 = fsub fast float -0.000000e+00, %338
  %342 = fsub fast float -0.000000e+00, %339
  %343 = fsub fast float -0.000000e+00, %340
  %344 = call float @dx.op.dot3.f32(i32 55, float %341, float %342, float %343, float %267, float %268, float %269)  ; Dot3(ax,ay,az,bx,by,bz)
  %345 = fcmp fast ogt float %344, 0.000000e+00
  %346 = uitofp i1 %345 to float
  br label %347

; <label>:347                                     ; preds = %323, %256
  %348 = phi float [ %346, %323 ], [ 1.000000e+00, %256 ]
  %349 = phi float [ %335, %323 ], [ %320, %256 ]
  %350 = phi float [ %336, %323 ], [ %321, %256 ]
  %351 = phi float [ %337, %323 ], [ %322, %256 ]
  %352 = call float @dx.op.dot3.f32(i32 55, float %267, float %268, float %269, float %349, float %350, float %351)  ; Dot3(ax,ay,az,bx,by,bz)
  %353 = fmul fast float %352, %352
  %354 = call float @dx.op.unary.f32(i32 7, float %353)  ; Saturate(value)
  %355 = fsub fast float 1.000000e+00, %354
  %356 = fmul fast float %355, 5.000000e-01
  %357 = fcmp fast ogt float %352, 0.000000e+00
  %358 = fsub fast float 1.000000e+00, %356
  %359 = select i1 %357, float %356, float %358
  %360 = fmul fast float %359, %296
  %361 = fadd fast float %360, %294
  %362 = fmul fast float %361, 0x3EF0001000000000
  %363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %362, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = fmul fast float %352, %286
  %366 = fadd fast float %365, %287
  %367 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %368 = select i1 %299, float 1.000000e+00, float %367
  %369 = select i1 %299, float %367, float 1.000000e+00
  %370 = fmul fast float %318, %283
  %371 = fsub fast float 1.000000e+00, %370
  %372 = fmul fast float %371, %289
  %373 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  %374 = fmul fast float %373, %369
  %375 = fmul fast float %374, 2.000000e+00
  %376 = fsub fast float 3.000000e+00, %375
  %377 = fmul fast float %364, %348
  %378 = fmul fast float %374, %374
  %379 = fmul fast float %378, %377
  %380 = fmul fast float %379, %376
  %381 = icmp ne i32 %297, 255
  %382 = call float @dx.op.binary.f32(i32 36, float %380, float %380)  ; FMin(a,b)
  %383 = call float @dx.op.binary.f32(i32 36, float %380, float %382)  ; FMin(a,b)
  %384 = fcmp fast ogt float %383, 0.000000e+00
  %385 = and i1 %381, %384
  br i1 %385, label %386, label %530, !dx.controlflow.hints !43

; <label>:386                                     ; preds = %347
  %387 = mul nuw nsw i32 %297, 176
  %388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = extractvalue %dx.types.ResRet.f32 %388, 3
  %393 = add nuw nsw i32 %387, 16
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = add nuw nsw i32 %387, 32
  %398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = extractvalue %dx.types.ResRet.f32 %398, 2
  %402 = add nuw nsw i32 %387, 48
  %403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = extractvalue %dx.types.ResRet.f32 %403, 1
  %406 = extractvalue %dx.types.ResRet.f32 %403, 2
  %407 = extractvalue %dx.types.ResRet.f32 %403, 3
  %408 = add nuw nsw i32 %387, 64
  %409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = extractvalue %dx.types.ResRet.f32 %409, 2
  %413 = extractvalue %dx.types.ResRet.f32 %409, 3
  %414 = add nuw nsw i32 %387, 80
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = extractvalue %dx.types.ResRet.f32 %415, 3
  %420 = add nuw nsw i32 %387, 96
  %421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = extractvalue %dx.types.ResRet.f32 %421, 3
  %426 = bitcast float %396 to i32
  %427 = fmul fast float %179, %401
  %428 = fmul fast float %180, %401
  %429 = fmul fast float %181, %401
  %430 = fadd fast float %427, %133
  %431 = fadd fast float %428, %134
  %432 = fadd fast float %429, %135
  %433 = fmul fast float %430, %404
  %434 = call float @dx.op.tertiary.f32(i32 46, float %431, float %410, float %433)  ; FMad(a,b,c)
  %435 = call float @dx.op.tertiary.f32(i32 46, float %432, float %416, float %434)  ; FMad(a,b,c)
  %436 = fadd fast float %435, %422
  %437 = fmul fast float %430, %405
  %438 = call float @dx.op.tertiary.f32(i32 46, float %431, float %411, float %437)  ; FMad(a,b,c)
  %439 = call float @dx.op.tertiary.f32(i32 46, float %432, float %417, float %438)  ; FMad(a,b,c)
  %440 = fadd fast float %439, %423
  %441 = fmul fast float %430, %406
  %442 = call float @dx.op.tertiary.f32(i32 46, float %431, float %412, float %441)  ; FMad(a,b,c)
  %443 = call float @dx.op.tertiary.f32(i32 46, float %432, float %418, float %442)  ; FMad(a,b,c)
  %444 = fadd fast float %443, %424
  %445 = fmul fast float %430, %407
  %446 = call float @dx.op.tertiary.f32(i32 46, float %431, float %413, float %445)  ; FMad(a,b,c)
  %447 = call float @dx.op.tertiary.f32(i32 46, float %432, float %419, float %446)  ; FMad(a,b,c)
  %448 = fadd fast float %447, %425
  %449 = fdiv fast float %436, %448
  %450 = fdiv fast float %440, %448
  %451 = fdiv fast float %444, %448
  %452 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %451)  ; FMax(a,b)
  %453 = fmul fast float %192, 0x401921FB60000000
  %454 = call float @dx.op.unary.f32(i32 13, float %453)  ; Sin(value)
  %455 = call float @dx.op.unary.f32(i32 12, float %453)  ; Cos(value)
  %456 = fmul fast float %455, %400
  %457 = call float @dx.op.tertiary.f32(i32 46, float %454, float %400, float 0.000000e+00)  ; FMad(a,b,c)
  %458 = fmul fast float %400, %454
  %459 = fsub fast float -0.000000e+00, %458
  %460 = call float @dx.op.tertiary.f32(i32 46, float %455, float %400, float 0.000000e+00)  ; FMad(a,b,c)
  br label %461

; <label>:461                                     ; preds = %461, %386
  %462 = phi float [ 0.000000e+00, %386 ], [ %494, %461 ]
  %463 = phi float [ 0.000000e+00, %386 ], [ %496, %461 ]
  %464 = phi i32 [ 0, %386 ], [ %497, %461 ]
  %465 = mul i32 %464, 2
  %466 = add i32 0, %465
  %467 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %466
  %468 = load float, float* %467, align 4
  %469 = mul i32 %464, 2
  %470 = add i32 1, %469
  %471 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %470
  %472 = load float, float* %471, align 4
  %473 = fmul fast float %456, %468
  %474 = call float @dx.op.tertiary.f32(i32 46, float %472, float %459, float %473)  ; FMad(a,b,c)
  %475 = fmul fast float %468, %457
  %476 = call float @dx.op.tertiary.f32(i32 46, float %472, float %460, float %475)  ; FMad(a,b,c)
  %477 = fadd fast float %474, %449
  %478 = fadd fast float %476, %450
  %479 = fmul fast float %477, %395
  %480 = fmul fast float %478, %395
  %481 = call float @dx.op.binary.f32(i32 35, float %479, float %391)  ; FMax(a,b)
  %482 = call float @dx.op.binary.f32(i32 35, float %480, float %391)  ; FMax(a,b)
  %483 = call float @dx.op.binary.f32(i32 36, float %481, float %392)  ; FMin(a,b)
  %484 = call float @dx.op.binary.f32(i32 36, float %482, float %392)  ; FMin(a,b)
  %485 = fadd fast float %483, %389
  %486 = fadd fast float %484, %390
  %487 = uitofp i32 %426 to float
  %488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %485, float %486, float %487, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = fsub fast float %489, %452
  %491 = fsub fast float %490, %399
  %492 = fcmp fast ogt float %491, 0.000000e+00
  %493 = select i1 %492, float 1.000000e+00, float 0.000000e+00
  %494 = fadd fast float %493, %462
  %495 = select i1 %492, float %491, float 0.000000e+00
  %496 = fadd fast float %495, %463
  %497 = add nuw nsw i32 %464, 1
  %498 = icmp eq i32 %497, 8
  br i1 %498, label %499, label %461

; <label>:499                                     ; preds = %461
  %500 = fdiv fast float 1.000000e+00, %494
  %501 = fmul fast float %500, %496
  %502 = fdiv fast float 1.000000e+00, %452
  %503 = fmul fast float %501, %502
  %504 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %505 = call float @dx.op.binary.f32(i32 35, float %504, float 0.000000e+00)  ; FMax(a,b)
  %506 = fmul fast float %494, 1.250000e-01
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = fmul fast float %507, 2.000000e+00
  %509 = fadd fast float %508, -1.000000e+00
  %510 = fcmp fast ogt float %509, 0.000000e+00
  %511 = fcmp fast olt float %509, 0.000000e+00
  %512 = zext i1 %510 to i32
  %513 = zext i1 %511 to i32
  %514 = sub nsw i32 %512, %513
  %515 = sitofp i32 %514 to float
  %516 = fmul fast float %515, %509
  %517 = fsub fast float 1.000000e+00, %516
  %518 = fmul fast float %517, %517
  %519 = fmul fast float %518, %517
  %520 = fsub fast float %517, %519
  %521 = fmul fast float %520, %505
  %522 = fsub fast float 1.000000e+00, %519
  %523 = fsub fast float %522, %521
  %524 = fmul fast float %515, 5.000000e-01
  %525 = fmul fast float %524, %523
  %526 = fsub fast float -5.000000e-01, %525
  %527 = fmul fast float %526, %368
  %528 = fadd fast float %527, 1.000000e+00
  %529 = fmul fast float %528, %380
  br label %530

; <label>:530                                     ; preds = %499, %347
  %531 = phi float [ %529, %499 ], [ %380, %347 ]
  %532 = call float @dx.op.binary.f32(i32 36, float %531, float %531)  ; FMin(a,b)
  %533 = call float @dx.op.binary.f32(i32 36, float %531, float %532)  ; FMin(a,b)
  %534 = fcmp fast ogt float %533, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 0, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %535 = zext i1 %534 to i32
  %536 = atomicrmw or i32 addrspace(3)* @"\01?gsLightIterator@@3IA", i32 %535 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %537 = load i32, i32 addrspace(3)* @"\01?gsLightIterator@@3IA", align 4, !tbaa !36
  %538 = icmp eq i32 %537, 0
  %539 = select i1 %538, i32 0, i32 %262
  %540 = or i32 %257, %539
  %541 = lshr i32 %197, 5
  %542 = lshr i32 %198, 5
  %543 = fcmp fast olt float %531, 0x3F10000000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %544 = and i32 %24, 31
  %545 = zext i1 %543 to i32
  %546 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %24
  store i32 %545, i32 addrspace(3)* %546, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %547 = icmp ult i32 %544, 16
  br i1 %547, label %548, label %554, !dx.controlflow.hints !44

; <label>:548                                     ; preds = %530
  %549 = add i32 %24, 16
  %550 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %549
  %551 = load i32, i32 addrspace(3)* %550, align 4, !tbaa !36
  %552 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %553 = and i32 %552, %551
  store i32 %553, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %554

; <label>:554                                     ; preds = %548, %530
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %555 = icmp ult i32 %544, 8
  br i1 %555, label %556, label %562, !dx.controlflow.hints !45

; <label>:556                                     ; preds = %554
  %557 = add i32 %24, 8
  %558 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %557
  %559 = load i32, i32 addrspace(3)* %558, align 4, !tbaa !36
  %560 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %561 = and i32 %560, %559
  store i32 %561, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %562

; <label>:562                                     ; preds = %556, %554
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %563 = icmp ult i32 %544, 4
  br i1 %563, label %564, label %570, !dx.controlflow.hints !46

; <label>:564                                     ; preds = %562
  %565 = add i32 %24, 4
  %566 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %565
  %567 = load i32, i32 addrspace(3)* %566, align 4, !tbaa !36
  %568 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %569 = and i32 %568, %567
  store i32 %569, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %570

; <label>:570                                     ; preds = %564, %562
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %571 = icmp ult i32 %544, 2
  br i1 %571, label %572, label %578, !dx.controlflow.hints !47

; <label>:572                                     ; preds = %570
  %573 = add i32 %24, 2
  %574 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %573
  %575 = load i32, i32 addrspace(3)* %574, align 4, !tbaa !36
  %576 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %577 = and i32 %576, %575
  store i32 %577, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %578

; <label>:578                                     ; preds = %572, %570
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %579 = icmp eq i32 %544, 0
  br i1 %579, label %580, label %586, !dx.controlflow.hints !48

; <label>:580                                     ; preds = %578
  %581 = add i32 %24, 1
  %582 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %581
  %583 = load i32, i32 addrspace(3)* %582, align 4, !tbaa !36
  %584 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %585 = and i32 %584, %583
  store i32 %585, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %586

; <label>:586                                     ; preds = %580, %578
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %587 = and i32 %24, -64
  %588 = or i32 %587, 32
  %589 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %587
  %590 = load i32, i32 addrspace(3)* %589, align 4, !tbaa !36
  %591 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %588
  %592 = load i32, i32 addrspace(3)* %591, align 4, !tbaa !36
  %593 = and i32 %592, %590
  %594 = icmp ne i32 %593, 0
  %595 = fcmp fast ogt float %531, 0x3FEFFF8000000000
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %596 = zext i1 %595 to i32
  store i32 %596, i32 addrspace(3)* %546, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %547, label %597, label %603, !dx.controlflow.hints !44

; <label>:597                                     ; preds = %586
  %598 = add i32 %24, 16
  %599 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %598
  %600 = load i32, i32 addrspace(3)* %599, align 4, !tbaa !36
  %601 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %602 = and i32 %601, %600
  store i32 %602, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %603

; <label>:603                                     ; preds = %597, %586
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %555, label %604, label %610, !dx.controlflow.hints !45

; <label>:604                                     ; preds = %603
  %605 = add i32 %24, 8
  %606 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %605
  %607 = load i32, i32 addrspace(3)* %606, align 4, !tbaa !36
  %608 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %609 = and i32 %608, %607
  store i32 %609, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %610

; <label>:610                                     ; preds = %604, %603
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %563, label %611, label %617, !dx.controlflow.hints !46

; <label>:611                                     ; preds = %610
  %612 = add i32 %24, 4
  %613 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %612
  %614 = load i32, i32 addrspace(3)* %613, align 4, !tbaa !36
  %615 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %616 = and i32 %615, %614
  store i32 %616, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %617

; <label>:617                                     ; preds = %611, %610
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %571, label %618, label %624, !dx.controlflow.hints !47

; <label>:618                                     ; preds = %617
  %619 = add i32 %24, 2
  %620 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %619
  %621 = load i32, i32 addrspace(3)* %620, align 4, !tbaa !36
  %622 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %623 = and i32 %622, %621
  store i32 %623, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %624

; <label>:624                                     ; preds = %618, %617
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %579, label %625, label %631, !dx.controlflow.hints !48

; <label>:625                                     ; preds = %624
  %626 = add i32 %24, 1
  %627 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %626
  %628 = load i32, i32 addrspace(3)* %627, align 4, !tbaa !36
  %629 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !36
  %630 = and i32 %629, %628
  store i32 %630, i32 addrspace(3)* %546, align 4, !tbaa !36
  br label %631

; <label>:631                                     ; preds = %625, %624
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %632 = load i32, i32 addrspace(3)* %589, align 4, !tbaa !36
  %633 = load i32, i32 addrspace(3)* %591, align 4, !tbaa !36
  %634 = and i32 %633, %632
  %635 = or i32 %634, %593
  %636 = icmp eq i32 %635, 0
  %637 = lshr i32 %198, 1
  %638 = and i32 %637, 8
  %639 = lshr i32 %197, 2
  %640 = and i32 %639, 4
  %641 = or i32 %640, %37
  %642 = or i32 %641, %638
  br i1 %250, label %643, label %685, !dx.controlflow.hints !49

; <label>:643                                     ; preds = %631
  %644 = icmp ne i32 %634, 0
  %645 = shl i32 1, %642
  %646 = select i1 %644, i32 %645, i32 0
  %647 = shl i32 65536, %642
  %648 = select i1 %594, i32 %647, i32 0
  %649 = or i32 %646, %648
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %653, label %651, !dx.controlflow.hints !50

; <label>:651                                     ; preds = %643
  %652 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %541, i32 %542, i32 %260, i32 %649)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %653

; <label>:653                                     ; preds = %651, %643
  br i1 %636, label %654, label %683

; <label>:654                                     ; preds = %653
  br label %655

; <label>:655                                     ; preds = %680, %654
  %656 = call i32 @dx.op.atomicCompareExchange.i32(i32 79, %dx.types.Handle %4, i32 %541, i32 %542, i32 %260, i32 0, i32 1)  ; AtomicCompareExchange(handle,offset0,offset1,offset2,compareValue,newValue)
  %657 = and i32 %656, 3
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %680, !dx.controlflow.hints !51

; <label>:659                                     ; preds = %655
  %660 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.i32 %661, 3
  %663 = call i32 @dx.op.binary.i32(i32 40, i32 %662, i32 %660)  ; UMin(a,b)
  %664 = extractvalue %dx.types.CBufRet.i32 %661, 2
  %665 = udiv i32 %663, %664
  %666 = urem i32 %663, %664
  %667 = extractvalue %dx.types.CBufRet.i32 %661, 1
  %668 = urem i32 %666, %667
  %669 = udiv i32 %666, %667
  %670 = shl i32 %668, 6
  %671 = and i32 %670, 32704
  %672 = shl i32 %669, 15
  %673 = and i32 %672, 8355840
  %674 = shl i32 %665, 23
  %675 = and i32 %674, 2139095040
  %676 = or i32 %675, %671
  %677 = or i32 %676, %673
  %678 = or i32 %677, 3
  %679 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 8, i32 %541, i32 %542, i32 %260, i32 %678)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %683

; <label>:680                                     ; preds = %655
  %681 = icmp eq i32 %657, 3
  br i1 %681, label %682, label %655, !dx.controlflow.hints !52

; <label>:682                                     ; preds = %680
  br label %683

; <label>:683                                     ; preds = %682, %659, %653
  %684 = phi i32 [ 0, %653 ], [ %678, %659 ], [ %656, %682 ]
  store i32 %684, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br label %685

; <label>:685                                     ; preds = %683, %631
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %686 = load i32, i32 addrspace(3)* @"\01?gsPackedTileData@@3IA", align 4, !tbaa !36
  br i1 %636, label %687, label %708, !dx.controlflow.hints !53

; <label>:687                                     ; preds = %685
  %688 = lshr i32 %197, 1
  %689 = and i32 %688, 15
  %690 = and i32 %637, 15
  %691 = and i32 %197, 1
  %692 = shl i32 %198, 1
  %693 = and i32 %692, 2
  %694 = or i32 %693, %691
  %695 = lshr i32 %686, 2
  %696 = and i32 %695, 8176
  %697 = lshr i32 %686, 11
  %698 = and i32 %697, 4080
  %699 = or i32 %696, %689
  %700 = or i32 %698, %690
  %701 = lshr i32 %686, 21
  %702 = and i32 %701, 1020
  %703 = or i32 %694, %702
  %704 = fmul fast float %531, 2.550000e+02
  %705 = fadd fast float %704, %192
  %706 = call float @dx.op.unary.f32(i32 27, float %705)  ; Round_ni(value)
  %707 = fmul fast float %706, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %699, i32 %700, i32 %703, float %707, float %707, float %707, float %707, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %708

; <label>:708                                     ; preds = %687, %685
  %709 = icmp eq i32 %258, %262
  br i1 %709, label %710, label %256, !llvm.loop !54

; <label>:710                                     ; preds = %708
  br label %711

; <label>:711                                     ; preds = %710, %252
  %712 = phi i32 [ 0, %252 ], [ %540, %710 ]
  %713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.i32 %713, 0
  %715 = call i32 @dx.op.tertiary.i32(i32 49, i32 %203, i32 %714, i32 %225)  ; UMad(a,b,c)
  %716 = shl i32 %715, 2
  %717 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %716, i32 undef, i32 undef, i32 %712)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %718 = add i32 %225, 1
  %719 = icmp ugt i32 %718, %221
  br i1 %719, label %720, label %224

; <label>:720                                     ; preds = %711
  br label %721

; <label>:721                                     ; preds = %720, %196, %58
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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}

