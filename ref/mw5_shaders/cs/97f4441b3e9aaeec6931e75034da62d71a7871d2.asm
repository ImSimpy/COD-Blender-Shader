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
; shader hash: 84f7b2fcf122d33390664c8f083bf435
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

define void @cs_fog_raymarching_particles() {
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
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fsub fast float -0.000000e+00, %65
  %135 = fsub fast float -0.000000e+00, %66
  %136 = fsub fast float %131, %67
  %137 = fadd fast float %136, %133
  %138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %134, float %135, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = fdiv fast float 1.000000e+00, %139
  %141 = fmul fast float %140, %138
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = fsub fast float %143, %67
  %145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %134, float %135, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = fmul fast float %140, %145
  %147 = call float @dx.op.binary.f32(i32 36, float %141, float %146)  ; FMin(a,b)
  %148 = call float @dx.op.binary.f32(i32 35, float %141, float %146)  ; FMax(a,b)
  %149 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %147)  ; FMin(a,b)
  %150 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %148)  ; FMax(a,b)
  %151 = fdiv fast float 1.000000e+00, %108
  %152 = fdiv fast float 1.000000e+00, %109
  %153 = fdiv fast float 1.000000e+00, %110
  %154 = call float @dx.op.binary.f32(i32 36, float %129, float %150)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %106, float %149)  ; FMax(a,b)
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = fmul fast float %54, 2.000000e+00
  %159 = fadd fast float %158, -1.000000e+00
  %160 = fmul fast float %157, %159
  %161 = fadd fast float %160, %155
  %162 = fcmp fast olt float %161, %154
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %165 = fcmp fast olt float %164, 1.000000e+00
  %166 = and i1 %165, %162
  br i1 %166, label %167, label %1712

; <label>:167                                     ; preds = %0
  %168 = fmul fast float %161, %110
  %169 = fadd fast float %168, %67
  %170 = fmul fast float %161, %109
  %171 = fadd fast float %170, %66
  %172 = fmul fast float %161, %108
  %173 = fadd fast float %172, %65
  br label %174

; <label>:174                                     ; preds = %1684, %167
  %175 = phi float [ %1686, %1684 ], [ undef, %167 ]
  %176 = phi float [ %1687, %1684 ], [ undef, %167 ]
  %177 = phi float [ %1688, %1684 ], [ undef, %167 ]
  %178 = phi float [ %1689, %1684 ], [ undef, %167 ]
  %179 = phi float [ %303, %1684 ], [ undef, %167 ]
  %180 = phi float [ %304, %1684 ], [ undef, %167 ]
  %181 = phi float [ %305, %1684 ], [ undef, %167 ]
  %182 = phi float [ %306, %1684 ], [ undef, %167 ]
  %183 = phi float [ %1690, %1684 ], [ 0.000000e+00, %167 ]
  %184 = phi float [ %1691, %1684 ], [ 1.000000e+00, %167 ]
  %185 = phi float [ %1692, %1684 ], [ 0.000000e+00, %167 ]
  %186 = phi float [ %1693, %1684 ], [ 0.000000e+00, %167 ]
  %187 = phi float [ %1694, %1684 ], [ 0.000000e+00, %167 ]
  %188 = phi float [ %1704, %1684 ], [ %173, %167 ]
  %189 = phi float [ %1705, %1684 ], [ %171, %167 ]
  %190 = phi float [ %1706, %1684 ], [ %169, %167 ]
  %191 = phi float [ %1685, %1684 ], [ %161, %167 ]
  %192 = phi i32 [ %308, %1684 ], [ 10, %167 ]
  %193 = phi float [ %1695, %1684 ], [ 0.000000e+00, %167 ]
  %194 = phi float [ %1696, %1684 ], [ 0.000000e+00, %167 ]
  %195 = phi float [ %1697, %1684 ], [ 0.000000e+00, %167 ]
  %196 = phi float [ %1698, %1684 ], [ 0.000000e+00, %167 ]
  %197 = phi float [ %1699, %1684 ], [ 0.000000e+00, %167 ]
  %198 = phi i32 [ %1700, %1684 ], [ 0, %167 ]
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = extractvalue %dx.types.CBufRet.f32 %201, 1
  %204 = fsub fast float %188, %202
  %205 = fsub fast float %189, %203
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = extractvalue %dx.types.CBufRet.f32 %206, 3
  %209 = fmul fast float %204, %207
  %210 = fmul fast float %205, %208
  %211 = call float @dx.op.binary.f32(i32 36, float %209, float %210)  ; FMin(a,b)
  %212 = fcmp fast olt float %211, 0.000000e+00
  %213 = call float @dx.op.binary.f32(i32 35, float %209, float %210)  ; FMax(a,b)
  %214 = fcmp fast ogt float %213, 1.000000e+00
  %215 = or i1 %212, %214
  %216 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %217 = fcmp fast olt float %190, %216
  %218 = or i1 %215, %217
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 3
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fadd fast float %222, %220
  %224 = fcmp fast ogt float %190, %223
  %225 = or i1 %218, %224
  br i1 %225, label %226, label %255, !dx.controlflow.hints !37

; <label>:226                                     ; preds = %174
  %227 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %229 = fsub fast float %202, %188
  %230 = fmul fast float %229, %151
  %231 = fadd fast float %229, %227
  %232 = fmul fast float %231, %151
  %233 = call float @dx.op.binary.f32(i32 36, float %230, float %232)  ; FMin(a,b)
  %234 = call float @dx.op.binary.f32(i32 35, float %230, float %232)  ; FMax(a,b)
  %235 = fsub fast float %203, %189
  %236 = fmul fast float %235, %152
  %237 = fadd fast float %235, %228
  %238 = fmul fast float %237, %152
  %239 = call float @dx.op.binary.f32(i32 36, float %236, float %238)  ; FMin(a,b)
  %240 = call float @dx.op.binary.f32(i32 35, float %233, float %239)  ; FMax(a,b)
  %241 = call float @dx.op.binary.f32(i32 35, float %236, float %238)  ; FMax(a,b)
  %242 = call float @dx.op.binary.f32(i32 36, float %234, float %241)  ; FMin(a,b)
  %243 = fsub fast float %216, %190
  %244 = fmul fast float %243, %153
  %245 = fsub fast float %220, %190
  %246 = fadd fast float %245, %222
  %247 = fmul fast float %246, %153
  %248 = call float @dx.op.binary.f32(i32 36, float %244, float %247)  ; FMin(a,b)
  %249 = call float @dx.op.binary.f32(i32 35, float %240, float %248)  ; FMax(a,b)
  %250 = call float @dx.op.binary.f32(i32 35, float %244, float %247)  ; FMax(a,b)
  %251 = call float @dx.op.binary.f32(i32 36, float %242, float %250)  ; FMin(a,b)
  %252 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %249)  ; FMax(a,b)
  %253 = fcmp fast oge float %251, %252
  %254 = select i1 %253, float %249, float 1.000000e+07
  br label %301

; <label>:255                                     ; preds = %174
  %256 = fsub fast float 1.000000e+00, %210
  %257 = icmp eq i32 %192, 0
  br i1 %257, label %286, label %258

; <label>:258                                     ; preds = %255
  br label %259

; <label>:259                                     ; preds = %282, %258
  %260 = phi i32 [ %283, %282 ], [ %192, %258 ]
  %261 = uitofp i32 %260 to float
  %262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %209, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float %261)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = fcmp fast oeq float %263, 0.000000e+00
  %267 = fcmp ule float %190, %265
  %268 = fcmp uge float %190, %264
  %269 = or i1 %268, %267
  %270 = or i1 %266, %269
  br i1 %270, label %271, label %282, !dx.controlflow.hints !38

; <label>:271                                     ; preds = %259
  %272 = extractvalue %dx.types.ResRet.f32 %262, 3
  %273 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %274 = and i32 %260, 31
  %275 = lshr i32 1024, %274
  %276 = uitofp i32 %275 to float
  %277 = fdiv fast float %273, %276
  %278 = add i32 %260, 1
  %279 = uitofp i32 %278 to float
  %280 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %279)  ; FMin(a,b)
  %281 = fptosi float %280 to i32
  br label %301

; <label>:282                                     ; preds = %259
  %283 = add i32 %260, -1
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %259, !llvm.loop !39

; <label>:285                                     ; preds = %282
  br label %286

; <label>:286                                     ; preds = %285, %255
  %287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %209, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = extractvalue %dx.types.ResRet.f32 %287, 3
  %292 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %293 = fmul fast float %292, 9.765625e-04
  %294 = fcmp fast oeq float %288, 0.000000e+00
  %295 = fcmp ule float %190, %290
  %296 = fcmp uge float %190, %289
  %297 = or i1 %296, %295
  %298 = or i1 %294, %297
  %299 = zext i1 %298 to i32
  %300 = xor i32 %299, 1
  br label %301

; <label>:301                                     ; preds = %286, %271, %226
  %302 = phi float [ %254, %226 ], [ %277, %271 ], [ %293, %286 ]
  %303 = phi float [ %179, %226 ], [ %263, %271 ], [ %288, %286 ]
  %304 = phi float [ %180, %226 ], [ %264, %271 ], [ %289, %286 ]
  %305 = phi float [ %181, %226 ], [ %265, %271 ], [ %290, %286 ]
  %306 = phi float [ %182, %226 ], [ %272, %271 ], [ %291, %286 ]
  %307 = phi i32 [ 0, %226 ], [ 0, %271 ], [ %300, %286 ]
  %308 = phi i32 [ 10, %226 ], [ %281, %271 ], [ 1, %286 ]
  %309 = icmp eq i32 %307, 0
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = call float @dx.op.binary.f32(i32 35, float %302, float %311)  ; FMax(a,b)
  %313 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %312)  ; FMin(a,b)
  %314 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %315 = fmul fast float %314, %191
  %316 = call float @dx.op.unary.f32(i32 23, float %315)  ; Log(value)
  %317 = fmul fast float %316, 0x3FE62E4300000000
  %318 = call float @dx.op.binary.f32(i32 35, float %317, float 1.000000e+00)  ; FMax(a,b)
  %319 = fmul fast float %318, 0x47EFFFFFE0000000
  %320 = call float @dx.op.binary.f32(i32 36, float %319, float %313)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float %320, float %200)  ; FMax(a,b)
  %322 = fadd fast float %154, 0x3F1A36E2E0000000
  %323 = fsub fast float %322, %191
  %324 = call float @dx.op.binary.f32(i32 36, float %323, float %321)  ; FMin(a,b)
  br i1 %309, label %463, label %325, !dx.controlflow.hints !41

; <label>:325                                     ; preds = %301
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.i32 %330, 0
  %332 = icmp ne i32 %331, 0
  %333 = zext i1 %332 to i32
  %334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.i32 %334, 0
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %370, label %337

; <label>:337                                     ; preds = %325
  br label %338

; <label>:338                                     ; preds = %365, %337
  %339 = phi i32 [ %366, %365 ], [ 0, %337 ]
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %339, i32 0)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = extractvalue %dx.types.ResRet.f32 %340, 1
  %343 = extractvalue %dx.types.ResRet.f32 %340, 2
  %344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %339, i32 16)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = extractvalue %dx.types.ResRet.f32 %344, 1
  %347 = extractvalue %dx.types.ResRet.f32 %344, 2
  %348 = fsub fast float %341, %345
  %349 = fsub fast float %342, %346
  %350 = fsub fast float %343, %347
  %351 = fadd fast float %345, %341
  %352 = fadd fast float %346, %342
  %353 = fadd fast float %347, %343
  %354 = fcmp fast olt float %188, %348
  %355 = fcmp fast olt float %189, %349
  %356 = fcmp fast olt float %190, %350
  %357 = or i1 %354, %355
  %358 = or i1 %356, %357
  %359 = fcmp fast ogt float %188, %351
  %360 = fcmp fast ogt float %189, %352
  %361 = fcmp fast ogt float %190, %353
  %362 = or i1 %359, %360
  %363 = or i1 %361, %362
  %364 = or i1 %358, %363
  br i1 %364, label %365, label %368, !dx.controlflow.hints !42

; <label>:365                                     ; preds = %338
  %366 = add nuw i32 %339, 1
  %367 = icmp ult i32 %366, %335
  br i1 %367, label %338, label %368

; <label>:368                                     ; preds = %365, %338
  %369 = phi i32 [ 255, %365 ], [ %339, %338 ]
  br label %370

; <label>:370                                     ; preds = %368, %325
  %371 = phi i32 [ 255, %325 ], [ %369, %368 ]
  %372 = icmp eq i32 %371, 255
  br i1 %372, label %382, label %373, !dx.controlflow.hints !43

; <label>:373                                     ; preds = %370
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %371, i32 32)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = extractvalue %dx.types.ResRet.f32 %374, 1
  %377 = extractvalue %dx.types.ResRet.f32 %374, 2
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %371, i32 156)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = icmp ne i32 %379, 0
  %381 = zext i1 %380 to i32
  br label %382

; <label>:382                                     ; preds = %373, %370
  %383 = phi float [ %375, %373 ], [ %327, %370 ]
  %384 = phi float [ %376, %373 ], [ %328, %370 ]
  %385 = phi float [ %377, %373 ], [ %329, %370 ]
  %386 = phi i32 [ %381, %373 ], [ %333, %370 ]
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %457, !dx.controlflow.hints !44

; <label>:388                                     ; preds = %382
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 3
  %391 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %394 = extractvalue %dx.types.CBufRet.f32 %392, 3
  br i1 %372, label %405, label %395, !dx.controlflow.hints !45

; <label>:395                                     ; preds = %388
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %371, i32 60)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %371, i32 64)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %371, i32 72)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %371, i32 96)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  br label %405

; <label>:405                                     ; preds = %395, %388
  %406 = phi float [ %397, %395 ], [ %222, %388 ]
  %407 = phi float [ %402, %395 ], [ %220, %388 ]
  %408 = phi float [ %404, %395 ], [ %391, %388 ]
  %409 = phi float [ %399, %395 ], [ %393, %388 ]
  %410 = phi float [ %400, %395 ], [ %394, %388 ]
  %411 = call float @dx.op.binary.f32(i32 35, float %303, float 0.000000e+00)  ; FMax(a,b)
  %412 = call float @dx.op.binary.f32(i32 36, float %411, float 1.000000e+00)  ; FMin(a,b)
  %413 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %414 = call float @dx.op.binary.f32(i32 35, float %306, float 0x3F847AE140000000)  ; FMax(a,b)
  %415 = fsub fast float %304, %190
  %416 = fsub fast float %190, %305
  %417 = call float @dx.op.binary.f32(i32 36, float %416, float %415)  ; FMin(a,b)
  %418 = fdiv fast float %417, %414
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = fsub fast float %190, %407
  %421 = fdiv fast float %420, %406
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fsub fast float 1.000000e+00, %422
  %424 = fmul float %419, %423
  %425 = fmul float %424, %424
  %426 = fmul fast float %413, %390
  %427 = fmul fast float %426, %425
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = fsub fast float %427, %430
  %432 = fsub fast float %429, %430
  %433 = fdiv fast float %431, %432
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fmul fast float %434, %408
  %436 = fcmp fast ogt float %410, 0.000000e+00
  br i1 %436, label %437, label %457, !dx.controlflow.hints !46

; <label>:437                                     ; preds = %405
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %440 = extractvalue %dx.types.CBufRet.f32 %438, 1
  %441 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %442 = fsub fast float %188, %439
  %443 = fsub fast float %189, %440
  %444 = fsub fast float %190, %441
  %445 = fmul fast float %442, %442
  %446 = fmul fast float %443, %443
  %447 = fadd fast float %445, %446
  %448 = fmul fast float %444, %444
  %449 = fadd fast float %447, %448
  %450 = call float @dx.op.unary.f32(i32 24, float %449)  ; Sqrt(value)
  %451 = fsub fast float %450, %409
  %452 = fsub fast float %410, %409
  %453 = fdiv fast float %451, %452
  %454 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %455 = fmul fast float %454, %454
  %456 = fmul fast float %455, %435
  br label %457

; <label>:457                                     ; preds = %437, %405, %382
  %458 = phi float [ 0.000000e+00, %382 ], [ %456, %437 ], [ %435, %405 ]
  %459 = fmul fast float %458, %324
  %460 = fmul fast float %459, %383
  %461 = fmul fast float %459, %384
  %462 = fmul fast float %459, %385
  br label %463

; <label>:463                                     ; preds = %457, %301
  %464 = phi float [ %459, %457 ], [ 0.000000e+00, %301 ]
  %465 = phi float [ %460, %457 ], [ 0.000000e+00, %301 ]
  %466 = phi float [ %461, %457 ], [ 0.000000e+00, %301 ]
  %467 = phi float [ %462, %457 ], [ 0.000000e+00, %301 ]
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 1
  %470 = fcmp fast ogt float %464, %469
  br i1 %470, label %471, label %476, !dx.controlflow.hints !47

; <label>:471                                     ; preds = %463
  %472 = fdiv fast float 1.000000e+00, %464
  %473 = fmul fast float %472, %465
  %474 = fmul fast float %472, %466
  %475 = fmul fast float %472, %467
  br label %476

; <label>:476                                     ; preds = %471, %463
  %477 = phi float [ %473, %471 ], [ %465, %463 ]
  %478 = phi float [ %474, %471 ], [ %466, %463 ]
  %479 = phi float [ %475, %471 ], [ %467, %463 ]
  br i1 %470, label %482, label %480, !dx.controlflow.hints !48

; <label>:480                                     ; preds = %476
  %481 = fadd fast float %324, %191
  br label %1684

; <label>:482                                     ; preds = %476
  %483 = fmul fast float %464, 0xBFF7154760000000
  %484 = call float @dx.op.unary.f32(i32 21, float %483)  ; Exp(value)
  %485 = call float @dx.op.unary.f32(i32 7, float %484)  ; Saturate(value)
  %486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.i32 %486, 0
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %489, label %524, !dx.controlflow.hints !49

; <label>:489                                     ; preds = %482
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 0
  %492 = extractvalue %dx.types.CBufRet.f32 %490, 1
  %493 = fsub fast float %188, %491
  %494 = fsub fast float %189, %492
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 0
  %497 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %498 = fmul fast float %493, %496
  %499 = fmul fast float %494, %497
  %500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %498, float %499, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = fcmp fast ogt float %501, 0.000000e+00
  %503 = extractvalue %dx.types.CBufRet.i32 %486, 3
  %504 = icmp ne i32 %503, 0
  %505 = and i1 %502, %504
  br i1 %505, label %506, label %524, !dx.controlflow.hints !50

; <label>:506                                     ; preds = %489
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 0
  %509 = extractvalue %dx.types.CBufRet.f32 %507, 1
  %510 = fsub fast float %188, %508
  %511 = fsub fast float %189, %509
  %512 = fmul fast float %510, %510
  %513 = fmul fast float %511, %511
  %514 = fadd fast float %512, %513
  %515 = uitofp i32 %503 to float
  %516 = fmul fast float %515, %515
  %517 = fcmp fast ogt float %514, %516
  br i1 %517, label %524, label %518, !dx.controlflow.hints !51

; <label>:518                                     ; preds = %506
  %519 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %520 = fsub fast float %515, %519
  %521 = fmul fast float %520, 0x3F75555560000000
  %522 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %523 = call float @dx.op.binary.f32(i32 36, float %522, float %501)  ; FMin(a,b)
  br label %524

; <label>:524                                     ; preds = %518, %506, %489, %482
  %525 = phi float [ 1.000000e+00, %482 ], [ %523, %518 ], [ %501, %489 ], [ 0.000000e+00, %506 ]
  %526 = fcmp fast ogt float %525, 0.000000e+00
  br i1 %526, label %527, label %600, !dx.controlflow.hints !52

; <label>:527                                     ; preds = %524
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = extractvalue %dx.types.ResRet.i32 %528, 1
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = extractvalue %dx.types.ResRet.i32 %531, 1
  %534 = extractvalue %dx.types.ResRet.i32 %531, 2
  %535 = extractvalue %dx.types.ResRet.i32 %531, 3
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = extractvalue %dx.types.ResRet.i32 %536, 1
  %539 = extractvalue %dx.types.ResRet.i32 %536, 2
  %540 = extractvalue %dx.types.ResRet.i32 %536, 3
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = extractvalue %dx.types.ResRet.i32 %541, 1
  %544 = extractvalue %dx.types.ResRet.i32 %541, 2
  %545 = extractvalue %dx.types.ResRet.i32 %541, 3
  %546 = and i32 %542, 65535
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %542, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = and i32 %543, 65535
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %543, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = and i32 %544, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %544, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = and i32 %545, 65535
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = lshr i32 %545, 16
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = and i32 %537, 65535
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = lshr i32 %537, 16
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = and i32 %538, 65535
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %538, 16
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = and i32 %539, 65535
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = lshr i32 %539, 16
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = and i32 %540, 65535
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = lshr i32 %540, 16
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = and i32 %532, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %532, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = and i32 %533, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %533, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = and i32 %534, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %534, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = and i32 %535, 65535
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %535, 16
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = and i32 %529, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %529, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = and i32 %530, 65535
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  br label %600

; <label>:600                                     ; preds = %527, %524
  %601 = phi float [ %599, %527 ], [ 0.000000e+00, %524 ]
  %602 = phi float [ %597, %527 ], [ 0.000000e+00, %524 ]
  %603 = phi float [ %595, %527 ], [ 0.000000e+00, %524 ]
  %604 = phi float [ %593, %527 ], [ 0.000000e+00, %524 ]
  %605 = phi float [ %591, %527 ], [ 0.000000e+00, %524 ]
  %606 = phi float [ %589, %527 ], [ 0.000000e+00, %524 ]
  %607 = phi float [ %587, %527 ], [ 0.000000e+00, %524 ]
  %608 = phi float [ %585, %527 ], [ 0.000000e+00, %524 ]
  %609 = phi float [ %583, %527 ], [ 0.000000e+00, %524 ]
  %610 = phi float [ %581, %527 ], [ 0.000000e+00, %524 ]
  %611 = phi float [ %579, %527 ], [ 0.000000e+00, %524 ]
  %612 = phi float [ %577, %527 ], [ 0.000000e+00, %524 ]
  %613 = phi float [ %575, %527 ], [ 0.000000e+00, %524 ]
  %614 = phi float [ %573, %527 ], [ 0.000000e+00, %524 ]
  %615 = phi float [ %571, %527 ], [ 0.000000e+00, %524 ]
  %616 = phi float [ %569, %527 ], [ 0.000000e+00, %524 ]
  %617 = phi float [ %567, %527 ], [ 0.000000e+00, %524 ]
  %618 = phi float [ %565, %527 ], [ 0.000000e+00, %524 ]
  %619 = phi float [ %563, %527 ], [ 0.000000e+00, %524 ]
  %620 = phi float [ %561, %527 ], [ 0.000000e+00, %524 ]
  %621 = phi float [ %559, %527 ], [ 0.000000e+00, %524 ]
  %622 = phi float [ %557, %527 ], [ 0.000000e+00, %524 ]
  %623 = phi float [ %555, %527 ], [ 0.000000e+00, %524 ]
  %624 = phi float [ %553, %527 ], [ 0.000000e+00, %524 ]
  %625 = phi float [ %551, %527 ], [ 0.000000e+00, %524 ]
  %626 = phi float [ %549, %527 ], [ 0.000000e+00, %524 ]
  %627 = phi float [ %547, %527 ], [ 0.000000e+00, %524 ]
  %628 = fcmp fast olt float %525, 1.000000e+00
  br i1 %628, label %629, label %1289, !dx.controlflow.hints !53

; <label>:629                                     ; preds = %600
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %633 = fsub fast float %188, %631
  %634 = fsub fast float %189, %632
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = fmul fast float %633, %636
  %639 = fmul fast float %634, %637
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 0
  %642 = fmul fast float %641, %638
  %643 = extractvalue %dx.types.CBufRet.f32 %640, 1
  %644 = fadd fast float %642, %643
  %645 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %646 = fmul fast float %645, %639
  %647 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %648 = fadd fast float %646, %647
  %649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %644, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %654 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %655 = fsub fast float %653, %654
  %656 = fmul fast float %655, %650
  %657 = fadd fast float %656, %654
  %658 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %659 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %660 = fsub fast float %658, %659
  %661 = fmul fast float %660, %651
  %662 = fadd fast float %661, %659
  %663 = fsub fast float %190, %657
  %664 = fsub fast float %662, %657
  %665 = fdiv fast float %663, %664
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = fmul fast float %668, %666
  %670 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %671 = fadd fast float %669, %670
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %644, float %648, float %671, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = extractvalue %dx.types.ResRet.f32 %672, 1
  %675 = extractvalue %dx.types.ResRet.f32 %672, 2
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %678 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %679 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %680 = fmul fast float %677, %673
  %681 = fmul fast float %678, %674
  %682 = fmul fast float %679, %675
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %685 = extractvalue %dx.types.CBufRet.f32 %683, 1
  %686 = extractvalue %dx.types.CBufRet.f32 %683, 2
  %687 = fadd fast float %680, %684
  %688 = fadd fast float %681, %685
  %689 = fadd fast float %682, %686
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = fmul fast float %691, %638
  %693 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %694 = fadd fast float %692, %693
  %695 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %696 = fmul fast float %695, %639
  %697 = extractvalue %dx.types.CBufRet.f32 %690, 3
  %698 = fadd fast float %696, %697
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 0
  %701 = extractvalue %dx.types.CBufRet.f32 %699, 1
  %702 = extractvalue %dx.types.CBufRet.f32 %699, 2
  %703 = extractvalue %dx.types.CBufRet.f32 %699, 3
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %707 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %708 = extractvalue %dx.types.CBufRet.f32 %704, 3
  %709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %694, float %698, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = extractvalue %dx.types.ResRet.f32 %709, 1
  %712 = extractvalue %dx.types.ResRet.f32 %709, 2
  %713 = extractvalue %dx.types.ResRet.f32 %709, 3
  %714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %694, float %698, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = extractvalue %dx.types.ResRet.f32 %714, 3
  %719 = fmul fast float %710, %687
  %720 = fmul fast float %715, %687
  %721 = fmul fast float %717, %687
  %722 = fmul fast float %713, %687
  %723 = fadd fast float %719, %700
  %724 = fadd fast float %720, %701
  %725 = fadd fast float %721, %702
  %726 = fadd fast float %722, %703
  %727 = fmul fast float %711, %687
  %728 = fmul fast float %716, %687
  %729 = fadd fast float %727, %705
  %730 = fadd fast float %728, %706
  %731 = fmul fast float %712, %687
  %732 = fmul fast float %718, %687
  %733 = fadd fast float %731, %707
  %734 = fadd fast float %732, %708
  %735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %694, float %698, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %694, float %698, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  %745 = fmul fast float %736, %688
  %746 = fmul fast float %741, %688
  %747 = fmul fast float %743, %688
  %748 = fmul fast float %739, %688
  %749 = fadd fast float %723, %745
  %750 = fadd fast float %724, %746
  %751 = fadd fast float %725, %747
  %752 = fadd fast float %726, %748
  %753 = fmul fast float %737, %688
  %754 = fmul fast float %742, %688
  %755 = fadd fast float %729, %753
  %756 = fadd fast float %730, %754
  %757 = fmul fast float %738, %688
  %758 = fmul fast float %744, %688
  %759 = fadd fast float %733, %757
  %760 = fadd fast float %734, %758
  %761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %694, float %698, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = extractvalue %dx.types.ResRet.f32 %761, 2
  %765 = extractvalue %dx.types.ResRet.f32 %761, 3
  %766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %694, float %698, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = extractvalue %dx.types.ResRet.f32 %766, 3
  %771 = fmul fast float %762, %689
  %772 = fmul fast float %767, %689
  %773 = fmul fast float %769, %689
  %774 = fmul fast float %765, %689
  %775 = fadd fast float %749, %771
  %776 = fadd fast float %750, %772
  %777 = fadd fast float %751, %773
  %778 = fadd fast float %752, %774
  %779 = fmul fast float %763, %689
  %780 = fmul fast float %768, %689
  %781 = fadd fast float %755, %779
  %782 = fadd fast float %756, %780
  %783 = fmul fast float %764, %689
  %784 = fmul fast float %770, %689
  %785 = fadd fast float %759, %783
  %786 = fadd fast float %760, %784
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 0
  %789 = fsub fast float %188, %788
  %790 = fsub fast float %631, %188
  %791 = call float @dx.op.binary.f32(i32 35, float %790, float %789)  ; FMax(a,b)
  %792 = extractvalue %dx.types.CBufRet.f32 %787, 1
  %793 = fsub fast float %189, %792
  %794 = fsub fast float %632, %189
  %795 = call float @dx.op.binary.f32(i32 35, float %794, float %793)  ; FMax(a,b)
  %796 = call float @dx.op.binary.f32(i32 35, float %791, float %795)  ; FMax(a,b)
  %797 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %798 = fmul fast float %797, %796
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.f32 %800, 0
  %802 = extractvalue %dx.types.CBufRet.f32 %800, 1
  %803 = extractvalue %dx.types.CBufRet.f32 %800, 2
  %804 = extractvalue %dx.types.CBufRet.f32 %800, 3
  %805 = fsub fast float %801, %775
  %806 = fsub fast float %802, %776
  %807 = fsub fast float %803, %777
  %808 = fsub fast float %804, %778
  %809 = fmul fast float %805, %799
  %810 = fmul fast float %806, %799
  %811 = fmul fast float %807, %799
  %812 = fmul fast float %808, %799
  %813 = fadd fast float %809, %775
  %814 = fadd fast float %810, %776
  %815 = fadd fast float %811, %777
  %816 = fadd fast float %812, %778
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 0
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %820 = fsub fast float %818, %781
  %821 = fsub fast float %819, %782
  %822 = fmul fast float %820, %799
  %823 = fmul fast float %821, %799
  %824 = fadd fast float %822, %781
  %825 = fadd fast float %823, %782
  %826 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %827 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %828 = fsub fast float %826, %785
  %829 = fsub fast float %827, %786
  %830 = fmul fast float %828, %799
  %831 = fmul fast float %829, %799
  %832 = fadd fast float %830, %785
  %833 = fadd fast float %831, %786
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %836 = fmul fast float %835, %813
  %837 = fmul fast float %835, %814
  %838 = fmul fast float %835, %815
  %839 = fmul fast float %835, %816
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = fmul fast float %841, %824
  %843 = fmul fast float %841, %825
  %844 = fadd fast float %842, %836
  %845 = fadd fast float %843, %838
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = fmul fast float %847, %832
  %849 = fmul fast float %847, %833
  %850 = fadd fast float %844, %848
  %851 = fadd fast float %845, %849
  %852 = extractvalue %dx.types.CBufRet.f32 %834, 1
  %853 = fmul fast float %852, %813
  %854 = fmul fast float %852, %814
  %855 = fmul fast float %852, %815
  %856 = fmul fast float %852, %816
  %857 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %858 = fmul fast float %857, %824
  %859 = fmul fast float %857, %825
  %860 = fadd fast float %858, %853
  %861 = fadd fast float %859, %855
  %862 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %863 = fmul fast float %862, %832
  %864 = fmul fast float %862, %833
  %865 = fadd fast float %860, %863
  %866 = fadd fast float %861, %864
  %867 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %868 = fmul fast float %867, %813
  %869 = fmul fast float %867, %814
  %870 = fmul fast float %867, %815
  %871 = fmul fast float %867, %816
  %872 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %873 = fmul fast float %872, %824
  %874 = fmul fast float %872, %825
  %875 = fadd fast float %873, %868
  %876 = fadd fast float %874, %870
  %877 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %878 = fmul fast float %877, %832
  %879 = fmul fast float %877, %833
  %880 = fadd fast float %875, %878
  %881 = fadd fast float %876, %879
  %882 = fmul fast float %869, %869
  %883 = fmul fast float %881, %881
  %884 = fmul fast float %871, %871
  %885 = fadd fast float %884, %882
  %886 = fadd fast float %885, %883
  %887 = call float @dx.op.unary.f32(i32 24, float %886)  ; Sqrt(value)
  %888 = fcmp fast ugt float %887, 0.000000e+00
  br i1 %888, label %889, label %904, !dx.controlflow.hints !54

; <label>:889                                     ; preds = %629
  %890 = fsub fast float -0.000000e+00, %871
  %891 = fdiv fast float %890, %887
  %892 = fsub fast float -0.000000e+00, %869
  %893 = fdiv fast float %892, %887
  %894 = fdiv fast float %881, %887
  %895 = fmul fast float %880, 0x3FE279A760000000
  %896 = fmul fast float %893, %869
  %897 = fmul fast float %894, %881
  %898 = fmul fast float %891, %871
  %899 = fadd fast float %896, %898
  %900 = fsub fast float %899, %897
  %901 = call float @dx.op.unary.f32(i32 6, float %900)  ; FAbs(value)
  %902 = fadd fast float %901, 0x3DDB7CDFE0000000
  %903 = fdiv fast float %895, %902
  br label %904

; <label>:904                                     ; preds = %889, %629
  %905 = phi float [ %903, %889 ], [ 1.000000e+00, %629 ]
  %906 = fmul fast float %854, %854
  %907 = fmul fast float %866, %866
  %908 = fmul fast float %856, %856
  %909 = fadd fast float %908, %906
  %910 = fadd fast float %909, %907
  %911 = call float @dx.op.unary.f32(i32 24, float %910)  ; Sqrt(value)
  %912 = fcmp fast ugt float %911, 0.000000e+00
  br i1 %912, label %913, label %928, !dx.controlflow.hints !54

; <label>:913                                     ; preds = %904
  %914 = fsub fast float -0.000000e+00, %856
  %915 = fdiv fast float %914, %911
  %916 = fsub fast float -0.000000e+00, %854
  %917 = fdiv fast float %916, %911
  %918 = fdiv fast float %866, %911
  %919 = fmul fast float %865, 0x3FE279A760000000
  %920 = fmul fast float %917, %854
  %921 = fmul fast float %918, %866
  %922 = fmul fast float %915, %856
  %923 = fadd fast float %920, %922
  %924 = fsub fast float %923, %921
  %925 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %926 = fadd fast float %925, 0x3DDB7CDFE0000000
  %927 = fdiv fast float %919, %926
  br label %928

; <label>:928                                     ; preds = %913, %904
  %929 = phi float [ %927, %913 ], [ 1.000000e+00, %904 ]
  %930 = call float @dx.op.binary.f32(i32 36, float %929, float %905)  ; FMin(a,b)
  %931 = fmul fast float %837, %837
  %932 = fmul fast float %851, %851
  %933 = fmul fast float %839, %839
  %934 = fadd fast float %933, %931
  %935 = fadd fast float %934, %932
  %936 = call float @dx.op.unary.f32(i32 24, float %935)  ; Sqrt(value)
  %937 = fcmp fast ugt float %936, 0.000000e+00
  br i1 %937, label %938, label %953, !dx.controlflow.hints !54

; <label>:938                                     ; preds = %928
  %939 = fsub fast float -0.000000e+00, %839
  %940 = fdiv fast float %939, %936
  %941 = fsub fast float -0.000000e+00, %837
  %942 = fdiv fast float %941, %936
  %943 = fdiv fast float %851, %936
  %944 = fmul fast float %850, 0x3FE279A760000000
  %945 = fmul fast float %942, %837
  %946 = fmul fast float %943, %851
  %947 = fmul fast float %940, %839
  %948 = fadd fast float %945, %947
  %949 = fsub fast float %948, %946
  %950 = call float @dx.op.unary.f32(i32 6, float %949)  ; FAbs(value)
  %951 = fadd fast float %950, 0x3DDB7CDFE0000000
  %952 = fdiv fast float %944, %951
  br label %953

; <label>:953                                     ; preds = %938, %928
  %954 = phi float [ %952, %938 ], [ 1.000000e+00, %928 ]
  %955 = call float @dx.op.binary.f32(i32 36, float %954, float %930)  ; FMin(a,b)
  %956 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %957 = fcmp fast olt float %956, 1.000000e+00
  br i1 %957, label %958, label %968, !dx.controlflow.hints !55

; <label>:958                                     ; preds = %953
  %959 = fmul fast float %956, %837
  %960 = fmul fast float %956, %851
  %961 = fmul fast float %956, %839
  %962 = fmul fast float %956, %854
  %963 = fmul fast float %956, %866
  %964 = fmul fast float %956, %856
  %965 = fmul fast float %956, %869
  %966 = fmul fast float %956, %881
  %967 = fmul fast float %956, %871
  br label %968

; <label>:968                                     ; preds = %958, %953
  %969 = phi float [ %965, %958 ], [ %869, %953 ]
  %970 = phi float [ %966, %958 ], [ %881, %953 ]
  %971 = phi float [ %967, %958 ], [ %871, %953 ]
  %972 = phi float [ %962, %958 ], [ %854, %953 ]
  %973 = phi float [ %963, %958 ], [ %866, %953 ]
  %974 = phi float [ %964, %958 ], [ %856, %953 ]
  %975 = phi float [ %959, %958 ], [ %837, %953 ]
  %976 = phi float [ %960, %958 ], [ %851, %953 ]
  %977 = phi float [ %961, %958 ], [ %839, %953 ]
  %978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %850)  ; FMax(a,b)
  %979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %865)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %880)  ; FMax(a,b)
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = fcmp fast ogt float %982, 0.000000e+00
  %984 = fcmp fast oge float %638, 0.000000e+00
  %985 = and i1 %984, %983
  %986 = fcmp fast ole float %638, 1.000000e+00
  %987 = and i1 %986, %985
  %988 = fcmp fast oge float %639, 0.000000e+00
  %989 = and i1 %988, %987
  %990 = fcmp fast ole float %639, 1.000000e+00
  %991 = and i1 %990, %989
  br i1 %991, label %992, label %1137, !dx.controlflow.hints !56

; <label>:992                                     ; preds = %968
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %995 = extractvalue %dx.types.CBufRet.f32 %993, 3
  %996 = fmul fast float %994, %638
  %997 = fmul fast float %995, %639
  %998 = call float @dx.op.unary.f32(i32 27, float %996)  ; Round_ni(value)
  %999 = call float @dx.op.unary.f32(i32 27, float %997)  ; Round_ni(value)
  %1000 = fptosi float %998 to i32
  %1001 = fptosi float %999 to i32
  %1002 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1000, i32 %1001, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = and i32 %1003, 65535
  %1005 = lshr i32 %1003, 16
  %1006 = icmp eq i32 %1004, 65535
  br i1 %1006, label %1043, label %1007, !dx.controlflow.hints !57

; <label>:1007                                    ; preds = %992
  %1008 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %1009 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %1011 = fmul fast float %1009, %638
  %1012 = fmul fast float %1010, %639
  %1013 = fmul fast float %1011, 1.250000e-01
  %1014 = fmul fast float %1012, 1.250000e-01
  %1015 = call float @dx.op.unary.f32(i32 27, float %1013)  ; Round_ni(value)
  %1016 = call float @dx.op.unary.f32(i32 27, float %1014)  ; Round_ni(value)
  %1017 = fmul fast float %1015, 8.000000e+00
  %1018 = fmul fast float %1016, 8.000000e+00
  %1019 = and i32 %1003, 255
  %1020 = lshr i32 %1003, 8
  %1021 = and i32 %1020, 255
  %1022 = mul nuw nsw i32 %1019, 9
  %1023 = uitofp i32 %1022 to float
  %1024 = mul nuw nsw i32 %1021, 9
  %1025 = uitofp i32 %1024 to float
  %1026 = fadd fast float %1023, 5.000000e-01
  %1027 = fadd fast float %1026, %1011
  %1028 = fsub fast float %1027, %1017
  %1029 = fadd fast float %1025, 5.000000e-01
  %1030 = fadd fast float %1029, %1012
  %1031 = fsub fast float %1030, %1018
  %1032 = fdiv fast float %1028, %982
  %1033 = fdiv fast float %1031, %1008
  %1034 = fmul fast float %666, 4.375000e-01
  %1035 = fadd fast float %1034, 3.125000e-02
  %1036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1032, float %1033, float %1035, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = fadd fast float %1037, %978
  %1041 = fadd fast float %1038, %979
  %1042 = fadd fast float %1039, %980
  br label %1043

; <label>:1043                                    ; preds = %1007, %992
  %1044 = phi float [ %1042, %1007 ], [ %980, %992 ]
  %1045 = phi float [ %1041, %1007 ], [ %979, %992 ]
  %1046 = phi float [ %1040, %1007 ], [ %978, %992 ]
  %1047 = icmp eq i32 %1005, 65535
  br i1 %1047, label %1137, label %1048, !dx.controlflow.hints !58

; <label>:1048                                    ; preds = %1043
  %1049 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %1050 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %1052 = fmul fast float %1050, %638
  %1053 = fmul fast float %1051, %639
  %1054 = fmul fast float %1052, 1.250000e-01
  %1055 = fmul fast float %1053, 1.250000e-01
  %1056 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1057 = call float @dx.op.unary.f32(i32 27, float %1055)  ; Round_ni(value)
  %1058 = fmul fast float %1056, 8.000000e+00
  %1059 = fmul fast float %1057, 8.000000e+00
  %1060 = fsub fast float %1052, %1058
  %1061 = fsub fast float %1053, %1059
  %1062 = fadd fast float %1060, 5.000000e-01
  %1063 = fadd fast float %1061, 5.000000e-01
  %1064 = and i32 %1005, 255
  %1065 = lshr i32 %1003, 24
  %1066 = mul nuw nsw i32 %1064, 9
  %1067 = uitofp i32 %1066 to float
  %1068 = mul nuw nsw i32 %1065, 9
  %1069 = uitofp i32 %1068 to float
  %1070 = fadd fast float %1062, %1067
  %1071 = fadd fast float %1063, %1069
  %1072 = fdiv fast float %1070, %982
  %1073 = fdiv fast float %1071, %1049
  %1074 = fmul fast float %666, 4.375000e-01
  %1075 = fadd fast float %1074, 3.125000e-02
  %1076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1072, float %1073, float %1075, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = fadd fast float %1074, 5.312500e-01
  %1081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1072, float %1073, float %1080, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = fmul fast float %1082, 2.000000e+00
  %1086 = fmul fast float %1083, 2.000000e+00
  %1087 = fmul fast float %1084, 2.000000e+00
  %1088 = fadd fast float %1085, -1.000000e+00
  %1089 = fadd fast float %1086, -1.000000e+00
  %1090 = fadd fast float %1087, -1.000000e+00
  %1091 = fmul fast float %1088, %1088
  %1092 = fmul fast float %1089, %1089
  %1093 = fadd fast float %1091, %1092
  %1094 = fmul fast float %1090, %1090
  %1095 = fadd fast float %1093, %1094
  %1096 = call float @dx.op.unary.f32(i32 24, float %1095)  ; Sqrt(value)
  %1097 = fcmp fast ogt float %1096, 0.000000e+00
  br i1 %1097, label %1098, label %1102, !dx.controlflow.hints !59

; <label>:1098                                    ; preds = %1048
  %1099 = fdiv fast float %1088, %1096
  %1100 = fdiv fast float %1089, %1096
  %1101 = fdiv fast float %1090, %1096
  br label %1102

; <label>:1102                                    ; preds = %1098, %1048
  %1103 = phi float [ %1099, %1098 ], [ 0.000000e+00, %1048 ]
  %1104 = phi float [ %1100, %1098 ], [ 0.000000e+00, %1048 ]
  %1105 = phi float [ %1101, %1098 ], [ 0.000000e+00, %1048 ]
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.CBufRet.f32 %1106, 1
  %1109 = fsub fast float %188, %1107
  %1110 = fsub fast float %189, %1108
  %1111 = fmul fast float %1109, %1109
  %1112 = fmul fast float %1110, %1110
  %1113 = fadd fast float %1111, %1112
  %1114 = call float @dx.op.unary.f32(i32 24, float %1113)  ; Sqrt(value)
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1118 = fsub fast float %1114, %1116
  %1119 = fdiv fast float %1118, %1117
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1121 = fmul fast float %1120, 2.000000e+00
  %1122 = fsub fast float 3.000000e+00, %1121
  %1123 = fmul fast float %1120, %1120
  %1124 = fmul fast float %1123, %1122
  %1125 = call float @dx.op.dot3.f32(i32 55, float %1103, float %1104, float %1105, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1125)  ; FMax(a,b)
  %1127 = fmul fast float %1126, 0x400C5BF8A0000000
  %1128 = fmul fast float %1124, %1077
  %1129 = fmul fast float %1128, %1127
  %1130 = fadd fast float %1129, %1046
  %1131 = fmul fast float %1124, %1078
  %1132 = fmul fast float %1131, %1127
  %1133 = fadd fast float %1132, %1045
  %1134 = fmul fast float %1124, %1079
  %1135 = fmul fast float %1134, %1127
  %1136 = fadd fast float %1135, %1044
  br label %1137

; <label>:1137                                    ; preds = %1102, %1043, %968
  %1138 = phi float [ %1136, %1102 ], [ %1044, %1043 ], [ %980, %968 ]
  %1139 = phi float [ %1133, %1102 ], [ %1045, %1043 ], [ %979, %968 ]
  %1140 = phi float [ %1130, %1102 ], [ %1046, %1043 ], [ %978, %968 ]
  %1141 = fcmp fast ogt float %190, %662
  %1142 = and i1 %984, %1141
  %1143 = and i1 %986, %1142
  %1144 = and i1 %988, %1143
  %1145 = and i1 %990, %1144
  br i1 %1145, label %1146, label %1203, !dx.controlflow.hints !60

; <label>:1146                                    ; preds = %1137
  %1147 = fmul fast float %664, 0x3FC24924A0000000
  %1148 = fsub fast float %190, %662
  %1149 = fdiv fast float %1148, %1147
  %1150 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1156 = extractvalue %dx.types.CBufRet.f32 %1153, 2
  %1157 = fsub fast float %1152, %1140
  %1158 = fsub fast float %1154, %975
  %1159 = fsub fast float %1155, %976
  %1160 = fsub fast float %1156, %977
  %1161 = fmul fast float %1157, %1150
  %1162 = fmul fast float %1158, %1150
  %1163 = fmul fast float %1159, %1150
  %1164 = fmul fast float %1160, %1150
  %1165 = fadd fast float %1161, %1140
  %1166 = fadd fast float %1162, %975
  %1167 = fadd fast float %1163, %976
  %1168 = fadd fast float %1164, %977
  %1169 = extractvalue %dx.types.CBufRet.f32 %1151, 1
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1174 = fsub fast float %1169, %1139
  %1175 = fsub fast float %1171, %972
  %1176 = fsub fast float %1172, %973
  %1177 = fsub fast float %1173, %974
  %1178 = fmul fast float %1174, %1150
  %1179 = fmul fast float %1175, %1150
  %1180 = fmul fast float %1176, %1150
  %1181 = fmul fast float %1177, %1150
  %1182 = fadd fast float %1178, %1139
  %1183 = fadd fast float %1179, %972
  %1184 = fadd fast float %1180, %973
  %1185 = fadd fast float %1181, %974
  %1186 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1191 = fsub fast float %1186, %1138
  %1192 = fsub fast float %1188, %969
  %1193 = fsub fast float %1189, %970
  %1194 = fsub fast float %1190, %971
  %1195 = fmul fast float %1191, %1150
  %1196 = fmul fast float %1192, %1150
  %1197 = fmul fast float %1193, %1150
  %1198 = fmul fast float %1194, %1150
  %1199 = fadd fast float %1195, %1138
  %1200 = fadd fast float %1196, %969
  %1201 = fadd fast float %1197, %970
  %1202 = fadd fast float %1198, %971
  br label %1203

; <label>:1203                                    ; preds = %1146, %1137
  %1204 = phi float [ %1199, %1146 ], [ %1138, %1137 ]
  %1205 = phi float [ %1200, %1146 ], [ %969, %1137 ]
  %1206 = phi float [ %1201, %1146 ], [ %970, %1137 ]
  %1207 = phi float [ %1202, %1146 ], [ %971, %1137 ]
  %1208 = phi float [ %1182, %1146 ], [ %1139, %1137 ]
  %1209 = phi float [ %1183, %1146 ], [ %972, %1137 ]
  %1210 = phi float [ %1184, %1146 ], [ %973, %1137 ]
  %1211 = phi float [ %1185, %1146 ], [ %974, %1137 ]
  %1212 = phi float [ %1165, %1146 ], [ %1140, %1137 ]
  %1213 = phi float [ %1166, %1146 ], [ %975, %1137 ]
  %1214 = phi float [ %1167, %1146 ], [ %976, %1137 ]
  %1215 = phi float [ %1168, %1146 ], [ %977, %1137 ]
  %1216 = extractvalue %dx.types.CBufRet.f32 %787, 3
  %1217 = fmul fast float %1216, %1212
  %1218 = fmul fast float %1216, %1208
  %1219 = fmul fast float %1216, %1204
  %1220 = fmul fast float %1213, 1.500000e+00
  %1221 = fmul fast float %1220, %1216
  %1222 = fmul fast float %1214, 1.500000e+00
  %1223 = fmul fast float %1222, %1216
  %1224 = fmul fast float %1215, 1.500000e+00
  %1225 = fmul fast float %1224, %1216
  %1226 = fmul fast float %1209, 1.500000e+00
  %1227 = fmul fast float %1226, %1216
  %1228 = fmul fast float %1210, 1.500000e+00
  %1229 = fmul fast float %1228, %1216
  %1230 = fmul fast float %1211, 1.500000e+00
  %1231 = fmul fast float %1230, %1216
  %1232 = fmul fast float %1205, 1.500000e+00
  %1233 = fmul fast float %1232, %1216
  %1234 = fmul fast float %1206, 1.500000e+00
  %1235 = fmul fast float %1234, %1216
  %1236 = fmul fast float %1207, 1.500000e+00
  %1237 = fmul fast float %1236, %1216
  %1238 = fsub fast float %627, %1217
  %1239 = fmul fast float %1238, %525
  %1240 = fadd fast float %1239, %1217
  %1241 = fsub fast float %626, %1221
  %1242 = fmul fast float %1241, %525
  %1243 = fadd fast float %1242, %1221
  %1244 = fsub fast float %625, %1223
  %1245 = fmul fast float %1244, %525
  %1246 = fadd fast float %1245, %1223
  %1247 = fsub fast float %624, %1225
  %1248 = fmul fast float %1247, %525
  %1249 = fadd fast float %1248, %1225
  %1250 = fmul fast float %623, %525
  %1251 = fmul fast float %622, %525
  %1252 = fmul fast float %621, %525
  %1253 = fmul fast float %620, %525
  %1254 = fmul fast float %619, %525
  %1255 = fsub fast float %618, %1218
  %1256 = fmul fast float %1255, %525
  %1257 = fadd fast float %1256, %1218
  %1258 = fsub fast float %617, %1227
  %1259 = fmul fast float %1258, %525
  %1260 = fadd fast float %1259, %1227
  %1261 = fsub fast float %616, %1229
  %1262 = fmul fast float %1261, %525
  %1263 = fadd fast float %1262, %1229
  %1264 = fsub fast float %615, %1231
  %1265 = fmul fast float %1264, %525
  %1266 = fadd fast float %1265, %1231
  %1267 = fmul fast float %614, %525
  %1268 = fmul fast float %613, %525
  %1269 = fmul fast float %612, %525
  %1270 = fmul fast float %611, %525
  %1271 = fmul fast float %610, %525
  %1272 = fsub fast float %609, %1219
  %1273 = fmul fast float %1272, %525
  %1274 = fadd fast float %1273, %1219
  %1275 = fsub fast float %608, %1233
  %1276 = fmul fast float %1275, %525
  %1277 = fadd fast float %1276, %1233
  %1278 = fsub fast float %607, %1235
  %1279 = fmul fast float %1278, %525
  %1280 = fadd fast float %1279, %1235
  %1281 = fsub fast float %606, %1237
  %1282 = fmul fast float %1281, %525
  %1283 = fadd fast float %1282, %1237
  %1284 = fmul fast float %605, %525
  %1285 = fmul fast float %604, %525
  %1286 = fmul fast float %603, %525
  %1287 = fmul fast float %602, %525
  %1288 = fmul fast float %601, %525
  br label %1289

; <label>:1289                                    ; preds = %1203, %600
  %1290 = phi float [ %1288, %1203 ], [ %601, %600 ]
  %1291 = phi float [ %1287, %1203 ], [ %602, %600 ]
  %1292 = phi float [ %1286, %1203 ], [ %603, %600 ]
  %1293 = phi float [ %1285, %1203 ], [ %604, %600 ]
  %1294 = phi float [ %1284, %1203 ], [ %605, %600 ]
  %1295 = phi float [ %1283, %1203 ], [ %606, %600 ]
  %1296 = phi float [ %1280, %1203 ], [ %607, %600 ]
  %1297 = phi float [ %1277, %1203 ], [ %608, %600 ]
  %1298 = phi float [ %1274, %1203 ], [ %609, %600 ]
  %1299 = phi float [ %1271, %1203 ], [ %610, %600 ]
  %1300 = phi float [ %1270, %1203 ], [ %611, %600 ]
  %1301 = phi float [ %1269, %1203 ], [ %612, %600 ]
  %1302 = phi float [ %1268, %1203 ], [ %613, %600 ]
  %1303 = phi float [ %1267, %1203 ], [ %614, %600 ]
  %1304 = phi float [ %1266, %1203 ], [ %615, %600 ]
  %1305 = phi float [ %1263, %1203 ], [ %616, %600 ]
  %1306 = phi float [ %1260, %1203 ], [ %617, %600 ]
  %1307 = phi float [ %1257, %1203 ], [ %618, %600 ]
  %1308 = phi float [ %1254, %1203 ], [ %619, %600 ]
  %1309 = phi float [ %1253, %1203 ], [ %620, %600 ]
  %1310 = phi float [ %1252, %1203 ], [ %621, %600 ]
  %1311 = phi float [ %1251, %1203 ], [ %622, %600 ]
  %1312 = phi float [ %1250, %1203 ], [ %623, %600 ]
  %1313 = phi float [ %1249, %1203 ], [ %624, %600 ]
  %1314 = phi float [ %1246, %1203 ], [ %625, %600 ]
  %1315 = phi float [ %1243, %1203 ], [ %626, %600 ]
  %1316 = phi float [ %1240, %1203 ], [ %627, %600 ]
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1319 = fmul fast float %1318, %1318
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.CBufRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.CBufRet.f32 %1320, 2
  %1324 = fmul fast float %1316, 0x3FD20DD760000000
  %1325 = fmul fast float %1323, %1314
  %1326 = fmul fast float %1323, %1323
  %1327 = fmul fast float %1326, 0x3FEE471020000000
  %1328 = fadd fast float %1327, 0xBFD42F6020000000
  %1329 = fmul fast float %1328, %1310
  %1330 = fmul fast float %1321, %1313
  %1331 = fmul fast float %1322, %1315
  %1332 = fmul fast float %1323, 0x3FF17B1420000000
  %1333 = fmul fast float %1319, %1309
  %1334 = fmul fast float %1333, %1321
  %1335 = fmul fast float %1334, %1332
  %1336 = fmul fast float %1319, %1311
  %1337 = fmul fast float %1336, %1322
  %1338 = fmul fast float %1337, %1332
  %1339 = fmul fast float %1321, %1321
  %1340 = fmul fast float %1322, %1322
  %1341 = fsub fast float %1339, %1340
  %1342 = fmul fast float %1308, 0x3FE17B1420000000
  %1343 = fmul fast float %1342, %1341
  %1344 = fmul fast float %1312, 0x3FF17B1420000000
  %1345 = fmul fast float %1344, %1322
  %1346 = fmul fast float %1345, %1321
  %1347 = fadd fast float %1343, %1346
  %1348 = fadd fast float %1347, %1329
  %1349 = fmul fast float %1348, %1319
  %1350 = fsub fast float %1331, %1325
  %1351 = fadd fast float %1350, %1330
  %1352 = fmul fast float %1351, 0x3FDF454380000000
  %1353 = fmul fast float %1352, %1318
  %1354 = fsub fast float %1324, %1335
  %1355 = fsub fast float %1354, %1338
  %1356 = fadd fast float %1355, %1349
  %1357 = fadd fast float %1356, %1353
  %1358 = fmul fast float %1307, 0x3FD20DD760000000
  %1359 = fmul fast float %1323, %1305
  %1360 = fmul fast float %1328, %1301
  %1361 = fmul fast float %1321, %1304
  %1362 = fmul fast float %1322, %1306
  %1363 = fmul fast float %1319, %1300
  %1364 = fmul fast float %1363, %1321
  %1365 = fmul fast float %1364, %1332
  %1366 = fmul fast float %1319, %1302
  %1367 = fmul fast float %1366, %1322
  %1368 = fmul fast float %1367, %1332
  %1369 = fmul fast float %1299, 0x3FE17B1420000000
  %1370 = fmul fast float %1369, %1341
  %1371 = fmul fast float %1303, 0x3FF17B1420000000
  %1372 = fmul fast float %1371, %1322
  %1373 = fmul fast float %1372, %1321
  %1374 = fadd fast float %1370, %1373
  %1375 = fadd fast float %1374, %1360
  %1376 = fmul fast float %1375, %1319
  %1377 = fsub fast float %1362, %1359
  %1378 = fadd fast float %1377, %1361
  %1379 = fmul fast float %1378, 0x3FDF454380000000
  %1380 = fmul fast float %1379, %1318
  %1381 = fsub fast float %1358, %1365
  %1382 = fsub fast float %1381, %1368
  %1383 = fadd fast float %1382, %1376
  %1384 = fadd fast float %1383, %1380
  %1385 = fmul fast float %1298, 0x3FD20DD760000000
  %1386 = fmul fast float %1323, %1296
  %1387 = fmul fast float %1328, %1292
  %1388 = fmul fast float %1321, %1295
  %1389 = fmul fast float %1322, %1297
  %1390 = fmul fast float %1319, %1291
  %1391 = fmul fast float %1390, %1321
  %1392 = fmul fast float %1391, %1332
  %1393 = fmul fast float %1319, %1293
  %1394 = fmul fast float %1393, %1322
  %1395 = fmul fast float %1394, %1332
  %1396 = fmul fast float %1290, 0x3FE17B1420000000
  %1397 = fmul fast float %1396, %1341
  %1398 = fmul fast float %1294, 0x3FF17B1420000000
  %1399 = fmul fast float %1398, %1322
  %1400 = fmul fast float %1399, %1321
  %1401 = fadd fast float %1397, %1400
  %1402 = fadd fast float %1401, %1387
  %1403 = fmul fast float %1402, %1319
  %1404 = fsub fast float %1389, %1386
  %1405 = fadd fast float %1404, %1388
  %1406 = fmul fast float %1405, 0x3FDF454380000000
  %1407 = fmul fast float %1406, %1318
  %1408 = fsub fast float %1385, %1392
  %1409 = fsub fast float %1408, %1395
  %1410 = fadd fast float %1409, %1403
  %1411 = fadd fast float %1410, %1407
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 3
  %1414 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %1415 = fmul fast float %1414, %1413
  %1416 = fmul fast float %1415, %1357
  %1417 = fmul fast float %1415, %1384
  %1418 = fmul fast float %1415, %1411
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 3
  %1421 = fcmp fast une float %1420, 0.000000e+00
  %1422 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1424 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  br i1 %1421, label %1425, label %1442, !dx.controlflow.hints !61

; <label>:1425                                    ; preds = %1289
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1430 = call float @dx.op.dot3.f32(i32 55, float %1422, float %1423, float %1424, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = fmul fast float %1430, 5.000000e-01
  %1432 = fsub fast float 4.921875e-01, %1431
  %1433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %18, float %1432, float 0x3FB25F3060000000, float -3.125000e-02, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 0
  %1437 = fmul fast float %1434, 0x400921FB60000000
  %1438 = fmul fast float %1437, %1436
  %1439 = fmul fast float %1438, %1427
  %1440 = fmul fast float %1438, %1428
  %1441 = fmul fast float %1438, %1429
  br label %1442

; <label>:1442                                    ; preds = %1425, %1289
  %1443 = phi float [ %1439, %1425 ], [ 0.000000e+00, %1289 ]
  %1444 = phi float [ %1440, %1425 ], [ 0.000000e+00, %1289 ]
  %1445 = phi float [ %1441, %1425 ], [ 0.000000e+00, %1289 ]
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 0
  %1448 = fmul fast float %1447, %1422
  %1449 = fmul fast float %1447, %1423
  %1450 = fmul fast float %1447, %1424
  %1451 = fadd fast float %1448, %188
  %1452 = fadd fast float %1449, %189
  %1453 = fadd fast float %1450, %190
  %1454 = fsub fast float %1451, %202
  %1455 = fsub fast float %1452, %203
  %1456 = fmul fast float %1454, %207
  %1457 = fmul fast float %1455, %208
  %1458 = call float @dx.op.binary.f32(i32 36, float %1456, float %1457)  ; FMin(a,b)
  %1459 = fcmp fast olt float %1458, 0.000000e+00
  %1460 = call float @dx.op.binary.f32(i32 35, float %1456, float %1457)  ; FMax(a,b)
  %1461 = fcmp fast ogt float %1460, 1.000000e+00
  %1462 = or i1 %1459, %1461
  %1463 = fcmp fast olt float %1453, %216
  %1464 = or i1 %1462, %1463
  %1465 = fcmp fast ogt float %1453, %223
  %1466 = or i1 %1464, %1465
  br i1 %1466, label %1481, label %1467, !dx.controlflow.hints !37

; <label>:1467                                    ; preds = %1442
  %1468 = fsub fast float 1.000000e+00, %1457
  %1469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %1456, float %1468, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = fcmp fast oeq float %1470, 0.000000e+00
  %1475 = fcmp ule float %1453, %1472
  %1476 = fcmp uge float %1453, %1471
  %1477 = or i1 %1476, %1475
  %1478 = or i1 %1474, %1477
  %1479 = zext i1 %1478 to i32
  %1480 = xor i32 %1479, 1
  br label %1481

; <label>:1481                                    ; preds = %1467, %1442
  %1482 = phi float [ %1470, %1467 ], [ %175, %1442 ]
  %1483 = phi float [ %1471, %1467 ], [ %176, %1442 ]
  %1484 = phi float [ %1472, %1467 ], [ %177, %1442 ]
  %1485 = phi float [ %1473, %1467 ], [ %178, %1442 ]
  %1486 = phi i32 [ %1480, %1467 ], [ 0, %1442 ]
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1612, label %1488, !dx.controlflow.hints !41

; <label>:1488                                    ; preds = %1481
  %1489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.i32 %1489, 0
  %1491 = icmp ne i32 %1490, 0
  %1492 = zext i1 %1491 to i32
  %1493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.i32 %1493, 0
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1529, label %1496

; <label>:1496                                    ; preds = %1488
  br label %1497

; <label>:1497                                    ; preds = %1524, %1496
  %1498 = phi i32 [ %1525, %1524 ], [ 0, %1496 ]
  %1499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1498, i32 0)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.ResRet.f32 %1499, 1
  %1502 = extractvalue %dx.types.ResRet.f32 %1499, 2
  %1503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1498, i32 16)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.ResRet.f32 %1503, 2
  %1507 = fsub fast float %1500, %1504
  %1508 = fsub fast float %1501, %1505
  %1509 = fsub fast float %1502, %1506
  %1510 = fadd fast float %1504, %1500
  %1511 = fadd fast float %1505, %1501
  %1512 = fadd fast float %1506, %1502
  %1513 = fcmp fast olt float %1451, %1507
  %1514 = fcmp fast olt float %1452, %1508
  %1515 = fcmp fast olt float %1453, %1509
  %1516 = or i1 %1513, %1514
  %1517 = or i1 %1515, %1516
  %1518 = fcmp fast ogt float %1451, %1510
  %1519 = fcmp fast ogt float %1452, %1511
  %1520 = fcmp fast ogt float %1453, %1512
  %1521 = or i1 %1518, %1519
  %1522 = or i1 %1520, %1521
  %1523 = or i1 %1517, %1522
  br i1 %1523, label %1524, label %1527, !dx.controlflow.hints !42

; <label>:1524                                    ; preds = %1497
  %1525 = add nuw i32 %1498, 1
  %1526 = icmp ult i32 %1525, %1494
  br i1 %1526, label %1497, label %1527

; <label>:1527                                    ; preds = %1524, %1497
  %1528 = phi i32 [ 255, %1524 ], [ %1498, %1497 ]
  br label %1529

; <label>:1529                                    ; preds = %1527, %1488
  %1530 = phi i32 [ 255, %1488 ], [ %1528, %1527 ]
  %1531 = icmp eq i32 %1530, 255
  br i1 %1531, label %1537, label %1532, !dx.controlflow.hints !43

; <label>:1532                                    ; preds = %1529
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1530, i32 156)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = icmp ne i32 %1534, 0
  %1536 = zext i1 %1535 to i32
  br label %1537

; <label>:1537                                    ; preds = %1532, %1529
  %1538 = phi i32 [ %1536, %1532 ], [ %1492, %1529 ]
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1540, label %1609, !dx.controlflow.hints !44

; <label>:1540                                    ; preds = %1537
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 3
  %1543 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 2
  %1546 = extractvalue %dx.types.CBufRet.f32 %1544, 3
  br i1 %1531, label %1557, label %1547, !dx.controlflow.hints !45

; <label>:1547                                    ; preds = %1540
  %1548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1530, i32 60)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1530, i32 64)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.f32 %1550, 0
  %1552 = extractvalue %dx.types.ResRet.f32 %1550, 1
  %1553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1530, i32 72)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  %1555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1530, i32 96)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.f32 %1555, 0
  br label %1557

; <label>:1557                                    ; preds = %1547, %1540
  %1558 = phi float [ %1549, %1547 ], [ %222, %1540 ]
  %1559 = phi float [ %1554, %1547 ], [ %220, %1540 ]
  %1560 = phi float [ %1556, %1547 ], [ %1543, %1540 ]
  %1561 = phi float [ %1551, %1547 ], [ %1545, %1540 ]
  %1562 = phi float [ %1552, %1547 ], [ %1546, %1540 ]
  %1563 = call float @dx.op.binary.f32(i32 35, float %1482, float 0.000000e+00)  ; FMax(a,b)
  %1564 = call float @dx.op.binary.f32(i32 36, float %1563, float 1.000000e+00)  ; FMin(a,b)
  %1565 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1566 = call float @dx.op.binary.f32(i32 35, float %1485, float 0x3F847AE140000000)  ; FMax(a,b)
  %1567 = fsub fast float %1483, %1453
  %1568 = fsub fast float %1453, %1484
  %1569 = call float @dx.op.binary.f32(i32 36, float %1568, float %1567)  ; FMin(a,b)
  %1570 = fdiv fast float %1569, %1566
  %1571 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1572 = fsub fast float %1453, %1559
  %1573 = fdiv fast float %1572, %1558
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1575 = fsub fast float 1.000000e+00, %1574
  %1576 = fmul float %1571, %1575
  %1577 = fmul float %1576, %1576
  %1578 = fmul fast float %1565, %1542
  %1579 = fmul fast float %1578, %1577
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 2
  %1582 = extractvalue %dx.types.CBufRet.f32 %1580, 1
  %1583 = fsub fast float %1579, %1582
  %1584 = fsub fast float %1581, %1582
  %1585 = fdiv fast float %1583, %1584
  %1586 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1587 = fmul fast float %1586, %1560
  %1588 = fcmp fast ogt float %1562, 0.000000e+00
  br i1 %1588, label %1589, label %1609, !dx.controlflow.hints !46

; <label>:1589                                    ; preds = %1557
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.CBufRet.f32 %1590, 2
  %1594 = fsub fast float %1451, %1591
  %1595 = fsub fast float %1452, %1592
  %1596 = fsub fast float %1453, %1593
  %1597 = fmul fast float %1594, %1594
  %1598 = fmul fast float %1595, %1595
  %1599 = fadd fast float %1597, %1598
  %1600 = fmul fast float %1596, %1596
  %1601 = fadd fast float %1599, %1600
  %1602 = call float @dx.op.unary.f32(i32 24, float %1601)  ; Sqrt(value)
  %1603 = fsub fast float %1602, %1561
  %1604 = fsub fast float %1562, %1561
  %1605 = fdiv fast float %1603, %1604
  %1606 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1607 = fmul fast float %1606, %1606
  %1608 = fmul fast float %1607, %1587
  br label %1609

; <label>:1609                                    ; preds = %1589, %1557, %1537
  %1610 = phi float [ 0.000000e+00, %1537 ], [ %1608, %1589 ], [ %1587, %1557 ]
  %1611 = fmul fast float %1610, %1447
  br label %1612

; <label>:1612                                    ; preds = %1609, %1481
  %1613 = phi float [ %1611, %1609 ], [ 0.000000e+00, %1481 ]
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 3
  %1616 = fmul fast float %1613, 0xBFF7154760000000
  %1617 = fmul fast float %1616, %1615
  %1618 = call float @dx.op.unary.f32(i32 21, float %1617)  ; Exp(value)
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = fmul fast float %1619, %1443
  %1621 = fmul fast float %1619, %1444
  %1622 = fmul fast float %1619, %1445
  %1623 = fadd fast float %1620, %1416
  %1624 = fadd fast float %1621, %1417
  %1625 = fadd fast float %1622, %1418
  %1626 = fsub fast float 1.000000e+00, %485
  %1627 = fmul fast float %477, %184
  %1628 = fmul fast float %1627, %1626
  %1629 = fmul fast float %1628, %1623
  %1630 = fmul fast float %478, %184
  %1631 = fmul fast float %1630, %1626
  %1632 = fmul fast float %1631, %1624
  %1633 = fmul fast float %479, %184
  %1634 = fmul fast float %1633, %1626
  %1635 = fmul fast float %1634, %1625
  %1636 = fadd fast float %1629, %185
  %1637 = fadd fast float %1632, %186
  %1638 = fadd fast float %1635, %187
  %1639 = fdiv fast float %464, %324
  %1640 = fadd fast float %324, %191
  %1641 = fmul fast float %191, %191
  %1642 = fmul fast float %1640, %1640
  %1643 = fsub fast float %1641, %1642
  %1644 = fmul fast float %1643, -5.000000e-01
  %1645 = fmul fast float %1644, %1639
  %1646 = fadd fast float %1645, %183
  %1647 = fadd fast float %464, %193
  %1648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1649 = extractvalue %dx.types.CBufRet.i32 %1648, 0
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %1677, label %1651, !dx.controlflow.hints !62

; <label>:1651                                    ; preds = %1612
  %1652 = icmp ne i32 %198, 0
  %1653 = zext i1 %1652 to i32
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1656 = extractvalue %dx.types.CBufRet.f32 %1654, 0
  %1657 = fsub fast float %1640, %1656
  %1658 = fmul fast float %1657, %1655
  %1659 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1660 = fadd fast float %1659, -5.000000e-01
  %1661 = fmul fast float %1660, 2.000000e+00
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 2
  %1664 = fcmp fast olt float %1661, %1663
  br i1 %1664, label %1665, label %1677, !dx.controlflow.hints !63

; <label>:1665                                    ; preds = %1651
  %1666 = fmul fast float %1661, %1661
  %1667 = fmul fast float %1626, %184
  %1668 = fmul fast float %1661, %1667
  %1669 = fmul fast float %1666, %1667
  %1670 = fmul fast float %1668, %1666
  %1671 = fmul fast float %1666, %1666
  %1672 = fmul fast float %1671, %1667
  %1673 = fadd fast float %1668, %194
  %1674 = fadd fast float %1669, %195
  %1675 = fadd fast float %1670, %196
  %1676 = fadd fast float %1672, %197
  br label %1677

; <label>:1677                                    ; preds = %1665, %1651, %1612
  %1678 = phi float [ %194, %1612 ], [ %1673, %1665 ], [ %194, %1651 ]
  %1679 = phi float [ %195, %1612 ], [ %1674, %1665 ], [ %195, %1651 ]
  %1680 = phi float [ %196, %1612 ], [ %1675, %1665 ], [ %196, %1651 ]
  %1681 = phi float [ %197, %1612 ], [ %1676, %1665 ], [ %197, %1651 ]
  %1682 = phi i32 [ %198, %1612 ], [ 1, %1665 ], [ %1653, %1651 ]
  %1683 = fmul fast float %485, %184
  br label %1684

; <label>:1684                                    ; preds = %1677, %480
  %1685 = phi float [ %481, %480 ], [ %1640, %1677 ]
  %1686 = phi float [ %175, %480 ], [ %1482, %1677 ]
  %1687 = phi float [ %176, %480 ], [ %1483, %1677 ]
  %1688 = phi float [ %177, %480 ], [ %1484, %1677 ]
  %1689 = phi float [ %178, %480 ], [ %1485, %1677 ]
  %1690 = phi float [ %183, %480 ], [ %1646, %1677 ]
  %1691 = phi float [ %184, %480 ], [ %1683, %1677 ]
  %1692 = phi float [ %185, %480 ], [ %1636, %1677 ]
  %1693 = phi float [ %186, %480 ], [ %1637, %1677 ]
  %1694 = phi float [ %187, %480 ], [ %1638, %1677 ]
  %1695 = phi float [ %193, %480 ], [ %1647, %1677 ]
  %1696 = phi float [ %194, %480 ], [ %1678, %1677 ]
  %1697 = phi float [ %195, %480 ], [ %1679, %1677 ]
  %1698 = phi float [ %196, %480 ], [ %1680, %1677 ]
  %1699 = phi float [ %197, %480 ], [ %1681, %1677 ]
  %1700 = phi i32 [ %198, %480 ], [ %1682, %1677 ]
  %1701 = fmul fast float %324, %108
  %1702 = fmul fast float %324, %109
  %1703 = fmul fast float %324, %110
  %1704 = fadd fast float %1701, %188
  %1705 = fadd fast float %1702, %189
  %1706 = fadd fast float %1703, %190
  %1707 = fcmp fast olt float %1685, %154
  %1708 = extractvalue %dx.types.CBufRet.f32 %468, 2
  %1709 = fcmp fast olt float %1708, %1691
  %1710 = and i1 %1707, %1709
  br i1 %1710, label %174, label %1711

; <label>:1711                                    ; preds = %1684
  br label %1712

; <label>:1712                                    ; preds = %1711, %0
  %1713 = phi float [ 0.000000e+00, %0 ], [ %1690, %1711 ]
  %1714 = phi float [ 1.000000e+00, %0 ], [ %1691, %1711 ]
  %1715 = phi float [ 0.000000e+00, %0 ], [ %1692, %1711 ]
  %1716 = phi float [ 0.000000e+00, %0 ], [ %1693, %1711 ]
  %1717 = phi float [ 0.000000e+00, %0 ], [ %1694, %1711 ]
  %1718 = phi float [ 0.000000e+00, %0 ], [ %1695, %1711 ]
  %1719 = phi float [ 0.000000e+00, %0 ], [ %1696, %1711 ]
  %1720 = phi float [ 0.000000e+00, %0 ], [ %1697, %1711 ]
  %1721 = phi float [ 0.000000e+00, %0 ], [ %1698, %1711 ]
  %1722 = phi float [ 0.000000e+00, %0 ], [ %1699, %1711 ]
  %1723 = phi i32 [ 0, %0 ], [ %1700, %1711 ]
  %1724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.i32 %1724, 0
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1768, label %1727, !dx.controlflow.hints !64

; <label>:1727                                    ; preds = %1712
  %1728 = icmp eq i32 %1723, 0
  br i1 %1728, label %1767, label %1729, !dx.controlflow.hints !65

; <label>:1729                                    ; preds = %1727
  %1730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.i32 %1730, 2
  %1732 = icmp eq i32 %1731, 0
  br i1 %1732, label %1739, label %1733, !dx.controlflow.hints !66

; <label>:1733                                    ; preds = %1729
  %1734 = fsub fast float 1.000000e+00, %1714
  %1735 = fdiv fast float %1719, %1734
  %1736 = fdiv fast float %1720, %1734
  %1737 = fdiv fast float %1721, %1734
  %1738 = fdiv fast float %1722, %1734
  br label %1744

; <label>:1739                                    ; preds = %1729
  %1740 = fadd fast float %1719, %1714
  %1741 = fadd fast float %1720, %1714
  %1742 = fadd fast float %1721, %1714
  %1743 = fadd fast float %1722, %1714
  br label %1744

; <label>:1744                                    ; preds = %1739, %1733
  %1745 = phi float [ %1735, %1733 ], [ %1740, %1739 ]
  %1746 = phi float [ %1736, %1733 ], [ %1741, %1739 ]
  %1747 = phi float [ %1737, %1733 ], [ %1742, %1739 ]
  %1748 = phi float [ %1738, %1733 ], [ %1743, %1739 ]
  %1749 = call float @dx.op.binary.f32(i32 35, float %1745, float -1.000000e+00)  ; FMax(a,b)
  %1750 = call float @dx.op.binary.f32(i32 35, float %1746, float -1.000000e+00)  ; FMax(a,b)
  %1751 = call float @dx.op.binary.f32(i32 35, float %1747, float -1.000000e+00)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1748, float -1.000000e+00)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 36, float %1749, float 1.000000e+00)  ; FMin(a,b)
  %1754 = call float @dx.op.binary.f32(i32 36, float %1750, float 1.000000e+00)  ; FMin(a,b)
  %1755 = call float @dx.op.binary.f32(i32 36, float %1751, float 1.000000e+00)  ; FMin(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1752, float 1.000000e+00)  ; FMin(a,b)
  %1757 = fmul fast float %1753, 1.500000e+00
  %1758 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1755, float %1757)  ; FMad(a,b,c)
  %1759 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1754, float 0.000000e+00)  ; FMad(a,b,c)
  %1760 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1756, float %1759)  ; FMad(a,b,c)
  %1761 = fmul fast float %1753, 0x3FEBB67AE0000000
  %1762 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1755, float %1761)  ; FMad(a,b,c)
  %1763 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1754, float 0.000000e+00)  ; FMad(a,b,c)
  %1764 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1756, float %1763)  ; FMad(a,b,c)
  %1765 = fadd fast float %1758, 5.000000e-01
  %1766 = fadd fast float %1762, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %1765, float %1760, float %1766, float %1764, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1768

; <label>:1767                                    ; preds = %1727
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1768

; <label>:1768                                    ; preds = %1767, %1744, %1712
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1771 = fsub fast float %1714, %1770
  %1772 = fdiv fast float %1771, %1770
  %1773 = call float @dx.op.unary.f32(i32 7, float %1772)  ; Saturate(value)
  %1774 = fmul fast float %1773, 2.000000e+00
  %1775 = fsub fast float 3.000000e+00, %1774
  %1776 = fmul fast float %1773, %1773
  %1777 = fmul fast float %1776, %1714
  %1778 = fmul fast float %1777, %1775
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.CBufRet.f32 %1779, 1
  %1782 = extractvalue %dx.types.CBufRet.f32 %1779, 2
  %1783 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %1780, float %1781, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %1784 = fmul fast float %1783, %1713
  %1785 = fcmp fast ogt float %1718, 0.000000e+00
  %1786 = fdiv fast float 1.000000e+00, %1718
  %1787 = fmul fast float %1784, %1786
  %1788 = select i1 %1785, float %1787, float %119
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.CBufRet.f32 %1789, 1
  %1792 = extractvalue %dx.types.CBufRet.f32 %1789, 2
  %1793 = fmul fast float %1790, %72
  %1794 = fmul fast float %1791, %72
  %1795 = fmul fast float %1792, %72
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.CBufRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.CBufRet.f32 %1796, 2
  %1800 = fmul fast float %1797, %73
  %1801 = fmul fast float %1798, %73
  %1802 = fmul fast float %1799, %73
  %1803 = fadd fast float %1800, %1793
  %1804 = fadd fast float %1801, %1794
  %1805 = fadd fast float %1802, %1795
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.CBufRet.f32 %1806, 1
  %1809 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %1810 = fadd fast float %1803, %1807
  %1811 = fadd fast float %1804, %1808
  %1812 = fadd fast float %1805, %1809
  %1813 = fmul fast float %1810, %1788
  %1814 = fmul fast float %1811, %1788
  %1815 = fmul fast float %1812, %1788
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1819 = extractvalue %dx.types.CBufRet.f32 %1816, 2
  %1820 = extractvalue %dx.types.CBufRet.f32 %1816, 3
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = extractvalue %dx.types.CBufRet.f32 %1821, 1
  %1824 = extractvalue %dx.types.CBufRet.f32 %1821, 2
  %1825 = extractvalue %dx.types.CBufRet.f32 %1821, 3
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1830 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1834 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1831, 3
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1840 = extractvalue %dx.types.CBufRet.f32 %1838, 0
  %1841 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1842 = extractvalue %dx.types.CBufRet.f32 %1838, 2
  %1843 = fcmp fast olt float %1842, -5.000000e-01
  %1844 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float %1813, float %1814, float %1815)  ; Dot3(ax,ay,az,bx,by,bz)
  %1845 = call float @dx.op.unary.f32(i32 25, float %1844)  ; Rsqrt(value)
  %1846 = fmul fast float %1845, %1844
  %1847 = fmul fast float %1845, %1813
  %1848 = fmul fast float %1845, %1814
  %1849 = fmul fast float %1845, %1815
  %1850 = fadd fast float %1846, %1820
  %1851 = call float @dx.op.dot3.f32(i32 55, float %1847, float %1848, float %1849, float %1817, float %1818, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.i32 %1852, 1
  %1854 = and i32 %1853, 1
  %1855 = icmp ne i32 %1854, 0
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %1858 = fcmp fast ogt float %1857, 0.000000e+00
  %1859 = and i1 %1855, %1858
  br i1 %1859, label %1860, label %2266, !dx.controlflow.hints !67

; <label>:1860                                    ; preds = %1768
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 3
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %1867 = fsub fast float %1864, %1866
  %1868 = and i32 %1853, 2
  %1869 = extractvalue %dx.types.CBufRet.i32 %1852, 0
  %1870 = call i32 @dx.op.binary.i32(i32 40, i32 %1869, i32 3)  ; UMin(a,b)
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.CBufRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1876 = fsub fast float %1872, %1874
  %1877 = fsub fast float %1873, %1875
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = fcmp fast ogt float %1879, 0.000000e+00
  %1881 = fsub fast float -0.000000e+00, %1876
  %1882 = fsub fast float -0.000000e+00, %1877
  %1883 = call float @dx.op.dot2.f32(i32 54, float %1847, float %1848, float %1847, float %1848)  ; Dot2(ax,ay,bx,by)
  %1884 = call float @dx.op.dot2.f32(i32 54, float %1847, float %1848, float %1881, float %1882)  ; Dot2(ax,ay,bx,by)
  %1885 = fmul fast float %1884, 2.000000e+00
  %1886 = call float @dx.op.dot2.f32(i32 54, float %1881, float %1882, float %1881, float %1882)  ; Dot2(ax,ay,bx,by)
  %1887 = fmul fast float %1879, %1879
  %1888 = fsub fast float %1886, %1887
  %1889 = fmul fast float %1885, %1885
  %1890 = fmul fast float %1883, 4.000000e+00
  %1891 = fmul fast float %1890, %1888
  %1892 = fsub fast float %1889, %1891
  %1893 = fcmp fast ogt float %1892, 0.000000e+00
  br i1 %1893, label %1894, label %1909, !dx.controlflow.hints !68

; <label>:1894                                    ; preds = %1860
  %1895 = fcmp fast ogt float %1885, 0.000000e+00
  %1896 = call float @dx.op.unary.f32(i32 24, float %1892)  ; Sqrt(value)
  %1897 = fsub fast float -0.000000e+00, %1896
  %1898 = select i1 %1895, float %1896, float %1897
  %1899 = fadd fast float %1898, %1885
  %1900 = fmul float %1899, -5.000000e-01
  %1901 = fdiv fast float %1900, %1883
  %1902 = call float @dx.op.binary.f32(i32 35, float %1901, float 0.000000e+00)  ; FMax(a,b)
  %1903 = call float @dx.op.binary.f32(i32 36, float %1846, float %1902)  ; FMin(a,b)
  %1904 = fdiv fast float %1888, %1900
  %1905 = call float @dx.op.binary.f32(i32 35, float %1904, float 0.000000e+00)  ; FMax(a,b)
  %1906 = call float @dx.op.binary.f32(i32 36, float %1846, float %1905)  ; FMin(a,b)
  %1907 = call float @dx.op.binary.f32(i32 36, float %1903, float %1906)  ; FMin(a,b)
  %1908 = call float @dx.op.binary.f32(i32 35, float %1903, float %1906)  ; FMax(a,b)
  br label %1909

; <label>:1909                                    ; preds = %1894, %1860
  %1910 = phi float [ %1908, %1894 ], [ -1.000000e+00, %1860 ]
  %1911 = phi float [ %1907, %1894 ], [ -1.000000e+00, %1860 ]
  %1912 = phi i1 [ true, %1894 ], [ false, %1860 ]
  %1913 = and i1 %1880, %1912
  br i1 %1913, label %1914, label %1916, !dx.controlflow.hints !69

; <label>:1914                                    ; preds = %1909
  %1915 = fcmp fast oeq float %1911, %1910
  br i1 %1915, label %2219, label %1917, !dx.controlflow.hints !70

; <label>:1916                                    ; preds = %1909
  br i1 %1880, label %2219, label %1917, !dx.controlflow.hints !71

; <label>:1917                                    ; preds = %1916, %1914
  %1918 = phi float [ %1846, %1916 ], [ %1910, %1914 ]
  %1919 = phi float [ 0.000000e+00, %1916 ], [ %1911, %1914 ]
  %1920 = icmp ne i32 %1868, 0
  %1921 = fmul fast float %1918, %1849
  %1922 = fadd fast float %1921, %1862
  %1923 = fmul fast float %1922, %1918
  %1924 = select i1 %1920, float 0.000000e+00, float %1923
  %1925 = fcmp fast oeq float %1849, 0.000000e+00
  %1926 = fdiv fast float %1867, %1849
  %1927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1926)  ; FMax(a,b)
  %1928 = select i1 %1925, float %1918, float %1927
  %1929 = call float @dx.op.binary.f32(i32 36, float %1918, float %1928)  ; FMin(a,b)
  %1930 = fcmp fast ogt float %1849, 0.000000e+00
  %1931 = fcmp fast olt float %1867, 0.000000e+00
  br i1 %1930, label %1932, label %1989, !dx.controlflow.hints !72

; <label>:1932                                    ; preds = %1917
  %1933 = icmp eq i32 %1868, 0
  br i1 %1931, label %1934, label %1978, !dx.controlflow.hints !73

; <label>:1934                                    ; preds = %1932
  %1935 = select i1 %1933, float %1918, float 0.000000e+00
  %1936 = fsub fast float -0.000000e+00, %1935
  %1937 = call float @dx.op.unary.f32(i32 6, float %1936)  ; FAbs(value)
  %1938 = fmul fast float %1935, %1849
  %1939 = fadd fast float %1938, %1862
  %1940 = fmul fast float %1937, %1939
  %1941 = fsub fast float %1924, %1940
  %1942 = fsub fast float %1918, %1937
  %1943 = select i1 %1933, float %1942, float 0.000000e+00
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.CBufRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.CBufRet.f32 %1944, 2
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1951 = extractvalue %dx.types.CBufRet.f32 %1948, 2
  %1952 = extractvalue %dx.types.CBufRet.f32 %1948, 3
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 3
  %1955 = call float @dx.op.binary.f32(i32 36, float %1941, float %1954)  ; FMin(a,b)
  %1956 = fmul fast float %1952, %1943
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fsub fast float %1949, %1945
  %1959 = fsub fast float %1950, %1946
  %1960 = fsub fast float %1951, %1947
  %1961 = fmul fast float %1957, %1958
  %1962 = fmul fast float %1957, %1959
  %1963 = fmul fast float %1957, %1960
  %1964 = fadd fast float %1961, %1945
  %1965 = fadd fast float %1962, %1946
  %1966 = fadd fast float %1963, %1947
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1969 = extractvalue %dx.types.CBufRet.f32 %1967, 1
  %1970 = fadd fast float %1969, %1968
  %1971 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1967, 2
  %1973 = extractvalue %dx.types.CBufRet.f32 %1967, 3
  %1974 = fadd fast float %1973, %1972
  %1975 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1976 = fmul fast float %1971, %1955
  %1977 = fmul fast float %1976, %1975
  br label %2219

; <label>:1978                                    ; preds = %1932
  br i1 %1933, label %1979, label %2000, !dx.controlflow.hints !74

; <label>:1979                                    ; preds = %1978
  %1980 = call float @dx.op.binary.f32(i32 36, float %1929, float %1919)  ; FMin(a,b)
  %1981 = fsub fast float %1929, %1980
  %1982 = fsub fast float %1981, %1918
  %1983 = call float @dx.op.unary.f32(i32 6, float %1982)  ; FAbs(value)
  %1984 = fadd fast float %1981, %1918
  %1985 = fmul fast float %1984, %1849
  %1986 = fadd fast float %1985, %1862
  %1987 = fmul fast float %1986, %1983
  %1988 = fsub fast float %1924, %1987
  br label %2000

; <label>:1989                                    ; preds = %1917
  br i1 %1931, label %1990, label %2000, !dx.controlflow.hints !75

; <label>:1990                                    ; preds = %1989
  %1991 = call float @dx.op.binary.f32(i32 35, float %1919, float %1929)  ; FMax(a,b)
  %1992 = icmp eq i32 %1868, 0
  %1993 = select i1 %1992, float %1929, float 0.000000e+00
  %1994 = fsub fast float -0.000000e+00, %1993
  %1995 = call float @dx.op.unary.f32(i32 6, float %1994)  ; FAbs(value)
  %1996 = fmul fast float %1993, %1849
  %1997 = fadd fast float %1996, %1862
  %1998 = fmul fast float %1995, %1997
  %1999 = fsub fast float %1924, %1998
  br label %2000

; <label>:2000                                    ; preds = %1990, %1989, %1979, %1978
  %2001 = phi float [ %1919, %1978 ], [ %1919, %1979 ], [ %1991, %1990 ], [ %1919, %1989 ]
  %2002 = phi float [ 0.000000e+00, %1978 ], [ %1983, %1979 ], [ %1995, %1990 ], [ 0.000000e+00, %1989 ]
  %2003 = phi float [ %1924, %1978 ], [ %1988, %1979 ], [ %1999, %1990 ], [ %1924, %1989 ]
  %2004 = phi float [ %1929, %1978 ], [ %1929, %1979 ], [ %1918, %1990 ], [ %1918, %1989 ]
  %2005 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %2005, align 4, !tbaa !76, !noalias !80
  %2006 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %2006, align 4, !tbaa !76, !noalias !80
  %2007 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %2007, align 4, !tbaa !76, !noalias !80
  %2008 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %2008, align 4, !tbaa !76, !noalias !80
  %2009 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %2009, align 4, !tbaa !76, !noalias !80
  %2010 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %2010, align 4, !tbaa !76, !noalias !80
  %2011 = icmp sgt i32 %1870, 0
  br i1 %2011, label %2012, label %2073

; <label>:2012                                    ; preds = %2000
  br label %2013

; <label>:2013                                    ; preds = %2062, %2012
  %2014 = phi i32 [ %2063, %2062 ], [ 0, %2012 ]
  %2015 = phi i32 [ %2064, %2062 ], [ 0, %2012 ]
  %2016 = add nuw i32 %2015, 171
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %2016)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.CBufRet.f32 %2017, 1
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2023 = fsub fast float %2018, %2021
  %2024 = fsub fast float %2019, %2022
  %2025 = extractvalue %dx.types.CBufRet.f32 %2017, 2
  %2026 = fsub fast float -0.000000e+00, %2023
  %2027 = fsub fast float -0.000000e+00, %2024
  %2028 = call float @dx.op.dot2.f32(i32 54, float %1847, float %1848, float %2026, float %2027)  ; Dot2(ax,ay,bx,by)
  %2029 = fmul fast float %2028, 2.000000e+00
  %2030 = call float @dx.op.dot2.f32(i32 54, float %2026, float %2027, float %2026, float %2027)  ; Dot2(ax,ay,bx,by)
  %2031 = fmul fast float %2025, %2025
  %2032 = fsub fast float %2030, %2031
  %2033 = fmul fast float %2029, %2029
  %2034 = fmul fast float %1890, %2032
  %2035 = fsub fast float %2033, %2034
  %2036 = fcmp fast ogt float %2035, 0.000000e+00
  br i1 %2036, label %2037, label %2052, !dx.controlflow.hints !68

; <label>:2037                                    ; preds = %2013
  %2038 = fcmp fast ogt float %2029, 0.000000e+00
  %2039 = call float @dx.op.unary.f32(i32 24, float %2035)  ; Sqrt(value)
  %2040 = fsub fast float -0.000000e+00, %2039
  %2041 = select i1 %2038, float %2039, float %2040
  %2042 = fadd fast float %2041, %2029
  %2043 = fmul float %2042, -5.000000e-01
  %2044 = fdiv fast float %2043, %1883
  %2045 = call float @dx.op.binary.f32(i32 35, float %2044, float 0.000000e+00)  ; FMax(a,b)
  %2046 = call float @dx.op.binary.f32(i32 36, float %1918, float %2045)  ; FMin(a,b)
  %2047 = fdiv fast float %2032, %2043
  %2048 = call float @dx.op.binary.f32(i32 35, float %2047, float 0.000000e+00)  ; FMax(a,b)
  %2049 = call float @dx.op.binary.f32(i32 36, float %1918, float %2048)  ; FMin(a,b)
  %2050 = call float @dx.op.binary.f32(i32 36, float %2046, float %2049)  ; FMin(a,b)
  %2051 = call float @dx.op.binary.f32(i32 35, float %2046, float %2049)  ; FMax(a,b)
  br label %2052

; <label>:2052                                    ; preds = %2037, %2013
  %2053 = phi float [ %2051, %2037 ], [ -1.000000e+00, %2013 ]
  %2054 = phi float [ %2050, %2037 ], [ -1.000000e+00, %2013 ]
  %2055 = phi i1 [ true, %2037 ], [ false, %2013 ]
  br i1 %2055, label %2056, label %2062, !dx.controlflow.hints !91

; <label>:2056                                    ; preds = %2052
  %2057 = call float @dx.op.binary.f32(i32 35, float %2001, float %2054)  ; FMax(a,b)
  %2058 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2015
  store float %2057, float* %2058, align 4, !tbaa !76, !noalias !80
  %2059 = call float @dx.op.binary.f32(i32 35, float %2001, float %2053)  ; FMax(a,b)
  %2060 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2015
  store float %2059, float* %2060, align 4, !tbaa !76, !noalias !80
  %2061 = add nsw i32 %2014, 1
  br label %2062

; <label>:2062                                    ; preds = %2056, %2052
  %2063 = phi i32 [ %2061, %2056 ], [ %2014, %2052 ]
  %2064 = add nuw nsw i32 %2015, 1
  %2065 = icmp eq i32 %2064, %1870
  br i1 %2065, label %2066, label %2013

; <label>:2066                                    ; preds = %2062
  %2067 = load float, float* %2007, align 4, !tbaa !76, !alias.scope !92, !noalias !95
  %2068 = load float, float* %2006, align 4, !tbaa !76, !alias.scope !98, !noalias !99
  %2069 = load float, float* %2005, align 4, !tbaa !76, !alias.scope !100, !noalias !101
  %2070 = load float, float* %2010, align 4, !tbaa !76, !alias.scope !102, !noalias !105
  %2071 = load float, float* %2009, align 4, !tbaa !76, !alias.scope !108, !noalias !109
  %2072 = load float, float* %2008, align 4, !tbaa !76, !alias.scope !110, !noalias !111
  br label %2073

; <label>:2073                                    ; preds = %2066, %2000
  %2074 = phi float [ -1.000000e+00, %2000 ], [ %2072, %2066 ]
  %2075 = phi float [ -1.000000e+00, %2000 ], [ %2071, %2066 ]
  %2076 = phi float [ -1.000000e+00, %2000 ], [ %2070, %2066 ]
  %2077 = phi float [ -1.000000e+00, %2000 ], [ %2069, %2066 ]
  %2078 = phi float [ -1.000000e+00, %2000 ], [ %2068, %2066 ]
  %2079 = phi float [ -1.000000e+00, %2000 ], [ %2067, %2066 ]
  %2080 = phi i32 [ 0, %2000 ], [ %2063, %2066 ]
  %2081 = call float @dx.op.binary.f32(i32 36, float %2078, float %2079)  ; FMin(a,b)
  %2082 = call float @dx.op.binary.f32(i32 36, float %2077, float %2081)  ; FMin(a,b)
  %2083 = call float @dx.op.binary.f32(i32 35, float %2077, float %2078)  ; FMax(a,b)
  %2084 = call float @dx.op.binary.f32(i32 36, float %2083, float %2079)  ; FMin(a,b)
  %2085 = call float @dx.op.binary.f32(i32 36, float %2077, float %2078)  ; FMin(a,b)
  %2086 = call float @dx.op.binary.f32(i32 35, float %2085, float %2084)  ; FMax(a,b)
  %2087 = call float @dx.op.binary.f32(i32 35, float %2078, float %2079)  ; FMax(a,b)
  %2088 = call float @dx.op.binary.f32(i32 35, float %2077, float %2087)  ; FMax(a,b)
  store float %2082, float* %2005, align 4, !tbaa !76, !alias.scope !100, !noalias !101
  store float %2086, float* %2006, align 4, !tbaa !76, !alias.scope !98, !noalias !99
  store float %2088, float* %2007, align 4, !tbaa !76, !alias.scope !92, !noalias !95
  %2089 = call float @dx.op.binary.f32(i32 36, float %2075, float %2076)  ; FMin(a,b)
  %2090 = call float @dx.op.binary.f32(i32 36, float %2074, float %2089)  ; FMin(a,b)
  %2091 = call float @dx.op.binary.f32(i32 35, float %2074, float %2075)  ; FMax(a,b)
  %2092 = call float @dx.op.binary.f32(i32 36, float %2091, float %2076)  ; FMin(a,b)
  %2093 = call float @dx.op.binary.f32(i32 36, float %2074, float %2075)  ; FMin(a,b)
  %2094 = call float @dx.op.binary.f32(i32 35, float %2093, float %2092)  ; FMax(a,b)
  %2095 = call float @dx.op.binary.f32(i32 35, float %2075, float %2076)  ; FMax(a,b)
  %2096 = call float @dx.op.binary.f32(i32 35, float %2074, float %2095)  ; FMax(a,b)
  store float %2090, float* %2008, align 4, !tbaa !76, !alias.scope !110, !noalias !111
  store float %2094, float* %2009, align 4, !tbaa !76, !alias.scope !108, !noalias !109
  store float %2096, float* %2010, align 4, !tbaa !76, !alias.scope !102, !noalias !105
  %2097 = sub nsw i32 3, %2080
  %2098 = icmp sgt i32 %2097, 2
  br i1 %2098, label %2099, label %2137, !dx.controlflow.hints !112

; <label>:2099                                    ; preds = %2073
  %2100 = icmp eq i32 %1868, 0
  %2101 = fsub fast float %1918, %2002
  %2102 = select i1 %2100, float %2101, float %2002
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.CBufRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.CBufRet.f32 %2103, 2
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 0
  %2109 = extractvalue %dx.types.CBufRet.f32 %2107, 1
  %2110 = extractvalue %dx.types.CBufRet.f32 %2107, 2
  %2111 = extractvalue %dx.types.CBufRet.f32 %2107, 3
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 3
  %2114 = call float @dx.op.binary.f32(i32 36, float %2003, float %2113)  ; FMin(a,b)
  %2115 = fmul fast float %2111, %2102
  %2116 = call float @dx.op.unary.f32(i32 7, float %2115)  ; Saturate(value)
  %2117 = fsub fast float %2108, %2104
  %2118 = fsub fast float %2109, %2105
  %2119 = fsub fast float %2110, %2106
  %2120 = fmul fast float %2116, %2117
  %2121 = fmul fast float %2116, %2118
  %2122 = fmul fast float %2116, %2119
  %2123 = fadd fast float %2120, %2104
  %2124 = fadd fast float %2121, %2105
  %2125 = fadd fast float %2122, %2106
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.CBufRet.f32 %2126, 1
  %2129 = fadd fast float %2128, %2127
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2126, 2
  %2132 = extractvalue %dx.types.CBufRet.f32 %2126, 3
  %2133 = fadd fast float %2132, %2131
  %2134 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2135 = fmul fast float %2130, %2114
  %2136 = fmul fast float %2135, %2134
  br label %2219

; <label>:2137                                    ; preds = %2073
  %2138 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2097
  %2139 = load float, float* %2138, align 4, !tbaa !76, !noalias !80
  %2140 = fcmp fast olt float %2139, %2004
  %2141 = icmp sgt i32 %2080, 0
  %2142 = and i1 %2141, %2140
  br i1 %2142, label %2143, label %2180

; <label>:2143                                    ; preds = %2137
  br label %2144

; <label>:2144                                    ; preds = %2173, %2143
  %2145 = phi float [ %2174, %2173 ], [ %2002, %2143 ]
  %2146 = phi float [ %2175, %2173 ], [ %2003, %2143 ]
  %2147 = phi float [ %2155, %2173 ], [ %2139, %2143 ]
  %2148 = phi i32 [ %2152, %2173 ], [ %2097, %2143 ]
  %2149 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2148
  %2150 = load float, float* %2149, align 4, !tbaa !76, !noalias !80
  %2151 = icmp slt i32 %2148, 2
  %2152 = add nsw i32 %2148, 1
  %2153 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2152
  %2154 = load float, float* %2153, align 4, !tbaa !76, !noalias !80
  %2155 = select i1 %2151, float %2154, float %1918
  %2156 = call float @dx.op.binary.f32(i32 36, float %2155, float %2150)  ; FMin(a,b)
  %2157 = call float @dx.op.binary.f32(i32 36, float %2004, float %2156)  ; FMin(a,b)
  %2158 = icmp eq i32 %1868, 0
  %2159 = fadd fast float %2157, %2147
  %2160 = fmul fast float %2159, %1849
  %2161 = fadd fast float %2160, %1862
  br i1 %2158, label %2167, label %2162, !dx.controlflow.hints !113

; <label>:2162                                    ; preds = %2144
  %2163 = fsub fast float %2157, %2147
  %2164 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2163)  ; FMax(a,b)
  %2165 = fmul fast float %2164, %2161
  %2166 = fadd fast float %2165, %2146
  br label %2173

; <label>:2167                                    ; preds = %2144
  %2168 = fsub fast float %2147, %2157
  %2169 = call float @dx.op.unary.f32(i32 6, float %2168)  ; FAbs(value)
  %2170 = fadd fast float %2169, %2145
  %2171 = fmul fast float %2169, %2161
  %2172 = fsub fast float %2146, %2171
  br label %2173

; <label>:2173                                    ; preds = %2167, %2162
  %2174 = phi float [ %2164, %2162 ], [ %2170, %2167 ]
  %2175 = phi float [ %2166, %2162 ], [ %2172, %2167 ]
  %2176 = fcmp fast olt float %2155, %2004
  %2177 = icmp slt i32 %2152, 3
  %2178 = and i1 %2177, %2176
  br i1 %2178, label %2144, label %2179

; <label>:2179                                    ; preds = %2173
  br label %2180

; <label>:2180                                    ; preds = %2179, %2137
  %2181 = phi float [ %2002, %2137 ], [ %2174, %2179 ]
  %2182 = phi float [ %2003, %2137 ], [ %2175, %2179 ]
  %2183 = fsub fast float %1918, %2181
  %2184 = select i1 %1920, float %2181, float %2183
  %2185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2186 = extractvalue %dx.types.CBufRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.CBufRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.CBufRet.f32 %2185, 2
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.CBufRet.f32 %2189, 1
  %2192 = extractvalue %dx.types.CBufRet.f32 %2189, 2
  %2193 = extractvalue %dx.types.CBufRet.f32 %2189, 3
  %2194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2195 = extractvalue %dx.types.CBufRet.f32 %2194, 3
  %2196 = call float @dx.op.binary.f32(i32 36, float %2182, float %2195)  ; FMin(a,b)
  %2197 = fmul fast float %2193, %2184
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = fsub fast float %2190, %2186
  %2200 = fsub fast float %2191, %2187
  %2201 = fsub fast float %2192, %2188
  %2202 = fmul fast float %2198, %2199
  %2203 = fmul fast float %2198, %2200
  %2204 = fmul fast float %2198, %2201
  %2205 = fadd fast float %2202, %2186
  %2206 = fadd fast float %2203, %2187
  %2207 = fadd fast float %2204, %2188
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.CBufRet.f32 %2208, 1
  %2211 = fadd fast float %2210, %2209
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2208, 2
  %2214 = extractvalue %dx.types.CBufRet.f32 %2208, 3
  %2215 = fadd fast float %2214, %2213
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fmul fast float %2212, %2196
  %2218 = fmul fast float %2217, %2216
  br label %2219

; <label>:2219                                    ; preds = %2180, %2099, %1934, %1916, %1914
  %2220 = phi float [ %1943, %1934 ], [ %2102, %2099 ], [ %2184, %2180 ], [ 0.000000e+00, %1914 ], [ 0.000000e+00, %1916 ]
  %2221 = phi float [ %1977, %1934 ], [ %2136, %2099 ], [ %2218, %2180 ], [ 0.000000e+00, %1914 ], [ 0.000000e+00, %1916 ]
  %2222 = phi float [ %1964, %1934 ], [ %2123, %2099 ], [ %2205, %2180 ], [ 0.000000e+00, %1914 ], [ 0.000000e+00, %1916 ]
  %2223 = phi float [ %1965, %1934 ], [ %2124, %2099 ], [ %2206, %2180 ], [ 0.000000e+00, %1914 ], [ 0.000000e+00, %1916 ]
  %2224 = phi float [ %1966, %1934 ], [ %2125, %2099 ], [ %2207, %2180 ], [ 0.000000e+00, %1914 ], [ 0.000000e+00, %1916 ]
  %2225 = fmul fast float %1857, %2221
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2228 = fsub fast float %1864, %2227
  %2229 = fcmp fast olt float %2225, -2.000000e+01
  %2230 = call float @dx.op.unary.f32(i32 21, float %2225)  ; Exp(value)
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 2
  %2233 = extractvalue %dx.types.CBufRet.f32 %2231, 3
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 2
  %2236 = fmul fast float %2233, %2228
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = fsub fast float 1.000000e+00, %2237
  %2239 = fmul fast float %1849, 5.000000e-01
  %2240 = fadd fast float %2239, 5.000000e-01
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fsub fast float 1.000000e+00, %2241
  %2243 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2238)  ; FMax(a,b)
  %2244 = fdiv fast float %2242, %2243
  %2245 = fsub fast float %2228, %1815
  %2246 = call float @dx.op.unary.f32(i32 6, float %2245)  ; FAbs(value)
  %2247 = fmul fast float %2246, %2232
  %2248 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2249 = fsub fast float 1.000000e+00, %2247
  %2250 = fmul fast float %2249, %2248
  %2251 = fadd fast float %2250, %2247
  %2252 = fmul fast float %2235, %2228
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = fsub fast float 1.000000e+00, %2251
  %2255 = fmul fast float %2254, %2253
  %2256 = fadd fast float %2255, %2251
  %2257 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2258 = fadd fast float %2230, -1.000000e+00
  %2259 = select i1 %2229, float -1.000000e+00, float %2258
  %2260 = fmul fast float %2257, %2259
  %2261 = fadd fast float %2260, 1.000000e+00
  %2262 = fsub fast float -0.000000e+00, %2260
  %2263 = fmul fast float %2222, %2262
  %2264 = fmul fast float %2223, %2262
  %2265 = fmul fast float %2224, %2262
  br label %2266

; <label>:2266                                    ; preds = %2219, %1768
  %2267 = phi float [ %2220, %2219 ], [ 0.000000e+00, %1768 ]
  %2268 = phi float [ %2261, %2219 ], [ 1.000000e+00, %1768 ]
  %2269 = phi float [ %2263, %2219 ], [ 0.000000e+00, %1768 ]
  %2270 = phi float [ %2264, %2219 ], [ 0.000000e+00, %1768 ]
  %2271 = phi float [ %2265, %2219 ], [ 0.000000e+00, %1768 ]
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2274 = fsub fast float 1.000000e+00, %2268
  %2275 = fmul fast float %2274, %1850
  %2276 = fmul fast float %2275, %2273
  %2277 = fsub fast float %1850, %2276
  br i1 %1843, label %2278, label %2307, !dx.controlflow.hints !114

; <label>:2278                                    ; preds = %2266
  %2279 = fmul fast float %1851, %1840
  %2280 = fadd fast float %2279, %1841
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2282 = fmul fast float %1822, %2277
  %2283 = fsub fast float -0.000000e+00, %2282
  %2284 = fmul fast float %1823, %2277
  %2285 = fsub fast float -0.000000e+00, %2284
  %2286 = call float @dx.op.unary.f32(i32 21, float %2283)  ; Exp(value)
  %2287 = call float @dx.op.unary.f32(i32 21, float %2285)  ; Exp(value)
  %2288 = call float @dx.op.binary.f32(i32 35, float %1830, float %2286)  ; FMax(a,b)
  %2289 = call float @dx.op.binary.f32(i32 35, float %1830, float %2287)  ; FMax(a,b)
  %2290 = fsub fast float %2289, %2288
  %2291 = fmul fast float %2290, %2281
  %2292 = fadd fast float %2291, %2288
  %2293 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2294 = fsub fast float %1827, %1832
  %2295 = fsub fast float %1828, %1833
  %2296 = fsub fast float %1829, %1834
  %2297 = fmul fast float %2281, %2294
  %2298 = fmul fast float %2281, %2295
  %2299 = fmul fast float %2281, %2296
  %2300 = fadd fast float %2297, %1832
  %2301 = fadd fast float %2298, %1833
  %2302 = fadd fast float %2299, %1834
  %2303 = fsub fast float 1.000000e+00, %2293
  %2304 = fmul fast float %2303, %2300
  %2305 = fmul fast float %2303, %2301
  %2306 = fmul fast float %2303, %2302
  br label %2366

; <label>:2307                                    ; preds = %2266
  %2308 = fmul fast float %2277, %1839
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2310 = fsub fast float 2.000000e+00, %2309
  %2311 = fmul fast float %2309, 9.921875e-01
  %2312 = fmul fast float %2311, %2310
  %2313 = fadd fast float %2312, 3.906250e-03
  %2314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %2313, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2315 = extractvalue %dx.types.ResRet.f32 %2314, 0
  %2316 = fsub fast float %2309, %2315
  %2317 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2316)  ; FMax(a,b)
  %2318 = fmul fast float %1825, %1815
  %2319 = call float @dx.op.unary.f32(i32 6, float %2318)  ; FAbs(value)
  %2320 = fcmp fast ogt float %2319, 0x3EB0C6F7A0000000
  br i1 %2320, label %2321, label %2327, !dx.controlflow.hints !115

; <label>:2321                                    ; preds = %2307
  %2322 = fmul fast float %2318, 0xBFF7154760000000
  %2323 = call float @dx.op.unary.f32(i32 21, float %2322)  ; Exp(value)
  %2324 = fsub fast float 1.000000e+00, %2323
  %2325 = fdiv fast float %2324, %2318
  %2326 = fmul fast float %2325, %1835
  br label %2327

; <label>:2327                                    ; preds = %2321, %2307
  %2328 = phi float [ %2326, %2321 ], [ %1835, %2307 ]
  %2329 = fadd fast float %2328, %1837
  %2330 = fmul fast float %2329, %2317
  %2331 = fmul fast float %1822, %2330
  %2332 = fsub fast float -0.000000e+00, %2331
  %2333 = fmul fast float %1823, %2330
  %2334 = fsub fast float -0.000000e+00, %2333
  %2335 = fmul fast float %1824, %2330
  %2336 = fsub fast float -0.000000e+00, %2335
  %2337 = call float @dx.op.unary.f32(i32 21, float %2332)  ; Exp(value)
  %2338 = call float @dx.op.unary.f32(i32 21, float %2334)  ; Exp(value)
  %2339 = call float @dx.op.unary.f32(i32 21, float %2336)  ; Exp(value)
  %2340 = fmul fast float %1851, %1851
  %2341 = fadd fast float %2340, 1.000000e+00
  %2342 = fmul fast float %2341, 0x3FAE8EC8A0000000
  %2343 = fmul fast float %2342, %1832
  %2344 = fmul fast float %2342, %1833
  %2345 = fmul fast float %2342, %1834
  %2346 = fmul fast float %1851, %1830
  %2347 = fsub fast float 1.000000e+00, %2346
  %2348 = fmul fast float %1830, %1830
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %2349, 0x3FB45F3060000000
  %2351 = fmul fast float %2347, %2347
  %2352 = fdiv fast float 1.000000e+00, %2351
  %2353 = fmul fast float %2350, %2352
  %2354 = fmul fast float %2353, %1827
  %2355 = fmul fast float %2353, %1828
  %2356 = fmul fast float %2353, %1829
  %2357 = fadd fast float %2354, %2343
  %2358 = fadd fast float %2355, %2344
  %2359 = fadd fast float %2356, %2345
  %2360 = fsub fast float 1.000000e+00, %2337
  %2361 = fsub fast float 1.000000e+00, %2338
  %2362 = fsub fast float 1.000000e+00, %2339
  %2363 = fmul fast float %2357, %2360
  %2364 = fmul fast float %2358, %2361
  %2365 = fmul fast float %2359, %2362
  br label %2366

; <label>:2366                                    ; preds = %2327, %2278
  %2367 = phi float [ %2304, %2278 ], [ %2363, %2327 ]
  %2368 = phi float [ %2305, %2278 ], [ %2364, %2327 ]
  %2369 = phi float [ %2306, %2278 ], [ %2365, %2327 ]
  %2370 = phi float [ %2293, %2278 ], [ %2337, %2327 ]
  %2371 = phi float [ %2293, %2278 ], [ %2338, %2327 ]
  %2372 = phi float [ %2293, %2278 ], [ %2339, %2327 ]
  br i1 %1859, label %2373, label %2571, !dx.controlflow.hints !116

; <label>:2373                                    ; preds = %2366
  %2374 = extractvalue %dx.types.CBufRet.f32 %2272, 0
  %2375 = fmul fast float %2374, %2274
  %2376 = fsub fast float %2269, %2367
  %2377 = fsub fast float %2270, %2368
  %2378 = fsub fast float %2271, %2369
  %2379 = fmul fast float %2375, %2376
  %2380 = fmul fast float %2375, %2377
  %2381 = fmul fast float %2375, %2378
  %2382 = fadd fast float %2379, %2367
  %2383 = fadd fast float %2380, %2368
  %2384 = fadd fast float %2381, %2369
  %2385 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2370)  ; FMax(a,b)
  %2386 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2371)  ; FMax(a,b)
  %2387 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2372)  ; FMax(a,b)
  %2388 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2268)  ; FMax(a,b)
  %2389 = call float @dx.op.binary.f32(i32 35, float %2267, float %2277)  ; FMax(a,b)
  %2390 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2389)  ; FMax(a,b)
  %2391 = fdiv fast float %2267, %2390
  %2392 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  %2393 = fdiv fast float %2277, %2390
  %2394 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2395 = fcmp fast une float %2388, 1.000000e+00
  br i1 %2395, label %2396, label %2409, !dx.controlflow.hints !117

; <label>:2396                                    ; preds = %2373
  %2397 = call float @dx.op.unary.f32(i32 23, float %2388)  ; Log(value)
  %2398 = fmul fast float %2397, 0x3FE62E4300000000
  %2399 = fmul fast float %2269, %2398
  %2400 = fsub fast float -0.000000e+00, %2399
  %2401 = fmul fast float %2270, %2398
  %2402 = fsub fast float -0.000000e+00, %2401
  %2403 = fmul fast float %2271, %2398
  %2404 = fsub fast float -0.000000e+00, %2403
  %2405 = fsub fast float 1.000000e+00, %2388
  %2406 = fdiv fast float %2400, %2405
  %2407 = fdiv fast float %2402, %2405
  %2408 = fdiv fast float %2404, %2405
  br label %2409

; <label>:2409                                    ; preds = %2396, %2373
  %2410 = phi float [ %2406, %2396 ], [ %2269, %2373 ]
  %2411 = phi float [ %2407, %2396 ], [ %2270, %2373 ]
  %2412 = phi float [ %2408, %2396 ], [ %2271, %2373 ]
  %2413 = phi float [ %2398, %2396 ], [ 0.000000e+00, %2373 ]
  %2414 = fcmp fast une float %2385, 1.000000e+00
  br i1 %2414, label %2415, label %2422, !dx.controlflow.hints !118

; <label>:2415                                    ; preds = %2409
  %2416 = call float @dx.op.unary.f32(i32 23, float %2385)  ; Log(value)
  %2417 = fmul fast float %2416, 0x3FE62E4300000000
  %2418 = fmul fast float %2382, %2417
  %2419 = fsub fast float -0.000000e+00, %2418
  %2420 = fsub fast float 1.000000e+00, %2385
  %2421 = fdiv fast float %2419, %2420
  br label %2422

; <label>:2422                                    ; preds = %2415, %2409
  %2423 = phi float [ %2421, %2415 ], [ %2382, %2409 ]
  %2424 = phi float [ %2417, %2415 ], [ 0.000000e+00, %2409 ]
  %2425 = fcmp fast une float %2386, 1.000000e+00
  br i1 %2425, label %2426, label %2433, !dx.controlflow.hints !118

; <label>:2426                                    ; preds = %2422
  %2427 = call float @dx.op.unary.f32(i32 23, float %2386)  ; Log(value)
  %2428 = fmul fast float %2427, 0x3FE62E4300000000
  %2429 = fmul fast float %2383, %2428
  %2430 = fsub fast float -0.000000e+00, %2429
  %2431 = fsub fast float 1.000000e+00, %2386
  %2432 = fdiv fast float %2430, %2431
  br label %2433

; <label>:2433                                    ; preds = %2426, %2422
  %2434 = phi float [ %2432, %2426 ], [ %2383, %2422 ]
  %2435 = phi float [ %2428, %2426 ], [ 0.000000e+00, %2422 ]
  %2436 = fcmp fast une float %2387, 1.000000e+00
  br i1 %2436, label %2437, label %2444, !dx.controlflow.hints !118

; <label>:2437                                    ; preds = %2433
  %2438 = call float @dx.op.unary.f32(i32 23, float %2387)  ; Log(value)
  %2439 = fmul fast float %2438, 0x3FE62E4300000000
  %2440 = fmul fast float %2384, %2439
  %2441 = fsub fast float -0.000000e+00, %2440
  %2442 = fsub fast float 1.000000e+00, %2387
  %2443 = fdiv fast float %2441, %2442
  br label %2444

; <label>:2444                                    ; preds = %2437, %2433
  %2445 = phi float [ %2443, %2437 ], [ %2384, %2433 ]
  %2446 = phi float [ %2439, %2437 ], [ 0.000000e+00, %2433 ]
  %2447 = fmul fast float %2410, %2394
  %2448 = fmul fast float %2411, %2394
  %2449 = fmul fast float %2412, %2394
  %2450 = fmul fast float %2413, %2394
  %2451 = fmul fast float %2423, %2392
  %2452 = fmul fast float %2434, %2392
  %2453 = fmul fast float %2445, %2392
  %2454 = fmul fast float %2424, %2392
  %2455 = fmul fast float %2435, %2392
  %2456 = fmul fast float %2446, %2392
  %2457 = fadd fast float %2451, %2447
  %2458 = fadd fast float %2452, %2448
  %2459 = fadd fast float %2453, %2449
  %2460 = fadd fast float %2454, %2450
  %2461 = fadd fast float %2455, %2450
  %2462 = fadd fast float %2456, %2450
  %2463 = fcmp fast une float %2460, 0.000000e+00
  br i1 %2463, label %2464, label %2471, !dx.controlflow.hints !119

; <label>:2464                                    ; preds = %2444
  %2465 = fmul fast float %2460, 0x3FF7154760000000
  %2466 = call float @dx.op.unary.f32(i32 21, float %2465)  ; Exp(value)
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2457, %2467
  %2469 = fsub fast float -0.000000e+00, %2468
  %2470 = fdiv fast float %2469, %2460
  br label %2471

; <label>:2471                                    ; preds = %2464, %2444
  %2472 = phi float [ %2466, %2464 ], [ 1.000000e+00, %2444 ]
  %2473 = phi float [ %2470, %2464 ], [ %2457, %2444 ]
  %2474 = fcmp fast une float %2461, 0.000000e+00
  br i1 %2474, label %2475, label %2482, !dx.controlflow.hints !119

; <label>:2475                                    ; preds = %2471
  %2476 = fmul fast float %2461, 0x3FF7154760000000
  %2477 = call float @dx.op.unary.f32(i32 21, float %2476)  ; Exp(value)
  %2478 = fsub fast float 1.000000e+00, %2477
  %2479 = fmul fast float %2458, %2478
  %2480 = fsub fast float -0.000000e+00, %2479
  %2481 = fdiv fast float %2480, %2461
  br label %2482

; <label>:2482                                    ; preds = %2475, %2471
  %2483 = phi float [ %2477, %2475 ], [ 1.000000e+00, %2471 ]
  %2484 = phi float [ %2481, %2475 ], [ %2458, %2471 ]
  %2485 = fcmp fast une float %2462, 0.000000e+00
  br i1 %2485, label %2486, label %2493, !dx.controlflow.hints !119

; <label>:2486                                    ; preds = %2482
  %2487 = fmul fast float %2462, 0x3FF7154760000000
  %2488 = call float @dx.op.unary.f32(i32 21, float %2487)  ; Exp(value)
  %2489 = fsub fast float 1.000000e+00, %2488
  %2490 = fmul fast float %2459, %2489
  %2491 = fsub fast float -0.000000e+00, %2490
  %2492 = fdiv fast float %2491, %2462
  br label %2493

; <label>:2493                                    ; preds = %2486, %2482
  %2494 = phi float [ %2488, %2486 ], [ 1.000000e+00, %2482 ]
  %2495 = phi float [ %2492, %2486 ], [ %2459, %2482 ]
  %2496 = fcmp fast ogt float %2392, %2394
  br i1 %2496, label %2497, label %2517, !dx.controlflow.hints !120

; <label>:2497                                    ; preds = %2493
  %2498 = fsub fast float 1.000000e+00, %2394
  %2499 = fmul fast float %2410, %2498
  %2500 = fmul fast float %2411, %2498
  %2501 = fmul fast float %2412, %2498
  %2502 = fmul fast float %2413, %2498
  %2503 = fcmp fast une float %2502, 0.000000e+00
  br i1 %2503, label %2504, label %2555, !dx.controlflow.hints !121

; <label>:2504                                    ; preds = %2497
  %2505 = fmul fast float %2502, 0x3FF7154760000000
  %2506 = call float @dx.op.unary.f32(i32 21, float %2505)  ; Exp(value)
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2499, %2507
  %2509 = fsub fast float -0.000000e+00, %2508
  %2510 = fmul fast float %2500, %2507
  %2511 = fsub fast float -0.000000e+00, %2510
  %2512 = fmul fast float %2501, %2507
  %2513 = fsub fast float -0.000000e+00, %2512
  %2514 = fdiv fast float %2509, %2502
  %2515 = fdiv fast float %2511, %2502
  %2516 = fdiv fast float %2513, %2502
  br label %2555

; <label>:2517                                    ; preds = %2493
  %2518 = fsub fast float 1.000000e+00, %2392
  %2519 = fmul fast float %2423, %2518
  %2520 = fmul fast float %2434, %2518
  %2521 = fmul fast float %2445, %2518
  %2522 = fmul fast float %2424, %2518
  %2523 = fmul fast float %2435, %2518
  %2524 = fmul fast float %2446, %2518
  %2525 = fcmp fast une float %2522, 0.000000e+00
  br i1 %2525, label %2526, label %2533, !dx.controlflow.hints !119

; <label>:2526                                    ; preds = %2517
  %2527 = fmul fast float %2522, 0x3FF7154760000000
  %2528 = call float @dx.op.unary.f32(i32 21, float %2527)  ; Exp(value)
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2519, %2529
  %2531 = fsub fast float -0.000000e+00, %2530
  %2532 = fdiv fast float %2531, %2522
  br label %2533

; <label>:2533                                    ; preds = %2526, %2517
  %2534 = phi float [ %2532, %2526 ], [ %2519, %2517 ]
  %2535 = phi float [ %2528, %2526 ], [ 1.000000e+00, %2517 ]
  %2536 = fcmp fast une float %2523, 0.000000e+00
  br i1 %2536, label %2537, label %2544, !dx.controlflow.hints !119

; <label>:2537                                    ; preds = %2533
  %2538 = fmul fast float %2523, 0x3FF7154760000000
  %2539 = call float @dx.op.unary.f32(i32 21, float %2538)  ; Exp(value)
  %2540 = fsub fast float 1.000000e+00, %2539
  %2541 = fmul fast float %2520, %2540
  %2542 = fsub fast float -0.000000e+00, %2541
  %2543 = fdiv fast float %2542, %2523
  br label %2544

; <label>:2544                                    ; preds = %2537, %2533
  %2545 = phi float [ %2543, %2537 ], [ %2520, %2533 ]
  %2546 = phi float [ %2539, %2537 ], [ 1.000000e+00, %2533 ]
  %2547 = fcmp fast une float %2524, 0.000000e+00
  br i1 %2547, label %2548, label %2555, !dx.controlflow.hints !119

; <label>:2548                                    ; preds = %2544
  %2549 = fmul fast float %2524, 0x3FF7154760000000
  %2550 = call float @dx.op.unary.f32(i32 21, float %2549)  ; Exp(value)
  %2551 = fsub fast float 1.000000e+00, %2550
  %2552 = fmul fast float %2521, %2551
  %2553 = fsub fast float -0.000000e+00, %2552
  %2554 = fdiv fast float %2553, %2524
  br label %2555

; <label>:2555                                    ; preds = %2548, %2544, %2504, %2497
  %2556 = phi float [ %2554, %2548 ], [ %2516, %2504 ], [ %2501, %2497 ], [ %2521, %2544 ]
  %2557 = phi float [ %2545, %2548 ], [ %2515, %2504 ], [ %2500, %2497 ], [ %2545, %2544 ]
  %2558 = phi float [ %2534, %2548 ], [ %2514, %2504 ], [ %2499, %2497 ], [ %2534, %2544 ]
  %2559 = phi float [ %2550, %2548 ], [ %2506, %2504 ], [ 1.000000e+00, %2497 ], [ 1.000000e+00, %2544 ]
  %2560 = phi float [ %2546, %2548 ], [ %2506, %2504 ], [ 1.000000e+00, %2497 ], [ %2546, %2544 ]
  %2561 = phi float [ %2535, %2548 ], [ %2506, %2504 ], [ 1.000000e+00, %2497 ], [ %2535, %2544 ]
  %2562 = fmul fast float %2561, %2473
  %2563 = fmul fast float %2560, %2484
  %2564 = fmul fast float %2559, %2495
  %2565 = fadd fast float %2562, %2558
  %2566 = fadd fast float %2563, %2557
  %2567 = fadd fast float %2564, %2556
  %2568 = fmul fast float %2561, %2472
  %2569 = fmul fast float %2560, %2483
  %2570 = fmul fast float %2559, %2494
  br label %2571

; <label>:2571                                    ; preds = %2555, %2366
  %2572 = phi float [ %2372, %2366 ], [ %2570, %2555 ]
  %2573 = phi float [ %2371, %2366 ], [ %2569, %2555 ]
  %2574 = phi float [ %2370, %2366 ], [ %2568, %2555 ]
  %2575 = phi float [ %2369, %2366 ], [ %2567, %2555 ]
  %2576 = phi float [ %2368, %2366 ], [ %2566, %2555 ]
  %2577 = phi float [ %2367, %2366 ], [ %2565, %2555 ]
  %2578 = fmul fast float %2574, %1715
  %2579 = fmul fast float %2573, %1716
  %2580 = fmul fast float %2572, %1717
  %2581 = fsub fast float 1.000000e+00, %1778
  %2582 = fmul fast float %2577, %2581
  %2583 = fmul fast float %2576, %2581
  %2584 = fmul fast float %2575, %2581
  %2585 = fadd fast float %2582, %2578
  %2586 = fadd fast float %2583, %2579
  %2587 = fadd fast float %2584, %2580
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 2
  %2590 = fmul fast float %2589, %1788
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float %1778, float %1778, float %1778, float %1778, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 0
  %2594 = fmul fast float %2593, %2585
  %2595 = fmul fast float %2593, %2586
  %2596 = fmul fast float %2593, %2587
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %2594, float %2595, float %2596, float %2594, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %2591, float %2591, float %2591, float %2591, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!34 = !{void ()* @cs_fog_raymarching_particles, !"cs_fog_raymarching_particles", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 8, i32 8, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!81, !83, !85, !86, !88, !89, !90}
!81 = distinct !{!81, !82, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!82 = distinct !{!82, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!83 = distinct !{!83, !84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!84 = distinct !{!84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!85 = distinct !{!85, !84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!86 = distinct !{!86, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!87 = distinct !{!87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!88 = distinct !{!88, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!89 = distinct !{!89, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!90 = distinct !{!90, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = !{!93}
!93 = distinct !{!93, !94, !"\01?sort@@YAXAIAM00@Z: %c"}
!94 = distinct !{!94, !"\01?sort@@YAXAIAM00@Z"}
!95 = !{!96, !97, !81, !83, !85, !86, !88, !89, !90}
!96 = distinct !{!96, !94, !"\01?sort@@YAXAIAM00@Z: %a"}
!97 = distinct !{!97, !94, !"\01?sort@@YAXAIAM00@Z: %b"}
!98 = !{!97}
!99 = !{!96, !93, !81, !83, !85, !86, !88, !89, !90}
!100 = !{!96}
!101 = !{!97, !93, !81, !83, !85, !86, !88, !89, !90}
!102 = !{!103}
!103 = distinct !{!103, !104, !"\01?sort@@YAXAIAM00@Z: %c"}
!104 = distinct !{!104, !"\01?sort@@YAXAIAM00@Z"}
!105 = !{!106, !107, !81, !83, !85, !86, !88, !89, !90}
!106 = distinct !{!106, !104, !"\01?sort@@YAXAIAM00@Z: %a"}
!107 = distinct !{!107, !104, !"\01?sort@@YAXAIAM00@Z: %b"}
!108 = !{!107}
!109 = !{!106, !103, !81, !83, !85, !86, !88, !89, !90}
!110 = !{!106}
!111 = !{!107, !103, !81, !83, !85, !86, !88, !89, !90}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}

