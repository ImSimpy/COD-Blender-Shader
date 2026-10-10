;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
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
; shader hash: f3609e04d27101632e7ca59633595a7f
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
;                                   texture     f32          2d     T11            t18     1
;                                   texture     f32          2d     T12            t21     1
;                                   texture     f32          2d     T13            t22     1
;                                   texture     f32          2d     T14            t12     1
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
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %25 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %26 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %27 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 0
  %32 = extractvalue %dx.types.CBufRet.i32 %30, 1
  %33 = mul i32 %32, %31
  %34 = add i32 %33, %26
  %35 = shl i32 %34, 2
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %35, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = lshr i32 %37, 16
  %39 = shl i32 %37, 3
  %40 = and i32 %39, 524280
  %41 = shl nuw nsw i32 %38, 3
  %42 = add i32 %40, %24
  %43 = add i32 %41, %25
  %44 = shl i32 %42, 1
  %45 = shl i32 %43, 1
  %46 = uitofp i32 %44 to float
  %47 = uitofp i32 %45 to float
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 3
  %51 = fmul fast float %46, %49
  %52 = fmul fast float %47, %50
  %53 = fadd fast float %51, %49
  %54 = fadd fast float %52, %50
  %55 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %21, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 3
  %57 = fcmp fast ogt float %56, -1.000000e+00
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %60 = select i1 %57, float %59, float 1.000000e+00
  %61 = fadd fast float %56, 1.000000e+00
  %62 = fmul fast float %60, %61
  %63 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  %66 = and i32 %65, 114688
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %67, i32 %44, i32 0
  %69 = select i1 %67, i32 %45, i32 0
  %70 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %68, i32 %69, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = fmul fast float %71, 2.550000e+02
  %73 = fptoui float %72 to i32
  %74 = icmp eq i32 %73, 3
  %75 = and i1 %67, %74
  %76 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %77 = fcmp fast oge float %63, %76
  %78 = fadd fast float %46, 5.000000e-01
  %79 = fadd fast float %47, 5.000000e-01
  br i1 %75, label %941, label %80, !dx.controlflow.hints !36

; <label>:80                                      ; preds = %0
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = select i1 %77, float %82, float %63
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %87 = fmul fast float %78, 2.000000e+00
  %88 = fmul fast float %87, %85
  %89 = fmul fast float %79, 2.000000e+00
  %90 = fmul fast float %89, %86
  %91 = fsub fast float 1.000000e+00, %88
  %92 = fsub fast float 1.000000e+00, %90
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fmul fast float %91, %94
  %98 = fmul fast float %91, %95
  %99 = fmul fast float %91, %96
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fmul fast float %92, %101
  %105 = fmul fast float %92, %102
  %106 = fmul fast float %92, %103
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fadd fast float %104, %108
  %112 = fadd fast float %111, %97
  %113 = fadd fast float %105, %109
  %114 = fadd fast float %113, %98
  %115 = fadd fast float %106, %110
  %116 = fadd fast float %115, %99
  %117 = fmul fast float %112, %83
  %118 = fmul fast float %114, %83
  %119 = fmul fast float %116, %83
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %149 = fcmp fast olt float %148, -5.000000e-01
  %150 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %151 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %152 = call float @dx.op.unary.f32(i32 25, float %151)  ; Rsqrt(value)
  %153 = fmul fast float %152, %151
  %154 = fmul fast float %152, %117
  %155 = fmul fast float %152, %118
  %156 = fmul fast float %152, %119
  %157 = fadd fast float %153, %126
  br i1 %77, label %158, label %170, !dx.controlflow.hints !37

; <label>:158                                     ; preds = %80
  %159 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %160 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %164 = call float @dx.op.binary.f32(i32 35, float %156, float %163)  ; FMax(a,b)
  %165 = call float @dx.op.binary.f32(i32 36, float %164, float %162)  ; FMin(a,b)
  %166 = fmul fast float %165, %160
  %167 = fadd fast float %166, %159
  %168 = call float @dx.op.unary.f32(i32 7, float %167)  ; Saturate(value)
  %169 = fmul fast float %156, %121
  br label %170

; <label>:170                                     ; preds = %158, %80
  %171 = phi float [ %121, %158 ], [ %157, %80 ]
  %172 = phi float [ %168, %158 ], [ 0.000000e+00, %80 ]
  %173 = phi float [ %169, %158 ], [ %119, %80 ]
  %174 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.i32 %175, 1
  %177 = and i32 %176, 1
  %178 = icmp ne i32 %177, 0
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = fcmp fast ogt float %180, 0.000000e+00
  %182 = and i1 %178, %181
  br i1 %182, label %183, label %592, !dx.controlflow.hints !38

; <label>:183                                     ; preds = %170
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %186 = select i1 %77, float %185, float %153
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %193 = fsub fast float %190, %192
  %194 = and i32 %176, 2
  %195 = extractvalue %dx.types.CBufRet.i32 %175, 0
  %196 = call i32 @dx.op.binary.i32(i32 40, i32 %195, i32 3)  ; UMin(a,b)
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %200 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %201 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %202 = fsub fast float %198, %200
  %203 = fsub fast float %199, %201
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = fcmp fast ogt float %205, 0.000000e+00
  %207 = fsub fast float -0.000000e+00, %202
  %208 = fsub fast float -0.000000e+00, %203
  %209 = call float @dx.op.dot2.f32(i32 54, float %154, float %155, float %154, float %155)  ; Dot2(ax,ay,bx,by)
  %210 = call float @dx.op.dot2.f32(i32 54, float %154, float %155, float %207, float %208)  ; Dot2(ax,ay,bx,by)
  %211 = fmul fast float %210, 2.000000e+00
  %212 = call float @dx.op.dot2.f32(i32 54, float %207, float %208, float %207, float %208)  ; Dot2(ax,ay,bx,by)
  %213 = fmul fast float %205, %205
  %214 = fsub fast float %212, %213
  %215 = fmul fast float %211, %211
  %216 = fmul fast float %209, 4.000000e+00
  %217 = fmul fast float %216, %214
  %218 = fsub fast float %215, %217
  %219 = fcmp fast ogt float %218, 0.000000e+00
  br i1 %219, label %220, label %235, !dx.controlflow.hints !39

; <label>:220                                     ; preds = %183
  %221 = fcmp fast ogt float %211, 0.000000e+00
  %222 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %223 = fsub fast float -0.000000e+00, %222
  %224 = select i1 %221, float %222, float %223
  %225 = fadd fast float %224, %211
  %226 = fmul float %225, -5.000000e-01
  %227 = fdiv fast float %226, %209
  %228 = call float @dx.op.binary.f32(i32 35, float %227, float 0.000000e+00)  ; FMax(a,b)
  %229 = call float @dx.op.binary.f32(i32 36, float %186, float %228)  ; FMin(a,b)
  %230 = fdiv fast float %214, %226
  %231 = call float @dx.op.binary.f32(i32 35, float %230, float 0.000000e+00)  ; FMax(a,b)
  %232 = call float @dx.op.binary.f32(i32 36, float %186, float %231)  ; FMin(a,b)
  %233 = call float @dx.op.binary.f32(i32 36, float %229, float %232)  ; FMin(a,b)
  %234 = call float @dx.op.binary.f32(i32 35, float %229, float %232)  ; FMax(a,b)
  br label %235

; <label>:235                                     ; preds = %220, %183
  %236 = phi float [ %234, %220 ], [ -1.000000e+00, %183 ]
  %237 = phi float [ %233, %220 ], [ -1.000000e+00, %183 ]
  %238 = phi i1 [ true, %220 ], [ false, %183 ]
  %239 = and i1 %206, %238
  br i1 %239, label %240, label %242, !dx.controlflow.hints !40

; <label>:240                                     ; preds = %235
  %241 = fcmp fast oeq float %237, %236
  br i1 %241, label %545, label %243, !dx.controlflow.hints !41

; <label>:242                                     ; preds = %235
  br i1 %206, label %545, label %243, !dx.controlflow.hints !42

; <label>:243                                     ; preds = %242, %240
  %244 = phi float [ %186, %242 ], [ %236, %240 ]
  %245 = phi float [ 0.000000e+00, %242 ], [ %237, %240 ]
  %246 = icmp ne i32 %194, 0
  %247 = fmul fast float %244, %156
  %248 = fadd fast float %247, %188
  %249 = fmul fast float %248, %244
  %250 = select i1 %246, float 0.000000e+00, float %249
  %251 = fcmp fast oeq float %156, 0.000000e+00
  %252 = fdiv fast float %193, %156
  %253 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %252)  ; FMax(a,b)
  %254 = select i1 %251, float %244, float %253
  %255 = call float @dx.op.binary.f32(i32 36, float %244, float %254)  ; FMin(a,b)
  %256 = fcmp fast ogt float %156, 0.000000e+00
  %257 = fcmp fast olt float %193, 0.000000e+00
  br i1 %256, label %258, label %315, !dx.controlflow.hints !43

; <label>:258                                     ; preds = %243
  %259 = icmp eq i32 %194, 0
  br i1 %257, label %260, label %304, !dx.controlflow.hints !44

; <label>:260                                     ; preds = %258
  %261 = select i1 %259, float %244, float 0.000000e+00
  %262 = fsub fast float -0.000000e+00, %261
  %263 = call float @dx.op.unary.f32(i32 6, float %262)  ; FAbs(value)
  %264 = fmul fast float %261, %156
  %265 = fadd fast float %264, %188
  %266 = fmul fast float %263, %265
  %267 = fsub fast float %250, %266
  %268 = fsub fast float %244, %263
  %269 = select i1 %259, float %268, float 0.000000e+00
  %270 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %271 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %272 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %275 = extractvalue %dx.types.CBufRet.f32 %273, 1
  %276 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %277 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %280 = call float @dx.op.binary.f32(i32 36, float %267, float %279)  ; FMin(a,b)
  %281 = fmul fast float %277, %269
  %282 = call float @dx.op.unary.f32(i32 7, float %281)  ; Saturate(value)
  %283 = fsub fast float %274, %270
  %284 = fsub fast float %275, %271
  %285 = fsub fast float %276, %272
  %286 = fmul fast float %282, %283
  %287 = fmul fast float %282, %284
  %288 = fmul fast float %282, %285
  %289 = fadd fast float %286, %270
  %290 = fadd fast float %287, %271
  %291 = fadd fast float %288, %272
  br i1 %77, label %545, label %292, !dx.controlflow.hints !45

; <label>:292                                     ; preds = %260
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = fadd fast float %295, %294
  %297 = call float @dx.op.unary.f32(i32 7, float %296)  ; Saturate(value)
  %298 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %299 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %300 = fadd fast float %299, %298
  %301 = call float @dx.op.unary.f32(i32 7, float %300)  ; Saturate(value)
  %302 = fmul fast float %297, %280
  %303 = fmul fast float %302, %301
  br label %545

; <label>:304                                     ; preds = %258
  br i1 %259, label %305, label %326, !dx.controlflow.hints !46

; <label>:305                                     ; preds = %304
  %306 = call float @dx.op.binary.f32(i32 36, float %255, float %245)  ; FMin(a,b)
  %307 = fsub fast float %255, %306
  %308 = fsub fast float %307, %244
  %309 = call float @dx.op.unary.f32(i32 6, float %308)  ; FAbs(value)
  %310 = fadd fast float %307, %244
  %311 = fmul fast float %310, %156
  %312 = fadd fast float %311, %188
  %313 = fmul fast float %312, %309
  %314 = fsub fast float %250, %313
  br label %326

; <label>:315                                     ; preds = %243
  br i1 %257, label %316, label %326, !dx.controlflow.hints !47

; <label>:316                                     ; preds = %315
  %317 = call float @dx.op.binary.f32(i32 35, float %245, float %255)  ; FMax(a,b)
  %318 = icmp eq i32 %194, 0
  %319 = select i1 %318, float %255, float 0.000000e+00
  %320 = fsub fast float -0.000000e+00, %319
  %321 = call float @dx.op.unary.f32(i32 6, float %320)  ; FAbs(value)
  %322 = fmul fast float %319, %156
  %323 = fadd fast float %322, %188
  %324 = fmul fast float %321, %323
  %325 = fsub fast float %250, %324
  br label %326

; <label>:326                                     ; preds = %316, %315, %305, %304
  %327 = phi float [ %245, %304 ], [ %245, %305 ], [ %317, %316 ], [ %245, %315 ]
  %328 = phi float [ 0.000000e+00, %304 ], [ %309, %305 ], [ %321, %316 ], [ 0.000000e+00, %315 ]
  %329 = phi float [ %250, %304 ], [ %314, %305 ], [ %325, %316 ], [ %250, %315 ]
  %330 = phi float [ %255, %304 ], [ %255, %305 ], [ %244, %316 ], [ %244, %315 ]
  %331 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %331, align 4, !tbaa !48, !noalias !52
  %332 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %332, align 4, !tbaa !48, !noalias !52
  %333 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %333, align 4, !tbaa !48, !noalias !52
  %334 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %334, align 4, !tbaa !48, !noalias !52
  %335 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %335, align 4, !tbaa !48, !noalias !52
  %336 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %336, align 4, !tbaa !48, !noalias !52
  %337 = icmp sgt i32 %196, 0
  br i1 %337, label %338, label %399

; <label>:338                                     ; preds = %326
  br label %339

; <label>:339                                     ; preds = %388, %338
  %340 = phi i32 [ %389, %388 ], [ 0, %338 ]
  %341 = phi i32 [ %390, %388 ], [ 0, %338 ]
  %342 = add nuw i32 %341, 171
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %342)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %349 = fsub fast float %344, %347
  %350 = fsub fast float %345, %348
  %351 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %352 = fsub fast float -0.000000e+00, %349
  %353 = fsub fast float -0.000000e+00, %350
  %354 = call float @dx.op.dot2.f32(i32 54, float %154, float %155, float %352, float %353)  ; Dot2(ax,ay,bx,by)
  %355 = fmul fast float %354, 2.000000e+00
  %356 = call float @dx.op.dot2.f32(i32 54, float %352, float %353, float %352, float %353)  ; Dot2(ax,ay,bx,by)
  %357 = fmul fast float %351, %351
  %358 = fsub fast float %356, %357
  %359 = fmul fast float %355, %355
  %360 = fmul fast float %216, %358
  %361 = fsub fast float %359, %360
  %362 = fcmp fast ogt float %361, 0.000000e+00
  br i1 %362, label %363, label %378, !dx.controlflow.hints !39

; <label>:363                                     ; preds = %339
  %364 = fcmp fast ogt float %355, 0.000000e+00
  %365 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %366 = fsub fast float -0.000000e+00, %365
  %367 = select i1 %364, float %365, float %366
  %368 = fadd fast float %367, %355
  %369 = fmul float %368, -5.000000e-01
  %370 = fdiv fast float %369, %209
  %371 = call float @dx.op.binary.f32(i32 35, float %370, float 0.000000e+00)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 36, float %244, float %371)  ; FMin(a,b)
  %373 = fdiv fast float %358, %369
  %374 = call float @dx.op.binary.f32(i32 35, float %373, float 0.000000e+00)  ; FMax(a,b)
  %375 = call float @dx.op.binary.f32(i32 36, float %244, float %374)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 36, float %372, float %375)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 35, float %372, float %375)  ; FMax(a,b)
  br label %378

; <label>:378                                     ; preds = %363, %339
  %379 = phi float [ %377, %363 ], [ -1.000000e+00, %339 ]
  %380 = phi float [ %376, %363 ], [ -1.000000e+00, %339 ]
  %381 = phi i1 [ true, %363 ], [ false, %339 ]
  br i1 %381, label %382, label %388, !dx.controlflow.hints !64

; <label>:382                                     ; preds = %378
  %383 = call float @dx.op.binary.f32(i32 35, float %327, float %380)  ; FMax(a,b)
  %384 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %341
  store float %383, float* %384, align 4, !tbaa !48, !noalias !52
  %385 = call float @dx.op.binary.f32(i32 35, float %327, float %379)  ; FMax(a,b)
  %386 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %341
  store float %385, float* %386, align 4, !tbaa !48, !noalias !52
  %387 = add nsw i32 %340, 1
  br label %388

; <label>:388                                     ; preds = %382, %378
  %389 = phi i32 [ %387, %382 ], [ %340, %378 ]
  %390 = add nuw nsw i32 %341, 1
  %391 = icmp eq i32 %390, %196
  br i1 %391, label %392, label %339

; <label>:392                                     ; preds = %388
  %393 = load float, float* %333, align 4, !tbaa !48, !alias.scope !65, !noalias !68
  %394 = load float, float* %332, align 4, !tbaa !48, !alias.scope !71, !noalias !72
  %395 = load float, float* %331, align 4, !tbaa !48, !alias.scope !73, !noalias !74
  %396 = load float, float* %336, align 4, !tbaa !48, !alias.scope !75, !noalias !78
  %397 = load float, float* %335, align 4, !tbaa !48, !alias.scope !81, !noalias !82
  %398 = load float, float* %334, align 4, !tbaa !48, !alias.scope !83, !noalias !84
  br label %399

; <label>:399                                     ; preds = %392, %326
  %400 = phi float [ -1.000000e+00, %326 ], [ %398, %392 ]
  %401 = phi float [ -1.000000e+00, %326 ], [ %397, %392 ]
  %402 = phi float [ -1.000000e+00, %326 ], [ %396, %392 ]
  %403 = phi float [ -1.000000e+00, %326 ], [ %395, %392 ]
  %404 = phi float [ -1.000000e+00, %326 ], [ %394, %392 ]
  %405 = phi float [ -1.000000e+00, %326 ], [ %393, %392 ]
  %406 = phi i32 [ 0, %326 ], [ %389, %392 ]
  %407 = call float @dx.op.binary.f32(i32 36, float %404, float %405)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 36, float %403, float %407)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %403, float %404)  ; FMax(a,b)
  %410 = call float @dx.op.binary.f32(i32 36, float %409, float %405)  ; FMin(a,b)
  %411 = call float @dx.op.binary.f32(i32 36, float %403, float %404)  ; FMin(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float %411, float %410)  ; FMax(a,b)
  %413 = call float @dx.op.binary.f32(i32 35, float %404, float %405)  ; FMax(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %403, float %413)  ; FMax(a,b)
  store float %408, float* %331, align 4, !tbaa !48, !alias.scope !73, !noalias !74
  store float %412, float* %332, align 4, !tbaa !48, !alias.scope !71, !noalias !72
  store float %414, float* %333, align 4, !tbaa !48, !alias.scope !65, !noalias !68
  %415 = call float @dx.op.binary.f32(i32 36, float %401, float %402)  ; FMin(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float %400, float %415)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float %400, float %401)  ; FMax(a,b)
  %418 = call float @dx.op.binary.f32(i32 36, float %417, float %402)  ; FMin(a,b)
  %419 = call float @dx.op.binary.f32(i32 36, float %400, float %401)  ; FMin(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %419, float %418)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %401, float %402)  ; FMax(a,b)
  %422 = call float @dx.op.binary.f32(i32 35, float %400, float %421)  ; FMax(a,b)
  store float %416, float* %334, align 4, !tbaa !48, !alias.scope !83, !noalias !84
  store float %420, float* %335, align 4, !tbaa !48, !alias.scope !81, !noalias !82
  store float %422, float* %336, align 4, !tbaa !48, !alias.scope !75, !noalias !78
  %423 = sub nsw i32 3, %406
  %424 = icmp sgt i32 %423, 2
  br i1 %424, label %425, label %463, !dx.controlflow.hints !85

; <label>:425                                     ; preds = %399
  %426 = icmp eq i32 %194, 0
  %427 = fsub fast float %244, %328
  %428 = select i1 %426, float %427, float %328
  %429 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 0
  %434 = extractvalue %dx.types.CBufRet.f32 %432, 1
  %435 = extractvalue %dx.types.CBufRet.f32 %432, 2
  %436 = extractvalue %dx.types.CBufRet.f32 %432, 3
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 3
  %439 = call float @dx.op.binary.f32(i32 36, float %329, float %438)  ; FMin(a,b)
  %440 = fmul fast float %436, %428
  %441 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %442 = fsub fast float %433, %429
  %443 = fsub fast float %434, %430
  %444 = fsub fast float %435, %431
  %445 = fmul fast float %441, %442
  %446 = fmul fast float %441, %443
  %447 = fmul fast float %441, %444
  %448 = fadd fast float %445, %429
  %449 = fadd fast float %446, %430
  %450 = fadd fast float %447, %431
  br i1 %77, label %545, label %451, !dx.controlflow.hints !45

; <label>:451                                     ; preds = %425
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = fadd fast float %454, %453
  %456 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  %457 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %458 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %459 = fadd fast float %458, %457
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %461 = fmul fast float %456, %439
  %462 = fmul fast float %461, %460
  br label %545

; <label>:463                                     ; preds = %399
  %464 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %423
  %465 = load float, float* %464, align 4, !tbaa !48, !noalias !52
  %466 = fcmp fast olt float %465, %330
  %467 = icmp sgt i32 %406, 0
  %468 = and i1 %467, %466
  br i1 %468, label %469, label %506

; <label>:469                                     ; preds = %463
  br label %470

; <label>:470                                     ; preds = %499, %469
  %471 = phi float [ %500, %499 ], [ %328, %469 ]
  %472 = phi float [ %501, %499 ], [ %329, %469 ]
  %473 = phi float [ %481, %499 ], [ %465, %469 ]
  %474 = phi i32 [ %478, %499 ], [ %423, %469 ]
  %475 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %474
  %476 = load float, float* %475, align 4, !tbaa !48, !noalias !52
  %477 = icmp slt i32 %474, 2
  %478 = add nsw i32 %474, 1
  %479 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %478
  %480 = load float, float* %479, align 4, !tbaa !48, !noalias !52
  %481 = select i1 %477, float %480, float %244
  %482 = call float @dx.op.binary.f32(i32 36, float %481, float %476)  ; FMin(a,b)
  %483 = call float @dx.op.binary.f32(i32 36, float %330, float %482)  ; FMin(a,b)
  %484 = icmp eq i32 %194, 0
  %485 = fadd fast float %483, %473
  %486 = fmul fast float %485, %156
  %487 = fadd fast float %486, %188
  br i1 %484, label %493, label %488, !dx.controlflow.hints !86

; <label>:488                                     ; preds = %470
  %489 = fsub fast float %483, %473
  %490 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %489)  ; FMax(a,b)
  %491 = fmul fast float %490, %487
  %492 = fadd fast float %491, %472
  br label %499

; <label>:493                                     ; preds = %470
  %494 = fsub fast float %473, %483
  %495 = call float @dx.op.unary.f32(i32 6, float %494)  ; FAbs(value)
  %496 = fadd fast float %495, %471
  %497 = fmul fast float %495, %487
  %498 = fsub fast float %472, %497
  br label %499

; <label>:499                                     ; preds = %493, %488
  %500 = phi float [ %490, %488 ], [ %496, %493 ]
  %501 = phi float [ %492, %488 ], [ %498, %493 ]
  %502 = fcmp fast olt float %481, %330
  %503 = icmp slt i32 %478, 3
  %504 = and i1 %503, %502
  br i1 %504, label %470, label %505

; <label>:505                                     ; preds = %499
  br label %506

; <label>:506                                     ; preds = %505, %463
  %507 = phi float [ %328, %463 ], [ %500, %505 ]
  %508 = phi float [ %329, %463 ], [ %501, %505 ]
  %509 = fsub fast float %244, %507
  %510 = select i1 %246, float %507, float %509
  %511 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %513 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 0
  %516 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %517 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %518 = extractvalue %dx.types.CBufRet.f32 %514, 3
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 3
  %521 = call float @dx.op.binary.f32(i32 36, float %508, float %520)  ; FMin(a,b)
  %522 = fmul fast float %518, %510
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %524 = fsub fast float %515, %511
  %525 = fsub fast float %516, %512
  %526 = fsub fast float %517, %513
  %527 = fmul fast float %523, %524
  %528 = fmul fast float %523, %525
  %529 = fmul fast float %523, %526
  %530 = fadd fast float %527, %511
  %531 = fadd fast float %528, %512
  %532 = fadd fast float %529, %513
  br i1 %77, label %545, label %533, !dx.controlflow.hints !45

; <label>:533                                     ; preds = %506
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %537 = fadd fast float %536, %535
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %540 = extractvalue %dx.types.CBufRet.f32 %534, 3
  %541 = fadd fast float %540, %539
  %542 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %543 = fmul fast float %538, %521
  %544 = fmul fast float %543, %542
  br label %545

; <label>:545                                     ; preds = %533, %506, %451, %425, %292, %260, %242, %240
  %546 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %242 ], [ %269, %292 ], [ %269, %260 ], [ %428, %451 ], [ %428, %425 ], [ %510, %533 ], [ %510, %506 ]
  %547 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %242 ], [ %303, %292 ], [ %280, %260 ], [ %462, %451 ], [ %439, %425 ], [ %544, %533 ], [ %521, %506 ]
  %548 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %242 ], [ %289, %292 ], [ %289, %260 ], [ %448, %451 ], [ %448, %425 ], [ %530, %533 ], [ %530, %506 ]
  %549 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %242 ], [ %290, %292 ], [ %290, %260 ], [ %449, %451 ], [ %449, %425 ], [ %531, %533 ], [ %531, %506 ]
  %550 = phi float [ 0.000000e+00, %240 ], [ 0.000000e+00, %242 ], [ %291, %292 ], [ %291, %260 ], [ %450, %451 ], [ %450, %425 ], [ %532, %533 ], [ %532, %506 ]
  %551 = fmul fast float %180, %547
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %554 = fsub fast float %190, %553
  %555 = fcmp fast olt float %551, -2.000000e+01
  %556 = call float @dx.op.unary.f32(i32 21, float %551)  ; Exp(value)
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 2
  %562 = fmul fast float %559, %554
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = fsub fast float 1.000000e+00, %563
  %565 = fmul fast float %156, 5.000000e-01
  %566 = fadd fast float %565, 5.000000e-01
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fsub fast float 1.000000e+00, %567
  %569 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %564)  ; FMax(a,b)
  %570 = fdiv fast float %568, %569
  %571 = fsub fast float %554, %119
  %572 = call float @dx.op.unary.f32(i32 6, float %571)  ; FAbs(value)
  %573 = fmul fast float %572, %558
  %574 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %575 = fsub fast float 1.000000e+00, %573
  %576 = fmul fast float %575, %574
  %577 = fadd fast float %576, %573
  %578 = fmul fast float %561, %554
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %580 = fsub fast float 1.000000e+00, %577
  %581 = fmul fast float %580, %579
  %582 = fadd fast float %581, %577
  %583 = call float @dx.op.unary.f32(i32 7, float %582)  ; Saturate(value)
  %584 = fadd fast float %556, -1.000000e+00
  %585 = select i1 %555, float -1.000000e+00, float %584
  %586 = fmul fast float %583, %585
  %587 = fadd fast float %586, 1.000000e+00
  %588 = fsub fast float -0.000000e+00, %586
  %589 = fmul fast float %548, %588
  %590 = fmul fast float %549, %588
  %591 = fmul fast float %550, %588
  br label %592

; <label>:592                                     ; preds = %545, %170
  %593 = phi float [ %546, %545 ], [ 0.000000e+00, %170 ]
  %594 = phi float [ %587, %545 ], [ 1.000000e+00, %170 ]
  %595 = phi float [ %589, %545 ], [ 0.000000e+00, %170 ]
  %596 = phi float [ %590, %545 ], [ 0.000000e+00, %170 ]
  %597 = phi float [ %591, %545 ], [ 0.000000e+00, %170 ]
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %600 = fsub fast float 1.000000e+00, %594
  %601 = fmul fast float %600, %171
  %602 = fmul fast float %601, %599
  %603 = fsub fast float %171, %602
  br i1 %149, label %604, label %636, !dx.controlflow.hints !87

; <label>:604                                     ; preds = %592
  %605 = fmul fast float %174, %146
  %606 = fadd fast float %605, %147
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  %608 = fmul fast float %128, %603
  %609 = fsub fast float -0.000000e+00, %608
  %610 = fmul fast float %129, %603
  %611 = fsub fast float -0.000000e+00, %610
  %612 = call float @dx.op.unary.f32(i32 21, float %609)  ; Exp(value)
  %613 = call float @dx.op.unary.f32(i32 21, float %611)  ; Exp(value)
  %614 = call float @dx.op.binary.f32(i32 35, float %136, float %612)  ; FMax(a,b)
  %615 = call float @dx.op.binary.f32(i32 35, float %136, float %613)  ; FMax(a,b)
  %616 = fsub fast float %615, %614
  %617 = fmul fast float %616, %607
  %618 = fadd fast float %617, %614
  %619 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %620 = fmul fast float %172, %150
  %621 = fsub fast float 1.000000e+00, %620
  %622 = select i1 %77, float %621, float %619
  %623 = fsub fast float %133, %138
  %624 = fsub fast float %134, %139
  %625 = fsub fast float %135, %140
  %626 = fmul fast float %607, %623
  %627 = fmul fast float %607, %624
  %628 = fmul fast float %607, %625
  %629 = fadd fast float %626, %138
  %630 = fadd fast float %627, %139
  %631 = fadd fast float %628, %140
  %632 = fsub fast float 1.000000e+00, %622
  %633 = fmul fast float %632, %629
  %634 = fmul fast float %632, %630
  %635 = fmul fast float %632, %631
  br label %707

; <label>:636                                     ; preds = %592
  %637 = fmul fast float %603, %145
  %638 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %639 = fsub fast float 2.000000e+00, %638
  %640 = fmul fast float %638, 9.921875e-01
  %641 = fmul fast float %640, %639
  %642 = fadd fast float %641, 3.906250e-03
  %643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %642, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = fsub fast float %638, %644
  %646 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %645)  ; FMax(a,b)
  %647 = fmul fast float %173, %131
  %648 = call float @dx.op.unary.f32(i32 6, float %647)  ; FAbs(value)
  %649 = fcmp fast ogt float %648, 0x3EB0C6F7A0000000
  br i1 %649, label %650, label %656, !dx.controlflow.hints !88

; <label>:650                                     ; preds = %636
  %651 = fmul fast float %647, 0xBFF7154760000000
  %652 = call float @dx.op.unary.f32(i32 21, float %651)  ; Exp(value)
  %653 = fsub fast float 1.000000e+00, %652
  %654 = fdiv fast float %653, %647
  %655 = fmul fast float %654, %141
  br label %656

; <label>:656                                     ; preds = %650, %636
  %657 = phi float [ %655, %650 ], [ %141, %636 ]
  %658 = fadd fast float %657, %143
  %659 = fmul fast float %658, %646
  %660 = fmul fast float %128, %659
  %661 = fsub fast float -0.000000e+00, %660
  %662 = fmul fast float %129, %659
  %663 = fsub fast float -0.000000e+00, %662
  %664 = fmul fast float %130, %659
  %665 = fsub fast float -0.000000e+00, %664
  %666 = call float @dx.op.unary.f32(i32 21, float %661)  ; Exp(value)
  %667 = call float @dx.op.unary.f32(i32 21, float %663)  ; Exp(value)
  %668 = call float @dx.op.unary.f32(i32 21, float %665)  ; Exp(value)
  br i1 %77, label %669, label %677, !dx.controlflow.hints !89

; <label>:669                                     ; preds = %656
  %670 = fmul fast float %666, %172
  %671 = fmul fast float %667, %172
  %672 = fmul fast float %668, %172
  %673 = fsub fast float 1.000000e+00, %172
  %674 = fadd fast float %670, %673
  %675 = fadd fast float %671, %673
  %676 = fadd fast float %672, %673
  br label %677

; <label>:677                                     ; preds = %669, %656
  %678 = phi float [ %674, %669 ], [ %666, %656 ]
  %679 = phi float [ %675, %669 ], [ %667, %656 ]
  %680 = phi float [ %676, %669 ], [ %668, %656 ]
  %681 = fmul fast float %174, %174
  %682 = fadd fast float %681, 1.000000e+00
  %683 = fmul fast float %682, 0x3FAE8EC8A0000000
  %684 = fmul fast float %683, %138
  %685 = fmul fast float %683, %139
  %686 = fmul fast float %683, %140
  %687 = fmul fast float %174, %136
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul fast float %136, %136
  %690 = fsub fast float 1.000000e+00, %689
  %691 = fmul fast float %690, 0x3FB45F3060000000
  %692 = fmul fast float %688, %688
  %693 = fdiv fast float 1.000000e+00, %692
  %694 = fmul fast float %691, %693
  %695 = fmul fast float %694, %133
  %696 = fmul fast float %694, %134
  %697 = fmul fast float %694, %135
  %698 = fadd fast float %695, %684
  %699 = fadd fast float %696, %685
  %700 = fadd fast float %697, %686
  %701 = fsub fast float 1.000000e+00, %678
  %702 = fsub fast float 1.000000e+00, %679
  %703 = fsub fast float 1.000000e+00, %680
  %704 = fmul fast float %698, %701
  %705 = fmul fast float %699, %702
  %706 = fmul fast float %700, %703
  br label %707

; <label>:707                                     ; preds = %677, %604
  %708 = phi float [ %633, %604 ], [ %704, %677 ]
  %709 = phi float [ %634, %604 ], [ %705, %677 ]
  %710 = phi float [ %635, %604 ], [ %706, %677 ]
  %711 = phi float [ %622, %604 ], [ %678, %677 ]
  %712 = phi float [ %622, %604 ], [ %679, %677 ]
  %713 = phi float [ %622, %604 ], [ %680, %677 ]
  br i1 %182, label %714, label %912, !dx.controlflow.hints !90

; <label>:714                                     ; preds = %707
  %715 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %716 = fmul fast float %715, %600
  %717 = fsub fast float %595, %708
  %718 = fsub fast float %596, %709
  %719 = fsub fast float %597, %710
  %720 = fmul fast float %716, %717
  %721 = fmul fast float %716, %718
  %722 = fmul fast float %716, %719
  %723 = fadd fast float %720, %708
  %724 = fadd fast float %721, %709
  %725 = fadd fast float %722, %710
  %726 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %711)  ; FMax(a,b)
  %727 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %712)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %713)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %594)  ; FMax(a,b)
  %730 = call float @dx.op.binary.f32(i32 35, float %593, float %603)  ; FMax(a,b)
  %731 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %730)  ; FMax(a,b)
  %732 = fdiv fast float %593, %731
  %733 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %734 = fdiv fast float %603, %731
  %735 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %736 = fcmp fast une float %729, 1.000000e+00
  br i1 %736, label %737, label %750, !dx.controlflow.hints !91

; <label>:737                                     ; preds = %714
  %738 = call float @dx.op.unary.f32(i32 23, float %729)  ; Log(value)
  %739 = fmul fast float %738, 0x3FE62E4300000000
  %740 = fmul fast float %595, %739
  %741 = fsub fast float -0.000000e+00, %740
  %742 = fmul fast float %596, %739
  %743 = fsub fast float -0.000000e+00, %742
  %744 = fmul fast float %597, %739
  %745 = fsub fast float -0.000000e+00, %744
  %746 = fsub fast float 1.000000e+00, %729
  %747 = fdiv fast float %741, %746
  %748 = fdiv fast float %743, %746
  %749 = fdiv fast float %745, %746
  br label %750

; <label>:750                                     ; preds = %737, %714
  %751 = phi float [ %747, %737 ], [ %595, %714 ]
  %752 = phi float [ %748, %737 ], [ %596, %714 ]
  %753 = phi float [ %749, %737 ], [ %597, %714 ]
  %754 = phi float [ %739, %737 ], [ 0.000000e+00, %714 ]
  %755 = fcmp fast une float %726, 1.000000e+00
  br i1 %755, label %756, label %763, !dx.controlflow.hints !92

; <label>:756                                     ; preds = %750
  %757 = call float @dx.op.unary.f32(i32 23, float %726)  ; Log(value)
  %758 = fmul fast float %757, 0x3FE62E4300000000
  %759 = fmul fast float %723, %758
  %760 = fsub fast float -0.000000e+00, %759
  %761 = fsub fast float 1.000000e+00, %726
  %762 = fdiv fast float %760, %761
  br label %763

; <label>:763                                     ; preds = %756, %750
  %764 = phi float [ %762, %756 ], [ %723, %750 ]
  %765 = phi float [ %758, %756 ], [ 0.000000e+00, %750 ]
  %766 = fcmp fast une float %727, 1.000000e+00
  br i1 %766, label %767, label %774, !dx.controlflow.hints !92

; <label>:767                                     ; preds = %763
  %768 = call float @dx.op.unary.f32(i32 23, float %727)  ; Log(value)
  %769 = fmul fast float %768, 0x3FE62E4300000000
  %770 = fmul fast float %724, %769
  %771 = fsub fast float -0.000000e+00, %770
  %772 = fsub fast float 1.000000e+00, %727
  %773 = fdiv fast float %771, %772
  br label %774

; <label>:774                                     ; preds = %767, %763
  %775 = phi float [ %773, %767 ], [ %724, %763 ]
  %776 = phi float [ %769, %767 ], [ 0.000000e+00, %763 ]
  %777 = fcmp fast une float %728, 1.000000e+00
  br i1 %777, label %778, label %785, !dx.controlflow.hints !92

; <label>:778                                     ; preds = %774
  %779 = call float @dx.op.unary.f32(i32 23, float %728)  ; Log(value)
  %780 = fmul fast float %779, 0x3FE62E4300000000
  %781 = fmul fast float %725, %780
  %782 = fsub fast float -0.000000e+00, %781
  %783 = fsub fast float 1.000000e+00, %728
  %784 = fdiv fast float %782, %783
  br label %785

; <label>:785                                     ; preds = %778, %774
  %786 = phi float [ %784, %778 ], [ %725, %774 ]
  %787 = phi float [ %780, %778 ], [ 0.000000e+00, %774 ]
  %788 = fmul fast float %751, %735
  %789 = fmul fast float %752, %735
  %790 = fmul fast float %753, %735
  %791 = fmul fast float %754, %735
  %792 = fmul fast float %764, %733
  %793 = fmul fast float %775, %733
  %794 = fmul fast float %786, %733
  %795 = fmul fast float %765, %733
  %796 = fmul fast float %776, %733
  %797 = fmul fast float %787, %733
  %798 = fadd fast float %792, %788
  %799 = fadd fast float %793, %789
  %800 = fadd fast float %794, %790
  %801 = fadd fast float %795, %791
  %802 = fadd fast float %796, %791
  %803 = fadd fast float %797, %791
  %804 = fcmp fast une float %801, 0.000000e+00
  br i1 %804, label %805, label %812, !dx.controlflow.hints !93

; <label>:805                                     ; preds = %785
  %806 = fmul fast float %801, 0x3FF7154760000000
  %807 = call float @dx.op.unary.f32(i32 21, float %806)  ; Exp(value)
  %808 = fsub fast float 1.000000e+00, %807
  %809 = fmul fast float %798, %808
  %810 = fsub fast float -0.000000e+00, %809
  %811 = fdiv fast float %810, %801
  br label %812

; <label>:812                                     ; preds = %805, %785
  %813 = phi float [ %807, %805 ], [ 1.000000e+00, %785 ]
  %814 = phi float [ %811, %805 ], [ %798, %785 ]
  %815 = fcmp fast une float %802, 0.000000e+00
  br i1 %815, label %816, label %823, !dx.controlflow.hints !93

; <label>:816                                     ; preds = %812
  %817 = fmul fast float %802, 0x3FF7154760000000
  %818 = call float @dx.op.unary.f32(i32 21, float %817)  ; Exp(value)
  %819 = fsub fast float 1.000000e+00, %818
  %820 = fmul fast float %799, %819
  %821 = fsub fast float -0.000000e+00, %820
  %822 = fdiv fast float %821, %802
  br label %823

; <label>:823                                     ; preds = %816, %812
  %824 = phi float [ %818, %816 ], [ 1.000000e+00, %812 ]
  %825 = phi float [ %822, %816 ], [ %799, %812 ]
  %826 = fcmp fast une float %803, 0.000000e+00
  br i1 %826, label %827, label %834, !dx.controlflow.hints !93

; <label>:827                                     ; preds = %823
  %828 = fmul fast float %803, 0x3FF7154760000000
  %829 = call float @dx.op.unary.f32(i32 21, float %828)  ; Exp(value)
  %830 = fsub fast float 1.000000e+00, %829
  %831 = fmul fast float %800, %830
  %832 = fsub fast float -0.000000e+00, %831
  %833 = fdiv fast float %832, %803
  br label %834

; <label>:834                                     ; preds = %827, %823
  %835 = phi float [ %829, %827 ], [ 1.000000e+00, %823 ]
  %836 = phi float [ %833, %827 ], [ %800, %823 ]
  %837 = fcmp fast ogt float %733, %735
  br i1 %837, label %838, label %858, !dx.controlflow.hints !94

; <label>:838                                     ; preds = %834
  %839 = fsub fast float 1.000000e+00, %735
  %840 = fmul fast float %751, %839
  %841 = fmul fast float %752, %839
  %842 = fmul fast float %753, %839
  %843 = fmul fast float %754, %839
  %844 = fcmp fast une float %843, 0.000000e+00
  br i1 %844, label %845, label %896, !dx.controlflow.hints !95

; <label>:845                                     ; preds = %838
  %846 = fmul fast float %843, 0x3FF7154760000000
  %847 = call float @dx.op.unary.f32(i32 21, float %846)  ; Exp(value)
  %848 = fsub fast float 1.000000e+00, %847
  %849 = fmul fast float %840, %848
  %850 = fsub fast float -0.000000e+00, %849
  %851 = fmul fast float %841, %848
  %852 = fsub fast float -0.000000e+00, %851
  %853 = fmul fast float %842, %848
  %854 = fsub fast float -0.000000e+00, %853
  %855 = fdiv fast float %850, %843
  %856 = fdiv fast float %852, %843
  %857 = fdiv fast float %854, %843
  br label %896

; <label>:858                                     ; preds = %834
  %859 = fsub fast float 1.000000e+00, %733
  %860 = fmul fast float %764, %859
  %861 = fmul fast float %775, %859
  %862 = fmul fast float %786, %859
  %863 = fmul fast float %765, %859
  %864 = fmul fast float %776, %859
  %865 = fmul fast float %787, %859
  %866 = fcmp fast une float %863, 0.000000e+00
  br i1 %866, label %867, label %874, !dx.controlflow.hints !93

; <label>:867                                     ; preds = %858
  %868 = fmul fast float %863, 0x3FF7154760000000
  %869 = call float @dx.op.unary.f32(i32 21, float %868)  ; Exp(value)
  %870 = fsub fast float 1.000000e+00, %869
  %871 = fmul fast float %860, %870
  %872 = fsub fast float -0.000000e+00, %871
  %873 = fdiv fast float %872, %863
  br label %874

; <label>:874                                     ; preds = %867, %858
  %875 = phi float [ %873, %867 ], [ %860, %858 ]
  %876 = phi float [ %869, %867 ], [ 1.000000e+00, %858 ]
  %877 = fcmp fast une float %864, 0.000000e+00
  br i1 %877, label %878, label %885, !dx.controlflow.hints !93

; <label>:878                                     ; preds = %874
  %879 = fmul fast float %864, 0x3FF7154760000000
  %880 = call float @dx.op.unary.f32(i32 21, float %879)  ; Exp(value)
  %881 = fsub fast float 1.000000e+00, %880
  %882 = fmul fast float %861, %881
  %883 = fsub fast float -0.000000e+00, %882
  %884 = fdiv fast float %883, %864
  br label %885

; <label>:885                                     ; preds = %878, %874
  %886 = phi float [ %884, %878 ], [ %861, %874 ]
  %887 = phi float [ %880, %878 ], [ 1.000000e+00, %874 ]
  %888 = fcmp fast une float %865, 0.000000e+00
  br i1 %888, label %889, label %896, !dx.controlflow.hints !93

; <label>:889                                     ; preds = %885
  %890 = fmul fast float %865, 0x3FF7154760000000
  %891 = call float @dx.op.unary.f32(i32 21, float %890)  ; Exp(value)
  %892 = fsub fast float 1.000000e+00, %891
  %893 = fmul fast float %862, %892
  %894 = fsub fast float -0.000000e+00, %893
  %895 = fdiv fast float %894, %865
  br label %896

; <label>:896                                     ; preds = %889, %885, %845, %838
  %897 = phi float [ %895, %889 ], [ %857, %845 ], [ %842, %838 ], [ %862, %885 ]
  %898 = phi float [ %886, %889 ], [ %856, %845 ], [ %841, %838 ], [ %886, %885 ]
  %899 = phi float [ %875, %889 ], [ %855, %845 ], [ %840, %838 ], [ %875, %885 ]
  %900 = phi float [ %891, %889 ], [ %847, %845 ], [ 1.000000e+00, %838 ], [ 1.000000e+00, %885 ]
  %901 = phi float [ %887, %889 ], [ %847, %845 ], [ 1.000000e+00, %838 ], [ %887, %885 ]
  %902 = phi float [ %876, %889 ], [ %847, %845 ], [ 1.000000e+00, %838 ], [ %876, %885 ]
  %903 = fmul fast float %902, %814
  %904 = fmul fast float %901, %825
  %905 = fmul fast float %900, %836
  %906 = fadd fast float %903, %899
  %907 = fadd fast float %904, %898
  %908 = fadd fast float %905, %897
  %909 = fmul fast float %902, %813
  %910 = fmul fast float %901, %824
  %911 = fmul fast float %900, %835
  br label %912

; <label>:912                                     ; preds = %896, %707
  %913 = phi float [ %911, %896 ], [ %713, %707 ]
  %914 = phi float [ %910, %896 ], [ %712, %707 ]
  %915 = phi float [ %909, %896 ], [ %711, %707 ]
  %916 = phi float [ %908, %896 ], [ %710, %707 ]
  %917 = phi float [ %907, %896 ], [ %709, %707 ]
  %918 = phi float [ %906, %896 ], [ %708, %707 ]
  %919 = fmul fast float %49, %78
  %920 = fmul fast float %50, %79
  %921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %919, float %920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = extractvalue %dx.types.ResRet.f32 %921, 1
  %924 = extractvalue %dx.types.ResRet.f32 %921, 2
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 1
  %927 = fmul fast float %926, %922
  %928 = fmul fast float %926, %923
  %929 = fmul fast float %926, %924
  %930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %919, float %920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = fmul fast float %931, %915
  %933 = fmul fast float %931, %914
  %934 = fmul fast float %931, %913
  %935 = fmul fast float %931, %918
  %936 = fmul fast float %931, %917
  %937 = fmul fast float %931, %916
  %938 = fadd fast float %935, %927
  %939 = fadd fast float %936, %928
  %940 = fadd fast float %937, %929
  br label %941

; <label>:941                                     ; preds = %912, %0
  %942 = phi float [ %938, %912 ], [ 0.000000e+00, %0 ]
  %943 = phi float [ %939, %912 ], [ 0.000000e+00, %0 ]
  %944 = phi float [ %940, %912 ], [ 0.000000e+00, %0 ]
  %945 = phi float [ %932, %912 ], [ 1.000000e+00, %0 ]
  %946 = phi float [ %933, %912 ], [ 1.000000e+00, %0 ]
  %947 = phi float [ %934, %912 ], [ 1.000000e+00, %0 ]
  %948 = phi float [ %83, %912 ], [ %63, %0 ]
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 3
  %952 = fmul fast float %950, %78
  %953 = fmul fast float %951, %79
  %954 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  %955 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %956 = select i1 %75, i32 2, i32 0
  %957 = or i32 %956, 1
  %958 = uitofp i32 %957 to float
  %959 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %954, float %955, float %958, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %960 = extractvalue %dx.types.ResRet.f32 %959, 0
  %961 = extractvalue %dx.types.ResRet.f32 %959, 1
  %962 = extractvalue %dx.types.ResRet.f32 %959, 2
  %963 = extractvalue %dx.types.ResRet.f32 %959, 3
  %964 = add nuw nsw i32 %956, 2
  %965 = uitofp i32 %964 to float
  %966 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %954, float %955, float %965, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = extractvalue %dx.types.ResRet.f32 %966, 3
  %971 = call float @dx.op.binary.f32(i32 35, float %961, float %962)  ; FMax(a,b)
  %972 = call float @dx.op.binary.f32(i32 35, float %960, float %971)  ; FMax(a,b)
  %973 = call float @dx.op.binary.f32(i32 35, float %972, float %963)  ; FMax(a,b)
  %974 = call float @dx.op.binary.f32(i32 36, float %968, float %969)  ; FMin(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %967, float %974)  ; FMin(a,b)
  %976 = call float @dx.op.binary.f32(i32 36, float %975, float %970)  ; FMin(a,b)
  %977 = fmul fast float %973, 2.550000e+02
  %978 = fadd fast float %977, 0x3F70101020000000
  %979 = fptoui float %978 to i32
  %980 = fmul fast float %976, 2.550000e+02
  %981 = fadd fast float %980, 0x3F70101020000000
  %982 = fptoui float %981 to i32
  %983 = icmp ult i32 %979, %982
  br i1 %983, label %984, label %1152, !dx.controlflow.hints !96

; <label>:984                                     ; preds = %941
  %985 = fadd fast float %948, -4.000000e+00
  %986 = call float @dx.op.binary.f32(i32 35, float %985, float 0.000000e+00)  ; FMax(a,b)
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = fadd fast float %988, %986
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %991 = fmul fast float %989, %990
  %992 = call float @dx.op.unary.f32(i32 23, float %991)  ; Log(value)
  %993 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %994 = fmul fast float %993, %992
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %997 = fmul fast float %994, %996
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = select i1 %77, float 1.000000e+00, float %998
  %1000 = uitofp i32 %979 to float
  %1001 = uitofp i32 %982 to float
  %1002 = fadd fast float %1000, 5.000000e-01
  %1003 = fadd fast float %1001, 5.000000e-01
  %1004 = fmul fast float %996, %1002
  %1005 = fmul fast float %996, %1003
  %1006 = fadd fast float %1004, 0x3F0FFB4800000000
  %1007 = fadd fast float %1005, 0xBF0FFB4800000000
  %1008 = call float @dx.op.binary.f32(i32 35, float %999, float %1006)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 36, float %1008, float %1007)  ; FMin(a,b)
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 1
  %1012 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1013 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1014 = select i1 %75, float %1013, float 0.000000e+00
  %1015 = fmul fast float %1011, %1009
  %1016 = fadd fast float %1014, %1015
  %1017 = fadd fast float %1014, %1012
  %1018 = fsub fast float %1011, %1012
  %1019 = fadd fast float %1018, %1014
  %1020 = call float @dx.op.binary.f32(i32 35, float %1016, float %1017)  ; FMax(a,b)
  %1021 = call float @dx.op.binary.f32(i32 36, float %1020, float %1019)  ; FMin(a,b)
  %1022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %954, float %955, float %1021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.ResRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.ResRet.f32 %1022, 2
  %1026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.i32 %1026, 0
  %1028 = extractvalue %dx.types.CBufRet.i32 %1026, 1
  %1029 = uitofp i32 %1027 to float
  %1030 = uitofp i32 %1028 to float
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = fmul fast float %1029, %954
  %1035 = fmul fast float %1030, %955
  %1036 = fadd fast float %1034, -5.000000e-01
  %1037 = fadd fast float %1035, -5.000000e-01
  %1038 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1039 = call float @dx.op.unary.f32(i32 22, float %1037)  ; Frc(value)
  %1040 = fmul fast float %1038, %1038
  %1041 = fmul fast float %1040, %1038
  %1042 = fsub fast float 3.000000e+00, %1038
  %1043 = fmul fast float %1040, %1042
  %1044 = fmul fast float %1038, 3.000000e+00
  %1045 = fmul fast float %1041, 3.000000e+00
  %1046 = fmul fast float %1040, 6.000000e+00
  %1047 = fsub fast float %1045, %1046
  %1048 = fadd fast float %1047, 4.000000e+00
  %1049 = fmul fast float %1048, 0x3FC5555560000000
  %1050 = fmul fast float %1041, -3.000000e+00
  %1051 = fadd fast float %1040, %1038
  %1052 = fmul fast float %1051, 3.000000e+00
  %1053 = fadd fast float %1050, 1.000000e+00
  %1054 = fadd fast float %1053, %1052
  %1055 = fmul fast float %1041, 0x3FC5555560000000
  %1056 = fmul fast float %1039, %1039
  %1057 = fmul fast float %1056, %1039
  %1058 = fsub fast float 3.000000e+00, %1039
  %1059 = fmul fast float %1056, %1058
  %1060 = fmul fast float %1039, 3.000000e+00
  %1061 = fmul fast float %1057, 3.000000e+00
  %1062 = fmul fast float %1056, 6.000000e+00
  %1063 = fsub fast float %1061, %1062
  %1064 = fadd fast float %1063, 4.000000e+00
  %1065 = fmul fast float %1064, 0x3FC5555560000000
  %1066 = fmul fast float %1057, -3.000000e+00
  %1067 = fadd fast float %1056, %1039
  %1068 = fmul fast float %1067, 3.000000e+00
  %1069 = fadd fast float %1066, 1.000000e+00
  %1070 = fadd fast float %1069, %1068
  %1071 = fmul fast float %1057, 0x3FC5555560000000
  %1072 = fadd fast float %1038, 1.000000e+00
  %1073 = fsub fast float 1.000000e+00, %1044
  %1074 = fadd fast float %1073, %1043
  %1075 = fadd fast float %1074, %1048
  %1076 = fmul fast float %1075, 0x3FC5555560000000
  %1077 = fdiv fast float %1049, %1076
  %1078 = fsub fast float %1072, %1077
  %1079 = fsub fast float 1.000000e+00, %1038
  %1080 = fadd fast float %1054, %1041
  %1081 = fmul fast float %1080, 0x3FC5555560000000
  %1082 = fdiv fast float %1055, %1081
  %1083 = fadd fast float %1079, %1082
  %1084 = fadd fast float %1039, 1.000000e+00
  %1085 = fsub fast float 1.000000e+00, %1060
  %1086 = fadd fast float %1085, %1059
  %1087 = fadd fast float %1086, %1064
  %1088 = fmul fast float %1087, 0x3FC5555560000000
  %1089 = fdiv fast float %1065, %1088
  %1090 = fsub fast float %1084, %1089
  %1091 = fsub fast float 1.000000e+00, %1039
  %1092 = fadd fast float %1070, %1057
  %1093 = fmul fast float %1092, 0x3FC5555560000000
  %1094 = fdiv fast float %1071, %1093
  %1095 = fadd fast float %1094, %1091
  %1096 = fmul fast float %1078, %1032
  %1097 = fsub fast float %954, %1096
  %1098 = fmul fast float %1083, %1032
  %1099 = fadd fast float %1098, %954
  %1100 = fmul fast float %1095, %1033
  %1101 = fadd fast float %1100, %955
  %1102 = fmul fast float %1090, %1033
  %1103 = fsub fast float %955, %1102
  %1104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1097, float %1103, float %1021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1099, float %1103, float %1021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1097, float %1101, float %1021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1099, float %1101, float %1021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1116, 2
  %1120 = fsub fast float %1113, %1105
  %1121 = fsub fast float %1114, %1106
  %1122 = fsub fast float %1115, %1107
  %1123 = fmul fast float %1120, %1093
  %1124 = fmul fast float %1121, %1093
  %1125 = fmul fast float %1122, %1093
  %1126 = fadd fast float %1123, %1105
  %1127 = fadd fast float %1124, %1106
  %1128 = fadd fast float %1125, %1107
  %1129 = fsub fast float %1117, %1109
  %1130 = fsub fast float %1118, %1110
  %1131 = fsub fast float %1119, %1111
  %1132 = fmul fast float %1129, %1093
  %1133 = fmul fast float %1130, %1093
  %1134 = fmul fast float %1131, %1093
  %1135 = fsub fast float %1109, %1126
  %1136 = fadd fast float %1135, %1132
  %1137 = fsub fast float %1110, %1127
  %1138 = fadd fast float %1137, %1133
  %1139 = fsub fast float %1111, %1128
  %1140 = fadd fast float %1139, %1134
  %1141 = fmul fast float %1136, %1081
  %1142 = fmul fast float %1138, %1081
  %1143 = fmul fast float %1140, %1081
  %1144 = fadd fast float %1141, %1126
  %1145 = fadd fast float %1142, %1127
  %1146 = fadd fast float %1143, %1128
  %1147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.f32 %1147, 1
  %1149 = fmul fast float %1144, %1148
  %1150 = fmul fast float %1145, %1148
  %1151 = fmul fast float %1146, %1148
  br label %1152

; <label>:1152                                    ; preds = %984, %941
  %1153 = phi float [ %1023, %984 ], [ 1.000000e+00, %941 ]
  %1154 = phi float [ %1024, %984 ], [ 1.000000e+00, %941 ]
  %1155 = phi float [ %1025, %984 ], [ 1.000000e+00, %941 ]
  %1156 = phi float [ %1149, %984 ], [ 0.000000e+00, %941 ]
  %1157 = phi float [ %1150, %984 ], [ 0.000000e+00, %941 ]
  %1158 = phi float [ %1151, %984 ], [ 0.000000e+00, %941 ]
  %1159 = fmul fast float %1153, %945
  %1160 = fmul fast float %1154, %946
  %1161 = fmul fast float %1155, %947
  %1162 = fmul fast float %1153, %942
  %1163 = fmul fast float %1154, %943
  %1164 = fmul fast float %1155, %944
  %1165 = fadd fast float %1156, %1162
  %1166 = fadd fast float %1157, %1163
  %1167 = fadd fast float %1158, %1164
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1170 = fmul fast float %1169, 0x3FE3C6EF40000000
  %1171 = frem fast float %46, 2.560000e+02
  %1172 = frem fast float %47, 2.560000e+02
  %1173 = fptoui float %1171 to i32
  %1174 = fptoui float %1172 to i32
  %1175 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1173, i32 %1174, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = fadd fast float %1176, %1170
  %1178 = call float @dx.op.unary.f32(i32 22, float %1177)  ; Frc(value)
  %1179 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.i32 %1183, 3
  %1185 = and i32 %1184, 3
  %1186 = icmp ne i32 %1185, 0
  %1187 = and i32 %1184, 4
  %1188 = icmp ne i32 %1187, 0
  %1189 = and i1 %1186, %1188
  br i1 %1189, label %1190, label %1199, !dx.controlflow.hints !97

; <label>:1190                                    ; preds = %1152
  %1191 = fmul fast float %50, %79
  %1192 = fmul fast float %49, %78
  %1193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1192, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = fsub fast float 1.000000e+00, %1194
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1198 = fcmp fast olt float %1195, %1197
  br label %1202

; <label>:1199                                    ; preds = %1152
  %1200 = icmp eq i32 %1187, 0
  %1201 = and i1 %1186, %1200
  br label %1202

; <label>:1202                                    ; preds = %1199, %1190
  %1203 = phi i1 [ %1198, %1190 ], [ %1201, %1199 ]
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  br i1 %1203, label %1206, label %1225, !dx.controlflow.hints !98

; <label>:1206                                    ; preds = %1202
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 3
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1159, float %1160, float %1161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = fmul fast float %1209, %1180
  %1211 = call float @dx.op.dot3.f32(i32 55, float %1165, float %1166, float %1167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = fmul fast float %1205, %1211
  %1213 = fadd fast float %1212, %1210
  br i1 %1189, label %1214, label %1220, !dx.controlflow.hints !99

; <label>:1214                                    ; preds = %1206
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1217 = fadd fast float %1159, -1.000000e+00
  %1218 = fmul fast float %1216, %1217
  %1219 = fadd fast float %1218, 1.000000e+00
  br label %1220

; <label>:1220                                    ; preds = %1214, %1206
  %1221 = phi float [ %1219, %1214 ], [ %1159, %1206 ]
  %1222 = fsub fast float %1181, %1208
  %1223 = fmul fast float %1221, %1222
  %1224 = fadd fast float %1223, %1208
  br label %1235

; <label>:1225                                    ; preds = %1202
  %1226 = fmul fast float %1180, %1159
  %1227 = fmul fast float %1181, %1160
  %1228 = fmul fast float %1182, %1161
  %1229 = fmul fast float %1205, %1165
  %1230 = fmul fast float %1205, %1166
  %1231 = fmul fast float %1205, %1167
  %1232 = fadd fast float %1229, %1226
  %1233 = fadd fast float %1230, %1227
  %1234 = fadd fast float %1231, %1228
  br label %1235

; <label>:1235                                    ; preds = %1225, %1220
  %1236 = phi float [ %1213, %1220 ], [ %1232, %1225 ]
  %1237 = phi float [ %1224, %1220 ], [ %1233, %1225 ]
  %1238 = phi float [ %1182, %1220 ], [ %1234, %1225 ]
  %1239 = lshr i32 %42, 2
  %1240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.i32 %1240, 1
  %1242 = shl i32 %1241, 1
  %1243 = lshr i32 %43, 4
  %1244 = and i32 %1243, 134217727
  %1245 = extractvalue %dx.types.CBufRet.i32 %1240, 0
  %1246 = mul i32 %1245, %1244
  %1247 = lshr i32 %42, 5
  %1248 = and i32 %1247, 67108863
  %1249 = add i32 %1242, %1248
  %1250 = add i32 %1249, %1246
  %1251 = shl i32 %1250, 2
  %1252 = and i32 %45, 24
  %1253 = and i32 %1239, 7
  %1254 = or i32 %1252, %1253
  %1255 = shl i32 1, %1254
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = and i32 %1257, %1255
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1275, label %1260, !dx.controlflow.hints !100

; <label>:1260                                    ; preds = %1235
  %1261 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = fcmp fast ogt float %1262, 0.000000e+00
  br i1 %1263, label %1264, label %1275, !dx.controlflow.hints !101

; <label>:1264                                    ; preds = %1260
  %1265 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %44, i32 %45, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.ResRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.ResRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.ResRet.f32 %1265, 3
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1272 = fmul fast float %1271, %1266
  %1273 = fmul fast float %1271, %1267
  %1274 = fmul fast float %1271, %1268
  br label %1275

; <label>:1275                                    ; preds = %1264, %1260, %1235
  %1276 = phi float [ %1272, %1264 ], [ 0.000000e+00, %1260 ], [ 0.000000e+00, %1235 ]
  %1277 = phi float [ %1273, %1264 ], [ 0.000000e+00, %1260 ], [ 0.000000e+00, %1235 ]
  %1278 = phi float [ %1274, %1264 ], [ 0.000000e+00, %1260 ], [ 0.000000e+00, %1235 ]
  %1279 = phi float [ %1269, %1264 ], [ 0.000000e+00, %1260 ], [ 0.000000e+00, %1235 ]
  %1280 = fsub fast float 1.000000e+00, %1279
  %1281 = fmul fast float %1280, %1236
  %1282 = fmul fast float %1280, %1237
  %1283 = fmul fast float %1280, %1238
  %1284 = fadd fast float %1281, %1276
  %1285 = fadd fast float %1282, %1277
  %1286 = fadd fast float %1283, %1278
  %1287 = fadd fast float %1178, 0x3FE3C6EF40000000
  %1288 = call float @dx.op.unary.f32(i32 22, float %1287)  ; Frc(value)
  %1289 = call float @dx.op.unary.f32(i32 23, float %1284)  ; Log(value)
  %1290 = fadd fast float %1289, -7.000000e+00
  %1291 = call float @dx.op.unary.f32(i32 21, float %1290)  ; Exp(value)
  %1292 = fmul fast float %1288, 2.000000e+00
  %1293 = fadd fast float %1292, -1.000000e+00
  %1294 = fmul fast float %1291, %1293
  %1295 = fcmp fast ogt float %1284, 0.000000e+00
  %1296 = select i1 %1295, float %1294, float 0.000000e+00
  %1297 = fadd fast float %1296, %1284
  %1298 = fadd fast float %1178, 0x3FF3C6EF40000000
  %1299 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1300 = call float @dx.op.unary.f32(i32 23, float %1285)  ; Log(value)
  %1301 = fadd fast float %1300, -7.000000e+00
  %1302 = call float @dx.op.unary.f32(i32 21, float %1301)  ; Exp(value)
  %1303 = fmul fast float %1299, 2.000000e+00
  %1304 = fadd fast float %1303, -1.000000e+00
  %1305 = fmul fast float %1302, %1304
  %1306 = fcmp fast ogt float %1285, 0.000000e+00
  %1307 = select i1 %1306, float %1305, float 0.000000e+00
  %1308 = fadd fast float %1307, %1285
  %1309 = fadd fast float %1178, 0x3FFDAA66E0000000
  %1310 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1311 = call float @dx.op.unary.f32(i32 23, float %1286)  ; Log(value)
  %1312 = fadd fast float %1311, -6.000000e+00
  %1313 = call float @dx.op.unary.f32(i32 21, float %1312)  ; Exp(value)
  %1314 = fmul fast float %1310, 2.000000e+00
  %1315 = fadd fast float %1314, -1.000000e+00
  %1316 = fmul fast float %1313, %1315
  %1317 = fcmp fast ogt float %1286, 0.000000e+00
  %1318 = select i1 %1317, float %1316, float 0.000000e+00
  %1319 = fadd fast float %1318, %1286
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %44, i32 %45, i32 undef, float %1297, float %1308, float %1319, float %1297, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.i32 %1320, 0
  %1322 = and i32 %1321, 1
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1327, label %1324, !dx.controlflow.hints !102

; <label>:1324                                    ; preds = %1275
  %1325 = and i32 %42, 2147483647
  %1326 = and i32 %43, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1325, i32 %1326, i32 undef, float %1180, float %1181, float %1182, float %1180, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1327

; <label>:1327                                    ; preds = %1324, %1275
  br label %1328

; <label>:1328                                    ; preds = %1351, %1327
  %1329 = phi float [ %1352, %1351 ], [ %1284, %1327 ]
  %1330 = phi float [ %1353, %1351 ], [ %1285, %1327 ]
  %1331 = phi float [ %1354, %1351 ], [ %1286, %1327 ]
  %1332 = phi float [ %1355, %1351 ], [ 1.000000e+00, %1327 ]
  %1333 = phi i32 [ %1338, %1351 ], [ 14, %1327 ]
  %1334 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1333)  ; FirstbitLo(value)
  %1335 = and i32 %1334, 31
  %1336 = shl i32 1, %1335
  %1337 = xor i32 %1336, -1
  %1338 = and i32 %1333, %1337
  %1339 = and i32 %1334, 1
  %1340 = lshr i32 %1334, 1
  %1341 = or i32 %1339, %44
  %1342 = add i32 %1340, %45
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = fptoui float %1344 to i32
  %1346 = icmp uge i32 %1341, %1345
  %1347 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1348 = fptoui float %1347 to i32
  %1349 = icmp uge i32 %1342, %1348
  %1350 = or i1 %1346, %1349
  br i1 %1350, label %1351, label %1357, !dx.controlflow.hints !103

; <label>:1351                                    ; preds = %1522, %1328
  %1352 = phi float [ %1329, %1328 ], [ %1523, %1522 ]
  %1353 = phi float [ %1330, %1328 ], [ %1524, %1522 ]
  %1354 = phi float [ %1331, %1328 ], [ %1525, %1522 ]
  %1355 = phi float [ %1332, %1328 ], [ %1526, %1522 ]
  %1356 = icmp eq i32 %1338, 0
  br i1 %1356, label %1527, label %1328

; <label>:1357                                    ; preds = %1328
  %1358 = uitofp i32 %1341 to float
  %1359 = uitofp i32 %1342 to float
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 2
  %1362 = fmul fast float %1361, 0x3FE3C6EF40000000
  %1363 = frem fast float %1358, 2.560000e+02
  %1364 = frem fast float %1359, 2.560000e+02
  %1365 = fptoui float %1363 to i32
  %1366 = fptoui float %1364 to i32
  %1367 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1365, i32 %1366, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = fadd fast float %1368, %1362
  %1370 = call float @dx.op.unary.f32(i32 22, float %1369)  ; Frc(value)
  %1371 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1341, i32 %1342, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.ResRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.ResRet.f32 %1371, 2
  %1375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.i32 %1375, 3
  %1377 = and i32 %1376, 3
  %1378 = icmp ne i32 %1377, 0
  %1379 = and i32 %1376, 4
  %1380 = icmp ne i32 %1379, 0
  %1381 = and i1 %1378, %1380
  br i1 %1381, label %1382, label %1395, !dx.controlflow.hints !97

; <label>:1382                                    ; preds = %1357
  %1383 = fadd fast float %1359, 5.000000e-01
  %1384 = extractvalue %dx.types.CBufRet.f32 %1343, 3
  %1385 = fmul fast float %1384, %1383
  %1386 = fadd fast float %1358, 5.000000e-01
  %1387 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1388 = fmul fast float %1387, %1386
  %1389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1388, float %1385, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = fsub fast float 1.000000e+00, %1390
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1394 = fcmp fast olt float %1391, %1393
  br label %1398

; <label>:1395                                    ; preds = %1357
  %1396 = icmp eq i32 %1379, 0
  %1397 = and i1 %1378, %1396
  br label %1398

; <label>:1398                                    ; preds = %1395, %1382
  %1399 = phi i1 [ %1394, %1382 ], [ %1397, %1395 ]
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  br i1 %1399, label %1402, label %1421, !dx.controlflow.hints !98

; <label>:1402                                    ; preds = %1398
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 3
  %1405 = call float @dx.op.dot3.f32(i32 55, float %1159, float %1160, float %1161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1406 = fmul fast float %1405, %1372
  %1407 = call float @dx.op.dot3.f32(i32 55, float %1165, float %1166, float %1167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1408 = fmul fast float %1401, %1407
  %1409 = fadd fast float %1408, %1406
  br i1 %1381, label %1410, label %1416, !dx.controlflow.hints !99

; <label>:1410                                    ; preds = %1402
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1413 = fadd fast float %1159, -1.000000e+00
  %1414 = fmul fast float %1412, %1413
  %1415 = fadd fast float %1414, 1.000000e+00
  br label %1416

; <label>:1416                                    ; preds = %1410, %1402
  %1417 = phi float [ %1415, %1410 ], [ %1159, %1402 ]
  %1418 = fsub fast float %1373, %1404
  %1419 = fmul fast float %1417, %1418
  %1420 = fadd fast float %1419, %1404
  br label %1431

; <label>:1421                                    ; preds = %1398
  %1422 = fmul fast float %1372, %1159
  %1423 = fmul fast float %1373, %1160
  %1424 = fmul fast float %1374, %1161
  %1425 = fmul fast float %1401, %1165
  %1426 = fmul fast float %1401, %1166
  %1427 = fmul fast float %1401, %1167
  %1428 = fadd fast float %1425, %1422
  %1429 = fadd fast float %1426, %1423
  %1430 = fadd fast float %1427, %1424
  br label %1431

; <label>:1431                                    ; preds = %1421, %1416
  %1432 = phi float [ %1409, %1416 ], [ %1428, %1421 ]
  %1433 = phi float [ %1420, %1416 ], [ %1429, %1421 ]
  %1434 = phi float [ %1374, %1416 ], [ %1430, %1421 ]
  %1435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.i32 %1435, 1
  %1437 = shl i32 %1436, 1
  %1438 = lshr i32 %1342, 5
  %1439 = extractvalue %dx.types.CBufRet.i32 %1435, 0
  %1440 = mul i32 %1439, %1438
  %1441 = add i32 %1437, %1248
  %1442 = add i32 %1441, %1440
  %1443 = shl i32 %1442, 2
  %1444 = and i32 %1342, 24
  %1445 = or i32 %1444, %1253
  %1446 = shl i32 1, %1445
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, %1446
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1466, label %1451, !dx.controlflow.hints !100

; <label>:1451                                    ; preds = %1431
  %1452 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1341, i32 %1342, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = fcmp fast ogt float %1453, 0.000000e+00
  br i1 %1454, label %1455, label %1466, !dx.controlflow.hints !101

; <label>:1455                                    ; preds = %1451
  %1456 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1341, i32 %1342, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = extractvalue %dx.types.ResRet.f32 %1456, 3
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1463 = fmul fast float %1462, %1457
  %1464 = fmul fast float %1462, %1458
  %1465 = fmul fast float %1462, %1459
  br label %1466

; <label>:1466                                    ; preds = %1455, %1451, %1431
  %1467 = phi float [ %1463, %1455 ], [ 0.000000e+00, %1451 ], [ 0.000000e+00, %1431 ]
  %1468 = phi float [ %1464, %1455 ], [ 0.000000e+00, %1451 ], [ 0.000000e+00, %1431 ]
  %1469 = phi float [ %1465, %1455 ], [ 0.000000e+00, %1451 ], [ 0.000000e+00, %1431 ]
  %1470 = phi float [ %1460, %1455 ], [ 0.000000e+00, %1451 ], [ 0.000000e+00, %1431 ]
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = fmul fast float %1471, %1432
  %1473 = fmul fast float %1471, %1433
  %1474 = fmul fast float %1471, %1434
  %1475 = fadd fast float %1472, %1467
  %1476 = fadd fast float %1473, %1468
  %1477 = fadd fast float %1474, %1469
  %1478 = fadd fast float %1370, 0x3FE3C6EF40000000
  %1479 = call float @dx.op.unary.f32(i32 22, float %1478)  ; Frc(value)
  %1480 = call float @dx.op.unary.f32(i32 23, float %1475)  ; Log(value)
  %1481 = fadd fast float %1480, -7.000000e+00
  %1482 = call float @dx.op.unary.f32(i32 21, float %1481)  ; Exp(value)
  %1483 = fmul fast float %1479, 2.000000e+00
  %1484 = fadd fast float %1483, -1.000000e+00
  %1485 = fmul fast float %1482, %1484
  %1486 = fcmp fast ogt float %1475, 0.000000e+00
  %1487 = select i1 %1486, float %1485, float 0.000000e+00
  %1488 = fadd fast float %1487, %1475
  %1489 = fadd fast float %1370, 0x3FF3C6EF40000000
  %1490 = call float @dx.op.unary.f32(i32 22, float %1489)  ; Frc(value)
  %1491 = call float @dx.op.unary.f32(i32 23, float %1476)  ; Log(value)
  %1492 = fadd fast float %1491, -7.000000e+00
  %1493 = call float @dx.op.unary.f32(i32 21, float %1492)  ; Exp(value)
  %1494 = fmul fast float %1490, 2.000000e+00
  %1495 = fadd fast float %1494, -1.000000e+00
  %1496 = fmul fast float %1493, %1495
  %1497 = fcmp fast ogt float %1476, 0.000000e+00
  %1498 = select i1 %1497, float %1496, float 0.000000e+00
  %1499 = fadd fast float %1498, %1476
  %1500 = fadd fast float %1370, 0x3FFDAA66E0000000
  %1501 = call float @dx.op.unary.f32(i32 22, float %1500)  ; Frc(value)
  %1502 = call float @dx.op.unary.f32(i32 23, float %1477)  ; Log(value)
  %1503 = fadd fast float %1502, -6.000000e+00
  %1504 = call float @dx.op.unary.f32(i32 21, float %1503)  ; Exp(value)
  %1505 = fmul fast float %1501, 2.000000e+00
  %1506 = fadd fast float %1505, -1.000000e+00
  %1507 = fmul fast float %1504, %1506
  %1508 = fcmp fast ogt float %1477, 0.000000e+00
  %1509 = select i1 %1508, float %1507, float 0.000000e+00
  %1510 = fadd fast float %1509, %1477
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1341, i32 %1342, i32 undef, float %1488, float %1499, float %1510, float %1488, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.i32 %1511, 0
  %1513 = and i32 %1512, 1
  %1514 = icmp ne i32 %1513, 0
  %1515 = or i32 %1342, %1334
  %1516 = and i32 %1515, 1
  %1517 = icmp eq i32 %1516, 0
  %1518 = and i1 %1517, %1514
  br i1 %1518, label %1519, label %1522, !dx.controlflow.hints !102

; <label>:1519                                    ; preds = %1466
  %1520 = and i32 %42, 2147483647
  %1521 = lshr i32 %1342, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1520, i32 %1521, i32 undef, float %1372, float %1373, float %1374, float %1372, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1522

; <label>:1522                                    ; preds = %1519, %1466
  %1523 = fadd fast float %1475, %1329
  %1524 = fadd fast float %1476, %1330
  %1525 = fadd fast float %1477, %1331
  %1526 = fadd fast float %1332, 1.000000e+00
  br label %1351

; <label>:1527                                    ; preds = %1351
  %1528 = fdiv fast float 1.000000e+00, %1355
  %1529 = fmul fast float %1528, %1352
  %1530 = fmul fast float %1528, %1353
  %1531 = fmul fast float %1528, %1354
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1529, float %1530, float %1531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %27
  store float %1532, float addrspace(3)* %1533, align 4, !tbaa !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1534 = or i32 %42, %43
  %1535 = and i32 %1534, 1
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1537, label %1593, !dx.controlflow.hints !104

; <label>:1537                                    ; preds = %1527
  %1538 = and i32 %27, 63
  %1539 = xor i32 %1538, 1
  %1540 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %1539
  %1541 = load float, float addrspace(3)* %1540, align 4, !tbaa !48
  %1542 = call float @dx.op.binary.f32(i32 35, float %1532, float %1541)  ; FMax(a,b)
  %1543 = xor i32 %1538, 8
  %1544 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %1543
  %1545 = load float, float addrspace(3)* %1544, align 4, !tbaa !48
  %1546 = call float @dx.op.binary.f32(i32 35, float %1542, float %1545)  ; FMax(a,b)
  %1547 = xor i32 %1538, 9
  %1548 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedLuma@@3PAMA", i32 0, i32 %1547
  %1549 = load float, float addrspace(3)* %1548, align 4, !tbaa !48
  %1550 = call float @dx.op.binary.f32(i32 35, float %1546, float %1549)  ; FMax(a,b)
  %1551 = call float @dx.op.binary.f32(i32 36, float %1532, float %1541)  ; FMin(a,b)
  %1552 = call float @dx.op.binary.f32(i32 36, float %1551, float %1545)  ; FMin(a,b)
  %1553 = call float @dx.op.binary.f32(i32 36, float %1552, float %1549)  ; FMin(a,b)
  %1554 = lshr i32 %42, 1
  %1555 = lshr i32 %43, 1
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 3
  %1558 = fmul fast float %1557, 3.200000e+01
  %1559 = fmul fast float %1553, 0x3F1A36E2E0000000
  %1560 = fmul fast float %1559, %1558
  %1561 = call float @dx.op.unary.f32(i32 23, float %1560)  ; Log(value)
  %1562 = fmul fast float %1561, 0x3FC4640000000000
  %1563 = call float @dx.op.unary.f32(i32 21, float %1562)  ; Exp(value)
  %1564 = fmul fast float %1563, 0x4032DA0000000000
  %1565 = fadd fast float %1564, 8.359375e-01
  %1566 = fmul fast float %1563, 1.868750e+01
  %1567 = fadd fast float %1566, 1.000000e+00
  %1568 = fdiv fast float %1565, %1567
  %1569 = call float @dx.op.unary.f32(i32 23, float %1568)  ; Log(value)
  %1570 = fmul fast float %1569, 7.884375e+01
  %1571 = call float @dx.op.unary.f32(i32 21, float %1570)  ; Exp(value)
  %1572 = fmul fast float %1550, 0x3F1A36E2E0000000
  %1573 = fmul fast float %1572, %1558
  %1574 = call float @dx.op.unary.f32(i32 23, float %1573)  ; Log(value)
  %1575 = fmul fast float %1574, 0x3FC4640000000000
  %1576 = call float @dx.op.unary.f32(i32 21, float %1575)  ; Exp(value)
  %1577 = fmul fast float %1576, 0x4032DA0000000000
  %1578 = fadd fast float %1577, 8.359375e-01
  %1579 = fmul fast float %1576, 1.868750e+01
  %1580 = fadd fast float %1579, 1.000000e+00
  %1581 = fdiv fast float %1578, %1580
  %1582 = call float @dx.op.unary.f32(i32 23, float %1581)  ; Log(value)
  %1583 = fmul fast float %1582, 7.884375e+01
  %1584 = call float @dx.op.unary.f32(i32 21, float %1583)  ; Exp(value)
  %1585 = fmul fast float %1571, 0x40778E40E0000000
  %1586 = fmul fast float %1584, 0x40778E40E0000000
  %1587 = call float @dx.op.unary.f32(i32 26, float %1585)  ; Round_ne(value)
  %1588 = call float @dx.op.unary.f32(i32 26, float %1586)  ; Round_ne(value)
  %1589 = fmul fast float %1587, 0x3F70101020000000
  %1590 = fmul fast float %1588, 0x3F70101020000000
  %1591 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1592 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1554, i32 %1555, i32 undef, float %1591, float %1592, float %1591, float %1591, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1593

; <label>:1593                                    ; preds = %1537, %1527
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
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !22, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
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
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!22 = !{!23, !24, !25}
!23 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!29 = !{!30, !31, !32}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{void ()* @cs_post_opaque_processes_luma_dmfpscale, !"cs_post_opaque_processes_luma_dmfpscale", null, !4, !34}
!34 = !{i32 0, i64 8464, i32 4, !35}
!35 = !{i32 8, i32 8, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !55, !57, !58, !60, !61, !62}
!53 = distinct !{!53, !54, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!54 = distinct !{!54, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!55 = distinct !{!55, !56, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!56 = distinct !{!56, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!57 = distinct !{!57, !56, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!58 = distinct !{!58, !59, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!59 = distinct !{!59, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!60 = distinct !{!60, !59, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!61 = distinct !{!61, !59, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!62 = distinct !{!62, !63, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z: %colorQuadAvg"}
!63 = distinct !{!63, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = !{!66}
!66 = distinct !{!66, !67, !"\01?sort@@YAXAIAM00@Z: %c"}
!67 = distinct !{!67, !"\01?sort@@YAXAIAM00@Z"}
!68 = !{!69, !70, !53, !55, !57, !58, !60, !61, !62}
!69 = distinct !{!69, !67, !"\01?sort@@YAXAIAM00@Z: %a"}
!70 = distinct !{!70, !67, !"\01?sort@@YAXAIAM00@Z: %b"}
!71 = !{!70}
!72 = !{!69, !66, !53, !55, !57, !58, !60, !61, !62}
!73 = !{!69}
!74 = !{!70, !66, !53, !55, !57, !58, !60, !61, !62}
!75 = !{!76}
!76 = distinct !{!76, !77, !"\01?sort@@YAXAIAM00@Z: %c"}
!77 = distinct !{!77, !"\01?sort@@YAXAIAM00@Z"}
!78 = !{!79, !80, !53, !55, !57, !58, !60, !61, !62}
!79 = distinct !{!79, !77, !"\01?sort@@YAXAIAM00@Z: %a"}
!80 = distinct !{!80, !77, !"\01?sort@@YAXAIAM00@Z: %b"}
!81 = !{!80}
!82 = !{!79, !76, !53, !55, !57, !58, !60, !61, !62}
!83 = !{!79}
!84 = !{!80, !76, !53, !55, !57, !58, !60, !61, !62}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}

