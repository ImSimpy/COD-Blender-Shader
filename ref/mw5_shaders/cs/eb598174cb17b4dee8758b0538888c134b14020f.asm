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
; shader hash: 89d8683e604c587067f96527cebc08e6
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
;   [80 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          1d      T0             t6     1
;                                   texture     f32          3d      T1             t4     1
;                                   texture     f32          3d      T2             t5     1
;                                   texture     f32     2darray      T3            t20     1
;                                   texture     f32          2d      T4            t14     1
;                                   texture     f32          2d      T5            t15     1
;                                   texture     f32          2d      T6             t8     1
;                                   texture    byte         r/o      T7            t11     1
;                                   texture    byte         r/o      T8            t19     1
;                                   texture    byte         r/o      T9            t17     1
;                                   texture     f32          2d     T10             t3     1
;                                   texture     f32          2d     T11             t9     1
;                                   texture     f32          2d     T12            t18     1
;                                   texture     f32          2d     T13            t21     1
;                                   texture     f32          2d     T14            t22     1
;                                   texture     f32          2d     T15            t12     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%PostOpaqueConstants = type { <4 x float>, <2 x float>, float, float, <4 x i32>, float, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?sharedLuma@@3PAMA" = external addrspace(3) global [64 x float], align 4

define void @cs_post_opaque_processes_luma_dmfpscale() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %26 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %27 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %28 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %34 = mul i32 %33, %32
  %35 = add i32 %34, %27
  %36 = shl i32 %35, 2
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = lshr i32 %38, 16
  %40 = shl i32 %38, 3
  %41 = and i32 %40, 524280
  %42 = shl nuw nsw i32 %39, 3
  %43 = add i32 %41, %25
  %44 = add i32 %42, %26
  %45 = shl i32 %43, 1
  %46 = shl i32 %44, 1
  %47 = uitofp i32 %45 to float
  %48 = uitofp i32 %46 to float
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %47, %50
  %53 = fmul fast float %48, %51
  %54 = fadd fast float %52, %50
  %55 = fadd fast float %53, %51
  %56 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %22, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 3
  %58 = fcmp fast ogt float %57, -1.000000e+00
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %61 = select i1 %58, float %60, float 1.000000e+00
  %62 = fadd fast float %57, 1.000000e+00
  %63 = fmul fast float %61, %62
  %64 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = and i32 %66, 114688
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %68, i32 %45, i32 0
  %70 = select i1 %68, i32 %46, i32 0
  %71 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %69, i32 %70, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = fmul fast float %72, 2.550000e+02
  %74 = fptoui float %73 to i32
  %75 = icmp eq i32 %74, 3
  %76 = and i1 %68, %75
  %77 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %78 = fcmp fast oge float %64, %77
  %79 = fadd fast float %47, 5.000000e-01
  %80 = fadd fast float %48, 5.000000e-01
  br i1 %76, label %942, label %81, !dx.controlflow.hints !37

; <label>:81                                      ; preds = %0
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = select i1 %78, float %83, float %64
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 3
  %88 = fmul fast float %79, 2.000000e+00
  %89 = fmul fast float %88, %86
  %90 = fmul fast float %80, 2.000000e+00
  %91 = fmul fast float %90, %87
  %92 = fsub fast float 1.000000e+00, %89
  %93 = fsub fast float 1.000000e+00, %91
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fmul fast float %92, %95
  %99 = fmul fast float %92, %96
  %100 = fmul fast float %92, %97
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fmul fast float %93, %102
  %106 = fmul fast float %93, %103
  %107 = fmul fast float %93, %104
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fadd fast float %105, %109
  %113 = fadd fast float %112, %98
  %114 = fadd fast float %106, %110
  %115 = fadd fast float %114, %99
  %116 = fadd fast float %107, %111
  %117 = fadd fast float %116, %100
  %118 = fmul fast float %113, %84
  %119 = fmul fast float %115, %84
  %120 = fmul fast float %117, %84
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %123, 3
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = extractvalue %dx.types.CBufRet.f32 %128, 3
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %150 = fcmp fast olt float %149, -5.000000e-01
  %151 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %152 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %153 = call float @dx.op.unary.f32(i32 25, float %152)  ; Rsqrt(value)
  %154 = fmul fast float %153, %152
  %155 = fmul fast float %153, %118
  %156 = fmul fast float %153, %119
  %157 = fmul fast float %153, %120
  %158 = fadd fast float %154, %127
  br i1 %78, label %159, label %171, !dx.controlflow.hints !38

; <label>:159                                     ; preds = %81
  %160 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %161 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %165 = call float @dx.op.binary.f32(i32 35, float %157, float %164)  ; FMax(a,b)
  %166 = call float @dx.op.binary.f32(i32 36, float %165, float %163)  ; FMin(a,b)
  %167 = fmul fast float %166, %161
  %168 = fadd fast float %167, %160
  %169 = call float @dx.op.unary.f32(i32 7, float %168)  ; Saturate(value)
  %170 = fmul fast float %157, %122
  br label %171

; <label>:171                                     ; preds = %159, %81
  %172 = phi float [ %122, %159 ], [ %158, %81 ]
  %173 = phi float [ %169, %159 ], [ 0.000000e+00, %81 ]
  %174 = phi float [ %170, %159 ], [ %120, %81 ]
  %175 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.i32 %176, 1
  %178 = and i32 %177, 1
  %179 = icmp ne i32 %178, 0
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = fcmp fast ogt float %181, 0.000000e+00
  %183 = and i1 %179, %182
  br i1 %183, label %184, label %593, !dx.controlflow.hints !39

; <label>:184                                     ; preds = %171
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %187 = select i1 %78, float %186, float %154
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %194 = fsub fast float %191, %193
  %195 = and i32 %177, 2
  %196 = extractvalue %dx.types.CBufRet.i32 %176, 0
  %197 = call i32 @dx.op.binary.i32(i32 40, i32 %196, i32 3)  ; UMin(a,b)
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = extractvalue %dx.types.CBufRet.f32 %198, 1
  %201 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %202 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %203 = fsub fast float %199, %201
  %204 = fsub fast float %200, %202
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = fcmp fast ogt float %206, 0.000000e+00
  %208 = fsub fast float -0.000000e+00, %203
  %209 = fsub fast float -0.000000e+00, %204
  %210 = call float @dx.op.dot2.f32(i32 54, float %155, float %156, float %155, float %156)  ; Dot2(ax,ay,bx,by)
  %211 = call float @dx.op.dot2.f32(i32 54, float %155, float %156, float %208, float %209)  ; Dot2(ax,ay,bx,by)
  %212 = fmul fast float %211, 2.000000e+00
  %213 = call float @dx.op.dot2.f32(i32 54, float %208, float %209, float %208, float %209)  ; Dot2(ax,ay,bx,by)
  %214 = fmul fast float %206, %206
  %215 = fsub fast float %213, %214
  %216 = fmul fast float %212, %212
  %217 = fmul fast float %210, 4.000000e+00
  %218 = fmul fast float %217, %215
  %219 = fsub fast float %216, %218
  %220 = fcmp fast ogt float %219, 0.000000e+00
  br i1 %220, label %221, label %236, !dx.controlflow.hints !40

; <label>:221                                     ; preds = %184
  %222 = fcmp fast ogt float %212, 0.000000e+00
  %223 = call float @dx.op.unary.f32(i32 24, float %219)  ; Sqrt(value)
  %224 = fsub fast float -0.000000e+00, %223
  %225 = select i1 %222, float %223, float %224
  %226 = fadd fast float %225, %212
  %227 = fmul float %226, -5.000000e-01
  %228 = fdiv fast float %227, %210
  %229 = call float @dx.op.binary.f32(i32 35, float %228, float 0.000000e+00)  ; FMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 36, float %187, float %229)  ; FMin(a,b)
  %231 = fdiv fast float %215, %227
  %232 = call float @dx.op.binary.f32(i32 35, float %231, float 0.000000e+00)  ; FMax(a,b)
  %233 = call float @dx.op.binary.f32(i32 36, float %187, float %232)  ; FMin(a,b)
  %234 = call float @dx.op.binary.f32(i32 36, float %230, float %233)  ; FMin(a,b)
  %235 = call float @dx.op.binary.f32(i32 35, float %230, float %233)  ; FMax(a,b)
  br label %236

; <label>:236                                     ; preds = %221, %184
  %237 = phi float [ %235, %221 ], [ -1.000000e+00, %184 ]
  %238 = phi float [ %234, %221 ], [ -1.000000e+00, %184 ]
  %239 = phi i1 [ true, %221 ], [ false, %184 ]
  %240 = and i1 %207, %239
  br i1 %240, label %241, label %243, !dx.controlflow.hints !41

; <label>:241                                     ; preds = %236
  %242 = fcmp fast oeq float %238, %237
  br i1 %242, label %546, label %244, !dx.controlflow.hints !42

; <label>:243                                     ; preds = %236
  br i1 %207, label %546, label %244, !dx.controlflow.hints !43

; <label>:244                                     ; preds = %243, %241
  %245 = phi float [ %187, %243 ], [ %237, %241 ]
  %246 = phi float [ 0.000000e+00, %243 ], [ %238, %241 ]
  %247 = icmp ne i32 %195, 0
  %248 = fmul fast float %245, %157
  %249 = fadd fast float %248, %189
  %250 = fmul fast float %249, %245
  %251 = select i1 %247, float 0.000000e+00, float %250
  %252 = fcmp fast oeq float %157, 0.000000e+00
  %253 = fdiv fast float %194, %157
  %254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %253)  ; FMax(a,b)
  %255 = select i1 %252, float %245, float %254
  %256 = call float @dx.op.binary.f32(i32 36, float %245, float %255)  ; FMin(a,b)
  %257 = fcmp fast ogt float %157, 0.000000e+00
  %258 = fcmp fast olt float %194, 0.000000e+00
  br i1 %257, label %259, label %316, !dx.controlflow.hints !44

; <label>:259                                     ; preds = %244
  %260 = icmp eq i32 %195, 0
  br i1 %258, label %261, label %305, !dx.controlflow.hints !45

; <label>:261                                     ; preds = %259
  %262 = select i1 %260, float %245, float 0.000000e+00
  %263 = fsub fast float -0.000000e+00, %262
  %264 = call float @dx.op.unary.f32(i32 6, float %263)  ; FAbs(value)
  %265 = fmul fast float %262, %157
  %266 = fadd fast float %265, %189
  %267 = fmul fast float %264, %266
  %268 = fsub fast float %251, %267
  %269 = fsub fast float %245, %264
  %270 = select i1 %260, float %269, float 0.000000e+00
  %271 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %272 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %273 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 0
  %276 = extractvalue %dx.types.CBufRet.f32 %274, 1
  %277 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %278 = extractvalue %dx.types.CBufRet.f32 %274, 3
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 3
  %281 = call float @dx.op.binary.f32(i32 36, float %268, float %280)  ; FMin(a,b)
  %282 = fmul fast float %278, %270
  %283 = call float @dx.op.unary.f32(i32 7, float %282)  ; Saturate(value)
  %284 = fsub fast float %275, %271
  %285 = fsub fast float %276, %272
  %286 = fsub fast float %277, %273
  %287 = fmul fast float %283, %284
  %288 = fmul fast float %283, %285
  %289 = fmul fast float %283, %286
  %290 = fadd fast float %287, %271
  %291 = fadd fast float %288, %272
  %292 = fadd fast float %289, %273
  br i1 %78, label %546, label %293, !dx.controlflow.hints !46

; <label>:293                                     ; preds = %261
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %297 = fadd fast float %296, %295
  %298 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %299 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %300 = extractvalue %dx.types.CBufRet.f32 %294, 3
  %301 = fadd fast float %300, %299
  %302 = call float @dx.op.unary.f32(i32 7, float %301)  ; Saturate(value)
  %303 = fmul fast float %298, %281
  %304 = fmul fast float %303, %302
  br label %546

; <label>:305                                     ; preds = %259
  br i1 %260, label %306, label %327, !dx.controlflow.hints !47

; <label>:306                                     ; preds = %305
  %307 = call float @dx.op.binary.f32(i32 36, float %256, float %246)  ; FMin(a,b)
  %308 = fsub fast float %256, %307
  %309 = fsub fast float %308, %245
  %310 = call float @dx.op.unary.f32(i32 6, float %309)  ; FAbs(value)
  %311 = fadd fast float %308, %245
  %312 = fmul fast float %311, %157
  %313 = fadd fast float %312, %189
  %314 = fmul fast float %313, %310
  %315 = fsub fast float %251, %314
  br label %327

; <label>:316                                     ; preds = %244
  br i1 %258, label %317, label %327, !dx.controlflow.hints !48

; <label>:317                                     ; preds = %316
  %318 = call float @dx.op.binary.f32(i32 35, float %246, float %256)  ; FMax(a,b)
  %319 = icmp eq i32 %195, 0
  %320 = select i1 %319, float %256, float 0.000000e+00
  %321 = fsub fast float -0.000000e+00, %320
  %322 = call float @dx.op.unary.f32(i32 6, float %321)  ; FAbs(value)
  %323 = fmul fast float %320, %157
  %324 = fadd fast float %323, %189
  %325 = fmul fast float %322, %324
  %326 = fsub fast float %251, %325
  br label %327

; <label>:327                                     ; preds = %317, %316, %306, %305
  %328 = phi float [ %246, %305 ], [ %246, %306 ], [ %318, %317 ], [ %246, %316 ]
  %329 = phi float [ 0.000000e+00, %305 ], [ %310, %306 ], [ %322, %317 ], [ 0.000000e+00, %316 ]
  %330 = phi float [ %251, %305 ], [ %315, %306 ], [ %326, %317 ], [ %251, %316 ]
  %331 = phi float [ %256, %305 ], [ %256, %306 ], [ %245, %317 ], [ %245, %316 ]
  %332 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %332, align 4, !tbaa !49, !noalias !53
  %333 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %333, align 4, !tbaa !49, !noalias !53
  %334 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %334, align 4, !tbaa !49, !noalias !53
  %335 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %335, align 4, !tbaa !49, !noalias !53
  %336 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %336, align 4, !tbaa !49, !noalias !53
  %337 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %337, align 4, !tbaa !49, !noalias !53
  %338 = icmp sgt i32 %197, 0
  br i1 %338, label %339, label %400

; <label>:339                                     ; preds = %327
  br label %340

; <label>:340                                     ; preds = %389, %339
  %341 = phi i32 [ %390, %389 ], [ 0, %339 ]
  %342 = phi i32 [ %391, %389 ], [ 0, %339 ]
  %343 = add nuw i32 %342, 171
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %343)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = fsub fast float %345, %348
  %351 = fsub fast float %346, %349
  %352 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %353 = fsub fast float -0.000000e+00, %350
  %354 = fsub fast float -0.000000e+00, %351
  %355 = call float @dx.op.dot2.f32(i32 54, float %155, float %156, float %353, float %354)  ; Dot2(ax,ay,bx,by)
  %356 = fmul fast float %355, 2.000000e+00
  %357 = call float @dx.op.dot2.f32(i32 54, float %353, float %354, float %353, float %354)  ; Dot2(ax,ay,bx,by)
  %358 = fmul fast float %352, %352
  %359 = fsub fast float %357, %358
  %360 = fmul fast float %356, %356
  %361 = fmul fast float %217, %359
  %362 = fsub fast float %360, %361
  %363 = fcmp fast ogt float %362, 0.000000e+00
  br i1 %363, label %364, label %379, !dx.controlflow.hints !40

; <label>:364                                     ; preds = %340
  %365 = fcmp fast ogt float %356, 0.000000e+00
  %366 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %367 = fsub fast float -0.000000e+00, %366
  %368 = select i1 %365, float %366, float %367
  %369 = fadd fast float %368, %356
  %370 = fmul float %369, -5.000000e-01
  %371 = fdiv fast float %370, %210
  %372 = call float @dx.op.binary.f32(i32 35, float %371, float 0.000000e+00)  ; FMax(a,b)
  %373 = call float @dx.op.binary.f32(i32 36, float %245, float %372)  ; FMin(a,b)
  %374 = fdiv fast float %359, %370
  %375 = call float @dx.op.binary.f32(i32 35, float %374, float 0.000000e+00)  ; FMax(a,b)
  %376 = call float @dx.op.binary.f32(i32 36, float %245, float %375)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 36, float %373, float %376)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %373, float %376)  ; FMax(a,b)
  br label %379

; <label>:379                                     ; preds = %364, %340
  %380 = phi float [ %378, %364 ], [ -1.000000e+00, %340 ]
  %381 = phi float [ %377, %364 ], [ -1.000000e+00, %340 ]
  %382 = phi i1 [ true, %364 ], [ false, %340 ]
  br i1 %382, label %383, label %389, !dx.controlflow.hints !65

; <label>:383                                     ; preds = %379
  %384 = call float @dx.op.binary.f32(i32 35, float %328, float %381)  ; FMax(a,b)
  %385 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %342
  store float %384, float* %385, align 4, !tbaa !49, !noalias !53
  %386 = call float @dx.op.binary.f32(i32 35, float %328, float %380)  ; FMax(a,b)
  %387 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %342
  store float %386, float* %387, align 4, !tbaa !49, !noalias !53
  %388 = add nsw i32 %341, 1
  br label %389

; <label>:389                                     ; preds = %383, %379
  %390 = phi i32 [ %388, %383 ], [ %341, %379 ]
  %391 = add nuw nsw i32 %342, 1
  %392 = icmp eq i32 %391, %197
  br i1 %392, label %393, label %340

; <label>:393                                     ; preds = %389
  %394 = load float, float* %334, align 4, !tbaa !49, !alias.scope !66, !noalias !69
  %395 = load float, float* %333, align 4, !tbaa !49, !alias.scope !72, !noalias !73
  %396 = load float, float* %332, align 4, !tbaa !49, !alias.scope !74, !noalias !75
  %397 = load float, float* %337, align 4, !tbaa !49, !alias.scope !76, !noalias !79
  %398 = load float, float* %336, align 4, !tbaa !49, !alias.scope !82, !noalias !83
  %399 = load float, float* %335, align 4, !tbaa !49, !alias.scope !84, !noalias !85
  br label %400

; <label>:400                                     ; preds = %393, %327
  %401 = phi float [ -1.000000e+00, %327 ], [ %399, %393 ]
  %402 = phi float [ -1.000000e+00, %327 ], [ %398, %393 ]
  %403 = phi float [ -1.000000e+00, %327 ], [ %397, %393 ]
  %404 = phi float [ -1.000000e+00, %327 ], [ %396, %393 ]
  %405 = phi float [ -1.000000e+00, %327 ], [ %395, %393 ]
  %406 = phi float [ -1.000000e+00, %327 ], [ %394, %393 ]
  %407 = phi i32 [ 0, %327 ], [ %390, %393 ]
  %408 = call float @dx.op.binary.f32(i32 36, float %405, float %406)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 36, float %404, float %408)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %404, float %405)  ; FMax(a,b)
  %411 = call float @dx.op.binary.f32(i32 36, float %410, float %406)  ; FMin(a,b)
  %412 = call float @dx.op.binary.f32(i32 36, float %404, float %405)  ; FMin(a,b)
  %413 = call float @dx.op.binary.f32(i32 35, float %412, float %411)  ; FMax(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %405, float %406)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %404, float %414)  ; FMax(a,b)
  store float %409, float* %332, align 4, !tbaa !49, !alias.scope !74, !noalias !75
  store float %413, float* %333, align 4, !tbaa !49, !alias.scope !72, !noalias !73
  store float %415, float* %334, align 4, !tbaa !49, !alias.scope !66, !noalias !69
  %416 = call float @dx.op.binary.f32(i32 36, float %402, float %403)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 36, float %401, float %416)  ; FMin(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float %401, float %402)  ; FMax(a,b)
  %419 = call float @dx.op.binary.f32(i32 36, float %418, float %403)  ; FMin(a,b)
  %420 = call float @dx.op.binary.f32(i32 36, float %401, float %402)  ; FMin(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %420, float %419)  ; FMax(a,b)
  %422 = call float @dx.op.binary.f32(i32 35, float %402, float %403)  ; FMax(a,b)
  %423 = call float @dx.op.binary.f32(i32 35, float %401, float %422)  ; FMax(a,b)
  store float %417, float* %335, align 4, !tbaa !49, !alias.scope !84, !noalias !85
  store float %421, float* %336, align 4, !tbaa !49, !alias.scope !82, !noalias !83
  store float %423, float* %337, align 4, !tbaa !49, !alias.scope !76, !noalias !79
  %424 = sub nsw i32 3, %407
  %425 = icmp sgt i32 %424, 2
  br i1 %425, label %426, label %464, !dx.controlflow.hints !86

; <label>:426                                     ; preds = %400
  %427 = icmp eq i32 %195, 0
  %428 = fsub fast float %245, %329
  %429 = select i1 %427, float %428, float %329
  %430 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %435 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %436 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %437 = extractvalue %dx.types.CBufRet.f32 %433, 3
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 3
  %440 = call float @dx.op.binary.f32(i32 36, float %330, float %439)  ; FMin(a,b)
  %441 = fmul fast float %437, %429
  %442 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %443 = fsub fast float %434, %430
  %444 = fsub fast float %435, %431
  %445 = fsub fast float %436, %432
  %446 = fmul fast float %442, %443
  %447 = fmul fast float %442, %444
  %448 = fmul fast float %442, %445
  %449 = fadd fast float %446, %430
  %450 = fadd fast float %447, %431
  %451 = fadd fast float %448, %432
  br i1 %78, label %546, label %452, !dx.controlflow.hints !46

; <label>:452                                     ; preds = %426
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %456 = fadd fast float %455, %454
  %457 = call float @dx.op.unary.f32(i32 7, float %456)  ; Saturate(value)
  %458 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %459 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %460 = fadd fast float %459, %458
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fmul fast float %457, %440
  %463 = fmul fast float %462, %461
  br label %546

; <label>:464                                     ; preds = %400
  %465 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %424
  %466 = load float, float* %465, align 4, !tbaa !49, !noalias !53
  %467 = fcmp fast olt float %466, %331
  %468 = icmp sgt i32 %407, 0
  %469 = and i1 %468, %467
  br i1 %469, label %470, label %507

; <label>:470                                     ; preds = %464
  br label %471

; <label>:471                                     ; preds = %500, %470
  %472 = phi float [ %501, %500 ], [ %329, %470 ]
  %473 = phi float [ %502, %500 ], [ %330, %470 ]
  %474 = phi float [ %482, %500 ], [ %466, %470 ]
  %475 = phi i32 [ %479, %500 ], [ %424, %470 ]
  %476 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %475
  %477 = load float, float* %476, align 4, !tbaa !49, !noalias !53
  %478 = icmp slt i32 %475, 2
  %479 = add nsw i32 %475, 1
  %480 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %479
  %481 = load float, float* %480, align 4, !tbaa !49, !noalias !53
  %482 = select i1 %478, float %481, float %245
  %483 = call float @dx.op.binary.f32(i32 36, float %482, float %477)  ; FMin(a,b)
  %484 = call float @dx.op.binary.f32(i32 36, float %331, float %483)  ; FMin(a,b)
  %485 = icmp eq i32 %195, 0
  %486 = fadd fast float %484, %474
  %487 = fmul fast float %486, %157
  %488 = fadd fast float %487, %189
  br i1 %485, label %494, label %489, !dx.controlflow.hints !87

; <label>:489                                     ; preds = %471
  %490 = fsub fast float %484, %474
  %491 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %490)  ; FMax(a,b)
  %492 = fmul fast float %491, %488
  %493 = fadd fast float %492, %473
  br label %500

; <label>:494                                     ; preds = %471
  %495 = fsub fast float %474, %484
  %496 = call float @dx.op.unary.f32(i32 6, float %495)  ; FAbs(value)
  %497 = fadd fast float %496, %472
  %498 = fmul fast float %496, %488
  %499 = fsub fast float %473, %498
  br label %500

; <label>:500                                     ; preds = %494, %489
  %501 = phi float [ %491, %489 ], [ %497, %494 ]
  %502 = phi float [ %493, %489 ], [ %499, %494 ]
  %503 = fcmp fast olt float %482, %331
  %504 = icmp slt i32 %479, 3
  %505 = and i1 %504, %503
  br i1 %505, label %471, label %506

; <label>:506                                     ; preds = %500
  br label %507

; <label>:507                                     ; preds = %506, %464
  %508 = phi float [ %329, %464 ], [ %501, %506 ]
  %509 = phi float [ %330, %464 ], [ %502, %506 ]
  %510 = fsub fast float %245, %508
  %511 = select i1 %247, float %508, float %510
  %512 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %514 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %519 = extractvalue %dx.types.CBufRet.f32 %515, 3
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 3
  %522 = call float @dx.op.binary.f32(i32 36, float %509, float %521)  ; FMin(a,b)
  %523 = fmul fast float %519, %511
  %524 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %525 = fsub fast float %516, %512
  %526 = fsub fast float %517, %513
  %527 = fsub fast float %518, %514
  %528 = fmul fast float %524, %525
  %529 = fmul fast float %524, %526
  %530 = fmul fast float %524, %527
  %531 = fadd fast float %528, %512
  %532 = fadd fast float %529, %513
  %533 = fadd fast float %530, %514
  br i1 %78, label %546, label %534, !dx.controlflow.hints !46

; <label>:534                                     ; preds = %507
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %535, 1
  %538 = fadd fast float %537, %536
  %539 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %540 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %541 = extractvalue %dx.types.CBufRet.f32 %535, 3
  %542 = fadd fast float %541, %540
  %543 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %544 = fmul fast float %539, %522
  %545 = fmul fast float %544, %543
  br label %546

; <label>:546                                     ; preds = %534, %507, %452, %426, %293, %261, %243, %241
  %547 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %243 ], [ %270, %293 ], [ %270, %261 ], [ %429, %452 ], [ %429, %426 ], [ %511, %534 ], [ %511, %507 ]
  %548 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %243 ], [ %304, %293 ], [ %281, %261 ], [ %463, %452 ], [ %440, %426 ], [ %545, %534 ], [ %522, %507 ]
  %549 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %243 ], [ %290, %293 ], [ %290, %261 ], [ %449, %452 ], [ %449, %426 ], [ %531, %534 ], [ %531, %507 ]
  %550 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %243 ], [ %291, %293 ], [ %291, %261 ], [ %450, %452 ], [ %450, %426 ], [ %532, %534 ], [ %532, %507 ]
  %551 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %243 ], [ %292, %293 ], [ %292, %261 ], [ %451, %452 ], [ %451, %426 ], [ %533, %534 ], [ %533, %507 ]
  %552 = fmul fast float %181, %548
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %555 = fsub fast float %191, %554
  %556 = fcmp fast olt float %552, -2.000000e+01
  %557 = call float @dx.op.unary.f32(i32 21, float %552)  ; Exp(value)
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %563 = fmul fast float %560, %555
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = fsub fast float 1.000000e+00, %564
  %566 = fmul fast float %157, 5.000000e-01
  %567 = fadd fast float %566, 5.000000e-01
  %568 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %569 = fsub fast float 1.000000e+00, %568
  %570 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %565)  ; FMax(a,b)
  %571 = fdiv fast float %569, %570
  %572 = fsub fast float %555, %120
  %573 = call float @dx.op.unary.f32(i32 6, float %572)  ; FAbs(value)
  %574 = fmul fast float %573, %559
  %575 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %576 = fsub fast float 1.000000e+00, %574
  %577 = fmul fast float %576, %575
  %578 = fadd fast float %577, %574
  %579 = fmul fast float %562, %555
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  %581 = fsub fast float 1.000000e+00, %578
  %582 = fmul fast float %581, %580
  %583 = fadd fast float %582, %578
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = fadd fast float %557, -1.000000e+00
  %586 = select i1 %556, float -1.000000e+00, float %585
  %587 = fmul fast float %584, %586
  %588 = fadd fast float %587, 1.000000e+00
  %589 = fsub fast float -0.000000e+00, %587
  %590 = fmul fast float %549, %589
  %591 = fmul fast float %550, %589
  %592 = fmul fast float %551, %589
  br label %593

; <label>:593                                     ; preds = %546, %171
  %594 = phi float [ %547, %546 ], [ 0.000000e+00, %171 ]
  %595 = phi float [ %588, %546 ], [ 1.000000e+00, %171 ]
  %596 = phi float [ %590, %546 ], [ 0.000000e+00, %171 ]
  %597 = phi float [ %591, %546 ], [ 0.000000e+00, %171 ]
  %598 = phi float [ %592, %546 ], [ 0.000000e+00, %171 ]
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %601 = fsub fast float 1.000000e+00, %595
  %602 = fmul fast float %601, %172
  %603 = fmul fast float %602, %600
  %604 = fsub fast float %172, %603
  br i1 %150, label %605, label %637, !dx.controlflow.hints !88

; <label>:605                                     ; preds = %593
  %606 = fmul fast float %175, %147
  %607 = fadd fast float %606, %148
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  %609 = fmul fast float %129, %604
  %610 = fsub fast float -0.000000e+00, %609
  %611 = fmul fast float %130, %604
  %612 = fsub fast float -0.000000e+00, %611
  %613 = call float @dx.op.unary.f32(i32 21, float %610)  ; Exp(value)
  %614 = call float @dx.op.unary.f32(i32 21, float %612)  ; Exp(value)
  %615 = call float @dx.op.binary.f32(i32 35, float %137, float %613)  ; FMax(a,b)
  %616 = call float @dx.op.binary.f32(i32 35, float %137, float %614)  ; FMax(a,b)
  %617 = fsub fast float %616, %615
  %618 = fmul fast float %617, %608
  %619 = fadd fast float %618, %615
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fmul fast float %173, %151
  %622 = fsub fast float 1.000000e+00, %621
  %623 = select i1 %78, float %622, float %620
  %624 = fsub fast float %134, %139
  %625 = fsub fast float %135, %140
  %626 = fsub fast float %136, %141
  %627 = fmul fast float %608, %624
  %628 = fmul fast float %608, %625
  %629 = fmul fast float %608, %626
  %630 = fadd fast float %627, %139
  %631 = fadd fast float %628, %140
  %632 = fadd fast float %629, %141
  %633 = fsub fast float 1.000000e+00, %623
  %634 = fmul fast float %633, %630
  %635 = fmul fast float %633, %631
  %636 = fmul fast float %633, %632
  br label %708

; <label>:637                                     ; preds = %593
  %638 = fmul fast float %604, %146
  %639 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %640 = fsub fast float 2.000000e+00, %639
  %641 = fmul fast float %639, 9.921875e-01
  %642 = fmul fast float %641, %640
  %643 = fadd fast float %642, 3.906250e-03
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %643, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = fsub fast float %639, %645
  %647 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %646)  ; FMax(a,b)
  %648 = fmul fast float %174, %132
  %649 = call float @dx.op.unary.f32(i32 6, float %648)  ; FAbs(value)
  %650 = fcmp fast ogt float %649, 0x3EB0C6F7A0000000
  br i1 %650, label %651, label %657, !dx.controlflow.hints !89

; <label>:651                                     ; preds = %637
  %652 = fmul fast float %648, 0xBFF7154760000000
  %653 = call float @dx.op.unary.f32(i32 21, float %652)  ; Exp(value)
  %654 = fsub fast float 1.000000e+00, %653
  %655 = fdiv fast float %654, %648
  %656 = fmul fast float %655, %142
  br label %657

; <label>:657                                     ; preds = %651, %637
  %658 = phi float [ %656, %651 ], [ %142, %637 ]
  %659 = fadd fast float %658, %144
  %660 = fmul fast float %659, %647
  %661 = fmul fast float %129, %660
  %662 = fsub fast float -0.000000e+00, %661
  %663 = fmul fast float %130, %660
  %664 = fsub fast float -0.000000e+00, %663
  %665 = fmul fast float %131, %660
  %666 = fsub fast float -0.000000e+00, %665
  %667 = call float @dx.op.unary.f32(i32 21, float %662)  ; Exp(value)
  %668 = call float @dx.op.unary.f32(i32 21, float %664)  ; Exp(value)
  %669 = call float @dx.op.unary.f32(i32 21, float %666)  ; Exp(value)
  br i1 %78, label %670, label %678, !dx.controlflow.hints !90

; <label>:670                                     ; preds = %657
  %671 = fmul fast float %667, %173
  %672 = fmul fast float %668, %173
  %673 = fmul fast float %669, %173
  %674 = fsub fast float 1.000000e+00, %173
  %675 = fadd fast float %671, %674
  %676 = fadd fast float %672, %674
  %677 = fadd fast float %673, %674
  br label %678

; <label>:678                                     ; preds = %670, %657
  %679 = phi float [ %675, %670 ], [ %667, %657 ]
  %680 = phi float [ %676, %670 ], [ %668, %657 ]
  %681 = phi float [ %677, %670 ], [ %669, %657 ]
  %682 = fmul fast float %175, %175
  %683 = fadd fast float %682, 1.000000e+00
  %684 = fmul fast float %683, 0x3FAE8EC8A0000000
  %685 = fmul fast float %684, %139
  %686 = fmul fast float %684, %140
  %687 = fmul fast float %684, %141
  %688 = fmul fast float %175, %137
  %689 = fsub fast float 1.000000e+00, %688
  %690 = fmul fast float %137, %137
  %691 = fsub fast float 1.000000e+00, %690
  %692 = fmul fast float %691, 0x3FB45F3060000000
  %693 = fmul fast float %689, %689
  %694 = fdiv fast float 1.000000e+00, %693
  %695 = fmul fast float %692, %694
  %696 = fmul fast float %695, %134
  %697 = fmul fast float %695, %135
  %698 = fmul fast float %695, %136
  %699 = fadd fast float %696, %685
  %700 = fadd fast float %697, %686
  %701 = fadd fast float %698, %687
  %702 = fsub fast float 1.000000e+00, %679
  %703 = fsub fast float 1.000000e+00, %680
  %704 = fsub fast float 1.000000e+00, %681
  %705 = fmul fast float %699, %702
  %706 = fmul fast float %700, %703
  %707 = fmul fast float %701, %704
  br label %708

; <label>:708                                     ; preds = %678, %605
  %709 = phi float [ %634, %605 ], [ %705, %678 ]
  %710 = phi float [ %635, %605 ], [ %706, %678 ]
  %711 = phi float [ %636, %605 ], [ %707, %678 ]
  %712 = phi float [ %623, %605 ], [ %679, %678 ]
  %713 = phi float [ %623, %605 ], [ %680, %678 ]
  %714 = phi float [ %623, %605 ], [ %681, %678 ]
  br i1 %183, label %715, label %913, !dx.controlflow.hints !91

; <label>:715                                     ; preds = %708
  %716 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %717 = fmul fast float %716, %601
  %718 = fsub fast float %596, %709
  %719 = fsub fast float %597, %710
  %720 = fsub fast float %598, %711
  %721 = fmul fast float %717, %718
  %722 = fmul fast float %717, %719
  %723 = fmul fast float %717, %720
  %724 = fadd fast float %721, %709
  %725 = fadd fast float %722, %710
  %726 = fadd fast float %723, %711
  %727 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %712)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %713)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %714)  ; FMax(a,b)
  %730 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %595)  ; FMax(a,b)
  %731 = call float @dx.op.binary.f32(i32 35, float %594, float %604)  ; FMax(a,b)
  %732 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %731)  ; FMax(a,b)
  %733 = fdiv fast float %594, %732
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %735 = fdiv fast float %604, %732
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %737 = fcmp fast une float %730, 1.000000e+00
  br i1 %737, label %738, label %751, !dx.controlflow.hints !92

; <label>:738                                     ; preds = %715
  %739 = call float @dx.op.unary.f32(i32 23, float %730)  ; Log(value)
  %740 = fmul fast float %739, 0x3FE62E4300000000
  %741 = fmul fast float %596, %740
  %742 = fsub fast float -0.000000e+00, %741
  %743 = fmul fast float %597, %740
  %744 = fsub fast float -0.000000e+00, %743
  %745 = fmul fast float %598, %740
  %746 = fsub fast float -0.000000e+00, %745
  %747 = fsub fast float 1.000000e+00, %730
  %748 = fdiv fast float %742, %747
  %749 = fdiv fast float %744, %747
  %750 = fdiv fast float %746, %747
  br label %751

; <label>:751                                     ; preds = %738, %715
  %752 = phi float [ %748, %738 ], [ %596, %715 ]
  %753 = phi float [ %749, %738 ], [ %597, %715 ]
  %754 = phi float [ %750, %738 ], [ %598, %715 ]
  %755 = phi float [ %740, %738 ], [ 0.000000e+00, %715 ]
  %756 = fcmp fast une float %727, 1.000000e+00
  br i1 %756, label %757, label %764, !dx.controlflow.hints !93

; <label>:757                                     ; preds = %751
  %758 = call float @dx.op.unary.f32(i32 23, float %727)  ; Log(value)
  %759 = fmul fast float %758, 0x3FE62E4300000000
  %760 = fmul fast float %724, %759
  %761 = fsub fast float -0.000000e+00, %760
  %762 = fsub fast float 1.000000e+00, %727
  %763 = fdiv fast float %761, %762
  br label %764

; <label>:764                                     ; preds = %757, %751
  %765 = phi float [ %763, %757 ], [ %724, %751 ]
  %766 = phi float [ %759, %757 ], [ 0.000000e+00, %751 ]
  %767 = fcmp fast une float %728, 1.000000e+00
  br i1 %767, label %768, label %775, !dx.controlflow.hints !93

; <label>:768                                     ; preds = %764
  %769 = call float @dx.op.unary.f32(i32 23, float %728)  ; Log(value)
  %770 = fmul fast float %769, 0x3FE62E4300000000
  %771 = fmul fast float %725, %770
  %772 = fsub fast float -0.000000e+00, %771
  %773 = fsub fast float 1.000000e+00, %728
  %774 = fdiv fast float %772, %773
  br label %775

; <label>:775                                     ; preds = %768, %764
  %776 = phi float [ %774, %768 ], [ %725, %764 ]
  %777 = phi float [ %770, %768 ], [ 0.000000e+00, %764 ]
  %778 = fcmp fast une float %729, 1.000000e+00
  br i1 %778, label %779, label %786, !dx.controlflow.hints !93

; <label>:779                                     ; preds = %775
  %780 = call float @dx.op.unary.f32(i32 23, float %729)  ; Log(value)
  %781 = fmul fast float %780, 0x3FE62E4300000000
  %782 = fmul fast float %726, %781
  %783 = fsub fast float -0.000000e+00, %782
  %784 = fsub fast float 1.000000e+00, %729
  %785 = fdiv fast float %783, %784
  br label %786

; <label>:786                                     ; preds = %779, %775
  %787 = phi float [ %785, %779 ], [ %726, %775 ]
  %788 = phi float [ %781, %779 ], [ 0.000000e+00, %775 ]
  %789 = fmul fast float %752, %736
  %790 = fmul fast float %753, %736
  %791 = fmul fast float %754, %736
  %792 = fmul fast float %755, %736
  %793 = fmul fast float %765, %734
  %794 = fmul fast float %776, %734
  %795 = fmul fast float %787, %734
  %796 = fmul fast float %766, %734
  %797 = fmul fast float %777, %734
  %798 = fmul fast float %788, %734
  %799 = fadd fast float %793, %789
  %800 = fadd fast float %794, %790
  %801 = fadd fast float %795, %791
  %802 = fadd fast float %796, %792
  %803 = fadd fast float %797, %792
  %804 = fadd fast float %798, %792
  %805 = fcmp fast une float %802, 0.000000e+00
  br i1 %805, label %806, label %813, !dx.controlflow.hints !94

; <label>:806                                     ; preds = %786
  %807 = fmul fast float %802, 0x3FF7154760000000
  %808 = call float @dx.op.unary.f32(i32 21, float %807)  ; Exp(value)
  %809 = fsub fast float 1.000000e+00, %808
  %810 = fmul fast float %799, %809
  %811 = fsub fast float -0.000000e+00, %810
  %812 = fdiv fast float %811, %802
  br label %813

; <label>:813                                     ; preds = %806, %786
  %814 = phi float [ %808, %806 ], [ 1.000000e+00, %786 ]
  %815 = phi float [ %812, %806 ], [ %799, %786 ]
  %816 = fcmp fast une float %803, 0.000000e+00
  br i1 %816, label %817, label %824, !dx.controlflow.hints !94

; <label>:817                                     ; preds = %813
  %818 = fmul fast float %803, 0x3FF7154760000000
  %819 = call float @dx.op.unary.f32(i32 21, float %818)  ; Exp(value)
  %820 = fsub fast float 1.000000e+00, %819
  %821 = fmul fast float %800, %820
  %822 = fsub fast float -0.000000e+00, %821
  %823 = fdiv fast float %822, %803
  br label %824

; <label>:824                                     ; preds = %817, %813
  %825 = phi float [ %819, %817 ], [ 1.000000e+00, %813 ]
  %826 = phi float [ %823, %817 ], [ %800, %813 ]
  %827 = fcmp fast une float %804, 0.000000e+00
  br i1 %827, label %828, label %835, !dx.controlflow.hints !94

; <label>:828                                     ; preds = %824
  %829 = fmul fast float %804, 0x3FF7154760000000
  %830 = call float @dx.op.unary.f32(i32 21, float %829)  ; Exp(value)
  %831 = fsub fast float 1.000000e+00, %830
  %832 = fmul fast float %801, %831
  %833 = fsub fast float -0.000000e+00, %832
  %834 = fdiv fast float %833, %804
  br label %835

; <label>:835                                     ; preds = %828, %824
  %836 = phi float [ %830, %828 ], [ 1.000000e+00, %824 ]
  %837 = phi float [ %834, %828 ], [ %801, %824 ]
  %838 = fcmp fast ogt float %734, %736
  br i1 %838, label %839, label %859, !dx.controlflow.hints !95

; <label>:839                                     ; preds = %835
  %840 = fsub fast float 1.000000e+00, %736
  %841 = fmul fast float %752, %840
  %842 = fmul fast float %753, %840
  %843 = fmul fast float %754, %840
  %844 = fmul fast float %755, %840
  %845 = fcmp fast une float %844, 0.000000e+00
  br i1 %845, label %846, label %897, !dx.controlflow.hints !96

; <label>:846                                     ; preds = %839
  %847 = fmul fast float %844, 0x3FF7154760000000
  %848 = call float @dx.op.unary.f32(i32 21, float %847)  ; Exp(value)
  %849 = fsub fast float 1.000000e+00, %848
  %850 = fmul fast float %841, %849
  %851 = fsub fast float -0.000000e+00, %850
  %852 = fmul fast float %842, %849
  %853 = fsub fast float -0.000000e+00, %852
  %854 = fmul fast float %843, %849
  %855 = fsub fast float -0.000000e+00, %854
  %856 = fdiv fast float %851, %844
  %857 = fdiv fast float %853, %844
  %858 = fdiv fast float %855, %844
  br label %897

; <label>:859                                     ; preds = %835
  %860 = fsub fast float 1.000000e+00, %734
  %861 = fmul fast float %765, %860
  %862 = fmul fast float %776, %860
  %863 = fmul fast float %787, %860
  %864 = fmul fast float %766, %860
  %865 = fmul fast float %777, %860
  %866 = fmul fast float %788, %860
  %867 = fcmp fast une float %864, 0.000000e+00
  br i1 %867, label %868, label %875, !dx.controlflow.hints !94

; <label>:868                                     ; preds = %859
  %869 = fmul fast float %864, 0x3FF7154760000000
  %870 = call float @dx.op.unary.f32(i32 21, float %869)  ; Exp(value)
  %871 = fsub fast float 1.000000e+00, %870
  %872 = fmul fast float %861, %871
  %873 = fsub fast float -0.000000e+00, %872
  %874 = fdiv fast float %873, %864
  br label %875

; <label>:875                                     ; preds = %868, %859
  %876 = phi float [ %874, %868 ], [ %861, %859 ]
  %877 = phi float [ %870, %868 ], [ 1.000000e+00, %859 ]
  %878 = fcmp fast une float %865, 0.000000e+00
  br i1 %878, label %879, label %886, !dx.controlflow.hints !94

; <label>:879                                     ; preds = %875
  %880 = fmul fast float %865, 0x3FF7154760000000
  %881 = call float @dx.op.unary.f32(i32 21, float %880)  ; Exp(value)
  %882 = fsub fast float 1.000000e+00, %881
  %883 = fmul fast float %862, %882
  %884 = fsub fast float -0.000000e+00, %883
  %885 = fdiv fast float %884, %865
  br label %886

; <label>:886                                     ; preds = %879, %875
  %887 = phi float [ %885, %879 ], [ %862, %875 ]
  %888 = phi float [ %881, %879 ], [ 1.000000e+00, %875 ]
  %889 = fcmp fast une float %866, 0.000000e+00
  br i1 %889, label %890, label %897, !dx.controlflow.hints !94

; <label>:890                                     ; preds = %886
  %891 = fmul fast float %866, 0x3FF7154760000000
  %892 = call float @dx.op.unary.f32(i32 21, float %891)  ; Exp(value)
  %893 = fsub fast float 1.000000e+00, %892
  %894 = fmul fast float %863, %893
  %895 = fsub fast float -0.000000e+00, %894
  %896 = fdiv fast float %895, %866
  br label %897

; <label>:897                                     ; preds = %890, %886, %846, %839
  %898 = phi float [ %896, %890 ], [ %858, %846 ], [ %843, %839 ], [ %863, %886 ]
  %899 = phi float [ %887, %890 ], [ %857, %846 ], [ %842, %839 ], [ %887, %886 ]
  %900 = phi float [ %876, %890 ], [ %856, %846 ], [ %841, %839 ], [ %876, %886 ]
  %901 = phi float [ %892, %890 ], [ %848, %846 ], [ 1.000000e+00, %839 ], [ 1.000000e+00, %886 ]
  %902 = phi float [ %888, %890 ], [ %848, %846 ], [ 1.000000e+00, %839 ], [ %888, %886 ]
  %903 = phi float [ %877, %890 ], [ %848, %846 ], [ 1.000000e+00, %839 ], [ %877, %886 ]
  %904 = fmul fast float %903, %815
  %905 = fmul fast float %902, %826
  %906 = fmul fast float %901, %837
  %907 = fadd fast float %904, %900
  %908 = fadd fast float %905, %899
  %909 = fadd fast float %906, %898
  %910 = fmul fast float %903, %814
  %911 = fmul fast float %902, %825
  %912 = fmul fast float %901, %836
  br label %913

; <label>:913                                     ; preds = %897, %708
  %914 = phi float [ %912, %897 ], [ %714, %708 ]
  %915 = phi float [ %911, %897 ], [ %713, %708 ]
  %916 = phi float [ %910, %897 ], [ %712, %708 ]
  %917 = phi float [ %909, %897 ], [ %711, %708 ]
  %918 = phi float [ %908, %897 ], [ %710, %708 ]
  %919 = phi float [ %907, %897 ], [ %709, %708 ]
  %920 = fmul fast float %50, %79
  %921 = fmul fast float %51, %80
  %922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %920, float %921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = extractvalue %dx.types.ResRet.f32 %922, 1
  %925 = extractvalue %dx.types.ResRet.f32 %922, 2
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %928 = fmul fast float %927, %923
  %929 = fmul fast float %927, %924
  %930 = fmul fast float %927, %925
  %931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %920, float %921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = fmul fast float %932, %916
  %934 = fmul fast float %932, %915
  %935 = fmul fast float %932, %914
  %936 = fmul fast float %932, %919
  %937 = fmul fast float %932, %918
  %938 = fmul fast float %932, %917
  %939 = fadd fast float %936, %928
  %940 = fadd fast float %937, %929
  %941 = fadd fast float %938, %930
  br label %942

; <label>:942                                     ; preds = %913, %0
  %943 = phi float [ %939, %913 ], [ 0.000000e+00, %0 ]
  %944 = phi float [ %940, %913 ], [ 0.000000e+00, %0 ]
  %945 = phi float [ %941, %913 ], [ 0.000000e+00, %0 ]
  %946 = phi float [ %933, %913 ], [ 1.000000e+00, %0 ]
  %947 = phi float [ %934, %913 ], [ 1.000000e+00, %0 ]
  %948 = phi float [ %935, %913 ], [ 1.000000e+00, %0 ]
  %949 = phi float [ %84, %913 ], [ %64, %0 ]
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %952 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %953 = fmul fast float %951, %79
  %954 = fmul fast float %952, %80
  %955 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %956 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  %957 = select i1 %76, i32 2, i32 0
  %958 = or i32 %957, 1
  %959 = uitofp i32 %958 to float
  %960 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %955, float %956, float %959, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = extractvalue %dx.types.ResRet.f32 %960, 3
  %965 = add nuw nsw i32 %957, 2
  %966 = uitofp i32 %965 to float
  %967 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %21, float %955, float %956, float %966, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = extractvalue %dx.types.ResRet.f32 %967, 1
  %970 = extractvalue %dx.types.ResRet.f32 %967, 2
  %971 = extractvalue %dx.types.ResRet.f32 %967, 3
  %972 = call float @dx.op.binary.f32(i32 35, float %962, float %963)  ; FMax(a,b)
  %973 = call float @dx.op.binary.f32(i32 35, float %961, float %972)  ; FMax(a,b)
  %974 = call float @dx.op.binary.f32(i32 35, float %973, float %964)  ; FMax(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %969, float %970)  ; FMin(a,b)
  %976 = call float @dx.op.binary.f32(i32 36, float %968, float %975)  ; FMin(a,b)
  %977 = call float @dx.op.binary.f32(i32 36, float %976, float %971)  ; FMin(a,b)
  %978 = fmul fast float %974, 2.550000e+02
  %979 = fadd fast float %978, 0x3F70101020000000
  %980 = fptoui float %979 to i32
  %981 = fmul fast float %977, 2.550000e+02
  %982 = fadd fast float %981, 0x3F70101020000000
  %983 = fptoui float %982 to i32
  %984 = icmp ult i32 %980, %983
  br i1 %984, label %985, label %1153, !dx.controlflow.hints !97

; <label>:985                                     ; preds = %942
  %986 = fadd fast float %949, -4.000000e+00
  %987 = call float @dx.op.binary.f32(i32 35, float %986, float 0.000000e+00)  ; FMax(a,b)
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = fadd fast float %989, %987
  %991 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %992 = fmul fast float %990, %991
  %993 = call float @dx.op.unary.f32(i32 23, float %992)  ; Log(value)
  %994 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %995 = fmul fast float %994, %993
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %998 = fmul fast float %995, %997
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = select i1 %78, float 1.000000e+00, float %999
  %1001 = uitofp i32 %980 to float
  %1002 = uitofp i32 %983 to float
  %1003 = fadd fast float %1001, 5.000000e-01
  %1004 = fadd fast float %1002, 5.000000e-01
  %1005 = fmul fast float %997, %1003
  %1006 = fmul fast float %997, %1004
  %1007 = fadd fast float %1005, 0x3F0FFB4800000000
  %1008 = fadd fast float %1006, 0xBF0FFB4800000000
  %1009 = call float @dx.op.binary.f32(i32 35, float %1000, float %1007)  ; FMax(a,b)
  %1010 = call float @dx.op.binary.f32(i32 36, float %1009, float %1008)  ; FMin(a,b)
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1015 = select i1 %76, float %1014, float 0.000000e+00
  %1016 = fmul fast float %1012, %1010
  %1017 = fadd fast float %1015, %1016
  %1018 = fadd fast float %1015, %1013
  %1019 = fsub fast float %1012, %1013
  %1020 = fadd fast float %1019, %1015
  %1021 = call float @dx.op.binary.f32(i32 35, float %1017, float %1018)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 36, float %1021, float %1020)  ; FMin(a,b)
  %1023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %955, float %956, float %1022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.i32 %1027, 0
  %1029 = extractvalue %dx.types.CBufRet.i32 %1027, 1
  %1030 = uitofp i32 %1028 to float
  %1031 = uitofp i32 %1029 to float
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = fmul fast float %1030, %955
  %1036 = fmul fast float %1031, %956
  %1037 = fadd fast float %1035, -5.000000e-01
  %1038 = fadd fast float %1036, -5.000000e-01
  %1039 = call float @dx.op.unary.f32(i32 22, float %1037)  ; Frc(value)
  %1040 = call float @dx.op.unary.f32(i32 22, float %1038)  ; Frc(value)
  %1041 = fmul fast float %1039, %1039
  %1042 = fmul fast float %1041, %1039
  %1043 = fsub fast float 3.000000e+00, %1039
  %1044 = fmul fast float %1041, %1043
  %1045 = fmul fast float %1039, 3.000000e+00
  %1046 = fmul fast float %1042, 3.000000e+00
  %1047 = fmul fast float %1041, 6.000000e+00
  %1048 = fsub fast float %1046, %1047
  %1049 = fadd fast float %1048, 4.000000e+00
  %1050 = fmul fast float %1049, 0x3FC5555560000000
  %1051 = fmul fast float %1042, -3.000000e+00
  %1052 = fadd fast float %1041, %1039
  %1053 = fmul fast float %1052, 3.000000e+00
  %1054 = fadd fast float %1051, 1.000000e+00
  %1055 = fadd fast float %1054, %1053
  %1056 = fmul fast float %1042, 0x3FC5555560000000
  %1057 = fmul fast float %1040, %1040
  %1058 = fmul fast float %1057, %1040
  %1059 = fsub fast float 3.000000e+00, %1040
  %1060 = fmul fast float %1057, %1059
  %1061 = fmul fast float %1040, 3.000000e+00
  %1062 = fmul fast float %1058, 3.000000e+00
  %1063 = fmul fast float %1057, 6.000000e+00
  %1064 = fsub fast float %1062, %1063
  %1065 = fadd fast float %1064, 4.000000e+00
  %1066 = fmul fast float %1065, 0x3FC5555560000000
  %1067 = fmul fast float %1058, -3.000000e+00
  %1068 = fadd fast float %1057, %1040
  %1069 = fmul fast float %1068, 3.000000e+00
  %1070 = fadd fast float %1067, 1.000000e+00
  %1071 = fadd fast float %1070, %1069
  %1072 = fmul fast float %1058, 0x3FC5555560000000
  %1073 = fadd fast float %1039, 1.000000e+00
  %1074 = fsub fast float 1.000000e+00, %1045
  %1075 = fadd fast float %1074, %1044
  %1076 = fadd fast float %1075, %1049
  %1077 = fmul fast float %1076, 0x3FC5555560000000
  %1078 = fdiv fast float %1050, %1077
  %1079 = fsub fast float %1073, %1078
  %1080 = fsub fast float 1.000000e+00, %1039
  %1081 = fadd fast float %1055, %1042
  %1082 = fmul fast float %1081, 0x3FC5555560000000
  %1083 = fdiv fast float %1056, %1082
  %1084 = fadd fast float %1080, %1083
  %1085 = fadd fast float %1040, 1.000000e+00
  %1086 = fsub fast float 1.000000e+00, %1061
  %1087 = fadd fast float %1086, %1060
  %1088 = fadd fast float %1087, %1065
  %1089 = fmul fast float %1088, 0x3FC5555560000000
  %1090 = fdiv fast float %1066, %1089
  %1091 = fsub fast float %1085, %1090
  %1092 = fsub fast float 1.000000e+00, %1040
  %1093 = fadd fast float %1071, %1058
  %1094 = fmul fast float %1093, 0x3FC5555560000000
  %1095 = fdiv fast float %1072, %1094
  %1096 = fadd fast float %1095, %1092
  %1097 = fmul fast float %1079, %1033
  %1098 = fsub fast float %955, %1097
  %1099 = fmul fast float %1084, %1033
  %1100 = fadd fast float %1099, %955
  %1101 = fmul fast float %1096, %1034
  %1102 = fadd fast float %1101, %956
  %1103 = fmul fast float %1091, %1034
  %1104 = fsub fast float %956, %1103
  %1105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1098, float %1104, float %1022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1100, float %1104, float %1022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1098, float %1102, float %1022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1100, float %1102, float %1022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.f32 %1117, 2
  %1121 = fsub fast float %1114, %1106
  %1122 = fsub fast float %1115, %1107
  %1123 = fsub fast float %1116, %1108
  %1124 = fmul fast float %1121, %1094
  %1125 = fmul fast float %1122, %1094
  %1126 = fmul fast float %1123, %1094
  %1127 = fadd fast float %1124, %1106
  %1128 = fadd fast float %1125, %1107
  %1129 = fadd fast float %1126, %1108
  %1130 = fsub fast float %1118, %1110
  %1131 = fsub fast float %1119, %1111
  %1132 = fsub fast float %1120, %1112
  %1133 = fmul fast float %1130, %1094
  %1134 = fmul fast float %1131, %1094
  %1135 = fmul fast float %1132, %1094
  %1136 = fsub fast float %1110, %1127
  %1137 = fadd fast float %1136, %1133
  %1138 = fsub fast float %1111, %1128
  %1139 = fadd fast float %1138, %1134
  %1140 = fsub fast float %1112, %1129
  %1141 = fadd fast float %1140, %1135
  %1142 = fmul fast float %1137, %1082
  %1143 = fmul fast float %1139, %1082
  %1144 = fmul fast float %1141, %1082
  %1145 = fadd fast float %1142, %1127
  %1146 = fadd fast float %1143, %1128
  %1147 = fadd fast float %1144, %1129
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 1
  %1150 = fmul fast float %1145, %1149
  %1151 = fmul fast float %1146, %1149
  %1152 = fmul fast float %1147, %1149
  br label %1153

; <label>:1153                                    ; preds = %985, %942
  %1154 = phi float [ %1024, %985 ], [ 1.000000e+00, %942 ]
  %1155 = phi float [ %1025, %985 ], [ 1.000000e+00, %942 ]
  %1156 = phi float [ %1026, %985 ], [ 1.000000e+00, %942 ]
  %1157 = phi float [ %1150, %985 ], [ 0.000000e+00, %942 ]
  %1158 = phi float [ %1151, %985 ], [ 0.000000e+00, %942 ]
  %1159 = phi float [ %1152, %985 ], [ 0.000000e+00, %942 ]
  %1160 = fmul fast float %1154, %946
  %1161 = fmul fast float %1155, %947
  %1162 = fmul fast float %1156, %948
  %1163 = fmul fast float %1154, %943
  %1164 = fmul fast float %1155, %944
  %1165 = fmul fast float %1156, %945
  %1166 = fadd fast float %1157, %1163
  %1167 = fadd fast float %1158, %1164
  %1168 = fadd fast float %1159, %1165
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1171 = fmul fast float %1170, 0x3FE3C6EF40000000
  %1172 = frem fast float %47, 2.560000e+02
  %1173 = frem fast float %48, 2.560000e+02
  %1174 = fptoui float %1172 to i32
  %1175 = fptoui float %1173 to i32
  %1176 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1174, i32 %1175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = fadd fast float %1177, %1171
  %1179 = call float @dx.op.unary.f32(i32 22, float %1178)  ; Frc(value)
  %1180 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.i32 %1184, 3
  %1186 = and i32 %1185, 3
  %1187 = icmp ne i32 %1186, 0
  %1188 = and i32 %1185, 4
  %1189 = icmp ne i32 %1188, 0
  %1190 = and i1 %1187, %1189
  br i1 %1190, label %1191, label %1200, !dx.controlflow.hints !98

; <label>:1191                                    ; preds = %1153
  %1192 = fmul fast float %51, %80
  %1193 = fmul fast float %50, %79
  %1194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1193, float %1192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = fsub fast float 1.000000e+00, %1195
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = fcmp fast olt float %1196, %1198
  br label %1203

; <label>:1200                                    ; preds = %1153
  %1201 = icmp eq i32 %1188, 0
  %1202 = and i1 %1187, %1201
  br label %1203

; <label>:1203                                    ; preds = %1200, %1191
  %1204 = phi i1 [ %1199, %1191 ], [ %1202, %1200 ]
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  br i1 %1204, label %1207, label %1226, !dx.controlflow.hints !99

; <label>:1207                                    ; preds = %1203
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 3
  %1210 = call float @dx.op.dot3.f32(i32 55, float %1160, float %1161, float %1162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1211 = fmul fast float %1210, %1181
  %1212 = call float @dx.op.dot3.f32(i32 55, float %1166, float %1167, float %1168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1213 = fmul fast float %1206, %1212
  %1214 = fadd fast float %1213, %1211
  br i1 %1190, label %1215, label %1221, !dx.controlflow.hints !100

; <label>:1215                                    ; preds = %1207
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1218 = fadd fast float %1160, -1.000000e+00
  %1219 = fmul fast float %1217, %1218
  %1220 = fadd fast float %1219, 1.000000e+00
  br label %1221

; <label>:1221                                    ; preds = %1215, %1207
  %1222 = phi float [ %1220, %1215 ], [ %1160, %1207 ]
  %1223 = fsub fast float %1182, %1209
  %1224 = fmul fast float %1222, %1223
  %1225 = fadd fast float %1224, %1209
  br label %1236

; <label>:1226                                    ; preds = %1203
  %1227 = fmul fast float %1181, %1160
  %1228 = fmul fast float %1182, %1161
  %1229 = fmul fast float %1183, %1162
  %1230 = fmul fast float %1206, %1166
  %1231 = fmul fast float %1206, %1167
  %1232 = fmul fast float %1206, %1168
  %1233 = fadd fast float %1230, %1227
  %1234 = fadd fast float %1231, %1228
  %1235 = fadd fast float %1232, %1229
  br label %1236

; <label>:1236                                    ; preds = %1226, %1221
  %1237 = phi float [ %1214, %1221 ], [ %1233, %1226 ]
  %1238 = phi float [ %1225, %1221 ], [ %1234, %1226 ]
  %1239 = phi float [ %1183, %1221 ], [ %1235, %1226 ]
  %1240 = lshr i32 %43, 2
  %1241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.i32 %1241, 1
  %1243 = shl i32 %1242, 1
  %1244 = lshr i32 %44, 4
  %1245 = and i32 %1244, 134217727
  %1246 = extractvalue %dx.types.CBufRet.i32 %1241, 0
  %1247 = mul i32 %1246, %1245
  %1248 = lshr i32 %43, 5
  %1249 = and i32 %1248, 67108863
  %1250 = add i32 %1243, %1249
  %1251 = add i32 %1250, %1247
  %1252 = shl i32 %1251, 2
  %1253 = and i32 %46, 24
  %1254 = and i32 %1240, 7
  %1255 = or i32 %1253, %1254
  %1256 = shl i32 1, %1255
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, %1256
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1276, label %1261, !dx.controlflow.hints !101

; <label>:1261                                    ; preds = %1236
  %1262 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = fcmp fast ogt float %1263, 0.000000e+00
  br i1 %1264, label %1265, label %1276, !dx.controlflow.hints !102

; <label>:1265                                    ; preds = %1261
  %1266 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.ResRet.f32 %1266, 3
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1273 = fmul fast float %1272, %1267
  %1274 = fmul fast float %1272, %1268
  %1275 = fmul fast float %1272, %1269
  br label %1276

; <label>:1276                                    ; preds = %1265, %1261, %1236
  %1277 = phi float [ %1273, %1265 ], [ 0.000000e+00, %1261 ], [ 0.000000e+00, %1236 ]
  %1278 = phi float [ %1274, %1265 ], [ 0.000000e+00, %1261 ], [ 0.000000e+00, %1236 ]
  %1279 = phi float [ %1275, %1265 ], [ 0.000000e+00, %1261 ], [ 0.000000e+00, %1236 ]
  %1280 = phi float [ %1270, %1265 ], [ 0.000000e+00, %1261 ], [ 0.000000e+00, %1236 ]
  %1281 = fsub fast float 1.000000e+00, %1280
  %1282 = fmul fast float %1281, %1237
  %1283 = fmul fast float %1281, %1238
  %1284 = fmul fast float %1281, %1239
  %1285 = fadd fast float %1282, %1277
  %1286 = fadd fast float %1283, %1278
  %1287 = fadd fast float %1284, %1279
  %1288 = fadd fast float %1179, 0x3FE3C6EF40000000
  %1289 = call float @dx.op.unary.f32(i32 22, float %1288)  ; Frc(value)
  %1290 = call float @dx.op.unary.f32(i32 23, float %1285)  ; Log(value)
  %1291 = fadd fast float %1290, -7.000000e+00
  %1292 = call float @dx.op.unary.f32(i32 21, float %1291)  ; Exp(value)
  %1293 = fmul fast float %1289, 2.000000e+00
  %1294 = fadd fast float %1293, -1.000000e+00
  %1295 = fmul fast float %1292, %1294
  %1296 = fcmp fast ogt float %1285, 0.000000e+00
  %1297 = select i1 %1296, float %1295, float 0.000000e+00
  %1298 = fadd fast float %1297, %1285
  %1299 = fadd fast float %1179, 0x3FF3C6EF40000000
  %1300 = call float @dx.op.unary.f32(i32 22, float %1299)  ; Frc(value)
  %1301 = call float @dx.op.unary.f32(i32 23, float %1286)  ; Log(value)
  %1302 = fadd fast float %1301, -7.000000e+00
  %1303 = call float @dx.op.unary.f32(i32 21, float %1302)  ; Exp(value)
  %1304 = fmul fast float %1300, 2.000000e+00
  %1305 = fadd fast float %1304, -1.000000e+00
  %1306 = fmul fast float %1303, %1305
  %1307 = fcmp fast ogt float %1286, 0.000000e+00
  %1308 = select i1 %1307, float %1306, float 0.000000e+00
  %1309 = fadd fast float %1308, %1286
  %1310 = fadd fast float %1179, 0x3FFDAA66E0000000
  %1311 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1312 = call float @dx.op.unary.f32(i32 23, float %1287)  ; Log(value)
  %1313 = fadd fast float %1312, -6.000000e+00
  %1314 = call float @dx.op.unary.f32(i32 21, float %1313)  ; Exp(value)
  %1315 = fmul fast float %1311, 2.000000e+00
  %1316 = fadd fast float %1315, -1.000000e+00
  %1317 = fmul fast float %1314, %1316
  %1318 = fcmp fast ogt float %1287, 0.000000e+00
  %1319 = select i1 %1318, float %1317, float 0.000000e+00
  %1320 = fadd fast float %1319, %1287
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %45, i32 %46, i32 undef, float %1298, float %1309, float %1320, float %1298, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.i32 %1321, 0
  %1323 = and i32 %1322, 1
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1328, label %1325, !dx.controlflow.hints !103

; <label>:1325                                    ; preds = %1276
  %1326 = and i32 %43, 2147483647
  %1327 = and i32 %44, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1326, i32 %1327, i32 undef, float %1181, float %1182, float %1183, float %1181, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1328

; <label>:1328                                    ; preds = %1325, %1276
  br label %1329

; <label>:1329                                    ; preds = %1352, %1328
  %1330 = phi float [ %1353, %1352 ], [ %1285, %1328 ]
  %1331 = phi float [ %1354, %1352 ], [ %1286, %1328 ]
  %1332 = phi float [ %1355, %1352 ], [ %1287, %1328 ]
  %1333 = phi float [ %1356, %1352 ], [ 1.000000e+00, %1328 ]
  %1334 = phi i32 [ %1339, %1352 ], [ 14, %1328 ]
  %1335 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1334)  ; FirstbitLo(value)
  %1336 = and i32 %1335, 31
  %1337 = shl i32 1, %1336
  %1338 = xor i32 %1337, -1
  %1339 = and i32 %1334, %1338
  %1340 = and i32 %1335, 1
  %1341 = lshr i32 %1335, 1
  %1342 = or i32 %1340, %45
  %1343 = add i32 %1341, %46
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 0
  %1346 = fptoui float %1345 to i32
  %1347 = icmp uge i32 %1342, %1346
  %1348 = extractvalue %dx.types.CBufRet.f32 %1344, 1
  %1349 = fptoui float %1348 to i32
  %1350 = icmp uge i32 %1343, %1349
  %1351 = or i1 %1347, %1350
  br i1 %1351, label %1352, label %1358, !dx.controlflow.hints !104

; <label>:1352                                    ; preds = %1523, %1329
  %1353 = phi float [ %1330, %1329 ], [ %1524, %1523 ]
  %1354 = phi float [ %1331, %1329 ], [ %1525, %1523 ]
  %1355 = phi float [ %1332, %1329 ], [ %1526, %1523 ]
  %1356 = phi float [ %1333, %1329 ], [ %1527, %1523 ]
  %1357 = icmp eq i32 %1339, 0
  br i1 %1357, label %1528, label %1329

; <label>:1358                                    ; preds = %1329
  %1359 = uitofp i32 %1342 to float
  %1360 = uitofp i32 %1343 to float
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1363 = fmul fast float %1362, 0x3FE3C6EF40000000
  %1364 = frem fast float %1359, 2.560000e+02
  %1365 = frem fast float %1360, 2.560000e+02
  %1366 = fptoui float %1364 to i32
  %1367 = fptoui float %1365 to i32
  %1368 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1366, i32 %1367, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = fadd fast float %1369, %1363
  %1371 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1372 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %1342, i32 %1343, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.i32 %1376, 3
  %1378 = and i32 %1377, 3
  %1379 = icmp ne i32 %1378, 0
  %1380 = and i32 %1377, 4
  %1381 = icmp ne i32 %1380, 0
  %1382 = and i1 %1379, %1381
  br i1 %1382, label %1383, label %1396, !dx.controlflow.hints !98

; <label>:1383                                    ; preds = %1358
  %1384 = fadd fast float %1360, 5.000000e-01
  %1385 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1386 = fmul fast float %1385, %1384
  %1387 = fadd fast float %1359, 5.000000e-01
  %1388 = extractvalue %dx.types.CBufRet.f32 %1344, 2
  %1389 = fmul fast float %1388, %1387
  %1390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1389, float %1386, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = fsub fast float 1.000000e+00, %1391
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = fcmp fast olt float %1392, %1394
  br label %1399

; <label>:1396                                    ; preds = %1358
  %1397 = icmp eq i32 %1380, 0
  %1398 = and i1 %1379, %1397
  br label %1399

; <label>:1399                                    ; preds = %1396, %1383
  %1400 = phi i1 [ %1395, %1383 ], [ %1398, %1396 ]
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 0
  br i1 %1400, label %1403, label %1422, !dx.controlflow.hints !99

; <label>:1403                                    ; preds = %1399
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 3
  %1406 = call float @dx.op.dot3.f32(i32 55, float %1160, float %1161, float %1162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1407 = fmul fast float %1406, %1373
  %1408 = call float @dx.op.dot3.f32(i32 55, float %1166, float %1167, float %1168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1409 = fmul fast float %1402, %1408
  %1410 = fadd fast float %1409, %1407
  br i1 %1382, label %1411, label %1417, !dx.controlflow.hints !100

; <label>:1411                                    ; preds = %1403
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 1
  %1414 = fadd fast float %1160, -1.000000e+00
  %1415 = fmul fast float %1413, %1414
  %1416 = fadd fast float %1415, 1.000000e+00
  br label %1417

; <label>:1417                                    ; preds = %1411, %1403
  %1418 = phi float [ %1416, %1411 ], [ %1160, %1403 ]
  %1419 = fsub fast float %1374, %1405
  %1420 = fmul fast float %1418, %1419
  %1421 = fadd fast float %1420, %1405
  br label %1432

; <label>:1422                                    ; preds = %1399
  %1423 = fmul fast float %1373, %1160
  %1424 = fmul fast float %1374, %1161
  %1425 = fmul fast float %1375, %1162
  %1426 = fmul fast float %1402, %1166
  %1427 = fmul fast float %1402, %1167
  %1428 = fmul fast float %1402, %1168
  %1429 = fadd fast float %1426, %1423
  %1430 = fadd fast float %1427, %1424
  %1431 = fadd fast float %1428, %1425
  br label %1432

; <label>:1432                                    ; preds = %1422, %1417
  %1433 = phi float [ %1410, %1417 ], [ %1429, %1422 ]
  %1434 = phi float [ %1421, %1417 ], [ %1430, %1422 ]
  %1435 = phi float [ %1375, %1417 ], [ %1431, %1422 ]
  %1436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.i32 %1436, 1
  %1438 = shl i32 %1437, 1
  %1439 = lshr i32 %1343, 5
  %1440 = extractvalue %dx.types.CBufRet.i32 %1436, 0
  %1441 = mul i32 %1440, %1439
  %1442 = add i32 %1438, %1249
  %1443 = add i32 %1442, %1441
  %1444 = shl i32 %1443, 2
  %1445 = and i32 %1343, 24
  %1446 = or i32 %1445, %1254
  %1447 = shl i32 1, %1446
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, %1447
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1467, label %1452, !dx.controlflow.hints !101

; <label>:1452                                    ; preds = %1432
  %1453 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1342, i32 %1343, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1454 = extractvalue %dx.types.ResRet.f32 %1453, 0
  %1455 = fcmp fast ogt float %1454, 0.000000e+00
  br i1 %1455, label %1456, label %1467, !dx.controlflow.hints !102

; <label>:1456                                    ; preds = %1452
  %1457 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1342, i32 %1343, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.ResRet.f32 %1457, 2
  %1461 = extractvalue %dx.types.ResRet.f32 %1457, 3
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1464 = fmul fast float %1463, %1458
  %1465 = fmul fast float %1463, %1459
  %1466 = fmul fast float %1463, %1460
  br label %1467

; <label>:1467                                    ; preds = %1456, %1452, %1432
  %1468 = phi float [ %1464, %1456 ], [ 0.000000e+00, %1452 ], [ 0.000000e+00, %1432 ]
  %1469 = phi float [ %1465, %1456 ], [ 0.000000e+00, %1452 ], [ 0.000000e+00, %1432 ]
  %1470 = phi float [ %1466, %1456 ], [ 0.000000e+00, %1452 ], [ 0.000000e+00, %1432 ]
  %1471 = phi float [ %1461, %1456 ], [ 0.000000e+00, %1452 ], [ 0.000000e+00, %1432 ]
  %1472 = fsub fast float 1.000000e+00, %1471
  %1473 = fmul fast float %1472, %1433
  %1474 = fmul fast float %1472, %1434
  %1475 = fmul fast float %1472, %1435
  %1476 = fadd fast float %1473, %1468
  %1477 = fadd fast float %1474, %1469
  %1478 = fadd fast float %1475, %1470
  %1479 = fadd fast float %1371, 0x3FE3C6EF40000000
  %1480 = call float @dx.op.unary.f32(i32 22, float %1479)  ; Frc(value)
  %1481 = call float @dx.op.unary.f32(i32 23, float %1476)  ; Log(value)
  %1482 = fadd fast float %1481, -7.000000e+00
  %1483 = call float @dx.op.unary.f32(i32 21, float %1482)  ; Exp(value)
  %1484 = fmul fast float %1480, 2.000000e+00
  %1485 = fadd fast float %1484, -1.000000e+00
  %1486 = fmul fast float %1483, %1485
  %1487 = fcmp fast ogt float %1476, 0.000000e+00
  %1488 = select i1 %1487, float %1486, float 0.000000e+00
  %1489 = fadd fast float %1488, %1476
  %1490 = fadd fast float %1371, 0x3FF3C6EF40000000
  %1491 = call float @dx.op.unary.f32(i32 22, float %1490)  ; Frc(value)
  %1492 = call float @dx.op.unary.f32(i32 23, float %1477)  ; Log(value)
  %1493 = fadd fast float %1492, -7.000000e+00
  %1494 = call float @dx.op.unary.f32(i32 21, float %1493)  ; Exp(value)
  %1495 = fmul fast float %1491, 2.000000e+00
  %1496 = fadd fast float %1495, -1.000000e+00
  %1497 = fmul fast float %1494, %1496
  %1498 = fcmp fast ogt float %1477, 0.000000e+00
  %1499 = select i1 %1498, float %1497, float 0.000000e+00
  %1500 = fadd fast float %1499, %1477
  %1501 = fadd fast float %1371, 0x3FFDAA66E0000000
  %1502 = call float @dx.op.unary.f32(i32 22, float %1501)  ; Frc(value)
  %1503 = call float @dx.op.unary.f32(i32 23, float %1478)  ; Log(value)
  %1504 = fadd fast float %1503, -6.000000e+00
  %1505 = call float @dx.op.unary.f32(i32 21, float %1504)  ; Exp(value)
  %1506 = fmul fast float %1502, 2.000000e+00
  %1507 = fadd fast float %1506, -1.000000e+00
  %1508 = fmul fast float %1505, %1507
  %1509 = fcmp fast ogt float %1478, 0.000000e+00
  %1510 = select i1 %1509, float %1508, float 0.000000e+00
  %1511 = fadd fast float %1510, %1478
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1342, i32 %1343, i32 undef, float %1489, float %1500, float %1511, float %1489, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.i32 %1512, 0
  %1514 = and i32 %1513, 1
  %1515 = icmp ne i32 %1514, 0
  %1516 = or i32 %1343, %1335
  %1517 = and i32 %1516, 1
  %1518 = icmp eq i32 %1517, 0
  %1519 = and i1 %1518, %1515
  br i1 %1519, label %1520, label %1523, !dx.controlflow.hints !103

; <label>:1520                                    ; preds = %1467
  %1521 = and i32 %43, 2147483647
  %1522 = lshr i32 %1343, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1521, i32 %1522, i32 undef, float %1373, float %1374, float %1375, float %1373, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1523

; <label>:1523                                    ; preds = %1520, %1467
  %1524 = fadd fast float %1476, %1330
  %1525 = fadd fast float %1477, %1331
  %1526 = fadd fast float %1478, %1332
  %1527 = fadd fast float %1333, 1.000000e+00
  br label %1352

; <label>:1528                                    ; preds = %1352
  %1529 = fdiv fast float 1.000000e+00, %1356
  %1530 = fmul fast float %1529, %1353
  %1531 = fmul fast float %1529, %1354
  %1532 = fmul fast float %1529, %1355
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1531, float %1532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %28
  store float %1533, float addrspace(3)* %1534, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1535 = or i32 %43, %44
  %1536 = and i32 %1535, 1
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1538, label %1594, !dx.controlflow.hints !105

; <label>:1538                                    ; preds = %1528
  %1539 = and i32 %28, 63
  %1540 = xor i32 %1539, 1
  %1541 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %1540
  %1542 = load float, float addrspace(3)* %1541, align 4, !tbaa !49
  %1543 = call float @dx.op.binary.f32(i32 35, float %1533, float %1542)  ; FMax(a,b)
  %1544 = xor i32 %1539, 8
  %1545 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %1544
  %1546 = load float, float addrspace(3)* %1545, align 4, !tbaa !49
  %1547 = call float @dx.op.binary.f32(i32 35, float %1543, float %1546)  ; FMax(a,b)
  %1548 = xor i32 %1539, 9
  %1549 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %1548
  %1550 = load float, float addrspace(3)* %1549, align 4, !tbaa !49
  %1551 = call float @dx.op.binary.f32(i32 35, float %1547, float %1550)  ; FMax(a,b)
  %1552 = call float @dx.op.binary.f32(i32 36, float %1533, float %1542)  ; FMin(a,b)
  %1553 = call float @dx.op.binary.f32(i32 36, float %1552, float %1546)  ; FMin(a,b)
  %1554 = call float @dx.op.binary.f32(i32 36, float %1553, float %1550)  ; FMin(a,b)
  %1555 = lshr i32 %43, 1
  %1556 = lshr i32 %44, 1
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1557, 3
  %1559 = fmul fast float %1558, 3.200000e+01
  %1560 = fmul fast float %1554, 0x3F1A36E2E0000000
  %1561 = fmul fast float %1560, %1559
  %1562 = call float @dx.op.unary.f32(i32 23, float %1561)  ; Log(value)
  %1563 = fmul fast float %1562, 0x3FC4640000000000
  %1564 = call float @dx.op.unary.f32(i32 21, float %1563)  ; Exp(value)
  %1565 = fmul fast float %1564, 0x4032DA0000000000
  %1566 = fadd fast float %1565, 8.359375e-01
  %1567 = fmul fast float %1564, 1.868750e+01
  %1568 = fadd fast float %1567, 1.000000e+00
  %1569 = fdiv fast float %1566, %1568
  %1570 = call float @dx.op.unary.f32(i32 23, float %1569)  ; Log(value)
  %1571 = fmul fast float %1570, 7.884375e+01
  %1572 = call float @dx.op.unary.f32(i32 21, float %1571)  ; Exp(value)
  %1573 = fmul fast float %1551, 0x3F1A36E2E0000000
  %1574 = fmul fast float %1573, %1559
  %1575 = call float @dx.op.unary.f32(i32 23, float %1574)  ; Log(value)
  %1576 = fmul fast float %1575, 0x3FC4640000000000
  %1577 = call float @dx.op.unary.f32(i32 21, float %1576)  ; Exp(value)
  %1578 = fmul fast float %1577, 0x4032DA0000000000
  %1579 = fadd fast float %1578, 8.359375e-01
  %1580 = fmul fast float %1577, 1.868750e+01
  %1581 = fadd fast float %1580, 1.000000e+00
  %1582 = fdiv fast float %1579, %1581
  %1583 = call float @dx.op.unary.f32(i32 23, float %1582)  ; Log(value)
  %1584 = fmul fast float %1583, 7.884375e+01
  %1585 = call float @dx.op.unary.f32(i32 21, float %1584)  ; Exp(value)
  %1586 = fmul fast float %1572, 0x40778E40E0000000
  %1587 = fmul fast float %1585, 0x40778E40E0000000
  %1588 = call float @dx.op.unary.f32(i32 26, float %1586)  ; Round_ne(value)
  %1589 = call float @dx.op.unary.f32(i32 26, float %1587)  ; Round_ne(value)
  %1590 = fmul fast float %1588, 0x3F70101020000000
  %1591 = fmul fast float %1589, 0x3F70101020000000
  %1592 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1593 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1555, i32 %1556, i32 undef, float %1592, float %1593, float %1592, float %1592, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1594

; <label>:1594                                    ; preds = %1538, %1528
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!6 = !{i32 0, %"class.Texture1D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 1, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 20, i32 1, i32 7, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 15, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!23 = !{!24, !25, !26}
!24 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!30 = !{!31, !32, !33}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{void ()* @cs_post_opaque_processes_luma_dmfpscale, !"cs_post_opaque_processes_luma_dmfpscale", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 8, i32 8, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!54, !56, !58, !59, !61, !62, !63}
!54 = distinct !{!54, !55, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!55 = distinct !{!55, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!56 = distinct !{!56, !57, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!57 = distinct !{!57, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!58 = distinct !{!58, !57, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!59 = distinct !{!59, !60, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!60 = distinct !{!60, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!61 = distinct !{!61, !60, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!62 = distinct !{!62, !60, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!63 = distinct !{!63, !64, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z: %colorQuadAvg"}
!64 = distinct !{!64, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z"}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = !{!67}
!67 = distinct !{!67, !68, !"\01?sort@@YAXAIAM00@Z: %c"}
!68 = distinct !{!68, !"\01?sort@@YAXAIAM00@Z"}
!69 = !{!70, !71, !54, !56, !58, !59, !61, !62, !63}
!70 = distinct !{!70, !68, !"\01?sort@@YAXAIAM00@Z: %a"}
!71 = distinct !{!71, !68, !"\01?sort@@YAXAIAM00@Z: %b"}
!72 = !{!71}
!73 = !{!70, !67, !54, !56, !58, !59, !61, !62, !63}
!74 = !{!70}
!75 = !{!71, !67, !54, !56, !58, !59, !61, !62, !63}
!76 = !{!77}
!77 = distinct !{!77, !78, !"\01?sort@@YAXAIAM00@Z: %c"}
!78 = distinct !{!78, !"\01?sort@@YAXAIAM00@Z"}
!79 = !{!80, !81, !54, !56, !58, !59, !61, !62, !63}
!80 = distinct !{!80, !78, !"\01?sort@@YAXAIAM00@Z: %a"}
!81 = distinct !{!81, !78, !"\01?sort@@YAXAIAM00@Z: %b"}
!82 = !{!81}
!83 = !{!80, !77, !54, !56, !58, !59, !61, !62, !63}
!84 = !{!80}
!85 = !{!81, !77, !54, !56, !58, !59, !61, !62, !63}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}

