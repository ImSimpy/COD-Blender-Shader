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
; shader hash: b449beeef9c68fd89633a79c09c51128
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
;   [112 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
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
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t18     1
;                                   texture  struct         r/o      T2            t25     1
;                                   texture     f32     2darray      T3            t31     1
;                                   texture     f32          3d      T4            t30     1
;                                   texture     f32          2d      T5            t29     1
;                                   texture     f32          2d      T6            t26     1
;                                   texture     u32          2d      T7            t32     1
;                                   texture     f32          3d      T8            t33     1
;                                   texture     f32          1d      T9            t14     1
;                                   texture     f32          2d     T10            t13     1
;                                   texture     f32          2d     T11             t0     1
;                                   texture    byte         r/o     T12            t17     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAVunorm_f32     2darray      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2D<float>" = type { float }
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%FogRaymarchingConstBuffer_decl = type { %struct.FogRaymarchingConstBuffer }
%struct.FogRaymarchingConstBuffer = type { <2 x float>, <2 x float>, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_fog_raymarching_air_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = add i32 %23, %22
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %29 = add i32 %26, %28
  %30 = lshr i32 %29, 1
  %31 = and i32 %30, 1
  %32 = and i32 %29, 1
  %33 = xor i32 %31, %32
  %34 = shl i32 %22, 1
  %35 = shl i32 %23, 1
  %36 = or i32 %33, %34
  %37 = or i32 %31, %35
  %38 = uitofp i32 %36 to float
  %39 = uitofp i32 %37 to float
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %42 = fmul fast float %41, 0x3FE3C6EF40000000
  %43 = frem fast float %38, 2.560000e+02
  %44 = frem fast float %39, 2.560000e+02
  %45 = fptoui float %43 to i32
  %46 = fptoui float %44 to i32
  %47 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 1
  %49 = extractvalue %dx.types.ResRet.f32 %47, 2
  %50 = extractvalue %dx.types.ResRet.f32 %47, 3
  %51 = fadd fast float %48, %42
  %52 = fadd fast float %49, %42
  %53 = fadd fast float %50, %42
  %54 = call float @dx.op.unary.f32(i32 22, float %51)  ; Frc(value)
  %55 = call float @dx.op.unary.f32(i32 22, float %52)  ; Frc(value)
  %56 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %57 = fadd fast float %55, %38
  %58 = fadd fast float %56, %39
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %60, %57
  %63 = fmul fast float %61, %58
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %70 = fmul fast float %62, 2.000000e+00
  %71 = fmul fast float %63, 2.000000e+00
  %72 = fsub fast float 1.000000e+00, %70
  %73 = fsub fast float 1.000000e+00, %71
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fmul fast float %75, %72
  %79 = fmul fast float %76, %72
  %80 = fmul fast float %77, %72
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fmul fast float %82, %73
  %86 = fmul fast float %83, %73
  %87 = fmul fast float %84, %73
  %88 = fadd fast float %85, %78
  %89 = fadd fast float %86, %79
  %90 = fadd fast float %87, %80
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fadd fast float %88, %92
  %96 = fadd fast float %89, %93
  %97 = fadd fast float %90, %94
  %98 = fmul fast float %95, %69
  %99 = fmul fast float %96, %69
  %100 = fmul fast float %97, %69
  %101 = fmul fast float %98, %98
  %102 = fmul fast float %99, %99
  %103 = fadd fast float %101, %102
  %104 = fmul fast float %100, %100
  %105 = fadd fast float %103, %104
  %106 = call float @dx.op.unary.f32(i32 24, float %105)  ; Sqrt(value)
  %107 = fdiv fast float 1.000000e+00, %106
  %108 = fmul fast float %98, %107
  %109 = fmul fast float %99, %107
  %110 = fmul fast float %100, %107
  %111 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %36, i32 %37, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = fcmp fast ogt float %112, -1.000000e+00
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %116 = select i1 %113, float %115, float 1.000000e+00
  %117 = fadd fast float %112, 1.000000e+00
  %118 = fmul fast float %116, %117
  %119 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %120 = fdiv fast float 1.000000e+00, %69
  %121 = fmul fast float %120, %106
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = fmul fast float %123, %121
  %125 = fmul fast float %121, %119
  %126 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %127 = fcmp fast oge float %119, %126
  %128 = call float @dx.op.binary.f32(i32 36, float %125, float %124)  ; FMin(a,b)
  %129 = select i1 %127, float %124, float %128
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %132 = fsub fast float -0.000000e+00, %65
  %133 = fsub fast float -0.000000e+00, %66
  %134 = fsub fast float %131, %67
  %135 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = fdiv fast float 1.000000e+00, %136
  %138 = fmul fast float %137, %135
  %139 = fcmp fast olt float %138, 0.000000e+00
  %140 = fcmp fast ogt float %110, 0.000000e+00
  %141 = and i1 %140, %139
  br i1 %141, label %146, label %142, !dx.controlflow.hints !37

; <label>:142                                     ; preds = %0
  %143 = fcmp fast olt float %110, 0.000000e+00
  br i1 %143, label %144, label %146, !dx.controlflow.hints !38

; <label>:144                                     ; preds = %142
  %145 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %138)  ; FMax(a,b)
  br label %146

; <label>:146                                     ; preds = %144, %142, %0
  %147 = phi float [ 0.000000e+00, %0 ], [ %145, %144 ], [ 0.000000e+00, %142 ]
  %148 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %144 ], [ %138, %142 ]
  %149 = fcmp fast oeq float %148, 0.000000e+00
  br i1 %149, label %153, label %150, !dx.controlflow.hints !39

; <label>:150                                     ; preds = %146
  %151 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %147)  ; FMin(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %148)  ; FMax(a,b)
  br label %153

; <label>:153                                     ; preds = %150, %146
  %154 = phi i32 [ 1, %150 ], [ 0, %146 ]
  %155 = phi float [ %152, %150 ], [ -1.000000e+00, %146 ]
  %156 = phi float [ %151, %150 ], [ 0x47EFFFFFE0000000, %146 ]
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = fsub fast float %158, %67
  %162 = fadd fast float %161, %160
  %163 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %132, float %133, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %164 = fmul fast float %137, %163
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = fsub fast float %166, %67
  %168 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %132, float %133, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %169 = fmul fast float %137, %168
  %170 = call float @dx.op.binary.f32(i32 36, float %164, float %169)  ; FMin(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %164, float %169)  ; FMax(a,b)
  %172 = call float @dx.op.binary.f32(i32 36, float %156, float %170)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %155, float %171)  ; FMax(a,b)
  %174 = fdiv fast float 1.000000e+00, %108
  %175 = fdiv fast float 1.000000e+00, %109
  %176 = fdiv fast float 1.000000e+00, %110
  %177 = call float @dx.op.binary.f32(i32 36, float %129, float %173)  ; FMin(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %106, float %172)  ; FMax(a,b)
  %179 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %180 = fmul fast float %54, 2.000000e+00
  %181 = fadd fast float %180, -1.000000e+00
  %182 = fmul fast float %179, %181
  %183 = fadd fast float %182, %178
  %184 = fcmp fast olt float %183, %177
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %187 = fcmp fast olt float %186, 1.000000e+00
  %188 = and i1 %187, %184
  br i1 %188, label %189, label %1873

; <label>:189                                     ; preds = %153
  %190 = fmul fast float %183, %110
  %191 = fadd fast float %190, %67
  %192 = fmul fast float %183, %109
  %193 = fadd fast float %192, %66
  %194 = fmul fast float %183, %108
  %195 = fadd fast float %194, %65
  br label %196

; <label>:196                                     ; preds = %1845, %189
  %197 = phi float [ %1847, %1845 ], [ undef, %189 ]
  %198 = phi float [ %1848, %1845 ], [ undef, %189 ]
  %199 = phi float [ %1849, %1845 ], [ undef, %189 ]
  %200 = phi float [ %1850, %1845 ], [ undef, %189 ]
  %201 = phi float [ %327, %1845 ], [ undef, %189 ]
  %202 = phi float [ %328, %1845 ], [ undef, %189 ]
  %203 = phi float [ %329, %1845 ], [ undef, %189 ]
  %204 = phi float [ %330, %1845 ], [ undef, %189 ]
  %205 = phi float [ %1851, %1845 ], [ 0.000000e+00, %189 ]
  %206 = phi float [ %1852, %1845 ], [ 1.000000e+00, %189 ]
  %207 = phi float [ %1853, %1845 ], [ 0.000000e+00, %189 ]
  %208 = phi float [ %1854, %1845 ], [ 0.000000e+00, %189 ]
  %209 = phi float [ %1855, %1845 ], [ 0.000000e+00, %189 ]
  %210 = phi float [ %1865, %1845 ], [ %195, %189 ]
  %211 = phi float [ %1866, %1845 ], [ %193, %189 ]
  %212 = phi float [ %1867, %1845 ], [ %191, %189 ]
  %213 = phi float [ %1846, %1845 ], [ %183, %189 ]
  %214 = phi i32 [ %332, %1845 ], [ 10, %189 ]
  %215 = phi float [ %1856, %1845 ], [ 0.000000e+00, %189 ]
  %216 = phi float [ %1857, %1845 ], [ 0.000000e+00, %189 ]
  %217 = phi float [ %1858, %1845 ], [ 0.000000e+00, %189 ]
  %218 = phi float [ %1859, %1845 ], [ 0.000000e+00, %189 ]
  %219 = phi float [ %1860, %1845 ], [ 0.000000e+00, %189 ]
  %220 = phi i32 [ %1861, %1845 ], [ 0, %189 ]
  %221 = fsub fast float -0.000000e+00, %211
  %222 = fsub fast float -0.000000e+00, %210
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %228 = fsub fast float %210, %226
  %229 = fsub fast float %211, %227
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %233 = fmul fast float %228, %231
  %234 = fmul fast float %229, %232
  %235 = call float @dx.op.binary.f32(i32 36, float %233, float %234)  ; FMin(a,b)
  %236 = fcmp fast olt float %235, 0.000000e+00
  %237 = call float @dx.op.binary.f32(i32 35, float %233, float %234)  ; FMax(a,b)
  %238 = fcmp fast ogt float %237, 1.000000e+00
  %239 = or i1 %236, %238
  %240 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %241 = fcmp fast olt float %212, %240
  %242 = or i1 %239, %241
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 3
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = fadd fast float %246, %244
  %248 = fcmp fast ogt float %212, %247
  %249 = or i1 %242, %248
  br i1 %249, label %250, label %279, !dx.controlflow.hints !40

; <label>:250                                     ; preds = %196
  %251 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %230, 1
  %253 = fsub fast float %226, %210
  %254 = fmul fast float %253, %174
  %255 = fadd fast float %253, %251
  %256 = fmul fast float %255, %174
  %257 = call float @dx.op.binary.f32(i32 36, float %254, float %256)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 35, float %254, float %256)  ; FMax(a,b)
  %259 = fsub fast float %227, %211
  %260 = fmul fast float %259, %175
  %261 = fadd fast float %259, %252
  %262 = fmul fast float %261, %175
  %263 = call float @dx.op.binary.f32(i32 36, float %260, float %262)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %257, float %263)  ; FMax(a,b)
  %265 = call float @dx.op.binary.f32(i32 35, float %260, float %262)  ; FMax(a,b)
  %266 = call float @dx.op.binary.f32(i32 36, float %258, float %265)  ; FMin(a,b)
  %267 = fsub fast float %240, %212
  %268 = fmul fast float %267, %176
  %269 = fsub fast float %244, %212
  %270 = fadd fast float %269, %246
  %271 = fmul fast float %270, %176
  %272 = call float @dx.op.binary.f32(i32 36, float %268, float %271)  ; FMin(a,b)
  %273 = call float @dx.op.binary.f32(i32 35, float %264, float %272)  ; FMax(a,b)
  %274 = call float @dx.op.binary.f32(i32 35, float %268, float %271)  ; FMax(a,b)
  %275 = call float @dx.op.binary.f32(i32 36, float %266, float %274)  ; FMin(a,b)
  %276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %273)  ; FMax(a,b)
  %277 = fcmp fast oge float %275, %276
  %278 = select i1 %277, float %273, float 1.000000e+07
  br label %325

; <label>:279                                     ; preds = %196
  %280 = fsub fast float 1.000000e+00, %234
  %281 = icmp eq i32 %214, 0
  br i1 %281, label %310, label %282

; <label>:282                                     ; preds = %279
  br label %283

; <label>:283                                     ; preds = %306, %282
  %284 = phi i32 [ %307, %306 ], [ %214, %282 ]
  %285 = uitofp i32 %284 to float
  %286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %233, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float %285)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = fcmp fast oeq float %287, 0.000000e+00
  %291 = fcmp ule float %212, %289
  %292 = fcmp uge float %212, %288
  %293 = or i1 %292, %291
  %294 = or i1 %290, %293
  br i1 %294, label %295, label %306, !dx.controlflow.hints !41

; <label>:295                                     ; preds = %283
  %296 = extractvalue %dx.types.ResRet.f32 %286, 3
  %297 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %298 = and i32 %284, 31
  %299 = lshr i32 1024, %298
  %300 = uitofp i32 %299 to float
  %301 = fdiv fast float %297, %300
  %302 = add i32 %284, 1
  %303 = uitofp i32 %302 to float
  %304 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %303)  ; FMin(a,b)
  %305 = fptosi float %304 to i32
  br label %325

; <label>:306                                     ; preds = %283
  %307 = add i32 %284, -1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %283, !llvm.loop !42

; <label>:309                                     ; preds = %306
  br label %310

; <label>:310                                     ; preds = %309, %279
  %311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %233, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = extractvalue %dx.types.ResRet.f32 %311, 3
  %316 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %317 = fmul fast float %316, 9.765625e-04
  %318 = fcmp fast oeq float %312, 0.000000e+00
  %319 = fcmp ule float %212, %314
  %320 = fcmp uge float %212, %313
  %321 = or i1 %320, %319
  %322 = or i1 %318, %321
  %323 = zext i1 %322 to i32
  %324 = xor i32 %323, 1
  br label %325

; <label>:325                                     ; preds = %310, %295, %250
  %326 = phi float [ %278, %250 ], [ %301, %295 ], [ %317, %310 ]
  %327 = phi float [ %201, %250 ], [ %287, %295 ], [ %312, %310 ]
  %328 = phi float [ %202, %250 ], [ %288, %295 ], [ %313, %310 ]
  %329 = phi float [ %203, %250 ], [ %289, %295 ], [ %314, %310 ]
  %330 = phi float [ %204, %250 ], [ %296, %295 ], [ %315, %310 ]
  %331 = phi i32 [ 0, %250 ], [ 0, %295 ], [ %324, %310 ]
  %332 = phi i32 [ 10, %250 ], [ %305, %295 ], [ 1, %310 ]
  %333 = icmp eq i32 %331, 0
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %336 = call float @dx.op.binary.f32(i32 35, float %326, float %335)  ; FMax(a,b)
  %337 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %336)  ; FMin(a,b)
  %338 = icmp eq i32 %154, 0
  br i1 %338, label %351, label %339, !dx.controlflow.hints !44

; <label>:339                                     ; preds = %325
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %343 = fmul fast float %341, %213
  %344 = fdiv fast float %343, %177
  %345 = fadd fast float %344, 1.000000e+00
  %346 = call float @dx.op.unary.f32(i32 23, float %345)  ; Log(value)
  %347 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %346)  ; FMin(a,b)
  %348 = fmul fast float %342, %177
  %349 = fmul fast float %348, %347
  %350 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %349)  ; FMin(a,b)
  br label %351

; <label>:351                                     ; preds = %339, %325
  %352 = phi float [ %350, %339 ], [ 0x47EFFFFFE0000000, %325 ]
  %353 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %354 = fmul fast float %353, %213
  %355 = call float @dx.op.unary.f32(i32 23, float %354)  ; Log(value)
  %356 = fmul fast float %355, 0x3FE62E4300000000
  %357 = call float @dx.op.binary.f32(i32 35, float %356, float 1.000000e+00)  ; FMax(a,b)
  %358 = fmul fast float %357, %352
  %359 = call float @dx.op.binary.f32(i32 36, float %358, float %337)  ; FMin(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %359, float %224)  ; FMax(a,b)
  %361 = fadd fast float %177, 0x3F1A36E2E0000000
  %362 = fsub fast float %361, %213
  %363 = call float @dx.op.binary.f32(i32 36, float %362, float %360)  ; FMin(a,b)
  br i1 %338, label %418, label %364, !dx.controlflow.hints !45

; <label>:364                                     ; preds = %351
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = fsub fast float %366, %212
  %368 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %222, float %221, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = fmul fast float %137, %368
  %370 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %369)  ; FMax(a,b)
  %371 = fcmp fast olt float %110, 0.000000e+00
  %372 = call float @dx.op.binary.f32(i32 36, float %363, float %370)  ; FMin(a,b)
  br i1 %371, label %374, label %373, !dx.controlflow.hints !46

; <label>:373                                     ; preds = %364
  br label %374

; <label>:374                                     ; preds = %373, %364
  %375 = phi float [ 0.000000e+00, %373 ], [ %372, %364 ]
  %376 = phi float [ %372, %373 ], [ %363, %364 ]
  %377 = phi float [ %372, %373 ], [ 0.000000e+00, %364 ]
  %378 = phi float [ %363, %373 ], [ %372, %364 ]
  %379 = fsub fast float %376, %375
  %380 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %381 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %380)  ; FMin(a,b)
  %382 = fsub fast float %212, %366
  %383 = fmul fast float %381, 0x3FF7154760000000
  %384 = fmul fast float %383, %382
  %385 = call float @dx.op.unary.f32(i32 21, float %384)  ; Exp(value)
  %386 = fmul fast float %110, 0x3FF7154760000000
  %387 = fmul fast float %386, %378
  %388 = fmul fast float %387, %381
  %389 = call float @dx.op.unary.f32(i32 21, float %388)  ; Exp(value)
  %390 = fmul fast float %386, %377
  %391 = fmul fast float %390, %381
  %392 = call float @dx.op.unary.f32(i32 21, float %391)  ; Exp(value)
  %393 = fsub fast float %389, %392
  %394 = fmul fast float %393, %385
  %395 = fmul fast float %381, %110
  %396 = fdiv fast float %394, %395
  %397 = fadd fast float %379, %396
  %398 = call float @dx.op.unary.f32(i32 6, float %110)  ; FAbs(value)
  %399 = fcmp fast olt float %398, 0x3F0FFB4800000000
  %400 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %382)  ; FMax(a,b)
  %401 = fmul fast float %400, 0x3FF7154760000000
  %402 = fmul fast float %401, %380
  %403 = call float @dx.op.unary.f32(i32 21, float %402)  ; Exp(value)
  %404 = fmul fast float %403, %363
  %405 = select i1 %399, float %404, float %397
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %408 = fmul fast float %405, %407
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %412 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %413 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %414 = fmul fast float %410, %408
  %415 = fmul fast float %411, %408
  %416 = fmul fast float %412, %408
  %417 = fmul fast float %413, %408
  br label %418

; <label>:418                                     ; preds = %374, %351
  %419 = phi float [ %408, %374 ], [ 0.000000e+00, %351 ]
  %420 = phi float [ %417, %374 ], [ 0.000000e+00, %351 ]
  %421 = phi float [ %414, %374 ], [ 0.000000e+00, %351 ]
  %422 = phi float [ %415, %374 ], [ 0.000000e+00, %351 ]
  %423 = phi float [ %416, %374 ], [ 0.000000e+00, %351 ]
  br i1 %333, label %566, label %424, !dx.controlflow.hints !47

; <label>:424                                     ; preds = %418
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.i32 %429, 0
  %431 = icmp ne i32 %430, 0
  %432 = zext i1 %431 to i32
  %433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.i32 %433, 0
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %469, label %436

; <label>:436                                     ; preds = %424
  br label %437

; <label>:437                                     ; preds = %464, %436
  %438 = phi i32 [ %465, %464 ], [ 0, %436 ]
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %438, i32 0)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %438, i32 16)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = extractvalue %dx.types.ResRet.f32 %443, 2
  %447 = fsub fast float %440, %444
  %448 = fsub fast float %441, %445
  %449 = fsub fast float %442, %446
  %450 = fadd fast float %444, %440
  %451 = fadd fast float %445, %441
  %452 = fadd fast float %446, %442
  %453 = fcmp fast olt float %210, %447
  %454 = fcmp fast olt float %211, %448
  %455 = fcmp fast olt float %212, %449
  %456 = or i1 %453, %454
  %457 = or i1 %455, %456
  %458 = fcmp fast ogt float %210, %450
  %459 = fcmp fast ogt float %211, %451
  %460 = fcmp fast ogt float %212, %452
  %461 = or i1 %458, %459
  %462 = or i1 %460, %461
  %463 = or i1 %457, %462
  br i1 %463, label %464, label %467, !dx.controlflow.hints !48

; <label>:464                                     ; preds = %437
  %465 = add nuw i32 %438, 1
  %466 = icmp ult i32 %465, %434
  br i1 %466, label %437, label %467

; <label>:467                                     ; preds = %464, %437
  %468 = phi i32 [ 255, %464 ], [ %438, %437 ]
  br label %469

; <label>:469                                     ; preds = %467, %424
  %470 = phi i32 [ 255, %424 ], [ %468, %467 ]
  %471 = icmp eq i32 %470, 255
  br i1 %471, label %481, label %472, !dx.controlflow.hints !49

; <label>:472                                     ; preds = %469
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %470, i32 32)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %470, i32 156)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = icmp ne i32 %478, 0
  %480 = zext i1 %479 to i32
  br label %481

; <label>:481                                     ; preds = %472, %469
  %482 = phi float [ %474, %472 ], [ %426, %469 ]
  %483 = phi float [ %475, %472 ], [ %427, %469 ]
  %484 = phi float [ %476, %472 ], [ %428, %469 ]
  %485 = phi i32 [ %480, %472 ], [ %432, %469 ]
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %556, !dx.controlflow.hints !50

; <label>:487                                     ; preds = %481
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 3
  %490 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %493 = extractvalue %dx.types.CBufRet.f32 %491, 3
  br i1 %471, label %504, label %494, !dx.controlflow.hints !51

; <label>:494                                     ; preds = %487
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %470, i32 60)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %470, i32 64)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %470, i32 72)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %470, i32 96)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  br label %504

; <label>:504                                     ; preds = %494, %487
  %505 = phi float [ %496, %494 ], [ %246, %487 ]
  %506 = phi float [ %501, %494 ], [ %244, %487 ]
  %507 = phi float [ %503, %494 ], [ %490, %487 ]
  %508 = phi float [ %498, %494 ], [ %492, %487 ]
  %509 = phi float [ %499, %494 ], [ %493, %487 ]
  %510 = call float @dx.op.binary.f32(i32 35, float %327, float 0.000000e+00)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 36, float %510, float 1.000000e+00)  ; FMin(a,b)
  %512 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %513 = call float @dx.op.binary.f32(i32 35, float %330, float 0x3F847AE140000000)  ; FMax(a,b)
  %514 = fsub fast float %328, %212
  %515 = fsub fast float %212, %329
  %516 = call float @dx.op.binary.f32(i32 36, float %515, float %514)  ; FMin(a,b)
  %517 = fdiv fast float %516, %513
  %518 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %519 = fsub fast float %212, %506
  %520 = fdiv fast float %519, %505
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %522 = fsub fast float 1.000000e+00, %521
  %523 = fmul float %518, %522
  %524 = fmul float %523, %523
  %525 = fmul fast float %512, %489
  %526 = fmul fast float %525, %524
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 2
  %529 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %530 = fsub fast float %526, %529
  %531 = fsub fast float %528, %529
  %532 = fdiv fast float %530, %531
  %533 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  %534 = fmul fast float %533, %507
  %535 = fcmp fast ogt float %509, 0.000000e+00
  br i1 %535, label %536, label %556, !dx.controlflow.hints !52

; <label>:536                                     ; preds = %504
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %540 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %541 = fsub fast float %210, %538
  %542 = fsub fast float %211, %539
  %543 = fsub fast float %212, %540
  %544 = fmul fast float %541, %541
  %545 = fmul fast float %542, %542
  %546 = fadd fast float %544, %545
  %547 = fmul fast float %543, %543
  %548 = fadd fast float %546, %547
  %549 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %550 = fsub fast float %549, %508
  %551 = fsub fast float %509, %508
  %552 = fdiv fast float %550, %551
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fmul fast float %553, %553
  %555 = fmul fast float %554, %534
  br label %556

; <label>:556                                     ; preds = %536, %504, %481
  %557 = phi float [ 0.000000e+00, %481 ], [ %555, %536 ], [ %534, %504 ]
  %558 = fmul fast float %557, %363
  %559 = fmul fast float %558, %482
  %560 = fmul fast float %558, %483
  %561 = fmul fast float %558, %484
  %562 = fadd fast float %559, %421
  %563 = fadd fast float %560, %422
  %564 = fadd fast float %561, %423
  %565 = fadd fast float %558, %419
  br label %566

; <label>:566                                     ; preds = %556, %418
  %567 = phi float [ %565, %556 ], [ %419, %418 ]
  %568 = phi float [ %562, %556 ], [ %421, %418 ]
  %569 = phi float [ %563, %556 ], [ %422, %418 ]
  %570 = phi float [ %564, %556 ], [ %423, %418 ]
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %573 = fcmp fast ogt float %567, %572
  br i1 %573, label %574, label %580, !dx.controlflow.hints !53

; <label>:574                                     ; preds = %566
  %575 = fdiv fast float 1.000000e+00, %567
  %576 = fmul fast float %575, %568
  %577 = fmul fast float %575, %569
  %578 = fmul fast float %575, %570
  %579 = fmul fast float %575, %420
  br label %580

; <label>:580                                     ; preds = %574, %566
  %581 = phi float [ %579, %574 ], [ %420, %566 ]
  %582 = phi float [ %576, %574 ], [ %568, %566 ]
  %583 = phi float [ %577, %574 ], [ %569, %566 ]
  %584 = phi float [ %578, %574 ], [ %570, %566 ]
  br i1 %573, label %587, label %585, !dx.controlflow.hints !54

; <label>:585                                     ; preds = %580
  %586 = fadd fast float %363, %213
  br label %1845

; <label>:587                                     ; preds = %580
  %588 = fmul fast float %567, 0xBFF7154760000000
  %589 = call float @dx.op.unary.f32(i32 21, float %588)  ; Exp(value)
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.i32 %591, 0
  %593 = icmp eq i32 %592, 1
  br i1 %593, label %594, label %629, !dx.controlflow.hints !55

; <label>:594                                     ; preds = %587
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %598 = fsub fast float %210, %596
  %599 = fsub fast float %211, %597
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %603 = fmul fast float %598, %601
  %604 = fmul fast float %599, %602
  %605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %603, float %604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = fcmp fast ogt float %606, 0.000000e+00
  %608 = extractvalue %dx.types.CBufRet.i32 %591, 3
  %609 = icmp ne i32 %608, 0
  %610 = and i1 %607, %609
  br i1 %610, label %611, label %629, !dx.controlflow.hints !56

; <label>:611                                     ; preds = %594
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = fsub fast float %210, %613
  %616 = fsub fast float %211, %614
  %617 = fmul fast float %615, %615
  %618 = fmul fast float %616, %616
  %619 = fadd fast float %617, %618
  %620 = uitofp i32 %608 to float
  %621 = fmul fast float %620, %620
  %622 = fcmp fast ogt float %619, %621
  br i1 %622, label %629, label %623, !dx.controlflow.hints !57

; <label>:623                                     ; preds = %611
  %624 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %625 = fsub fast float %620, %624
  %626 = fmul fast float %625, 0x3F75555560000000
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = call float @dx.op.binary.f32(i32 36, float %627, float %606)  ; FMin(a,b)
  br label %629

; <label>:629                                     ; preds = %623, %611, %594, %587
  %630 = phi float [ 1.000000e+00, %587 ], [ %628, %623 ], [ %606, %594 ], [ 0.000000e+00, %611 ]
  %631 = fcmp fast ogt float %630, 0.000000e+00
  br i1 %631, label %632, label %705, !dx.controlflow.hints !58

; <label>:632                                     ; preds = %629
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = extractvalue %dx.types.ResRet.i32 %633, 1
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = extractvalue %dx.types.ResRet.i32 %636, 1
  %639 = extractvalue %dx.types.ResRet.i32 %636, 2
  %640 = extractvalue %dx.types.ResRet.i32 %636, 3
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = extractvalue %dx.types.ResRet.i32 %641, 1
  %644 = extractvalue %dx.types.ResRet.i32 %641, 2
  %645 = extractvalue %dx.types.ResRet.i32 %641, 3
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = extractvalue %dx.types.ResRet.i32 %646, 1
  %649 = extractvalue %dx.types.ResRet.i32 %646, 2
  %650 = extractvalue %dx.types.ResRet.i32 %646, 3
  %651 = and i32 %647, 65535
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = lshr i32 %647, 16
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = and i32 %648, 65535
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = lshr i32 %648, 16
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = and i32 %649, 65535
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = lshr i32 %649, 16
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = and i32 %650, 65535
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = lshr i32 %650, 16
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = and i32 %642, 65535
  %668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %667)  ; LegacyF16ToF32(value)
  %669 = lshr i32 %642, 16
  %670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %669)  ; LegacyF16ToF32(value)
  %671 = and i32 %643, 65535
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = lshr i32 %643, 16
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = and i32 %644, 65535
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = lshr i32 %644, 16
  %678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %677)  ; LegacyF16ToF32(value)
  %679 = and i32 %645, 65535
  %680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %679)  ; LegacyF16ToF32(value)
  %681 = lshr i32 %645, 16
  %682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %681)  ; LegacyF16ToF32(value)
  %683 = and i32 %637, 65535
  %684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %683)  ; LegacyF16ToF32(value)
  %685 = lshr i32 %637, 16
  %686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %685)  ; LegacyF16ToF32(value)
  %687 = and i32 %638, 65535
  %688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %687)  ; LegacyF16ToF32(value)
  %689 = lshr i32 %638, 16
  %690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %689)  ; LegacyF16ToF32(value)
  %691 = and i32 %639, 65535
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  %693 = lshr i32 %639, 16
  %694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %693)  ; LegacyF16ToF32(value)
  %695 = and i32 %640, 65535
  %696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %695)  ; LegacyF16ToF32(value)
  %697 = lshr i32 %640, 16
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = and i32 %634, 65535
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = lshr i32 %634, 16
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = and i32 %635, 65535
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  br label %705

; <label>:705                                     ; preds = %632, %629
  %706 = phi float [ %704, %632 ], [ 0.000000e+00, %629 ]
  %707 = phi float [ %702, %632 ], [ 0.000000e+00, %629 ]
  %708 = phi float [ %700, %632 ], [ 0.000000e+00, %629 ]
  %709 = phi float [ %698, %632 ], [ 0.000000e+00, %629 ]
  %710 = phi float [ %696, %632 ], [ 0.000000e+00, %629 ]
  %711 = phi float [ %694, %632 ], [ 0.000000e+00, %629 ]
  %712 = phi float [ %692, %632 ], [ 0.000000e+00, %629 ]
  %713 = phi float [ %690, %632 ], [ 0.000000e+00, %629 ]
  %714 = phi float [ %688, %632 ], [ 0.000000e+00, %629 ]
  %715 = phi float [ %686, %632 ], [ 0.000000e+00, %629 ]
  %716 = phi float [ %684, %632 ], [ 0.000000e+00, %629 ]
  %717 = phi float [ %682, %632 ], [ 0.000000e+00, %629 ]
  %718 = phi float [ %680, %632 ], [ 0.000000e+00, %629 ]
  %719 = phi float [ %678, %632 ], [ 0.000000e+00, %629 ]
  %720 = phi float [ %676, %632 ], [ 0.000000e+00, %629 ]
  %721 = phi float [ %674, %632 ], [ 0.000000e+00, %629 ]
  %722 = phi float [ %672, %632 ], [ 0.000000e+00, %629 ]
  %723 = phi float [ %670, %632 ], [ 0.000000e+00, %629 ]
  %724 = phi float [ %668, %632 ], [ 0.000000e+00, %629 ]
  %725 = phi float [ %666, %632 ], [ 0.000000e+00, %629 ]
  %726 = phi float [ %664, %632 ], [ 0.000000e+00, %629 ]
  %727 = phi float [ %662, %632 ], [ 0.000000e+00, %629 ]
  %728 = phi float [ %660, %632 ], [ 0.000000e+00, %629 ]
  %729 = phi float [ %658, %632 ], [ 0.000000e+00, %629 ]
  %730 = phi float [ %656, %632 ], [ 0.000000e+00, %629 ]
  %731 = phi float [ %654, %632 ], [ 0.000000e+00, %629 ]
  %732 = phi float [ %652, %632 ], [ 0.000000e+00, %629 ]
  %733 = fcmp fast olt float %630, 1.000000e+00
  br i1 %733, label %734, label %1394, !dx.controlflow.hints !59

; <label>:734                                     ; preds = %705
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %738 = fsub fast float %210, %736
  %739 = fsub fast float %211, %737
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 0
  %742 = extractvalue %dx.types.CBufRet.f32 %740, 1
  %743 = fmul fast float %738, %741
  %744 = fmul fast float %739, %742
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %747 = fmul fast float %746, %743
  %748 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %749 = fadd fast float %747, %748
  %750 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %751 = fmul fast float %750, %744
  %752 = extractvalue %dx.types.CBufRet.f32 %745, 3
  %753 = fadd fast float %751, %752
  %754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %749, float %753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  %756 = extractvalue %dx.types.ResRet.f32 %754, 1
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %760 = fsub fast float %758, %759
  %761 = fmul fast float %760, %755
  %762 = fadd fast float %761, %759
  %763 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %764 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %765 = fsub fast float %763, %764
  %766 = fmul fast float %765, %756
  %767 = fadd fast float %766, %764
  %768 = fsub fast float %212, %762
  %769 = fsub fast float %767, %762
  %770 = fdiv fast float %768, %769
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %774 = fmul fast float %773, %771
  %775 = extractvalue %dx.types.CBufRet.f32 %772, 1
  %776 = fadd fast float %774, %775
  %777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %749, float %753, float %776, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 0
  %783 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %784 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %785 = fmul fast float %782, %778
  %786 = fmul fast float %783, %779
  %787 = fmul fast float %784, %780
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = extractvalue %dx.types.CBufRet.f32 %788, 1
  %791 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %792 = fadd fast float %785, %789
  %793 = fadd fast float %786, %790
  %794 = fadd fast float %787, %791
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = fmul fast float %796, %743
  %798 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %799 = fadd fast float %797, %798
  %800 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %801 = fmul fast float %800, %744
  %802 = extractvalue %dx.types.CBufRet.f32 %795, 3
  %803 = fadd fast float %801, %802
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = extractvalue %dx.types.CBufRet.f32 %804, 3
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %812 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %813 = extractvalue %dx.types.CBufRet.f32 %809, 3
  %814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %799, float %803, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = extractvalue %dx.types.ResRet.f32 %814, 3
  %819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %799, float %803, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = extractvalue %dx.types.ResRet.f32 %819, 3
  %824 = fmul fast float %815, %792
  %825 = fmul fast float %820, %792
  %826 = fmul fast float %822, %792
  %827 = fmul fast float %818, %792
  %828 = fadd fast float %824, %805
  %829 = fadd fast float %825, %806
  %830 = fadd fast float %826, %807
  %831 = fadd fast float %827, %808
  %832 = fmul fast float %816, %792
  %833 = fmul fast float %821, %792
  %834 = fadd fast float %832, %810
  %835 = fadd fast float %833, %811
  %836 = fmul fast float %817, %792
  %837 = fmul fast float %823, %792
  %838 = fadd fast float %836, %812
  %839 = fadd fast float %837, %813
  %840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %799, float %803, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 0
  %842 = extractvalue %dx.types.ResRet.f32 %840, 1
  %843 = extractvalue %dx.types.ResRet.f32 %840, 2
  %844 = extractvalue %dx.types.ResRet.f32 %840, 3
  %845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %799, float %803, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = extractvalue %dx.types.ResRet.f32 %845, 3
  %850 = fmul fast float %841, %793
  %851 = fmul fast float %846, %793
  %852 = fmul fast float %848, %793
  %853 = fmul fast float %844, %793
  %854 = fadd fast float %828, %850
  %855 = fadd fast float %829, %851
  %856 = fadd fast float %830, %852
  %857 = fadd fast float %831, %853
  %858 = fmul fast float %842, %793
  %859 = fmul fast float %847, %793
  %860 = fadd fast float %834, %858
  %861 = fadd fast float %835, %859
  %862 = fmul fast float %843, %793
  %863 = fmul fast float %849, %793
  %864 = fadd fast float %838, %862
  %865 = fadd fast float %839, %863
  %866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %799, float %803, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = extractvalue %dx.types.ResRet.f32 %866, 3
  %871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %799, float %803, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  %875 = extractvalue %dx.types.ResRet.f32 %871, 3
  %876 = fmul fast float %867, %794
  %877 = fmul fast float %872, %794
  %878 = fmul fast float %874, %794
  %879 = fmul fast float %870, %794
  %880 = fadd fast float %854, %876
  %881 = fadd fast float %855, %877
  %882 = fadd fast float %856, %878
  %883 = fadd fast float %857, %879
  %884 = fmul fast float %868, %794
  %885 = fmul fast float %873, %794
  %886 = fadd fast float %860, %884
  %887 = fadd fast float %861, %885
  %888 = fmul fast float %869, %794
  %889 = fmul fast float %875, %794
  %890 = fadd fast float %864, %888
  %891 = fadd fast float %865, %889
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = fsub fast float %210, %893
  %895 = fsub fast float %736, %210
  %896 = call float @dx.op.binary.f32(i32 35, float %895, float %894)  ; FMax(a,b)
  %897 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %898 = fsub fast float %211, %897
  %899 = fsub fast float %737, %211
  %900 = call float @dx.op.binary.f32(i32 35, float %899, float %898)  ; FMax(a,b)
  %901 = call float @dx.op.binary.f32(i32 35, float %896, float %900)  ; FMax(a,b)
  %902 = extractvalue %dx.types.CBufRet.f32 %740, 3
  %903 = fmul fast float %902, %901
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %908 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %909 = extractvalue %dx.types.CBufRet.f32 %905, 3
  %910 = fsub fast float %906, %880
  %911 = fsub fast float %907, %881
  %912 = fsub fast float %908, %882
  %913 = fsub fast float %909, %883
  %914 = fmul fast float %910, %904
  %915 = fmul fast float %911, %904
  %916 = fmul fast float %912, %904
  %917 = fmul fast float %913, %904
  %918 = fadd fast float %914, %880
  %919 = fadd fast float %915, %881
  %920 = fadd fast float %916, %882
  %921 = fadd fast float %917, %883
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %925 = fsub fast float %923, %886
  %926 = fsub fast float %924, %887
  %927 = fmul fast float %925, %904
  %928 = fmul fast float %926, %904
  %929 = fadd fast float %927, %886
  %930 = fadd fast float %928, %887
  %931 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %932 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %933 = fsub fast float %931, %890
  %934 = fsub fast float %932, %891
  %935 = fmul fast float %933, %904
  %936 = fmul fast float %934, %904
  %937 = fadd fast float %935, %890
  %938 = fadd fast float %936, %891
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = fmul fast float %940, %918
  %942 = fmul fast float %940, %919
  %943 = fmul fast float %940, %920
  %944 = fmul fast float %940, %921
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = fmul fast float %946, %929
  %948 = fmul fast float %946, %930
  %949 = fadd fast float %947, %941
  %950 = fadd fast float %948, %943
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = fmul fast float %952, %937
  %954 = fmul fast float %952, %938
  %955 = fadd fast float %949, %953
  %956 = fadd fast float %950, %954
  %957 = extractvalue %dx.types.CBufRet.f32 %939, 1
  %958 = fmul fast float %957, %918
  %959 = fmul fast float %957, %919
  %960 = fmul fast float %957, %920
  %961 = fmul fast float %957, %921
  %962 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %963 = fmul fast float %962, %929
  %964 = fmul fast float %962, %930
  %965 = fadd fast float %963, %958
  %966 = fadd fast float %964, %960
  %967 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %968 = fmul fast float %967, %937
  %969 = fmul fast float %967, %938
  %970 = fadd fast float %965, %968
  %971 = fadd fast float %966, %969
  %972 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %973 = fmul fast float %972, %918
  %974 = fmul fast float %972, %919
  %975 = fmul fast float %972, %920
  %976 = fmul fast float %972, %921
  %977 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %978 = fmul fast float %977, %929
  %979 = fmul fast float %977, %930
  %980 = fadd fast float %978, %973
  %981 = fadd fast float %979, %975
  %982 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %983 = fmul fast float %982, %937
  %984 = fmul fast float %982, %938
  %985 = fadd fast float %980, %983
  %986 = fadd fast float %981, %984
  %987 = fmul fast float %974, %974
  %988 = fmul fast float %986, %986
  %989 = fmul fast float %976, %976
  %990 = fadd fast float %989, %987
  %991 = fadd fast float %990, %988
  %992 = call float @dx.op.unary.f32(i32 24, float %991)  ; Sqrt(value)
  %993 = fcmp fast ugt float %992, 0.000000e+00
  br i1 %993, label %994, label %1009, !dx.controlflow.hints !60

; <label>:994                                     ; preds = %734
  %995 = fsub fast float -0.000000e+00, %976
  %996 = fdiv fast float %995, %992
  %997 = fsub fast float -0.000000e+00, %974
  %998 = fdiv fast float %997, %992
  %999 = fdiv fast float %986, %992
  %1000 = fmul fast float %985, 0x3FE279A760000000
  %1001 = fmul fast float %998, %974
  %1002 = fmul fast float %999, %986
  %1003 = fmul fast float %996, %976
  %1004 = fadd fast float %1001, %1003
  %1005 = fsub fast float %1004, %1002
  %1006 = call float @dx.op.unary.f32(i32 6, float %1005)  ; FAbs(value)
  %1007 = fadd fast float %1006, 0x3DDB7CDFE0000000
  %1008 = fdiv fast float %1000, %1007
  br label %1009

; <label>:1009                                    ; preds = %994, %734
  %1010 = phi float [ %1008, %994 ], [ 1.000000e+00, %734 ]
  %1011 = fmul fast float %959, %959
  %1012 = fmul fast float %971, %971
  %1013 = fmul fast float %961, %961
  %1014 = fadd fast float %1013, %1011
  %1015 = fadd fast float %1014, %1012
  %1016 = call float @dx.op.unary.f32(i32 24, float %1015)  ; Sqrt(value)
  %1017 = fcmp fast ugt float %1016, 0.000000e+00
  br i1 %1017, label %1018, label %1033, !dx.controlflow.hints !60

; <label>:1018                                    ; preds = %1009
  %1019 = fsub fast float -0.000000e+00, %961
  %1020 = fdiv fast float %1019, %1016
  %1021 = fsub fast float -0.000000e+00, %959
  %1022 = fdiv fast float %1021, %1016
  %1023 = fdiv fast float %971, %1016
  %1024 = fmul fast float %970, 0x3FE279A760000000
  %1025 = fmul fast float %1022, %959
  %1026 = fmul fast float %1023, %971
  %1027 = fmul fast float %1020, %961
  %1028 = fadd fast float %1025, %1027
  %1029 = fsub fast float %1028, %1026
  %1030 = call float @dx.op.unary.f32(i32 6, float %1029)  ; FAbs(value)
  %1031 = fadd fast float %1030, 0x3DDB7CDFE0000000
  %1032 = fdiv fast float %1024, %1031
  br label %1033

; <label>:1033                                    ; preds = %1018, %1009
  %1034 = phi float [ %1032, %1018 ], [ 1.000000e+00, %1009 ]
  %1035 = call float @dx.op.binary.f32(i32 36, float %1034, float %1010)  ; FMin(a,b)
  %1036 = fmul fast float %942, %942
  %1037 = fmul fast float %956, %956
  %1038 = fmul fast float %944, %944
  %1039 = fadd fast float %1038, %1036
  %1040 = fadd fast float %1039, %1037
  %1041 = call float @dx.op.unary.f32(i32 24, float %1040)  ; Sqrt(value)
  %1042 = fcmp fast ugt float %1041, 0.000000e+00
  br i1 %1042, label %1043, label %1058, !dx.controlflow.hints !60

; <label>:1043                                    ; preds = %1033
  %1044 = fsub fast float -0.000000e+00, %944
  %1045 = fdiv fast float %1044, %1041
  %1046 = fsub fast float -0.000000e+00, %942
  %1047 = fdiv fast float %1046, %1041
  %1048 = fdiv fast float %956, %1041
  %1049 = fmul fast float %955, 0x3FE279A760000000
  %1050 = fmul fast float %1047, %942
  %1051 = fmul fast float %1048, %956
  %1052 = fmul fast float %1045, %944
  %1053 = fadd fast float %1050, %1052
  %1054 = fsub fast float %1053, %1051
  %1055 = call float @dx.op.unary.f32(i32 6, float %1054)  ; FAbs(value)
  %1056 = fadd fast float %1055, 0x3DDB7CDFE0000000
  %1057 = fdiv fast float %1049, %1056
  br label %1058

; <label>:1058                                    ; preds = %1043, %1033
  %1059 = phi float [ %1057, %1043 ], [ 1.000000e+00, %1033 ]
  %1060 = call float @dx.op.binary.f32(i32 36, float %1059, float %1035)  ; FMin(a,b)
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1062 = fcmp fast olt float %1061, 1.000000e+00
  br i1 %1062, label %1063, label %1073, !dx.controlflow.hints !61

; <label>:1063                                    ; preds = %1058
  %1064 = fmul fast float %1061, %942
  %1065 = fmul fast float %1061, %956
  %1066 = fmul fast float %1061, %944
  %1067 = fmul fast float %1061, %959
  %1068 = fmul fast float %1061, %971
  %1069 = fmul fast float %1061, %961
  %1070 = fmul fast float %1061, %974
  %1071 = fmul fast float %1061, %986
  %1072 = fmul fast float %1061, %976
  br label %1073

; <label>:1073                                    ; preds = %1063, %1058
  %1074 = phi float [ %1070, %1063 ], [ %974, %1058 ]
  %1075 = phi float [ %1071, %1063 ], [ %986, %1058 ]
  %1076 = phi float [ %1072, %1063 ], [ %976, %1058 ]
  %1077 = phi float [ %1067, %1063 ], [ %959, %1058 ]
  %1078 = phi float [ %1068, %1063 ], [ %971, %1058 ]
  %1079 = phi float [ %1069, %1063 ], [ %961, %1058 ]
  %1080 = phi float [ %1064, %1063 ], [ %942, %1058 ]
  %1081 = phi float [ %1065, %1063 ], [ %956, %1058 ]
  %1082 = phi float [ %1066, %1063 ], [ %944, %1058 ]
  %1083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %955)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %970)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %985)  ; FMax(a,b)
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = fcmp fast ogt float %1087, 0.000000e+00
  %1089 = fcmp fast oge float %743, 0.000000e+00
  %1090 = and i1 %1089, %1088
  %1091 = fcmp fast ole float %743, 1.000000e+00
  %1092 = and i1 %1091, %1090
  %1093 = fcmp fast oge float %744, 0.000000e+00
  %1094 = and i1 %1093, %1092
  %1095 = fcmp fast ole float %744, 1.000000e+00
  %1096 = and i1 %1095, %1094
  br i1 %1096, label %1097, label %1242, !dx.controlflow.hints !62

; <label>:1097                                    ; preds = %1073
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1100 = extractvalue %dx.types.CBufRet.f32 %1098, 3
  %1101 = fmul fast float %1099, %743
  %1102 = fmul fast float %1100, %744
  %1103 = call float @dx.op.unary.f32(i32 27, float %1101)  ; Round_ni(value)
  %1104 = call float @dx.op.unary.f32(i32 27, float %1102)  ; Round_ni(value)
  %1105 = fptosi float %1103 to i32
  %1106 = fptosi float %1104 to i32
  %1107 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1105, i32 %1106, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 65535
  %1110 = lshr i32 %1108, 16
  %1111 = icmp eq i32 %1109, 65535
  br i1 %1111, label %1148, label %1112, !dx.controlflow.hints !63

; <label>:1112                                    ; preds = %1097
  %1113 = extractvalue %dx.types.CBufRet.f32 %1086, 1
  %1114 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1115 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1116 = fmul fast float %1114, %743
  %1117 = fmul fast float %1115, %744
  %1118 = fmul fast float %1116, 1.250000e-01
  %1119 = fmul fast float %1117, 1.250000e-01
  %1120 = call float @dx.op.unary.f32(i32 27, float %1118)  ; Round_ni(value)
  %1121 = call float @dx.op.unary.f32(i32 27, float %1119)  ; Round_ni(value)
  %1122 = fmul fast float %1120, 8.000000e+00
  %1123 = fmul fast float %1121, 8.000000e+00
  %1124 = and i32 %1108, 255
  %1125 = lshr i32 %1108, 8
  %1126 = and i32 %1125, 255
  %1127 = mul nuw nsw i32 %1124, 9
  %1128 = uitofp i32 %1127 to float
  %1129 = mul nuw nsw i32 %1126, 9
  %1130 = uitofp i32 %1129 to float
  %1131 = fadd fast float %1128, 5.000000e-01
  %1132 = fadd fast float %1131, %1116
  %1133 = fsub fast float %1132, %1122
  %1134 = fadd fast float %1130, 5.000000e-01
  %1135 = fadd fast float %1134, %1117
  %1136 = fsub fast float %1135, %1123
  %1137 = fdiv fast float %1133, %1087
  %1138 = fdiv fast float %1136, %1113
  %1139 = fmul fast float %771, 4.375000e-01
  %1140 = fadd fast float %1139, 3.125000e-02
  %1141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1137, float %1138, float %1140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = fadd fast float %1142, %1083
  %1146 = fadd fast float %1143, %1084
  %1147 = fadd fast float %1144, %1085
  br label %1148

; <label>:1148                                    ; preds = %1112, %1097
  %1149 = phi float [ %1147, %1112 ], [ %1085, %1097 ]
  %1150 = phi float [ %1146, %1112 ], [ %1084, %1097 ]
  %1151 = phi float [ %1145, %1112 ], [ %1083, %1097 ]
  %1152 = icmp eq i32 %1110, 65535
  br i1 %1152, label %1242, label %1153, !dx.controlflow.hints !64

; <label>:1153                                    ; preds = %1148
  %1154 = extractvalue %dx.types.CBufRet.f32 %1086, 1
  %1155 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1156 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1157 = fmul fast float %1155, %743
  %1158 = fmul fast float %1156, %744
  %1159 = fmul fast float %1157, 1.250000e-01
  %1160 = fmul fast float %1158, 1.250000e-01
  %1161 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1162 = call float @dx.op.unary.f32(i32 27, float %1160)  ; Round_ni(value)
  %1163 = fmul fast float %1161, 8.000000e+00
  %1164 = fmul fast float %1162, 8.000000e+00
  %1165 = fsub fast float %1157, %1163
  %1166 = fsub fast float %1158, %1164
  %1167 = fadd fast float %1165, 5.000000e-01
  %1168 = fadd fast float %1166, 5.000000e-01
  %1169 = and i32 %1110, 255
  %1170 = lshr i32 %1108, 24
  %1171 = mul nuw nsw i32 %1169, 9
  %1172 = uitofp i32 %1171 to float
  %1173 = mul nuw nsw i32 %1170, 9
  %1174 = uitofp i32 %1173 to float
  %1175 = fadd fast float %1167, %1172
  %1176 = fadd fast float %1168, %1174
  %1177 = fdiv fast float %1175, %1087
  %1178 = fdiv fast float %1176, %1154
  %1179 = fmul fast float %771, 4.375000e-01
  %1180 = fadd fast float %1179, 3.125000e-02
  %1181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1177, float %1178, float %1180, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.ResRet.f32 %1181, 2
  %1185 = fadd fast float %1179, 5.312500e-01
  %1186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1177, float %1178, float %1185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.ResRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.ResRet.f32 %1186, 2
  %1190 = fmul fast float %1187, 2.000000e+00
  %1191 = fmul fast float %1188, 2.000000e+00
  %1192 = fmul fast float %1189, 2.000000e+00
  %1193 = fadd fast float %1190, -1.000000e+00
  %1194 = fadd fast float %1191, -1.000000e+00
  %1195 = fadd fast float %1192, -1.000000e+00
  %1196 = fmul fast float %1193, %1193
  %1197 = fmul fast float %1194, %1194
  %1198 = fadd fast float %1196, %1197
  %1199 = fmul fast float %1195, %1195
  %1200 = fadd fast float %1198, %1199
  %1201 = call float @dx.op.unary.f32(i32 24, float %1200)  ; Sqrt(value)
  %1202 = fcmp fast ogt float %1201, 0.000000e+00
  br i1 %1202, label %1203, label %1207, !dx.controlflow.hints !65

; <label>:1203                                    ; preds = %1153
  %1204 = fdiv fast float %1193, %1201
  %1205 = fdiv fast float %1194, %1201
  %1206 = fdiv fast float %1195, %1201
  br label %1207

; <label>:1207                                    ; preds = %1203, %1153
  %1208 = phi float [ %1204, %1203 ], [ 0.000000e+00, %1153 ]
  %1209 = phi float [ %1205, %1203 ], [ 0.000000e+00, %1153 ]
  %1210 = phi float [ %1206, %1203 ], [ 0.000000e+00, %1153 ]
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1214 = fsub fast float %210, %1212
  %1215 = fsub fast float %211, %1213
  %1216 = fmul fast float %1214, %1214
  %1217 = fmul fast float %1215, %1215
  %1218 = fadd fast float %1216, %1217
  %1219 = call float @dx.op.unary.f32(i32 24, float %1218)  ; Sqrt(value)
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.CBufRet.f32 %1220, 1
  %1223 = fsub fast float %1219, %1221
  %1224 = fdiv fast float %1223, %1222
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = fmul fast float %1225, 2.000000e+00
  %1227 = fsub fast float 3.000000e+00, %1226
  %1228 = fmul fast float %1225, %1225
  %1229 = fmul fast float %1228, %1227
  %1230 = call float @dx.op.dot3.f32(i32 55, float %1208, float %1209, float %1210, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1231 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1230)  ; FMax(a,b)
  %1232 = fmul fast float %1231, 0x400C5BF8A0000000
  %1233 = fmul fast float %1229, %1182
  %1234 = fmul fast float %1233, %1232
  %1235 = fadd fast float %1234, %1151
  %1236 = fmul fast float %1229, %1183
  %1237 = fmul fast float %1236, %1232
  %1238 = fadd fast float %1237, %1150
  %1239 = fmul fast float %1229, %1184
  %1240 = fmul fast float %1239, %1232
  %1241 = fadd fast float %1240, %1149
  br label %1242

; <label>:1242                                    ; preds = %1207, %1148, %1073
  %1243 = phi float [ %1241, %1207 ], [ %1149, %1148 ], [ %1085, %1073 ]
  %1244 = phi float [ %1238, %1207 ], [ %1150, %1148 ], [ %1084, %1073 ]
  %1245 = phi float [ %1235, %1207 ], [ %1151, %1148 ], [ %1083, %1073 ]
  %1246 = fcmp fast ogt float %212, %767
  %1247 = and i1 %1089, %1246
  %1248 = and i1 %1091, %1247
  %1249 = and i1 %1093, %1248
  %1250 = and i1 %1095, %1249
  br i1 %1250, label %1251, label %1308, !dx.controlflow.hints !66

; <label>:1251                                    ; preds = %1242
  %1252 = fmul fast float %769, 0x3FC24924A0000000
  %1253 = fsub fast float %212, %767
  %1254 = fdiv fast float %1253, %1252
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1262 = fsub fast float %1257, %1245
  %1263 = fsub fast float %1259, %1080
  %1264 = fsub fast float %1260, %1081
  %1265 = fsub fast float %1261, %1082
  %1266 = fmul fast float %1262, %1255
  %1267 = fmul fast float %1263, %1255
  %1268 = fmul fast float %1264, %1255
  %1269 = fmul fast float %1265, %1255
  %1270 = fadd fast float %1266, %1245
  %1271 = fadd fast float %1267, %1080
  %1272 = fadd fast float %1268, %1081
  %1273 = fadd fast float %1269, %1082
  %1274 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1279 = fsub fast float %1274, %1244
  %1280 = fsub fast float %1276, %1077
  %1281 = fsub fast float %1277, %1078
  %1282 = fsub fast float %1278, %1079
  %1283 = fmul fast float %1279, %1255
  %1284 = fmul fast float %1280, %1255
  %1285 = fmul fast float %1281, %1255
  %1286 = fmul fast float %1282, %1255
  %1287 = fadd fast float %1283, %1244
  %1288 = fadd fast float %1284, %1077
  %1289 = fadd fast float %1285, %1078
  %1290 = fadd fast float %1286, %1079
  %1291 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1296 = fsub fast float %1291, %1243
  %1297 = fsub fast float %1293, %1074
  %1298 = fsub fast float %1294, %1075
  %1299 = fsub fast float %1295, %1076
  %1300 = fmul fast float %1296, %1255
  %1301 = fmul fast float %1297, %1255
  %1302 = fmul fast float %1298, %1255
  %1303 = fmul fast float %1299, %1255
  %1304 = fadd fast float %1300, %1243
  %1305 = fadd fast float %1301, %1074
  %1306 = fadd fast float %1302, %1075
  %1307 = fadd fast float %1303, %1076
  br label %1308

; <label>:1308                                    ; preds = %1251, %1242
  %1309 = phi float [ %1304, %1251 ], [ %1243, %1242 ]
  %1310 = phi float [ %1305, %1251 ], [ %1074, %1242 ]
  %1311 = phi float [ %1306, %1251 ], [ %1075, %1242 ]
  %1312 = phi float [ %1307, %1251 ], [ %1076, %1242 ]
  %1313 = phi float [ %1287, %1251 ], [ %1244, %1242 ]
  %1314 = phi float [ %1288, %1251 ], [ %1077, %1242 ]
  %1315 = phi float [ %1289, %1251 ], [ %1078, %1242 ]
  %1316 = phi float [ %1290, %1251 ], [ %1079, %1242 ]
  %1317 = phi float [ %1270, %1251 ], [ %1245, %1242 ]
  %1318 = phi float [ %1271, %1251 ], [ %1080, %1242 ]
  %1319 = phi float [ %1272, %1251 ], [ %1081, %1242 ]
  %1320 = phi float [ %1273, %1251 ], [ %1082, %1242 ]
  %1321 = extractvalue %dx.types.CBufRet.f32 %892, 3
  %1322 = fmul fast float %1321, %1317
  %1323 = fmul fast float %1321, %1313
  %1324 = fmul fast float %1321, %1309
  %1325 = fmul fast float %1318, 1.500000e+00
  %1326 = fmul fast float %1325, %1321
  %1327 = fmul fast float %1319, 1.500000e+00
  %1328 = fmul fast float %1327, %1321
  %1329 = fmul fast float %1320, 1.500000e+00
  %1330 = fmul fast float %1329, %1321
  %1331 = fmul fast float %1314, 1.500000e+00
  %1332 = fmul fast float %1331, %1321
  %1333 = fmul fast float %1315, 1.500000e+00
  %1334 = fmul fast float %1333, %1321
  %1335 = fmul fast float %1316, 1.500000e+00
  %1336 = fmul fast float %1335, %1321
  %1337 = fmul fast float %1310, 1.500000e+00
  %1338 = fmul fast float %1337, %1321
  %1339 = fmul fast float %1311, 1.500000e+00
  %1340 = fmul fast float %1339, %1321
  %1341 = fmul fast float %1312, 1.500000e+00
  %1342 = fmul fast float %1341, %1321
  %1343 = fsub fast float %732, %1322
  %1344 = fmul fast float %1343, %630
  %1345 = fadd fast float %1344, %1322
  %1346 = fsub fast float %731, %1326
  %1347 = fmul fast float %1346, %630
  %1348 = fadd fast float %1347, %1326
  %1349 = fsub fast float %730, %1328
  %1350 = fmul fast float %1349, %630
  %1351 = fadd fast float %1350, %1328
  %1352 = fsub fast float %729, %1330
  %1353 = fmul fast float %1352, %630
  %1354 = fadd fast float %1353, %1330
  %1355 = fmul fast float %728, %630
  %1356 = fmul fast float %727, %630
  %1357 = fmul fast float %726, %630
  %1358 = fmul fast float %725, %630
  %1359 = fmul fast float %724, %630
  %1360 = fsub fast float %723, %1323
  %1361 = fmul fast float %1360, %630
  %1362 = fadd fast float %1361, %1323
  %1363 = fsub fast float %722, %1332
  %1364 = fmul fast float %1363, %630
  %1365 = fadd fast float %1364, %1332
  %1366 = fsub fast float %721, %1334
  %1367 = fmul fast float %1366, %630
  %1368 = fadd fast float %1367, %1334
  %1369 = fsub fast float %720, %1336
  %1370 = fmul fast float %1369, %630
  %1371 = fadd fast float %1370, %1336
  %1372 = fmul fast float %719, %630
  %1373 = fmul fast float %718, %630
  %1374 = fmul fast float %717, %630
  %1375 = fmul fast float %716, %630
  %1376 = fmul fast float %715, %630
  %1377 = fsub fast float %714, %1324
  %1378 = fmul fast float %1377, %630
  %1379 = fadd fast float %1378, %1324
  %1380 = fsub fast float %713, %1338
  %1381 = fmul fast float %1380, %630
  %1382 = fadd fast float %1381, %1338
  %1383 = fsub fast float %712, %1340
  %1384 = fmul fast float %1383, %630
  %1385 = fadd fast float %1384, %1340
  %1386 = fsub fast float %711, %1342
  %1387 = fmul fast float %1386, %630
  %1388 = fadd fast float %1387, %1342
  %1389 = fmul fast float %710, %630
  %1390 = fmul fast float %709, %630
  %1391 = fmul fast float %708, %630
  %1392 = fmul fast float %707, %630
  %1393 = fmul fast float %706, %630
  br label %1394

; <label>:1394                                    ; preds = %1308, %705
  %1395 = phi float [ %1393, %1308 ], [ %706, %705 ]
  %1396 = phi float [ %1392, %1308 ], [ %707, %705 ]
  %1397 = phi float [ %1391, %1308 ], [ %708, %705 ]
  %1398 = phi float [ %1390, %1308 ], [ %709, %705 ]
  %1399 = phi float [ %1389, %1308 ], [ %710, %705 ]
  %1400 = phi float [ %1388, %1308 ], [ %711, %705 ]
  %1401 = phi float [ %1385, %1308 ], [ %712, %705 ]
  %1402 = phi float [ %1382, %1308 ], [ %713, %705 ]
  %1403 = phi float [ %1379, %1308 ], [ %714, %705 ]
  %1404 = phi float [ %1376, %1308 ], [ %715, %705 ]
  %1405 = phi float [ %1375, %1308 ], [ %716, %705 ]
  %1406 = phi float [ %1374, %1308 ], [ %717, %705 ]
  %1407 = phi float [ %1373, %1308 ], [ %718, %705 ]
  %1408 = phi float [ %1372, %1308 ], [ %719, %705 ]
  %1409 = phi float [ %1371, %1308 ], [ %720, %705 ]
  %1410 = phi float [ %1368, %1308 ], [ %721, %705 ]
  %1411 = phi float [ %1365, %1308 ], [ %722, %705 ]
  %1412 = phi float [ %1362, %1308 ], [ %723, %705 ]
  %1413 = phi float [ %1359, %1308 ], [ %724, %705 ]
  %1414 = phi float [ %1358, %1308 ], [ %725, %705 ]
  %1415 = phi float [ %1357, %1308 ], [ %726, %705 ]
  %1416 = phi float [ %1356, %1308 ], [ %727, %705 ]
  %1417 = phi float [ %1355, %1308 ], [ %728, %705 ]
  %1418 = phi float [ %1354, %1308 ], [ %729, %705 ]
  %1419 = phi float [ %1351, %1308 ], [ %730, %705 ]
  %1420 = phi float [ %1348, %1308 ], [ %731, %705 ]
  %1421 = phi float [ %1345, %1308 ], [ %732, %705 ]
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 2
  %1424 = fmul fast float %1423, %1423
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.CBufRet.f32 %1425, 2
  %1429 = fmul fast float %1421, 0x3FD20DD760000000
  %1430 = fmul fast float %1428, %1419
  %1431 = fmul fast float %1428, %1428
  %1432 = fmul fast float %1431, 0x3FEE471020000000
  %1433 = fadd fast float %1432, 0xBFD42F6020000000
  %1434 = fmul fast float %1433, %1415
  %1435 = fmul fast float %1426, %1418
  %1436 = fmul fast float %1427, %1420
  %1437 = fmul fast float %1428, 0x3FF17B1420000000
  %1438 = fmul fast float %1424, %1414
  %1439 = fmul fast float %1438, %1426
  %1440 = fmul fast float %1439, %1437
  %1441 = fmul fast float %1424, %1416
  %1442 = fmul fast float %1441, %1427
  %1443 = fmul fast float %1442, %1437
  %1444 = fmul fast float %1426, %1426
  %1445 = fmul fast float %1427, %1427
  %1446 = fsub fast float %1444, %1445
  %1447 = fmul fast float %1413, 0x3FE17B1420000000
  %1448 = fmul fast float %1447, %1446
  %1449 = fmul fast float %1417, 0x3FF17B1420000000
  %1450 = fmul fast float %1449, %1427
  %1451 = fmul fast float %1450, %1426
  %1452 = fadd fast float %1448, %1451
  %1453 = fadd fast float %1452, %1434
  %1454 = fmul fast float %1453, %1424
  %1455 = fsub fast float %1436, %1430
  %1456 = fadd fast float %1455, %1435
  %1457 = fmul fast float %1456, 0x3FDF454380000000
  %1458 = fmul fast float %1457, %1423
  %1459 = fsub fast float %1429, %1440
  %1460 = fsub fast float %1459, %1443
  %1461 = fadd fast float %1460, %1454
  %1462 = fadd fast float %1461, %1458
  %1463 = fmul fast float %1412, 0x3FD20DD760000000
  %1464 = fmul fast float %1428, %1410
  %1465 = fmul fast float %1433, %1406
  %1466 = fmul fast float %1426, %1409
  %1467 = fmul fast float %1427, %1411
  %1468 = fmul fast float %1424, %1405
  %1469 = fmul fast float %1468, %1426
  %1470 = fmul fast float %1469, %1437
  %1471 = fmul fast float %1424, %1407
  %1472 = fmul fast float %1471, %1427
  %1473 = fmul fast float %1472, %1437
  %1474 = fmul fast float %1404, 0x3FE17B1420000000
  %1475 = fmul fast float %1474, %1446
  %1476 = fmul fast float %1408, 0x3FF17B1420000000
  %1477 = fmul fast float %1476, %1427
  %1478 = fmul fast float %1477, %1426
  %1479 = fadd fast float %1475, %1478
  %1480 = fadd fast float %1479, %1465
  %1481 = fmul fast float %1480, %1424
  %1482 = fsub fast float %1467, %1464
  %1483 = fadd fast float %1482, %1466
  %1484 = fmul fast float %1483, 0x3FDF454380000000
  %1485 = fmul fast float %1484, %1423
  %1486 = fsub fast float %1463, %1470
  %1487 = fsub fast float %1486, %1473
  %1488 = fadd fast float %1487, %1481
  %1489 = fadd fast float %1488, %1485
  %1490 = fmul fast float %1403, 0x3FD20DD760000000
  %1491 = fmul fast float %1428, %1401
  %1492 = fmul fast float %1433, %1397
  %1493 = fmul fast float %1426, %1400
  %1494 = fmul fast float %1427, %1402
  %1495 = fmul fast float %1424, %1396
  %1496 = fmul fast float %1495, %1426
  %1497 = fmul fast float %1496, %1437
  %1498 = fmul fast float %1424, %1398
  %1499 = fmul fast float %1498, %1427
  %1500 = fmul fast float %1499, %1437
  %1501 = fmul fast float %1395, 0x3FE17B1420000000
  %1502 = fmul fast float %1501, %1446
  %1503 = fmul fast float %1399, 0x3FF17B1420000000
  %1504 = fmul fast float %1503, %1427
  %1505 = fmul fast float %1504, %1426
  %1506 = fadd fast float %1502, %1505
  %1507 = fadd fast float %1506, %1492
  %1508 = fmul fast float %1507, %1424
  %1509 = fsub fast float %1494, %1491
  %1510 = fadd fast float %1509, %1493
  %1511 = fmul fast float %1510, 0x3FDF454380000000
  %1512 = fmul fast float %1511, %1423
  %1513 = fsub fast float %1490, %1497
  %1514 = fsub fast float %1513, %1500
  %1515 = fadd fast float %1514, %1508
  %1516 = fadd fast float %1515, %1512
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 3
  %1519 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %1520 = fmul fast float %1519, %1518
  %1521 = fmul fast float %1520, %1462
  %1522 = fmul fast float %1520, %1489
  %1523 = fmul fast float %1520, %1516
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 3
  %1526 = fcmp fast une float %1525, 0.000000e+00
  %1527 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1528 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1529 = extractvalue %dx.types.CBufRet.f32 %1524, 2
  br i1 %1526, label %1530, label %1552, !dx.controlflow.hints !67

; <label>:1530                                    ; preds = %1394
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 0
  %1533 = extractvalue %dx.types.CBufRet.f32 %1531, 1
  %1534 = extractvalue %dx.types.CBufRet.f32 %1531, 2
  %1535 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1528, float %1529, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %1536 = fcmp fast ogt float %581, 0.000000e+00
  %1537 = select i1 %1536, float 1.000000e+00, float -1.000000e+00
  %1538 = fmul fast float %1537, 5.000000e-01
  %1539 = fmul fast float %1538, %1535
  %1540 = fmul fast float %1537, %581
  %1541 = fadd fast float %1539, 4.921875e-01
  %1542 = fadd fast float %1540, -3.125000e-02
  %1543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %18, float %1541, float 0x3FB25F3060000000, float %1542, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1544 = extractvalue %dx.types.ResRet.f32 %1543, 0
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1547 = fmul fast float %1544, 0x400921FB60000000
  %1548 = fmul fast float %1547, %1546
  %1549 = fmul fast float %1548, %1532
  %1550 = fmul fast float %1548, %1533
  %1551 = fmul fast float %1548, %1534
  br label %1552

; <label>:1552                                    ; preds = %1530, %1394
  %1553 = phi float [ %1549, %1530 ], [ 0.000000e+00, %1394 ]
  %1554 = phi float [ %1550, %1530 ], [ 0.000000e+00, %1394 ]
  %1555 = phi float [ %1551, %1530 ], [ 0.000000e+00, %1394 ]
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = fmul fast float %1557, %1527
  %1559 = fmul fast float %1557, %1528
  %1560 = fmul fast float %1557, %1529
  %1561 = fadd fast float %1558, %210
  %1562 = fadd fast float %1559, %211
  %1563 = fadd fast float %1560, %212
  %1564 = fsub fast float %1561, %226
  %1565 = fsub fast float %1562, %227
  %1566 = fmul fast float %1564, %231
  %1567 = fmul fast float %1565, %232
  %1568 = call float @dx.op.binary.f32(i32 36, float %1566, float %1567)  ; FMin(a,b)
  %1569 = fcmp fast olt float %1568, 0.000000e+00
  %1570 = call float @dx.op.binary.f32(i32 35, float %1566, float %1567)  ; FMax(a,b)
  %1571 = fcmp fast ogt float %1570, 1.000000e+00
  %1572 = or i1 %1569, %1571
  %1573 = fcmp fast olt float %1563, %240
  %1574 = or i1 %1572, %1573
  %1575 = fcmp fast ogt float %1563, %247
  %1576 = or i1 %1574, %1575
  br i1 %1576, label %1591, label %1577, !dx.controlflow.hints !40

; <label>:1577                                    ; preds = %1552
  %1578 = fsub fast float 1.000000e+00, %1567
  %1579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1566, float %1578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = extractvalue %dx.types.ResRet.f32 %1579, 3
  %1584 = fcmp fast oeq float %1580, 0.000000e+00
  %1585 = fcmp ule float %1563, %1582
  %1586 = fcmp uge float %1563, %1581
  %1587 = or i1 %1586, %1585
  %1588 = or i1 %1584, %1587
  %1589 = zext i1 %1588 to i32
  %1590 = xor i32 %1589, 1
  br label %1591

; <label>:1591                                    ; preds = %1577, %1552
  %1592 = phi float [ %1580, %1577 ], [ %197, %1552 ]
  %1593 = phi float [ %1581, %1577 ], [ %198, %1552 ]
  %1594 = phi float [ %1582, %1577 ], [ %199, %1552 ]
  %1595 = phi float [ %1583, %1577 ], [ %200, %1552 ]
  %1596 = phi i32 [ %1590, %1577 ], [ 0, %1552 ]
  %1597 = icmp eq i32 %1596, 0
  br i1 %338, label %1646, label %1598, !dx.controlflow.hints !45

; <label>:1598                                    ; preds = %1591
  %1599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1600 = extractvalue %dx.types.CBufRet.f32 %1599, 0
  %1601 = fsub fast float -0.000000e+00, %1561
  %1602 = fsub fast float -0.000000e+00, %1562
  %1603 = fsub fast float %1600, %1563
  %1604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %1605 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = fdiv fast float 1.000000e+00, %1605
  %1607 = fmul fast float %1606, %1604
  %1608 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1607)  ; FMax(a,b)
  %1609 = fcmp fast olt float %1529, 0.000000e+00
  %1610 = call float @dx.op.binary.f32(i32 36, float %1557, float %1608)  ; FMin(a,b)
  br i1 %1609, label %1612, label %1611, !dx.controlflow.hints !46

; <label>:1611                                    ; preds = %1598
  br label %1612

; <label>:1612                                    ; preds = %1611, %1598
  %1613 = phi float [ 0.000000e+00, %1611 ], [ %1610, %1598 ]
  %1614 = phi float [ %1610, %1611 ], [ %1557, %1598 ]
  %1615 = phi float [ %1610, %1611 ], [ 0.000000e+00, %1598 ]
  %1616 = phi float [ %1557, %1611 ], [ %1610, %1598 ]
  %1617 = fsub fast float %1614, %1613
  %1618 = extractvalue %dx.types.CBufRet.f32 %1599, 1
  %1619 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1618)  ; FMin(a,b)
  %1620 = fsub fast float %1563, %1600
  %1621 = fmul fast float %1619, 0x3FF7154760000000
  %1622 = fmul fast float %1621, %1620
  %1623 = call float @dx.op.unary.f32(i32 21, float %1622)  ; Exp(value)
  %1624 = fmul fast float %1529, 0x3FF7154760000000
  %1625 = fmul fast float %1624, %1616
  %1626 = fmul fast float %1625, %1619
  %1627 = call float @dx.op.unary.f32(i32 21, float %1626)  ; Exp(value)
  %1628 = fmul fast float %1624, %1615
  %1629 = fmul fast float %1628, %1619
  %1630 = call float @dx.op.unary.f32(i32 21, float %1629)  ; Exp(value)
  %1631 = fsub fast float %1627, %1630
  %1632 = fmul fast float %1631, %1623
  %1633 = fmul fast float %1619, %1529
  %1634 = fdiv fast float %1632, %1633
  %1635 = fadd fast float %1617, %1634
  %1636 = call float @dx.op.unary.f32(i32 6, float %1529)  ; FAbs(value)
  %1637 = fcmp fast olt float %1636, 0x3F0FFB4800000000
  %1638 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1620)  ; FMax(a,b)
  %1639 = fmul fast float %1638, 0x3FF7154760000000
  %1640 = fmul fast float %1639, %1618
  %1641 = call float @dx.op.unary.f32(i32 21, float %1640)  ; Exp(value)
  %1642 = fmul fast float %1641, %1557
  %1643 = select i1 %1637, float %1642, float %1635
  %1644 = extractvalue %dx.types.CBufRet.f32 %1422, 1
  %1645 = fmul fast float %1643, %1644
  br label %1646

; <label>:1646                                    ; preds = %1612, %1591
  %1647 = phi float [ %1645, %1612 ], [ 0.000000e+00, %1591 ]
  br i1 %1597, label %1773, label %1648, !dx.controlflow.hints !47

; <label>:1648                                    ; preds = %1646
  %1649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.i32 %1649, 0
  %1651 = icmp ne i32 %1650, 0
  %1652 = zext i1 %1651 to i32
  %1653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.i32 %1653, 0
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1689, label %1656

; <label>:1656                                    ; preds = %1648
  br label %1657

; <label>:1657                                    ; preds = %1684, %1656
  %1658 = phi i32 [ %1685, %1684 ], [ 0, %1656 ]
  %1659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1658, i32 0)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.f32 %1659, 0
  %1661 = extractvalue %dx.types.ResRet.f32 %1659, 1
  %1662 = extractvalue %dx.types.ResRet.f32 %1659, 2
  %1663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1658, i32 16)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.ResRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.ResRet.f32 %1663, 2
  %1667 = fsub fast float %1660, %1664
  %1668 = fsub fast float %1661, %1665
  %1669 = fsub fast float %1662, %1666
  %1670 = fadd fast float %1664, %1660
  %1671 = fadd fast float %1665, %1661
  %1672 = fadd fast float %1666, %1662
  %1673 = fcmp fast olt float %1561, %1667
  %1674 = fcmp fast olt float %1562, %1668
  %1675 = fcmp fast olt float %1563, %1669
  %1676 = or i1 %1673, %1674
  %1677 = or i1 %1675, %1676
  %1678 = fcmp fast ogt float %1561, %1670
  %1679 = fcmp fast ogt float %1562, %1671
  %1680 = fcmp fast ogt float %1563, %1672
  %1681 = or i1 %1678, %1679
  %1682 = or i1 %1680, %1681
  %1683 = or i1 %1677, %1682
  br i1 %1683, label %1684, label %1687, !dx.controlflow.hints !48

; <label>:1684                                    ; preds = %1657
  %1685 = add nuw i32 %1658, 1
  %1686 = icmp ult i32 %1685, %1654
  br i1 %1686, label %1657, label %1687

; <label>:1687                                    ; preds = %1684, %1657
  %1688 = phi i32 [ 255, %1684 ], [ %1658, %1657 ]
  br label %1689

; <label>:1689                                    ; preds = %1687, %1648
  %1690 = phi i32 [ 255, %1648 ], [ %1688, %1687 ]
  %1691 = icmp eq i32 %1690, 255
  br i1 %1691, label %1697, label %1692, !dx.controlflow.hints !49

; <label>:1692                                    ; preds = %1689
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1690, i32 156)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = icmp ne i32 %1694, 0
  %1696 = zext i1 %1695 to i32
  br label %1697

; <label>:1697                                    ; preds = %1692, %1689
  %1698 = phi i32 [ %1696, %1692 ], [ %1652, %1689 ]
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1700, label %1769, !dx.controlflow.hints !50

; <label>:1700                                    ; preds = %1697
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 3
  %1703 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 2
  %1706 = extractvalue %dx.types.CBufRet.f32 %1704, 3
  br i1 %1691, label %1717, label %1707, !dx.controlflow.hints !51

; <label>:1707                                    ; preds = %1700
  %1708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1690, i32 60)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1690, i32 64)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.f32 %1710, 0
  %1712 = extractvalue %dx.types.ResRet.f32 %1710, 1
  %1713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1690, i32 72)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1690, i32 96)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.f32 %1715, 0
  br label %1717

; <label>:1717                                    ; preds = %1707, %1700
  %1718 = phi float [ %1709, %1707 ], [ %246, %1700 ]
  %1719 = phi float [ %1714, %1707 ], [ %244, %1700 ]
  %1720 = phi float [ %1716, %1707 ], [ %1703, %1700 ]
  %1721 = phi float [ %1711, %1707 ], [ %1705, %1700 ]
  %1722 = phi float [ %1712, %1707 ], [ %1706, %1700 ]
  %1723 = call float @dx.op.binary.f32(i32 35, float %1592, float 0.000000e+00)  ; FMax(a,b)
  %1724 = call float @dx.op.binary.f32(i32 36, float %1723, float 1.000000e+00)  ; FMin(a,b)
  %1725 = call float @dx.op.unary.f32(i32 24, float %1724)  ; Sqrt(value)
  %1726 = call float @dx.op.binary.f32(i32 35, float %1595, float 0x3F847AE140000000)  ; FMax(a,b)
  %1727 = fsub fast float %1593, %1563
  %1728 = fsub fast float %1563, %1594
  %1729 = call float @dx.op.binary.f32(i32 36, float %1728, float %1727)  ; FMin(a,b)
  %1730 = fdiv fast float %1729, %1726
  %1731 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1732 = fsub fast float %1563, %1719
  %1733 = fdiv fast float %1732, %1718
  %1734 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = fmul float %1731, %1735
  %1737 = fmul float %1736, %1736
  %1738 = fmul fast float %1725, %1702
  %1739 = fmul fast float %1738, %1737
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 2
  %1742 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1743 = fsub fast float %1739, %1742
  %1744 = fsub fast float %1741, %1742
  %1745 = fdiv fast float %1743, %1744
  %1746 = call float @dx.op.unary.f32(i32 7, float %1745)  ; Saturate(value)
  %1747 = fmul fast float %1746, %1720
  %1748 = fcmp fast ogt float %1722, 0.000000e+00
  br i1 %1748, label %1749, label %1769, !dx.controlflow.hints !52

; <label>:1749                                    ; preds = %1717
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 0
  %1752 = extractvalue %dx.types.CBufRet.f32 %1750, 1
  %1753 = extractvalue %dx.types.CBufRet.f32 %1750, 2
  %1754 = fsub fast float %1561, %1751
  %1755 = fsub fast float %1562, %1752
  %1756 = fsub fast float %1563, %1753
  %1757 = fmul fast float %1754, %1754
  %1758 = fmul fast float %1755, %1755
  %1759 = fadd fast float %1757, %1758
  %1760 = fmul fast float %1756, %1756
  %1761 = fadd fast float %1759, %1760
  %1762 = call float @dx.op.unary.f32(i32 24, float %1761)  ; Sqrt(value)
  %1763 = fsub fast float %1762, %1721
  %1764 = fsub fast float %1722, %1721
  %1765 = fdiv fast float %1763, %1764
  %1766 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1767 = fmul fast float %1766, %1766
  %1768 = fmul fast float %1767, %1747
  br label %1769

; <label>:1769                                    ; preds = %1749, %1717, %1697
  %1770 = phi float [ 0.000000e+00, %1697 ], [ %1768, %1749 ], [ %1747, %1717 ]
  %1771 = fmul fast float %1770, %1557
  %1772 = fadd fast float %1771, %1647
  br label %1773

; <label>:1773                                    ; preds = %1769, %1646
  %1774 = phi float [ %1772, %1769 ], [ %1647, %1646 ]
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 3
  %1777 = fmul fast float %1774, 0xBFF7154760000000
  %1778 = fmul fast float %1777, %1776
  %1779 = call float @dx.op.unary.f32(i32 21, float %1778)  ; Exp(value)
  %1780 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1781 = fmul fast float %1780, %1553
  %1782 = fmul fast float %1780, %1554
  %1783 = fmul fast float %1780, %1555
  %1784 = fadd fast float %1781, %1521
  %1785 = fadd fast float %1782, %1522
  %1786 = fadd fast float %1783, %1523
  %1787 = fsub fast float 1.000000e+00, %590
  %1788 = fmul fast float %582, %206
  %1789 = fmul fast float %1788, %1787
  %1790 = fmul fast float %1789, %1784
  %1791 = fmul fast float %583, %206
  %1792 = fmul fast float %1791, %1787
  %1793 = fmul fast float %1792, %1785
  %1794 = fmul fast float %584, %206
  %1795 = fmul fast float %1794, %1787
  %1796 = fmul fast float %1795, %1786
  %1797 = fadd fast float %1790, %207
  %1798 = fadd fast float %1793, %208
  %1799 = fadd fast float %1796, %209
  %1800 = fdiv fast float %567, %363
  %1801 = fadd fast float %363, %213
  %1802 = fmul fast float %213, %213
  %1803 = fmul fast float %1801, %1801
  %1804 = fsub fast float %1802, %1803
  %1805 = fmul fast float %1804, -5.000000e-01
  %1806 = fmul fast float %1805, %1800
  %1807 = fadd fast float %1806, %205
  %1808 = fadd fast float %567, %215
  %1809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.i32 %1809, 0
  %1811 = icmp eq i32 %1810, 0
  br i1 %1811, label %1838, label %1812, !dx.controlflow.hints !68

; <label>:1812                                    ; preds = %1773
  %1813 = icmp ne i32 %220, 0
  %1814 = zext i1 %1813 to i32
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1818 = fsub fast float %1801, %1817
  %1819 = fmul fast float %1818, %1816
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  %1821 = fadd fast float %1820, -5.000000e-01
  %1822 = fmul fast float %1821, 2.000000e+00
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1825 = fcmp fast olt float %1822, %1824
  br i1 %1825, label %1826, label %1838, !dx.controlflow.hints !69

; <label>:1826                                    ; preds = %1812
  %1827 = fmul fast float %1822, %1822
  %1828 = fmul fast float %1787, %206
  %1829 = fmul fast float %1822, %1828
  %1830 = fmul fast float %1827, %1828
  %1831 = fmul fast float %1829, %1827
  %1832 = fmul fast float %1827, %1827
  %1833 = fmul fast float %1832, %1828
  %1834 = fadd fast float %1829, %216
  %1835 = fadd fast float %1830, %217
  %1836 = fadd fast float %1831, %218
  %1837 = fadd fast float %1833, %219
  br label %1838

; <label>:1838                                    ; preds = %1826, %1812, %1773
  %1839 = phi float [ %216, %1773 ], [ %1834, %1826 ], [ %216, %1812 ]
  %1840 = phi float [ %217, %1773 ], [ %1835, %1826 ], [ %217, %1812 ]
  %1841 = phi float [ %218, %1773 ], [ %1836, %1826 ], [ %218, %1812 ]
  %1842 = phi float [ %219, %1773 ], [ %1837, %1826 ], [ %219, %1812 ]
  %1843 = phi i32 [ %220, %1773 ], [ 1, %1826 ], [ %1814, %1812 ]
  %1844 = fmul fast float %590, %206
  br label %1845

; <label>:1845                                    ; preds = %1838, %585
  %1846 = phi float [ %586, %585 ], [ %1801, %1838 ]
  %1847 = phi float [ %197, %585 ], [ %1592, %1838 ]
  %1848 = phi float [ %198, %585 ], [ %1593, %1838 ]
  %1849 = phi float [ %199, %585 ], [ %1594, %1838 ]
  %1850 = phi float [ %200, %585 ], [ %1595, %1838 ]
  %1851 = phi float [ %205, %585 ], [ %1807, %1838 ]
  %1852 = phi float [ %206, %585 ], [ %1844, %1838 ]
  %1853 = phi float [ %207, %585 ], [ %1797, %1838 ]
  %1854 = phi float [ %208, %585 ], [ %1798, %1838 ]
  %1855 = phi float [ %209, %585 ], [ %1799, %1838 ]
  %1856 = phi float [ %215, %585 ], [ %1808, %1838 ]
  %1857 = phi float [ %216, %585 ], [ %1839, %1838 ]
  %1858 = phi float [ %217, %585 ], [ %1840, %1838 ]
  %1859 = phi float [ %218, %585 ], [ %1841, %1838 ]
  %1860 = phi float [ %219, %585 ], [ %1842, %1838 ]
  %1861 = phi i32 [ %220, %585 ], [ %1843, %1838 ]
  %1862 = fmul fast float %363, %108
  %1863 = fmul fast float %363, %109
  %1864 = fmul fast float %363, %110
  %1865 = fadd fast float %1862, %210
  %1866 = fadd fast float %1863, %211
  %1867 = fadd fast float %1864, %212
  %1868 = fcmp fast olt float %1846, %177
  %1869 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %1870 = fcmp fast olt float %1869, %1852
  %1871 = and i1 %1868, %1870
  br i1 %1871, label %196, label %1872

; <label>:1872                                    ; preds = %1845
  br label %1873

; <label>:1873                                    ; preds = %1872, %153
  %1874 = phi float [ 0.000000e+00, %153 ], [ %1851, %1872 ]
  %1875 = phi float [ 1.000000e+00, %153 ], [ %1852, %1872 ]
  %1876 = phi float [ 0.000000e+00, %153 ], [ %1853, %1872 ]
  %1877 = phi float [ 0.000000e+00, %153 ], [ %1854, %1872 ]
  %1878 = phi float [ 0.000000e+00, %153 ], [ %1855, %1872 ]
  %1879 = phi float [ 0.000000e+00, %153 ], [ %1856, %1872 ]
  %1880 = phi float [ 0.000000e+00, %153 ], [ %1857, %1872 ]
  %1881 = phi float [ 0.000000e+00, %153 ], [ %1858, %1872 ]
  %1882 = phi float [ 0.000000e+00, %153 ], [ %1859, %1872 ]
  %1883 = phi float [ 0.000000e+00, %153 ], [ %1860, %1872 ]
  %1884 = phi i32 [ 0, %153 ], [ %1861, %1872 ]
  %1885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.i32 %1885, 0
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %1929, label %1888, !dx.controlflow.hints !70

; <label>:1888                                    ; preds = %1873
  %1889 = icmp eq i32 %1884, 0
  br i1 %1889, label %1928, label %1890, !dx.controlflow.hints !71

; <label>:1890                                    ; preds = %1888
  %1891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.i32 %1891, 2
  %1893 = icmp eq i32 %1892, 0
  br i1 %1893, label %1900, label %1894, !dx.controlflow.hints !72

; <label>:1894                                    ; preds = %1890
  %1895 = fsub fast float 1.000000e+00, %1875
  %1896 = fdiv fast float %1880, %1895
  %1897 = fdiv fast float %1881, %1895
  %1898 = fdiv fast float %1882, %1895
  %1899 = fdiv fast float %1883, %1895
  br label %1905

; <label>:1900                                    ; preds = %1890
  %1901 = fadd fast float %1880, %1875
  %1902 = fadd fast float %1881, %1875
  %1903 = fadd fast float %1882, %1875
  %1904 = fadd fast float %1883, %1875
  br label %1905

; <label>:1905                                    ; preds = %1900, %1894
  %1906 = phi float [ %1896, %1894 ], [ %1901, %1900 ]
  %1907 = phi float [ %1897, %1894 ], [ %1902, %1900 ]
  %1908 = phi float [ %1898, %1894 ], [ %1903, %1900 ]
  %1909 = phi float [ %1899, %1894 ], [ %1904, %1900 ]
  %1910 = call float @dx.op.binary.f32(i32 35, float %1906, float -1.000000e+00)  ; FMax(a,b)
  %1911 = call float @dx.op.binary.f32(i32 35, float %1907, float -1.000000e+00)  ; FMax(a,b)
  %1912 = call float @dx.op.binary.f32(i32 35, float %1908, float -1.000000e+00)  ; FMax(a,b)
  %1913 = call float @dx.op.binary.f32(i32 35, float %1909, float -1.000000e+00)  ; FMax(a,b)
  %1914 = call float @dx.op.binary.f32(i32 36, float %1910, float 1.000000e+00)  ; FMin(a,b)
  %1915 = call float @dx.op.binary.f32(i32 36, float %1911, float 1.000000e+00)  ; FMin(a,b)
  %1916 = call float @dx.op.binary.f32(i32 36, float %1912, float 1.000000e+00)  ; FMin(a,b)
  %1917 = call float @dx.op.binary.f32(i32 36, float %1913, float 1.000000e+00)  ; FMin(a,b)
  %1918 = fmul fast float %1914, 1.500000e+00
  %1919 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1916, float %1918)  ; FMad(a,b,c)
  %1920 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1915, float 0.000000e+00)  ; FMad(a,b,c)
  %1921 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1917, float %1920)  ; FMad(a,b,c)
  %1922 = fmul fast float %1914, 0x3FEBB67AE0000000
  %1923 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1916, float %1922)  ; FMad(a,b,c)
  %1924 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1915, float 0.000000e+00)  ; FMad(a,b,c)
  %1925 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1917, float %1924)  ; FMad(a,b,c)
  %1926 = fadd fast float %1919, 5.000000e-01
  %1927 = fadd fast float %1923, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %1926, float %1921, float %1927, float %1925, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1929

; <label>:1928                                    ; preds = %1888
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1929

; <label>:1929                                    ; preds = %1928, %1905, %1873
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 2
  %1932 = fsub fast float %1875, %1931
  %1933 = fdiv fast float %1932, %1931
  %1934 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1935 = fmul fast float %1934, 2.000000e+00
  %1936 = fsub fast float 3.000000e+00, %1935
  %1937 = fmul fast float %1934, %1934
  %1938 = fmul fast float %1937, %1875
  %1939 = fmul fast float %1938, %1936
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.CBufRet.f32 %1940, 1
  %1943 = extractvalue %dx.types.CBufRet.f32 %1940, 2
  %1944 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1941, float %1942, float %1943)  ; Dot3(ax,ay,az,bx,by,bz)
  %1945 = fmul fast float %1944, %1874
  %1946 = fcmp fast ogt float %1879, 0.000000e+00
  %1947 = fdiv fast float 1.000000e+00, %1879
  %1948 = fmul fast float %1945, %1947
  %1949 = select i1 %1946, float %1948, float %119
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 0
  %1952 = extractvalue %dx.types.CBufRet.f32 %1950, 1
  %1953 = extractvalue %dx.types.CBufRet.f32 %1950, 2
  %1954 = fmul fast float %1951, %72
  %1955 = fmul fast float %1952, %72
  %1956 = fmul fast float %1953, %72
  %1957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1958 = extractvalue %dx.types.CBufRet.f32 %1957, 0
  %1959 = extractvalue %dx.types.CBufRet.f32 %1957, 1
  %1960 = extractvalue %dx.types.CBufRet.f32 %1957, 2
  %1961 = fmul fast float %1958, %73
  %1962 = fmul fast float %1959, %73
  %1963 = fmul fast float %1960, %73
  %1964 = fadd fast float %1961, %1954
  %1965 = fadd fast float %1962, %1955
  %1966 = fadd fast float %1963, %1956
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1969 = extractvalue %dx.types.CBufRet.f32 %1967, 1
  %1970 = extractvalue %dx.types.CBufRet.f32 %1967, 2
  %1971 = fadd fast float %1964, %1968
  %1972 = fadd fast float %1965, %1969
  %1973 = fadd fast float %1966, %1970
  %1974 = fmul fast float %1971, %1949
  %1975 = fmul fast float %1972, %1949
  %1976 = fmul fast float %1973, %1949
  %1977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.CBufRet.f32 %1977, 1
  %1980 = extractvalue %dx.types.CBufRet.f32 %1977, 2
  %1981 = extractvalue %dx.types.CBufRet.f32 %1977, 3
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.CBufRet.f32 %1982, 1
  %1985 = extractvalue %dx.types.CBufRet.f32 %1982, 2
  %1986 = extractvalue %dx.types.CBufRet.f32 %1982, 3
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1990 = extractvalue %dx.types.CBufRet.f32 %1987, 2
  %1991 = extractvalue %dx.types.CBufRet.f32 %1987, 3
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.CBufRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.CBufRet.f32 %1992, 2
  %1996 = extractvalue %dx.types.CBufRet.f32 %1992, 3
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 3
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 3
  %2001 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2002 = extractvalue %dx.types.CBufRet.f32 %1999, 1
  %2003 = extractvalue %dx.types.CBufRet.f32 %1999, 2
  %2004 = fcmp fast olt float %2003, -5.000000e-01
  %2005 = call float @dx.op.dot3.f32(i32 55, float %1974, float %1975, float %1976, float %1974, float %1975, float %1976)  ; Dot3(ax,ay,az,bx,by,bz)
  %2006 = call float @dx.op.unary.f32(i32 25, float %2005)  ; Rsqrt(value)
  %2007 = fmul fast float %2006, %2005
  %2008 = fmul fast float %2006, %1974
  %2009 = fmul fast float %2006, %1975
  %2010 = fmul fast float %2006, %1976
  %2011 = fadd fast float %2007, %1981
  %2012 = call float @dx.op.dot3.f32(i32 55, float %2008, float %2009, float %2010, float %1978, float %1979, float %1980)  ; Dot3(ax,ay,az,bx,by,bz)
  %2013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.i32 %2013, 1
  %2015 = and i32 %2014, 1
  %2016 = icmp ne i32 %2015, 0
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 2
  %2019 = fcmp fast ogt float %2018, 0.000000e+00
  %2020 = and i1 %2016, %2019
  br i1 %2020, label %2021, label %2427, !dx.controlflow.hints !73

; <label>:2021                                    ; preds = %1929
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 3
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 2
  %2026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2027 = extractvalue %dx.types.CBufRet.f32 %2026, 2
  %2028 = fsub fast float %2025, %2027
  %2029 = and i32 %2014, 2
  %2030 = extractvalue %dx.types.CBufRet.i32 %2013, 0
  %2031 = call i32 @dx.op.binary.i32(i32 40, i32 %2030, i32 3)  ; UMin(a,b)
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2035 = extractvalue %dx.types.CBufRet.f32 %2026, 0
  %2036 = extractvalue %dx.types.CBufRet.f32 %2026, 1
  %2037 = fsub fast float %2033, %2035
  %2038 = fsub fast float %2034, %2036
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = fcmp fast ogt float %2040, 0.000000e+00
  %2042 = fsub fast float -0.000000e+00, %2037
  %2043 = fsub fast float -0.000000e+00, %2038
  %2044 = call float @dx.op.dot2.f32(i32 54, float %2008, float %2009, float %2008, float %2009)  ; Dot2(ax,ay,bx,by)
  %2045 = call float @dx.op.dot2.f32(i32 54, float %2008, float %2009, float %2042, float %2043)  ; Dot2(ax,ay,bx,by)
  %2046 = fmul fast float %2045, 2.000000e+00
  %2047 = call float @dx.op.dot2.f32(i32 54, float %2042, float %2043, float %2042, float %2043)  ; Dot2(ax,ay,bx,by)
  %2048 = fmul fast float %2040, %2040
  %2049 = fsub fast float %2047, %2048
  %2050 = fmul fast float %2046, %2046
  %2051 = fmul fast float %2044, 4.000000e+00
  %2052 = fmul fast float %2051, %2049
  %2053 = fsub fast float %2050, %2052
  %2054 = fcmp fast ogt float %2053, 0.000000e+00
  br i1 %2054, label %2055, label %2070, !dx.controlflow.hints !74

; <label>:2055                                    ; preds = %2021
  %2056 = fcmp fast ogt float %2046, 0.000000e+00
  %2057 = call float @dx.op.unary.f32(i32 24, float %2053)  ; Sqrt(value)
  %2058 = fsub fast float -0.000000e+00, %2057
  %2059 = select i1 %2056, float %2057, float %2058
  %2060 = fadd fast float %2059, %2046
  %2061 = fmul float %2060, -5.000000e-01
  %2062 = fdiv fast float %2061, %2044
  %2063 = call float @dx.op.binary.f32(i32 35, float %2062, float 0.000000e+00)  ; FMax(a,b)
  %2064 = call float @dx.op.binary.f32(i32 36, float %2007, float %2063)  ; FMin(a,b)
  %2065 = fdiv fast float %2049, %2061
  %2066 = call float @dx.op.binary.f32(i32 35, float %2065, float 0.000000e+00)  ; FMax(a,b)
  %2067 = call float @dx.op.binary.f32(i32 36, float %2007, float %2066)  ; FMin(a,b)
  %2068 = call float @dx.op.binary.f32(i32 36, float %2064, float %2067)  ; FMin(a,b)
  %2069 = call float @dx.op.binary.f32(i32 35, float %2064, float %2067)  ; FMax(a,b)
  br label %2070

; <label>:2070                                    ; preds = %2055, %2021
  %2071 = phi float [ %2069, %2055 ], [ -1.000000e+00, %2021 ]
  %2072 = phi float [ %2068, %2055 ], [ -1.000000e+00, %2021 ]
  %2073 = phi i1 [ true, %2055 ], [ false, %2021 ]
  %2074 = and i1 %2041, %2073
  br i1 %2074, label %2075, label %2077, !dx.controlflow.hints !75

; <label>:2075                                    ; preds = %2070
  %2076 = fcmp fast oeq float %2072, %2071
  br i1 %2076, label %2380, label %2078, !dx.controlflow.hints !76

; <label>:2077                                    ; preds = %2070
  br i1 %2041, label %2380, label %2078, !dx.controlflow.hints !77

; <label>:2078                                    ; preds = %2077, %2075
  %2079 = phi float [ %2007, %2077 ], [ %2071, %2075 ]
  %2080 = phi float [ 0.000000e+00, %2077 ], [ %2072, %2075 ]
  %2081 = icmp ne i32 %2029, 0
  %2082 = fmul fast float %2079, %2010
  %2083 = fadd fast float %2082, %2023
  %2084 = fmul fast float %2083, %2079
  %2085 = select i1 %2081, float 0.000000e+00, float %2084
  %2086 = fcmp fast oeq float %2010, 0.000000e+00
  %2087 = fdiv fast float %2028, %2010
  %2088 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2087)  ; FMax(a,b)
  %2089 = select i1 %2086, float %2079, float %2088
  %2090 = call float @dx.op.binary.f32(i32 36, float %2079, float %2089)  ; FMin(a,b)
  %2091 = fcmp fast ogt float %2010, 0.000000e+00
  %2092 = fcmp fast olt float %2028, 0.000000e+00
  br i1 %2091, label %2093, label %2150, !dx.controlflow.hints !78

; <label>:2093                                    ; preds = %2078
  %2094 = icmp eq i32 %2029, 0
  br i1 %2092, label %2095, label %2139, !dx.controlflow.hints !79

; <label>:2095                                    ; preds = %2093
  %2096 = select i1 %2094, float %2079, float 0.000000e+00
  %2097 = fsub fast float -0.000000e+00, %2096
  %2098 = call float @dx.op.unary.f32(i32 6, float %2097)  ; FAbs(value)
  %2099 = fmul fast float %2096, %2010
  %2100 = fadd fast float %2099, %2023
  %2101 = fmul fast float %2098, %2100
  %2102 = fsub fast float %2085, %2101
  %2103 = fsub fast float %2079, %2098
  %2104 = select i1 %2094, float %2103, float 0.000000e+00
  %2105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.CBufRet.f32 %2105, 1
  %2108 = extractvalue %dx.types.CBufRet.f32 %2105, 2
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.CBufRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2113 = extractvalue %dx.types.CBufRet.f32 %2109, 3
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  %2116 = call float @dx.op.binary.f32(i32 36, float %2102, float %2115)  ; FMin(a,b)
  %2117 = fmul fast float %2113, %2104
  %2118 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2119 = fsub fast float %2110, %2106
  %2120 = fsub fast float %2111, %2107
  %2121 = fsub fast float %2112, %2108
  %2122 = fmul fast float %2118, %2119
  %2123 = fmul fast float %2118, %2120
  %2124 = fmul fast float %2118, %2121
  %2125 = fadd fast float %2122, %2106
  %2126 = fadd fast float %2123, %2107
  %2127 = fadd fast float %2124, %2108
  %2128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.f32 %2128, 0
  %2130 = extractvalue %dx.types.CBufRet.f32 %2128, 1
  %2131 = fadd fast float %2130, %2129
  %2132 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2128, 2
  %2134 = extractvalue %dx.types.CBufRet.f32 %2128, 3
  %2135 = fadd fast float %2134, %2133
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = fmul fast float %2132, %2116
  %2138 = fmul fast float %2137, %2136
  br label %2380

; <label>:2139                                    ; preds = %2093
  br i1 %2094, label %2140, label %2161, !dx.controlflow.hints !80

; <label>:2140                                    ; preds = %2139
  %2141 = call float @dx.op.binary.f32(i32 36, float %2090, float %2080)  ; FMin(a,b)
  %2142 = fsub fast float %2090, %2141
  %2143 = fsub fast float %2142, %2079
  %2144 = call float @dx.op.unary.f32(i32 6, float %2143)  ; FAbs(value)
  %2145 = fadd fast float %2142, %2079
  %2146 = fmul fast float %2145, %2010
  %2147 = fadd fast float %2146, %2023
  %2148 = fmul fast float %2147, %2144
  %2149 = fsub fast float %2085, %2148
  br label %2161

; <label>:2150                                    ; preds = %2078
  br i1 %2092, label %2151, label %2161, !dx.controlflow.hints !81

; <label>:2151                                    ; preds = %2150
  %2152 = call float @dx.op.binary.f32(i32 35, float %2080, float %2090)  ; FMax(a,b)
  %2153 = icmp eq i32 %2029, 0
  %2154 = select i1 %2153, float %2090, float 0.000000e+00
  %2155 = fsub fast float -0.000000e+00, %2154
  %2156 = call float @dx.op.unary.f32(i32 6, float %2155)  ; FAbs(value)
  %2157 = fmul fast float %2154, %2010
  %2158 = fadd fast float %2157, %2023
  %2159 = fmul fast float %2156, %2158
  %2160 = fsub fast float %2085, %2159
  br label %2161

; <label>:2161                                    ; preds = %2151, %2150, %2140, %2139
  %2162 = phi float [ %2080, %2139 ], [ %2080, %2140 ], [ %2152, %2151 ], [ %2080, %2150 ]
  %2163 = phi float [ 0.000000e+00, %2139 ], [ %2144, %2140 ], [ %2156, %2151 ], [ 0.000000e+00, %2150 ]
  %2164 = phi float [ %2085, %2139 ], [ %2149, %2140 ], [ %2160, %2151 ], [ %2085, %2150 ]
  %2165 = phi float [ %2090, %2139 ], [ %2090, %2140 ], [ %2079, %2151 ], [ %2079, %2150 ]
  %2166 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %2166, align 4, !tbaa !82, !noalias !86
  %2167 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %2167, align 4, !tbaa !82, !noalias !86
  %2168 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %2168, align 4, !tbaa !82, !noalias !86
  %2169 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %2169, align 4, !tbaa !82, !noalias !86
  %2170 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %2170, align 4, !tbaa !82, !noalias !86
  %2171 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %2171, align 4, !tbaa !82, !noalias !86
  %2172 = icmp sgt i32 %2031, 0
  br i1 %2172, label %2173, label %2234

; <label>:2173                                    ; preds = %2161
  br label %2174

; <label>:2174                                    ; preds = %2223, %2173
  %2175 = phi i32 [ %2224, %2223 ], [ 0, %2173 ]
  %2176 = phi i32 [ %2225, %2223 ], [ 0, %2173 ]
  %2177 = add nuw i32 %2176, 171
  %2178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %2177)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2178, 0
  %2180 = extractvalue %dx.types.CBufRet.f32 %2178, 1
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.CBufRet.f32 %2181, 1
  %2184 = fsub fast float %2179, %2182
  %2185 = fsub fast float %2180, %2183
  %2186 = extractvalue %dx.types.CBufRet.f32 %2178, 2
  %2187 = fsub fast float -0.000000e+00, %2184
  %2188 = fsub fast float -0.000000e+00, %2185
  %2189 = call float @dx.op.dot2.f32(i32 54, float %2008, float %2009, float %2187, float %2188)  ; Dot2(ax,ay,bx,by)
  %2190 = fmul fast float %2189, 2.000000e+00
  %2191 = call float @dx.op.dot2.f32(i32 54, float %2187, float %2188, float %2187, float %2188)  ; Dot2(ax,ay,bx,by)
  %2192 = fmul fast float %2186, %2186
  %2193 = fsub fast float %2191, %2192
  %2194 = fmul fast float %2190, %2190
  %2195 = fmul fast float %2051, %2193
  %2196 = fsub fast float %2194, %2195
  %2197 = fcmp fast ogt float %2196, 0.000000e+00
  br i1 %2197, label %2198, label %2213, !dx.controlflow.hints !74

; <label>:2198                                    ; preds = %2174
  %2199 = fcmp fast ogt float %2190, 0.000000e+00
  %2200 = call float @dx.op.unary.f32(i32 24, float %2196)  ; Sqrt(value)
  %2201 = fsub fast float -0.000000e+00, %2200
  %2202 = select i1 %2199, float %2200, float %2201
  %2203 = fadd fast float %2202, %2190
  %2204 = fmul float %2203, -5.000000e-01
  %2205 = fdiv fast float %2204, %2044
  %2206 = call float @dx.op.binary.f32(i32 35, float %2205, float 0.000000e+00)  ; FMax(a,b)
  %2207 = call float @dx.op.binary.f32(i32 36, float %2079, float %2206)  ; FMin(a,b)
  %2208 = fdiv fast float %2193, %2204
  %2209 = call float @dx.op.binary.f32(i32 35, float %2208, float 0.000000e+00)  ; FMax(a,b)
  %2210 = call float @dx.op.binary.f32(i32 36, float %2079, float %2209)  ; FMin(a,b)
  %2211 = call float @dx.op.binary.f32(i32 36, float %2207, float %2210)  ; FMin(a,b)
  %2212 = call float @dx.op.binary.f32(i32 35, float %2207, float %2210)  ; FMax(a,b)
  br label %2213

; <label>:2213                                    ; preds = %2198, %2174
  %2214 = phi float [ %2212, %2198 ], [ -1.000000e+00, %2174 ]
  %2215 = phi float [ %2211, %2198 ], [ -1.000000e+00, %2174 ]
  %2216 = phi i1 [ true, %2198 ], [ false, %2174 ]
  br i1 %2216, label %2217, label %2223, !dx.controlflow.hints !97

; <label>:2217                                    ; preds = %2213
  %2218 = call float @dx.op.binary.f32(i32 35, float %2162, float %2215)  ; FMax(a,b)
  %2219 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2176
  store float %2218, float* %2219, align 4, !tbaa !82, !noalias !86
  %2220 = call float @dx.op.binary.f32(i32 35, float %2162, float %2214)  ; FMax(a,b)
  %2221 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2176
  store float %2220, float* %2221, align 4, !tbaa !82, !noalias !86
  %2222 = add nsw i32 %2175, 1
  br label %2223

; <label>:2223                                    ; preds = %2217, %2213
  %2224 = phi i32 [ %2222, %2217 ], [ %2175, %2213 ]
  %2225 = add nuw nsw i32 %2176, 1
  %2226 = icmp eq i32 %2225, %2031
  br i1 %2226, label %2227, label %2174

; <label>:2227                                    ; preds = %2223
  %2228 = load float, float* %2168, align 4, !tbaa !82, !alias.scope !98, !noalias !101
  %2229 = load float, float* %2167, align 4, !tbaa !82, !alias.scope !104, !noalias !105
  %2230 = load float, float* %2166, align 4, !tbaa !82, !alias.scope !106, !noalias !107
  %2231 = load float, float* %2171, align 4, !tbaa !82, !alias.scope !108, !noalias !111
  %2232 = load float, float* %2170, align 4, !tbaa !82, !alias.scope !114, !noalias !115
  %2233 = load float, float* %2169, align 4, !tbaa !82, !alias.scope !116, !noalias !117
  br label %2234

; <label>:2234                                    ; preds = %2227, %2161
  %2235 = phi float [ -1.000000e+00, %2161 ], [ %2233, %2227 ]
  %2236 = phi float [ -1.000000e+00, %2161 ], [ %2232, %2227 ]
  %2237 = phi float [ -1.000000e+00, %2161 ], [ %2231, %2227 ]
  %2238 = phi float [ -1.000000e+00, %2161 ], [ %2230, %2227 ]
  %2239 = phi float [ -1.000000e+00, %2161 ], [ %2229, %2227 ]
  %2240 = phi float [ -1.000000e+00, %2161 ], [ %2228, %2227 ]
  %2241 = phi i32 [ 0, %2161 ], [ %2224, %2227 ]
  %2242 = call float @dx.op.binary.f32(i32 36, float %2239, float %2240)  ; FMin(a,b)
  %2243 = call float @dx.op.binary.f32(i32 36, float %2238, float %2242)  ; FMin(a,b)
  %2244 = call float @dx.op.binary.f32(i32 35, float %2238, float %2239)  ; FMax(a,b)
  %2245 = call float @dx.op.binary.f32(i32 36, float %2244, float %2240)  ; FMin(a,b)
  %2246 = call float @dx.op.binary.f32(i32 36, float %2238, float %2239)  ; FMin(a,b)
  %2247 = call float @dx.op.binary.f32(i32 35, float %2246, float %2245)  ; FMax(a,b)
  %2248 = call float @dx.op.binary.f32(i32 35, float %2239, float %2240)  ; FMax(a,b)
  %2249 = call float @dx.op.binary.f32(i32 35, float %2238, float %2248)  ; FMax(a,b)
  store float %2243, float* %2166, align 4, !tbaa !82, !alias.scope !106, !noalias !107
  store float %2247, float* %2167, align 4, !tbaa !82, !alias.scope !104, !noalias !105
  store float %2249, float* %2168, align 4, !tbaa !82, !alias.scope !98, !noalias !101
  %2250 = call float @dx.op.binary.f32(i32 36, float %2236, float %2237)  ; FMin(a,b)
  %2251 = call float @dx.op.binary.f32(i32 36, float %2235, float %2250)  ; FMin(a,b)
  %2252 = call float @dx.op.binary.f32(i32 35, float %2235, float %2236)  ; FMax(a,b)
  %2253 = call float @dx.op.binary.f32(i32 36, float %2252, float %2237)  ; FMin(a,b)
  %2254 = call float @dx.op.binary.f32(i32 36, float %2235, float %2236)  ; FMin(a,b)
  %2255 = call float @dx.op.binary.f32(i32 35, float %2254, float %2253)  ; FMax(a,b)
  %2256 = call float @dx.op.binary.f32(i32 35, float %2236, float %2237)  ; FMax(a,b)
  %2257 = call float @dx.op.binary.f32(i32 35, float %2235, float %2256)  ; FMax(a,b)
  store float %2251, float* %2169, align 4, !tbaa !82, !alias.scope !116, !noalias !117
  store float %2255, float* %2170, align 4, !tbaa !82, !alias.scope !114, !noalias !115
  store float %2257, float* %2171, align 4, !tbaa !82, !alias.scope !108, !noalias !111
  %2258 = sub nsw i32 3, %2241
  %2259 = icmp sgt i32 %2258, 2
  br i1 %2259, label %2260, label %2298, !dx.controlflow.hints !118

; <label>:2260                                    ; preds = %2234
  %2261 = icmp eq i32 %2029, 0
  %2262 = fsub fast float %2079, %2163
  %2263 = select i1 %2261, float %2262, float %2163
  %2264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2265 = extractvalue %dx.types.CBufRet.f32 %2264, 0
  %2266 = extractvalue %dx.types.CBufRet.f32 %2264, 1
  %2267 = extractvalue %dx.types.CBufRet.f32 %2264, 2
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 0
  %2270 = extractvalue %dx.types.CBufRet.f32 %2268, 1
  %2271 = extractvalue %dx.types.CBufRet.f32 %2268, 2
  %2272 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 3
  %2275 = call float @dx.op.binary.f32(i32 36, float %2164, float %2274)  ; FMin(a,b)
  %2276 = fmul fast float %2272, %2263
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fsub fast float %2269, %2265
  %2279 = fsub fast float %2270, %2266
  %2280 = fsub fast float %2271, %2267
  %2281 = fmul fast float %2277, %2278
  %2282 = fmul fast float %2277, %2279
  %2283 = fmul fast float %2277, %2280
  %2284 = fadd fast float %2281, %2265
  %2285 = fadd fast float %2282, %2266
  %2286 = fadd fast float %2283, %2267
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 0
  %2289 = extractvalue %dx.types.CBufRet.f32 %2287, 1
  %2290 = fadd fast float %2289, %2288
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2292 = extractvalue %dx.types.CBufRet.f32 %2287, 2
  %2293 = extractvalue %dx.types.CBufRet.f32 %2287, 3
  %2294 = fadd fast float %2293, %2292
  %2295 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2296 = fmul fast float %2291, %2275
  %2297 = fmul fast float %2296, %2295
  br label %2380

; <label>:2298                                    ; preds = %2234
  %2299 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2258
  %2300 = load float, float* %2299, align 4, !tbaa !82, !noalias !86
  %2301 = fcmp fast olt float %2300, %2165
  %2302 = icmp sgt i32 %2241, 0
  %2303 = and i1 %2302, %2301
  br i1 %2303, label %2304, label %2341

; <label>:2304                                    ; preds = %2298
  br label %2305

; <label>:2305                                    ; preds = %2334, %2304
  %2306 = phi float [ %2335, %2334 ], [ %2163, %2304 ]
  %2307 = phi float [ %2336, %2334 ], [ %2164, %2304 ]
  %2308 = phi float [ %2316, %2334 ], [ %2300, %2304 ]
  %2309 = phi i32 [ %2313, %2334 ], [ %2258, %2304 ]
  %2310 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2309
  %2311 = load float, float* %2310, align 4, !tbaa !82, !noalias !86
  %2312 = icmp slt i32 %2309, 2
  %2313 = add nsw i32 %2309, 1
  %2314 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2313
  %2315 = load float, float* %2314, align 4, !tbaa !82, !noalias !86
  %2316 = select i1 %2312, float %2315, float %2079
  %2317 = call float @dx.op.binary.f32(i32 36, float %2316, float %2311)  ; FMin(a,b)
  %2318 = call float @dx.op.binary.f32(i32 36, float %2165, float %2317)  ; FMin(a,b)
  %2319 = icmp eq i32 %2029, 0
  %2320 = fadd fast float %2318, %2308
  %2321 = fmul fast float %2320, %2010
  %2322 = fadd fast float %2321, %2023
  br i1 %2319, label %2328, label %2323, !dx.controlflow.hints !119

; <label>:2323                                    ; preds = %2305
  %2324 = fsub fast float %2318, %2308
  %2325 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2324)  ; FMax(a,b)
  %2326 = fmul fast float %2325, %2322
  %2327 = fadd fast float %2326, %2307
  br label %2334

; <label>:2328                                    ; preds = %2305
  %2329 = fsub fast float %2308, %2318
  %2330 = call float @dx.op.unary.f32(i32 6, float %2329)  ; FAbs(value)
  %2331 = fadd fast float %2330, %2306
  %2332 = fmul fast float %2330, %2322
  %2333 = fsub fast float %2307, %2332
  br label %2334

; <label>:2334                                    ; preds = %2328, %2323
  %2335 = phi float [ %2325, %2323 ], [ %2331, %2328 ]
  %2336 = phi float [ %2327, %2323 ], [ %2333, %2328 ]
  %2337 = fcmp fast olt float %2316, %2165
  %2338 = icmp slt i32 %2313, 3
  %2339 = and i1 %2338, %2337
  br i1 %2339, label %2305, label %2340

; <label>:2340                                    ; preds = %2334
  br label %2341

; <label>:2341                                    ; preds = %2340, %2298
  %2342 = phi float [ %2163, %2298 ], [ %2335, %2340 ]
  %2343 = phi float [ %2164, %2298 ], [ %2336, %2340 ]
  %2344 = fsub fast float %2079, %2342
  %2345 = select i1 %2081, float %2342, float %2344
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2348 = extractvalue %dx.types.CBufRet.f32 %2346, 1
  %2349 = extractvalue %dx.types.CBufRet.f32 %2346, 2
  %2350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2351 = extractvalue %dx.types.CBufRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.CBufRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.CBufRet.f32 %2350, 2
  %2354 = extractvalue %dx.types.CBufRet.f32 %2350, 3
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 3
  %2357 = call float @dx.op.binary.f32(i32 36, float %2343, float %2356)  ; FMin(a,b)
  %2358 = fmul fast float %2354, %2345
  %2359 = call float @dx.op.unary.f32(i32 7, float %2358)  ; Saturate(value)
  %2360 = fsub fast float %2351, %2347
  %2361 = fsub fast float %2352, %2348
  %2362 = fsub fast float %2353, %2349
  %2363 = fmul fast float %2359, %2360
  %2364 = fmul fast float %2359, %2361
  %2365 = fmul fast float %2359, %2362
  %2366 = fadd fast float %2363, %2347
  %2367 = fadd fast float %2364, %2348
  %2368 = fadd fast float %2365, %2349
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = fadd fast float %2371, %2370
  %2373 = call float @dx.op.unary.f32(i32 7, float %2372)  ; Saturate(value)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2375 = extractvalue %dx.types.CBufRet.f32 %2369, 3
  %2376 = fadd fast float %2375, %2374
  %2377 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2378 = fmul fast float %2373, %2357
  %2379 = fmul fast float %2378, %2377
  br label %2380

; <label>:2380                                    ; preds = %2341, %2260, %2095, %2077, %2075
  %2381 = phi float [ %2104, %2095 ], [ %2263, %2260 ], [ %2345, %2341 ], [ 0.000000e+00, %2075 ], [ 0.000000e+00, %2077 ]
  %2382 = phi float [ %2138, %2095 ], [ %2297, %2260 ], [ %2379, %2341 ], [ 0.000000e+00, %2075 ], [ 0.000000e+00, %2077 ]
  %2383 = phi float [ %2125, %2095 ], [ %2284, %2260 ], [ %2366, %2341 ], [ 0.000000e+00, %2075 ], [ 0.000000e+00, %2077 ]
  %2384 = phi float [ %2126, %2095 ], [ %2285, %2260 ], [ %2367, %2341 ], [ 0.000000e+00, %2075 ], [ 0.000000e+00, %2077 ]
  %2385 = phi float [ %2127, %2095 ], [ %2286, %2260 ], [ %2368, %2341 ], [ 0.000000e+00, %2075 ], [ 0.000000e+00, %2077 ]
  %2386 = fmul fast float %2018, %2382
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 2
  %2389 = fsub fast float %2025, %2388
  %2390 = fcmp fast olt float %2386, -2.000000e+01
  %2391 = call float @dx.op.unary.f32(i32 21, float %2386)  ; Exp(value)
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2394 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2396 = extractvalue %dx.types.CBufRet.f32 %2395, 2
  %2397 = fmul fast float %2394, %2389
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2010, 5.000000e-01
  %2401 = fadd fast float %2400, 5.000000e-01
  %2402 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  %2403 = fsub fast float 1.000000e+00, %2402
  %2404 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2399)  ; FMax(a,b)
  %2405 = fdiv fast float %2403, %2404
  %2406 = fsub fast float %2389, %1976
  %2407 = call float @dx.op.unary.f32(i32 6, float %2406)  ; FAbs(value)
  %2408 = fmul fast float %2407, %2393
  %2409 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2410 = fsub fast float 1.000000e+00, %2408
  %2411 = fmul fast float %2410, %2409
  %2412 = fadd fast float %2411, %2408
  %2413 = fmul fast float %2396, %2389
  %2414 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2415 = fsub fast float 1.000000e+00, %2412
  %2416 = fmul fast float %2415, %2414
  %2417 = fadd fast float %2416, %2412
  %2418 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2419 = fadd fast float %2391, -1.000000e+00
  %2420 = select i1 %2390, float -1.000000e+00, float %2419
  %2421 = fmul fast float %2418, %2420
  %2422 = fadd fast float %2421, 1.000000e+00
  %2423 = fsub fast float -0.000000e+00, %2421
  %2424 = fmul fast float %2383, %2423
  %2425 = fmul fast float %2384, %2423
  %2426 = fmul fast float %2385, %2423
  br label %2427

; <label>:2427                                    ; preds = %2380, %1929
  %2428 = phi float [ %2381, %2380 ], [ 0.000000e+00, %1929 ]
  %2429 = phi float [ %2422, %2380 ], [ 1.000000e+00, %1929 ]
  %2430 = phi float [ %2424, %2380 ], [ 0.000000e+00, %1929 ]
  %2431 = phi float [ %2425, %2380 ], [ 0.000000e+00, %1929 ]
  %2432 = phi float [ %2426, %2380 ], [ 0.000000e+00, %1929 ]
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 1
  %2435 = fsub fast float 1.000000e+00, %2429
  %2436 = fmul fast float %2435, %2011
  %2437 = fmul fast float %2436, %2434
  %2438 = fsub fast float %2011, %2437
  br i1 %2004, label %2439, label %2468, !dx.controlflow.hints !120

; <label>:2439                                    ; preds = %2427
  %2440 = fmul fast float %2012, %2001
  %2441 = fadd fast float %2440, %2002
  %2442 = call float @dx.op.unary.f32(i32 7, float %2441)  ; Saturate(value)
  %2443 = fmul fast float %1983, %2438
  %2444 = fsub fast float -0.000000e+00, %2443
  %2445 = fmul fast float %1984, %2438
  %2446 = fsub fast float -0.000000e+00, %2445
  %2447 = call float @dx.op.unary.f32(i32 21, float %2444)  ; Exp(value)
  %2448 = call float @dx.op.unary.f32(i32 21, float %2446)  ; Exp(value)
  %2449 = call float @dx.op.binary.f32(i32 35, float %1991, float %2447)  ; FMax(a,b)
  %2450 = call float @dx.op.binary.f32(i32 35, float %1991, float %2448)  ; FMax(a,b)
  %2451 = fsub fast float %2450, %2449
  %2452 = fmul fast float %2451, %2442
  %2453 = fadd fast float %2452, %2449
  %2454 = call float @dx.op.unary.f32(i32 7, float %2453)  ; Saturate(value)
  %2455 = fsub fast float %1988, %1993
  %2456 = fsub fast float %1989, %1994
  %2457 = fsub fast float %1990, %1995
  %2458 = fmul fast float %2442, %2455
  %2459 = fmul fast float %2442, %2456
  %2460 = fmul fast float %2442, %2457
  %2461 = fadd fast float %2458, %1993
  %2462 = fadd fast float %2459, %1994
  %2463 = fadd fast float %2460, %1995
  %2464 = fsub fast float 1.000000e+00, %2454
  %2465 = fmul fast float %2464, %2461
  %2466 = fmul fast float %2464, %2462
  %2467 = fmul fast float %2464, %2463
  br label %2527

; <label>:2468                                    ; preds = %2427
  %2469 = fmul fast float %2438, %2000
  %2470 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  %2471 = fsub fast float 2.000000e+00, %2470
  %2472 = fmul fast float %2470, 9.921875e-01
  %2473 = fmul fast float %2472, %2471
  %2474 = fadd fast float %2473, 3.906250e-03
  %2475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %2474, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2476 = extractvalue %dx.types.ResRet.f32 %2475, 0
  %2477 = fsub fast float %2470, %2476
  %2478 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2477)  ; FMax(a,b)
  %2479 = fmul fast float %1986, %1976
  %2480 = call float @dx.op.unary.f32(i32 6, float %2479)  ; FAbs(value)
  %2481 = fcmp fast ogt float %2480, 0x3EB0C6F7A0000000
  br i1 %2481, label %2482, label %2488, !dx.controlflow.hints !121

; <label>:2482                                    ; preds = %2468
  %2483 = fmul fast float %2479, 0xBFF7154760000000
  %2484 = call float @dx.op.unary.f32(i32 21, float %2483)  ; Exp(value)
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fdiv fast float %2485, %2479
  %2487 = fmul fast float %2486, %1996
  br label %2488

; <label>:2488                                    ; preds = %2482, %2468
  %2489 = phi float [ %2487, %2482 ], [ %1996, %2468 ]
  %2490 = fadd fast float %2489, %1998
  %2491 = fmul fast float %2490, %2478
  %2492 = fmul fast float %1983, %2491
  %2493 = fsub fast float -0.000000e+00, %2492
  %2494 = fmul fast float %1984, %2491
  %2495 = fsub fast float -0.000000e+00, %2494
  %2496 = fmul fast float %1985, %2491
  %2497 = fsub fast float -0.000000e+00, %2496
  %2498 = call float @dx.op.unary.f32(i32 21, float %2493)  ; Exp(value)
  %2499 = call float @dx.op.unary.f32(i32 21, float %2495)  ; Exp(value)
  %2500 = call float @dx.op.unary.f32(i32 21, float %2497)  ; Exp(value)
  %2501 = fmul fast float %2012, %2012
  %2502 = fadd fast float %2501, 1.000000e+00
  %2503 = fmul fast float %2502, 0x3FAE8EC8A0000000
  %2504 = fmul fast float %2503, %1993
  %2505 = fmul fast float %2503, %1994
  %2506 = fmul fast float %2503, %1995
  %2507 = fmul fast float %2012, %1991
  %2508 = fsub fast float 1.000000e+00, %2507
  %2509 = fmul fast float %1991, %1991
  %2510 = fsub fast float 1.000000e+00, %2509
  %2511 = fmul fast float %2510, 0x3FB45F3060000000
  %2512 = fmul fast float %2508, %2508
  %2513 = fdiv fast float 1.000000e+00, %2512
  %2514 = fmul fast float %2511, %2513
  %2515 = fmul fast float %2514, %1988
  %2516 = fmul fast float %2514, %1989
  %2517 = fmul fast float %2514, %1990
  %2518 = fadd fast float %2515, %2504
  %2519 = fadd fast float %2516, %2505
  %2520 = fadd fast float %2517, %2506
  %2521 = fsub fast float 1.000000e+00, %2498
  %2522 = fsub fast float 1.000000e+00, %2499
  %2523 = fsub fast float 1.000000e+00, %2500
  %2524 = fmul fast float %2518, %2521
  %2525 = fmul fast float %2519, %2522
  %2526 = fmul fast float %2520, %2523
  br label %2527

; <label>:2527                                    ; preds = %2488, %2439
  %2528 = phi float [ %2465, %2439 ], [ %2524, %2488 ]
  %2529 = phi float [ %2466, %2439 ], [ %2525, %2488 ]
  %2530 = phi float [ %2467, %2439 ], [ %2526, %2488 ]
  %2531 = phi float [ %2454, %2439 ], [ %2498, %2488 ]
  %2532 = phi float [ %2454, %2439 ], [ %2499, %2488 ]
  %2533 = phi float [ %2454, %2439 ], [ %2500, %2488 ]
  br i1 %2020, label %2534, label %2732, !dx.controlflow.hints !122

; <label>:2534                                    ; preds = %2527
  %2535 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2536 = fmul fast float %2535, %2435
  %2537 = fsub fast float %2430, %2528
  %2538 = fsub fast float %2431, %2529
  %2539 = fsub fast float %2432, %2530
  %2540 = fmul fast float %2536, %2537
  %2541 = fmul fast float %2536, %2538
  %2542 = fmul fast float %2536, %2539
  %2543 = fadd fast float %2540, %2528
  %2544 = fadd fast float %2541, %2529
  %2545 = fadd fast float %2542, %2530
  %2546 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2531)  ; FMax(a,b)
  %2547 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2532)  ; FMax(a,b)
  %2548 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2533)  ; FMax(a,b)
  %2549 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2429)  ; FMax(a,b)
  %2550 = call float @dx.op.binary.f32(i32 35, float %2428, float %2438)  ; FMax(a,b)
  %2551 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2550)  ; FMax(a,b)
  %2552 = fdiv fast float %2428, %2551
  %2553 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2554 = fdiv fast float %2438, %2551
  %2555 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2556 = fcmp fast une float %2549, 1.000000e+00
  br i1 %2556, label %2557, label %2570, !dx.controlflow.hints !123

; <label>:2557                                    ; preds = %2534
  %2558 = call float @dx.op.unary.f32(i32 23, float %2549)  ; Log(value)
  %2559 = fmul fast float %2558, 0x3FE62E4300000000
  %2560 = fmul fast float %2430, %2559
  %2561 = fsub fast float -0.000000e+00, %2560
  %2562 = fmul fast float %2431, %2559
  %2563 = fsub fast float -0.000000e+00, %2562
  %2564 = fmul fast float %2432, %2559
  %2565 = fsub fast float -0.000000e+00, %2564
  %2566 = fsub fast float 1.000000e+00, %2549
  %2567 = fdiv fast float %2561, %2566
  %2568 = fdiv fast float %2563, %2566
  %2569 = fdiv fast float %2565, %2566
  br label %2570

; <label>:2570                                    ; preds = %2557, %2534
  %2571 = phi float [ %2567, %2557 ], [ %2430, %2534 ]
  %2572 = phi float [ %2568, %2557 ], [ %2431, %2534 ]
  %2573 = phi float [ %2569, %2557 ], [ %2432, %2534 ]
  %2574 = phi float [ %2559, %2557 ], [ 0.000000e+00, %2534 ]
  %2575 = fcmp fast une float %2546, 1.000000e+00
  br i1 %2575, label %2576, label %2583, !dx.controlflow.hints !124

; <label>:2576                                    ; preds = %2570
  %2577 = call float @dx.op.unary.f32(i32 23, float %2546)  ; Log(value)
  %2578 = fmul fast float %2577, 0x3FE62E4300000000
  %2579 = fmul fast float %2543, %2578
  %2580 = fsub fast float -0.000000e+00, %2579
  %2581 = fsub fast float 1.000000e+00, %2546
  %2582 = fdiv fast float %2580, %2581
  br label %2583

; <label>:2583                                    ; preds = %2576, %2570
  %2584 = phi float [ %2582, %2576 ], [ %2543, %2570 ]
  %2585 = phi float [ %2578, %2576 ], [ 0.000000e+00, %2570 ]
  %2586 = fcmp fast une float %2547, 1.000000e+00
  br i1 %2586, label %2587, label %2594, !dx.controlflow.hints !124

; <label>:2587                                    ; preds = %2583
  %2588 = call float @dx.op.unary.f32(i32 23, float %2547)  ; Log(value)
  %2589 = fmul fast float %2588, 0x3FE62E4300000000
  %2590 = fmul fast float %2544, %2589
  %2591 = fsub fast float -0.000000e+00, %2590
  %2592 = fsub fast float 1.000000e+00, %2547
  %2593 = fdiv fast float %2591, %2592
  br label %2594

; <label>:2594                                    ; preds = %2587, %2583
  %2595 = phi float [ %2593, %2587 ], [ %2544, %2583 ]
  %2596 = phi float [ %2589, %2587 ], [ 0.000000e+00, %2583 ]
  %2597 = fcmp fast une float %2548, 1.000000e+00
  br i1 %2597, label %2598, label %2605, !dx.controlflow.hints !124

; <label>:2598                                    ; preds = %2594
  %2599 = call float @dx.op.unary.f32(i32 23, float %2548)  ; Log(value)
  %2600 = fmul fast float %2599, 0x3FE62E4300000000
  %2601 = fmul fast float %2545, %2600
  %2602 = fsub fast float -0.000000e+00, %2601
  %2603 = fsub fast float 1.000000e+00, %2548
  %2604 = fdiv fast float %2602, %2603
  br label %2605

; <label>:2605                                    ; preds = %2598, %2594
  %2606 = phi float [ %2604, %2598 ], [ %2545, %2594 ]
  %2607 = phi float [ %2600, %2598 ], [ 0.000000e+00, %2594 ]
  %2608 = fmul fast float %2571, %2555
  %2609 = fmul fast float %2572, %2555
  %2610 = fmul fast float %2573, %2555
  %2611 = fmul fast float %2574, %2555
  %2612 = fmul fast float %2584, %2553
  %2613 = fmul fast float %2595, %2553
  %2614 = fmul fast float %2606, %2553
  %2615 = fmul fast float %2585, %2553
  %2616 = fmul fast float %2596, %2553
  %2617 = fmul fast float %2607, %2553
  %2618 = fadd fast float %2612, %2608
  %2619 = fadd fast float %2613, %2609
  %2620 = fadd fast float %2614, %2610
  %2621 = fadd fast float %2615, %2611
  %2622 = fadd fast float %2616, %2611
  %2623 = fadd fast float %2617, %2611
  %2624 = fcmp fast une float %2621, 0.000000e+00
  br i1 %2624, label %2625, label %2632, !dx.controlflow.hints !125

; <label>:2625                                    ; preds = %2605
  %2626 = fmul fast float %2621, 0x3FF7154760000000
  %2627 = call float @dx.op.unary.f32(i32 21, float %2626)  ; Exp(value)
  %2628 = fsub fast float 1.000000e+00, %2627
  %2629 = fmul fast float %2618, %2628
  %2630 = fsub fast float -0.000000e+00, %2629
  %2631 = fdiv fast float %2630, %2621
  br label %2632

; <label>:2632                                    ; preds = %2625, %2605
  %2633 = phi float [ %2627, %2625 ], [ 1.000000e+00, %2605 ]
  %2634 = phi float [ %2631, %2625 ], [ %2618, %2605 ]
  %2635 = fcmp fast une float %2622, 0.000000e+00
  br i1 %2635, label %2636, label %2643, !dx.controlflow.hints !125

; <label>:2636                                    ; preds = %2632
  %2637 = fmul fast float %2622, 0x3FF7154760000000
  %2638 = call float @dx.op.unary.f32(i32 21, float %2637)  ; Exp(value)
  %2639 = fsub fast float 1.000000e+00, %2638
  %2640 = fmul fast float %2619, %2639
  %2641 = fsub fast float -0.000000e+00, %2640
  %2642 = fdiv fast float %2641, %2622
  br label %2643

; <label>:2643                                    ; preds = %2636, %2632
  %2644 = phi float [ %2638, %2636 ], [ 1.000000e+00, %2632 ]
  %2645 = phi float [ %2642, %2636 ], [ %2619, %2632 ]
  %2646 = fcmp fast une float %2623, 0.000000e+00
  br i1 %2646, label %2647, label %2654, !dx.controlflow.hints !125

; <label>:2647                                    ; preds = %2643
  %2648 = fmul fast float %2623, 0x3FF7154760000000
  %2649 = call float @dx.op.unary.f32(i32 21, float %2648)  ; Exp(value)
  %2650 = fsub fast float 1.000000e+00, %2649
  %2651 = fmul fast float %2620, %2650
  %2652 = fsub fast float -0.000000e+00, %2651
  %2653 = fdiv fast float %2652, %2623
  br label %2654

; <label>:2654                                    ; preds = %2647, %2643
  %2655 = phi float [ %2649, %2647 ], [ 1.000000e+00, %2643 ]
  %2656 = phi float [ %2653, %2647 ], [ %2620, %2643 ]
  %2657 = fcmp fast ogt float %2553, %2555
  br i1 %2657, label %2658, label %2678, !dx.controlflow.hints !126

; <label>:2658                                    ; preds = %2654
  %2659 = fsub fast float 1.000000e+00, %2555
  %2660 = fmul fast float %2571, %2659
  %2661 = fmul fast float %2572, %2659
  %2662 = fmul fast float %2573, %2659
  %2663 = fmul fast float %2574, %2659
  %2664 = fcmp fast une float %2663, 0.000000e+00
  br i1 %2664, label %2665, label %2716, !dx.controlflow.hints !127

; <label>:2665                                    ; preds = %2658
  %2666 = fmul fast float %2663, 0x3FF7154760000000
  %2667 = call float @dx.op.unary.f32(i32 21, float %2666)  ; Exp(value)
  %2668 = fsub fast float 1.000000e+00, %2667
  %2669 = fmul fast float %2660, %2668
  %2670 = fsub fast float -0.000000e+00, %2669
  %2671 = fmul fast float %2661, %2668
  %2672 = fsub fast float -0.000000e+00, %2671
  %2673 = fmul fast float %2662, %2668
  %2674 = fsub fast float -0.000000e+00, %2673
  %2675 = fdiv fast float %2670, %2663
  %2676 = fdiv fast float %2672, %2663
  %2677 = fdiv fast float %2674, %2663
  br label %2716

; <label>:2678                                    ; preds = %2654
  %2679 = fsub fast float 1.000000e+00, %2553
  %2680 = fmul fast float %2584, %2679
  %2681 = fmul fast float %2595, %2679
  %2682 = fmul fast float %2606, %2679
  %2683 = fmul fast float %2585, %2679
  %2684 = fmul fast float %2596, %2679
  %2685 = fmul fast float %2607, %2679
  %2686 = fcmp fast une float %2683, 0.000000e+00
  br i1 %2686, label %2687, label %2694, !dx.controlflow.hints !125

; <label>:2687                                    ; preds = %2678
  %2688 = fmul fast float %2683, 0x3FF7154760000000
  %2689 = call float @dx.op.unary.f32(i32 21, float %2688)  ; Exp(value)
  %2690 = fsub fast float 1.000000e+00, %2689
  %2691 = fmul fast float %2680, %2690
  %2692 = fsub fast float -0.000000e+00, %2691
  %2693 = fdiv fast float %2692, %2683
  br label %2694

; <label>:2694                                    ; preds = %2687, %2678
  %2695 = phi float [ %2693, %2687 ], [ %2680, %2678 ]
  %2696 = phi float [ %2689, %2687 ], [ 1.000000e+00, %2678 ]
  %2697 = fcmp fast une float %2684, 0.000000e+00
  br i1 %2697, label %2698, label %2705, !dx.controlflow.hints !125

; <label>:2698                                    ; preds = %2694
  %2699 = fmul fast float %2684, 0x3FF7154760000000
  %2700 = call float @dx.op.unary.f32(i32 21, float %2699)  ; Exp(value)
  %2701 = fsub fast float 1.000000e+00, %2700
  %2702 = fmul fast float %2681, %2701
  %2703 = fsub fast float -0.000000e+00, %2702
  %2704 = fdiv fast float %2703, %2684
  br label %2705

; <label>:2705                                    ; preds = %2698, %2694
  %2706 = phi float [ %2704, %2698 ], [ %2681, %2694 ]
  %2707 = phi float [ %2700, %2698 ], [ 1.000000e+00, %2694 ]
  %2708 = fcmp fast une float %2685, 0.000000e+00
  br i1 %2708, label %2709, label %2716, !dx.controlflow.hints !125

; <label>:2709                                    ; preds = %2705
  %2710 = fmul fast float %2685, 0x3FF7154760000000
  %2711 = call float @dx.op.unary.f32(i32 21, float %2710)  ; Exp(value)
  %2712 = fsub fast float 1.000000e+00, %2711
  %2713 = fmul fast float %2682, %2712
  %2714 = fsub fast float -0.000000e+00, %2713
  %2715 = fdiv fast float %2714, %2685
  br label %2716

; <label>:2716                                    ; preds = %2709, %2705, %2665, %2658
  %2717 = phi float [ %2715, %2709 ], [ %2677, %2665 ], [ %2662, %2658 ], [ %2682, %2705 ]
  %2718 = phi float [ %2706, %2709 ], [ %2676, %2665 ], [ %2661, %2658 ], [ %2706, %2705 ]
  %2719 = phi float [ %2695, %2709 ], [ %2675, %2665 ], [ %2660, %2658 ], [ %2695, %2705 ]
  %2720 = phi float [ %2711, %2709 ], [ %2667, %2665 ], [ 1.000000e+00, %2658 ], [ 1.000000e+00, %2705 ]
  %2721 = phi float [ %2707, %2709 ], [ %2667, %2665 ], [ 1.000000e+00, %2658 ], [ %2707, %2705 ]
  %2722 = phi float [ %2696, %2709 ], [ %2667, %2665 ], [ 1.000000e+00, %2658 ], [ %2696, %2705 ]
  %2723 = fmul fast float %2722, %2634
  %2724 = fmul fast float %2721, %2645
  %2725 = fmul fast float %2720, %2656
  %2726 = fadd fast float %2723, %2719
  %2727 = fadd fast float %2724, %2718
  %2728 = fadd fast float %2725, %2717
  %2729 = fmul fast float %2722, %2633
  %2730 = fmul fast float %2721, %2644
  %2731 = fmul fast float %2720, %2655
  br label %2732

; <label>:2732                                    ; preds = %2716, %2527
  %2733 = phi float [ %2533, %2527 ], [ %2731, %2716 ]
  %2734 = phi float [ %2532, %2527 ], [ %2730, %2716 ]
  %2735 = phi float [ %2531, %2527 ], [ %2729, %2716 ]
  %2736 = phi float [ %2530, %2527 ], [ %2728, %2716 ]
  %2737 = phi float [ %2529, %2527 ], [ %2727, %2716 ]
  %2738 = phi float [ %2528, %2527 ], [ %2726, %2716 ]
  %2739 = fmul fast float %2735, %1876
  %2740 = fmul fast float %2734, %1877
  %2741 = fmul fast float %2733, %1878
  %2742 = fsub fast float 1.000000e+00, %1939
  %2743 = fmul fast float %2738, %2742
  %2744 = fmul fast float %2737, %2742
  %2745 = fmul fast float %2736, %2742
  %2746 = fadd fast float %2743, %2739
  %2747 = fadd fast float %2744, %2740
  %2748 = fadd fast float %2745, %2741
  %2749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2750 = extractvalue %dx.types.CBufRet.f32 %2749, 2
  %2751 = fmul fast float %2750, %1949
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float %1939, float %1939, float %1939, float %1939, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = fmul fast float %2754, %2746
  %2756 = fmul fast float %2754, %2747
  %2757 = fmul fast float %2754, %2748
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %2755, float %2756, float %2757, float %2755, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %2752, float %2752, float %2752, float %2752, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!4 = !{!5, !22, !28, !31}
!5 = !{!6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 164}
!11 = !{i32 3, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!12 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 8, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!18 = !{i32 9, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!19 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!20 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!21 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!22 = !{!23, !24, !25, !26}
!23 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !27}
!27 = !{i32 0, i32 14}
!28 = !{!29, !30}
!29 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!31 = !{!32, !33}
!32 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{void ()* @cs_fog_raymarching_air_particles, !"cs_fog_raymarching_air_particles", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 8, i32 8, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = !{!83, !83, i64 0}
!83 = !{!"float", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !{!87, !89, !91, !92, !94, !95, !96}
!87 = distinct !{!87, !88, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!88 = distinct !{!88, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!89 = distinct !{!89, !90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!90 = distinct !{!90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!91 = distinct !{!91, !90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!92 = distinct !{!92, !93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!93 = distinct !{!93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!94 = distinct !{!94, !93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!95 = distinct !{!95, !93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!96 = distinct !{!96, !93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = !{!99}
!99 = distinct !{!99, !100, !"\01?sort@@YAXAIAM00@Z: %c"}
!100 = distinct !{!100, !"\01?sort@@YAXAIAM00@Z"}
!101 = !{!102, !103, !87, !89, !91, !92, !94, !95, !96}
!102 = distinct !{!102, !100, !"\01?sort@@YAXAIAM00@Z: %a"}
!103 = distinct !{!103, !100, !"\01?sort@@YAXAIAM00@Z: %b"}
!104 = !{!103}
!105 = !{!102, !99, !87, !89, !91, !92, !94, !95, !96}
!106 = !{!102}
!107 = !{!103, !99, !87, !89, !91, !92, !94, !95, !96}
!108 = !{!109}
!109 = distinct !{!109, !110, !"\01?sort@@YAXAIAM00@Z: %c"}
!110 = distinct !{!110, !"\01?sort@@YAXAIAM00@Z"}
!111 = !{!112, !113, !87, !89, !91, !92, !94, !95, !96}
!112 = distinct !{!112, !110, !"\01?sort@@YAXAIAM00@Z: %a"}
!113 = distinct !{!113, !110, !"\01?sort@@YAXAIAM00@Z: %b"}
!114 = !{!113}
!115 = !{!112, !109, !87, !89, !91, !92, !94, !95, !96}
!116 = !{!112}
!117 = !{!113, !109, !87, !89, !91, !92, !94, !95, !96}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}

