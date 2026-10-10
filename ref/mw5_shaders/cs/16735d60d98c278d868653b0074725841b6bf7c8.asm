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
; shader hash: 11dbae4e6cf766a721454329c0d2572f
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
;                                       UAV     f32          2d      U1             u2     1
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

define void @cs_post_opaque_processes_dmfpscale() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %25 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %31 = mul i32 %30, %29
  %32 = add i32 %31, %25
  %33 = shl i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = lshr i32 %35, 16
  %37 = shl i32 %35, 3
  %38 = and i32 %37, 524280
  %39 = shl nuw nsw i32 %36, 3
  %40 = add i32 %38, %23
  %41 = add i32 %39, %24
  %42 = shl i32 %40, 1
  %43 = shl i32 %41, 1
  %44 = uitofp i32 %42 to float
  %45 = uitofp i32 %43 to float
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %49 = fmul fast float %44, %47
  %50 = fmul fast float %45, %48
  %51 = fadd fast float %49, %47
  %52 = fadd fast float %50, %48
  %53 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %20, float %51, float %52, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 3
  %55 = fcmp fast ogt float %54, -1.000000e+00
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %58 = select i1 %55, float %57, float 1.000000e+00
  %59 = fadd fast float %54, 1.000000e+00
  %60 = fmul fast float %58, %59
  %61 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = and i32 %63, 114688
  %65 = icmp ne i32 %64, 0
  %66 = select i1 %65, i32 %42, i32 0
  %67 = select i1 %65, i32 %43, i32 0
  %68 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %66, i32 %67, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = fmul fast float %69, 2.550000e+02
  %71 = fptoui float %70 to i32
  %72 = icmp eq i32 %71, 3
  %73 = and i1 %65, %72
  %74 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %75 = fcmp fast oge float %61, %74
  %76 = fadd fast float %44, 5.000000e-01
  %77 = fadd fast float %45, 5.000000e-01
  br i1 %73, label %939, label %78, !dx.controlflow.hints !35

; <label>:78                                      ; preds = %0
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = select i1 %75, float %80, float %61
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %85 = fmul fast float %76, 2.000000e+00
  %86 = fmul fast float %85, %83
  %87 = fmul fast float %77, 2.000000e+00
  %88 = fmul fast float %87, %84
  %89 = fsub fast float 1.000000e+00, %86
  %90 = fsub fast float 1.000000e+00, %88
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fmul fast float %89, %92
  %96 = fmul fast float %89, %93
  %97 = fmul fast float %89, %94
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fmul fast float %90, %99
  %103 = fmul fast float %90, %100
  %104 = fmul fast float %90, %101
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fadd fast float %102, %106
  %110 = fadd fast float %109, %95
  %111 = fadd fast float %103, %107
  %112 = fadd fast float %111, %96
  %113 = fadd fast float %104, %108
  %114 = fadd fast float %113, %97
  %115 = fmul fast float %110, %81
  %116 = fmul fast float %112, %81
  %117 = fmul fast float %114, %81
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %147 = fcmp fast olt float %146, -5.000000e-01
  %148 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %149 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = call float @dx.op.unary.f32(i32 25, float %149)  ; Rsqrt(value)
  %151 = fmul fast float %150, %149
  %152 = fmul fast float %150, %115
  %153 = fmul fast float %150, %116
  %154 = fmul fast float %150, %117
  %155 = fadd fast float %151, %124
  br i1 %75, label %156, label %168, !dx.controlflow.hints !36

; <label>:156                                     ; preds = %78
  %157 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %158 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %162 = call float @dx.op.binary.f32(i32 35, float %154, float %161)  ; FMax(a,b)
  %163 = call float @dx.op.binary.f32(i32 36, float %162, float %160)  ; FMin(a,b)
  %164 = fmul fast float %163, %158
  %165 = fadd fast float %164, %157
  %166 = call float @dx.op.unary.f32(i32 7, float %165)  ; Saturate(value)
  %167 = fmul fast float %154, %119
  br label %168

; <label>:168                                     ; preds = %156, %78
  %169 = phi float [ %119, %156 ], [ %155, %78 ]
  %170 = phi float [ %166, %156 ], [ 0.000000e+00, %78 ]
  %171 = phi float [ %167, %156 ], [ %117, %78 ]
  %172 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.i32 %173, 1
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %179 = fcmp fast ogt float %178, 0.000000e+00
  %180 = and i1 %176, %179
  br i1 %180, label %181, label %590, !dx.controlflow.hints !37

; <label>:181                                     ; preds = %168
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %184 = select i1 %75, float %183, float %151
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = fsub fast float %188, %190
  %192 = and i32 %174, 2
  %193 = extractvalue %dx.types.CBufRet.i32 %173, 0
  %194 = call i32 @dx.op.binary.i32(i32 40, i32 %193, i32 3)  ; UMin(a,b)
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %199 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %200 = fsub fast float %196, %198
  %201 = fsub fast float %197, %199
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = fcmp fast ogt float %203, 0.000000e+00
  %205 = fsub fast float -0.000000e+00, %200
  %206 = fsub fast float -0.000000e+00, %201
  %207 = call float @dx.op.dot2.f32(i32 54, float %152, float %153, float %152, float %153)  ; Dot2(ax,ay,bx,by)
  %208 = call float @dx.op.dot2.f32(i32 54, float %152, float %153, float %205, float %206)  ; Dot2(ax,ay,bx,by)
  %209 = fmul fast float %208, 2.000000e+00
  %210 = call float @dx.op.dot2.f32(i32 54, float %205, float %206, float %205, float %206)  ; Dot2(ax,ay,bx,by)
  %211 = fmul fast float %203, %203
  %212 = fsub fast float %210, %211
  %213 = fmul fast float %209, %209
  %214 = fmul fast float %207, 4.000000e+00
  %215 = fmul fast float %214, %212
  %216 = fsub fast float %213, %215
  %217 = fcmp fast ogt float %216, 0.000000e+00
  br i1 %217, label %218, label %233, !dx.controlflow.hints !38

; <label>:218                                     ; preds = %181
  %219 = fcmp fast ogt float %209, 0.000000e+00
  %220 = call float @dx.op.unary.f32(i32 24, float %216)  ; Sqrt(value)
  %221 = fsub fast float -0.000000e+00, %220
  %222 = select i1 %219, float %220, float %221
  %223 = fadd fast float %222, %209
  %224 = fmul float %223, -5.000000e-01
  %225 = fdiv fast float %224, %207
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float 0.000000e+00)  ; FMax(a,b)
  %227 = call float @dx.op.binary.f32(i32 36, float %184, float %226)  ; FMin(a,b)
  %228 = fdiv fast float %212, %224
  %229 = call float @dx.op.binary.f32(i32 35, float %228, float 0.000000e+00)  ; FMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 36, float %184, float %229)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 36, float %227, float %230)  ; FMin(a,b)
  %232 = call float @dx.op.binary.f32(i32 35, float %227, float %230)  ; FMax(a,b)
  br label %233

; <label>:233                                     ; preds = %218, %181
  %234 = phi float [ %232, %218 ], [ -1.000000e+00, %181 ]
  %235 = phi float [ %231, %218 ], [ -1.000000e+00, %181 ]
  %236 = phi i1 [ true, %218 ], [ false, %181 ]
  %237 = and i1 %204, %236
  br i1 %237, label %238, label %240, !dx.controlflow.hints !39

; <label>:238                                     ; preds = %233
  %239 = fcmp fast oeq float %235, %234
  br i1 %239, label %543, label %241, !dx.controlflow.hints !40

; <label>:240                                     ; preds = %233
  br i1 %204, label %543, label %241, !dx.controlflow.hints !41

; <label>:241                                     ; preds = %240, %238
  %242 = phi float [ %184, %240 ], [ %234, %238 ]
  %243 = phi float [ 0.000000e+00, %240 ], [ %235, %238 ]
  %244 = icmp ne i32 %192, 0
  %245 = fmul fast float %242, %154
  %246 = fadd fast float %245, %186
  %247 = fmul fast float %246, %242
  %248 = select i1 %244, float 0.000000e+00, float %247
  %249 = fcmp fast oeq float %154, 0.000000e+00
  %250 = fdiv fast float %191, %154
  %251 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %250)  ; FMax(a,b)
  %252 = select i1 %249, float %242, float %251
  %253 = call float @dx.op.binary.f32(i32 36, float %242, float %252)  ; FMin(a,b)
  %254 = fcmp fast ogt float %154, 0.000000e+00
  %255 = fcmp fast olt float %191, 0.000000e+00
  br i1 %254, label %256, label %313, !dx.controlflow.hints !42

; <label>:256                                     ; preds = %241
  %257 = icmp eq i32 %192, 0
  br i1 %255, label %258, label %302, !dx.controlflow.hints !43

; <label>:258                                     ; preds = %256
  %259 = select i1 %257, float %242, float 0.000000e+00
  %260 = fsub fast float -0.000000e+00, %259
  %261 = call float @dx.op.unary.f32(i32 6, float %260)  ; FAbs(value)
  %262 = fmul fast float %259, %154
  %263 = fadd fast float %262, %186
  %264 = fmul fast float %261, %263
  %265 = fsub fast float %248, %264
  %266 = fsub fast float %242, %261
  %267 = select i1 %257, float %266, float 0.000000e+00
  %268 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %269 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %270 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %273 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %274 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %275 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 3
  %278 = call float @dx.op.binary.f32(i32 36, float %265, float %277)  ; FMin(a,b)
  %279 = fmul fast float %275, %267
  %280 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %281 = fsub fast float %272, %268
  %282 = fsub fast float %273, %269
  %283 = fsub fast float %274, %270
  %284 = fmul fast float %280, %281
  %285 = fmul fast float %280, %282
  %286 = fmul fast float %280, %283
  %287 = fadd fast float %284, %268
  %288 = fadd fast float %285, %269
  %289 = fadd fast float %286, %270
  br i1 %75, label %543, label %290, !dx.controlflow.hints !44

; <label>:290                                     ; preds = %258
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 0
  %293 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %294 = fadd fast float %293, %292
  %295 = call float @dx.op.unary.f32(i32 7, float %294)  ; Saturate(value)
  %296 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %297 = extractvalue %dx.types.CBufRet.f32 %291, 3
  %298 = fadd fast float %297, %296
  %299 = call float @dx.op.unary.f32(i32 7, float %298)  ; Saturate(value)
  %300 = fmul fast float %295, %278
  %301 = fmul fast float %300, %299
  br label %543

; <label>:302                                     ; preds = %256
  br i1 %257, label %303, label %324, !dx.controlflow.hints !45

; <label>:303                                     ; preds = %302
  %304 = call float @dx.op.binary.f32(i32 36, float %253, float %243)  ; FMin(a,b)
  %305 = fsub fast float %253, %304
  %306 = fsub fast float %305, %242
  %307 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %308 = fadd fast float %305, %242
  %309 = fmul fast float %308, %154
  %310 = fadd fast float %309, %186
  %311 = fmul fast float %310, %307
  %312 = fsub fast float %248, %311
  br label %324

; <label>:313                                     ; preds = %241
  br i1 %255, label %314, label %324, !dx.controlflow.hints !46

; <label>:314                                     ; preds = %313
  %315 = call float @dx.op.binary.f32(i32 35, float %243, float %253)  ; FMax(a,b)
  %316 = icmp eq i32 %192, 0
  %317 = select i1 %316, float %253, float 0.000000e+00
  %318 = fsub fast float -0.000000e+00, %317
  %319 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %320 = fmul fast float %317, %154
  %321 = fadd fast float %320, %186
  %322 = fmul fast float %319, %321
  %323 = fsub fast float %248, %322
  br label %324

; <label>:324                                     ; preds = %314, %313, %303, %302
  %325 = phi float [ %243, %302 ], [ %243, %303 ], [ %315, %314 ], [ %243, %313 ]
  %326 = phi float [ 0.000000e+00, %302 ], [ %307, %303 ], [ %319, %314 ], [ 0.000000e+00, %313 ]
  %327 = phi float [ %248, %302 ], [ %312, %303 ], [ %323, %314 ], [ %248, %313 ]
  %328 = phi float [ %253, %302 ], [ %253, %303 ], [ %242, %314 ], [ %242, %313 ]
  %329 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %329, align 4, !tbaa !47, !noalias !51
  %330 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %330, align 4, !tbaa !47, !noalias !51
  %331 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %331, align 4, !tbaa !47, !noalias !51
  %332 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %332, align 4, !tbaa !47, !noalias !51
  %333 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %333, align 4, !tbaa !47, !noalias !51
  %334 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %334, align 4, !tbaa !47, !noalias !51
  %335 = icmp sgt i32 %194, 0
  br i1 %335, label %336, label %397

; <label>:336                                     ; preds = %324
  br label %337

; <label>:337                                     ; preds = %386, %336
  %338 = phi i32 [ %387, %386 ], [ 0, %336 ]
  %339 = phi i32 [ %388, %386 ], [ 0, %336 ]
  %340 = add nuw i32 %339, 171
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %340)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = fsub fast float %342, %345
  %348 = fsub fast float %343, %346
  %349 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %350 = fsub fast float -0.000000e+00, %347
  %351 = fsub fast float -0.000000e+00, %348
  %352 = call float @dx.op.dot2.f32(i32 54, float %152, float %153, float %350, float %351)  ; Dot2(ax,ay,bx,by)
  %353 = fmul fast float %352, 2.000000e+00
  %354 = call float @dx.op.dot2.f32(i32 54, float %350, float %351, float %350, float %351)  ; Dot2(ax,ay,bx,by)
  %355 = fmul fast float %349, %349
  %356 = fsub fast float %354, %355
  %357 = fmul fast float %353, %353
  %358 = fmul fast float %214, %356
  %359 = fsub fast float %357, %358
  %360 = fcmp fast ogt float %359, 0.000000e+00
  br i1 %360, label %361, label %376, !dx.controlflow.hints !38

; <label>:361                                     ; preds = %337
  %362 = fcmp fast ogt float %353, 0.000000e+00
  %363 = call float @dx.op.unary.f32(i32 24, float %359)  ; Sqrt(value)
  %364 = fsub fast float -0.000000e+00, %363
  %365 = select i1 %362, float %363, float %364
  %366 = fadd fast float %365, %353
  %367 = fmul float %366, -5.000000e-01
  %368 = fdiv fast float %367, %207
  %369 = call float @dx.op.binary.f32(i32 35, float %368, float 0.000000e+00)  ; FMax(a,b)
  %370 = call float @dx.op.binary.f32(i32 36, float %242, float %369)  ; FMin(a,b)
  %371 = fdiv fast float %356, %367
  %372 = call float @dx.op.binary.f32(i32 35, float %371, float 0.000000e+00)  ; FMax(a,b)
  %373 = call float @dx.op.binary.f32(i32 36, float %242, float %372)  ; FMin(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %370, float %373)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 35, float %370, float %373)  ; FMax(a,b)
  br label %376

; <label>:376                                     ; preds = %361, %337
  %377 = phi float [ %375, %361 ], [ -1.000000e+00, %337 ]
  %378 = phi float [ %374, %361 ], [ -1.000000e+00, %337 ]
  %379 = phi i1 [ true, %361 ], [ false, %337 ]
  br i1 %379, label %380, label %386, !dx.controlflow.hints !63

; <label>:380                                     ; preds = %376
  %381 = call float @dx.op.binary.f32(i32 35, float %325, float %378)  ; FMax(a,b)
  %382 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %339
  store float %381, float* %382, align 4, !tbaa !47, !noalias !51
  %383 = call float @dx.op.binary.f32(i32 35, float %325, float %377)  ; FMax(a,b)
  %384 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %339
  store float %383, float* %384, align 4, !tbaa !47, !noalias !51
  %385 = add nsw i32 %338, 1
  br label %386

; <label>:386                                     ; preds = %380, %376
  %387 = phi i32 [ %385, %380 ], [ %338, %376 ]
  %388 = add nuw nsw i32 %339, 1
  %389 = icmp eq i32 %388, %194
  br i1 %389, label %390, label %337

; <label>:390                                     ; preds = %386
  %391 = load float, float* %331, align 4, !tbaa !47, !alias.scope !64, !noalias !67
  %392 = load float, float* %330, align 4, !tbaa !47, !alias.scope !70, !noalias !71
  %393 = load float, float* %329, align 4, !tbaa !47, !alias.scope !72, !noalias !73
  %394 = load float, float* %334, align 4, !tbaa !47, !alias.scope !74, !noalias !77
  %395 = load float, float* %333, align 4, !tbaa !47, !alias.scope !80, !noalias !81
  %396 = load float, float* %332, align 4, !tbaa !47, !alias.scope !82, !noalias !83
  br label %397

; <label>:397                                     ; preds = %390, %324
  %398 = phi float [ -1.000000e+00, %324 ], [ %396, %390 ]
  %399 = phi float [ -1.000000e+00, %324 ], [ %395, %390 ]
  %400 = phi float [ -1.000000e+00, %324 ], [ %394, %390 ]
  %401 = phi float [ -1.000000e+00, %324 ], [ %393, %390 ]
  %402 = phi float [ -1.000000e+00, %324 ], [ %392, %390 ]
  %403 = phi float [ -1.000000e+00, %324 ], [ %391, %390 ]
  %404 = phi i32 [ 0, %324 ], [ %387, %390 ]
  %405 = call float @dx.op.binary.f32(i32 36, float %402, float %403)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 36, float %401, float %405)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 35, float %401, float %402)  ; FMax(a,b)
  %408 = call float @dx.op.binary.f32(i32 36, float %407, float %403)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 36, float %401, float %402)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %409, float %408)  ; FMax(a,b)
  %411 = call float @dx.op.binary.f32(i32 35, float %402, float %403)  ; FMax(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float %401, float %411)  ; FMax(a,b)
  store float %406, float* %329, align 4, !tbaa !47, !alias.scope !72, !noalias !73
  store float %410, float* %330, align 4, !tbaa !47, !alias.scope !70, !noalias !71
  store float %412, float* %331, align 4, !tbaa !47, !alias.scope !64, !noalias !67
  %413 = call float @dx.op.binary.f32(i32 36, float %399, float %400)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 36, float %398, float %413)  ; FMin(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %398, float %399)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float %415, float %400)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 36, float %398, float %399)  ; FMin(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float %417, float %416)  ; FMax(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float %399, float %400)  ; FMax(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %398, float %419)  ; FMax(a,b)
  store float %414, float* %332, align 4, !tbaa !47, !alias.scope !82, !noalias !83
  store float %418, float* %333, align 4, !tbaa !47, !alias.scope !80, !noalias !81
  store float %420, float* %334, align 4, !tbaa !47, !alias.scope !74, !noalias !77
  %421 = sub nsw i32 3, %404
  %422 = icmp sgt i32 %421, 2
  br i1 %422, label %423, label %461, !dx.controlflow.hints !84

; <label>:423                                     ; preds = %397
  %424 = icmp eq i32 %192, 0
  %425 = fsub fast float %242, %326
  %426 = select i1 %424, float %425, float %326
  %427 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %429 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %434 = extractvalue %dx.types.CBufRet.f32 %430, 3
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %437 = call float @dx.op.binary.f32(i32 36, float %327, float %436)  ; FMin(a,b)
  %438 = fmul fast float %434, %426
  %439 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %440 = fsub fast float %431, %427
  %441 = fsub fast float %432, %428
  %442 = fsub fast float %433, %429
  %443 = fmul fast float %439, %440
  %444 = fmul fast float %439, %441
  %445 = fmul fast float %439, %442
  %446 = fadd fast float %443, %427
  %447 = fadd fast float %444, %428
  %448 = fadd fast float %445, %429
  br i1 %75, label %543, label %449, !dx.controlflow.hints !44

; <label>:449                                     ; preds = %423
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %453 = fadd fast float %452, %451
  %454 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %455 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %456 = extractvalue %dx.types.CBufRet.f32 %450, 3
  %457 = fadd fast float %456, %455
  %458 = call float @dx.op.unary.f32(i32 7, float %457)  ; Saturate(value)
  %459 = fmul fast float %454, %437
  %460 = fmul fast float %459, %458
  br label %543

; <label>:461                                     ; preds = %397
  %462 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %421
  %463 = load float, float* %462, align 4, !tbaa !47, !noalias !51
  %464 = fcmp fast olt float %463, %328
  %465 = icmp sgt i32 %404, 0
  %466 = and i1 %465, %464
  br i1 %466, label %467, label %504

; <label>:467                                     ; preds = %461
  br label %468

; <label>:468                                     ; preds = %497, %467
  %469 = phi float [ %498, %497 ], [ %326, %467 ]
  %470 = phi float [ %499, %497 ], [ %327, %467 ]
  %471 = phi float [ %479, %497 ], [ %463, %467 ]
  %472 = phi i32 [ %476, %497 ], [ %421, %467 ]
  %473 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %472
  %474 = load float, float* %473, align 4, !tbaa !47, !noalias !51
  %475 = icmp slt i32 %472, 2
  %476 = add nsw i32 %472, 1
  %477 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %476
  %478 = load float, float* %477, align 4, !tbaa !47, !noalias !51
  %479 = select i1 %475, float %478, float %242
  %480 = call float @dx.op.binary.f32(i32 36, float %479, float %474)  ; FMin(a,b)
  %481 = call float @dx.op.binary.f32(i32 36, float %328, float %480)  ; FMin(a,b)
  %482 = icmp eq i32 %192, 0
  %483 = fadd fast float %481, %471
  %484 = fmul fast float %483, %154
  %485 = fadd fast float %484, %186
  br i1 %482, label %491, label %486, !dx.controlflow.hints !85

; <label>:486                                     ; preds = %468
  %487 = fsub fast float %481, %471
  %488 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %487)  ; FMax(a,b)
  %489 = fmul fast float %488, %485
  %490 = fadd fast float %489, %470
  br label %497

; <label>:491                                     ; preds = %468
  %492 = fsub fast float %471, %481
  %493 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  %494 = fadd fast float %493, %469
  %495 = fmul fast float %493, %485
  %496 = fsub fast float %470, %495
  br label %497

; <label>:497                                     ; preds = %491, %486
  %498 = phi float [ %488, %486 ], [ %494, %491 ]
  %499 = phi float [ %490, %486 ], [ %496, %491 ]
  %500 = fcmp fast olt float %479, %328
  %501 = icmp slt i32 %476, 3
  %502 = and i1 %501, %500
  br i1 %502, label %468, label %503

; <label>:503                                     ; preds = %497
  br label %504

; <label>:504                                     ; preds = %503, %461
  %505 = phi float [ %326, %461 ], [ %498, %503 ]
  %506 = phi float [ %327, %461 ], [ %499, %503 ]
  %507 = fsub fast float %242, %505
  %508 = select i1 %244, float %505, float %507
  %509 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %510 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %511 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = extractvalue %dx.types.CBufRet.f32 %512, 2
  %516 = extractvalue %dx.types.CBufRet.f32 %512, 3
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 3
  %519 = call float @dx.op.binary.f32(i32 36, float %506, float %518)  ; FMin(a,b)
  %520 = fmul fast float %516, %508
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %522 = fsub fast float %513, %509
  %523 = fsub fast float %514, %510
  %524 = fsub fast float %515, %511
  %525 = fmul fast float %521, %522
  %526 = fmul fast float %521, %523
  %527 = fmul fast float %521, %524
  %528 = fadd fast float %525, %509
  %529 = fadd fast float %526, %510
  %530 = fadd fast float %527, %511
  br i1 %75, label %543, label %531, !dx.controlflow.hints !44

; <label>:531                                     ; preds = %504
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %535 = fadd fast float %534, %533
  %536 = call float @dx.op.unary.f32(i32 7, float %535)  ; Saturate(value)
  %537 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %538 = extractvalue %dx.types.CBufRet.f32 %532, 3
  %539 = fadd fast float %538, %537
  %540 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %541 = fmul fast float %536, %519
  %542 = fmul fast float %541, %540
  br label %543

; <label>:543                                     ; preds = %531, %504, %449, %423, %290, %258, %240, %238
  %544 = phi float [ 0.000000e+00, %238 ], [ 0.000000e+00, %240 ], [ %267, %290 ], [ %267, %258 ], [ %426, %449 ], [ %426, %423 ], [ %508, %531 ], [ %508, %504 ]
  %545 = phi float [ 0.000000e+00, %238 ], [ 0.000000e+00, %240 ], [ %301, %290 ], [ %278, %258 ], [ %460, %449 ], [ %437, %423 ], [ %542, %531 ], [ %519, %504 ]
  %546 = phi float [ 0.000000e+00, %238 ], [ 0.000000e+00, %240 ], [ %287, %290 ], [ %287, %258 ], [ %446, %449 ], [ %446, %423 ], [ %528, %531 ], [ %528, %504 ]
  %547 = phi float [ 0.000000e+00, %238 ], [ 0.000000e+00, %240 ], [ %288, %290 ], [ %288, %258 ], [ %447, %449 ], [ %447, %423 ], [ %529, %531 ], [ %529, %504 ]
  %548 = phi float [ 0.000000e+00, %238 ], [ 0.000000e+00, %240 ], [ %289, %290 ], [ %289, %258 ], [ %448, %449 ], [ %448, %423 ], [ %530, %531 ], [ %530, %504 ]
  %549 = fmul fast float %178, %545
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %552 = fsub fast float %188, %551
  %553 = fcmp fast olt float %549, -2.000000e+01
  %554 = call float @dx.op.unary.f32(i32 21, float %549)  ; Exp(value)
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %560 = fmul fast float %557, %552
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = fsub fast float 1.000000e+00, %561
  %563 = fmul fast float %154, 5.000000e-01
  %564 = fadd fast float %563, 5.000000e-01
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fsub fast float 1.000000e+00, %565
  %567 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %562)  ; FMax(a,b)
  %568 = fdiv fast float %566, %567
  %569 = fsub fast float %552, %117
  %570 = call float @dx.op.unary.f32(i32 6, float %569)  ; FAbs(value)
  %571 = fmul fast float %570, %556
  %572 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  %573 = fsub fast float 1.000000e+00, %571
  %574 = fmul fast float %573, %572
  %575 = fadd fast float %574, %571
  %576 = fmul fast float %559, %552
  %577 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %578 = fsub fast float 1.000000e+00, %575
  %579 = fmul fast float %578, %577
  %580 = fadd fast float %579, %575
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %582 = fadd fast float %554, -1.000000e+00
  %583 = select i1 %553, float -1.000000e+00, float %582
  %584 = fmul fast float %581, %583
  %585 = fadd fast float %584, 1.000000e+00
  %586 = fsub fast float -0.000000e+00, %584
  %587 = fmul fast float %546, %586
  %588 = fmul fast float %547, %586
  %589 = fmul fast float %548, %586
  br label %590

; <label>:590                                     ; preds = %543, %168
  %591 = phi float [ %544, %543 ], [ 0.000000e+00, %168 ]
  %592 = phi float [ %585, %543 ], [ 1.000000e+00, %168 ]
  %593 = phi float [ %587, %543 ], [ 0.000000e+00, %168 ]
  %594 = phi float [ %588, %543 ], [ 0.000000e+00, %168 ]
  %595 = phi float [ %589, %543 ], [ 0.000000e+00, %168 ]
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %598 = fsub fast float 1.000000e+00, %592
  %599 = fmul fast float %598, %169
  %600 = fmul fast float %599, %597
  %601 = fsub fast float %169, %600
  br i1 %147, label %602, label %634, !dx.controlflow.hints !86

; <label>:602                                     ; preds = %590
  %603 = fmul fast float %172, %144
  %604 = fadd fast float %603, %145
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = fmul fast float %126, %601
  %607 = fsub fast float -0.000000e+00, %606
  %608 = fmul fast float %127, %601
  %609 = fsub fast float -0.000000e+00, %608
  %610 = call float @dx.op.unary.f32(i32 21, float %607)  ; Exp(value)
  %611 = call float @dx.op.unary.f32(i32 21, float %609)  ; Exp(value)
  %612 = call float @dx.op.binary.f32(i32 35, float %134, float %610)  ; FMax(a,b)
  %613 = call float @dx.op.binary.f32(i32 35, float %134, float %611)  ; FMax(a,b)
  %614 = fsub fast float %613, %612
  %615 = fmul fast float %614, %605
  %616 = fadd fast float %615, %612
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %618 = fmul fast float %170, %148
  %619 = fsub fast float 1.000000e+00, %618
  %620 = select i1 %75, float %619, float %617
  %621 = fsub fast float %131, %136
  %622 = fsub fast float %132, %137
  %623 = fsub fast float %133, %138
  %624 = fmul fast float %605, %621
  %625 = fmul fast float %605, %622
  %626 = fmul fast float %605, %623
  %627 = fadd fast float %624, %136
  %628 = fadd fast float %625, %137
  %629 = fadd fast float %626, %138
  %630 = fsub fast float 1.000000e+00, %620
  %631 = fmul fast float %630, %627
  %632 = fmul fast float %630, %628
  %633 = fmul fast float %630, %629
  br label %705

; <label>:634                                     ; preds = %590
  %635 = fmul fast float %601, %143
  %636 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %637 = fsub fast float 2.000000e+00, %636
  %638 = fmul fast float %636, 9.921875e-01
  %639 = fmul fast float %638, %637
  %640 = fadd fast float %639, 3.906250e-03
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %640, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = fsub fast float %636, %642
  %644 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %643)  ; FMax(a,b)
  %645 = fmul fast float %171, %129
  %646 = call float @dx.op.unary.f32(i32 6, float %645)  ; FAbs(value)
  %647 = fcmp fast ogt float %646, 0x3EB0C6F7A0000000
  br i1 %647, label %648, label %654, !dx.controlflow.hints !87

; <label>:648                                     ; preds = %634
  %649 = fmul fast float %645, 0xBFF7154760000000
  %650 = call float @dx.op.unary.f32(i32 21, float %649)  ; Exp(value)
  %651 = fsub fast float 1.000000e+00, %650
  %652 = fdiv fast float %651, %645
  %653 = fmul fast float %652, %139
  br label %654

; <label>:654                                     ; preds = %648, %634
  %655 = phi float [ %653, %648 ], [ %139, %634 ]
  %656 = fadd fast float %655, %141
  %657 = fmul fast float %656, %644
  %658 = fmul fast float %126, %657
  %659 = fsub fast float -0.000000e+00, %658
  %660 = fmul fast float %127, %657
  %661 = fsub fast float -0.000000e+00, %660
  %662 = fmul fast float %128, %657
  %663 = fsub fast float -0.000000e+00, %662
  %664 = call float @dx.op.unary.f32(i32 21, float %659)  ; Exp(value)
  %665 = call float @dx.op.unary.f32(i32 21, float %661)  ; Exp(value)
  %666 = call float @dx.op.unary.f32(i32 21, float %663)  ; Exp(value)
  br i1 %75, label %667, label %675, !dx.controlflow.hints !88

; <label>:667                                     ; preds = %654
  %668 = fmul fast float %664, %170
  %669 = fmul fast float %665, %170
  %670 = fmul fast float %666, %170
  %671 = fsub fast float 1.000000e+00, %170
  %672 = fadd fast float %668, %671
  %673 = fadd fast float %669, %671
  %674 = fadd fast float %670, %671
  br label %675

; <label>:675                                     ; preds = %667, %654
  %676 = phi float [ %672, %667 ], [ %664, %654 ]
  %677 = phi float [ %673, %667 ], [ %665, %654 ]
  %678 = phi float [ %674, %667 ], [ %666, %654 ]
  %679 = fmul fast float %172, %172
  %680 = fadd fast float %679, 1.000000e+00
  %681 = fmul fast float %680, 0x3FAE8EC8A0000000
  %682 = fmul fast float %681, %136
  %683 = fmul fast float %681, %137
  %684 = fmul fast float %681, %138
  %685 = fmul fast float %172, %134
  %686 = fsub fast float 1.000000e+00, %685
  %687 = fmul fast float %134, %134
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul fast float %688, 0x3FB45F3060000000
  %690 = fmul fast float %686, %686
  %691 = fdiv fast float 1.000000e+00, %690
  %692 = fmul fast float %689, %691
  %693 = fmul fast float %692, %131
  %694 = fmul fast float %692, %132
  %695 = fmul fast float %692, %133
  %696 = fadd fast float %693, %682
  %697 = fadd fast float %694, %683
  %698 = fadd fast float %695, %684
  %699 = fsub fast float 1.000000e+00, %676
  %700 = fsub fast float 1.000000e+00, %677
  %701 = fsub fast float 1.000000e+00, %678
  %702 = fmul fast float %696, %699
  %703 = fmul fast float %697, %700
  %704 = fmul fast float %698, %701
  br label %705

; <label>:705                                     ; preds = %675, %602
  %706 = phi float [ %631, %602 ], [ %702, %675 ]
  %707 = phi float [ %632, %602 ], [ %703, %675 ]
  %708 = phi float [ %633, %602 ], [ %704, %675 ]
  %709 = phi float [ %620, %602 ], [ %676, %675 ]
  %710 = phi float [ %620, %602 ], [ %677, %675 ]
  %711 = phi float [ %620, %602 ], [ %678, %675 ]
  br i1 %180, label %712, label %910, !dx.controlflow.hints !89

; <label>:712                                     ; preds = %705
  %713 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %714 = fmul fast float %713, %598
  %715 = fsub fast float %593, %706
  %716 = fsub fast float %594, %707
  %717 = fsub fast float %595, %708
  %718 = fmul fast float %714, %715
  %719 = fmul fast float %714, %716
  %720 = fmul fast float %714, %717
  %721 = fadd fast float %718, %706
  %722 = fadd fast float %719, %707
  %723 = fadd fast float %720, %708
  %724 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %709)  ; FMax(a,b)
  %725 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %710)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %711)  ; FMax(a,b)
  %727 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %592)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float %591, float %601)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %728)  ; FMax(a,b)
  %730 = fdiv fast float %591, %729
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = fdiv fast float %601, %729
  %733 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %734 = fcmp fast une float %727, 1.000000e+00
  br i1 %734, label %735, label %748, !dx.controlflow.hints !90

; <label>:735                                     ; preds = %712
  %736 = call float @dx.op.unary.f32(i32 23, float %727)  ; Log(value)
  %737 = fmul fast float %736, 0x3FE62E4300000000
  %738 = fmul fast float %593, %737
  %739 = fsub fast float -0.000000e+00, %738
  %740 = fmul fast float %594, %737
  %741 = fsub fast float -0.000000e+00, %740
  %742 = fmul fast float %595, %737
  %743 = fsub fast float -0.000000e+00, %742
  %744 = fsub fast float 1.000000e+00, %727
  %745 = fdiv fast float %739, %744
  %746 = fdiv fast float %741, %744
  %747 = fdiv fast float %743, %744
  br label %748

; <label>:748                                     ; preds = %735, %712
  %749 = phi float [ %745, %735 ], [ %593, %712 ]
  %750 = phi float [ %746, %735 ], [ %594, %712 ]
  %751 = phi float [ %747, %735 ], [ %595, %712 ]
  %752 = phi float [ %737, %735 ], [ 0.000000e+00, %712 ]
  %753 = fcmp fast une float %724, 1.000000e+00
  br i1 %753, label %754, label %761, !dx.controlflow.hints !91

; <label>:754                                     ; preds = %748
  %755 = call float @dx.op.unary.f32(i32 23, float %724)  ; Log(value)
  %756 = fmul fast float %755, 0x3FE62E4300000000
  %757 = fmul fast float %721, %756
  %758 = fsub fast float -0.000000e+00, %757
  %759 = fsub fast float 1.000000e+00, %724
  %760 = fdiv fast float %758, %759
  br label %761

; <label>:761                                     ; preds = %754, %748
  %762 = phi float [ %760, %754 ], [ %721, %748 ]
  %763 = phi float [ %756, %754 ], [ 0.000000e+00, %748 ]
  %764 = fcmp fast une float %725, 1.000000e+00
  br i1 %764, label %765, label %772, !dx.controlflow.hints !91

; <label>:765                                     ; preds = %761
  %766 = call float @dx.op.unary.f32(i32 23, float %725)  ; Log(value)
  %767 = fmul fast float %766, 0x3FE62E4300000000
  %768 = fmul fast float %722, %767
  %769 = fsub fast float -0.000000e+00, %768
  %770 = fsub fast float 1.000000e+00, %725
  %771 = fdiv fast float %769, %770
  br label %772

; <label>:772                                     ; preds = %765, %761
  %773 = phi float [ %771, %765 ], [ %722, %761 ]
  %774 = phi float [ %767, %765 ], [ 0.000000e+00, %761 ]
  %775 = fcmp fast une float %726, 1.000000e+00
  br i1 %775, label %776, label %783, !dx.controlflow.hints !91

; <label>:776                                     ; preds = %772
  %777 = call float @dx.op.unary.f32(i32 23, float %726)  ; Log(value)
  %778 = fmul fast float %777, 0x3FE62E4300000000
  %779 = fmul fast float %723, %778
  %780 = fsub fast float -0.000000e+00, %779
  %781 = fsub fast float 1.000000e+00, %726
  %782 = fdiv fast float %780, %781
  br label %783

; <label>:783                                     ; preds = %776, %772
  %784 = phi float [ %782, %776 ], [ %723, %772 ]
  %785 = phi float [ %778, %776 ], [ 0.000000e+00, %772 ]
  %786 = fmul fast float %749, %733
  %787 = fmul fast float %750, %733
  %788 = fmul fast float %751, %733
  %789 = fmul fast float %752, %733
  %790 = fmul fast float %762, %731
  %791 = fmul fast float %773, %731
  %792 = fmul fast float %784, %731
  %793 = fmul fast float %763, %731
  %794 = fmul fast float %774, %731
  %795 = fmul fast float %785, %731
  %796 = fadd fast float %790, %786
  %797 = fadd fast float %791, %787
  %798 = fadd fast float %792, %788
  %799 = fadd fast float %793, %789
  %800 = fadd fast float %794, %789
  %801 = fadd fast float %795, %789
  %802 = fcmp fast une float %799, 0.000000e+00
  br i1 %802, label %803, label %810, !dx.controlflow.hints !92

; <label>:803                                     ; preds = %783
  %804 = fmul fast float %799, 0x3FF7154760000000
  %805 = call float @dx.op.unary.f32(i32 21, float %804)  ; Exp(value)
  %806 = fsub fast float 1.000000e+00, %805
  %807 = fmul fast float %796, %806
  %808 = fsub fast float -0.000000e+00, %807
  %809 = fdiv fast float %808, %799
  br label %810

; <label>:810                                     ; preds = %803, %783
  %811 = phi float [ %805, %803 ], [ 1.000000e+00, %783 ]
  %812 = phi float [ %809, %803 ], [ %796, %783 ]
  %813 = fcmp fast une float %800, 0.000000e+00
  br i1 %813, label %814, label %821, !dx.controlflow.hints !92

; <label>:814                                     ; preds = %810
  %815 = fmul fast float %800, 0x3FF7154760000000
  %816 = call float @dx.op.unary.f32(i32 21, float %815)  ; Exp(value)
  %817 = fsub fast float 1.000000e+00, %816
  %818 = fmul fast float %797, %817
  %819 = fsub fast float -0.000000e+00, %818
  %820 = fdiv fast float %819, %800
  br label %821

; <label>:821                                     ; preds = %814, %810
  %822 = phi float [ %816, %814 ], [ 1.000000e+00, %810 ]
  %823 = phi float [ %820, %814 ], [ %797, %810 ]
  %824 = fcmp fast une float %801, 0.000000e+00
  br i1 %824, label %825, label %832, !dx.controlflow.hints !92

; <label>:825                                     ; preds = %821
  %826 = fmul fast float %801, 0x3FF7154760000000
  %827 = call float @dx.op.unary.f32(i32 21, float %826)  ; Exp(value)
  %828 = fsub fast float 1.000000e+00, %827
  %829 = fmul fast float %798, %828
  %830 = fsub fast float -0.000000e+00, %829
  %831 = fdiv fast float %830, %801
  br label %832

; <label>:832                                     ; preds = %825, %821
  %833 = phi float [ %827, %825 ], [ 1.000000e+00, %821 ]
  %834 = phi float [ %831, %825 ], [ %798, %821 ]
  %835 = fcmp fast ogt float %731, %733
  br i1 %835, label %836, label %856, !dx.controlflow.hints !93

; <label>:836                                     ; preds = %832
  %837 = fsub fast float 1.000000e+00, %733
  %838 = fmul fast float %749, %837
  %839 = fmul fast float %750, %837
  %840 = fmul fast float %751, %837
  %841 = fmul fast float %752, %837
  %842 = fcmp fast une float %841, 0.000000e+00
  br i1 %842, label %843, label %894, !dx.controlflow.hints !94

; <label>:843                                     ; preds = %836
  %844 = fmul fast float %841, 0x3FF7154760000000
  %845 = call float @dx.op.unary.f32(i32 21, float %844)  ; Exp(value)
  %846 = fsub fast float 1.000000e+00, %845
  %847 = fmul fast float %838, %846
  %848 = fsub fast float -0.000000e+00, %847
  %849 = fmul fast float %839, %846
  %850 = fsub fast float -0.000000e+00, %849
  %851 = fmul fast float %840, %846
  %852 = fsub fast float -0.000000e+00, %851
  %853 = fdiv fast float %848, %841
  %854 = fdiv fast float %850, %841
  %855 = fdiv fast float %852, %841
  br label %894

; <label>:856                                     ; preds = %832
  %857 = fsub fast float 1.000000e+00, %731
  %858 = fmul fast float %762, %857
  %859 = fmul fast float %773, %857
  %860 = fmul fast float %784, %857
  %861 = fmul fast float %763, %857
  %862 = fmul fast float %774, %857
  %863 = fmul fast float %785, %857
  %864 = fcmp fast une float %861, 0.000000e+00
  br i1 %864, label %865, label %872, !dx.controlflow.hints !92

; <label>:865                                     ; preds = %856
  %866 = fmul fast float %861, 0x3FF7154760000000
  %867 = call float @dx.op.unary.f32(i32 21, float %866)  ; Exp(value)
  %868 = fsub fast float 1.000000e+00, %867
  %869 = fmul fast float %858, %868
  %870 = fsub fast float -0.000000e+00, %869
  %871 = fdiv fast float %870, %861
  br label %872

; <label>:872                                     ; preds = %865, %856
  %873 = phi float [ %871, %865 ], [ %858, %856 ]
  %874 = phi float [ %867, %865 ], [ 1.000000e+00, %856 ]
  %875 = fcmp fast une float %862, 0.000000e+00
  br i1 %875, label %876, label %883, !dx.controlflow.hints !92

; <label>:876                                     ; preds = %872
  %877 = fmul fast float %862, 0x3FF7154760000000
  %878 = call float @dx.op.unary.f32(i32 21, float %877)  ; Exp(value)
  %879 = fsub fast float 1.000000e+00, %878
  %880 = fmul fast float %859, %879
  %881 = fsub fast float -0.000000e+00, %880
  %882 = fdiv fast float %881, %862
  br label %883

; <label>:883                                     ; preds = %876, %872
  %884 = phi float [ %882, %876 ], [ %859, %872 ]
  %885 = phi float [ %878, %876 ], [ 1.000000e+00, %872 ]
  %886 = fcmp fast une float %863, 0.000000e+00
  br i1 %886, label %887, label %894, !dx.controlflow.hints !92

; <label>:887                                     ; preds = %883
  %888 = fmul fast float %863, 0x3FF7154760000000
  %889 = call float @dx.op.unary.f32(i32 21, float %888)  ; Exp(value)
  %890 = fsub fast float 1.000000e+00, %889
  %891 = fmul fast float %860, %890
  %892 = fsub fast float -0.000000e+00, %891
  %893 = fdiv fast float %892, %863
  br label %894

; <label>:894                                     ; preds = %887, %883, %843, %836
  %895 = phi float [ %893, %887 ], [ %855, %843 ], [ %840, %836 ], [ %860, %883 ]
  %896 = phi float [ %884, %887 ], [ %854, %843 ], [ %839, %836 ], [ %884, %883 ]
  %897 = phi float [ %873, %887 ], [ %853, %843 ], [ %838, %836 ], [ %873, %883 ]
  %898 = phi float [ %889, %887 ], [ %845, %843 ], [ 1.000000e+00, %836 ], [ 1.000000e+00, %883 ]
  %899 = phi float [ %885, %887 ], [ %845, %843 ], [ 1.000000e+00, %836 ], [ %885, %883 ]
  %900 = phi float [ %874, %887 ], [ %845, %843 ], [ 1.000000e+00, %836 ], [ %874, %883 ]
  %901 = fmul fast float %900, %812
  %902 = fmul fast float %899, %823
  %903 = fmul fast float %898, %834
  %904 = fadd fast float %901, %897
  %905 = fadd fast float %902, %896
  %906 = fadd fast float %903, %895
  %907 = fmul fast float %900, %811
  %908 = fmul fast float %899, %822
  %909 = fmul fast float %898, %833
  br label %910

; <label>:910                                     ; preds = %894, %705
  %911 = phi float [ %909, %894 ], [ %711, %705 ]
  %912 = phi float [ %908, %894 ], [ %710, %705 ]
  %913 = phi float [ %907, %894 ], [ %709, %705 ]
  %914 = phi float [ %906, %894 ], [ %708, %705 ]
  %915 = phi float [ %905, %894 ], [ %707, %705 ]
  %916 = phi float [ %904, %894 ], [ %706, %705 ]
  %917 = fmul fast float %47, %76
  %918 = fmul fast float %48, %77
  %919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %917, float %918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  %921 = extractvalue %dx.types.ResRet.f32 %919, 1
  %922 = extractvalue %dx.types.ResRet.f32 %919, 2
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %925 = fmul fast float %924, %920
  %926 = fmul fast float %924, %921
  %927 = fmul fast float %924, %922
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %917, float %918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = fmul fast float %929, %913
  %931 = fmul fast float %929, %912
  %932 = fmul fast float %929, %911
  %933 = fmul fast float %929, %916
  %934 = fmul fast float %929, %915
  %935 = fmul fast float %929, %914
  %936 = fadd fast float %933, %925
  %937 = fadd fast float %934, %926
  %938 = fadd fast float %935, %927
  br label %939

; <label>:939                                     ; preds = %910, %0
  %940 = phi float [ %936, %910 ], [ 0.000000e+00, %0 ]
  %941 = phi float [ %937, %910 ], [ 0.000000e+00, %0 ]
  %942 = phi float [ %938, %910 ], [ 0.000000e+00, %0 ]
  %943 = phi float [ %930, %910 ], [ 1.000000e+00, %0 ]
  %944 = phi float [ %931, %910 ], [ 1.000000e+00, %0 ]
  %945 = phi float [ %932, %910 ], [ 1.000000e+00, %0 ]
  %946 = phi float [ %81, %910 ], [ %61, %0 ]
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %950 = fmul fast float %948, %76
  %951 = fmul fast float %949, %77
  %952 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %953 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %954 = select i1 %73, i32 2, i32 0
  %955 = or i32 %954, 1
  %956 = uitofp i32 %955 to float
  %957 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %952, float %953, float %956, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = extractvalue %dx.types.ResRet.f32 %957, 1
  %960 = extractvalue %dx.types.ResRet.f32 %957, 2
  %961 = extractvalue %dx.types.ResRet.f32 %957, 3
  %962 = add nuw nsw i32 %954, 2
  %963 = uitofp i32 %962 to float
  %964 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %19, float %952, float %953, float %963, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = extractvalue %dx.types.ResRet.f32 %964, 2
  %968 = extractvalue %dx.types.ResRet.f32 %964, 3
  %969 = call float @dx.op.binary.f32(i32 35, float %959, float %960)  ; FMax(a,b)
  %970 = call float @dx.op.binary.f32(i32 35, float %958, float %969)  ; FMax(a,b)
  %971 = call float @dx.op.binary.f32(i32 35, float %970, float %961)  ; FMax(a,b)
  %972 = call float @dx.op.binary.f32(i32 36, float %966, float %967)  ; FMin(a,b)
  %973 = call float @dx.op.binary.f32(i32 36, float %965, float %972)  ; FMin(a,b)
  %974 = call float @dx.op.binary.f32(i32 36, float %973, float %968)  ; FMin(a,b)
  %975 = fmul fast float %971, 2.550000e+02
  %976 = fadd fast float %975, 0x3F70101020000000
  %977 = fptoui float %976 to i32
  %978 = fmul fast float %974, 2.550000e+02
  %979 = fadd fast float %978, 0x3F70101020000000
  %980 = fptoui float %979 to i32
  %981 = icmp ult i32 %977, %980
  br i1 %981, label %982, label %1150, !dx.controlflow.hints !95

; <label>:982                                     ; preds = %939
  %983 = fadd fast float %946, -4.000000e+00
  %984 = call float @dx.op.binary.f32(i32 35, float %983, float 0.000000e+00)  ; FMax(a,b)
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = fadd fast float %986, %984
  %988 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %989 = fmul fast float %987, %988
  %990 = call float @dx.op.unary.f32(i32 23, float %989)  ; Log(value)
  %991 = extractvalue %dx.types.CBufRet.f32 %985, 3
  %992 = fmul fast float %991, %990
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %995 = fmul fast float %992, %994
  %996 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %997 = select i1 %75, float 1.000000e+00, float %996
  %998 = uitofp i32 %977 to float
  %999 = uitofp i32 %980 to float
  %1000 = fadd fast float %998, 5.000000e-01
  %1001 = fadd fast float %999, 5.000000e-01
  %1002 = fmul fast float %994, %1000
  %1003 = fmul fast float %994, %1001
  %1004 = fadd fast float %1002, 0x3F0FFB4800000000
  %1005 = fadd fast float %1003, 0xBF0FFB4800000000
  %1006 = call float @dx.op.binary.f32(i32 35, float %997, float %1004)  ; FMax(a,b)
  %1007 = call float @dx.op.binary.f32(i32 36, float %1006, float %1005)  ; FMin(a,b)
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1012 = select i1 %73, float %1011, float 0.000000e+00
  %1013 = fmul fast float %1009, %1007
  %1014 = fadd fast float %1012, %1013
  %1015 = fadd fast float %1012, %1010
  %1016 = fsub fast float %1009, %1010
  %1017 = fadd fast float %1016, %1012
  %1018 = call float @dx.op.binary.f32(i32 35, float %1014, float %1015)  ; FMax(a,b)
  %1019 = call float @dx.op.binary.f32(i32 36, float %1018, float %1017)  ; FMin(a,b)
  %1020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %18, float %952, float %953, float %1019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.i32 %1024, 0
  %1026 = extractvalue %dx.types.CBufRet.i32 %1024, 1
  %1027 = uitofp i32 %1025 to float
  %1028 = uitofp i32 %1026 to float
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = fmul fast float %1027, %952
  %1033 = fmul fast float %1028, %953
  %1034 = fadd fast float %1032, -5.000000e-01
  %1035 = fadd fast float %1033, -5.000000e-01
  %1036 = call float @dx.op.unary.f32(i32 22, float %1034)  ; Frc(value)
  %1037 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1038 = fmul fast float %1036, %1036
  %1039 = fmul fast float %1038, %1036
  %1040 = fsub fast float 3.000000e+00, %1036
  %1041 = fmul fast float %1038, %1040
  %1042 = fmul fast float %1036, 3.000000e+00
  %1043 = fmul fast float %1039, 3.000000e+00
  %1044 = fmul fast float %1038, 6.000000e+00
  %1045 = fsub fast float %1043, %1044
  %1046 = fadd fast float %1045, 4.000000e+00
  %1047 = fmul fast float %1046, 0x3FC5555560000000
  %1048 = fmul fast float %1039, -3.000000e+00
  %1049 = fadd fast float %1038, %1036
  %1050 = fmul fast float %1049, 3.000000e+00
  %1051 = fadd fast float %1048, 1.000000e+00
  %1052 = fadd fast float %1051, %1050
  %1053 = fmul fast float %1039, 0x3FC5555560000000
  %1054 = fmul fast float %1037, %1037
  %1055 = fmul fast float %1054, %1037
  %1056 = fsub fast float 3.000000e+00, %1037
  %1057 = fmul fast float %1054, %1056
  %1058 = fmul fast float %1037, 3.000000e+00
  %1059 = fmul fast float %1055, 3.000000e+00
  %1060 = fmul fast float %1054, 6.000000e+00
  %1061 = fsub fast float %1059, %1060
  %1062 = fadd fast float %1061, 4.000000e+00
  %1063 = fmul fast float %1062, 0x3FC5555560000000
  %1064 = fmul fast float %1055, -3.000000e+00
  %1065 = fadd fast float %1054, %1037
  %1066 = fmul fast float %1065, 3.000000e+00
  %1067 = fadd fast float %1064, 1.000000e+00
  %1068 = fadd fast float %1067, %1066
  %1069 = fmul fast float %1055, 0x3FC5555560000000
  %1070 = fadd fast float %1036, 1.000000e+00
  %1071 = fsub fast float 1.000000e+00, %1042
  %1072 = fadd fast float %1071, %1041
  %1073 = fadd fast float %1072, %1046
  %1074 = fmul fast float %1073, 0x3FC5555560000000
  %1075 = fdiv fast float %1047, %1074
  %1076 = fsub fast float %1070, %1075
  %1077 = fsub fast float 1.000000e+00, %1036
  %1078 = fadd fast float %1052, %1039
  %1079 = fmul fast float %1078, 0x3FC5555560000000
  %1080 = fdiv fast float %1053, %1079
  %1081 = fadd fast float %1077, %1080
  %1082 = fadd fast float %1037, 1.000000e+00
  %1083 = fsub fast float 1.000000e+00, %1058
  %1084 = fadd fast float %1083, %1057
  %1085 = fadd fast float %1084, %1062
  %1086 = fmul fast float %1085, 0x3FC5555560000000
  %1087 = fdiv fast float %1063, %1086
  %1088 = fsub fast float %1082, %1087
  %1089 = fsub fast float 1.000000e+00, %1037
  %1090 = fadd fast float %1068, %1055
  %1091 = fmul fast float %1090, 0x3FC5555560000000
  %1092 = fdiv fast float %1069, %1091
  %1093 = fadd fast float %1092, %1089
  %1094 = fmul fast float %1076, %1030
  %1095 = fsub fast float %952, %1094
  %1096 = fmul fast float %1081, %1030
  %1097 = fadd fast float %1096, %952
  %1098 = fmul fast float %1093, %1031
  %1099 = fadd fast float %1098, %953
  %1100 = fmul fast float %1088, %1031
  %1101 = fsub fast float %953, %1100
  %1102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1095, float %1101, float %1019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1097, float %1101, float %1019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1095, float %1099, float %1019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1097, float %1099, float %1019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fsub fast float %1111, %1103
  %1119 = fsub fast float %1112, %1104
  %1120 = fsub fast float %1113, %1105
  %1121 = fmul fast float %1118, %1091
  %1122 = fmul fast float %1119, %1091
  %1123 = fmul fast float %1120, %1091
  %1124 = fadd fast float %1121, %1103
  %1125 = fadd fast float %1122, %1104
  %1126 = fadd fast float %1123, %1105
  %1127 = fsub fast float %1115, %1107
  %1128 = fsub fast float %1116, %1108
  %1129 = fsub fast float %1117, %1109
  %1130 = fmul fast float %1127, %1091
  %1131 = fmul fast float %1128, %1091
  %1132 = fmul fast float %1129, %1091
  %1133 = fsub fast float %1107, %1124
  %1134 = fadd fast float %1133, %1130
  %1135 = fsub fast float %1108, %1125
  %1136 = fadd fast float %1135, %1131
  %1137 = fsub fast float %1109, %1126
  %1138 = fadd fast float %1137, %1132
  %1139 = fmul fast float %1134, %1079
  %1140 = fmul fast float %1136, %1079
  %1141 = fmul fast float %1138, %1079
  %1142 = fadd fast float %1139, %1124
  %1143 = fadd fast float %1140, %1125
  %1144 = fadd fast float %1141, %1126
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 1
  %1147 = fmul fast float %1142, %1146
  %1148 = fmul fast float %1143, %1146
  %1149 = fmul fast float %1144, %1146
  br label %1150

; <label>:1150                                    ; preds = %982, %939
  %1151 = phi float [ %1021, %982 ], [ 1.000000e+00, %939 ]
  %1152 = phi float [ %1022, %982 ], [ 1.000000e+00, %939 ]
  %1153 = phi float [ %1023, %982 ], [ 1.000000e+00, %939 ]
  %1154 = phi float [ %1147, %982 ], [ 0.000000e+00, %939 ]
  %1155 = phi float [ %1148, %982 ], [ 0.000000e+00, %939 ]
  %1156 = phi float [ %1149, %982 ], [ 0.000000e+00, %939 ]
  %1157 = fmul fast float %1151, %943
  %1158 = fmul fast float %1152, %944
  %1159 = fmul fast float %1153, %945
  %1160 = fmul fast float %1151, %940
  %1161 = fmul fast float %1152, %941
  %1162 = fmul fast float %1153, %942
  %1163 = fadd fast float %1154, %1160
  %1164 = fadd fast float %1155, %1161
  %1165 = fadd fast float %1156, %1162
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1168 = fmul fast float %1167, 0x3FE3C6EF40000000
  %1169 = frem fast float %44, 2.560000e+02
  %1170 = frem fast float %45, 2.560000e+02
  %1171 = fptoui float %1169 to i32
  %1172 = fptoui float %1170 to i32
  %1173 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1171, i32 %1172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = fadd fast float %1174, %1168
  %1176 = call float @dx.op.unary.f32(i32 22, float %1175)  ; Frc(value)
  %1177 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %42, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.ResRet.f32 %1177, 1
  %1180 = extractvalue %dx.types.ResRet.f32 %1177, 2
  %1181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.i32 %1181, 3
  %1183 = and i32 %1182, 3
  %1184 = icmp ne i32 %1183, 0
  %1185 = and i32 %1182, 4
  %1186 = icmp ne i32 %1185, 0
  %1187 = and i1 %1184, %1186
  br i1 %1187, label %1188, label %1197, !dx.controlflow.hints !96

; <label>:1188                                    ; preds = %1150
  %1189 = fmul fast float %48, %77
  %1190 = fmul fast float %47, %76
  %1191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1190, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = fsub fast float 1.000000e+00, %1192
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = fcmp fast olt float %1193, %1195
  br label %1200

; <label>:1197                                    ; preds = %1150
  %1198 = icmp eq i32 %1185, 0
  %1199 = and i1 %1184, %1198
  br label %1200

; <label>:1200                                    ; preds = %1197, %1188
  %1201 = phi i1 [ %1196, %1188 ], [ %1199, %1197 ]
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  br i1 %1201, label %1204, label %1223, !dx.controlflow.hints !97

; <label>:1204                                    ; preds = %1200
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 3
  %1207 = call float @dx.op.dot3.f32(i32 55, float %1157, float %1158, float %1159, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1208 = fmul fast float %1207, %1178
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = fmul fast float %1203, %1209
  %1211 = fadd fast float %1210, %1208
  br i1 %1187, label %1212, label %1218, !dx.controlflow.hints !98

; <label>:1212                                    ; preds = %1204
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1215 = fadd fast float %1157, -1.000000e+00
  %1216 = fmul fast float %1214, %1215
  %1217 = fadd fast float %1216, 1.000000e+00
  br label %1218

; <label>:1218                                    ; preds = %1212, %1204
  %1219 = phi float [ %1217, %1212 ], [ %1157, %1204 ]
  %1220 = fsub fast float %1179, %1206
  %1221 = fmul fast float %1219, %1220
  %1222 = fadd fast float %1221, %1206
  br label %1233

; <label>:1223                                    ; preds = %1200
  %1224 = fmul fast float %1178, %1157
  %1225 = fmul fast float %1179, %1158
  %1226 = fmul fast float %1180, %1159
  %1227 = fmul fast float %1203, %1163
  %1228 = fmul fast float %1203, %1164
  %1229 = fmul fast float %1203, %1165
  %1230 = fadd fast float %1227, %1224
  %1231 = fadd fast float %1228, %1225
  %1232 = fadd fast float %1229, %1226
  br label %1233

; <label>:1233                                    ; preds = %1223, %1218
  %1234 = phi float [ %1211, %1218 ], [ %1230, %1223 ]
  %1235 = phi float [ %1222, %1218 ], [ %1231, %1223 ]
  %1236 = phi float [ %1180, %1218 ], [ %1232, %1223 ]
  %1237 = lshr i32 %40, 2
  %1238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.i32 %1238, 1
  %1240 = shl i32 %1239, 1
  %1241 = lshr i32 %41, 4
  %1242 = and i32 %1241, 134217727
  %1243 = extractvalue %dx.types.CBufRet.i32 %1238, 0
  %1244 = mul i32 %1243, %1242
  %1245 = lshr i32 %40, 5
  %1246 = and i32 %1245, 67108863
  %1247 = add i32 %1240, %1246
  %1248 = add i32 %1247, %1244
  %1249 = shl i32 %1248, 2
  %1250 = and i32 %43, 24
  %1251 = and i32 %1237, 7
  %1252 = or i32 %1250, %1251
  %1253 = shl i32 1, %1252
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, %1253
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1273, label %1258, !dx.controlflow.hints !99

; <label>:1258                                    ; preds = %1233
  %1259 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %42, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = fcmp fast ogt float %1260, 0.000000e+00
  br i1 %1261, label %1262, label %1273, !dx.controlflow.hints !100

; <label>:1262                                    ; preds = %1258
  %1263 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %42, i32 %43, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1270 = fmul fast float %1269, %1264
  %1271 = fmul fast float %1269, %1265
  %1272 = fmul fast float %1269, %1266
  br label %1273

; <label>:1273                                    ; preds = %1262, %1258, %1233
  %1274 = phi float [ %1270, %1262 ], [ 0.000000e+00, %1258 ], [ 0.000000e+00, %1233 ]
  %1275 = phi float [ %1271, %1262 ], [ 0.000000e+00, %1258 ], [ 0.000000e+00, %1233 ]
  %1276 = phi float [ %1272, %1262 ], [ 0.000000e+00, %1258 ], [ 0.000000e+00, %1233 ]
  %1277 = phi float [ %1267, %1262 ], [ 0.000000e+00, %1258 ], [ 0.000000e+00, %1233 ]
  %1278 = fsub fast float 1.000000e+00, %1277
  %1279 = fmul fast float %1278, %1234
  %1280 = fmul fast float %1278, %1235
  %1281 = fmul fast float %1278, %1236
  %1282 = fadd fast float %1279, %1274
  %1283 = fadd fast float %1280, %1275
  %1284 = fadd fast float %1281, %1276
  %1285 = fadd fast float %1176, 0x3FE3C6EF40000000
  %1286 = call float @dx.op.unary.f32(i32 22, float %1285)  ; Frc(value)
  %1287 = call float @dx.op.unary.f32(i32 23, float %1282)  ; Log(value)
  %1288 = fadd fast float %1287, -7.000000e+00
  %1289 = call float @dx.op.unary.f32(i32 21, float %1288)  ; Exp(value)
  %1290 = fmul fast float %1286, 2.000000e+00
  %1291 = fadd fast float %1290, -1.000000e+00
  %1292 = fmul fast float %1289, %1291
  %1293 = fcmp fast ogt float %1282, 0.000000e+00
  %1294 = select i1 %1293, float %1292, float 0.000000e+00
  %1295 = fadd fast float %1294, %1282
  %1296 = fadd fast float %1176, 0x3FF3C6EF40000000
  %1297 = call float @dx.op.unary.f32(i32 22, float %1296)  ; Frc(value)
  %1298 = call float @dx.op.unary.f32(i32 23, float %1283)  ; Log(value)
  %1299 = fadd fast float %1298, -7.000000e+00
  %1300 = call float @dx.op.unary.f32(i32 21, float %1299)  ; Exp(value)
  %1301 = fmul fast float %1297, 2.000000e+00
  %1302 = fadd fast float %1301, -1.000000e+00
  %1303 = fmul fast float %1300, %1302
  %1304 = fcmp fast ogt float %1283, 0.000000e+00
  %1305 = select i1 %1304, float %1303, float 0.000000e+00
  %1306 = fadd fast float %1305, %1283
  %1307 = fadd fast float %1176, 0x3FFDAA66E0000000
  %1308 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1309 = call float @dx.op.unary.f32(i32 23, float %1284)  ; Log(value)
  %1310 = fadd fast float %1309, -6.000000e+00
  %1311 = call float @dx.op.unary.f32(i32 21, float %1310)  ; Exp(value)
  %1312 = fmul fast float %1308, 2.000000e+00
  %1313 = fadd fast float %1312, -1.000000e+00
  %1314 = fmul fast float %1311, %1313
  %1315 = fcmp fast ogt float %1284, 0.000000e+00
  %1316 = select i1 %1315, float %1314, float 0.000000e+00
  %1317 = fadd fast float %1316, %1284
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %42, i32 %43, i32 undef, float %1295, float %1306, float %1317, float %1295, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.i32 %1318, 0
  %1320 = and i32 %1319, 1
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1325, label %1322, !dx.controlflow.hints !101

; <label>:1322                                    ; preds = %1273
  %1323 = and i32 %40, 2147483647
  %1324 = and i32 %41, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1323, i32 %1324, i32 undef, float %1178, float %1179, float %1180, float %1178, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1325

; <label>:1325                                    ; preds = %1322, %1273
  br label %1326

; <label>:1326                                    ; preds = %1345, %1325
  %1327 = phi i32 [ %1332, %1345 ], [ 14, %1325 ]
  %1328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1327)  ; FirstbitLo(value)
  %1329 = and i32 %1328, 31
  %1330 = shl i32 1, %1329
  %1331 = xor i32 %1330, -1
  %1332 = and i32 %1327, %1331
  %1333 = and i32 %1328, 1
  %1334 = lshr i32 %1328, 1
  %1335 = or i32 %1333, %42
  %1336 = add i32 %1334, %43
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = fptoui float %1338 to i32
  %1340 = icmp uge i32 %1335, %1339
  %1341 = extractvalue %dx.types.CBufRet.f32 %1337, 1
  %1342 = fptoui float %1341 to i32
  %1343 = icmp uge i32 %1336, %1342
  %1344 = or i1 %1340, %1343
  br i1 %1344, label %1345, label %1347, !dx.controlflow.hints !102

; <label>:1345                                    ; preds = %1509, %1456, %1326
  %1346 = icmp eq i32 %1332, 0
  br i1 %1346, label %1512, label %1326

; <label>:1347                                    ; preds = %1326
  %1348 = uitofp i32 %1335 to float
  %1349 = uitofp i32 %1336 to float
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 2
  %1352 = fmul fast float %1351, 0x3FE3C6EF40000000
  %1353 = frem fast float %1348, 2.560000e+02
  %1354 = frem fast float %1349, 2.560000e+02
  %1355 = fptoui float %1353 to i32
  %1356 = fptoui float %1354 to i32
  %1357 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1355, i32 %1356, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = fadd fast float %1358, %1352
  %1360 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1361 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %1335, i32 %1336, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1362 = extractvalue %dx.types.ResRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.f32 %1361, 1
  %1364 = extractvalue %dx.types.ResRet.f32 %1361, 2
  %1365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.i32 %1365, 3
  %1367 = and i32 %1366, 3
  %1368 = icmp ne i32 %1367, 0
  %1369 = and i32 %1366, 4
  %1370 = icmp ne i32 %1369, 0
  %1371 = and i1 %1368, %1370
  br i1 %1371, label %1372, label %1385, !dx.controlflow.hints !96

; <label>:1372                                    ; preds = %1347
  %1373 = fadd fast float %1349, 5.000000e-01
  %1374 = extractvalue %dx.types.CBufRet.f32 %1337, 3
  %1375 = fmul fast float %1374, %1373
  %1376 = fadd fast float %1348, 5.000000e-01
  %1377 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1378 = fmul fast float %1377, %1376
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1378, float %1375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = fsub fast float 1.000000e+00, %1380
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = fcmp fast olt float %1381, %1383
  br label %1388

; <label>:1385                                    ; preds = %1347
  %1386 = icmp eq i32 %1369, 0
  %1387 = and i1 %1368, %1386
  br label %1388

; <label>:1388                                    ; preds = %1385, %1372
  %1389 = phi i1 [ %1384, %1372 ], [ %1387, %1385 ]
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  br i1 %1389, label %1392, label %1411, !dx.controlflow.hints !97

; <label>:1392                                    ; preds = %1388
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 3
  %1395 = call float @dx.op.dot3.f32(i32 55, float %1157, float %1158, float %1159, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1396 = fmul fast float %1395, %1362
  %1397 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1398 = fmul fast float %1391, %1397
  %1399 = fadd fast float %1398, %1396
  br i1 %1371, label %1400, label %1406, !dx.controlflow.hints !98

; <label>:1400                                    ; preds = %1392
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 1
  %1403 = fadd fast float %1157, -1.000000e+00
  %1404 = fmul fast float %1402, %1403
  %1405 = fadd fast float %1404, 1.000000e+00
  br label %1406

; <label>:1406                                    ; preds = %1400, %1392
  %1407 = phi float [ %1405, %1400 ], [ %1157, %1392 ]
  %1408 = fsub fast float %1363, %1394
  %1409 = fmul fast float %1407, %1408
  %1410 = fadd fast float %1409, %1394
  br label %1421

; <label>:1411                                    ; preds = %1388
  %1412 = fmul fast float %1362, %1157
  %1413 = fmul fast float %1363, %1158
  %1414 = fmul fast float %1364, %1159
  %1415 = fmul fast float %1391, %1163
  %1416 = fmul fast float %1391, %1164
  %1417 = fmul fast float %1391, %1165
  %1418 = fadd fast float %1415, %1412
  %1419 = fadd fast float %1416, %1413
  %1420 = fadd fast float %1417, %1414
  br label %1421

; <label>:1421                                    ; preds = %1411, %1406
  %1422 = phi float [ %1399, %1406 ], [ %1418, %1411 ]
  %1423 = phi float [ %1410, %1406 ], [ %1419, %1411 ]
  %1424 = phi float [ %1364, %1406 ], [ %1420, %1411 ]
  %1425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.i32 %1425, 1
  %1427 = shl i32 %1426, 1
  %1428 = lshr i32 %1336, 5
  %1429 = extractvalue %dx.types.CBufRet.i32 %1425, 0
  %1430 = mul i32 %1429, %1428
  %1431 = add i32 %1427, %1246
  %1432 = add i32 %1431, %1430
  %1433 = shl i32 %1432, 2
  %1434 = and i32 %1336, 24
  %1435 = or i32 %1434, %1251
  %1436 = shl i32 1, %1435
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, %1436
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1456, label %1441, !dx.controlflow.hints !99

; <label>:1441                                    ; preds = %1421
  %1442 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1335, i32 %1336, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = fcmp fast ogt float %1443, 0.000000e+00
  br i1 %1444, label %1445, label %1456, !dx.controlflow.hints !100

; <label>:1445                                    ; preds = %1441
  %1446 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1335, i32 %1336, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.ResRet.f32 %1446, 2
  %1450 = extractvalue %dx.types.ResRet.f32 %1446, 3
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 2
  %1453 = fmul fast float %1452, %1447
  %1454 = fmul fast float %1452, %1448
  %1455 = fmul fast float %1452, %1449
  br label %1456

; <label>:1456                                    ; preds = %1445, %1441, %1421
  %1457 = phi float [ %1453, %1445 ], [ 0.000000e+00, %1441 ], [ 0.000000e+00, %1421 ]
  %1458 = phi float [ %1454, %1445 ], [ 0.000000e+00, %1441 ], [ 0.000000e+00, %1421 ]
  %1459 = phi float [ %1455, %1445 ], [ 0.000000e+00, %1441 ], [ 0.000000e+00, %1421 ]
  %1460 = phi float [ %1450, %1445 ], [ 0.000000e+00, %1441 ], [ 0.000000e+00, %1421 ]
  %1461 = fsub fast float 1.000000e+00, %1460
  %1462 = fmul fast float %1461, %1422
  %1463 = fmul fast float %1461, %1423
  %1464 = fmul fast float %1461, %1424
  %1465 = fadd fast float %1462, %1457
  %1466 = fadd fast float %1463, %1458
  %1467 = fadd fast float %1464, %1459
  %1468 = fadd fast float %1360, 0x3FE3C6EF40000000
  %1469 = call float @dx.op.unary.f32(i32 22, float %1468)  ; Frc(value)
  %1470 = call float @dx.op.unary.f32(i32 23, float %1465)  ; Log(value)
  %1471 = fadd fast float %1470, -7.000000e+00
  %1472 = call float @dx.op.unary.f32(i32 21, float %1471)  ; Exp(value)
  %1473 = fmul fast float %1469, 2.000000e+00
  %1474 = fadd fast float %1473, -1.000000e+00
  %1475 = fmul fast float %1472, %1474
  %1476 = fcmp fast ogt float %1465, 0.000000e+00
  %1477 = select i1 %1476, float %1475, float 0.000000e+00
  %1478 = fadd fast float %1477, %1465
  %1479 = fadd fast float %1360, 0x3FF3C6EF40000000
  %1480 = call float @dx.op.unary.f32(i32 22, float %1479)  ; Frc(value)
  %1481 = call float @dx.op.unary.f32(i32 23, float %1466)  ; Log(value)
  %1482 = fadd fast float %1481, -7.000000e+00
  %1483 = call float @dx.op.unary.f32(i32 21, float %1482)  ; Exp(value)
  %1484 = fmul fast float %1480, 2.000000e+00
  %1485 = fadd fast float %1484, -1.000000e+00
  %1486 = fmul fast float %1483, %1485
  %1487 = fcmp fast ogt float %1466, 0.000000e+00
  %1488 = select i1 %1487, float %1486, float 0.000000e+00
  %1489 = fadd fast float %1488, %1466
  %1490 = fadd fast float %1360, 0x3FFDAA66E0000000
  %1491 = call float @dx.op.unary.f32(i32 22, float %1490)  ; Frc(value)
  %1492 = call float @dx.op.unary.f32(i32 23, float %1467)  ; Log(value)
  %1493 = fadd fast float %1492, -6.000000e+00
  %1494 = call float @dx.op.unary.f32(i32 21, float %1493)  ; Exp(value)
  %1495 = fmul fast float %1491, 2.000000e+00
  %1496 = fadd fast float %1495, -1.000000e+00
  %1497 = fmul fast float %1494, %1496
  %1498 = fcmp fast ogt float %1467, 0.000000e+00
  %1499 = select i1 %1498, float %1497, float 0.000000e+00
  %1500 = fadd fast float %1499, %1467
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1335, i32 %1336, i32 undef, float %1478, float %1489, float %1500, float %1478, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.i32 %1501, 0
  %1503 = and i32 %1502, 1
  %1504 = icmp ne i32 %1503, 0
  %1505 = or i32 %1336, %1328
  %1506 = and i32 %1505, 1
  %1507 = icmp eq i32 %1506, 0
  %1508 = and i1 %1507, %1504
  br i1 %1508, label %1509, label %1345, !dx.controlflow.hints !101

; <label>:1509                                    ; preds = %1456
  %1510 = and i32 %40, 2147483647
  %1511 = lshr i32 %1336, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1510, i32 %1511, i32 undef, float %1362, float %1363, float %1364, float %1362, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1345

; <label>:1512                                    ; preds = %1345
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !22, !25, !28}
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
!22 = !{!23, !24}
!23 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{void ()* @cs_post_opaque_processes_dmfpscale, !"cs_post_opaque_processes_dmfpscale", null, !4, !33}
!33 = !{i32 0, i64 8464, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !54, !56, !57, !59, !60, !61}
!52 = distinct !{!52, !53, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!53 = distinct !{!53, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!54 = distinct !{!54, !55, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!55 = distinct !{!55, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!56 = distinct !{!56, !55, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!57 = distinct !{!57, !58, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %extinction"}
!58 = distinct !{!58, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z"}
!59 = distinct !{!59, !58, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %scattering"}
!60 = distinct !{!60, !58, !"\01?GetFog@@YAXV?$vector@I$01@@MAIAV?$vector@M$02@@1AIAM_N@Z: %thermalFogExtinction"}
!61 = distinct !{!61, !62, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z: %colorQuadAvg"}
!62 = distinct !{!62, !"\01?PostOpaqueProcessesQuadLoop@@YAXV?$vector@I$01@@00V?$vector@M$03@@AIAV?$vector@M$02@@_N33V?$vector@_N$03@@@Z"}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = !{!65}
!65 = distinct !{!65, !66, !"\01?sort@@YAXAIAM00@Z: %c"}
!66 = distinct !{!66, !"\01?sort@@YAXAIAM00@Z"}
!67 = !{!68, !69, !52, !54, !56, !57, !59, !60, !61}
!68 = distinct !{!68, !66, !"\01?sort@@YAXAIAM00@Z: %a"}
!69 = distinct !{!69, !66, !"\01?sort@@YAXAIAM00@Z: %b"}
!70 = !{!69}
!71 = !{!68, !65, !52, !54, !56, !57, !59, !60, !61}
!72 = !{!68}
!73 = !{!69, !65, !52, !54, !56, !57, !59, !60, !61}
!74 = !{!75}
!75 = distinct !{!75, !76, !"\01?sort@@YAXAIAM00@Z: %c"}
!76 = distinct !{!76, !"\01?sort@@YAXAIAM00@Z"}
!77 = !{!78, !79, !52, !54, !56, !57, !59, !60, !61}
!78 = distinct !{!78, !76, !"\01?sort@@YAXAIAM00@Z: %a"}
!79 = distinct !{!79, !76, !"\01?sort@@YAXAIAM00@Z: %b"}
!80 = !{!79}
!81 = !{!78, !75, !52, !54, !56, !57, !59, !60, !61}
!82 = !{!78}
!83 = !{!79, !75, !52, !54, !56, !57, !59, !60, !61}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}

