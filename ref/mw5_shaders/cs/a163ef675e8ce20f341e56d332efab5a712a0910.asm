;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
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
; shader hash: 8a1b00dd041b8ede3aa7ba11c760edf0
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
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 0
  %31 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %32 = mul i32 %31, %30
  %33 = add i32 %32, %26
  %34 = shl i32 %33, 2
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = lshr i32 %36, 16
  %38 = shl i32 %36, 3
  %39 = and i32 %38, 524280
  %40 = shl nuw nsw i32 %37, 3
  %41 = add i32 %39, %24
  %42 = add i32 %40, %25
  %43 = shl i32 %41, 1
  %44 = shl i32 %42, 1
  %45 = uitofp i32 %43 to float
  %46 = uitofp i32 %44 to float
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %50 = fmul fast float %45, %48
  %51 = fmul fast float %46, %49
  %52 = fadd fast float %50, %48
  %53 = fadd fast float %51, %49
  %54 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %21, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 3
  %56 = fcmp fast ogt float %55, -1.000000e+00
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %59 = select i1 %56, float %58, float 1.000000e+00
  %60 = fadd fast float %55, 1.000000e+00
  %61 = fmul fast float %59, %60
  %62 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = and i32 %64, 114688
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %66, i32 %43, i32 0
  %68 = select i1 %66, i32 %44, i32 0
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %67, i32 %68, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = fmul fast float %70, 2.550000e+02
  %72 = fptoui float %71 to i32
  %73 = icmp eq i32 %72, 3
  %74 = and i1 %66, %73
  %75 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %76 = fcmp fast oge float %62, %75
  %77 = fadd fast float %45, 5.000000e-01
  %78 = fadd fast float %46, 5.000000e-01
  br i1 %74, label %940, label %79, !dx.controlflow.hints !36

; <label>:79                                      ; preds = %0
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 170)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = select i1 %76, float %81, float %62
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %86 = fmul fast float %77, 2.000000e+00
  %87 = fmul fast float %86, %84
  %88 = fmul fast float %78, 2.000000e+00
  %89 = fmul fast float %88, %85
  %90 = fsub fast float 1.000000e+00, %87
  %91 = fsub fast float 1.000000e+00, %89
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %90, %93
  %97 = fmul fast float %90, %94
  %98 = fmul fast float %90, %95
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %91, %100
  %104 = fmul fast float %91, %101
  %105 = fmul fast float %91, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fadd fast float %103, %107
  %111 = fadd fast float %110, %96
  %112 = fadd fast float %104, %108
  %113 = fadd fast float %112, %97
  %114 = fadd fast float %105, %109
  %115 = fadd fast float %114, %98
  %116 = fmul fast float %111, %82
  %117 = fmul fast float %113, %82
  %118 = fmul fast float %115, %82
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 163)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = extractvalue %dx.types.CBufRet.f32 %126, 3
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %148 = fcmp fast olt float %147, -5.000000e-01
  %149 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %150 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = call float @dx.op.unary.f32(i32 25, float %150)  ; Rsqrt(value)
  %152 = fmul fast float %151, %150
  %153 = fmul fast float %151, %116
  %154 = fmul fast float %151, %117
  %155 = fmul fast float %151, %118
  %156 = fadd fast float %152, %125
  br i1 %76, label %157, label %169, !dx.controlflow.hints !37

; <label>:157                                     ; preds = %79
  %158 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %159 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 187)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %163 = call float @dx.op.binary.f32(i32 35, float %155, float %162)  ; FMax(a,b)
  %164 = call float @dx.op.binary.f32(i32 36, float %163, float %161)  ; FMin(a,b)
  %165 = fmul fast float %164, %159
  %166 = fadd fast float %165, %158
  %167 = call float @dx.op.unary.f32(i32 7, float %166)  ; Saturate(value)
  %168 = fmul fast float %155, %120
  br label %169

; <label>:169                                     ; preds = %157, %79
  %170 = phi float [ %120, %157 ], [ %156, %79 ]
  %171 = phi float [ %167, %157 ], [ 0.000000e+00, %79 ]
  %172 = phi float [ %168, %157 ], [ %118, %79 ]
  %173 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 1
  %176 = and i32 %175, 1
  %177 = icmp ne i32 %176, 0
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = fcmp fast ogt float %179, 0.000000e+00
  %181 = and i1 %177, %180
  br i1 %181, label %182, label %591, !dx.controlflow.hints !38

; <label>:182                                     ; preds = %169
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %185 = select i1 %76, float %184, float %152
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = fsub fast float %189, %191
  %193 = and i32 %175, 2
  %194 = extractvalue %dx.types.CBufRet.i32 %174, 0
  %195 = call i32 @dx.op.binary.i32(i32 40, i32 %194, i32 3)  ; UMin(a,b)
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %200 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %201 = fsub fast float %197, %199
  %202 = fsub fast float %198, %200
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %205 = fcmp fast ogt float %204, 0.000000e+00
  %206 = fsub fast float -0.000000e+00, %201
  %207 = fsub fast float -0.000000e+00, %202
  %208 = call float @dx.op.dot2.f32(i32 54, float %153, float %154, float %153, float %154)  ; Dot2(ax,ay,bx,by)
  %209 = call float @dx.op.dot2.f32(i32 54, float %153, float %154, float %206, float %207)  ; Dot2(ax,ay,bx,by)
  %210 = fmul fast float %209, 2.000000e+00
  %211 = call float @dx.op.dot2.f32(i32 54, float %206, float %207, float %206, float %207)  ; Dot2(ax,ay,bx,by)
  %212 = fmul fast float %204, %204
  %213 = fsub fast float %211, %212
  %214 = fmul fast float %210, %210
  %215 = fmul fast float %208, 4.000000e+00
  %216 = fmul fast float %215, %213
  %217 = fsub fast float %214, %216
  %218 = fcmp fast ogt float %217, 0.000000e+00
  br i1 %218, label %219, label %234, !dx.controlflow.hints !39

; <label>:219                                     ; preds = %182
  %220 = fcmp fast ogt float %210, 0.000000e+00
  %221 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %222 = fsub fast float -0.000000e+00, %221
  %223 = select i1 %220, float %221, float %222
  %224 = fadd fast float %223, %210
  %225 = fmul float %224, -5.000000e-01
  %226 = fdiv fast float %225, %208
  %227 = call float @dx.op.binary.f32(i32 35, float %226, float 0.000000e+00)  ; FMax(a,b)
  %228 = call float @dx.op.binary.f32(i32 36, float %185, float %227)  ; FMin(a,b)
  %229 = fdiv fast float %213, %225
  %230 = call float @dx.op.binary.f32(i32 35, float %229, float 0.000000e+00)  ; FMax(a,b)
  %231 = call float @dx.op.binary.f32(i32 36, float %185, float %230)  ; FMin(a,b)
  %232 = call float @dx.op.binary.f32(i32 36, float %228, float %231)  ; FMin(a,b)
  %233 = call float @dx.op.binary.f32(i32 35, float %228, float %231)  ; FMax(a,b)
  br label %234

; <label>:234                                     ; preds = %219, %182
  %235 = phi float [ %233, %219 ], [ -1.000000e+00, %182 ]
  %236 = phi float [ %232, %219 ], [ -1.000000e+00, %182 ]
  %237 = phi i1 [ true, %219 ], [ false, %182 ]
  %238 = and i1 %205, %237
  br i1 %238, label %239, label %241, !dx.controlflow.hints !40

; <label>:239                                     ; preds = %234
  %240 = fcmp fast oeq float %236, %235
  br i1 %240, label %544, label %242, !dx.controlflow.hints !41

; <label>:241                                     ; preds = %234
  br i1 %205, label %544, label %242, !dx.controlflow.hints !42

; <label>:242                                     ; preds = %241, %239
  %243 = phi float [ %185, %241 ], [ %235, %239 ]
  %244 = phi float [ 0.000000e+00, %241 ], [ %236, %239 ]
  %245 = icmp ne i32 %193, 0
  %246 = fmul fast float %243, %155
  %247 = fadd fast float %246, %187
  %248 = fmul fast float %247, %243
  %249 = select i1 %245, float 0.000000e+00, float %248
  %250 = fcmp fast oeq float %155, 0.000000e+00
  %251 = fdiv fast float %192, %155
  %252 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %251)  ; FMax(a,b)
  %253 = select i1 %250, float %243, float %252
  %254 = call float @dx.op.binary.f32(i32 36, float %243, float %253)  ; FMin(a,b)
  %255 = fcmp fast ogt float %155, 0.000000e+00
  %256 = fcmp fast olt float %192, 0.000000e+00
  br i1 %255, label %257, label %314, !dx.controlflow.hints !43

; <label>:257                                     ; preds = %242
  %258 = icmp eq i32 %193, 0
  br i1 %256, label %259, label %303, !dx.controlflow.hints !44

; <label>:259                                     ; preds = %257
  %260 = select i1 %258, float %243, float 0.000000e+00
  %261 = fsub fast float -0.000000e+00, %260
  %262 = call float @dx.op.unary.f32(i32 6, float %261)  ; FAbs(value)
  %263 = fmul fast float %260, %155
  %264 = fadd fast float %263, %187
  %265 = fmul fast float %262, %264
  %266 = fsub fast float %249, %265
  %267 = fsub fast float %243, %262
  %268 = select i1 %258, float %267, float 0.000000e+00
  %269 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %270 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %271 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = extractvalue %dx.types.CBufRet.f32 %272, 1
  %275 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %276 = extractvalue %dx.types.CBufRet.f32 %272, 3
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 3
  %279 = call float @dx.op.binary.f32(i32 36, float %266, float %278)  ; FMin(a,b)
  %280 = fmul fast float %276, %268
  %281 = call float @dx.op.unary.f32(i32 7, float %280)  ; Saturate(value)
  %282 = fsub fast float %273, %269
  %283 = fsub fast float %274, %270
  %284 = fsub fast float %275, %271
  %285 = fmul fast float %281, %282
  %286 = fmul fast float %281, %283
  %287 = fmul fast float %281, %284
  %288 = fadd fast float %285, %269
  %289 = fadd fast float %286, %270
  %290 = fadd fast float %287, %271
  br i1 %76, label %544, label %291, !dx.controlflow.hints !45

; <label>:291                                     ; preds = %259
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = fadd fast float %294, %293
  %296 = call float @dx.op.unary.f32(i32 7, float %295)  ; Saturate(value)
  %297 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %298 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %299 = fadd fast float %298, %297
  %300 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %301 = fmul fast float %296, %279
  %302 = fmul fast float %301, %300
  br label %544

; <label>:303                                     ; preds = %257
  br i1 %258, label %304, label %325, !dx.controlflow.hints !46

; <label>:304                                     ; preds = %303
  %305 = call float @dx.op.binary.f32(i32 36, float %254, float %244)  ; FMin(a,b)
  %306 = fsub fast float %254, %305
  %307 = fsub fast float %306, %243
  %308 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %309 = fadd fast float %306, %243
  %310 = fmul fast float %309, %155
  %311 = fadd fast float %310, %187
  %312 = fmul fast float %311, %308
  %313 = fsub fast float %249, %312
  br label %325

; <label>:314                                     ; preds = %242
  br i1 %256, label %315, label %325, !dx.controlflow.hints !47

; <label>:315                                     ; preds = %314
  %316 = call float @dx.op.binary.f32(i32 35, float %244, float %254)  ; FMax(a,b)
  %317 = icmp eq i32 %193, 0
  %318 = select i1 %317, float %254, float 0.000000e+00
  %319 = fsub fast float -0.000000e+00, %318
  %320 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %321 = fmul fast float %318, %155
  %322 = fadd fast float %321, %187
  %323 = fmul fast float %320, %322
  %324 = fsub fast float %249, %323
  br label %325

; <label>:325                                     ; preds = %315, %314, %304, %303
  %326 = phi float [ %244, %303 ], [ %244, %304 ], [ %316, %315 ], [ %244, %314 ]
  %327 = phi float [ 0.000000e+00, %303 ], [ %308, %304 ], [ %320, %315 ], [ 0.000000e+00, %314 ]
  %328 = phi float [ %249, %303 ], [ %313, %304 ], [ %324, %315 ], [ %249, %314 ]
  %329 = phi float [ %254, %303 ], [ %254, %304 ], [ %243, %315 ], [ %243, %314 ]
  %330 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %330, align 4, !tbaa !48, !noalias !52
  %331 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %331, align 4, !tbaa !48, !noalias !52
  %332 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %332, align 4, !tbaa !48, !noalias !52
  %333 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %333, align 4, !tbaa !48, !noalias !52
  %334 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %334, align 4, !tbaa !48, !noalias !52
  %335 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %335, align 4, !tbaa !48, !noalias !52
  %336 = icmp sgt i32 %195, 0
  br i1 %336, label %337, label %398

; <label>:337                                     ; preds = %325
  br label %338

; <label>:338                                     ; preds = %387, %337
  %339 = phi i32 [ %388, %387 ], [ 0, %337 ]
  %340 = phi i32 [ %389, %387 ], [ 0, %337 ]
  %341 = add nuw i32 %340, 171
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %341)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = fsub fast float %343, %346
  %349 = fsub fast float %344, %347
  %350 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %351 = fsub fast float -0.000000e+00, %348
  %352 = fsub fast float -0.000000e+00, %349
  %353 = call float @dx.op.dot2.f32(i32 54, float %153, float %154, float %351, float %352)  ; Dot2(ax,ay,bx,by)
  %354 = fmul fast float %353, 2.000000e+00
  %355 = call float @dx.op.dot2.f32(i32 54, float %351, float %352, float %351, float %352)  ; Dot2(ax,ay,bx,by)
  %356 = fmul fast float %350, %350
  %357 = fsub fast float %355, %356
  %358 = fmul fast float %354, %354
  %359 = fmul fast float %215, %357
  %360 = fsub fast float %358, %359
  %361 = fcmp fast ogt float %360, 0.000000e+00
  br i1 %361, label %362, label %377, !dx.controlflow.hints !39

; <label>:362                                     ; preds = %338
  %363 = fcmp fast ogt float %354, 0.000000e+00
  %364 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %365 = fsub fast float -0.000000e+00, %364
  %366 = select i1 %363, float %364, float %365
  %367 = fadd fast float %366, %354
  %368 = fmul float %367, -5.000000e-01
  %369 = fdiv fast float %368, %208
  %370 = call float @dx.op.binary.f32(i32 35, float %369, float 0.000000e+00)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 36, float %243, float %370)  ; FMin(a,b)
  %372 = fdiv fast float %357, %368
  %373 = call float @dx.op.binary.f32(i32 35, float %372, float 0.000000e+00)  ; FMax(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %243, float %373)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 36, float %371, float %374)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 35, float %371, float %374)  ; FMax(a,b)
  br label %377

; <label>:377                                     ; preds = %362, %338
  %378 = phi float [ %376, %362 ], [ -1.000000e+00, %338 ]
  %379 = phi float [ %375, %362 ], [ -1.000000e+00, %338 ]
  %380 = phi i1 [ true, %362 ], [ false, %338 ]
  br i1 %380, label %381, label %387, !dx.controlflow.hints !64

; <label>:381                                     ; preds = %377
  %382 = call float @dx.op.binary.f32(i32 35, float %326, float %379)  ; FMax(a,b)
  %383 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %340
  store float %382, float* %383, align 4, !tbaa !48, !noalias !52
  %384 = call float @dx.op.binary.f32(i32 35, float %326, float %378)  ; FMax(a,b)
  %385 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %340
  store float %384, float* %385, align 4, !tbaa !48, !noalias !52
  %386 = add nsw i32 %339, 1
  br label %387

; <label>:387                                     ; preds = %381, %377
  %388 = phi i32 [ %386, %381 ], [ %339, %377 ]
  %389 = add nuw nsw i32 %340, 1
  %390 = icmp eq i32 %389, %195
  br i1 %390, label %391, label %338

; <label>:391                                     ; preds = %387
  %392 = load float, float* %332, align 4, !tbaa !48, !alias.scope !65, !noalias !68
  %393 = load float, float* %331, align 4, !tbaa !48, !alias.scope !71, !noalias !72
  %394 = load float, float* %330, align 4, !tbaa !48, !alias.scope !73, !noalias !74
  %395 = load float, float* %335, align 4, !tbaa !48, !alias.scope !75, !noalias !78
  %396 = load float, float* %334, align 4, !tbaa !48, !alias.scope !81, !noalias !82
  %397 = load float, float* %333, align 4, !tbaa !48, !alias.scope !83, !noalias !84
  br label %398

; <label>:398                                     ; preds = %391, %325
  %399 = phi float [ -1.000000e+00, %325 ], [ %397, %391 ]
  %400 = phi float [ -1.000000e+00, %325 ], [ %396, %391 ]
  %401 = phi float [ -1.000000e+00, %325 ], [ %395, %391 ]
  %402 = phi float [ -1.000000e+00, %325 ], [ %394, %391 ]
  %403 = phi float [ -1.000000e+00, %325 ], [ %393, %391 ]
  %404 = phi float [ -1.000000e+00, %325 ], [ %392, %391 ]
  %405 = phi i32 [ 0, %325 ], [ %388, %391 ]
  %406 = call float @dx.op.binary.f32(i32 36, float %403, float %404)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %402, float %406)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float %402, float %403)  ; FMax(a,b)
  %409 = call float @dx.op.binary.f32(i32 36, float %408, float %404)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 36, float %402, float %403)  ; FMin(a,b)
  %411 = call float @dx.op.binary.f32(i32 35, float %410, float %409)  ; FMax(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float %403, float %404)  ; FMax(a,b)
  %413 = call float @dx.op.binary.f32(i32 35, float %402, float %412)  ; FMax(a,b)
  store float %407, float* %330, align 4, !tbaa !48, !alias.scope !73, !noalias !74
  store float %411, float* %331, align 4, !tbaa !48, !alias.scope !71, !noalias !72
  store float %413, float* %332, align 4, !tbaa !48, !alias.scope !65, !noalias !68
  %414 = call float @dx.op.binary.f32(i32 36, float %400, float %401)  ; FMin(a,b)
  %415 = call float @dx.op.binary.f32(i32 36, float %399, float %414)  ; FMin(a,b)
  %416 = call float @dx.op.binary.f32(i32 35, float %399, float %400)  ; FMax(a,b)
  %417 = call float @dx.op.binary.f32(i32 36, float %416, float %401)  ; FMin(a,b)
  %418 = call float @dx.op.binary.f32(i32 36, float %399, float %400)  ; FMin(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float %418, float %417)  ; FMax(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %400, float %401)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %399, float %420)  ; FMax(a,b)
  store float %415, float* %333, align 4, !tbaa !48, !alias.scope !83, !noalias !84
  store float %419, float* %334, align 4, !tbaa !48, !alias.scope !81, !noalias !82
  store float %421, float* %335, align 4, !tbaa !48, !alias.scope !75, !noalias !78
  %422 = sub nsw i32 3, %405
  %423 = icmp sgt i32 %422, 2
  br i1 %423, label %424, label %462, !dx.controlflow.hints !85

; <label>:424                                     ; preds = %398
  %425 = icmp eq i32 %193, 0
  %426 = fsub fast float %243, %327
  %427 = select i1 %425, float %426, float %327
  %428 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %430 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 0
  %433 = extractvalue %dx.types.CBufRet.f32 %431, 1
  %434 = extractvalue %dx.types.CBufRet.f32 %431, 2
  %435 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %438 = call float @dx.op.binary.f32(i32 36, float %328, float %437)  ; FMin(a,b)
  %439 = fmul fast float %435, %427
  %440 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %441 = fsub fast float %432, %428
  %442 = fsub fast float %433, %429
  %443 = fsub fast float %434, %430
  %444 = fmul fast float %440, %441
  %445 = fmul fast float %440, %442
  %446 = fmul fast float %440, %443
  %447 = fadd fast float %444, %428
  %448 = fadd fast float %445, %429
  %449 = fadd fast float %446, %430
  br i1 %76, label %544, label %450, !dx.controlflow.hints !45

; <label>:450                                     ; preds = %424
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %454 = fadd fast float %453, %452
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %457 = extractvalue %dx.types.CBufRet.f32 %451, 3
  %458 = fadd fast float %457, %456
  %459 = call float @dx.op.unary.f32(i32 7, float %458)  ; Saturate(value)
  %460 = fmul fast float %455, %438
  %461 = fmul fast float %460, %459
  br label %544

; <label>:462                                     ; preds = %398
  %463 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %422
  %464 = load float, float* %463, align 4, !tbaa !48, !noalias !52
  %465 = fcmp fast olt float %464, %329
  %466 = icmp sgt i32 %405, 0
  %467 = and i1 %466, %465
  br i1 %467, label %468, label %505

; <label>:468                                     ; preds = %462
  br label %469

; <label>:469                                     ; preds = %498, %468
  %470 = phi float [ %499, %498 ], [ %327, %468 ]
  %471 = phi float [ %500, %498 ], [ %328, %468 ]
  %472 = phi float [ %480, %498 ], [ %464, %468 ]
  %473 = phi i32 [ %477, %498 ], [ %422, %468 ]
  %474 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %473
  %475 = load float, float* %474, align 4, !tbaa !48, !noalias !52
  %476 = icmp slt i32 %473, 2
  %477 = add nsw i32 %473, 1
  %478 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %477
  %479 = load float, float* %478, align 4, !tbaa !48, !noalias !52
  %480 = select i1 %476, float %479, float %243
  %481 = call float @dx.op.binary.f32(i32 36, float %480, float %475)  ; FMin(a,b)
  %482 = call float @dx.op.binary.f32(i32 36, float %329, float %481)  ; FMin(a,b)
  %483 = icmp eq i32 %193, 0
  %484 = fadd fast float %482, %472
  %485 = fmul fast float %484, %155
  %486 = fadd fast float %485, %187
  br i1 %483, label %492, label %487, !dx.controlflow.hints !86

; <label>:487                                     ; preds = %469
  %488 = fsub fast float %482, %472
  %489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %488)  ; FMax(a,b)
  %490 = fmul fast float %489, %486
  %491 = fadd fast float %490, %471
  br label %498

; <label>:492                                     ; preds = %469
  %493 = fsub fast float %472, %482
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  %495 = fadd fast float %494, %470
  %496 = fmul fast float %494, %486
  %497 = fsub fast float %471, %496
  br label %498

; <label>:498                                     ; preds = %492, %487
  %499 = phi float [ %489, %487 ], [ %495, %492 ]
  %500 = phi float [ %491, %487 ], [ %497, %492 ]
  %501 = fcmp fast olt float %480, %329
  %502 = icmp slt i32 %477, 3
  %503 = and i1 %502, %501
  br i1 %503, label %469, label %504

; <label>:504                                     ; preds = %498
  br label %505

; <label>:505                                     ; preds = %504, %462
  %506 = phi float [ %327, %462 ], [ %499, %504 ]
  %507 = phi float [ %328, %462 ], [ %500, %504 ]
  %508 = fsub fast float %243, %506
  %509 = select i1 %245, float %506, float %508
  %510 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %511 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %512 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 0
  %515 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %516 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %517 = extractvalue %dx.types.CBufRet.f32 %513, 3
  %518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.f32 %518, 3
  %520 = call float @dx.op.binary.f32(i32 36, float %507, float %519)  ; FMin(a,b)
  %521 = fmul fast float %517, %509
  %522 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %523 = fsub fast float %514, %510
  %524 = fsub fast float %515, %511
  %525 = fsub fast float %516, %512
  %526 = fmul fast float %522, %523
  %527 = fmul fast float %522, %524
  %528 = fmul fast float %522, %525
  %529 = fadd fast float %526, %510
  %530 = fadd fast float %527, %511
  %531 = fadd fast float %528, %512
  br i1 %76, label %544, label %532, !dx.controlflow.hints !45

; <label>:532                                     ; preds = %505
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 0
  %535 = extractvalue %dx.types.CBufRet.f32 %533, 1
  %536 = fadd fast float %535, %534
  %537 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  %538 = extractvalue %dx.types.CBufRet.f32 %533, 2
  %539 = extractvalue %dx.types.CBufRet.f32 %533, 3
  %540 = fadd fast float %539, %538
  %541 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  %542 = fmul fast float %537, %520
  %543 = fmul fast float %542, %541
  br label %544

; <label>:544                                     ; preds = %532, %505, %450, %424, %291, %259, %241, %239
  %545 = phi float [ 0.000000e+00, %239 ], [ 0.000000e+00, %241 ], [ %268, %291 ], [ %268, %259 ], [ %427, %450 ], [ %427, %424 ], [ %509, %532 ], [ %509, %505 ]
  %546 = phi float [ 0.000000e+00, %239 ], [ 0.000000e+00, %241 ], [ %302, %291 ], [ %279, %259 ], [ %461, %450 ], [ %438, %424 ], [ %543, %532 ], [ %520, %505 ]
  %547 = phi float [ 0.000000e+00, %239 ], [ 0.000000e+00, %241 ], [ %288, %291 ], [ %288, %259 ], [ %447, %450 ], [ %447, %424 ], [ %529, %532 ], [ %529, %505 ]
  %548 = phi float [ 0.000000e+00, %239 ], [ 0.000000e+00, %241 ], [ %289, %291 ], [ %289, %259 ], [ %448, %450 ], [ %448, %424 ], [ %530, %532 ], [ %530, %505 ]
  %549 = phi float [ 0.000000e+00, %239 ], [ 0.000000e+00, %241 ], [ %290, %291 ], [ %290, %259 ], [ %449, %450 ], [ %449, %424 ], [ %531, %532 ], [ %531, %505 ]
  %550 = fmul fast float %179, %546
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %553 = fsub fast float %189, %552
  %554 = fcmp fast olt float %550, -2.000000e+01
  %555 = call float @dx.op.unary.f32(i32 21, float %550)  ; Exp(value)
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 2
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %561 = fmul fast float %558, %553
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = fsub fast float 1.000000e+00, %562
  %564 = fmul fast float %155, 5.000000e-01
  %565 = fadd fast float %564, 5.000000e-01
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %567 = fsub fast float 1.000000e+00, %566
  %568 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %563)  ; FMax(a,b)
  %569 = fdiv fast float %567, %568
  %570 = fsub fast float %553, %118
  %571 = call float @dx.op.unary.f32(i32 6, float %570)  ; FAbs(value)
  %572 = fmul fast float %571, %557
  %573 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %574 = fsub fast float 1.000000e+00, %572
  %575 = fmul fast float %574, %573
  %576 = fadd fast float %575, %572
  %577 = fmul fast float %560, %553
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %579 = fsub fast float 1.000000e+00, %576
  %580 = fmul fast float %579, %578
  %581 = fadd fast float %580, %576
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  %583 = fadd fast float %555, -1.000000e+00
  %584 = select i1 %554, float -1.000000e+00, float %583
  %585 = fmul fast float %582, %584
  %586 = fadd fast float %585, 1.000000e+00
  %587 = fsub fast float -0.000000e+00, %585
  %588 = fmul fast float %547, %587
  %589 = fmul fast float %548, %587
  %590 = fmul fast float %549, %587
  br label %591

; <label>:591                                     ; preds = %544, %169
  %592 = phi float [ %545, %544 ], [ 0.000000e+00, %169 ]
  %593 = phi float [ %586, %544 ], [ 1.000000e+00, %169 ]
  %594 = phi float [ %588, %544 ], [ 0.000000e+00, %169 ]
  %595 = phi float [ %589, %544 ], [ 0.000000e+00, %169 ]
  %596 = phi float [ %590, %544 ], [ 0.000000e+00, %169 ]
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %599 = fsub fast float 1.000000e+00, %593
  %600 = fmul fast float %599, %170
  %601 = fmul fast float %600, %598
  %602 = fsub fast float %170, %601
  br i1 %148, label %603, label %635, !dx.controlflow.hints !87

; <label>:603                                     ; preds = %591
  %604 = fmul fast float %173, %145
  %605 = fadd fast float %604, %146
  %606 = call float @dx.op.unary.f32(i32 7, float %605)  ; Saturate(value)
  %607 = fmul fast float %127, %602
  %608 = fsub fast float -0.000000e+00, %607
  %609 = fmul fast float %128, %602
  %610 = fsub fast float -0.000000e+00, %609
  %611 = call float @dx.op.unary.f32(i32 21, float %608)  ; Exp(value)
  %612 = call float @dx.op.unary.f32(i32 21, float %610)  ; Exp(value)
  %613 = call float @dx.op.binary.f32(i32 35, float %135, float %611)  ; FMax(a,b)
  %614 = call float @dx.op.binary.f32(i32 35, float %135, float %612)  ; FMax(a,b)
  %615 = fsub fast float %614, %613
  %616 = fmul fast float %615, %606
  %617 = fadd fast float %616, %613
  %618 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %619 = fmul fast float %171, %149
  %620 = fsub fast float 1.000000e+00, %619
  %621 = select i1 %76, float %620, float %618
  %622 = fsub fast float %132, %137
  %623 = fsub fast float %133, %138
  %624 = fsub fast float %134, %139
  %625 = fmul fast float %606, %622
  %626 = fmul fast float %606, %623
  %627 = fmul fast float %606, %624
  %628 = fadd fast float %625, %137
  %629 = fadd fast float %626, %138
  %630 = fadd fast float %627, %139
  %631 = fsub fast float 1.000000e+00, %621
  %632 = fmul fast float %631, %628
  %633 = fmul fast float %631, %629
  %634 = fmul fast float %631, %630
  br label %706

; <label>:635                                     ; preds = %591
  %636 = fmul fast float %602, %144
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = fsub fast float 2.000000e+00, %637
  %639 = fmul fast float %637, 9.921875e-01
  %640 = fmul fast float %639, %638
  %641 = fadd fast float %640, 3.906250e-03
  %642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %641, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = fsub fast float %637, %643
  %645 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %644)  ; FMax(a,b)
  %646 = fmul fast float %172, %130
  %647 = call float @dx.op.unary.f32(i32 6, float %646)  ; FAbs(value)
  %648 = fcmp fast ogt float %647, 0x3EB0C6F7A0000000
  br i1 %648, label %649, label %655, !dx.controlflow.hints !88

; <label>:649                                     ; preds = %635
  %650 = fmul fast float %646, 0xBFF7154760000000
  %651 = call float @dx.op.unary.f32(i32 21, float %650)  ; Exp(value)
  %652 = fsub fast float 1.000000e+00, %651
  %653 = fdiv fast float %652, %646
  %654 = fmul fast float %653, %140
  br label %655

; <label>:655                                     ; preds = %649, %635
  %656 = phi float [ %654, %649 ], [ %140, %635 ]
  %657 = fadd fast float %656, %142
  %658 = fmul fast float %657, %645
  %659 = fmul fast float %127, %658
  %660 = fsub fast float -0.000000e+00, %659
  %661 = fmul fast float %128, %658
  %662 = fsub fast float -0.000000e+00, %661
  %663 = fmul fast float %129, %658
  %664 = fsub fast float -0.000000e+00, %663
  %665 = call float @dx.op.unary.f32(i32 21, float %660)  ; Exp(value)
  %666 = call float @dx.op.unary.f32(i32 21, float %662)  ; Exp(value)
  %667 = call float @dx.op.unary.f32(i32 21, float %664)  ; Exp(value)
  br i1 %76, label %668, label %676, !dx.controlflow.hints !89

; <label>:668                                     ; preds = %655
  %669 = fmul fast float %665, %171
  %670 = fmul fast float %666, %171
  %671 = fmul fast float %667, %171
  %672 = fsub fast float 1.000000e+00, %171
  %673 = fadd fast float %669, %672
  %674 = fadd fast float %670, %672
  %675 = fadd fast float %671, %672
  br label %676

; <label>:676                                     ; preds = %668, %655
  %677 = phi float [ %673, %668 ], [ %665, %655 ]
  %678 = phi float [ %674, %668 ], [ %666, %655 ]
  %679 = phi float [ %675, %668 ], [ %667, %655 ]
  %680 = fmul fast float %173, %173
  %681 = fadd fast float %680, 1.000000e+00
  %682 = fmul fast float %681, 0x3FAE8EC8A0000000
  %683 = fmul fast float %682, %137
  %684 = fmul fast float %682, %138
  %685 = fmul fast float %682, %139
  %686 = fmul fast float %173, %135
  %687 = fsub fast float 1.000000e+00, %686
  %688 = fmul fast float %135, %135
  %689 = fsub fast float 1.000000e+00, %688
  %690 = fmul fast float %689, 0x3FB45F3060000000
  %691 = fmul fast float %687, %687
  %692 = fdiv fast float 1.000000e+00, %691
  %693 = fmul fast float %690, %692
  %694 = fmul fast float %693, %132
  %695 = fmul fast float %693, %133
  %696 = fmul fast float %693, %134
  %697 = fadd fast float %694, %683
  %698 = fadd fast float %695, %684
  %699 = fadd fast float %696, %685
  %700 = fsub fast float 1.000000e+00, %677
  %701 = fsub fast float 1.000000e+00, %678
  %702 = fsub fast float 1.000000e+00, %679
  %703 = fmul fast float %697, %700
  %704 = fmul fast float %698, %701
  %705 = fmul fast float %699, %702
  br label %706

; <label>:706                                     ; preds = %676, %603
  %707 = phi float [ %632, %603 ], [ %703, %676 ]
  %708 = phi float [ %633, %603 ], [ %704, %676 ]
  %709 = phi float [ %634, %603 ], [ %705, %676 ]
  %710 = phi float [ %621, %603 ], [ %677, %676 ]
  %711 = phi float [ %621, %603 ], [ %678, %676 ]
  %712 = phi float [ %621, %603 ], [ %679, %676 ]
  br i1 %181, label %713, label %911, !dx.controlflow.hints !90

; <label>:713                                     ; preds = %706
  %714 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %715 = fmul fast float %714, %599
  %716 = fsub fast float %594, %707
  %717 = fsub fast float %595, %708
  %718 = fsub fast float %596, %709
  %719 = fmul fast float %715, %716
  %720 = fmul fast float %715, %717
  %721 = fmul fast float %715, %718
  %722 = fadd fast float %719, %707
  %723 = fadd fast float %720, %708
  %724 = fadd fast float %721, %709
  %725 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %710)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %711)  ; FMax(a,b)
  %727 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %712)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %593)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float %592, float %602)  ; FMax(a,b)
  %730 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %729)  ; FMax(a,b)
  %731 = fdiv fast float %592, %730
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %733 = fdiv fast float %602, %730
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %735 = fcmp fast une float %728, 1.000000e+00
  br i1 %735, label %736, label %749, !dx.controlflow.hints !91

; <label>:736                                     ; preds = %713
  %737 = call float @dx.op.unary.f32(i32 23, float %728)  ; Log(value)
  %738 = fmul fast float %737, 0x3FE62E4300000000
  %739 = fmul fast float %594, %738
  %740 = fsub fast float -0.000000e+00, %739
  %741 = fmul fast float %595, %738
  %742 = fsub fast float -0.000000e+00, %741
  %743 = fmul fast float %596, %738
  %744 = fsub fast float -0.000000e+00, %743
  %745 = fsub fast float 1.000000e+00, %728
  %746 = fdiv fast float %740, %745
  %747 = fdiv fast float %742, %745
  %748 = fdiv fast float %744, %745
  br label %749

; <label>:749                                     ; preds = %736, %713
  %750 = phi float [ %746, %736 ], [ %594, %713 ]
  %751 = phi float [ %747, %736 ], [ %595, %713 ]
  %752 = phi float [ %748, %736 ], [ %596, %713 ]
  %753 = phi float [ %738, %736 ], [ 0.000000e+00, %713 ]
  %754 = fcmp fast une float %725, 1.000000e+00
  br i1 %754, label %755, label %762, !dx.controlflow.hints !92

; <label>:755                                     ; preds = %749
  %756 = call float @dx.op.unary.f32(i32 23, float %725)  ; Log(value)
  %757 = fmul fast float %756, 0x3FE62E4300000000
  %758 = fmul fast float %722, %757
  %759 = fsub fast float -0.000000e+00, %758
  %760 = fsub fast float 1.000000e+00, %725
  %761 = fdiv fast float %759, %760
  br label %762

; <label>:762                                     ; preds = %755, %749
  %763 = phi float [ %761, %755 ], [ %722, %749 ]
  %764 = phi float [ %757, %755 ], [ 0.000000e+00, %749 ]
  %765 = fcmp fast une float %726, 1.000000e+00
  br i1 %765, label %766, label %773, !dx.controlflow.hints !92

; <label>:766                                     ; preds = %762
  %767 = call float @dx.op.unary.f32(i32 23, float %726)  ; Log(value)
  %768 = fmul fast float %767, 0x3FE62E4300000000
  %769 = fmul fast float %723, %768
  %770 = fsub fast float -0.000000e+00, %769
  %771 = fsub fast float 1.000000e+00, %726
  %772 = fdiv fast float %770, %771
  br label %773

; <label>:773                                     ; preds = %766, %762
  %774 = phi float [ %772, %766 ], [ %723, %762 ]
  %775 = phi float [ %768, %766 ], [ 0.000000e+00, %762 ]
  %776 = fcmp fast une float %727, 1.000000e+00
  br i1 %776, label %777, label %784, !dx.controlflow.hints !92

; <label>:777                                     ; preds = %773
  %778 = call float @dx.op.unary.f32(i32 23, float %727)  ; Log(value)
  %779 = fmul fast float %778, 0x3FE62E4300000000
  %780 = fmul fast float %724, %779
  %781 = fsub fast float -0.000000e+00, %780
  %782 = fsub fast float 1.000000e+00, %727
  %783 = fdiv fast float %781, %782
  br label %784

; <label>:784                                     ; preds = %777, %773
  %785 = phi float [ %783, %777 ], [ %724, %773 ]
  %786 = phi float [ %779, %777 ], [ 0.000000e+00, %773 ]
  %787 = fmul fast float %750, %734
  %788 = fmul fast float %751, %734
  %789 = fmul fast float %752, %734
  %790 = fmul fast float %753, %734
  %791 = fmul fast float %763, %732
  %792 = fmul fast float %774, %732
  %793 = fmul fast float %785, %732
  %794 = fmul fast float %764, %732
  %795 = fmul fast float %775, %732
  %796 = fmul fast float %786, %732
  %797 = fadd fast float %791, %787
  %798 = fadd fast float %792, %788
  %799 = fadd fast float %793, %789
  %800 = fadd fast float %794, %790
  %801 = fadd fast float %795, %790
  %802 = fadd fast float %796, %790
  %803 = fcmp fast une float %800, 0.000000e+00
  br i1 %803, label %804, label %811, !dx.controlflow.hints !93

; <label>:804                                     ; preds = %784
  %805 = fmul fast float %800, 0x3FF7154760000000
  %806 = call float @dx.op.unary.f32(i32 21, float %805)  ; Exp(value)
  %807 = fsub fast float 1.000000e+00, %806
  %808 = fmul fast float %797, %807
  %809 = fsub fast float -0.000000e+00, %808
  %810 = fdiv fast float %809, %800
  br label %811

; <label>:811                                     ; preds = %804, %784
  %812 = phi float [ %806, %804 ], [ 1.000000e+00, %784 ]
  %813 = phi float [ %810, %804 ], [ %797, %784 ]
  %814 = fcmp fast une float %801, 0.000000e+00
  br i1 %814, label %815, label %822, !dx.controlflow.hints !93

; <label>:815                                     ; preds = %811
  %816 = fmul fast float %801, 0x3FF7154760000000
  %817 = call float @dx.op.unary.f32(i32 21, float %816)  ; Exp(value)
  %818 = fsub fast float 1.000000e+00, %817
  %819 = fmul fast float %798, %818
  %820 = fsub fast float -0.000000e+00, %819
  %821 = fdiv fast float %820, %801
  br label %822

; <label>:822                                     ; preds = %815, %811
  %823 = phi float [ %817, %815 ], [ 1.000000e+00, %811 ]
  %824 = phi float [ %821, %815 ], [ %798, %811 ]
  %825 = fcmp fast une float %802, 0.000000e+00
  br i1 %825, label %826, label %833, !dx.controlflow.hints !93

; <label>:826                                     ; preds = %822
  %827 = fmul fast float %802, 0x3FF7154760000000
  %828 = call float @dx.op.unary.f32(i32 21, float %827)  ; Exp(value)
  %829 = fsub fast float 1.000000e+00, %828
  %830 = fmul fast float %799, %829
  %831 = fsub fast float -0.000000e+00, %830
  %832 = fdiv fast float %831, %802
  br label %833

; <label>:833                                     ; preds = %826, %822
  %834 = phi float [ %828, %826 ], [ 1.000000e+00, %822 ]
  %835 = phi float [ %832, %826 ], [ %799, %822 ]
  %836 = fcmp fast ogt float %732, %734
  br i1 %836, label %837, label %857, !dx.controlflow.hints !94

; <label>:837                                     ; preds = %833
  %838 = fsub fast float 1.000000e+00, %734
  %839 = fmul fast float %750, %838
  %840 = fmul fast float %751, %838
  %841 = fmul fast float %752, %838
  %842 = fmul fast float %753, %838
  %843 = fcmp fast une float %842, 0.000000e+00
  br i1 %843, label %844, label %895, !dx.controlflow.hints !95

; <label>:844                                     ; preds = %837
  %845 = fmul fast float %842, 0x3FF7154760000000
  %846 = call float @dx.op.unary.f32(i32 21, float %845)  ; Exp(value)
  %847 = fsub fast float 1.000000e+00, %846
  %848 = fmul fast float %839, %847
  %849 = fsub fast float -0.000000e+00, %848
  %850 = fmul fast float %840, %847
  %851 = fsub fast float -0.000000e+00, %850
  %852 = fmul fast float %841, %847
  %853 = fsub fast float -0.000000e+00, %852
  %854 = fdiv fast float %849, %842
  %855 = fdiv fast float %851, %842
  %856 = fdiv fast float %853, %842
  br label %895

; <label>:857                                     ; preds = %833
  %858 = fsub fast float 1.000000e+00, %732
  %859 = fmul fast float %763, %858
  %860 = fmul fast float %774, %858
  %861 = fmul fast float %785, %858
  %862 = fmul fast float %764, %858
  %863 = fmul fast float %775, %858
  %864 = fmul fast float %786, %858
  %865 = fcmp fast une float %862, 0.000000e+00
  br i1 %865, label %866, label %873, !dx.controlflow.hints !93

; <label>:866                                     ; preds = %857
  %867 = fmul fast float %862, 0x3FF7154760000000
  %868 = call float @dx.op.unary.f32(i32 21, float %867)  ; Exp(value)
  %869 = fsub fast float 1.000000e+00, %868
  %870 = fmul fast float %859, %869
  %871 = fsub fast float -0.000000e+00, %870
  %872 = fdiv fast float %871, %862
  br label %873

; <label>:873                                     ; preds = %866, %857
  %874 = phi float [ %872, %866 ], [ %859, %857 ]
  %875 = phi float [ %868, %866 ], [ 1.000000e+00, %857 ]
  %876 = fcmp fast une float %863, 0.000000e+00
  br i1 %876, label %877, label %884, !dx.controlflow.hints !93

; <label>:877                                     ; preds = %873
  %878 = fmul fast float %863, 0x3FF7154760000000
  %879 = call float @dx.op.unary.f32(i32 21, float %878)  ; Exp(value)
  %880 = fsub fast float 1.000000e+00, %879
  %881 = fmul fast float %860, %880
  %882 = fsub fast float -0.000000e+00, %881
  %883 = fdiv fast float %882, %863
  br label %884

; <label>:884                                     ; preds = %877, %873
  %885 = phi float [ %883, %877 ], [ %860, %873 ]
  %886 = phi float [ %879, %877 ], [ 1.000000e+00, %873 ]
  %887 = fcmp fast une float %864, 0.000000e+00
  br i1 %887, label %888, label %895, !dx.controlflow.hints !93

; <label>:888                                     ; preds = %884
  %889 = fmul fast float %864, 0x3FF7154760000000
  %890 = call float @dx.op.unary.f32(i32 21, float %889)  ; Exp(value)
  %891 = fsub fast float 1.000000e+00, %890
  %892 = fmul fast float %861, %891
  %893 = fsub fast float -0.000000e+00, %892
  %894 = fdiv fast float %893, %864
  br label %895

; <label>:895                                     ; preds = %888, %884, %844, %837
  %896 = phi float [ %894, %888 ], [ %856, %844 ], [ %841, %837 ], [ %861, %884 ]
  %897 = phi float [ %885, %888 ], [ %855, %844 ], [ %840, %837 ], [ %885, %884 ]
  %898 = phi float [ %874, %888 ], [ %854, %844 ], [ %839, %837 ], [ %874, %884 ]
  %899 = phi float [ %890, %888 ], [ %846, %844 ], [ 1.000000e+00, %837 ], [ 1.000000e+00, %884 ]
  %900 = phi float [ %886, %888 ], [ %846, %844 ], [ 1.000000e+00, %837 ], [ %886, %884 ]
  %901 = phi float [ %875, %888 ], [ %846, %844 ], [ 1.000000e+00, %837 ], [ %875, %884 ]
  %902 = fmul fast float %901, %813
  %903 = fmul fast float %900, %824
  %904 = fmul fast float %899, %835
  %905 = fadd fast float %902, %898
  %906 = fadd fast float %903, %897
  %907 = fadd fast float %904, %896
  %908 = fmul fast float %901, %812
  %909 = fmul fast float %900, %823
  %910 = fmul fast float %899, %834
  br label %911

; <label>:911                                     ; preds = %895, %706
  %912 = phi float [ %910, %895 ], [ %712, %706 ]
  %913 = phi float [ %909, %895 ], [ %711, %706 ]
  %914 = phi float [ %908, %895 ], [ %710, %706 ]
  %915 = phi float [ %907, %895 ], [ %709, %706 ]
  %916 = phi float [ %906, %895 ], [ %708, %706 ]
  %917 = phi float [ %905, %895 ], [ %707, %706 ]
  %918 = fmul fast float %48, %77
  %919 = fmul fast float %49, %78
  %920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %918, float %919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %926 = fmul fast float %925, %921
  %927 = fmul fast float %925, %922
  %928 = fmul fast float %925, %923
  %929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %918, float %919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = fmul fast float %930, %914
  %932 = fmul fast float %930, %913
  %933 = fmul fast float %930, %912
  %934 = fmul fast float %930, %917
  %935 = fmul fast float %930, %916
  %936 = fmul fast float %930, %915
  %937 = fadd fast float %934, %926
  %938 = fadd fast float %935, %927
  %939 = fadd fast float %936, %928
  br label %940

; <label>:940                                     ; preds = %911, %0
  %941 = phi float [ %937, %911 ], [ 0.000000e+00, %0 ]
  %942 = phi float [ %938, %911 ], [ 0.000000e+00, %0 ]
  %943 = phi float [ %939, %911 ], [ 0.000000e+00, %0 ]
  %944 = phi float [ %931, %911 ], [ 1.000000e+00, %0 ]
  %945 = phi float [ %932, %911 ], [ 1.000000e+00, %0 ]
  %946 = phi float [ %933, %911 ], [ 1.000000e+00, %0 ]
  %947 = phi float [ %82, %911 ], [ %62, %0 ]
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 3
  %951 = fmul fast float %949, %77
  %952 = fmul fast float %950, %78
  %953 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %954 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  %955 = select i1 %74, i32 2, i32 0
  %956 = or i32 %955, 1
  %957 = uitofp i32 %956 to float
  %958 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %953, float %954, float %957, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = extractvalue %dx.types.ResRet.f32 %958, 1
  %961 = extractvalue %dx.types.ResRet.f32 %958, 2
  %962 = extractvalue %dx.types.ResRet.f32 %958, 3
  %963 = add nuw nsw i32 %955, 2
  %964 = uitofp i32 %963 to float
  %965 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %20, float %953, float %954, float %964, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = extractvalue %dx.types.ResRet.f32 %965, 1
  %968 = extractvalue %dx.types.ResRet.f32 %965, 2
  %969 = extractvalue %dx.types.ResRet.f32 %965, 3
  %970 = call float @dx.op.binary.f32(i32 35, float %960, float %961)  ; FMax(a,b)
  %971 = call float @dx.op.binary.f32(i32 35, float %959, float %970)  ; FMax(a,b)
  %972 = call float @dx.op.binary.f32(i32 35, float %971, float %962)  ; FMax(a,b)
  %973 = call float @dx.op.binary.f32(i32 36, float %967, float %968)  ; FMin(a,b)
  %974 = call float @dx.op.binary.f32(i32 36, float %966, float %973)  ; FMin(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %974, float %969)  ; FMin(a,b)
  %976 = fmul fast float %972, 2.550000e+02
  %977 = fadd fast float %976, 0x3F70101020000000
  %978 = fptoui float %977 to i32
  %979 = fmul fast float %975, 2.550000e+02
  %980 = fadd fast float %979, 0x3F70101020000000
  %981 = fptoui float %980 to i32
  %982 = icmp ult i32 %978, %981
  br i1 %982, label %983, label %1151, !dx.controlflow.hints !96

; <label>:983                                     ; preds = %940
  %984 = fadd fast float %947, -4.000000e+00
  %985 = call float @dx.op.binary.f32(i32 35, float %984, float 0.000000e+00)  ; FMax(a,b)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = fadd fast float %987, %985
  %989 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %990 = fmul fast float %988, %989
  %991 = call float @dx.op.unary.f32(i32 23, float %990)  ; Log(value)
  %992 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %993 = fmul fast float %992, %991
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %996 = fmul fast float %993, %995
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = select i1 %76, float 1.000000e+00, float %997
  %999 = uitofp i32 %978 to float
  %1000 = uitofp i32 %981 to float
  %1001 = fadd fast float %999, 5.000000e-01
  %1002 = fadd fast float %1000, 5.000000e-01
  %1003 = fmul fast float %995, %1001
  %1004 = fmul fast float %995, %1002
  %1005 = fadd fast float %1003, 0x3F0FFB4800000000
  %1006 = fadd fast float %1004, 0xBF0FFB4800000000
  %1007 = call float @dx.op.binary.f32(i32 35, float %998, float %1005)  ; FMax(a,b)
  %1008 = call float @dx.op.binary.f32(i32 36, float %1007, float %1006)  ; FMin(a,b)
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1011 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1012 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1013 = select i1 %74, float %1012, float 0.000000e+00
  %1014 = fmul fast float %1010, %1008
  %1015 = fadd fast float %1013, %1014
  %1016 = fadd fast float %1013, %1011
  %1017 = fsub fast float %1010, %1011
  %1018 = fadd fast float %1017, %1013
  %1019 = call float @dx.op.binary.f32(i32 35, float %1015, float %1016)  ; FMax(a,b)
  %1020 = call float @dx.op.binary.f32(i32 36, float %1019, float %1018)  ; FMin(a,b)
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %953, float %954, float %1020, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.i32 %1025, 0
  %1027 = extractvalue %dx.types.CBufRet.i32 %1025, 1
  %1028 = uitofp i32 %1026 to float
  %1029 = uitofp i32 %1027 to float
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1033 = fmul fast float %1028, %953
  %1034 = fmul fast float %1029, %954
  %1035 = fadd fast float %1033, -5.000000e-01
  %1036 = fadd fast float %1034, -5.000000e-01
  %1037 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1038 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1039 = fmul fast float %1037, %1037
  %1040 = fmul fast float %1039, %1037
  %1041 = fsub fast float 3.000000e+00, %1037
  %1042 = fmul fast float %1039, %1041
  %1043 = fmul fast float %1037, 3.000000e+00
  %1044 = fmul fast float %1040, 3.000000e+00
  %1045 = fmul fast float %1039, 6.000000e+00
  %1046 = fsub fast float %1044, %1045
  %1047 = fadd fast float %1046, 4.000000e+00
  %1048 = fmul fast float %1047, 0x3FC5555560000000
  %1049 = fmul fast float %1040, -3.000000e+00
  %1050 = fadd fast float %1039, %1037
  %1051 = fmul fast float %1050, 3.000000e+00
  %1052 = fadd fast float %1049, 1.000000e+00
  %1053 = fadd fast float %1052, %1051
  %1054 = fmul fast float %1040, 0x3FC5555560000000
  %1055 = fmul fast float %1038, %1038
  %1056 = fmul fast float %1055, %1038
  %1057 = fsub fast float 3.000000e+00, %1038
  %1058 = fmul fast float %1055, %1057
  %1059 = fmul fast float %1038, 3.000000e+00
  %1060 = fmul fast float %1056, 3.000000e+00
  %1061 = fmul fast float %1055, 6.000000e+00
  %1062 = fsub fast float %1060, %1061
  %1063 = fadd fast float %1062, 4.000000e+00
  %1064 = fmul fast float %1063, 0x3FC5555560000000
  %1065 = fmul fast float %1056, -3.000000e+00
  %1066 = fadd fast float %1055, %1038
  %1067 = fmul fast float %1066, 3.000000e+00
  %1068 = fadd fast float %1065, 1.000000e+00
  %1069 = fadd fast float %1068, %1067
  %1070 = fmul fast float %1056, 0x3FC5555560000000
  %1071 = fadd fast float %1037, 1.000000e+00
  %1072 = fsub fast float 1.000000e+00, %1043
  %1073 = fadd fast float %1072, %1042
  %1074 = fadd fast float %1073, %1047
  %1075 = fmul fast float %1074, 0x3FC5555560000000
  %1076 = fdiv fast float %1048, %1075
  %1077 = fsub fast float %1071, %1076
  %1078 = fsub fast float 1.000000e+00, %1037
  %1079 = fadd fast float %1053, %1040
  %1080 = fmul fast float %1079, 0x3FC5555560000000
  %1081 = fdiv fast float %1054, %1080
  %1082 = fadd fast float %1078, %1081
  %1083 = fadd fast float %1038, 1.000000e+00
  %1084 = fsub fast float 1.000000e+00, %1059
  %1085 = fadd fast float %1084, %1058
  %1086 = fadd fast float %1085, %1063
  %1087 = fmul fast float %1086, 0x3FC5555560000000
  %1088 = fdiv fast float %1064, %1087
  %1089 = fsub fast float %1083, %1088
  %1090 = fsub fast float 1.000000e+00, %1038
  %1091 = fadd fast float %1069, %1056
  %1092 = fmul fast float %1091, 0x3FC5555560000000
  %1093 = fdiv fast float %1070, %1092
  %1094 = fadd fast float %1093, %1090
  %1095 = fmul fast float %1077, %1031
  %1096 = fsub fast float %953, %1095
  %1097 = fmul fast float %1082, %1031
  %1098 = fadd fast float %1097, %953
  %1099 = fmul fast float %1094, %1032
  %1100 = fadd fast float %1099, %954
  %1101 = fmul fast float %1089, %1032
  %1102 = fsub fast float %954, %1101
  %1103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1096, float %1102, float %1020, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.ResRet.f32 %1103, 2
  %1107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1098, float %1102, float %1020, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1096, float %1100, float %1020, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1098, float %1100, float %1020, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = fsub fast float %1112, %1104
  %1120 = fsub fast float %1113, %1105
  %1121 = fsub fast float %1114, %1106
  %1122 = fmul fast float %1119, %1092
  %1123 = fmul fast float %1120, %1092
  %1124 = fmul fast float %1121, %1092
  %1125 = fadd fast float %1122, %1104
  %1126 = fadd fast float %1123, %1105
  %1127 = fadd fast float %1124, %1106
  %1128 = fsub fast float %1116, %1108
  %1129 = fsub fast float %1117, %1109
  %1130 = fsub fast float %1118, %1110
  %1131 = fmul fast float %1128, %1092
  %1132 = fmul fast float %1129, %1092
  %1133 = fmul fast float %1130, %1092
  %1134 = fsub fast float %1108, %1125
  %1135 = fadd fast float %1134, %1131
  %1136 = fsub fast float %1109, %1126
  %1137 = fadd fast float %1136, %1132
  %1138 = fsub fast float %1110, %1127
  %1139 = fadd fast float %1138, %1133
  %1140 = fmul fast float %1135, %1080
  %1141 = fmul fast float %1137, %1080
  %1142 = fmul fast float %1139, %1080
  %1143 = fadd fast float %1140, %1125
  %1144 = fadd fast float %1141, %1126
  %1145 = fadd fast float %1142, %1127
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 1
  %1148 = fmul fast float %1143, %1147
  %1149 = fmul fast float %1144, %1147
  %1150 = fmul fast float %1145, %1147
  br label %1151

; <label>:1151                                    ; preds = %983, %940
  %1152 = phi float [ %1022, %983 ], [ 1.000000e+00, %940 ]
  %1153 = phi float [ %1023, %983 ], [ 1.000000e+00, %940 ]
  %1154 = phi float [ %1024, %983 ], [ 1.000000e+00, %940 ]
  %1155 = phi float [ %1148, %983 ], [ 0.000000e+00, %940 ]
  %1156 = phi float [ %1149, %983 ], [ 0.000000e+00, %940 ]
  %1157 = phi float [ %1150, %983 ], [ 0.000000e+00, %940 ]
  %1158 = fmul fast float %1152, %944
  %1159 = fmul fast float %1153, %945
  %1160 = fmul fast float %1154, %946
  %1161 = fmul fast float %1152, %941
  %1162 = fmul fast float %1153, %942
  %1163 = fmul fast float %1154, %943
  %1164 = fadd fast float %1155, %1161
  %1165 = fadd fast float %1156, %1162
  %1166 = fadd fast float %1157, %1163
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1169 = fmul fast float %1168, 0x3FE3C6EF40000000
  %1170 = frem fast float %45, 2.560000e+02
  %1171 = frem fast float %46, 2.560000e+02
  %1172 = fptoui float %1170 to i32
  %1173 = fptoui float %1171 to i32
  %1174 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1172, i32 %1173, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = fadd fast float %1175, %1169
  %1177 = call float @dx.op.unary.f32(i32 22, float %1176)  ; Frc(value)
  %1178 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %43, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.i32 %1182, 3
  %1184 = and i32 %1183, 3
  %1185 = icmp ne i32 %1184, 0
  %1186 = and i32 %1183, 4
  %1187 = icmp ne i32 %1186, 0
  %1188 = and i1 %1185, %1187
  br i1 %1188, label %1189, label %1198, !dx.controlflow.hints !97

; <label>:1189                                    ; preds = %1151
  %1190 = fmul fast float %49, %78
  %1191 = fmul fast float %48, %77
  %1192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1191, float %1190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = fsub fast float 1.000000e+00, %1193
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = fcmp fast olt float %1194, %1196
  br label %1201

; <label>:1198                                    ; preds = %1151
  %1199 = icmp eq i32 %1186, 0
  %1200 = and i1 %1185, %1199
  br label %1201

; <label>:1201                                    ; preds = %1198, %1189
  %1202 = phi i1 [ %1197, %1189 ], [ %1200, %1198 ]
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 0
  br i1 %1202, label %1205, label %1224, !dx.controlflow.hints !98

; <label>:1205                                    ; preds = %1201
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 3
  %1208 = call float @dx.op.dot3.f32(i32 55, float %1158, float %1159, float %1160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1209 = fmul fast float %1208, %1179
  %1210 = call float @dx.op.dot3.f32(i32 55, float %1164, float %1165, float %1166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1211 = fmul fast float %1204, %1210
  %1212 = fadd fast float %1211, %1209
  br i1 %1188, label %1213, label %1219, !dx.controlflow.hints !99

; <label>:1213                                    ; preds = %1205
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 1
  %1216 = fadd fast float %1158, -1.000000e+00
  %1217 = fmul fast float %1215, %1216
  %1218 = fadd fast float %1217, 1.000000e+00
  br label %1219

; <label>:1219                                    ; preds = %1213, %1205
  %1220 = phi float [ %1218, %1213 ], [ %1158, %1205 ]
  %1221 = fsub fast float %1180, %1207
  %1222 = fmul fast float %1220, %1221
  %1223 = fadd fast float %1222, %1207
  br label %1234

; <label>:1224                                    ; preds = %1201
  %1225 = fmul fast float %1179, %1158
  %1226 = fmul fast float %1180, %1159
  %1227 = fmul fast float %1181, %1160
  %1228 = fmul fast float %1204, %1164
  %1229 = fmul fast float %1204, %1165
  %1230 = fmul fast float %1204, %1166
  %1231 = fadd fast float %1228, %1225
  %1232 = fadd fast float %1229, %1226
  %1233 = fadd fast float %1230, %1227
  br label %1234

; <label>:1234                                    ; preds = %1224, %1219
  %1235 = phi float [ %1212, %1219 ], [ %1231, %1224 ]
  %1236 = phi float [ %1223, %1219 ], [ %1232, %1224 ]
  %1237 = phi float [ %1181, %1219 ], [ %1233, %1224 ]
  %1238 = lshr i32 %41, 2
  %1239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.i32 %1239, 1
  %1241 = shl i32 %1240, 1
  %1242 = lshr i32 %42, 4
  %1243 = and i32 %1242, 134217727
  %1244 = extractvalue %dx.types.CBufRet.i32 %1239, 0
  %1245 = mul i32 %1244, %1243
  %1246 = lshr i32 %41, 5
  %1247 = and i32 %1246, 67108863
  %1248 = add i32 %1241, %1247
  %1249 = add i32 %1248, %1245
  %1250 = shl i32 %1249, 2
  %1251 = and i32 %44, 24
  %1252 = and i32 %1238, 7
  %1253 = or i32 %1251, %1252
  %1254 = shl i32 1, %1253
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = and i32 %1256, %1254
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1274, label %1259, !dx.controlflow.hints !100

; <label>:1259                                    ; preds = %1234
  %1260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %43, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = fcmp fast ogt float %1261, 0.000000e+00
  br i1 %1262, label %1263, label %1274, !dx.controlflow.hints !101

; <label>:1263                                    ; preds = %1259
  %1264 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %43, i32 %44, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.f32 %1264, 2
  %1268 = extractvalue %dx.types.ResRet.f32 %1264, 3
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1271 = fmul fast float %1270, %1265
  %1272 = fmul fast float %1270, %1266
  %1273 = fmul fast float %1270, %1267
  br label %1274

; <label>:1274                                    ; preds = %1263, %1259, %1234
  %1275 = phi float [ %1271, %1263 ], [ 0.000000e+00, %1259 ], [ 0.000000e+00, %1234 ]
  %1276 = phi float [ %1272, %1263 ], [ 0.000000e+00, %1259 ], [ 0.000000e+00, %1234 ]
  %1277 = phi float [ %1273, %1263 ], [ 0.000000e+00, %1259 ], [ 0.000000e+00, %1234 ]
  %1278 = phi float [ %1268, %1263 ], [ 0.000000e+00, %1259 ], [ 0.000000e+00, %1234 ]
  %1279 = fsub fast float 1.000000e+00, %1278
  %1280 = fmul fast float %1279, %1235
  %1281 = fmul fast float %1279, %1236
  %1282 = fmul fast float %1279, %1237
  %1283 = fadd fast float %1280, %1275
  %1284 = fadd fast float %1281, %1276
  %1285 = fadd fast float %1282, %1277
  %1286 = fadd fast float %1177, 0x3FE3C6EF40000000
  %1287 = call float @dx.op.unary.f32(i32 22, float %1286)  ; Frc(value)
  %1288 = call float @dx.op.unary.f32(i32 23, float %1283)  ; Log(value)
  %1289 = fadd fast float %1288, -7.000000e+00
  %1290 = call float @dx.op.unary.f32(i32 21, float %1289)  ; Exp(value)
  %1291 = fmul fast float %1287, 2.000000e+00
  %1292 = fadd fast float %1291, -1.000000e+00
  %1293 = fmul fast float %1290, %1292
  %1294 = fcmp fast ogt float %1283, 0.000000e+00
  %1295 = select i1 %1294, float %1293, float 0.000000e+00
  %1296 = fadd fast float %1295, %1283
  %1297 = fadd fast float %1177, 0x3FF3C6EF40000000
  %1298 = call float @dx.op.unary.f32(i32 22, float %1297)  ; Frc(value)
  %1299 = call float @dx.op.unary.f32(i32 23, float %1284)  ; Log(value)
  %1300 = fadd fast float %1299, -7.000000e+00
  %1301 = call float @dx.op.unary.f32(i32 21, float %1300)  ; Exp(value)
  %1302 = fmul fast float %1298, 2.000000e+00
  %1303 = fadd fast float %1302, -1.000000e+00
  %1304 = fmul fast float %1301, %1303
  %1305 = fcmp fast ogt float %1284, 0.000000e+00
  %1306 = select i1 %1305, float %1304, float 0.000000e+00
  %1307 = fadd fast float %1306, %1284
  %1308 = fadd fast float %1177, 0x3FFDAA66E0000000
  %1309 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1310 = call float @dx.op.unary.f32(i32 23, float %1285)  ; Log(value)
  %1311 = fadd fast float %1310, -6.000000e+00
  %1312 = call float @dx.op.unary.f32(i32 21, float %1311)  ; Exp(value)
  %1313 = fmul fast float %1309, 2.000000e+00
  %1314 = fadd fast float %1313, -1.000000e+00
  %1315 = fmul fast float %1312, %1314
  %1316 = fcmp fast ogt float %1285, 0.000000e+00
  %1317 = select i1 %1316, float %1315, float 0.000000e+00
  %1318 = fadd fast float %1317, %1285
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %43, i32 %44, i32 undef, float %1296, float %1307, float %1318, float %1296, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.i32 %1319, 0
  %1321 = and i32 %1320, 1
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1326, label %1323, !dx.controlflow.hints !102

; <label>:1323                                    ; preds = %1274
  %1324 = and i32 %41, 2147483647
  %1325 = and i32 %42, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1324, i32 %1325, i32 undef, float %1179, float %1180, float %1181, float %1179, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1326

; <label>:1326                                    ; preds = %1323, %1274
  br label %1327

; <label>:1327                                    ; preds = %1350, %1326
  %1328 = phi float [ %1351, %1350 ], [ %1283, %1326 ]
  %1329 = phi float [ %1352, %1350 ], [ %1284, %1326 ]
  %1330 = phi float [ %1353, %1350 ], [ %1285, %1326 ]
  %1331 = phi float [ %1354, %1350 ], [ 1.000000e+00, %1326 ]
  %1332 = phi i32 [ %1337, %1350 ], [ 14, %1326 ]
  %1333 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1332)  ; FirstbitLo(value)
  %1334 = and i32 %1333, 31
  %1335 = shl i32 1, %1334
  %1336 = xor i32 %1335, -1
  %1337 = and i32 %1332, %1336
  %1338 = and i32 %1333, 1
  %1339 = lshr i32 %1333, 1
  %1340 = or i32 %1338, %43
  %1341 = add i32 %1339, %44
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  %1344 = fptoui float %1343 to i32
  %1345 = icmp uge i32 %1340, %1344
  %1346 = extractvalue %dx.types.CBufRet.f32 %1342, 1
  %1347 = fptoui float %1346 to i32
  %1348 = icmp uge i32 %1341, %1347
  %1349 = or i1 %1345, %1348
  br i1 %1349, label %1350, label %1356, !dx.controlflow.hints !103

; <label>:1350                                    ; preds = %1521, %1327
  %1351 = phi float [ %1328, %1327 ], [ %1522, %1521 ]
  %1352 = phi float [ %1329, %1327 ], [ %1523, %1521 ]
  %1353 = phi float [ %1330, %1327 ], [ %1524, %1521 ]
  %1354 = phi float [ %1331, %1327 ], [ %1525, %1521 ]
  %1355 = icmp eq i32 %1337, 0
  br i1 %1355, label %1526, label %1327

; <label>:1356                                    ; preds = %1327
  %1357 = uitofp i32 %1340 to float
  %1358 = uitofp i32 %1341 to float
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 2
  %1361 = fmul fast float %1360, 0x3FE3C6EF40000000
  %1362 = frem fast float %1357, 2.560000e+02
  %1363 = frem fast float %1358, 2.560000e+02
  %1364 = fptoui float %1362 to i32
  %1365 = fptoui float %1363 to i32
  %1366 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1364, i32 %1365, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = fadd fast float %1367, %1361
  %1369 = call float @dx.op.unary.f32(i32 22, float %1368)  ; Frc(value)
  %1370 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1340, i32 %1341, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.ResRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.ResRet.f32 %1370, 2
  %1374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.i32 %1374, 3
  %1376 = and i32 %1375, 3
  %1377 = icmp ne i32 %1376, 0
  %1378 = and i32 %1375, 4
  %1379 = icmp ne i32 %1378, 0
  %1380 = and i1 %1377, %1379
  br i1 %1380, label %1381, label %1394, !dx.controlflow.hints !97

; <label>:1381                                    ; preds = %1356
  %1382 = fadd fast float %1358, 5.000000e-01
  %1383 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1384 = fmul fast float %1383, %1382
  %1385 = fadd fast float %1357, 5.000000e-01
  %1386 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1387 = fmul fast float %1386, %1385
  %1388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %1387, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = fsub fast float 1.000000e+00, %1389
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1393 = fcmp fast olt float %1390, %1392
  br label %1397

; <label>:1394                                    ; preds = %1356
  %1395 = icmp eq i32 %1378, 0
  %1396 = and i1 %1377, %1395
  br label %1397

; <label>:1397                                    ; preds = %1394, %1381
  %1398 = phi i1 [ %1393, %1381 ], [ %1396, %1394 ]
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 0
  br i1 %1398, label %1401, label %1420, !dx.controlflow.hints !98

; <label>:1401                                    ; preds = %1397
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1404 = call float @dx.op.dot3.f32(i32 55, float %1158, float %1159, float %1160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1405 = fmul fast float %1404, %1371
  %1406 = call float @dx.op.dot3.f32(i32 55, float %1164, float %1165, float %1166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1407 = fmul fast float %1400, %1406
  %1408 = fadd fast float %1407, %1405
  br i1 %1380, label %1409, label %1415, !dx.controlflow.hints !99

; <label>:1409                                    ; preds = %1401
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1412 = fadd fast float %1158, -1.000000e+00
  %1413 = fmul fast float %1411, %1412
  %1414 = fadd fast float %1413, 1.000000e+00
  br label %1415

; <label>:1415                                    ; preds = %1409, %1401
  %1416 = phi float [ %1414, %1409 ], [ %1158, %1401 ]
  %1417 = fsub fast float %1372, %1403
  %1418 = fmul fast float %1416, %1417
  %1419 = fadd fast float %1418, %1403
  br label %1430

; <label>:1420                                    ; preds = %1397
  %1421 = fmul fast float %1371, %1158
  %1422 = fmul fast float %1372, %1159
  %1423 = fmul fast float %1373, %1160
  %1424 = fmul fast float %1400, %1164
  %1425 = fmul fast float %1400, %1165
  %1426 = fmul fast float %1400, %1166
  %1427 = fadd fast float %1424, %1421
  %1428 = fadd fast float %1425, %1422
  %1429 = fadd fast float %1426, %1423
  br label %1430

; <label>:1430                                    ; preds = %1420, %1415
  %1431 = phi float [ %1408, %1415 ], [ %1427, %1420 ]
  %1432 = phi float [ %1419, %1415 ], [ %1428, %1420 ]
  %1433 = phi float [ %1373, %1415 ], [ %1429, %1420 ]
  %1434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.i32 %1434, 1
  %1436 = shl i32 %1435, 1
  %1437 = lshr i32 %1341, 5
  %1438 = extractvalue %dx.types.CBufRet.i32 %1434, 0
  %1439 = mul i32 %1438, %1437
  %1440 = add i32 %1436, %1247
  %1441 = add i32 %1440, %1439
  %1442 = shl i32 %1441, 2
  %1443 = and i32 %1341, 24
  %1444 = or i32 %1443, %1252
  %1445 = shl i32 1, %1444
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, %1445
  %1449 = icmp eq i32 %1448, 0
  br i1 %1449, label %1465, label %1450, !dx.controlflow.hints !100

; <label>:1450                                    ; preds = %1430
  %1451 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %1340, i32 %1341, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1452 = extractvalue %dx.types.ResRet.f32 %1451, 0
  %1453 = fcmp fast ogt float %1452, 0.000000e+00
  br i1 %1453, label %1454, label %1465, !dx.controlflow.hints !101

; <label>:1454                                    ; preds = %1450
  %1455 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1340, i32 %1341, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1456 = extractvalue %dx.types.ResRet.f32 %1455, 0
  %1457 = extractvalue %dx.types.ResRet.f32 %1455, 1
  %1458 = extractvalue %dx.types.ResRet.f32 %1455, 2
  %1459 = extractvalue %dx.types.ResRet.f32 %1455, 3
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 2
  %1462 = fmul fast float %1461, %1456
  %1463 = fmul fast float %1461, %1457
  %1464 = fmul fast float %1461, %1458
  br label %1465

; <label>:1465                                    ; preds = %1454, %1450, %1430
  %1466 = phi float [ %1462, %1454 ], [ 0.000000e+00, %1450 ], [ 0.000000e+00, %1430 ]
  %1467 = phi float [ %1463, %1454 ], [ 0.000000e+00, %1450 ], [ 0.000000e+00, %1430 ]
  %1468 = phi float [ %1464, %1454 ], [ 0.000000e+00, %1450 ], [ 0.000000e+00, %1430 ]
  %1469 = phi float [ %1459, %1454 ], [ 0.000000e+00, %1450 ], [ 0.000000e+00, %1430 ]
  %1470 = fsub fast float 1.000000e+00, %1469
  %1471 = fmul fast float %1470, %1431
  %1472 = fmul fast float %1470, %1432
  %1473 = fmul fast float %1470, %1433
  %1474 = fadd fast float %1471, %1466
  %1475 = fadd fast float %1472, %1467
  %1476 = fadd fast float %1473, %1468
  %1477 = fadd fast float %1369, 0x3FE3C6EF40000000
  %1478 = call float @dx.op.unary.f32(i32 22, float %1477)  ; Frc(value)
  %1479 = call float @dx.op.unary.f32(i32 23, float %1474)  ; Log(value)
  %1480 = fadd fast float %1479, -7.000000e+00
  %1481 = call float @dx.op.unary.f32(i32 21, float %1480)  ; Exp(value)
  %1482 = fmul fast float %1478, 2.000000e+00
  %1483 = fadd fast float %1482, -1.000000e+00
  %1484 = fmul fast float %1481, %1483
  %1485 = fcmp fast ogt float %1474, 0.000000e+00
  %1486 = select i1 %1485, float %1484, float 0.000000e+00
  %1487 = fadd fast float %1486, %1474
  %1488 = fadd fast float %1369, 0x3FF3C6EF40000000
  %1489 = call float @dx.op.unary.f32(i32 22, float %1488)  ; Frc(value)
  %1490 = call float @dx.op.unary.f32(i32 23, float %1475)  ; Log(value)
  %1491 = fadd fast float %1490, -7.000000e+00
  %1492 = call float @dx.op.unary.f32(i32 21, float %1491)  ; Exp(value)
  %1493 = fmul fast float %1489, 2.000000e+00
  %1494 = fadd fast float %1493, -1.000000e+00
  %1495 = fmul fast float %1492, %1494
  %1496 = fcmp fast ogt float %1475, 0.000000e+00
  %1497 = select i1 %1496, float %1495, float 0.000000e+00
  %1498 = fadd fast float %1497, %1475
  %1499 = fadd fast float %1369, 0x3FFDAA66E0000000
  %1500 = call float @dx.op.unary.f32(i32 22, float %1499)  ; Frc(value)
  %1501 = call float @dx.op.unary.f32(i32 23, float %1476)  ; Log(value)
  %1502 = fadd fast float %1501, -6.000000e+00
  %1503 = call float @dx.op.unary.f32(i32 21, float %1502)  ; Exp(value)
  %1504 = fmul fast float %1500, 2.000000e+00
  %1505 = fadd fast float %1504, -1.000000e+00
  %1506 = fmul fast float %1503, %1505
  %1507 = fcmp fast ogt float %1476, 0.000000e+00
  %1508 = select i1 %1507, float %1506, float 0.000000e+00
  %1509 = fadd fast float %1508, %1476
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1340, i32 %1341, i32 undef, float %1487, float %1498, float %1509, float %1487, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.i32 %1510, 0
  %1512 = and i32 %1511, 1
  %1513 = icmp ne i32 %1512, 0
  %1514 = or i32 %1341, %1333
  %1515 = and i32 %1514, 1
  %1516 = icmp eq i32 %1515, 0
  %1517 = and i1 %1516, %1513
  br i1 %1517, label %1518, label %1521, !dx.controlflow.hints !102

; <label>:1518                                    ; preds = %1465
  %1519 = and i32 %41, 2147483647
  %1520 = lshr i32 %1341, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1519, i32 %1520, i32 undef, float %1371, float %1372, float %1373, float %1371, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1521

; <label>:1521                                    ; preds = %1518, %1465
  %1522 = fadd fast float %1474, %1328
  %1523 = fadd fast float %1475, %1329
  %1524 = fadd fast float %1476, %1330
  %1525 = fadd fast float %1331, 1.000000e+00
  br label %1350

; <label>:1526                                    ; preds = %1350
  %1527 = fdiv fast float 1.000000e+00, %1354
  %1528 = fmul fast float %1527, %1351
  %1529 = fmul fast float %1527, %1352
  %1530 = fmul fast float %1527, %1353
  %1531 = call float @dx.op.dot3.f32(i32 55, float %1528, float %1529, float %1530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1532 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %1533 = add i32 %1532, -1
  %1534 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %1535 = and i32 %1532, 1
  %1536 = xor i32 %1535, 1
  %1537 = and i32 %1533, %1534
  %1538 = xor i32 %1536, %1537
  %1539 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1531, i32 %1538)  ; WaveReadLaneAt(value,lane)
  %1540 = call float @dx.op.binary.f32(i32 36, float %1531, float %1539)  ; FMin(a,b)
  %1541 = add i32 %1532, 15
  %1542 = and i32 %1541, 8
  %1543 = xor i32 %1537, %1542
  %1544 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1540, i32 %1543)  ; WaveReadLaneAt(value,lane)
  %1545 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1531, i32 %1538)  ; WaveReadLaneAt(value,lane)
  %1546 = call float @dx.op.binary.f32(i32 35, float %1531, float %1545)  ; FMax(a,b)
  %1547 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1546, i32 %1543)  ; WaveReadLaneAt(value,lane)
  %1548 = or i32 %41, %42
  %1549 = and i32 %1548, 1
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1551, label %1593, !dx.controlflow.hints !104

; <label>:1551                                    ; preds = %1526
  %1552 = call float @dx.op.binary.f32(i32 35, float %1546, float %1547)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 36, float %1540, float %1544)  ; FMin(a,b)
  %1554 = lshr i32 %41, 1
  %1555 = lshr i32 %42, 1
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
  %1572 = fmul fast float %1552, 0x3F1A36E2E0000000
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

; <label>:1593                                    ; preds = %1551, %1526
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
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

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
declare float @dx.op.waveReadLaneAt.f32(i32, float, i32) #2

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
!34 = !{i32 0, i64 532752, i32 4, !35}
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

