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
; shader hash: b33d9b5b28b1b26d3002169afcdf9089
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32     2darray      T0            t50     1
;                                   texture     f32     2darray      T1            t21     1
;                                   texture     f32          3d      T2            t24     1
;                                   texture     f32          3d      T3            t25     1
;                                   texture     f32          3d      T4            t26     1
;                                   texture     f32          3d      T5            t27     1
;                                   texture     f32          3d      T6            t28     1
;                                   texture     f32          3d      T7            t29     1
;                                   texture     f32          3d      T8            t30     1
;                                   texture     f32          3d      T9            t31     1
;                                   texture     f32          3d     T10            t32     1
;                                   texture     f32          3d     T11            t37     1
;                                   texture     f32          3d     T12            t38     1
;                                       UAV     f32          3d      U0             u2     1
;                                       UAVunorm_f32          3d      U1             u3     1
;                                       UAVunorm_f32          3d      U2             u4     1
;                                       UAVunorm_f32          3d      U3             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 2> >" = type { <2 x float>, %"class.Texture3D<vector<float, 2> >::mips_type" }
%"class.Texture3D<vector<float, 2> >::mips_type" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture3D<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_effect_light_antialias() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %27 = extractvalue %dx.types.CBufRet.i32 %24, 2
  %28 = icmp uge i32 %21, %25
  %29 = icmp uge i32 %22, %26
  %30 = icmp uge i32 %23, %27
  %31 = or i1 %28, %29
  %32 = or i1 %30, %31
  br i1 %32, label %405, label %33, !dx.controlflow.hints !34

; <label>:33                                      ; preds = %0
  %34 = lshr i32 %21, 2
  %35 = lshr i32 %22, 2
  %36 = lshr i32 %23, 2
  %37 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %34, i32 %35, i32 %36, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = fcmp fast une float %38, 0.000000e+00
  br i1 %39, label %40, label %405, !dx.controlflow.hints !35

; <label>:40                                      ; preds = %33
  %41 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %21, i32 %22, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = fmul fast float %42, 2.550000e+02
  %44 = fadd fast float %43, 0x3F70101020000000
  %45 = fptoui float %44 to i32
  %46 = icmp ugt i32 %23, %45
  br i1 %46, label %405, label %47, !dx.controlflow.hints !36

; <label>:47                                      ; preds = %40
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %21, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = fmul fast float %53, %49
  %55 = fmul fast float %53, %50
  %56 = fmul fast float %53, %51
  %57 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %21, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  %61 = extractvalue %dx.types.ResRet.f32 %57, 3
  %62 = fmul fast float %58, 0x400BB67AE0000000
  %63 = fadd fast float %62, 0xBFFBB67AE0000000
  %64 = fmul fast float %59, 0x400BB67AE0000000
  %65 = fadd fast float %64, 0xBFFBB67AE0000000
  %66 = fmul fast float %60, 0x400BB67AE0000000
  %67 = fadd fast float %66, 0xBFFBB67AE0000000
  %68 = fmul fast float %63, %54
  %69 = fmul fast float %65, %54
  %70 = fmul fast float %67, %54
  %71 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %21, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = extractvalue %dx.types.ResRet.f32 %71, 1
  %74 = extractvalue %dx.types.ResRet.f32 %71, 2
  %75 = extractvalue %dx.types.ResRet.f32 %71, 3
  %76 = fmul fast float %61, 0x400BB67AE0000000
  %77 = fadd fast float %76, 0xBFFBB67AE0000000
  %78 = fmul fast float %72, 0x400BB67AE0000000
  %79 = fadd fast float %78, 0xBFFBB67AE0000000
  %80 = fmul fast float %73, 0x400BB67AE0000000
  %81 = fadd fast float %80, 0xBFFBB67AE0000000
  %82 = fmul fast float %77, %55
  %83 = fmul fast float %79, %55
  %84 = fmul fast float %81, %55
  %85 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %21, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = fmul fast float %74, 0x400BB67AE0000000
  %88 = fadd fast float %87, 0xBFFBB67AE0000000
  %89 = fmul fast float %75, 0x400BB67AE0000000
  %90 = fadd fast float %89, 0xBFFBB67AE0000000
  %91 = fmul fast float %86, 0x400BB67AE0000000
  %92 = fadd fast float %91, 0xBFFBB67AE0000000
  %93 = fmul fast float %88, %56
  %94 = fmul fast float %90, %56
  %95 = fmul fast float %92, %56
  %96 = uitofp i32 %21 to float
  %97 = uitofp i32 %22 to float
  %98 = uitofp i32 %23 to float
  %99 = fadd fast float %96, 5.000000e-01
  %100 = fadd fast float %97, 5.000000e-01
  %101 = fadd fast float %98, 5.000000e-01
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = fmul fast float %107, %101
  %109 = call float @dx.op.unary.f32(i32 21, float %108)  ; Exp(value)
  %110 = fmul fast float %109, %106
  %111 = fsub fast float 4.000000e+00, %106
  %112 = fadd fast float %111, %110
  %113 = fmul fast float %99, 2.000000e+00
  %114 = fmul fast float %113, %103
  %115 = fmul fast float %100, 2.000000e+00
  %116 = fmul fast float %115, %104
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %120, %117
  %124 = fmul fast float %121, %117
  %125 = fmul fast float %122, %117
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %127, %118
  %131 = fmul fast float %128, %118
  %132 = fmul fast float %129, %118
  %133 = fadd fast float %130, %123
  %134 = fadd fast float %131, %124
  %135 = fadd fast float %132, %125
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fadd fast float %133, %137
  %141 = fadd fast float %134, %138
  %142 = fadd fast float %135, %139
  %143 = fmul fast float %140, %112
  %144 = fmul fast float %141, %112
  %145 = fmul fast float %142, %112
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %162 = fmul fast float %143, %147
  %163 = call float @dx.op.tertiary.f32(i32 46, float %151, float %144, float %162)  ; FMad(a,b,c)
  %164 = call float @dx.op.tertiary.f32(i32 46, float %155, float %145, float %163)  ; FMad(a,b,c)
  %165 = fadd fast float %164, %159
  %166 = fmul fast float %143, %148
  %167 = call float @dx.op.tertiary.f32(i32 46, float %152, float %144, float %166)  ; FMad(a,b,c)
  %168 = call float @dx.op.tertiary.f32(i32 46, float %156, float %145, float %167)  ; FMad(a,b,c)
  %169 = fadd fast float %168, %160
  %170 = fmul fast float %143, %149
  %171 = call float @dx.op.tertiary.f32(i32 46, float %153, float %144, float %170)  ; FMad(a,b,c)
  %172 = call float @dx.op.tertiary.f32(i32 46, float %157, float %145, float %171)  ; FMad(a,b,c)
  %173 = fadd fast float %172, %161
  %174 = fmul fast float %165, 5.000000e-01
  %175 = fdiv fast float %174, %173
  %176 = fadd fast float %175, 5.000000e-01
  %177 = fmul fast float %169, -5.000000e-01
  %178 = fdiv fast float %177, %173
  %179 = fadd fast float %178, 5.000000e-01
  %180 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %181 = extractvalue %dx.types.CBufRet.f32 %105, 3
  %182 = fadd fast float %173, -4.000000e+00
  %183 = call float @dx.op.binary.f32(i32 35, float %182, float 0.000000e+00)  ; FMax(a,b)
  %184 = fadd fast float %183, %106
  %185 = fmul fast float %184, %180
  %186 = call float @dx.op.unary.f32(i32 23, float %185)  ; Log(value)
  %187 = fmul fast float %186, %181
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = fmul fast float %187, %189
  %191 = call float @dx.op.unary.f32(i32 27, float %176)  ; Round_ni(value)
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = call float @dx.op.unary.f32(i32 27, float %179)  ; Round_ni(value)
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = fadd fast float %194, %192
  %196 = call float @dx.op.unary.f32(i32 27, float %190)  ; Round_ni(value)
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fadd fast float %195, %197
  %199 = fcmp fast oeq float %198, 0.000000e+00
  %200 = zext i1 %199 to i32
  br i1 %199, label %201, label %206, !dx.controlflow.hints !37

; <label>:201                                     ; preds = %47
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %176, float %179, float %190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = fcmp fast oge float %203, 1.000000e+00
  %205 = zext i1 %204 to i32
  br label %206

; <label>:206                                     ; preds = %201, %47
  %207 = phi i32 [ %205, %201 ], [ %200, %47 ]
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %227, label %209, !dx.controlflow.hints !38

; <label>:209                                     ; preds = %206
  %210 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %19, float %176, float %179, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = extractvalue %dx.types.ResRet.f32 %210, 1
  %213 = extractvalue %dx.types.ResRet.f32 %210, 2
  %214 = extractvalue %dx.types.ResRet.f32 %210, 3
  %215 = call float @dx.op.binary.f32(i32 36, float %212, float %213)  ; FMin(a,b)
  %216 = call float @dx.op.binary.f32(i32 36, float %211, float %215)  ; FMin(a,b)
  %217 = call float @dx.op.binary.f32(i32 36, float %216, float %214)  ; FMin(a,b)
  %218 = fmul fast float %217, 2.550000e+02
  %219 = fadd fast float %218, 0x3F70101020000000
  %220 = fptoui float %219 to i32
  %221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.i32 %221, 0
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, %190
  %225 = sitofp i32 %220 to float
  %226 = fcmp uge float %224, %225
  br label %227

; <label>:227                                     ; preds = %209, %206
  %228 = phi i1 [ %226, %209 ], [ true, %206 ]
  br i1 %228, label %352, label %229, !dx.controlflow.hints !39

; <label>:229                                     ; preds = %227
  %230 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %231 = fmul fast float %230, %101
  %232 = fmul fast float %104, %100
  %233 = fmul fast float %103, %99
  %234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %176, float %179, float %190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %239 = fmul fast float %238, %235
  %240 = fmul fast float %238, %236
  %241 = fmul fast float %238, %237
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %176, float %179, float %190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = fmul fast float %243, 0x400BB67AE0000000
  %248 = fadd fast float %247, 0xBFFBB67AE0000000
  %249 = fmul fast float %244, 0x400BB67AE0000000
  %250 = fadd fast float %249, 0xBFFBB67AE0000000
  %251 = fmul fast float %245, 0x400BB67AE0000000
  %252 = fadd fast float %251, 0xBFFBB67AE0000000
  %253 = fmul fast float %248, %239
  %254 = fmul fast float %250, %239
  %255 = fmul fast float %252, %239
  %256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %176, float %179, float %190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = extractvalue %dx.types.ResRet.f32 %256, 3
  %261 = fmul fast float %246, 0x400BB67AE0000000
  %262 = fadd fast float %261, 0xBFFBB67AE0000000
  %263 = fmul fast float %257, 0x400BB67AE0000000
  %264 = fadd fast float %263, 0xBFFBB67AE0000000
  %265 = fmul fast float %258, 0x400BB67AE0000000
  %266 = fadd fast float %265, 0xBFFBB67AE0000000
  %267 = fmul fast float %262, %240
  %268 = fmul fast float %264, %240
  %269 = fmul fast float %266, %240
  %270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %176, float %179, float %190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fmul fast float %259, 0x400BB67AE0000000
  %273 = fadd fast float %272, 0xBFFBB67AE0000000
  %274 = fmul fast float %260, 0x400BB67AE0000000
  %275 = fadd fast float %274, 0xBFFBB67AE0000000
  %276 = fmul fast float %271, 0x400BB67AE0000000
  %277 = fadd fast float %276, 0xBFFBB67AE0000000
  %278 = fmul fast float %273, %241
  %279 = fmul fast float %275, %241
  %280 = fmul fast float %277, %241
  %281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %233, float %232, float %231, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = extractvalue %dx.types.ResRet.f32 %281, 1
  %284 = fmul fast float %53, %282
  %285 = fmul fast float %53, %283
  %286 = call float @dx.op.binary.f32(i32 35, float %240, float %241)  ; FMax(a,b)
  %287 = call float @dx.op.binary.f32(i32 35, float %239, float %286)  ; FMax(a,b)
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %290 = fmul fast float %284, %284
  %291 = fsub fast float %285, %290
  %292 = call float @dx.op.unary.f32(i32 6, float %291)  ; FAbs(value)
  %293 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %294 = fmul fast float %293, %289
  %295 = fsub fast float %284, %294
  %296 = fadd fast float %294, %284
  %297 = call float @dx.op.binary.f32(i32 35, float %287, float %295)  ; FMax(a,b)
  %298 = call float @dx.op.binary.f32(i32 36, float %297, float %296)  ; FMin(a,b)
  %299 = call float @dx.op.binary.f32(i32 35, float %287, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %300 = fdiv fast float 1.000000e+00, %299
  %301 = call float @dx.op.binary.f32(i32 35, float %298, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %302 = fmul fast float %301, %300
  %303 = fmul fast float %302, %239
  %304 = fmul fast float %253, %302
  %305 = fmul fast float %254, %302
  %306 = fmul fast float %255, %302
  %307 = fmul fast float %302, %240
  %308 = fmul fast float %267, %302
  %309 = fmul fast float %268, %302
  %310 = fmul fast float %269, %302
  %311 = fmul fast float %302, %241
  %312 = fmul fast float %278, %302
  %313 = fmul fast float %279, %302
  %314 = fmul fast float %280, %302
  %315 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %316 = fsub fast float %303, %54
  %317 = fsub fast float %304, %68
  %318 = fsub fast float %305, %69
  %319 = fsub fast float %306, %70
  %320 = fmul fast float %316, %315
  %321 = fmul fast float %317, %315
  %322 = fmul fast float %318, %315
  %323 = fmul fast float %319, %315
  %324 = fadd fast float %320, %54
  %325 = fadd fast float %321, %68
  %326 = fadd fast float %322, %69
  %327 = fadd fast float %323, %70
  %328 = fsub fast float %307, %55
  %329 = fsub fast float %308, %82
  %330 = fsub fast float %309, %83
  %331 = fsub fast float %310, %84
  %332 = fmul fast float %315, %328
  %333 = fmul fast float %315, %329
  %334 = fmul fast float %315, %330
  %335 = fmul fast float %315, %331
  %336 = fadd fast float %332, %55
  %337 = fadd fast float %333, %82
  %338 = fadd fast float %334, %83
  %339 = fadd fast float %335, %84
  %340 = fsub fast float %311, %56
  %341 = fsub fast float %312, %93
  %342 = fsub fast float %313, %94
  %343 = fsub fast float %314, %95
  %344 = fmul fast float %315, %340
  %345 = fmul fast float %315, %341
  %346 = fmul fast float %315, %342
  %347 = fmul fast float %315, %343
  %348 = fadd fast float %344, %56
  %349 = fadd fast float %345, %93
  %350 = fadd fast float %346, %94
  %351 = fadd fast float %347, %95
  br label %352

; <label>:352                                     ; preds = %229, %227
  %353 = phi float [ %324, %229 ], [ %54, %227 ]
  %354 = phi float [ %325, %229 ], [ %68, %227 ]
  %355 = phi float [ %326, %229 ], [ %69, %227 ]
  %356 = phi float [ %327, %229 ], [ %70, %227 ]
  %357 = phi float [ %336, %229 ], [ %55, %227 ]
  %358 = phi float [ %337, %229 ], [ %82, %227 ]
  %359 = phi float [ %338, %229 ], [ %83, %227 ]
  %360 = phi float [ %339, %229 ], [ %84, %227 ]
  %361 = phi float [ %348, %229 ], [ %56, %227 ]
  %362 = phi float [ %349, %229 ], [ %93, %227 ]
  %363 = phi float [ %350, %229 ], [ %94, %227 ]
  %364 = phi float [ %351, %229 ], [ %95, %227 ]
  %365 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %366 = fmul fast float %365, %353
  %367 = fmul fast float %365, %357
  %368 = fmul fast float %365, %361
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 %23, float %366, float %367, float %368, float %366, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %369 = fcmp fast ole float %361, 0.000000e+00
  %370 = fdiv fast float 1.000000e+00, %361
  %371 = select i1 %369, float 0.000000e+00, float %370
  %372 = fmul fast float %362, 0x3FD279A740000000
  %373 = fmul fast float %372, %371
  %374 = fmul fast float %363, 0x3FD279A740000000
  %375 = fmul fast float %374, %371
  %376 = fmul fast float %364, 0x3FD279A740000000
  %377 = fmul fast float %376, %371
  %378 = fadd fast float %373, 5.000000e-01
  %379 = fadd fast float %375, 5.000000e-01
  %380 = fadd fast float %377, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 %23, float %380, float %380, float %380, float %380, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %381 = fcmp fast ole float %357, 0.000000e+00
  %382 = fdiv fast float 1.000000e+00, %357
  %383 = select i1 %381, float 0.000000e+00, float %382
  %384 = fmul fast float %358, 0x3FD279A740000000
  %385 = fmul fast float %384, %383
  %386 = fmul fast float %359, 0x3FD279A740000000
  %387 = fmul fast float %386, %383
  %388 = fmul fast float %360, 0x3FD279A740000000
  %389 = fmul fast float %388, %383
  %390 = fadd fast float %385, 5.000000e-01
  %391 = fadd fast float %387, 5.000000e-01
  %392 = fadd fast float %389, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %21, i32 %22, i32 %23, float %391, float %392, float %378, float %379, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %393 = fcmp fast ole float %353, 0.000000e+00
  %394 = fdiv fast float 1.000000e+00, %353
  %395 = select i1 %393, float 0.000000e+00, float %394
  %396 = fmul fast float %354, 0x3FD279A740000000
  %397 = fmul fast float %396, %395
  %398 = fmul fast float %355, 0x3FD279A740000000
  %399 = fmul fast float %398, %395
  %400 = fmul fast float %356, 0x3FD279A740000000
  %401 = fmul fast float %400, %395
  %402 = fadd fast float %397, 5.000000e-01
  %403 = fadd fast float %399, 5.000000e-01
  %404 = fadd fast float %401, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %21, i32 %22, i32 %23, float %402, float %403, float %404, float %390, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %405

; <label>:405                                     ; preds = %352, %40, %33, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !20, !26, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!6 = !{i32 0, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 21, i32 1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 24, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 25, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 26, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<float>"* undef, !"", i32 0, i32 27, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 28, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 29, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<float>"* undef, !"", i32 0, i32 31, i32 1, i32 4, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 2> >"* undef, !"", i32 0, i32 32, i32 1, i32 4, i32 0, !7}
!18 = !{i32 11, %"class.Texture3D<float>"* undef, !"", i32 0, i32 37, i32 1, i32 4, i32 0, !7}
!19 = !{i32 12, %"class.Texture3D<float>"* undef, !"", i32 0, i32 38, i32 1, i32 4, i32 0, !7}
!20 = !{!21, !22, !24, !25}
!21 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!22 = !{i32 1, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 4, i1 false, i1 false, i1 false, !23}
!23 = !{i32 0, i32 14}
!24 = !{i32 2, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 4, i1 false, i1 false, i1 false, !23}
!25 = !{i32 3, %"class.RWTexture3D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 4, i1 false, i1 false, i1 false, !23}
!26 = !{!27}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{!29, !30}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!31 = !{void ()* @cs_effect_light_antialias, !"cs_effect_light_antialias", null, !4, !32}
!32 = !{i32 0, i64 256, i32 4, !33}
!33 = !{i32 8, i32 8, i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

