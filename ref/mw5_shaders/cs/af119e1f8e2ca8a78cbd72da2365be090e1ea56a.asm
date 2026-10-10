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
; shader hash: fabc58c2429c1c1e3d5fb2a5b9d782f5
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
;                                   texture     f32          2d      T1            t27     1
;                                   texture     f32          2d      T2            t18     1
;                                   texture  struct         r/o      T3            t25     1
;                                   texture     f32     2darray      T4            t31     1
;                                   texture     f32          3d      T5            t30     1
;                                   texture     f32          2d      T6            t29     1
;                                   texture     f32          2d      T7            t26     1
;                                   texture     u32          2d      T8            t32     1
;                                   texture     f32          3d      T9            t33     1
;                                   texture     f32          1d     T10            t14     1
;                                   texture     f32          2d     T11            t13     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture    byte         r/o     T13            t17     1
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

define void @cs_fog_raymarching_air_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %24 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = add i32 %24, %23
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %30 = add i32 %27, %29
  %31 = lshr i32 %30, 1
  %32 = and i32 %31, 1
  %33 = and i32 %30, 1
  %34 = xor i32 %32, %33
  %35 = shl i32 %23, 1
  %36 = shl i32 %24, 1
  %37 = or i32 %34, %35
  %38 = or i32 %32, %36
  %39 = uitofp i32 %37 to float
  %40 = uitofp i32 %38 to float
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %43 = fmul fast float %42, 0x3FE3C6EF40000000
  %44 = frem fast float %39, 2.560000e+02
  %45 = frem fast float %40, 2.560000e+02
  %46 = fptoui float %44 to i32
  %47 = fptoui float %45 to i32
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 1
  %50 = extractvalue %dx.types.ResRet.f32 %48, 2
  %51 = extractvalue %dx.types.ResRet.f32 %48, 3
  %52 = fadd fast float %49, %43
  %53 = fadd fast float %50, %43
  %54 = fadd fast float %51, %43
  %55 = call float @dx.op.unary.f32(i32 22, float %52)  ; Frc(value)
  %56 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %57 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %58 = fadd fast float %56, %39
  %59 = fadd fast float %57, %40
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %63 = fmul fast float %61, %58
  %64 = fmul fast float %62, %59
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %71 = fmul fast float %63, 2.000000e+00
  %72 = fmul fast float %64, 2.000000e+00
  %73 = fsub fast float 1.000000e+00, %71
  %74 = fsub fast float 1.000000e+00, %72
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %76, %73
  %80 = fmul fast float %77, %73
  %81 = fmul fast float %78, %73
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %83, %74
  %87 = fmul fast float %84, %74
  %88 = fmul fast float %85, %74
  %89 = fadd fast float %86, %79
  %90 = fadd fast float %87, %80
  %91 = fadd fast float %88, %81
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fadd fast float %89, %93
  %97 = fadd fast float %90, %94
  %98 = fadd fast float %91, %95
  %99 = fmul fast float %96, %70
  %100 = fmul fast float %97, %70
  %101 = fmul fast float %98, %70
  %102 = fmul fast float %99, %99
  %103 = fmul fast float %100, %100
  %104 = fadd fast float %102, %103
  %105 = fmul fast float %101, %101
  %106 = fadd fast float %104, %105
  %107 = call float @dx.op.unary.f32(i32 24, float %106)  ; Sqrt(value)
  %108 = fdiv fast float 1.000000e+00, %107
  %109 = fmul fast float %99, %108
  %110 = fmul fast float %100, %108
  %111 = fmul fast float %101, %108
  %112 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %37, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fcmp fast ogt float %113, -1.000000e+00
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %117 = select i1 %114, float %116, float 1.000000e+00
  %118 = fadd fast float %113, 1.000000e+00
  %119 = fmul fast float %117, %118
  %120 = call float @dx.op.unary.f32(i32 6, float %119)  ; FAbs(value)
  %121 = fdiv fast float 1.000000e+00, %70
  %122 = fmul fast float %121, %107
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = fmul fast float %124, %122
  %126 = fmul fast float %122, %120
  %127 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %128 = fcmp fast oge float %120, %127
  %129 = call float @dx.op.binary.f32(i32 36, float %126, float %125)  ; FMin(a,b)
  %130 = select i1 %128, float %125, float %129
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %133 = fsub fast float -0.000000e+00, %66
  %134 = fsub fast float -0.000000e+00, %67
  %135 = fsub fast float %132, %68
  %136 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = fdiv fast float 1.000000e+00, %137
  %139 = fmul fast float %138, %136
  %140 = fcmp fast olt float %139, 0.000000e+00
  %141 = fcmp fast ogt float %111, 0.000000e+00
  %142 = and i1 %141, %140
  br i1 %142, label %147, label %143, !dx.controlflow.hints !38

; <label>:143                                     ; preds = %0
  %144 = fcmp fast olt float %111, 0.000000e+00
  br i1 %144, label %145, label %147, !dx.controlflow.hints !39

; <label>:145                                     ; preds = %143
  %146 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %139)  ; FMax(a,b)
  br label %147

; <label>:147                                     ; preds = %145, %143, %0
  %148 = phi float [ 0.000000e+00, %0 ], [ %146, %145 ], [ 0.000000e+00, %143 ]
  %149 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %145 ], [ %139, %143 ]
  %150 = fcmp fast oeq float %149, 0.000000e+00
  br i1 %150, label %154, label %151, !dx.controlflow.hints !40

; <label>:151                                     ; preds = %147
  %152 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %148)  ; FMin(a,b)
  %153 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %149)  ; FMax(a,b)
  br label %154

; <label>:154                                     ; preds = %151, %147
  %155 = phi i32 [ 1, %151 ], [ 0, %147 ]
  %156 = phi float [ %153, %151 ], [ -1.000000e+00, %147 ]
  %157 = phi float [ %152, %151 ], [ 0x47EFFFFFE0000000, %147 ]
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = fsub fast float %159, %68
  %163 = fadd fast float %162, %161
  %164 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %133, float %134, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %165 = fmul fast float %138, %164
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = fsub fast float %167, %68
  %169 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %133, float %134, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = fmul fast float %138, %169
  %171 = call float @dx.op.binary.f32(i32 36, float %165, float %170)  ; FMin(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %165, float %170)  ; FMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 36, float %157, float %171)  ; FMin(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float %156, float %172)  ; FMax(a,b)
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %179 = fsub fast float %176, %68
  %180 = fadd fast float %179, %178
  %181 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %133, float %134, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %182 = fmul fast float %138, %181
  %183 = fcmp fast olt float %182, 0.000000e+00
  %184 = and i1 %141, %183
  br i1 %184, label %189, label %185, !dx.controlflow.hints !41

; <label>:185                                     ; preds = %154
  %186 = fcmp fast olt float %111, 0.000000e+00
  br i1 %186, label %187, label %189, !dx.controlflow.hints !42

; <label>:187                                     ; preds = %185
  %188 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %182)  ; FMax(a,b)
  br label %189

; <label>:189                                     ; preds = %187, %185, %154
  %190 = phi float [ 0.000000e+00, %154 ], [ %188, %187 ], [ 0.000000e+00, %185 ]
  %191 = phi float [ 0.000000e+00, %154 ], [ 0x47EFFFFFE0000000, %187 ], [ %182, %185 ]
  %192 = fcmp fast oeq float %191, 0.000000e+00
  br i1 %192, label %196, label %193, !dx.controlflow.hints !43

; <label>:193                                     ; preds = %189
  %194 = call float @dx.op.binary.f32(i32 36, float %173, float %190)  ; FMin(a,b)
  %195 = call float @dx.op.binary.f32(i32 35, float %174, float %191)  ; FMax(a,b)
  br label %196

; <label>:196                                     ; preds = %193, %189
  %197 = phi i32 [ 1, %193 ], [ 0, %189 ]
  %198 = phi float [ %195, %193 ], [ %174, %189 ]
  %199 = phi float [ %194, %193 ], [ %173, %189 ]
  %200 = fdiv fast float 1.000000e+00, %109
  %201 = fdiv fast float 1.000000e+00, %110
  %202 = fdiv fast float 1.000000e+00, %111
  %203 = call float @dx.op.binary.f32(i32 36, float %130, float %198)  ; FMin(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %107, float %199)  ; FMax(a,b)
  %205 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %206 = fmul fast float %55, 2.000000e+00
  %207 = fadd fast float %206, -1.000000e+00
  %208 = fmul fast float %205, %207
  %209 = fadd fast float %208, %204
  %210 = fcmp fast olt float %209, %203
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = fcmp fast olt float %212, 1.000000e+00
  %214 = and i1 %213, %210
  br i1 %214, label %215, label %2324

; <label>:215                                     ; preds = %196
  %216 = fmul fast float %209, %111
  %217 = fadd fast float %216, %68
  %218 = fmul fast float %209, %110
  %219 = fadd fast float %218, %67
  %220 = fmul fast float %209, %109
  %221 = fadd fast float %220, %66
  br label %222

; <label>:222                                     ; preds = %2294, %215
  %223 = phi i32 [ %2296, %2294 ], [ undef, %215 ]
  %224 = phi float [ %2297, %2294 ], [ undef, %215 ]
  %225 = phi float [ %2298, %2294 ], [ undef, %215 ]
  %226 = phi float [ %2299, %2294 ], [ undef, %215 ]
  %227 = phi float [ %2300, %2294 ], [ undef, %215 ]
  %228 = phi float [ %2301, %2294 ], [ undef, %215 ]
  %229 = phi i32 [ %557, %2294 ], [ undef, %215 ]
  %230 = phi float [ %558, %2294 ], [ undef, %215 ]
  %231 = phi float [ %357, %2294 ], [ undef, %215 ]
  %232 = phi float [ %358, %2294 ], [ undef, %215 ]
  %233 = phi float [ %359, %2294 ], [ undef, %215 ]
  %234 = phi float [ %360, %2294 ], [ undef, %215 ]
  %235 = phi float [ %2302, %2294 ], [ 0.000000e+00, %215 ]
  %236 = phi float [ %2303, %2294 ], [ 1.000000e+00, %215 ]
  %237 = phi float [ %2304, %2294 ], [ 0.000000e+00, %215 ]
  %238 = phi float [ %2305, %2294 ], [ 0.000000e+00, %215 ]
  %239 = phi float [ %2306, %2294 ], [ 0.000000e+00, %215 ]
  %240 = phi float [ %2316, %2294 ], [ %221, %215 ]
  %241 = phi float [ %2317, %2294 ], [ %219, %215 ]
  %242 = phi float [ %2318, %2294 ], [ %217, %215 ]
  %243 = phi float [ %2295, %2294 ], [ %209, %215 ]
  %244 = phi i32 [ %362, %2294 ], [ 10, %215 ]
  %245 = phi float [ %2307, %2294 ], [ 0.000000e+00, %215 ]
  %246 = phi float [ %2308, %2294 ], [ 0.000000e+00, %215 ]
  %247 = phi float [ %2309, %2294 ], [ 0.000000e+00, %215 ]
  %248 = phi float [ %2310, %2294 ], [ 0.000000e+00, %215 ]
  %249 = phi float [ %2311, %2294 ], [ 0.000000e+00, %215 ]
  %250 = phi i32 [ %2312, %2294 ], [ 0, %215 ]
  %251 = fsub fast float -0.000000e+00, %241
  %252 = fsub fast float -0.000000e+00, %240
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %258 = fsub fast float %240, %256
  %259 = fsub fast float %241, %257
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = extractvalue %dx.types.CBufRet.f32 %260, 3
  %263 = fmul fast float %258, %261
  %264 = fmul fast float %259, %262
  %265 = call float @dx.op.binary.f32(i32 36, float %263, float %264)  ; FMin(a,b)
  %266 = fcmp fast olt float %265, 0.000000e+00
  %267 = call float @dx.op.binary.f32(i32 35, float %263, float %264)  ; FMax(a,b)
  %268 = fcmp fast ogt float %267, 1.000000e+00
  %269 = or i1 %266, %268
  %270 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %271 = fcmp fast olt float %242, %270
  %272 = or i1 %269, %271
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = fadd fast float %276, %274
  %278 = fcmp fast ogt float %242, %277
  %279 = or i1 %272, %278
  br i1 %279, label %280, label %309, !dx.controlflow.hints !44

; <label>:280                                     ; preds = %222
  %281 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %282 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %283 = fsub fast float %256, %240
  %284 = fmul fast float %283, %200
  %285 = fadd fast float %283, %281
  %286 = fmul fast float %285, %200
  %287 = call float @dx.op.binary.f32(i32 36, float %284, float %286)  ; FMin(a,b)
  %288 = call float @dx.op.binary.f32(i32 35, float %284, float %286)  ; FMax(a,b)
  %289 = fsub fast float %257, %241
  %290 = fmul fast float %289, %201
  %291 = fadd fast float %289, %282
  %292 = fmul fast float %291, %201
  %293 = call float @dx.op.binary.f32(i32 36, float %290, float %292)  ; FMin(a,b)
  %294 = call float @dx.op.binary.f32(i32 35, float %287, float %293)  ; FMax(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %290, float %292)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 36, float %288, float %295)  ; FMin(a,b)
  %297 = fsub fast float %270, %242
  %298 = fmul fast float %297, %202
  %299 = fsub fast float %274, %242
  %300 = fadd fast float %299, %276
  %301 = fmul fast float %300, %202
  %302 = call float @dx.op.binary.f32(i32 36, float %298, float %301)  ; FMin(a,b)
  %303 = call float @dx.op.binary.f32(i32 35, float %294, float %302)  ; FMax(a,b)
  %304 = call float @dx.op.binary.f32(i32 35, float %298, float %301)  ; FMax(a,b)
  %305 = call float @dx.op.binary.f32(i32 36, float %296, float %304)  ; FMin(a,b)
  %306 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %303)  ; FMax(a,b)
  %307 = fcmp fast oge float %305, %306
  %308 = select i1 %307, float %303, float 1.000000e+07
  br label %355

; <label>:309                                     ; preds = %222
  %310 = fsub fast float 1.000000e+00, %264
  %311 = icmp eq i32 %244, 0
  br i1 %311, label %340, label %312

; <label>:312                                     ; preds = %309
  br label %313

; <label>:313                                     ; preds = %336, %312
  %314 = phi i32 [ %337, %336 ], [ %244, %312 ]
  %315 = uitofp i32 %314 to float
  %316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %263, float %310, float undef, float undef, i32 0, i32 0, i32 undef, float %315)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 0
  %318 = extractvalue %dx.types.ResRet.f32 %316, 1
  %319 = extractvalue %dx.types.ResRet.f32 %316, 2
  %320 = fcmp fast oeq float %317, 0.000000e+00
  %321 = fcmp ule float %242, %319
  %322 = fcmp uge float %242, %318
  %323 = or i1 %322, %321
  %324 = or i1 %320, %323
  br i1 %324, label %325, label %336, !dx.controlflow.hints !45

; <label>:325                                     ; preds = %313
  %326 = extractvalue %dx.types.ResRet.f32 %316, 3
  %327 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %328 = and i32 %314, 31
  %329 = lshr i32 1024, %328
  %330 = uitofp i32 %329 to float
  %331 = fdiv fast float %327, %330
  %332 = add i32 %314, 1
  %333 = uitofp i32 %332 to float
  %334 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %333)  ; FMin(a,b)
  %335 = fptosi float %334 to i32
  br label %355

; <label>:336                                     ; preds = %313
  %337 = add i32 %314, -1
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %313, !llvm.loop !46

; <label>:339                                     ; preds = %336
  br label %340

; <label>:340                                     ; preds = %339, %309
  %341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %263, float %310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = extractvalue %dx.types.ResRet.f32 %341, 3
  %346 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %347 = fmul fast float %346, 9.765625e-04
  %348 = fcmp fast oeq float %342, 0.000000e+00
  %349 = fcmp ule float %242, %344
  %350 = fcmp uge float %242, %343
  %351 = or i1 %350, %349
  %352 = or i1 %348, %351
  %353 = zext i1 %352 to i32
  %354 = xor i32 %353, 1
  br label %355

; <label>:355                                     ; preds = %340, %325, %280
  %356 = phi float [ %308, %280 ], [ %331, %325 ], [ %347, %340 ]
  %357 = phi float [ %231, %280 ], [ %317, %325 ], [ %342, %340 ]
  %358 = phi float [ %232, %280 ], [ %318, %325 ], [ %343, %340 ]
  %359 = phi float [ %233, %280 ], [ %319, %325 ], [ %344, %340 ]
  %360 = phi float [ %234, %280 ], [ %326, %325 ], [ %345, %340 ]
  %361 = phi i32 [ 0, %280 ], [ 0, %325 ], [ %354, %340 ]
  %362 = phi i32 [ 10, %280 ], [ %335, %325 ], [ 1, %340 ]
  %363 = icmp eq i32 %361, 0
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %366 = call float @dx.op.binary.f32(i32 35, float %356, float %365)  ; FMax(a,b)
  %367 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %366)  ; FMin(a,b)
  %368 = icmp eq i32 %155, 0
  br i1 %368, label %381, label %369, !dx.controlflow.hints !48

; <label>:369                                     ; preds = %355
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 3
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %373 = fmul fast float %371, %243
  %374 = fdiv fast float %373, %203
  %375 = fadd fast float %374, 1.000000e+00
  %376 = call float @dx.op.unary.f32(i32 23, float %375)  ; Log(value)
  %377 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %376)  ; FMin(a,b)
  %378 = fmul fast float %372, %203
  %379 = fmul fast float %378, %377
  %380 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %379)  ; FMin(a,b)
  br label %381

; <label>:381                                     ; preds = %369, %355
  %382 = phi float [ %380, %369 ], [ 0x47EFFFFFE0000000, %355 ]
  %383 = icmp eq i32 %197, 0
  br i1 %383, label %555, label %384, !dx.controlflow.hints !49

; <label>:384                                     ; preds = %381
  %385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.i32 %385, 1
  %387 = and i32 %386, 1
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %546, !dx.controlflow.hints !50

; <label>:389                                     ; preds = %384
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 3
  %393 = fmul fast float %391, %240
  %394 = fmul fast float %392, %241
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = fadd fast float %393, %396
  %399 = fadd fast float %394, %397
  %400 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %401 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %400, float %401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = fmul fast float %405, %403
  %407 = fsub fast float %398, %400
  %408 = fsub fast float %399, %401
  %409 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %411 = fmul fast float %409, %407
  %412 = fmul fast float %410, %408
  %413 = fmul fast float %411, %411
  %414 = fmul fast float %412, %412
  %415 = fadd fast float %413, %414
  %416 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 3
  %419 = fmul fast float %418, %416
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = extractvalue %dx.types.CBufRet.f32 %417, 2
  %422 = fsub fast float %421, %406
  %423 = fmul fast float %422, %420
  %424 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %425 = fsub fast float %242, %406
  %426 = fsub fast float %425, %424
  %427 = fsub fast float %426, %423
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %430 = fsub fast float %427, %429
  %431 = fcmp fast olt float %430, 0.000000e+00
  %432 = call float @dx.op.unary.f32(i32 6, float %430)  ; FAbs(value)
  %433 = extractvalue %dx.types.CBufRet.i32 %385, 0
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %488, label %435

; <label>:435                                     ; preds = %389
  br label %436

; <label>:436                                     ; preds = %475, %435
  %437 = phi i32 [ %481, %475 ], [ 1, %435 ]
  %438 = phi float [ %483, %475 ], [ 0x47EFFFFFE0000000, %435 ]
  %439 = phi i32 [ %484, %475 ], [ 0, %435 ]
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.i32 %442, 1
  %444 = and i32 %443, 8
  %445 = icmp eq i32 %444, 0
  %446 = fcmp fast ogt float %441, %427
  %447 = or i1 %446, %445
  %448 = add i32 %439, 171
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %448)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 2
  br i1 %447, label %453, label %459, !dx.controlflow.hints !51

; <label>:453                                     ; preds = %436
  %454 = fsub fast float %450, %240
  %455 = fsub fast float %451, %241
  %456 = fmul fast float %454, %454
  %457 = fmul fast float %455, %455
  %458 = fadd fast float %456, %457
  br label %475

; <label>:459                                     ; preds = %436
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %462 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %463 = fmul fast float %462, %461
  %464 = fsub fast float %463, %441
  %465 = fdiv fast float %452, %464
  %466 = fsub fast float %240, %450
  %467 = fsub fast float %241, %451
  %468 = fsub fast float %427, %441
  %469 = fmul fast float %465, %468
  %470 = fmul fast float %466, %466
  %471 = fmul fast float %467, %467
  %472 = fadd fast float %470, %471
  %473 = fmul fast float %469, %469
  %474 = fadd fast float %472, %473
  br label %475

; <label>:475                                     ; preds = %459, %453
  %476 = phi float [ %458, %453 ], [ %474, %459 ]
  %477 = call float @dx.op.unary.f32(i32 24, float %476)  ; Sqrt(value)
  %478 = fsub float %452, %477
  %479 = fcmp fast olt float %478, 0.000000e+00
  %480 = zext i1 %479 to i32
  %481 = and i32 %480, %437
  %482 = call float @dx.op.unary.f32(i32 6, float %478)  ; FAbs(value)
  %483 = call float @dx.op.binary.f32(i32 36, float %438, float %482)  ; FMin(a,b)
  %484 = add i32 %439, 1
  %485 = extractvalue %dx.types.CBufRet.i32 %442, 0
  %486 = icmp ult i32 %484, %485
  br i1 %486, label %436, label %487

; <label>:487                                     ; preds = %475
  br label %488

; <label>:488                                     ; preds = %487, %389
  %489 = phi i32 [ 1, %389 ], [ %481, %487 ]
  %490 = phi float [ 0x47EFFFFFE0000000, %389 ], [ %483, %487 ]
  br label %491

; <label>:491                                     ; preds = %491, %488
  %492 = phi i32 [ %489, %488 ], [ %531, %491 ]
  %493 = phi float [ 0x47EFFFFFE0000000, %488 ], [ %533, %491 ]
  %494 = phi i32 [ 0, %488 ], [ %534, %491 ]
  %495 = add nuw nsw i32 %494, 191
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %495)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = extractvalue %dx.types.CBufRet.f32 %496, 1
  %499 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %500 = add nuw nsw i32 %494, 195
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %500)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %505 = fsub fast float %240, %497
  %506 = fsub fast float %241, %498
  %507 = fsub fast float %427, %499
  %508 = call float @dx.op.unary.f32(i32 6, float %505)  ; FAbs(value)
  %509 = call float @dx.op.unary.f32(i32 6, float %506)  ; FAbs(value)
  %510 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  %511 = fsub fast float %508, %502
  %512 = fsub fast float %509, %503
  %513 = fsub fast float %510, %504
  %514 = call float @dx.op.binary.f32(i32 35, float %511, float 0.000000e+00)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 35, float %512, float 0.000000e+00)  ; FMax(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %513, float 0.000000e+00)  ; FMax(a,b)
  %517 = fmul fast float %514, %514
  %518 = fmul fast float %515, %515
  %519 = fadd fast float %518, %517
  %520 = fmul fast float %516, %516
  %521 = fadd fast float %519, %520
  %522 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %523 = call float @dx.op.binary.f32(i32 35, float %512, float %513)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %511, float %523)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 36, float %524, float 0.000000e+00)  ; FMin(a,b)
  %526 = fadd fast float %525, %522
  %527 = fsub fast float -0.000000e+00, %526
  %528 = fcmp ogt float %526, -0.000000e+00
  %529 = icmp ne i32 %492, 0
  %530 = and i1 %529, %528
  %531 = zext i1 %530 to i32
  %532 = call float @dx.op.unary.f32(i32 6, float %527)  ; FAbs(value)
  %533 = call float @dx.op.binary.f32(i32 36, float %493, float %532)  ; FMin(a,b)
  %534 = add nuw nsw i32 %494, 1
  %535 = icmp eq i32 %534, 4
  br i1 %535, label %536, label %491

; <label>:536                                     ; preds = %491
  %537 = call float @dx.op.binary.f32(i32 36, float %432, float %533)  ; FMin(a,b)
  %538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.i32 %538, 1
  %540 = and i32 %539, 2
  %541 = icmp ne i32 %540, 0
  %542 = xor i1 %530, %541
  %543 = call float @dx.op.binary.f32(i32 36, float %537, float %490)  ; FMin(a,b)
  %544 = and i1 %542, %431
  %545 = zext i1 %544 to i32
  br label %546

; <label>:546                                     ; preds = %536, %384
  %547 = phi i32 [ %229, %384 ], [ %545, %536 ]
  %548 = phi float [ 0.000000e+00, %384 ], [ %543, %536 ]
  %549 = phi float [ %242, %384 ], [ %427, %536 ]
  %550 = icmp ne i32 %547, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %364, 3
  %552 = call float @dx.op.binary.f32(i32 35, float %548, float %551)  ; FMax(a,b)
  %553 = call float @dx.op.binary.f32(i32 36, float %382, float %552)  ; FMin(a,b)
  %554 = zext i1 %550 to i32
  br label %555

; <label>:555                                     ; preds = %546, %381
  %556 = phi i32 [ %554, %546 ], [ 0, %381 ]
  %557 = phi i32 [ %547, %546 ], [ %229, %381 ]
  %558 = phi float [ %549, %546 ], [ %230, %381 ]
  %559 = phi float [ %553, %546 ], [ %382, %381 ]
  %560 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %561 = fmul fast float %560, %243
  %562 = call float @dx.op.unary.f32(i32 23, float %561)  ; Log(value)
  %563 = fmul fast float %562, 0x3FE62E4300000000
  %564 = call float @dx.op.binary.f32(i32 35, float %563, float 1.000000e+00)  ; FMax(a,b)
  %565 = fmul fast float %564, %559
  %566 = call float @dx.op.binary.f32(i32 36, float %565, float %367)  ; FMin(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float %566, float %254)  ; FMax(a,b)
  %568 = fadd fast float %203, 0x3F1A36E2E0000000
  %569 = fsub fast float %568, %243
  %570 = call float @dx.op.binary.f32(i32 36, float %569, float %567)  ; FMin(a,b)
  br i1 %368, label %625, label %571, !dx.controlflow.hints !52

; <label>:571                                     ; preds = %555
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = fsub fast float %573, %242
  %575 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %252, float %251, float %574)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = fmul fast float %138, %575
  %577 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %576)  ; FMax(a,b)
  %578 = fcmp fast olt float %111, 0.000000e+00
  %579 = call float @dx.op.binary.f32(i32 36, float %570, float %577)  ; FMin(a,b)
  br i1 %578, label %581, label %580, !dx.controlflow.hints !53

; <label>:580                                     ; preds = %571
  br label %581

; <label>:581                                     ; preds = %580, %571
  %582 = phi float [ 0.000000e+00, %580 ], [ %579, %571 ]
  %583 = phi float [ %579, %580 ], [ %570, %571 ]
  %584 = phi float [ %579, %580 ], [ 0.000000e+00, %571 ]
  %585 = phi float [ %570, %580 ], [ %579, %571 ]
  %586 = fsub fast float %583, %582
  %587 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %588 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %587)  ; FMin(a,b)
  %589 = fsub fast float %242, %573
  %590 = fmul fast float %588, 0x3FF7154760000000
  %591 = fmul fast float %590, %589
  %592 = call float @dx.op.unary.f32(i32 21, float %591)  ; Exp(value)
  %593 = fmul fast float %111, 0x3FF7154760000000
  %594 = fmul fast float %593, %585
  %595 = fmul fast float %594, %588
  %596 = call float @dx.op.unary.f32(i32 21, float %595)  ; Exp(value)
  %597 = fmul fast float %593, %584
  %598 = fmul fast float %597, %588
  %599 = call float @dx.op.unary.f32(i32 21, float %598)  ; Exp(value)
  %600 = fsub fast float %596, %599
  %601 = fmul fast float %600, %592
  %602 = fmul fast float %588, %111
  %603 = fdiv fast float %601, %602
  %604 = fadd fast float %586, %603
  %605 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %606 = fcmp fast olt float %605, 0x3F0FFB4800000000
  %607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %589)  ; FMax(a,b)
  %608 = fmul fast float %607, 0x3FF7154760000000
  %609 = fmul fast float %608, %587
  %610 = call float @dx.op.unary.f32(i32 21, float %609)  ; Exp(value)
  %611 = fmul fast float %610, %570
  %612 = select i1 %606, float %611, float %604
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %615 = fmul fast float %612, %614
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %620 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %621 = fmul fast float %617, %615
  %622 = fmul fast float %618, %615
  %623 = fmul fast float %619, %615
  %624 = fmul fast float %620, %615
  br label %625

; <label>:625                                     ; preds = %581, %555
  %626 = phi float [ %615, %581 ], [ 0.000000e+00, %555 ]
  %627 = phi float [ %624, %581 ], [ 0.000000e+00, %555 ]
  %628 = phi float [ %621, %581 ], [ 0.000000e+00, %555 ]
  %629 = phi float [ %622, %581 ], [ 0.000000e+00, %555 ]
  %630 = phi float [ %623, %581 ], [ 0.000000e+00, %555 ]
  br i1 %363, label %773, label %631, !dx.controlflow.hints !54

; <label>:631                                     ; preds = %625
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %635 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.i32 %636, 0
  %638 = icmp ne i32 %637, 0
  %639 = zext i1 %638 to i32
  %640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.i32 %640, 0
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %676, label %643

; <label>:643                                     ; preds = %631
  br label %644

; <label>:644                                     ; preds = %671, %643
  %645 = phi i32 [ %672, %671 ], [ 0, %643 ]
  %646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %645, i32 0)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = extractvalue %dx.types.ResRet.f32 %646, 1
  %649 = extractvalue %dx.types.ResRet.f32 %646, 2
  %650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %645, i32 16)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = fsub fast float %647, %651
  %655 = fsub fast float %648, %652
  %656 = fsub fast float %649, %653
  %657 = fadd fast float %651, %647
  %658 = fadd fast float %652, %648
  %659 = fadd fast float %653, %649
  %660 = fcmp fast olt float %240, %654
  %661 = fcmp fast olt float %241, %655
  %662 = fcmp fast olt float %242, %656
  %663 = or i1 %660, %661
  %664 = or i1 %662, %663
  %665 = fcmp fast ogt float %240, %657
  %666 = fcmp fast ogt float %241, %658
  %667 = fcmp fast ogt float %242, %659
  %668 = or i1 %665, %666
  %669 = or i1 %667, %668
  %670 = or i1 %664, %669
  br i1 %670, label %671, label %674, !dx.controlflow.hints !55

; <label>:671                                     ; preds = %644
  %672 = add nuw i32 %645, 1
  %673 = icmp ult i32 %672, %641
  br i1 %673, label %644, label %674

; <label>:674                                     ; preds = %671, %644
  %675 = phi i32 [ 255, %671 ], [ %645, %644 ]
  br label %676

; <label>:676                                     ; preds = %674, %631
  %677 = phi i32 [ 255, %631 ], [ %675, %674 ]
  %678 = icmp eq i32 %677, 255
  br i1 %678, label %688, label %679, !dx.controlflow.hints !56

; <label>:679                                     ; preds = %676
  %680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %677, i32 32)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = extractvalue %dx.types.ResRet.f32 %680, 1
  %683 = extractvalue %dx.types.ResRet.f32 %680, 2
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %677, i32 156)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = icmp ne i32 %685, 0
  %687 = zext i1 %686 to i32
  br label %688

; <label>:688                                     ; preds = %679, %676
  %689 = phi float [ %681, %679 ], [ %633, %676 ]
  %690 = phi float [ %682, %679 ], [ %634, %676 ]
  %691 = phi float [ %683, %679 ], [ %635, %676 ]
  %692 = phi i32 [ %687, %679 ], [ %639, %676 ]
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %763, !dx.controlflow.hints !57

; <label>:694                                     ; preds = %688
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 3
  %697 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %700 = extractvalue %dx.types.CBufRet.f32 %698, 3
  br i1 %678, label %711, label %701, !dx.controlflow.hints !58

; <label>:701                                     ; preds = %694
  %702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %677, i32 60)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %677, i32 64)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = extractvalue %dx.types.ResRet.f32 %704, 1
  %707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %677, i32 72)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %677, i32 96)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  br label %711

; <label>:711                                     ; preds = %701, %694
  %712 = phi float [ %703, %701 ], [ %276, %694 ]
  %713 = phi float [ %708, %701 ], [ %274, %694 ]
  %714 = phi float [ %710, %701 ], [ %697, %694 ]
  %715 = phi float [ %705, %701 ], [ %699, %694 ]
  %716 = phi float [ %706, %701 ], [ %700, %694 ]
  %717 = call float @dx.op.binary.f32(i32 35, float %357, float 0.000000e+00)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 36, float %717, float 1.000000e+00)  ; FMin(a,b)
  %719 = call float @dx.op.unary.f32(i32 24, float %718)  ; Sqrt(value)
  %720 = call float @dx.op.binary.f32(i32 35, float %360, float 0x3F847AE140000000)  ; FMax(a,b)
  %721 = fsub fast float %358, %242
  %722 = fsub fast float %242, %359
  %723 = call float @dx.op.binary.f32(i32 36, float %722, float %721)  ; FMin(a,b)
  %724 = fdiv fast float %723, %720
  %725 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %726 = fsub fast float %242, %713
  %727 = fdiv fast float %726, %712
  %728 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %729 = fsub fast float 1.000000e+00, %728
  %730 = fmul float %725, %729
  %731 = fmul float %730, %730
  %732 = fmul fast float %719, %696
  %733 = fmul fast float %732, %731
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %737 = fsub fast float %733, %736
  %738 = fsub fast float %735, %736
  %739 = fdiv fast float %737, %738
  %740 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %741 = fmul fast float %740, %714
  %742 = fcmp fast ogt float %716, 0.000000e+00
  br i1 %742, label %743, label %763, !dx.controlflow.hints !59

; <label>:743                                     ; preds = %711
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %746 = extractvalue %dx.types.CBufRet.f32 %744, 1
  %747 = extractvalue %dx.types.CBufRet.f32 %744, 2
  %748 = fsub fast float %240, %745
  %749 = fsub fast float %241, %746
  %750 = fsub fast float %242, %747
  %751 = fmul fast float %748, %748
  %752 = fmul fast float %749, %749
  %753 = fadd fast float %751, %752
  %754 = fmul fast float %750, %750
  %755 = fadd fast float %753, %754
  %756 = call float @dx.op.unary.f32(i32 24, float %755)  ; Sqrt(value)
  %757 = fsub fast float %756, %715
  %758 = fsub fast float %716, %715
  %759 = fdiv fast float %757, %758
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = fmul fast float %760, %760
  %762 = fmul fast float %761, %741
  br label %763

; <label>:763                                     ; preds = %743, %711, %688
  %764 = phi float [ 0.000000e+00, %688 ], [ %762, %743 ], [ %741, %711 ]
  %765 = fmul fast float %764, %570
  %766 = fmul fast float %765, %689
  %767 = fmul fast float %765, %690
  %768 = fmul fast float %765, %691
  %769 = fadd fast float %766, %628
  %770 = fadd fast float %767, %629
  %771 = fadd fast float %768, %630
  %772 = fadd fast float %765, %626
  br label %773

; <label>:773                                     ; preds = %763, %625
  %774 = phi float [ %772, %763 ], [ %626, %625 ]
  %775 = phi float [ %769, %763 ], [ %628, %625 ]
  %776 = phi float [ %770, %763 ], [ %629, %625 ]
  %777 = phi float [ %771, %763 ], [ %630, %625 ]
  %778 = icmp eq i32 %556, 0
  br i1 %778, label %822, label %779, !dx.controlflow.hints !60

; <label>:779                                     ; preds = %773
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %782 = fsub fast float %570, %781
  %783 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %784 = fmul fast float %782, %783
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 3
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %790 = fsub fast float %789, %558
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 3
  %793 = fmul fast float %790, %792
  %794 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %795 = fmul fast float %794, %787
  %796 = extractvalue %dx.types.CBufRet.f32 %791, 0
  %797 = fsub fast float %243, %796
  %798 = extractvalue %dx.types.CBufRet.f32 %791, 1
  %799 = fmul fast float %797, %798
  %800 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %801 = fsub fast float 1.000000e+00, %785
  %802 = fmul fast float %800, %801
  %803 = fadd fast float %802, %785
  %804 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %805 = fsub fast float %795, %804
  %806 = fmul fast float %805, %803
  %807 = fadd fast float %806, %804
  %808 = extractvalue %dx.types.CBufRet.f32 %786, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %786, 1
  %810 = extractvalue %dx.types.CBufRet.f32 %786, 2
  %811 = fmul fast float %807, %570
  %812 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %813 = fmul fast float %811, %808
  %814 = fmul fast float %811, %809
  %815 = fmul fast float %811, %810
  %816 = fadd fast float %813, %775
  %817 = fadd fast float %814, %776
  %818 = fadd fast float %815, %777
  %819 = fmul fast float %811, %812
  %820 = fadd fast float %819, %627
  %821 = fadd fast float %811, %774
  br label %822

; <label>:822                                     ; preds = %779, %773
  %823 = phi float [ %821, %779 ], [ %774, %773 ]
  %824 = phi float [ %820, %779 ], [ %627, %773 ]
  %825 = phi float [ %816, %779 ], [ %775, %773 ]
  %826 = phi float [ %817, %779 ], [ %776, %773 ]
  %827 = phi float [ %818, %779 ], [ %777, %773 ]
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %830 = fcmp fast ogt float %823, %829
  br i1 %830, label %831, label %837, !dx.controlflow.hints !61

; <label>:831                                     ; preds = %822
  %832 = fdiv fast float 1.000000e+00, %823
  %833 = fmul fast float %832, %825
  %834 = fmul fast float %832, %826
  %835 = fmul fast float %832, %827
  %836 = fmul fast float %832, %824
  br label %837

; <label>:837                                     ; preds = %831, %822
  %838 = phi float [ %836, %831 ], [ %824, %822 ]
  %839 = phi float [ %833, %831 ], [ %825, %822 ]
  %840 = phi float [ %834, %831 ], [ %826, %822 ]
  %841 = phi float [ %835, %831 ], [ %827, %822 ]
  br i1 %830, label %844, label %842, !dx.controlflow.hints !62

; <label>:842                                     ; preds = %837
  %843 = fadd fast float %570, %243
  br label %2294

; <label>:844                                     ; preds = %837
  %845 = fmul fast float %823, 0xBFF7154760000000
  %846 = call float @dx.op.unary.f32(i32 21, float %845)  ; Exp(value)
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.i32 %848, 0
  %850 = icmp eq i32 %849, 1
  br i1 %850, label %851, label %886, !dx.controlflow.hints !63

; <label>:851                                     ; preds = %844
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %855 = fsub fast float %240, %853
  %856 = fsub fast float %241, %854
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = fmul fast float %855, %858
  %861 = fmul fast float %856, %859
  %862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %860, float %861, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = fcmp fast ogt float %863, 0.000000e+00
  %865 = extractvalue %dx.types.CBufRet.i32 %848, 3
  %866 = icmp ne i32 %865, 0
  %867 = and i1 %864, %866
  br i1 %867, label %868, label %886, !dx.controlflow.hints !64

; <label>:868                                     ; preds = %851
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %871 = extractvalue %dx.types.CBufRet.f32 %869, 1
  %872 = fsub fast float %240, %870
  %873 = fsub fast float %241, %871
  %874 = fmul fast float %872, %872
  %875 = fmul fast float %873, %873
  %876 = fadd fast float %874, %875
  %877 = uitofp i32 %865 to float
  %878 = fmul fast float %877, %877
  %879 = fcmp fast ogt float %876, %878
  br i1 %879, label %886, label %880, !dx.controlflow.hints !65

; <label>:880                                     ; preds = %868
  %881 = call float @dx.op.unary.f32(i32 24, float %876)  ; Sqrt(value)
  %882 = fsub fast float %877, %881
  %883 = fmul fast float %882, 0x3F75555560000000
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %885 = call float @dx.op.binary.f32(i32 36, float %884, float %863)  ; FMin(a,b)
  br label %886

; <label>:886                                     ; preds = %880, %868, %851, %844
  %887 = phi float [ 1.000000e+00, %844 ], [ %885, %880 ], [ %863, %851 ], [ 0.000000e+00, %868 ]
  %888 = fcmp fast ogt float %887, 0.000000e+00
  br i1 %888, label %889, label %962, !dx.controlflow.hints !66

; <label>:889                                     ; preds = %886
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = extractvalue %dx.types.ResRet.i32 %890, 1
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = extractvalue %dx.types.ResRet.i32 %893, 1
  %896 = extractvalue %dx.types.ResRet.i32 %893, 2
  %897 = extractvalue %dx.types.ResRet.i32 %893, 3
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = extractvalue %dx.types.ResRet.i32 %898, 1
  %901 = extractvalue %dx.types.ResRet.i32 %898, 2
  %902 = extractvalue %dx.types.ResRet.i32 %898, 3
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = extractvalue %dx.types.ResRet.i32 %903, 1
  %906 = extractvalue %dx.types.ResRet.i32 %903, 2
  %907 = extractvalue %dx.types.ResRet.i32 %903, 3
  %908 = and i32 %904, 65535
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = lshr i32 %904, 16
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = and i32 %905, 65535
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = lshr i32 %905, 16
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = and i32 %906, 65535
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = lshr i32 %906, 16
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = and i32 %907, 65535
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = lshr i32 %907, 16
  %923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %922)  ; LegacyF16ToF32(value)
  %924 = and i32 %899, 65535
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = lshr i32 %899, 16
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = and i32 %900, 65535
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = lshr i32 %900, 16
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = and i32 %901, 65535
  %933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %934 = lshr i32 %901, 16
  %935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %934)  ; LegacyF16ToF32(value)
  %936 = and i32 %902, 65535
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = lshr i32 %902, 16
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = and i32 %894, 65535
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = lshr i32 %894, 16
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = and i32 %895, 65535
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = lshr i32 %895, 16
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = and i32 %896, 65535
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = lshr i32 %896, 16
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = and i32 %897, 65535
  %953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %954 = lshr i32 %897, 16
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = and i32 %891, 65535
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = lshr i32 %891, 16
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = and i32 %892, 65535
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  br label %962

; <label>:962                                     ; preds = %889, %886
  %963 = phi float [ %961, %889 ], [ 0.000000e+00, %886 ]
  %964 = phi float [ %959, %889 ], [ 0.000000e+00, %886 ]
  %965 = phi float [ %957, %889 ], [ 0.000000e+00, %886 ]
  %966 = phi float [ %955, %889 ], [ 0.000000e+00, %886 ]
  %967 = phi float [ %953, %889 ], [ 0.000000e+00, %886 ]
  %968 = phi float [ %951, %889 ], [ 0.000000e+00, %886 ]
  %969 = phi float [ %949, %889 ], [ 0.000000e+00, %886 ]
  %970 = phi float [ %947, %889 ], [ 0.000000e+00, %886 ]
  %971 = phi float [ %945, %889 ], [ 0.000000e+00, %886 ]
  %972 = phi float [ %943, %889 ], [ 0.000000e+00, %886 ]
  %973 = phi float [ %941, %889 ], [ 0.000000e+00, %886 ]
  %974 = phi float [ %939, %889 ], [ 0.000000e+00, %886 ]
  %975 = phi float [ %937, %889 ], [ 0.000000e+00, %886 ]
  %976 = phi float [ %935, %889 ], [ 0.000000e+00, %886 ]
  %977 = phi float [ %933, %889 ], [ 0.000000e+00, %886 ]
  %978 = phi float [ %931, %889 ], [ 0.000000e+00, %886 ]
  %979 = phi float [ %929, %889 ], [ 0.000000e+00, %886 ]
  %980 = phi float [ %927, %889 ], [ 0.000000e+00, %886 ]
  %981 = phi float [ %925, %889 ], [ 0.000000e+00, %886 ]
  %982 = phi float [ %923, %889 ], [ 0.000000e+00, %886 ]
  %983 = phi float [ %921, %889 ], [ 0.000000e+00, %886 ]
  %984 = phi float [ %919, %889 ], [ 0.000000e+00, %886 ]
  %985 = phi float [ %917, %889 ], [ 0.000000e+00, %886 ]
  %986 = phi float [ %915, %889 ], [ 0.000000e+00, %886 ]
  %987 = phi float [ %913, %889 ], [ 0.000000e+00, %886 ]
  %988 = phi float [ %911, %889 ], [ 0.000000e+00, %886 ]
  %989 = phi float [ %909, %889 ], [ 0.000000e+00, %886 ]
  %990 = fcmp fast olt float %887, 1.000000e+00
  br i1 %990, label %991, label %1651, !dx.controlflow.hints !67

; <label>:991                                     ; preds = %962
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = fsub fast float %240, %993
  %996 = fsub fast float %241, %994
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = fmul fast float %995, %998
  %1001 = fmul fast float %996, %999
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1004 = fmul fast float %1003, %1000
  %1005 = extractvalue %dx.types.CBufRet.f32 %1002, 1
  %1006 = fadd fast float %1004, %1005
  %1007 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1008 = fmul fast float %1007, %1001
  %1009 = extractvalue %dx.types.CBufRet.f32 %1002, 3
  %1010 = fadd fast float %1008, %1009
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1006, float %1010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1017 = fsub fast float %1015, %1016
  %1018 = fmul fast float %1017, %1012
  %1019 = fadd fast float %1018, %1016
  %1020 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1021 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1022 = fsub fast float %1020, %1021
  %1023 = fmul fast float %1022, %1013
  %1024 = fadd fast float %1023, %1021
  %1025 = fsub fast float %242, %1019
  %1026 = fsub fast float %1024, %1019
  %1027 = fdiv fast float %1025, %1026
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = fmul fast float %1030, %1028
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1033 = fadd fast float %1031, %1032
  %1034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %1006, float %1010, float %1033, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1042 = fmul fast float %1039, %1035
  %1043 = fmul fast float %1040, %1036
  %1044 = fmul fast float %1041, %1037
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1049 = fadd fast float %1042, %1046
  %1050 = fadd fast float %1043, %1047
  %1051 = fadd fast float %1044, %1048
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = fmul fast float %1053, %1000
  %1055 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1056 = fadd fast float %1054, %1055
  %1057 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1058 = fmul fast float %1057, %1001
  %1059 = extractvalue %dx.types.CBufRet.f32 %1052, 3
  %1060 = fadd fast float %1058, %1059
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1065 = extractvalue %dx.types.CBufRet.f32 %1061, 3
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.CBufRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1070 = extractvalue %dx.types.CBufRet.f32 %1066, 3
  %1071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1056, float %1060, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = extractvalue %dx.types.ResRet.f32 %1071, 3
  %1076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1056, float %1060, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1081 = fmul fast float %1072, %1049
  %1082 = fmul fast float %1077, %1049
  %1083 = fmul fast float %1079, %1049
  %1084 = fmul fast float %1075, %1049
  %1085 = fadd fast float %1081, %1062
  %1086 = fadd fast float %1082, %1063
  %1087 = fadd fast float %1083, %1064
  %1088 = fadd fast float %1084, %1065
  %1089 = fmul fast float %1073, %1049
  %1090 = fmul fast float %1078, %1049
  %1091 = fadd fast float %1089, %1067
  %1092 = fadd fast float %1090, %1068
  %1093 = fmul fast float %1074, %1049
  %1094 = fmul fast float %1080, %1049
  %1095 = fadd fast float %1093, %1069
  %1096 = fadd fast float %1094, %1070
  %1097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1056, float %1060, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.ResRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.ResRet.f32 %1097, 2
  %1101 = extractvalue %dx.types.ResRet.f32 %1097, 3
  %1102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1056, float %1060, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = extractvalue %dx.types.ResRet.f32 %1102, 3
  %1107 = fmul fast float %1098, %1050
  %1108 = fmul fast float %1103, %1050
  %1109 = fmul fast float %1105, %1050
  %1110 = fmul fast float %1101, %1050
  %1111 = fadd fast float %1085, %1107
  %1112 = fadd fast float %1086, %1108
  %1113 = fadd fast float %1087, %1109
  %1114 = fadd fast float %1088, %1110
  %1115 = fmul fast float %1099, %1050
  %1116 = fmul fast float %1104, %1050
  %1117 = fadd fast float %1091, %1115
  %1118 = fadd fast float %1092, %1116
  %1119 = fmul fast float %1100, %1050
  %1120 = fmul fast float %1106, %1050
  %1121 = fadd fast float %1095, %1119
  %1122 = fadd fast float %1096, %1120
  %1123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1056, float %1060, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.ResRet.f32 %1123, 3
  %1128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1056, float %1060, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.ResRet.f32 %1128, 3
  %1133 = fmul fast float %1124, %1051
  %1134 = fmul fast float %1129, %1051
  %1135 = fmul fast float %1131, %1051
  %1136 = fmul fast float %1127, %1051
  %1137 = fadd fast float %1111, %1133
  %1138 = fadd fast float %1112, %1134
  %1139 = fadd fast float %1113, %1135
  %1140 = fadd fast float %1114, %1136
  %1141 = fmul fast float %1125, %1051
  %1142 = fmul fast float %1130, %1051
  %1143 = fadd fast float %1117, %1141
  %1144 = fadd fast float %1118, %1142
  %1145 = fmul fast float %1126, %1051
  %1146 = fmul fast float %1132, %1051
  %1147 = fadd fast float %1121, %1145
  %1148 = fadd fast float %1122, %1146
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = fsub fast float %240, %1150
  %1152 = fsub fast float %993, %240
  %1153 = call float @dx.op.binary.f32(i32 35, float %1152, float %1151)  ; FMax(a,b)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1155 = fsub fast float %241, %1154
  %1156 = fsub fast float %994, %241
  %1157 = call float @dx.op.binary.f32(i32 35, float %1156, float %1155)  ; FMax(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1153, float %1157)  ; FMax(a,b)
  %1159 = extractvalue %dx.types.CBufRet.f32 %997, 3
  %1160 = fmul fast float %1159, %1158
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1166 = extractvalue %dx.types.CBufRet.f32 %1162, 3
  %1167 = fsub fast float %1163, %1137
  %1168 = fsub fast float %1164, %1138
  %1169 = fsub fast float %1165, %1139
  %1170 = fsub fast float %1166, %1140
  %1171 = fmul fast float %1167, %1161
  %1172 = fmul fast float %1168, %1161
  %1173 = fmul fast float %1169, %1161
  %1174 = fmul fast float %1170, %1161
  %1175 = fadd fast float %1171, %1137
  %1176 = fadd fast float %1172, %1138
  %1177 = fadd fast float %1173, %1139
  %1178 = fadd fast float %1174, %1140
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1182 = fsub fast float %1180, %1143
  %1183 = fsub fast float %1181, %1144
  %1184 = fmul fast float %1182, %1161
  %1185 = fmul fast float %1183, %1161
  %1186 = fadd fast float %1184, %1143
  %1187 = fadd fast float %1185, %1144
  %1188 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1189 = extractvalue %dx.types.CBufRet.f32 %1179, 3
  %1190 = fsub fast float %1188, %1147
  %1191 = fsub fast float %1189, %1148
  %1192 = fmul fast float %1190, %1161
  %1193 = fmul fast float %1191, %1161
  %1194 = fadd fast float %1192, %1147
  %1195 = fadd fast float %1193, %1148
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1198 = fmul fast float %1197, %1175
  %1199 = fmul fast float %1197, %1176
  %1200 = fmul fast float %1197, %1177
  %1201 = fmul fast float %1197, %1178
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1204 = fmul fast float %1203, %1186
  %1205 = fmul fast float %1203, %1187
  %1206 = fadd fast float %1204, %1198
  %1207 = fadd fast float %1205, %1200
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = fmul fast float %1209, %1194
  %1211 = fmul fast float %1209, %1195
  %1212 = fadd fast float %1206, %1210
  %1213 = fadd fast float %1207, %1211
  %1214 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1215 = fmul fast float %1214, %1175
  %1216 = fmul fast float %1214, %1176
  %1217 = fmul fast float %1214, %1177
  %1218 = fmul fast float %1214, %1178
  %1219 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1220 = fmul fast float %1219, %1186
  %1221 = fmul fast float %1219, %1187
  %1222 = fadd fast float %1220, %1215
  %1223 = fadd fast float %1221, %1217
  %1224 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1225 = fmul fast float %1224, %1194
  %1226 = fmul fast float %1224, %1195
  %1227 = fadd fast float %1222, %1225
  %1228 = fadd fast float %1223, %1226
  %1229 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1230 = fmul fast float %1229, %1175
  %1231 = fmul fast float %1229, %1176
  %1232 = fmul fast float %1229, %1177
  %1233 = fmul fast float %1229, %1178
  %1234 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1235 = fmul fast float %1234, %1186
  %1236 = fmul fast float %1234, %1187
  %1237 = fadd fast float %1235, %1230
  %1238 = fadd fast float %1236, %1232
  %1239 = extractvalue %dx.types.CBufRet.f32 %1208, 2
  %1240 = fmul fast float %1239, %1194
  %1241 = fmul fast float %1239, %1195
  %1242 = fadd fast float %1237, %1240
  %1243 = fadd fast float %1238, %1241
  %1244 = fmul fast float %1231, %1231
  %1245 = fmul fast float %1243, %1243
  %1246 = fmul fast float %1233, %1233
  %1247 = fadd fast float %1246, %1244
  %1248 = fadd fast float %1247, %1245
  %1249 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1250 = fcmp fast ugt float %1249, 0.000000e+00
  br i1 %1250, label %1251, label %1266, !dx.controlflow.hints !68

; <label>:1251                                    ; preds = %991
  %1252 = fsub fast float -0.000000e+00, %1233
  %1253 = fdiv fast float %1252, %1249
  %1254 = fsub fast float -0.000000e+00, %1231
  %1255 = fdiv fast float %1254, %1249
  %1256 = fdiv fast float %1243, %1249
  %1257 = fmul fast float %1242, 0x3FE279A760000000
  %1258 = fmul fast float %1255, %1231
  %1259 = fmul fast float %1256, %1243
  %1260 = fmul fast float %1253, %1233
  %1261 = fadd fast float %1258, %1260
  %1262 = fsub fast float %1261, %1259
  %1263 = call float @dx.op.unary.f32(i32 6, float %1262)  ; FAbs(value)
  %1264 = fadd fast float %1263, 0x3DDB7CDFE0000000
  %1265 = fdiv fast float %1257, %1264
  br label %1266

; <label>:1266                                    ; preds = %1251, %991
  %1267 = phi float [ %1265, %1251 ], [ 1.000000e+00, %991 ]
  %1268 = fmul fast float %1216, %1216
  %1269 = fmul fast float %1228, %1228
  %1270 = fmul fast float %1218, %1218
  %1271 = fadd fast float %1270, %1268
  %1272 = fadd fast float %1271, %1269
  %1273 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1274 = fcmp fast ugt float %1273, 0.000000e+00
  br i1 %1274, label %1275, label %1290, !dx.controlflow.hints !68

; <label>:1275                                    ; preds = %1266
  %1276 = fsub fast float -0.000000e+00, %1218
  %1277 = fdiv fast float %1276, %1273
  %1278 = fsub fast float -0.000000e+00, %1216
  %1279 = fdiv fast float %1278, %1273
  %1280 = fdiv fast float %1228, %1273
  %1281 = fmul fast float %1227, 0x3FE279A760000000
  %1282 = fmul fast float %1279, %1216
  %1283 = fmul fast float %1280, %1228
  %1284 = fmul fast float %1277, %1218
  %1285 = fadd fast float %1282, %1284
  %1286 = fsub fast float %1285, %1283
  %1287 = call float @dx.op.unary.f32(i32 6, float %1286)  ; FAbs(value)
  %1288 = fadd fast float %1287, 0x3DDB7CDFE0000000
  %1289 = fdiv fast float %1281, %1288
  br label %1290

; <label>:1290                                    ; preds = %1275, %1266
  %1291 = phi float [ %1289, %1275 ], [ 1.000000e+00, %1266 ]
  %1292 = call float @dx.op.binary.f32(i32 36, float %1291, float %1267)  ; FMin(a,b)
  %1293 = fmul fast float %1199, %1199
  %1294 = fmul fast float %1213, %1213
  %1295 = fmul fast float %1201, %1201
  %1296 = fadd fast float %1295, %1293
  %1297 = fadd fast float %1296, %1294
  %1298 = call float @dx.op.unary.f32(i32 24, float %1297)  ; Sqrt(value)
  %1299 = fcmp fast ugt float %1298, 0.000000e+00
  br i1 %1299, label %1300, label %1315, !dx.controlflow.hints !68

; <label>:1300                                    ; preds = %1290
  %1301 = fsub fast float -0.000000e+00, %1201
  %1302 = fdiv fast float %1301, %1298
  %1303 = fsub fast float -0.000000e+00, %1199
  %1304 = fdiv fast float %1303, %1298
  %1305 = fdiv fast float %1213, %1298
  %1306 = fmul fast float %1212, 0x3FE279A760000000
  %1307 = fmul fast float %1304, %1199
  %1308 = fmul fast float %1305, %1213
  %1309 = fmul fast float %1302, %1201
  %1310 = fadd fast float %1307, %1309
  %1311 = fsub fast float %1310, %1308
  %1312 = call float @dx.op.unary.f32(i32 6, float %1311)  ; FAbs(value)
  %1313 = fadd fast float %1312, 0x3DDB7CDFE0000000
  %1314 = fdiv fast float %1306, %1313
  br label %1315

; <label>:1315                                    ; preds = %1300, %1290
  %1316 = phi float [ %1314, %1300 ], [ 1.000000e+00, %1290 ]
  %1317 = call float @dx.op.binary.f32(i32 36, float %1316, float %1292)  ; FMin(a,b)
  %1318 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1319 = fcmp fast olt float %1318, 1.000000e+00
  br i1 %1319, label %1320, label %1330, !dx.controlflow.hints !69

; <label>:1320                                    ; preds = %1315
  %1321 = fmul fast float %1318, %1199
  %1322 = fmul fast float %1318, %1213
  %1323 = fmul fast float %1318, %1201
  %1324 = fmul fast float %1318, %1216
  %1325 = fmul fast float %1318, %1228
  %1326 = fmul fast float %1318, %1218
  %1327 = fmul fast float %1318, %1231
  %1328 = fmul fast float %1318, %1243
  %1329 = fmul fast float %1318, %1233
  br label %1330

; <label>:1330                                    ; preds = %1320, %1315
  %1331 = phi float [ %1327, %1320 ], [ %1231, %1315 ]
  %1332 = phi float [ %1328, %1320 ], [ %1243, %1315 ]
  %1333 = phi float [ %1329, %1320 ], [ %1233, %1315 ]
  %1334 = phi float [ %1324, %1320 ], [ %1216, %1315 ]
  %1335 = phi float [ %1325, %1320 ], [ %1228, %1315 ]
  %1336 = phi float [ %1326, %1320 ], [ %1218, %1315 ]
  %1337 = phi float [ %1321, %1320 ], [ %1199, %1315 ]
  %1338 = phi float [ %1322, %1320 ], [ %1213, %1315 ]
  %1339 = phi float [ %1323, %1320 ], [ %1201, %1315 ]
  %1340 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1212)  ; FMax(a,b)
  %1341 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1227)  ; FMax(a,b)
  %1342 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1242)  ; FMax(a,b)
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = fcmp fast ogt float %1344, 0.000000e+00
  %1346 = fcmp fast oge float %1000, 0.000000e+00
  %1347 = and i1 %1346, %1345
  %1348 = fcmp fast ole float %1000, 1.000000e+00
  %1349 = and i1 %1348, %1347
  %1350 = fcmp fast oge float %1001, 0.000000e+00
  %1351 = and i1 %1350, %1349
  %1352 = fcmp fast ole float %1001, 1.000000e+00
  %1353 = and i1 %1352, %1351
  br i1 %1353, label %1354, label %1499, !dx.controlflow.hints !70

; <label>:1354                                    ; preds = %1330
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1357 = extractvalue %dx.types.CBufRet.f32 %1355, 3
  %1358 = fmul fast float %1356, %1000
  %1359 = fmul fast float %1357, %1001
  %1360 = call float @dx.op.unary.f32(i32 27, float %1358)  ; Round_ni(value)
  %1361 = call float @dx.op.unary.f32(i32 27, float %1359)  ; Round_ni(value)
  %1362 = fptosi float %1360 to i32
  %1363 = fptosi float %1361 to i32
  %1364 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1362, i32 %1363, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 65535
  %1367 = lshr i32 %1365, 16
  %1368 = icmp eq i32 %1366, 65535
  br i1 %1368, label %1405, label %1369, !dx.controlflow.hints !71

; <label>:1369                                    ; preds = %1354
  %1370 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1371 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  %1372 = extractvalue %dx.types.CBufRet.f32 %1355, 1
  %1373 = fmul fast float %1371, %1000
  %1374 = fmul fast float %1372, %1001
  %1375 = fmul fast float %1373, 1.250000e-01
  %1376 = fmul fast float %1374, 1.250000e-01
  %1377 = call float @dx.op.unary.f32(i32 27, float %1375)  ; Round_ni(value)
  %1378 = call float @dx.op.unary.f32(i32 27, float %1376)  ; Round_ni(value)
  %1379 = fmul fast float %1377, 8.000000e+00
  %1380 = fmul fast float %1378, 8.000000e+00
  %1381 = and i32 %1365, 255
  %1382 = lshr i32 %1365, 8
  %1383 = and i32 %1382, 255
  %1384 = mul nuw nsw i32 %1381, 9
  %1385 = uitofp i32 %1384 to float
  %1386 = mul nuw nsw i32 %1383, 9
  %1387 = uitofp i32 %1386 to float
  %1388 = fadd fast float %1385, 5.000000e-01
  %1389 = fadd fast float %1388, %1373
  %1390 = fsub fast float %1389, %1379
  %1391 = fadd fast float %1387, 5.000000e-01
  %1392 = fadd fast float %1391, %1374
  %1393 = fsub fast float %1392, %1380
  %1394 = fdiv fast float %1390, %1344
  %1395 = fdiv fast float %1393, %1370
  %1396 = fmul fast float %1028, 4.375000e-01
  %1397 = fadd fast float %1396, 3.125000e-02
  %1398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1394, float %1395, float %1397, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = fadd fast float %1399, %1340
  %1403 = fadd fast float %1400, %1341
  %1404 = fadd fast float %1401, %1342
  br label %1405

; <label>:1405                                    ; preds = %1369, %1354
  %1406 = phi float [ %1404, %1369 ], [ %1342, %1354 ]
  %1407 = phi float [ %1403, %1369 ], [ %1341, %1354 ]
  %1408 = phi float [ %1402, %1369 ], [ %1340, %1354 ]
  %1409 = icmp eq i32 %1367, 65535
  br i1 %1409, label %1499, label %1410, !dx.controlflow.hints !72

; <label>:1410                                    ; preds = %1405
  %1411 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1412 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1355, 1
  %1414 = fmul fast float %1412, %1000
  %1415 = fmul fast float %1413, %1001
  %1416 = fmul fast float %1414, 1.250000e-01
  %1417 = fmul fast float %1415, 1.250000e-01
  %1418 = call float @dx.op.unary.f32(i32 27, float %1416)  ; Round_ni(value)
  %1419 = call float @dx.op.unary.f32(i32 27, float %1417)  ; Round_ni(value)
  %1420 = fmul fast float %1418, 8.000000e+00
  %1421 = fmul fast float %1419, 8.000000e+00
  %1422 = fsub fast float %1414, %1420
  %1423 = fsub fast float %1415, %1421
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = fadd fast float %1423, 5.000000e-01
  %1426 = and i32 %1367, 255
  %1427 = lshr i32 %1365, 24
  %1428 = mul nuw nsw i32 %1426, 9
  %1429 = uitofp i32 %1428 to float
  %1430 = mul nuw nsw i32 %1427, 9
  %1431 = uitofp i32 %1430 to float
  %1432 = fadd fast float %1424, %1429
  %1433 = fadd fast float %1425, %1431
  %1434 = fdiv fast float %1432, %1344
  %1435 = fdiv fast float %1433, %1411
  %1436 = fmul fast float %1028, 4.375000e-01
  %1437 = fadd fast float %1436, 3.125000e-02
  %1438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1434, float %1435, float %1437, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.ResRet.f32 %1438, 2
  %1442 = fadd fast float %1436, 5.312500e-01
  %1443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1434, float %1435, float %1442, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = fmul fast float %1444, 2.000000e+00
  %1448 = fmul fast float %1445, 2.000000e+00
  %1449 = fmul fast float %1446, 2.000000e+00
  %1450 = fadd fast float %1447, -1.000000e+00
  %1451 = fadd fast float %1448, -1.000000e+00
  %1452 = fadd fast float %1449, -1.000000e+00
  %1453 = fmul fast float %1450, %1450
  %1454 = fmul fast float %1451, %1451
  %1455 = fadd fast float %1453, %1454
  %1456 = fmul fast float %1452, %1452
  %1457 = fadd fast float %1455, %1456
  %1458 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1459 = fcmp fast ogt float %1458, 0.000000e+00
  br i1 %1459, label %1460, label %1464, !dx.controlflow.hints !73

; <label>:1460                                    ; preds = %1410
  %1461 = fdiv fast float %1450, %1458
  %1462 = fdiv fast float %1451, %1458
  %1463 = fdiv fast float %1452, %1458
  br label %1464

; <label>:1464                                    ; preds = %1460, %1410
  %1465 = phi float [ %1461, %1460 ], [ 0.000000e+00, %1410 ]
  %1466 = phi float [ %1462, %1460 ], [ 0.000000e+00, %1410 ]
  %1467 = phi float [ %1463, %1460 ], [ 0.000000e+00, %1410 ]
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.CBufRet.f32 %1468, 1
  %1471 = fsub fast float %240, %1469
  %1472 = fsub fast float %241, %1470
  %1473 = fmul fast float %1471, %1471
  %1474 = fmul fast float %1472, %1472
  %1475 = fadd fast float %1473, %1474
  %1476 = call float @dx.op.unary.f32(i32 24, float %1475)  ; Sqrt(value)
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1480 = fsub fast float %1476, %1478
  %1481 = fdiv fast float %1480, %1479
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = fmul fast float %1482, 2.000000e+00
  %1484 = fsub fast float 3.000000e+00, %1483
  %1485 = fmul fast float %1482, %1482
  %1486 = fmul fast float %1485, %1484
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1465, float %1466, float %1467, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1487)  ; FMax(a,b)
  %1489 = fmul fast float %1488, 0x400C5BF8A0000000
  %1490 = fmul fast float %1486, %1439
  %1491 = fmul fast float %1490, %1489
  %1492 = fadd fast float %1491, %1408
  %1493 = fmul fast float %1486, %1440
  %1494 = fmul fast float %1493, %1489
  %1495 = fadd fast float %1494, %1407
  %1496 = fmul fast float %1486, %1441
  %1497 = fmul fast float %1496, %1489
  %1498 = fadd fast float %1497, %1406
  br label %1499

; <label>:1499                                    ; preds = %1464, %1405, %1330
  %1500 = phi float [ %1498, %1464 ], [ %1406, %1405 ], [ %1342, %1330 ]
  %1501 = phi float [ %1495, %1464 ], [ %1407, %1405 ], [ %1341, %1330 ]
  %1502 = phi float [ %1492, %1464 ], [ %1408, %1405 ], [ %1340, %1330 ]
  %1503 = fcmp fast ogt float %242, %1024
  %1504 = and i1 %1346, %1503
  %1505 = and i1 %1348, %1504
  %1506 = and i1 %1350, %1505
  %1507 = and i1 %1352, %1506
  br i1 %1507, label %1508, label %1565, !dx.controlflow.hints !74

; <label>:1508                                    ; preds = %1499
  %1509 = fmul fast float %1026, 0x3FC24924A0000000
  %1510 = fsub fast float %242, %1024
  %1511 = fdiv fast float %1510, %1509
  %1512 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.CBufRet.f32 %1515, 2
  %1519 = fsub fast float %1514, %1502
  %1520 = fsub fast float %1516, %1337
  %1521 = fsub fast float %1517, %1338
  %1522 = fsub fast float %1518, %1339
  %1523 = fmul fast float %1519, %1512
  %1524 = fmul fast float %1520, %1512
  %1525 = fmul fast float %1521, %1512
  %1526 = fmul fast float %1522, %1512
  %1527 = fadd fast float %1523, %1502
  %1528 = fadd fast float %1524, %1337
  %1529 = fadd fast float %1525, %1338
  %1530 = fadd fast float %1526, %1339
  %1531 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.f32 %1532, 0
  %1534 = extractvalue %dx.types.CBufRet.f32 %1532, 1
  %1535 = extractvalue %dx.types.CBufRet.f32 %1532, 2
  %1536 = fsub fast float %1531, %1501
  %1537 = fsub fast float %1533, %1334
  %1538 = fsub fast float %1534, %1335
  %1539 = fsub fast float %1535, %1336
  %1540 = fmul fast float %1536, %1512
  %1541 = fmul fast float %1537, %1512
  %1542 = fmul fast float %1538, %1512
  %1543 = fmul fast float %1539, %1512
  %1544 = fadd fast float %1540, %1501
  %1545 = fadd fast float %1541, %1334
  %1546 = fadd fast float %1542, %1335
  %1547 = fadd fast float %1543, %1336
  %1548 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1553 = fsub fast float %1548, %1500
  %1554 = fsub fast float %1550, %1331
  %1555 = fsub fast float %1551, %1332
  %1556 = fsub fast float %1552, %1333
  %1557 = fmul fast float %1553, %1512
  %1558 = fmul fast float %1554, %1512
  %1559 = fmul fast float %1555, %1512
  %1560 = fmul fast float %1556, %1512
  %1561 = fadd fast float %1557, %1500
  %1562 = fadd fast float %1558, %1331
  %1563 = fadd fast float %1559, %1332
  %1564 = fadd fast float %1560, %1333
  br label %1565

; <label>:1565                                    ; preds = %1508, %1499
  %1566 = phi float [ %1561, %1508 ], [ %1500, %1499 ]
  %1567 = phi float [ %1562, %1508 ], [ %1331, %1499 ]
  %1568 = phi float [ %1563, %1508 ], [ %1332, %1499 ]
  %1569 = phi float [ %1564, %1508 ], [ %1333, %1499 ]
  %1570 = phi float [ %1544, %1508 ], [ %1501, %1499 ]
  %1571 = phi float [ %1545, %1508 ], [ %1334, %1499 ]
  %1572 = phi float [ %1546, %1508 ], [ %1335, %1499 ]
  %1573 = phi float [ %1547, %1508 ], [ %1336, %1499 ]
  %1574 = phi float [ %1527, %1508 ], [ %1502, %1499 ]
  %1575 = phi float [ %1528, %1508 ], [ %1337, %1499 ]
  %1576 = phi float [ %1529, %1508 ], [ %1338, %1499 ]
  %1577 = phi float [ %1530, %1508 ], [ %1339, %1499 ]
  %1578 = extractvalue %dx.types.CBufRet.f32 %1149, 3
  %1579 = fmul fast float %1578, %1574
  %1580 = fmul fast float %1578, %1570
  %1581 = fmul fast float %1578, %1566
  %1582 = fmul fast float %1575, 1.500000e+00
  %1583 = fmul fast float %1582, %1578
  %1584 = fmul fast float %1576, 1.500000e+00
  %1585 = fmul fast float %1584, %1578
  %1586 = fmul fast float %1577, 1.500000e+00
  %1587 = fmul fast float %1586, %1578
  %1588 = fmul fast float %1571, 1.500000e+00
  %1589 = fmul fast float %1588, %1578
  %1590 = fmul fast float %1572, 1.500000e+00
  %1591 = fmul fast float %1590, %1578
  %1592 = fmul fast float %1573, 1.500000e+00
  %1593 = fmul fast float %1592, %1578
  %1594 = fmul fast float %1567, 1.500000e+00
  %1595 = fmul fast float %1594, %1578
  %1596 = fmul fast float %1568, 1.500000e+00
  %1597 = fmul fast float %1596, %1578
  %1598 = fmul fast float %1569, 1.500000e+00
  %1599 = fmul fast float %1598, %1578
  %1600 = fsub fast float %989, %1579
  %1601 = fmul fast float %1600, %887
  %1602 = fadd fast float %1601, %1579
  %1603 = fsub fast float %988, %1583
  %1604 = fmul fast float %1603, %887
  %1605 = fadd fast float %1604, %1583
  %1606 = fsub fast float %987, %1585
  %1607 = fmul fast float %1606, %887
  %1608 = fadd fast float %1607, %1585
  %1609 = fsub fast float %986, %1587
  %1610 = fmul fast float %1609, %887
  %1611 = fadd fast float %1610, %1587
  %1612 = fmul fast float %985, %887
  %1613 = fmul fast float %984, %887
  %1614 = fmul fast float %983, %887
  %1615 = fmul fast float %982, %887
  %1616 = fmul fast float %981, %887
  %1617 = fsub fast float %980, %1580
  %1618 = fmul fast float %1617, %887
  %1619 = fadd fast float %1618, %1580
  %1620 = fsub fast float %979, %1589
  %1621 = fmul fast float %1620, %887
  %1622 = fadd fast float %1621, %1589
  %1623 = fsub fast float %978, %1591
  %1624 = fmul fast float %1623, %887
  %1625 = fadd fast float %1624, %1591
  %1626 = fsub fast float %977, %1593
  %1627 = fmul fast float %1626, %887
  %1628 = fadd fast float %1627, %1593
  %1629 = fmul fast float %976, %887
  %1630 = fmul fast float %975, %887
  %1631 = fmul fast float %974, %887
  %1632 = fmul fast float %973, %887
  %1633 = fmul fast float %972, %887
  %1634 = fsub fast float %971, %1581
  %1635 = fmul fast float %1634, %887
  %1636 = fadd fast float %1635, %1581
  %1637 = fsub fast float %970, %1595
  %1638 = fmul fast float %1637, %887
  %1639 = fadd fast float %1638, %1595
  %1640 = fsub fast float %969, %1597
  %1641 = fmul fast float %1640, %887
  %1642 = fadd fast float %1641, %1597
  %1643 = fsub fast float %968, %1599
  %1644 = fmul fast float %1643, %887
  %1645 = fadd fast float %1644, %1599
  %1646 = fmul fast float %967, %887
  %1647 = fmul fast float %966, %887
  %1648 = fmul fast float %965, %887
  %1649 = fmul fast float %964, %887
  %1650 = fmul fast float %963, %887
  br label %1651

; <label>:1651                                    ; preds = %1565, %962
  %1652 = phi float [ %1650, %1565 ], [ %963, %962 ]
  %1653 = phi float [ %1649, %1565 ], [ %964, %962 ]
  %1654 = phi float [ %1648, %1565 ], [ %965, %962 ]
  %1655 = phi float [ %1647, %1565 ], [ %966, %962 ]
  %1656 = phi float [ %1646, %1565 ], [ %967, %962 ]
  %1657 = phi float [ %1645, %1565 ], [ %968, %962 ]
  %1658 = phi float [ %1642, %1565 ], [ %969, %962 ]
  %1659 = phi float [ %1639, %1565 ], [ %970, %962 ]
  %1660 = phi float [ %1636, %1565 ], [ %971, %962 ]
  %1661 = phi float [ %1633, %1565 ], [ %972, %962 ]
  %1662 = phi float [ %1632, %1565 ], [ %973, %962 ]
  %1663 = phi float [ %1631, %1565 ], [ %974, %962 ]
  %1664 = phi float [ %1630, %1565 ], [ %975, %962 ]
  %1665 = phi float [ %1629, %1565 ], [ %976, %962 ]
  %1666 = phi float [ %1628, %1565 ], [ %977, %962 ]
  %1667 = phi float [ %1625, %1565 ], [ %978, %962 ]
  %1668 = phi float [ %1622, %1565 ], [ %979, %962 ]
  %1669 = phi float [ %1619, %1565 ], [ %980, %962 ]
  %1670 = phi float [ %1616, %1565 ], [ %981, %962 ]
  %1671 = phi float [ %1615, %1565 ], [ %982, %962 ]
  %1672 = phi float [ %1614, %1565 ], [ %983, %962 ]
  %1673 = phi float [ %1613, %1565 ], [ %984, %962 ]
  %1674 = phi float [ %1612, %1565 ], [ %985, %962 ]
  %1675 = phi float [ %1611, %1565 ], [ %986, %962 ]
  %1676 = phi float [ %1608, %1565 ], [ %987, %962 ]
  %1677 = phi float [ %1605, %1565 ], [ %988, %962 ]
  %1678 = phi float [ %1602, %1565 ], [ %989, %962 ]
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1681 = fmul fast float %1680, %1680
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1684 = extractvalue %dx.types.CBufRet.f32 %1682, 1
  %1685 = extractvalue %dx.types.CBufRet.f32 %1682, 2
  %1686 = fmul fast float %1678, 0x3FD20DD760000000
  %1687 = fmul fast float %1685, %1676
  %1688 = fmul fast float %1685, %1685
  %1689 = fmul fast float %1688, 0x3FEE471020000000
  %1690 = fadd fast float %1689, 0xBFD42F6020000000
  %1691 = fmul fast float %1690, %1672
  %1692 = fmul fast float %1683, %1675
  %1693 = fmul fast float %1684, %1677
  %1694 = fmul fast float %1685, 0x3FF17B1420000000
  %1695 = fmul fast float %1681, %1671
  %1696 = fmul fast float %1695, %1683
  %1697 = fmul fast float %1696, %1694
  %1698 = fmul fast float %1681, %1673
  %1699 = fmul fast float %1698, %1684
  %1700 = fmul fast float %1699, %1694
  %1701 = fmul fast float %1683, %1683
  %1702 = fmul fast float %1684, %1684
  %1703 = fsub fast float %1701, %1702
  %1704 = fmul fast float %1670, 0x3FE17B1420000000
  %1705 = fmul fast float %1704, %1703
  %1706 = fmul fast float %1674, 0x3FF17B1420000000
  %1707 = fmul fast float %1706, %1684
  %1708 = fmul fast float %1707, %1683
  %1709 = fadd fast float %1705, %1708
  %1710 = fadd fast float %1709, %1691
  %1711 = fmul fast float %1710, %1681
  %1712 = fsub fast float %1693, %1687
  %1713 = fadd fast float %1712, %1692
  %1714 = fmul fast float %1713, 0x3FDF454380000000
  %1715 = fmul fast float %1714, %1680
  %1716 = fsub fast float %1686, %1697
  %1717 = fsub fast float %1716, %1700
  %1718 = fadd fast float %1717, %1711
  %1719 = fadd fast float %1718, %1715
  %1720 = fmul fast float %1669, 0x3FD20DD760000000
  %1721 = fmul fast float %1685, %1667
  %1722 = fmul fast float %1690, %1663
  %1723 = fmul fast float %1683, %1666
  %1724 = fmul fast float %1684, %1668
  %1725 = fmul fast float %1681, %1662
  %1726 = fmul fast float %1725, %1683
  %1727 = fmul fast float %1726, %1694
  %1728 = fmul fast float %1681, %1664
  %1729 = fmul fast float %1728, %1684
  %1730 = fmul fast float %1729, %1694
  %1731 = fmul fast float %1661, 0x3FE17B1420000000
  %1732 = fmul fast float %1731, %1703
  %1733 = fmul fast float %1665, 0x3FF17B1420000000
  %1734 = fmul fast float %1733, %1684
  %1735 = fmul fast float %1734, %1683
  %1736 = fadd fast float %1732, %1735
  %1737 = fadd fast float %1736, %1722
  %1738 = fmul fast float %1737, %1681
  %1739 = fsub fast float %1724, %1721
  %1740 = fadd fast float %1739, %1723
  %1741 = fmul fast float %1740, 0x3FDF454380000000
  %1742 = fmul fast float %1741, %1680
  %1743 = fsub fast float %1720, %1727
  %1744 = fsub fast float %1743, %1730
  %1745 = fadd fast float %1744, %1738
  %1746 = fadd fast float %1745, %1742
  %1747 = fmul fast float %1660, 0x3FD20DD760000000
  %1748 = fmul fast float %1685, %1658
  %1749 = fmul fast float %1690, %1654
  %1750 = fmul fast float %1683, %1657
  %1751 = fmul fast float %1684, %1659
  %1752 = fmul fast float %1681, %1653
  %1753 = fmul fast float %1752, %1683
  %1754 = fmul fast float %1753, %1694
  %1755 = fmul fast float %1681, %1655
  %1756 = fmul fast float %1755, %1684
  %1757 = fmul fast float %1756, %1694
  %1758 = fmul fast float %1652, 0x3FE17B1420000000
  %1759 = fmul fast float %1758, %1703
  %1760 = fmul fast float %1656, 0x3FF17B1420000000
  %1761 = fmul fast float %1760, %1684
  %1762 = fmul fast float %1761, %1683
  %1763 = fadd fast float %1759, %1762
  %1764 = fadd fast float %1763, %1749
  %1765 = fmul fast float %1764, %1681
  %1766 = fsub fast float %1751, %1748
  %1767 = fadd fast float %1766, %1750
  %1768 = fmul fast float %1767, 0x3FDF454380000000
  %1769 = fmul fast float %1768, %1680
  %1770 = fsub fast float %1747, %1754
  %1771 = fsub fast float %1770, %1757
  %1772 = fadd fast float %1771, %1765
  %1773 = fadd fast float %1772, %1769
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 3
  %1776 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %1777 = fmul fast float %1776, %1775
  %1778 = fmul fast float %1777, %1719
  %1779 = fmul fast float %1777, %1746
  %1780 = fmul fast float %1777, %1773
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 3
  %1783 = fcmp fast une float %1782, 0.000000e+00
  %1784 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1786 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  br i1 %1783, label %1787, label %1809, !dx.controlflow.hints !75

; <label>:1787                                    ; preds = %1651
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1785, float %1786, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = fcmp fast ogt float %838, 0.000000e+00
  %1794 = select i1 %1793, float 1.000000e+00, float -1.000000e+00
  %1795 = fmul fast float %1794, 5.000000e-01
  %1796 = fmul fast float %1795, %1792
  %1797 = fmul fast float %1794, %838
  %1798 = fadd fast float %1796, 4.921875e-01
  %1799 = fadd fast float %1797, -3.125000e-02
  %1800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %19, float %1798, float 0x3FB25F3060000000, float %1799, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1801 = extractvalue %dx.types.ResRet.f32 %1800, 0
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = fmul fast float %1801, 0x400921FB60000000
  %1805 = fmul fast float %1804, %1803
  %1806 = fmul fast float %1805, %1789
  %1807 = fmul fast float %1805, %1790
  %1808 = fmul fast float %1805, %1791
  br label %1809

; <label>:1809                                    ; preds = %1787, %1651
  %1810 = phi float [ %1806, %1787 ], [ 0.000000e+00, %1651 ]
  %1811 = phi float [ %1807, %1787 ], [ 0.000000e+00, %1651 ]
  %1812 = phi float [ %1808, %1787 ], [ 0.000000e+00, %1651 ]
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = fmul fast float %1814, %1784
  %1816 = fmul fast float %1814, %1785
  %1817 = fmul fast float %1814, %1786
  %1818 = fadd fast float %1815, %240
  %1819 = fadd fast float %1816, %241
  %1820 = fadd fast float %1817, %242
  %1821 = fsub fast float %1818, %256
  %1822 = fsub fast float %1819, %257
  %1823 = fmul fast float %1821, %261
  %1824 = fmul fast float %1822, %262
  %1825 = call float @dx.op.binary.f32(i32 36, float %1823, float %1824)  ; FMin(a,b)
  %1826 = fcmp fast olt float %1825, 0.000000e+00
  %1827 = call float @dx.op.binary.f32(i32 35, float %1823, float %1824)  ; FMax(a,b)
  %1828 = fcmp fast ogt float %1827, 1.000000e+00
  %1829 = or i1 %1826, %1828
  %1830 = fcmp fast olt float %1820, %270
  %1831 = or i1 %1829, %1830
  %1832 = fcmp fast ogt float %1820, %277
  %1833 = or i1 %1831, %1832
  br i1 %1833, label %1848, label %1834, !dx.controlflow.hints !44

; <label>:1834                                    ; preds = %1809
  %1835 = fsub fast float 1.000000e+00, %1824
  %1836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %1823, float %1835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1837 = extractvalue %dx.types.ResRet.f32 %1836, 0
  %1838 = extractvalue %dx.types.ResRet.f32 %1836, 1
  %1839 = extractvalue %dx.types.ResRet.f32 %1836, 2
  %1840 = extractvalue %dx.types.ResRet.f32 %1836, 3
  %1841 = fcmp fast oeq float %1837, 0.000000e+00
  %1842 = fcmp ule float %1820, %1839
  %1843 = fcmp uge float %1820, %1838
  %1844 = or i1 %1843, %1842
  %1845 = or i1 %1841, %1844
  %1846 = zext i1 %1845 to i32
  %1847 = xor i32 %1846, 1
  br label %1848

; <label>:1848                                    ; preds = %1834, %1809
  %1849 = phi float [ %1837, %1834 ], [ %225, %1809 ]
  %1850 = phi float [ %1838, %1834 ], [ %226, %1809 ]
  %1851 = phi float [ %1839, %1834 ], [ %227, %1809 ]
  %1852 = phi float [ %1840, %1834 ], [ %228, %1809 ]
  %1853 = phi i32 [ %1847, %1834 ], [ 0, %1809 ]
  %1854 = icmp eq i32 %1853, 0
  br i1 %383, label %2009, label %1855, !dx.controlflow.hints !49

; <label>:1855                                    ; preds = %1848
  %1856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.i32 %1856, 1
  %1858 = and i32 %1857, 1
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1860, label %2004, !dx.controlflow.hints !50

; <label>:1860                                    ; preds = %1855
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %1863 = extractvalue %dx.types.CBufRet.f32 %1861, 3
  %1864 = fmul fast float %1862, %1818
  %1865 = fmul fast float %1863, %1819
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = fadd fast float %1864, %1867
  %1870 = fadd fast float %1865, %1868
  %1871 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  %1872 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = fmul fast float %1876, %1874
  %1878 = fsub fast float %1869, %1871
  %1879 = fsub fast float %1870, %1872
  %1880 = extractvalue %dx.types.CBufRet.f32 %1861, 0
  %1881 = extractvalue %dx.types.CBufRet.f32 %1861, 1
  %1882 = fmul fast float %1880, %1878
  %1883 = fmul fast float %1881, %1879
  %1884 = fmul fast float %1882, %1882
  %1885 = fmul fast float %1883, %1883
  %1886 = fadd fast float %1884, %1885
  %1887 = call float @dx.op.unary.f32(i32 24, float %1886)  ; Sqrt(value)
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 3
  %1890 = fmul fast float %1889, %1887
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1888, 2
  %1893 = fsub fast float %1892, %1877
  %1894 = fmul fast float %1893, %1891
  %1895 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1896 = fsub fast float %1820, %1877
  %1897 = fsub fast float %1896, %1895
  %1898 = fsub fast float %1897, %1894
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 2
  %1901 = fsub fast float %1898, %1900
  %1902 = fcmp fast olt float %1901, 0.000000e+00
  %1903 = extractvalue %dx.types.CBufRet.i32 %1856, 0
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %1955, label %1905

; <label>:1905                                    ; preds = %1860
  br label %1906

; <label>:1906                                    ; preds = %1944, %1905
  %1907 = phi i32 [ %1950, %1944 ], [ 1, %1905 ]
  %1908 = phi i32 [ %1951, %1944 ], [ 0, %1905 ]
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 1
  %1911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.i32 %1911, 1
  %1913 = and i32 %1912, 8
  %1914 = icmp eq i32 %1913, 0
  %1915 = fcmp fast ogt float %1910, %1898
  %1916 = or i1 %1915, %1914
  %1917 = add i32 %1908, 171
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1917)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.CBufRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.CBufRet.f32 %1918, 2
  br i1 %1916, label %1922, label %1928, !dx.controlflow.hints !51

; <label>:1922                                    ; preds = %1906
  %1923 = fsub fast float %1919, %1818
  %1924 = fsub fast float %1920, %1819
  %1925 = fmul fast float %1923, %1923
  %1926 = fmul fast float %1924, %1924
  %1927 = fadd fast float %1925, %1926
  br label %1944

; <label>:1928                                    ; preds = %1906
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 2
  %1931 = extractvalue %dx.types.CBufRet.f32 %1909, 2
  %1932 = fmul fast float %1931, %1930
  %1933 = fsub fast float %1932, %1910
  %1934 = fdiv fast float %1921, %1933
  %1935 = fsub fast float %1818, %1919
  %1936 = fsub fast float %1819, %1920
  %1937 = fsub fast float %1898, %1910
  %1938 = fmul fast float %1934, %1937
  %1939 = fmul fast float %1935, %1935
  %1940 = fmul fast float %1936, %1936
  %1941 = fadd fast float %1939, %1940
  %1942 = fmul fast float %1938, %1938
  %1943 = fadd fast float %1941, %1942
  br label %1944

; <label>:1944                                    ; preds = %1928, %1922
  %1945 = phi float [ %1927, %1922 ], [ %1943, %1928 ]
  %1946 = call float @dx.op.unary.f32(i32 24, float %1945)  ; Sqrt(value)
  %1947 = fsub float %1921, %1946
  %1948 = fcmp fast olt float %1947, 0.000000e+00
  %1949 = zext i1 %1948 to i32
  %1950 = and i32 %1949, %1907
  %1951 = add i32 %1908, 1
  %1952 = extractvalue %dx.types.CBufRet.i32 %1911, 0
  %1953 = icmp ult i32 %1951, %1952
  br i1 %1953, label %1906, label %1954

; <label>:1954                                    ; preds = %1944
  br label %1955

; <label>:1955                                    ; preds = %1954, %1860
  %1956 = phi i32 [ 1, %1860 ], [ %1950, %1954 ]
  br label %1957

; <label>:1957                                    ; preds = %1957, %1955
  %1958 = phi i32 [ %1994, %1957 ], [ %1956, %1955 ]
  %1959 = phi i32 [ %1995, %1957 ], [ 0, %1955 ]
  %1960 = add nuw nsw i32 %1959, 191
  %1961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1960)  ; CBufferLoadLegacy(handle,regIndex)
  %1962 = extractvalue %dx.types.CBufRet.f32 %1961, 0
  %1963 = extractvalue %dx.types.CBufRet.f32 %1961, 1
  %1964 = extractvalue %dx.types.CBufRet.f32 %1961, 2
  %1965 = add nuw nsw i32 %1959, 195
  %1966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1965)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.CBufRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.CBufRet.f32 %1966, 2
  %1970 = fsub fast float %1818, %1962
  %1971 = fsub fast float %1819, %1963
  %1972 = fsub fast float %1898, %1964
  %1973 = call float @dx.op.unary.f32(i32 6, float %1970)  ; FAbs(value)
  %1974 = call float @dx.op.unary.f32(i32 6, float %1971)  ; FAbs(value)
  %1975 = call float @dx.op.unary.f32(i32 6, float %1972)  ; FAbs(value)
  %1976 = fsub fast float %1973, %1967
  %1977 = fsub fast float %1974, %1968
  %1978 = fsub fast float %1975, %1969
  %1979 = call float @dx.op.binary.f32(i32 35, float %1976, float 0.000000e+00)  ; FMax(a,b)
  %1980 = call float @dx.op.binary.f32(i32 35, float %1977, float 0.000000e+00)  ; FMax(a,b)
  %1981 = call float @dx.op.binary.f32(i32 35, float %1978, float 0.000000e+00)  ; FMax(a,b)
  %1982 = fmul fast float %1979, %1979
  %1983 = fmul fast float %1980, %1980
  %1984 = fadd fast float %1983, %1982
  %1985 = fmul fast float %1981, %1981
  %1986 = fadd fast float %1984, %1985
  %1987 = call float @dx.op.unary.f32(i32 24, float %1986)  ; Sqrt(value)
  %1988 = call float @dx.op.binary.f32(i32 35, float %1977, float %1978)  ; FMax(a,b)
  %1989 = call float @dx.op.binary.f32(i32 35, float %1976, float %1988)  ; FMax(a,b)
  %1990 = call float @dx.op.binary.f32(i32 36, float %1989, float 0.000000e+00)  ; FMin(a,b)
  %1991 = fadd fast float %1990, %1987
  %1992 = fcmp ogt float %1991, -0.000000e+00
  %1993 = zext i1 %1992 to i32
  %1994 = and i32 %1993, %1958
  %1995 = add nuw nsw i32 %1959, 1
  %1996 = icmp eq i32 %1995, 4
  br i1 %1996, label %1997, label %1957

; <label>:1997                                    ; preds = %1957
  %1998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.i32 %1998, 1
  %2000 = lshr i32 %1999, 1
  %2001 = xor i32 %2000, %1994
  %2002 = zext i1 %1902 to i32
  %2003 = and i32 %2001, %2002
  br label %2004

; <label>:2004                                    ; preds = %1997, %1855
  %2005 = phi i32 [ %223, %1855 ], [ %2003, %1997 ]
  %2006 = phi float [ %1820, %1855 ], [ %1898, %1997 ]
  %2007 = icmp ne i32 %2005, 0
  %2008 = zext i1 %2007 to i32
  br label %2009

; <label>:2009                                    ; preds = %2004, %1848
  %2010 = phi i32 [ %2005, %2004 ], [ %223, %1848 ]
  %2011 = phi float [ %2006, %2004 ], [ %224, %1848 ]
  %2012 = phi i32 [ %2008, %2004 ], [ 0, %1848 ]
  br i1 %368, label %2061, label %2013, !dx.controlflow.hints !52

; <label>:2013                                    ; preds = %2009
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 0
  %2016 = fsub fast float -0.000000e+00, %1818
  %2017 = fsub fast float -0.000000e+00, %1819
  %2018 = fsub fast float %2015, %1820
  %2019 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2016, float %2017, float %2018)  ; Dot3(ax,ay,az,bx,by,bz)
  %2020 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1784, float %1785, float %1786)  ; Dot3(ax,ay,az,bx,by,bz)
  %2021 = fdiv fast float 1.000000e+00, %2020
  %2022 = fmul fast float %2021, %2019
  %2023 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2022)  ; FMax(a,b)
  %2024 = fcmp fast olt float %1786, 0.000000e+00
  %2025 = call float @dx.op.binary.f32(i32 36, float %1814, float %2023)  ; FMin(a,b)
  br i1 %2024, label %2027, label %2026, !dx.controlflow.hints !53

; <label>:2026                                    ; preds = %2013
  br label %2027

; <label>:2027                                    ; preds = %2026, %2013
  %2028 = phi float [ 0.000000e+00, %2026 ], [ %2025, %2013 ]
  %2029 = phi float [ %2025, %2026 ], [ %1814, %2013 ]
  %2030 = phi float [ %2025, %2026 ], [ 0.000000e+00, %2013 ]
  %2031 = phi float [ %1814, %2026 ], [ %2025, %2013 ]
  %2032 = fsub fast float %2029, %2028
  %2033 = extractvalue %dx.types.CBufRet.f32 %2014, 1
  %2034 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2033)  ; FMin(a,b)
  %2035 = fsub fast float %1820, %2015
  %2036 = fmul fast float %2034, 0x3FF7154760000000
  %2037 = fmul fast float %2036, %2035
  %2038 = call float @dx.op.unary.f32(i32 21, float %2037)  ; Exp(value)
  %2039 = fmul fast float %1786, 0x3FF7154760000000
  %2040 = fmul fast float %2039, %2031
  %2041 = fmul fast float %2040, %2034
  %2042 = call float @dx.op.unary.f32(i32 21, float %2041)  ; Exp(value)
  %2043 = fmul fast float %2039, %2030
  %2044 = fmul fast float %2043, %2034
  %2045 = call float @dx.op.unary.f32(i32 21, float %2044)  ; Exp(value)
  %2046 = fsub fast float %2042, %2045
  %2047 = fmul fast float %2046, %2038
  %2048 = fmul fast float %2034, %1786
  %2049 = fdiv fast float %2047, %2048
  %2050 = fadd fast float %2032, %2049
  %2051 = call float @dx.op.unary.f32(i32 6, float %1786)  ; FAbs(value)
  %2052 = fcmp fast olt float %2051, 0x3F0FFB4800000000
  %2053 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2035)  ; FMax(a,b)
  %2054 = fmul fast float %2053, 0x3FF7154760000000
  %2055 = fmul fast float %2054, %2033
  %2056 = call float @dx.op.unary.f32(i32 21, float %2055)  ; Exp(value)
  %2057 = fmul fast float %2056, %1814
  %2058 = select i1 %2052, float %2057, float %2050
  %2059 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %2060 = fmul fast float %2058, %2059
  br label %2061

; <label>:2061                                    ; preds = %2027, %2009
  %2062 = phi float [ %2060, %2027 ], [ 0.000000e+00, %2009 ]
  br i1 %1854, label %2188, label %2063, !dx.controlflow.hints !54

; <label>:2063                                    ; preds = %2061
  %2064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.i32 %2064, 0
  %2066 = icmp ne i32 %2065, 0
  %2067 = zext i1 %2066 to i32
  %2068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.i32 %2068, 0
  %2070 = icmp eq i32 %2069, 0
  br i1 %2070, label %2104, label %2071

; <label>:2071                                    ; preds = %2063
  br label %2072

; <label>:2072                                    ; preds = %2099, %2071
  %2073 = phi i32 [ %2100, %2099 ], [ 0, %2071 ]
  %2074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2073, i32 0)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = extractvalue %dx.types.ResRet.f32 %2074, 1
  %2077 = extractvalue %dx.types.ResRet.f32 %2074, 2
  %2078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2073, i32 16)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.ResRet.f32 %2078, 1
  %2081 = extractvalue %dx.types.ResRet.f32 %2078, 2
  %2082 = fsub fast float %2075, %2079
  %2083 = fsub fast float %2076, %2080
  %2084 = fsub fast float %2077, %2081
  %2085 = fadd fast float %2079, %2075
  %2086 = fadd fast float %2080, %2076
  %2087 = fadd fast float %2081, %2077
  %2088 = fcmp fast olt float %1818, %2082
  %2089 = fcmp fast olt float %1819, %2083
  %2090 = fcmp fast olt float %1820, %2084
  %2091 = or i1 %2088, %2089
  %2092 = or i1 %2090, %2091
  %2093 = fcmp fast ogt float %1818, %2085
  %2094 = fcmp fast ogt float %1819, %2086
  %2095 = fcmp fast ogt float %1820, %2087
  %2096 = or i1 %2093, %2094
  %2097 = or i1 %2095, %2096
  %2098 = or i1 %2092, %2097
  br i1 %2098, label %2099, label %2102, !dx.controlflow.hints !55

; <label>:2099                                    ; preds = %2072
  %2100 = add nuw i32 %2073, 1
  %2101 = icmp ult i32 %2100, %2069
  br i1 %2101, label %2072, label %2102

; <label>:2102                                    ; preds = %2099, %2072
  %2103 = phi i32 [ 255, %2099 ], [ %2073, %2072 ]
  br label %2104

; <label>:2104                                    ; preds = %2102, %2063
  %2105 = phi i32 [ 255, %2063 ], [ %2103, %2102 ]
  %2106 = icmp eq i32 %2105, 255
  br i1 %2106, label %2112, label %2107, !dx.controlflow.hints !56

; <label>:2107                                    ; preds = %2104
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2105, i32 156)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = icmp ne i32 %2109, 0
  %2111 = zext i1 %2110 to i32
  br label %2112

; <label>:2112                                    ; preds = %2107, %2104
  %2113 = phi i32 [ %2111, %2107 ], [ %2067, %2104 ]
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2115, label %2184, !dx.controlflow.hints !57

; <label>:2115                                    ; preds = %2112
  %2116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2117 = extractvalue %dx.types.CBufRet.f32 %2116, 3
  %2118 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 2
  %2121 = extractvalue %dx.types.CBufRet.f32 %2119, 3
  br i1 %2106, label %2132, label %2122, !dx.controlflow.hints !58

; <label>:2122                                    ; preds = %2115
  %2123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2105, i32 60)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  %2125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2105, i32 64)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.ResRet.f32 %2125, 1
  %2128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2105, i32 72)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.f32 %2128, 0
  %2130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2105, i32 96)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  br label %2132

; <label>:2132                                    ; preds = %2122, %2115
  %2133 = phi float [ %2124, %2122 ], [ %276, %2115 ]
  %2134 = phi float [ %2129, %2122 ], [ %274, %2115 ]
  %2135 = phi float [ %2131, %2122 ], [ %2118, %2115 ]
  %2136 = phi float [ %2126, %2122 ], [ %2120, %2115 ]
  %2137 = phi float [ %2127, %2122 ], [ %2121, %2115 ]
  %2138 = call float @dx.op.binary.f32(i32 35, float %1849, float 0.000000e+00)  ; FMax(a,b)
  %2139 = call float @dx.op.binary.f32(i32 36, float %2138, float 1.000000e+00)  ; FMin(a,b)
  %2140 = call float @dx.op.unary.f32(i32 24, float %2139)  ; Sqrt(value)
  %2141 = call float @dx.op.binary.f32(i32 35, float %1852, float 0x3F847AE140000000)  ; FMax(a,b)
  %2142 = fsub fast float %1850, %1820
  %2143 = fsub fast float %1820, %1851
  %2144 = call float @dx.op.binary.f32(i32 36, float %2143, float %2142)  ; FMin(a,b)
  %2145 = fdiv fast float %2144, %2141
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fsub fast float %1820, %2134
  %2148 = fdiv fast float %2147, %2133
  %2149 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2150 = fsub fast float 1.000000e+00, %2149
  %2151 = fmul float %2146, %2150
  %2152 = fmul float %2151, %2151
  %2153 = fmul fast float %2140, %2117
  %2154 = fmul fast float %2153, %2152
  %2155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2155, 2
  %2157 = extractvalue %dx.types.CBufRet.f32 %2155, 1
  %2158 = fsub fast float %2154, %2157
  %2159 = fsub fast float %2156, %2157
  %2160 = fdiv fast float %2158, %2159
  %2161 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2162 = fmul fast float %2161, %2135
  %2163 = fcmp fast ogt float %2137, 0.000000e+00
  br i1 %2163, label %2164, label %2184, !dx.controlflow.hints !59

; <label>:2164                                    ; preds = %2132
  %2165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.CBufRet.f32 %2165, 1
  %2168 = extractvalue %dx.types.CBufRet.f32 %2165, 2
  %2169 = fsub fast float %1818, %2166
  %2170 = fsub fast float %1819, %2167
  %2171 = fsub fast float %1820, %2168
  %2172 = fmul fast float %2169, %2169
  %2173 = fmul fast float %2170, %2170
  %2174 = fadd fast float %2172, %2173
  %2175 = fmul fast float %2171, %2171
  %2176 = fadd fast float %2174, %2175
  %2177 = call float @dx.op.unary.f32(i32 24, float %2176)  ; Sqrt(value)
  %2178 = fsub fast float %2177, %2136
  %2179 = fsub fast float %2137, %2136
  %2180 = fdiv fast float %2178, %2179
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2182 = fmul fast float %2181, %2181
  %2183 = fmul fast float %2182, %2162
  br label %2184

; <label>:2184                                    ; preds = %2164, %2132, %2112
  %2185 = phi float [ 0.000000e+00, %2112 ], [ %2183, %2164 ], [ %2162, %2132 ]
  %2186 = fmul fast float %2185, %1814
  %2187 = fadd fast float %2186, %2062
  br label %2188

; <label>:2188                                    ; preds = %2184, %2061
  %2189 = phi float [ %2187, %2184 ], [ %2062, %2061 ]
  %2190 = icmp eq i32 %2012, 0
  br i1 %2190, label %2222, label %2191, !dx.controlflow.hints !60

; <label>:2191                                    ; preds = %2188
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 1
  %2194 = fsub fast float %1814, %2193
  %2195 = extractvalue %dx.types.CBufRet.f32 %2192, 3
  %2196 = fmul fast float %2194, %2195
  %2197 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2202 = fsub fast float %2201, %2011
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2205 = fmul fast float %2202, %2204
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2207 = fmul fast float %2206, %2199
  %2208 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2209 = fsub fast float %1814, %2208
  %2210 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2211 = fmul fast float %2209, %2210
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2213 = fsub fast float 1.000000e+00, %2197
  %2214 = fmul fast float %2212, %2213
  %2215 = fadd fast float %2214, %2197
  %2216 = extractvalue %dx.types.CBufRet.f32 %2192, 0
  %2217 = fsub fast float %2207, %2216
  %2218 = fmul fast float %2217, %2215
  %2219 = fadd fast float %2218, %2216
  %2220 = fmul fast float %2219, %1814
  %2221 = fadd fast float %2220, %2189
  br label %2222

; <label>:2222                                    ; preds = %2191, %2188
  %2223 = phi float [ %2221, %2191 ], [ %2189, %2188 ]
  %2224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2225 = extractvalue %dx.types.CBufRet.f32 %2224, 3
  %2226 = fmul fast float %2223, 0xBFF7154760000000
  %2227 = fmul fast float %2226, %2225
  %2228 = call float @dx.op.unary.f32(i32 21, float %2227)  ; Exp(value)
  %2229 = call float @dx.op.unary.f32(i32 7, float %2228)  ; Saturate(value)
  %2230 = fmul fast float %2229, %1810
  %2231 = fmul fast float %2229, %1811
  %2232 = fmul fast float %2229, %1812
  %2233 = fadd fast float %2230, %1778
  %2234 = fadd fast float %2231, %1779
  %2235 = fadd fast float %2232, %1780
  %2236 = fsub fast float 1.000000e+00, %847
  %2237 = fmul fast float %839, %236
  %2238 = fmul fast float %2237, %2236
  %2239 = fmul fast float %2238, %2233
  %2240 = fmul fast float %840, %236
  %2241 = fmul fast float %2240, %2236
  %2242 = fmul fast float %2241, %2234
  %2243 = fmul fast float %841, %236
  %2244 = fmul fast float %2243, %2236
  %2245 = fmul fast float %2244, %2235
  %2246 = fadd fast float %2239, %237
  %2247 = fadd fast float %2242, %238
  %2248 = fadd fast float %2245, %239
  %2249 = fdiv fast float %823, %570
  %2250 = fadd fast float %570, %243
  %2251 = fmul fast float %243, %243
  %2252 = fmul fast float %2250, %2250
  %2253 = fsub fast float %2251, %2252
  %2254 = fmul fast float %2253, -5.000000e-01
  %2255 = fmul fast float %2254, %2249
  %2256 = fadd fast float %2255, %235
  %2257 = fadd fast float %823, %245
  %2258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.i32 %2258, 0
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2287, label %2261, !dx.controlflow.hints !76

; <label>:2261                                    ; preds = %2222
  %2262 = icmp ne i32 %250, 0
  %2263 = zext i1 %2262 to i32
  %2264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2265 = extractvalue %dx.types.CBufRet.f32 %2264, 2
  %2266 = extractvalue %dx.types.CBufRet.f32 %2264, 0
  %2267 = fsub fast float %2250, %2266
  %2268 = fmul fast float %2267, %2265
  %2269 = call float @dx.op.unary.f32(i32 7, float %2268)  ; Saturate(value)
  %2270 = fadd fast float %2269, -5.000000e-01
  %2271 = fmul fast float %2270, 2.000000e+00
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 2
  %2274 = fcmp fast olt float %2271, %2273
  br i1 %2274, label %2275, label %2287, !dx.controlflow.hints !77

; <label>:2275                                    ; preds = %2261
  %2276 = fmul fast float %2271, %2271
  %2277 = fmul fast float %2236, %236
  %2278 = fmul fast float %2271, %2277
  %2279 = fmul fast float %2276, %2277
  %2280 = fmul fast float %2278, %2276
  %2281 = fmul fast float %2276, %2276
  %2282 = fmul fast float %2281, %2277
  %2283 = fadd fast float %2278, %246
  %2284 = fadd fast float %2279, %247
  %2285 = fadd fast float %2280, %248
  %2286 = fadd fast float %2282, %249
  br label %2287

; <label>:2287                                    ; preds = %2275, %2261, %2222
  %2288 = phi float [ %246, %2222 ], [ %2283, %2275 ], [ %246, %2261 ]
  %2289 = phi float [ %247, %2222 ], [ %2284, %2275 ], [ %247, %2261 ]
  %2290 = phi float [ %248, %2222 ], [ %2285, %2275 ], [ %248, %2261 ]
  %2291 = phi float [ %249, %2222 ], [ %2286, %2275 ], [ %249, %2261 ]
  %2292 = phi i32 [ %250, %2222 ], [ 1, %2275 ], [ %2263, %2261 ]
  %2293 = fmul fast float %847, %236
  br label %2294

; <label>:2294                                    ; preds = %2287, %842
  %2295 = phi float [ %843, %842 ], [ %2250, %2287 ]
  %2296 = phi i32 [ %223, %842 ], [ %2010, %2287 ]
  %2297 = phi float [ %224, %842 ], [ %2011, %2287 ]
  %2298 = phi float [ %225, %842 ], [ %1849, %2287 ]
  %2299 = phi float [ %226, %842 ], [ %1850, %2287 ]
  %2300 = phi float [ %227, %842 ], [ %1851, %2287 ]
  %2301 = phi float [ %228, %842 ], [ %1852, %2287 ]
  %2302 = phi float [ %235, %842 ], [ %2256, %2287 ]
  %2303 = phi float [ %236, %842 ], [ %2293, %2287 ]
  %2304 = phi float [ %237, %842 ], [ %2246, %2287 ]
  %2305 = phi float [ %238, %842 ], [ %2247, %2287 ]
  %2306 = phi float [ %239, %842 ], [ %2248, %2287 ]
  %2307 = phi float [ %245, %842 ], [ %2257, %2287 ]
  %2308 = phi float [ %246, %842 ], [ %2288, %2287 ]
  %2309 = phi float [ %247, %842 ], [ %2289, %2287 ]
  %2310 = phi float [ %248, %842 ], [ %2290, %2287 ]
  %2311 = phi float [ %249, %842 ], [ %2291, %2287 ]
  %2312 = phi i32 [ %250, %842 ], [ %2292, %2287 ]
  %2313 = fmul fast float %570, %109
  %2314 = fmul fast float %570, %110
  %2315 = fmul fast float %570, %111
  %2316 = fadd fast float %2313, %240
  %2317 = fadd fast float %2314, %241
  %2318 = fadd fast float %2315, %242
  %2319 = fcmp fast olt float %2295, %203
  %2320 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %2321 = fcmp fast olt float %2320, %2303
  %2322 = and i1 %2319, %2321
  br i1 %2322, label %222, label %2323

; <label>:2323                                    ; preds = %2294
  br label %2324

; <label>:2324                                    ; preds = %2323, %196
  %2325 = phi float [ 0.000000e+00, %196 ], [ %2302, %2323 ]
  %2326 = phi float [ 1.000000e+00, %196 ], [ %2303, %2323 ]
  %2327 = phi float [ 0.000000e+00, %196 ], [ %2304, %2323 ]
  %2328 = phi float [ 0.000000e+00, %196 ], [ %2305, %2323 ]
  %2329 = phi float [ 0.000000e+00, %196 ], [ %2306, %2323 ]
  %2330 = phi float [ 0.000000e+00, %196 ], [ %2307, %2323 ]
  %2331 = phi float [ 0.000000e+00, %196 ], [ %2308, %2323 ]
  %2332 = phi float [ 0.000000e+00, %196 ], [ %2309, %2323 ]
  %2333 = phi float [ 0.000000e+00, %196 ], [ %2310, %2323 ]
  %2334 = phi float [ 0.000000e+00, %196 ], [ %2311, %2323 ]
  %2335 = phi i32 [ 0, %196 ], [ %2312, %2323 ]
  %2336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.i32 %2336, 0
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2380, label %2339, !dx.controlflow.hints !78

; <label>:2339                                    ; preds = %2324
  %2340 = icmp eq i32 %2335, 0
  br i1 %2340, label %2379, label %2341, !dx.controlflow.hints !79

; <label>:2341                                    ; preds = %2339
  %2342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.i32 %2342, 2
  %2344 = icmp eq i32 %2343, 0
  br i1 %2344, label %2351, label %2345, !dx.controlflow.hints !80

; <label>:2345                                    ; preds = %2341
  %2346 = fsub fast float 1.000000e+00, %2326
  %2347 = fdiv fast float %2331, %2346
  %2348 = fdiv fast float %2332, %2346
  %2349 = fdiv fast float %2333, %2346
  %2350 = fdiv fast float %2334, %2346
  br label %2356

; <label>:2351                                    ; preds = %2341
  %2352 = fadd fast float %2331, %2326
  %2353 = fadd fast float %2332, %2326
  %2354 = fadd fast float %2333, %2326
  %2355 = fadd fast float %2334, %2326
  br label %2356

; <label>:2356                                    ; preds = %2351, %2345
  %2357 = phi float [ %2347, %2345 ], [ %2352, %2351 ]
  %2358 = phi float [ %2348, %2345 ], [ %2353, %2351 ]
  %2359 = phi float [ %2349, %2345 ], [ %2354, %2351 ]
  %2360 = phi float [ %2350, %2345 ], [ %2355, %2351 ]
  %2361 = call float @dx.op.binary.f32(i32 35, float %2357, float -1.000000e+00)  ; FMax(a,b)
  %2362 = call float @dx.op.binary.f32(i32 35, float %2358, float -1.000000e+00)  ; FMax(a,b)
  %2363 = call float @dx.op.binary.f32(i32 35, float %2359, float -1.000000e+00)  ; FMax(a,b)
  %2364 = call float @dx.op.binary.f32(i32 35, float %2360, float -1.000000e+00)  ; FMax(a,b)
  %2365 = call float @dx.op.binary.f32(i32 36, float %2361, float 1.000000e+00)  ; FMin(a,b)
  %2366 = call float @dx.op.binary.f32(i32 36, float %2362, float 1.000000e+00)  ; FMin(a,b)
  %2367 = call float @dx.op.binary.f32(i32 36, float %2363, float 1.000000e+00)  ; FMin(a,b)
  %2368 = call float @dx.op.binary.f32(i32 36, float %2364, float 1.000000e+00)  ; FMin(a,b)
  %2369 = fmul fast float %2365, 1.500000e+00
  %2370 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2367, float %2369)  ; FMad(a,b,c)
  %2371 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2366, float 0.000000e+00)  ; FMad(a,b,c)
  %2372 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2368, float %2371)  ; FMad(a,b,c)
  %2373 = fmul fast float %2365, 0x3FEBB67AE0000000
  %2374 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2367, float %2373)  ; FMad(a,b,c)
  %2375 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2366, float 0.000000e+00)  ; FMad(a,b,c)
  %2376 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2368, float %2375)  ; FMad(a,b,c)
  %2377 = fadd fast float %2370, 5.000000e-01
  %2378 = fadd fast float %2374, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float %2377, float %2372, float %2378, float %2376, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2380

; <label>:2379                                    ; preds = %2339
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2380

; <label>:2380                                    ; preds = %2379, %2356, %2324
  %2381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2382 = extractvalue %dx.types.CBufRet.f32 %2381, 2
  %2383 = fsub fast float %2326, %2382
  %2384 = fdiv fast float %2383, %2382
  %2385 = call float @dx.op.unary.f32(i32 7, float %2384)  ; Saturate(value)
  %2386 = fmul fast float %2385, 2.000000e+00
  %2387 = fsub fast float 3.000000e+00, %2386
  %2388 = fmul fast float %2385, %2385
  %2389 = fmul fast float %2388, %2326
  %2390 = fmul fast float %2389, %2387
  %2391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2392 = extractvalue %dx.types.CBufRet.f32 %2391, 0
  %2393 = extractvalue %dx.types.CBufRet.f32 %2391, 1
  %2394 = extractvalue %dx.types.CBufRet.f32 %2391, 2
  %2395 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %2392, float %2393, float %2394)  ; Dot3(ax,ay,az,bx,by,bz)
  %2396 = fmul fast float %2395, %2325
  %2397 = fcmp fast ogt float %2330, 0.000000e+00
  %2398 = fdiv fast float 1.000000e+00, %2330
  %2399 = fmul fast float %2396, %2398
  %2400 = select i1 %2397, float %2399, float %120
  %2401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.CBufRet.f32 %2401, 1
  %2404 = extractvalue %dx.types.CBufRet.f32 %2401, 2
  %2405 = fmul fast float %2402, %73
  %2406 = fmul fast float %2403, %73
  %2407 = fmul fast float %2404, %73
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.CBufRet.f32 %2408, 1
  %2411 = extractvalue %dx.types.CBufRet.f32 %2408, 2
  %2412 = fmul fast float %2409, %74
  %2413 = fmul fast float %2410, %74
  %2414 = fmul fast float %2411, %74
  %2415 = fadd fast float %2412, %2405
  %2416 = fadd fast float %2413, %2406
  %2417 = fadd fast float %2414, %2407
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2421 = extractvalue %dx.types.CBufRet.f32 %2418, 2
  %2422 = fadd fast float %2415, %2419
  %2423 = fadd fast float %2416, %2420
  %2424 = fadd fast float %2417, %2421
  %2425 = fmul fast float %2422, %2400
  %2426 = fmul fast float %2423, %2400
  %2427 = fmul fast float %2424, %2400
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2430 = extractvalue %dx.types.CBufRet.f32 %2428, 1
  %2431 = extractvalue %dx.types.CBufRet.f32 %2428, 2
  %2432 = extractvalue %dx.types.CBufRet.f32 %2428, 3
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2435 = extractvalue %dx.types.CBufRet.f32 %2433, 1
  %2436 = extractvalue %dx.types.CBufRet.f32 %2433, 2
  %2437 = extractvalue %dx.types.CBufRet.f32 %2433, 3
  %2438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2439 = extractvalue %dx.types.CBufRet.f32 %2438, 0
  %2440 = extractvalue %dx.types.CBufRet.f32 %2438, 1
  %2441 = extractvalue %dx.types.CBufRet.f32 %2438, 2
  %2442 = extractvalue %dx.types.CBufRet.f32 %2438, 3
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.CBufRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.CBufRet.f32 %2443, 2
  %2447 = extractvalue %dx.types.CBufRet.f32 %2443, 3
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 3
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 3
  %2452 = extractvalue %dx.types.CBufRet.f32 %2450, 0
  %2453 = extractvalue %dx.types.CBufRet.f32 %2450, 1
  %2454 = extractvalue %dx.types.CBufRet.f32 %2450, 2
  %2455 = fcmp fast olt float %2454, -5.000000e-01
  %2456 = call float @dx.op.dot3.f32(i32 55, float %2425, float %2426, float %2427, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %2457 = call float @dx.op.unary.f32(i32 25, float %2456)  ; Rsqrt(value)
  %2458 = fmul fast float %2457, %2456
  %2459 = fmul fast float %2457, %2425
  %2460 = fmul fast float %2457, %2426
  %2461 = fmul fast float %2457, %2427
  %2462 = fadd fast float %2458, %2432
  %2463 = call float @dx.op.dot3.f32(i32 55, float %2459, float %2460, float %2461, float %2429, float %2430, float %2431)  ; Dot3(ax,ay,az,bx,by,bz)
  %2464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.i32 %2464, 1
  %2466 = and i32 %2465, 1
  %2467 = icmp ne i32 %2466, 0
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 2
  %2470 = fcmp fast ogt float %2469, 0.000000e+00
  %2471 = and i1 %2467, %2470
  br i1 %2471, label %2472, label %2878, !dx.controlflow.hints !81

; <label>:2472                                    ; preds = %2380
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 3
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 2
  %2477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.f32 %2477, 2
  %2479 = fsub fast float %2476, %2478
  %2480 = and i32 %2465, 2
  %2481 = extractvalue %dx.types.CBufRet.i32 %2464, 0
  %2482 = call i32 @dx.op.binary.i32(i32 40, i32 %2481, i32 3)  ; UMin(a,b)
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.CBufRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.CBufRet.f32 %2477, 0
  %2487 = extractvalue %dx.types.CBufRet.f32 %2477, 1
  %2488 = fsub fast float %2484, %2486
  %2489 = fsub fast float %2485, %2487
  %2490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2491 = extractvalue %dx.types.CBufRet.f32 %2490, 0
  %2492 = fcmp fast ogt float %2491, 0.000000e+00
  %2493 = fsub fast float -0.000000e+00, %2488
  %2494 = fsub fast float -0.000000e+00, %2489
  %2495 = call float @dx.op.dot2.f32(i32 54, float %2459, float %2460, float %2459, float %2460)  ; Dot2(ax,ay,bx,by)
  %2496 = call float @dx.op.dot2.f32(i32 54, float %2459, float %2460, float %2493, float %2494)  ; Dot2(ax,ay,bx,by)
  %2497 = fmul fast float %2496, 2.000000e+00
  %2498 = call float @dx.op.dot2.f32(i32 54, float %2493, float %2494, float %2493, float %2494)  ; Dot2(ax,ay,bx,by)
  %2499 = fmul fast float %2491, %2491
  %2500 = fsub fast float %2498, %2499
  %2501 = fmul fast float %2497, %2497
  %2502 = fmul fast float %2495, 4.000000e+00
  %2503 = fmul fast float %2502, %2500
  %2504 = fsub fast float %2501, %2503
  %2505 = fcmp fast ogt float %2504, 0.000000e+00
  br i1 %2505, label %2506, label %2521, !dx.controlflow.hints !82

; <label>:2506                                    ; preds = %2472
  %2507 = fcmp fast ogt float %2497, 0.000000e+00
  %2508 = call float @dx.op.unary.f32(i32 24, float %2504)  ; Sqrt(value)
  %2509 = fsub fast float -0.000000e+00, %2508
  %2510 = select i1 %2507, float %2508, float %2509
  %2511 = fadd fast float %2510, %2497
  %2512 = fmul float %2511, -5.000000e-01
  %2513 = fdiv fast float %2512, %2495
  %2514 = call float @dx.op.binary.f32(i32 35, float %2513, float 0.000000e+00)  ; FMax(a,b)
  %2515 = call float @dx.op.binary.f32(i32 36, float %2458, float %2514)  ; FMin(a,b)
  %2516 = fdiv fast float %2500, %2512
  %2517 = call float @dx.op.binary.f32(i32 35, float %2516, float 0.000000e+00)  ; FMax(a,b)
  %2518 = call float @dx.op.binary.f32(i32 36, float %2458, float %2517)  ; FMin(a,b)
  %2519 = call float @dx.op.binary.f32(i32 36, float %2515, float %2518)  ; FMin(a,b)
  %2520 = call float @dx.op.binary.f32(i32 35, float %2515, float %2518)  ; FMax(a,b)
  br label %2521

; <label>:2521                                    ; preds = %2506, %2472
  %2522 = phi float [ %2520, %2506 ], [ -1.000000e+00, %2472 ]
  %2523 = phi float [ %2519, %2506 ], [ -1.000000e+00, %2472 ]
  %2524 = phi i1 [ true, %2506 ], [ false, %2472 ]
  %2525 = and i1 %2492, %2524
  br i1 %2525, label %2526, label %2528, !dx.controlflow.hints !83

; <label>:2526                                    ; preds = %2521
  %2527 = fcmp fast oeq float %2523, %2522
  br i1 %2527, label %2831, label %2529, !dx.controlflow.hints !84

; <label>:2528                                    ; preds = %2521
  br i1 %2492, label %2831, label %2529, !dx.controlflow.hints !85

; <label>:2529                                    ; preds = %2528, %2526
  %2530 = phi float [ %2458, %2528 ], [ %2522, %2526 ]
  %2531 = phi float [ 0.000000e+00, %2528 ], [ %2523, %2526 ]
  %2532 = icmp ne i32 %2480, 0
  %2533 = fmul fast float %2530, %2461
  %2534 = fadd fast float %2533, %2474
  %2535 = fmul fast float %2534, %2530
  %2536 = select i1 %2532, float 0.000000e+00, float %2535
  %2537 = fcmp fast oeq float %2461, 0.000000e+00
  %2538 = fdiv fast float %2479, %2461
  %2539 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2538)  ; FMax(a,b)
  %2540 = select i1 %2537, float %2530, float %2539
  %2541 = call float @dx.op.binary.f32(i32 36, float %2530, float %2540)  ; FMin(a,b)
  %2542 = fcmp fast ogt float %2461, 0.000000e+00
  %2543 = fcmp fast olt float %2479, 0.000000e+00
  br i1 %2542, label %2544, label %2601, !dx.controlflow.hints !86

; <label>:2544                                    ; preds = %2529
  %2545 = icmp eq i32 %2480, 0
  br i1 %2543, label %2546, label %2590, !dx.controlflow.hints !87

; <label>:2546                                    ; preds = %2544
  %2547 = select i1 %2545, float %2530, float 0.000000e+00
  %2548 = fsub fast float -0.000000e+00, %2547
  %2549 = call float @dx.op.unary.f32(i32 6, float %2548)  ; FAbs(value)
  %2550 = fmul fast float %2547, %2461
  %2551 = fadd fast float %2550, %2474
  %2552 = fmul fast float %2549, %2551
  %2553 = fsub fast float %2536, %2552
  %2554 = fsub fast float %2530, %2549
  %2555 = select i1 %2545, float %2554, float 0.000000e+00
  %2556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.f32 %2556, 0
  %2558 = extractvalue %dx.types.CBufRet.f32 %2556, 1
  %2559 = extractvalue %dx.types.CBufRet.f32 %2556, 2
  %2560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2561 = extractvalue %dx.types.CBufRet.f32 %2560, 0
  %2562 = extractvalue %dx.types.CBufRet.f32 %2560, 1
  %2563 = extractvalue %dx.types.CBufRet.f32 %2560, 2
  %2564 = extractvalue %dx.types.CBufRet.f32 %2560, 3
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 3
  %2567 = call float @dx.op.binary.f32(i32 36, float %2553, float %2566)  ; FMin(a,b)
  %2568 = fmul fast float %2564, %2555
  %2569 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2570 = fsub fast float %2561, %2557
  %2571 = fsub fast float %2562, %2558
  %2572 = fsub fast float %2563, %2559
  %2573 = fmul fast float %2569, %2570
  %2574 = fmul fast float %2569, %2571
  %2575 = fmul fast float %2569, %2572
  %2576 = fadd fast float %2573, %2557
  %2577 = fadd fast float %2574, %2558
  %2578 = fadd fast float %2575, %2559
  %2579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2580 = extractvalue %dx.types.CBufRet.f32 %2579, 0
  %2581 = extractvalue %dx.types.CBufRet.f32 %2579, 1
  %2582 = fadd fast float %2581, %2580
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2579, 2
  %2585 = extractvalue %dx.types.CBufRet.f32 %2579, 3
  %2586 = fadd fast float %2585, %2584
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  %2588 = fmul fast float %2583, %2567
  %2589 = fmul fast float %2588, %2587
  br label %2831

; <label>:2590                                    ; preds = %2544
  br i1 %2545, label %2591, label %2612, !dx.controlflow.hints !88

; <label>:2591                                    ; preds = %2590
  %2592 = call float @dx.op.binary.f32(i32 36, float %2541, float %2531)  ; FMin(a,b)
  %2593 = fsub fast float %2541, %2592
  %2594 = fsub fast float %2593, %2530
  %2595 = call float @dx.op.unary.f32(i32 6, float %2594)  ; FAbs(value)
  %2596 = fadd fast float %2593, %2530
  %2597 = fmul fast float %2596, %2461
  %2598 = fadd fast float %2597, %2474
  %2599 = fmul fast float %2598, %2595
  %2600 = fsub fast float %2536, %2599
  br label %2612

; <label>:2601                                    ; preds = %2529
  br i1 %2543, label %2602, label %2612, !dx.controlflow.hints !89

; <label>:2602                                    ; preds = %2601
  %2603 = call float @dx.op.binary.f32(i32 35, float %2531, float %2541)  ; FMax(a,b)
  %2604 = icmp eq i32 %2480, 0
  %2605 = select i1 %2604, float %2541, float 0.000000e+00
  %2606 = fsub fast float -0.000000e+00, %2605
  %2607 = call float @dx.op.unary.f32(i32 6, float %2606)  ; FAbs(value)
  %2608 = fmul fast float %2605, %2461
  %2609 = fadd fast float %2608, %2474
  %2610 = fmul fast float %2607, %2609
  %2611 = fsub fast float %2536, %2610
  br label %2612

; <label>:2612                                    ; preds = %2602, %2601, %2591, %2590
  %2613 = phi float [ %2531, %2590 ], [ %2531, %2591 ], [ %2603, %2602 ], [ %2531, %2601 ]
  %2614 = phi float [ 0.000000e+00, %2590 ], [ %2595, %2591 ], [ %2607, %2602 ], [ 0.000000e+00, %2601 ]
  %2615 = phi float [ %2536, %2590 ], [ %2600, %2591 ], [ %2611, %2602 ], [ %2536, %2601 ]
  %2616 = phi float [ %2541, %2590 ], [ %2541, %2591 ], [ %2530, %2602 ], [ %2530, %2601 ]
  %2617 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %2617, align 4, !tbaa !90, !noalias !94
  %2618 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %2618, align 4, !tbaa !90, !noalias !94
  %2619 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %2619, align 4, !tbaa !90, !noalias !94
  %2620 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %2620, align 4, !tbaa !90, !noalias !94
  %2621 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %2621, align 4, !tbaa !90, !noalias !94
  %2622 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %2622, align 4, !tbaa !90, !noalias !94
  %2623 = icmp sgt i32 %2482, 0
  br i1 %2623, label %2624, label %2685

; <label>:2624                                    ; preds = %2612
  br label %2625

; <label>:2625                                    ; preds = %2674, %2624
  %2626 = phi i32 [ %2675, %2674 ], [ 0, %2624 ]
  %2627 = phi i32 [ %2676, %2674 ], [ 0, %2624 ]
  %2628 = add nuw i32 %2627, 171
  %2629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %2628)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.CBufRet.f32 %2629, 1
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2635 = fsub fast float %2630, %2633
  %2636 = fsub fast float %2631, %2634
  %2637 = extractvalue %dx.types.CBufRet.f32 %2629, 2
  %2638 = fsub fast float -0.000000e+00, %2635
  %2639 = fsub fast float -0.000000e+00, %2636
  %2640 = call float @dx.op.dot2.f32(i32 54, float %2459, float %2460, float %2638, float %2639)  ; Dot2(ax,ay,bx,by)
  %2641 = fmul fast float %2640, 2.000000e+00
  %2642 = call float @dx.op.dot2.f32(i32 54, float %2638, float %2639, float %2638, float %2639)  ; Dot2(ax,ay,bx,by)
  %2643 = fmul fast float %2637, %2637
  %2644 = fsub fast float %2642, %2643
  %2645 = fmul fast float %2641, %2641
  %2646 = fmul fast float %2502, %2644
  %2647 = fsub fast float %2645, %2646
  %2648 = fcmp fast ogt float %2647, 0.000000e+00
  br i1 %2648, label %2649, label %2664, !dx.controlflow.hints !82

; <label>:2649                                    ; preds = %2625
  %2650 = fcmp fast ogt float %2641, 0.000000e+00
  %2651 = call float @dx.op.unary.f32(i32 24, float %2647)  ; Sqrt(value)
  %2652 = fsub fast float -0.000000e+00, %2651
  %2653 = select i1 %2650, float %2651, float %2652
  %2654 = fadd fast float %2653, %2641
  %2655 = fmul float %2654, -5.000000e-01
  %2656 = fdiv fast float %2655, %2495
  %2657 = call float @dx.op.binary.f32(i32 35, float %2656, float 0.000000e+00)  ; FMax(a,b)
  %2658 = call float @dx.op.binary.f32(i32 36, float %2530, float %2657)  ; FMin(a,b)
  %2659 = fdiv fast float %2644, %2655
  %2660 = call float @dx.op.binary.f32(i32 35, float %2659, float 0.000000e+00)  ; FMax(a,b)
  %2661 = call float @dx.op.binary.f32(i32 36, float %2530, float %2660)  ; FMin(a,b)
  %2662 = call float @dx.op.binary.f32(i32 36, float %2658, float %2661)  ; FMin(a,b)
  %2663 = call float @dx.op.binary.f32(i32 35, float %2658, float %2661)  ; FMax(a,b)
  br label %2664

; <label>:2664                                    ; preds = %2649, %2625
  %2665 = phi float [ %2663, %2649 ], [ -1.000000e+00, %2625 ]
  %2666 = phi float [ %2662, %2649 ], [ -1.000000e+00, %2625 ]
  %2667 = phi i1 [ true, %2649 ], [ false, %2625 ]
  br i1 %2667, label %2668, label %2674, !dx.controlflow.hints !105

; <label>:2668                                    ; preds = %2664
  %2669 = call float @dx.op.binary.f32(i32 35, float %2613, float %2666)  ; FMax(a,b)
  %2670 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2627
  store float %2669, float* %2670, align 4, !tbaa !90, !noalias !94
  %2671 = call float @dx.op.binary.f32(i32 35, float %2613, float %2665)  ; FMax(a,b)
  %2672 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2627
  store float %2671, float* %2672, align 4, !tbaa !90, !noalias !94
  %2673 = add nsw i32 %2626, 1
  br label %2674

; <label>:2674                                    ; preds = %2668, %2664
  %2675 = phi i32 [ %2673, %2668 ], [ %2626, %2664 ]
  %2676 = add nuw nsw i32 %2627, 1
  %2677 = icmp eq i32 %2676, %2482
  br i1 %2677, label %2678, label %2625

; <label>:2678                                    ; preds = %2674
  %2679 = load float, float* %2619, align 4, !tbaa !90, !alias.scope !106, !noalias !109
  %2680 = load float, float* %2618, align 4, !tbaa !90, !alias.scope !112, !noalias !113
  %2681 = load float, float* %2617, align 4, !tbaa !90, !alias.scope !114, !noalias !115
  %2682 = load float, float* %2622, align 4, !tbaa !90, !alias.scope !116, !noalias !119
  %2683 = load float, float* %2621, align 4, !tbaa !90, !alias.scope !122, !noalias !123
  %2684 = load float, float* %2620, align 4, !tbaa !90, !alias.scope !124, !noalias !125
  br label %2685

; <label>:2685                                    ; preds = %2678, %2612
  %2686 = phi float [ -1.000000e+00, %2612 ], [ %2684, %2678 ]
  %2687 = phi float [ -1.000000e+00, %2612 ], [ %2683, %2678 ]
  %2688 = phi float [ -1.000000e+00, %2612 ], [ %2682, %2678 ]
  %2689 = phi float [ -1.000000e+00, %2612 ], [ %2681, %2678 ]
  %2690 = phi float [ -1.000000e+00, %2612 ], [ %2680, %2678 ]
  %2691 = phi float [ -1.000000e+00, %2612 ], [ %2679, %2678 ]
  %2692 = phi i32 [ 0, %2612 ], [ %2675, %2678 ]
  %2693 = call float @dx.op.binary.f32(i32 36, float %2690, float %2691)  ; FMin(a,b)
  %2694 = call float @dx.op.binary.f32(i32 36, float %2689, float %2693)  ; FMin(a,b)
  %2695 = call float @dx.op.binary.f32(i32 35, float %2689, float %2690)  ; FMax(a,b)
  %2696 = call float @dx.op.binary.f32(i32 36, float %2695, float %2691)  ; FMin(a,b)
  %2697 = call float @dx.op.binary.f32(i32 36, float %2689, float %2690)  ; FMin(a,b)
  %2698 = call float @dx.op.binary.f32(i32 35, float %2697, float %2696)  ; FMax(a,b)
  %2699 = call float @dx.op.binary.f32(i32 35, float %2690, float %2691)  ; FMax(a,b)
  %2700 = call float @dx.op.binary.f32(i32 35, float %2689, float %2699)  ; FMax(a,b)
  store float %2694, float* %2617, align 4, !tbaa !90, !alias.scope !114, !noalias !115
  store float %2698, float* %2618, align 4, !tbaa !90, !alias.scope !112, !noalias !113
  store float %2700, float* %2619, align 4, !tbaa !90, !alias.scope !106, !noalias !109
  %2701 = call float @dx.op.binary.f32(i32 36, float %2687, float %2688)  ; FMin(a,b)
  %2702 = call float @dx.op.binary.f32(i32 36, float %2686, float %2701)  ; FMin(a,b)
  %2703 = call float @dx.op.binary.f32(i32 35, float %2686, float %2687)  ; FMax(a,b)
  %2704 = call float @dx.op.binary.f32(i32 36, float %2703, float %2688)  ; FMin(a,b)
  %2705 = call float @dx.op.binary.f32(i32 36, float %2686, float %2687)  ; FMin(a,b)
  %2706 = call float @dx.op.binary.f32(i32 35, float %2705, float %2704)  ; FMax(a,b)
  %2707 = call float @dx.op.binary.f32(i32 35, float %2687, float %2688)  ; FMax(a,b)
  %2708 = call float @dx.op.binary.f32(i32 35, float %2686, float %2707)  ; FMax(a,b)
  store float %2702, float* %2620, align 4, !tbaa !90, !alias.scope !124, !noalias !125
  store float %2706, float* %2621, align 4, !tbaa !90, !alias.scope !122, !noalias !123
  store float %2708, float* %2622, align 4, !tbaa !90, !alias.scope !116, !noalias !119
  %2709 = sub nsw i32 3, %2692
  %2710 = icmp sgt i32 %2709, 2
  br i1 %2710, label %2711, label %2749, !dx.controlflow.hints !126

; <label>:2711                                    ; preds = %2685
  %2712 = icmp eq i32 %2480, 0
  %2713 = fsub fast float %2530, %2614
  %2714 = select i1 %2712, float %2713, float %2614
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.CBufRet.f32 %2719, 1
  %2722 = extractvalue %dx.types.CBufRet.f32 %2719, 2
  %2723 = extractvalue %dx.types.CBufRet.f32 %2719, 3
  %2724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2725 = extractvalue %dx.types.CBufRet.f32 %2724, 3
  %2726 = call float @dx.op.binary.f32(i32 36, float %2615, float %2725)  ; FMin(a,b)
  %2727 = fmul fast float %2723, %2714
  %2728 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2729 = fsub fast float %2720, %2716
  %2730 = fsub fast float %2721, %2717
  %2731 = fsub fast float %2722, %2718
  %2732 = fmul fast float %2728, %2729
  %2733 = fmul fast float %2728, %2730
  %2734 = fmul fast float %2728, %2731
  %2735 = fadd fast float %2732, %2716
  %2736 = fadd fast float %2733, %2717
  %2737 = fadd fast float %2734, %2718
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.CBufRet.f32 %2738, 1
  %2741 = fadd fast float %2740, %2739
  %2742 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2738, 2
  %2744 = extractvalue %dx.types.CBufRet.f32 %2738, 3
  %2745 = fadd fast float %2744, %2743
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = fmul fast float %2742, %2726
  %2748 = fmul fast float %2747, %2746
  br label %2831

; <label>:2749                                    ; preds = %2685
  %2750 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2709
  %2751 = load float, float* %2750, align 4, !tbaa !90, !noalias !94
  %2752 = fcmp fast olt float %2751, %2616
  %2753 = icmp sgt i32 %2692, 0
  %2754 = and i1 %2753, %2752
  br i1 %2754, label %2755, label %2792

; <label>:2755                                    ; preds = %2749
  br label %2756

; <label>:2756                                    ; preds = %2785, %2755
  %2757 = phi float [ %2786, %2785 ], [ %2614, %2755 ]
  %2758 = phi float [ %2787, %2785 ], [ %2615, %2755 ]
  %2759 = phi float [ %2767, %2785 ], [ %2751, %2755 ]
  %2760 = phi i32 [ %2764, %2785 ], [ %2709, %2755 ]
  %2761 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2760
  %2762 = load float, float* %2761, align 4, !tbaa !90, !noalias !94
  %2763 = icmp slt i32 %2760, 2
  %2764 = add nsw i32 %2760, 1
  %2765 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2764
  %2766 = load float, float* %2765, align 4, !tbaa !90, !noalias !94
  %2767 = select i1 %2763, float %2766, float %2530
  %2768 = call float @dx.op.binary.f32(i32 36, float %2767, float %2762)  ; FMin(a,b)
  %2769 = call float @dx.op.binary.f32(i32 36, float %2616, float %2768)  ; FMin(a,b)
  %2770 = icmp eq i32 %2480, 0
  %2771 = fadd fast float %2769, %2759
  %2772 = fmul fast float %2771, %2461
  %2773 = fadd fast float %2772, %2474
  br i1 %2770, label %2779, label %2774, !dx.controlflow.hints !127

; <label>:2774                                    ; preds = %2756
  %2775 = fsub fast float %2769, %2759
  %2776 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2775)  ; FMax(a,b)
  %2777 = fmul fast float %2776, %2773
  %2778 = fadd fast float %2777, %2758
  br label %2785

; <label>:2779                                    ; preds = %2756
  %2780 = fsub fast float %2759, %2769
  %2781 = call float @dx.op.unary.f32(i32 6, float %2780)  ; FAbs(value)
  %2782 = fadd fast float %2781, %2757
  %2783 = fmul fast float %2781, %2773
  %2784 = fsub fast float %2758, %2783
  br label %2785

; <label>:2785                                    ; preds = %2779, %2774
  %2786 = phi float [ %2776, %2774 ], [ %2782, %2779 ]
  %2787 = phi float [ %2778, %2774 ], [ %2784, %2779 ]
  %2788 = fcmp fast olt float %2767, %2616
  %2789 = icmp slt i32 %2764, 3
  %2790 = and i1 %2789, %2788
  br i1 %2790, label %2756, label %2791

; <label>:2791                                    ; preds = %2785
  br label %2792

; <label>:2792                                    ; preds = %2791, %2749
  %2793 = phi float [ %2614, %2749 ], [ %2786, %2791 ]
  %2794 = phi float [ %2615, %2749 ], [ %2787, %2791 ]
  %2795 = fsub fast float %2530, %2793
  %2796 = select i1 %2532, float %2793, float %2795
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 0
  %2799 = extractvalue %dx.types.CBufRet.f32 %2797, 1
  %2800 = extractvalue %dx.types.CBufRet.f32 %2797, 2
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %2804 = extractvalue %dx.types.CBufRet.f32 %2801, 2
  %2805 = extractvalue %dx.types.CBufRet.f32 %2801, 3
  %2806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2807 = extractvalue %dx.types.CBufRet.f32 %2806, 3
  %2808 = call float @dx.op.binary.f32(i32 36, float %2794, float %2807)  ; FMin(a,b)
  %2809 = fmul fast float %2805, %2796
  %2810 = call float @dx.op.unary.f32(i32 7, float %2809)  ; Saturate(value)
  %2811 = fsub fast float %2802, %2798
  %2812 = fsub fast float %2803, %2799
  %2813 = fsub fast float %2804, %2800
  %2814 = fmul fast float %2810, %2811
  %2815 = fmul fast float %2810, %2812
  %2816 = fmul fast float %2810, %2813
  %2817 = fadd fast float %2814, %2798
  %2818 = fadd fast float %2815, %2799
  %2819 = fadd fast float %2816, %2800
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 0
  %2822 = extractvalue %dx.types.CBufRet.f32 %2820, 1
  %2823 = fadd fast float %2822, %2821
  %2824 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2820, 2
  %2826 = extractvalue %dx.types.CBufRet.f32 %2820, 3
  %2827 = fadd fast float %2826, %2825
  %2828 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2829 = fmul fast float %2824, %2808
  %2830 = fmul fast float %2829, %2828
  br label %2831

; <label>:2831                                    ; preds = %2792, %2711, %2546, %2528, %2526
  %2832 = phi float [ %2555, %2546 ], [ %2714, %2711 ], [ %2796, %2792 ], [ 0.000000e+00, %2526 ], [ 0.000000e+00, %2528 ]
  %2833 = phi float [ %2589, %2546 ], [ %2748, %2711 ], [ %2830, %2792 ], [ 0.000000e+00, %2526 ], [ 0.000000e+00, %2528 ]
  %2834 = phi float [ %2576, %2546 ], [ %2735, %2711 ], [ %2817, %2792 ], [ 0.000000e+00, %2526 ], [ 0.000000e+00, %2528 ]
  %2835 = phi float [ %2577, %2546 ], [ %2736, %2711 ], [ %2818, %2792 ], [ 0.000000e+00, %2526 ], [ 0.000000e+00, %2528 ]
  %2836 = phi float [ %2578, %2546 ], [ %2737, %2711 ], [ %2819, %2792 ], [ 0.000000e+00, %2526 ], [ 0.000000e+00, %2528 ]
  %2837 = fmul fast float %2469, %2833
  %2838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2838, 2
  %2840 = fsub fast float %2476, %2839
  %2841 = fcmp fast olt float %2837, -2.000000e+01
  %2842 = call float @dx.op.unary.f32(i32 21, float %2837)  ; Exp(value)
  %2843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.f32 %2843, 2
  %2845 = extractvalue %dx.types.CBufRet.f32 %2843, 3
  %2846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2847 = extractvalue %dx.types.CBufRet.f32 %2846, 2
  %2848 = fmul fast float %2845, %2840
  %2849 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2850 = fsub fast float 1.000000e+00, %2849
  %2851 = fmul fast float %2461, 5.000000e-01
  %2852 = fadd fast float %2851, 5.000000e-01
  %2853 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %2854 = fsub fast float 1.000000e+00, %2853
  %2855 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2850)  ; FMax(a,b)
  %2856 = fdiv fast float %2854, %2855
  %2857 = fsub fast float %2840, %2427
  %2858 = call float @dx.op.unary.f32(i32 6, float %2857)  ; FAbs(value)
  %2859 = fmul fast float %2858, %2844
  %2860 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2861 = fsub fast float 1.000000e+00, %2859
  %2862 = fmul fast float %2861, %2860
  %2863 = fadd fast float %2862, %2859
  %2864 = fmul fast float %2847, %2840
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = fsub fast float 1.000000e+00, %2863
  %2867 = fmul fast float %2866, %2865
  %2868 = fadd fast float %2867, %2863
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2870 = fadd fast float %2842, -1.000000e+00
  %2871 = select i1 %2841, float -1.000000e+00, float %2870
  %2872 = fmul fast float %2869, %2871
  %2873 = fadd fast float %2872, 1.000000e+00
  %2874 = fsub fast float -0.000000e+00, %2872
  %2875 = fmul fast float %2834, %2874
  %2876 = fmul fast float %2835, %2874
  %2877 = fmul fast float %2836, %2874
  br label %2878

; <label>:2878                                    ; preds = %2831, %2380
  %2879 = phi float [ %2832, %2831 ], [ 0.000000e+00, %2380 ]
  %2880 = phi float [ %2873, %2831 ], [ 1.000000e+00, %2380 ]
  %2881 = phi float [ %2875, %2831 ], [ 0.000000e+00, %2380 ]
  %2882 = phi float [ %2876, %2831 ], [ 0.000000e+00, %2380 ]
  %2883 = phi float [ %2877, %2831 ], [ 0.000000e+00, %2380 ]
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 1
  %2886 = fsub fast float 1.000000e+00, %2880
  %2887 = fmul fast float %2886, %2462
  %2888 = fmul fast float %2887, %2885
  %2889 = fsub fast float %2462, %2888
  br i1 %2455, label %2890, label %2919, !dx.controlflow.hints !128

; <label>:2890                                    ; preds = %2878
  %2891 = fmul fast float %2463, %2452
  %2892 = fadd fast float %2891, %2453
  %2893 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2894 = fmul fast float %2434, %2889
  %2895 = fsub fast float -0.000000e+00, %2894
  %2896 = fmul fast float %2435, %2889
  %2897 = fsub fast float -0.000000e+00, %2896
  %2898 = call float @dx.op.unary.f32(i32 21, float %2895)  ; Exp(value)
  %2899 = call float @dx.op.unary.f32(i32 21, float %2897)  ; Exp(value)
  %2900 = call float @dx.op.binary.f32(i32 35, float %2442, float %2898)  ; FMax(a,b)
  %2901 = call float @dx.op.binary.f32(i32 35, float %2442, float %2899)  ; FMax(a,b)
  %2902 = fsub fast float %2901, %2900
  %2903 = fmul fast float %2902, %2893
  %2904 = fadd fast float %2903, %2900
  %2905 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2906 = fsub fast float %2439, %2444
  %2907 = fsub fast float %2440, %2445
  %2908 = fsub fast float %2441, %2446
  %2909 = fmul fast float %2893, %2906
  %2910 = fmul fast float %2893, %2907
  %2911 = fmul fast float %2893, %2908
  %2912 = fadd fast float %2909, %2444
  %2913 = fadd fast float %2910, %2445
  %2914 = fadd fast float %2911, %2446
  %2915 = fsub fast float 1.000000e+00, %2905
  %2916 = fmul fast float %2915, %2912
  %2917 = fmul fast float %2915, %2913
  %2918 = fmul fast float %2915, %2914
  br label %2978

; <label>:2919                                    ; preds = %2878
  %2920 = fmul fast float %2889, %2451
  %2921 = call float @dx.op.unary.f32(i32 7, float %2920)  ; Saturate(value)
  %2922 = fsub fast float 2.000000e+00, %2921
  %2923 = fmul fast float %2921, 9.921875e-01
  %2924 = fmul fast float %2923, %2922
  %2925 = fadd fast float %2924, 3.906250e-03
  %2926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %2925, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2927 = extractvalue %dx.types.ResRet.f32 %2926, 0
  %2928 = fsub fast float %2921, %2927
  %2929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2928)  ; FMax(a,b)
  %2930 = fmul fast float %2437, %2427
  %2931 = call float @dx.op.unary.f32(i32 6, float %2930)  ; FAbs(value)
  %2932 = fcmp fast ogt float %2931, 0x3EB0C6F7A0000000
  br i1 %2932, label %2933, label %2939, !dx.controlflow.hints !129

; <label>:2933                                    ; preds = %2919
  %2934 = fmul fast float %2930, 0xBFF7154760000000
  %2935 = call float @dx.op.unary.f32(i32 21, float %2934)  ; Exp(value)
  %2936 = fsub fast float 1.000000e+00, %2935
  %2937 = fdiv fast float %2936, %2930
  %2938 = fmul fast float %2937, %2447
  br label %2939

; <label>:2939                                    ; preds = %2933, %2919
  %2940 = phi float [ %2938, %2933 ], [ %2447, %2919 ]
  %2941 = fadd fast float %2940, %2449
  %2942 = fmul fast float %2941, %2929
  %2943 = fmul fast float %2434, %2942
  %2944 = fsub fast float -0.000000e+00, %2943
  %2945 = fmul fast float %2435, %2942
  %2946 = fsub fast float -0.000000e+00, %2945
  %2947 = fmul fast float %2436, %2942
  %2948 = fsub fast float -0.000000e+00, %2947
  %2949 = call float @dx.op.unary.f32(i32 21, float %2944)  ; Exp(value)
  %2950 = call float @dx.op.unary.f32(i32 21, float %2946)  ; Exp(value)
  %2951 = call float @dx.op.unary.f32(i32 21, float %2948)  ; Exp(value)
  %2952 = fmul fast float %2463, %2463
  %2953 = fadd fast float %2952, 1.000000e+00
  %2954 = fmul fast float %2953, 0x3FAE8EC8A0000000
  %2955 = fmul fast float %2954, %2444
  %2956 = fmul fast float %2954, %2445
  %2957 = fmul fast float %2954, %2446
  %2958 = fmul fast float %2463, %2442
  %2959 = fsub fast float 1.000000e+00, %2958
  %2960 = fmul fast float %2442, %2442
  %2961 = fsub fast float 1.000000e+00, %2960
  %2962 = fmul fast float %2961, 0x3FB45F3060000000
  %2963 = fmul fast float %2959, %2959
  %2964 = fdiv fast float 1.000000e+00, %2963
  %2965 = fmul fast float %2962, %2964
  %2966 = fmul fast float %2965, %2439
  %2967 = fmul fast float %2965, %2440
  %2968 = fmul fast float %2965, %2441
  %2969 = fadd fast float %2966, %2955
  %2970 = fadd fast float %2967, %2956
  %2971 = fadd fast float %2968, %2957
  %2972 = fsub fast float 1.000000e+00, %2949
  %2973 = fsub fast float 1.000000e+00, %2950
  %2974 = fsub fast float 1.000000e+00, %2951
  %2975 = fmul fast float %2969, %2972
  %2976 = fmul fast float %2970, %2973
  %2977 = fmul fast float %2971, %2974
  br label %2978

; <label>:2978                                    ; preds = %2939, %2890
  %2979 = phi float [ %2916, %2890 ], [ %2975, %2939 ]
  %2980 = phi float [ %2917, %2890 ], [ %2976, %2939 ]
  %2981 = phi float [ %2918, %2890 ], [ %2977, %2939 ]
  %2982 = phi float [ %2905, %2890 ], [ %2949, %2939 ]
  %2983 = phi float [ %2905, %2890 ], [ %2950, %2939 ]
  %2984 = phi float [ %2905, %2890 ], [ %2951, %2939 ]
  br i1 %2471, label %2985, label %3183, !dx.controlflow.hints !130

; <label>:2985                                    ; preds = %2978
  %2986 = extractvalue %dx.types.CBufRet.f32 %2884, 0
  %2987 = fmul fast float %2986, %2886
  %2988 = fsub fast float %2881, %2979
  %2989 = fsub fast float %2882, %2980
  %2990 = fsub fast float %2883, %2981
  %2991 = fmul fast float %2987, %2988
  %2992 = fmul fast float %2987, %2989
  %2993 = fmul fast float %2987, %2990
  %2994 = fadd fast float %2991, %2979
  %2995 = fadd fast float %2992, %2980
  %2996 = fadd fast float %2993, %2981
  %2997 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2982)  ; FMax(a,b)
  %2998 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2983)  ; FMax(a,b)
  %2999 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2984)  ; FMax(a,b)
  %3000 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2880)  ; FMax(a,b)
  %3001 = call float @dx.op.binary.f32(i32 35, float %2879, float %2889)  ; FMax(a,b)
  %3002 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3001)  ; FMax(a,b)
  %3003 = fdiv fast float %2879, %3002
  %3004 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3005 = fdiv fast float %2889, %3002
  %3006 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3007 = fcmp fast une float %3000, 1.000000e+00
  br i1 %3007, label %3008, label %3021, !dx.controlflow.hints !131

; <label>:3008                                    ; preds = %2985
  %3009 = call float @dx.op.unary.f32(i32 23, float %3000)  ; Log(value)
  %3010 = fmul fast float %3009, 0x3FE62E4300000000
  %3011 = fmul fast float %2881, %3010
  %3012 = fsub fast float -0.000000e+00, %3011
  %3013 = fmul fast float %2882, %3010
  %3014 = fsub fast float -0.000000e+00, %3013
  %3015 = fmul fast float %2883, %3010
  %3016 = fsub fast float -0.000000e+00, %3015
  %3017 = fsub fast float 1.000000e+00, %3000
  %3018 = fdiv fast float %3012, %3017
  %3019 = fdiv fast float %3014, %3017
  %3020 = fdiv fast float %3016, %3017
  br label %3021

; <label>:3021                                    ; preds = %3008, %2985
  %3022 = phi float [ %3018, %3008 ], [ %2881, %2985 ]
  %3023 = phi float [ %3019, %3008 ], [ %2882, %2985 ]
  %3024 = phi float [ %3020, %3008 ], [ %2883, %2985 ]
  %3025 = phi float [ %3010, %3008 ], [ 0.000000e+00, %2985 ]
  %3026 = fcmp fast une float %2997, 1.000000e+00
  br i1 %3026, label %3027, label %3034, !dx.controlflow.hints !132

; <label>:3027                                    ; preds = %3021
  %3028 = call float @dx.op.unary.f32(i32 23, float %2997)  ; Log(value)
  %3029 = fmul fast float %3028, 0x3FE62E4300000000
  %3030 = fmul fast float %2994, %3029
  %3031 = fsub fast float -0.000000e+00, %3030
  %3032 = fsub fast float 1.000000e+00, %2997
  %3033 = fdiv fast float %3031, %3032
  br label %3034

; <label>:3034                                    ; preds = %3027, %3021
  %3035 = phi float [ %3033, %3027 ], [ %2994, %3021 ]
  %3036 = phi float [ %3029, %3027 ], [ 0.000000e+00, %3021 ]
  %3037 = fcmp fast une float %2998, 1.000000e+00
  br i1 %3037, label %3038, label %3045, !dx.controlflow.hints !132

; <label>:3038                                    ; preds = %3034
  %3039 = call float @dx.op.unary.f32(i32 23, float %2998)  ; Log(value)
  %3040 = fmul fast float %3039, 0x3FE62E4300000000
  %3041 = fmul fast float %2995, %3040
  %3042 = fsub fast float -0.000000e+00, %3041
  %3043 = fsub fast float 1.000000e+00, %2998
  %3044 = fdiv fast float %3042, %3043
  br label %3045

; <label>:3045                                    ; preds = %3038, %3034
  %3046 = phi float [ %3044, %3038 ], [ %2995, %3034 ]
  %3047 = phi float [ %3040, %3038 ], [ 0.000000e+00, %3034 ]
  %3048 = fcmp fast une float %2999, 1.000000e+00
  br i1 %3048, label %3049, label %3056, !dx.controlflow.hints !132

; <label>:3049                                    ; preds = %3045
  %3050 = call float @dx.op.unary.f32(i32 23, float %2999)  ; Log(value)
  %3051 = fmul fast float %3050, 0x3FE62E4300000000
  %3052 = fmul fast float %2996, %3051
  %3053 = fsub fast float -0.000000e+00, %3052
  %3054 = fsub fast float 1.000000e+00, %2999
  %3055 = fdiv fast float %3053, %3054
  br label %3056

; <label>:3056                                    ; preds = %3049, %3045
  %3057 = phi float [ %3055, %3049 ], [ %2996, %3045 ]
  %3058 = phi float [ %3051, %3049 ], [ 0.000000e+00, %3045 ]
  %3059 = fmul fast float %3022, %3006
  %3060 = fmul fast float %3023, %3006
  %3061 = fmul fast float %3024, %3006
  %3062 = fmul fast float %3025, %3006
  %3063 = fmul fast float %3035, %3004
  %3064 = fmul fast float %3046, %3004
  %3065 = fmul fast float %3057, %3004
  %3066 = fmul fast float %3036, %3004
  %3067 = fmul fast float %3047, %3004
  %3068 = fmul fast float %3058, %3004
  %3069 = fadd fast float %3063, %3059
  %3070 = fadd fast float %3064, %3060
  %3071 = fadd fast float %3065, %3061
  %3072 = fadd fast float %3066, %3062
  %3073 = fadd fast float %3067, %3062
  %3074 = fadd fast float %3068, %3062
  %3075 = fcmp fast une float %3072, 0.000000e+00
  br i1 %3075, label %3076, label %3083, !dx.controlflow.hints !133

; <label>:3076                                    ; preds = %3056
  %3077 = fmul fast float %3072, 0x3FF7154760000000
  %3078 = call float @dx.op.unary.f32(i32 21, float %3077)  ; Exp(value)
  %3079 = fsub fast float 1.000000e+00, %3078
  %3080 = fmul fast float %3069, %3079
  %3081 = fsub fast float -0.000000e+00, %3080
  %3082 = fdiv fast float %3081, %3072
  br label %3083

; <label>:3083                                    ; preds = %3076, %3056
  %3084 = phi float [ %3078, %3076 ], [ 1.000000e+00, %3056 ]
  %3085 = phi float [ %3082, %3076 ], [ %3069, %3056 ]
  %3086 = fcmp fast une float %3073, 0.000000e+00
  br i1 %3086, label %3087, label %3094, !dx.controlflow.hints !133

; <label>:3087                                    ; preds = %3083
  %3088 = fmul fast float %3073, 0x3FF7154760000000
  %3089 = call float @dx.op.unary.f32(i32 21, float %3088)  ; Exp(value)
  %3090 = fsub fast float 1.000000e+00, %3089
  %3091 = fmul fast float %3070, %3090
  %3092 = fsub fast float -0.000000e+00, %3091
  %3093 = fdiv fast float %3092, %3073
  br label %3094

; <label>:3094                                    ; preds = %3087, %3083
  %3095 = phi float [ %3089, %3087 ], [ 1.000000e+00, %3083 ]
  %3096 = phi float [ %3093, %3087 ], [ %3070, %3083 ]
  %3097 = fcmp fast une float %3074, 0.000000e+00
  br i1 %3097, label %3098, label %3105, !dx.controlflow.hints !133

; <label>:3098                                    ; preds = %3094
  %3099 = fmul fast float %3074, 0x3FF7154760000000
  %3100 = call float @dx.op.unary.f32(i32 21, float %3099)  ; Exp(value)
  %3101 = fsub fast float 1.000000e+00, %3100
  %3102 = fmul fast float %3071, %3101
  %3103 = fsub fast float -0.000000e+00, %3102
  %3104 = fdiv fast float %3103, %3074
  br label %3105

; <label>:3105                                    ; preds = %3098, %3094
  %3106 = phi float [ %3100, %3098 ], [ 1.000000e+00, %3094 ]
  %3107 = phi float [ %3104, %3098 ], [ %3071, %3094 ]
  %3108 = fcmp fast ogt float %3004, %3006
  br i1 %3108, label %3109, label %3129, !dx.controlflow.hints !134

; <label>:3109                                    ; preds = %3105
  %3110 = fsub fast float 1.000000e+00, %3006
  %3111 = fmul fast float %3022, %3110
  %3112 = fmul fast float %3023, %3110
  %3113 = fmul fast float %3024, %3110
  %3114 = fmul fast float %3025, %3110
  %3115 = fcmp fast une float %3114, 0.000000e+00
  br i1 %3115, label %3116, label %3167, !dx.controlflow.hints !135

; <label>:3116                                    ; preds = %3109
  %3117 = fmul fast float %3114, 0x3FF7154760000000
  %3118 = call float @dx.op.unary.f32(i32 21, float %3117)  ; Exp(value)
  %3119 = fsub fast float 1.000000e+00, %3118
  %3120 = fmul fast float %3111, %3119
  %3121 = fsub fast float -0.000000e+00, %3120
  %3122 = fmul fast float %3112, %3119
  %3123 = fsub fast float -0.000000e+00, %3122
  %3124 = fmul fast float %3113, %3119
  %3125 = fsub fast float -0.000000e+00, %3124
  %3126 = fdiv fast float %3121, %3114
  %3127 = fdiv fast float %3123, %3114
  %3128 = fdiv fast float %3125, %3114
  br label %3167

; <label>:3129                                    ; preds = %3105
  %3130 = fsub fast float 1.000000e+00, %3004
  %3131 = fmul fast float %3035, %3130
  %3132 = fmul fast float %3046, %3130
  %3133 = fmul fast float %3057, %3130
  %3134 = fmul fast float %3036, %3130
  %3135 = fmul fast float %3047, %3130
  %3136 = fmul fast float %3058, %3130
  %3137 = fcmp fast une float %3134, 0.000000e+00
  br i1 %3137, label %3138, label %3145, !dx.controlflow.hints !133

; <label>:3138                                    ; preds = %3129
  %3139 = fmul fast float %3134, 0x3FF7154760000000
  %3140 = call float @dx.op.unary.f32(i32 21, float %3139)  ; Exp(value)
  %3141 = fsub fast float 1.000000e+00, %3140
  %3142 = fmul fast float %3131, %3141
  %3143 = fsub fast float -0.000000e+00, %3142
  %3144 = fdiv fast float %3143, %3134
  br label %3145

; <label>:3145                                    ; preds = %3138, %3129
  %3146 = phi float [ %3144, %3138 ], [ %3131, %3129 ]
  %3147 = phi float [ %3140, %3138 ], [ 1.000000e+00, %3129 ]
  %3148 = fcmp fast une float %3135, 0.000000e+00
  br i1 %3148, label %3149, label %3156, !dx.controlflow.hints !133

; <label>:3149                                    ; preds = %3145
  %3150 = fmul fast float %3135, 0x3FF7154760000000
  %3151 = call float @dx.op.unary.f32(i32 21, float %3150)  ; Exp(value)
  %3152 = fsub fast float 1.000000e+00, %3151
  %3153 = fmul fast float %3132, %3152
  %3154 = fsub fast float -0.000000e+00, %3153
  %3155 = fdiv fast float %3154, %3135
  br label %3156

; <label>:3156                                    ; preds = %3149, %3145
  %3157 = phi float [ %3155, %3149 ], [ %3132, %3145 ]
  %3158 = phi float [ %3151, %3149 ], [ 1.000000e+00, %3145 ]
  %3159 = fcmp fast une float %3136, 0.000000e+00
  br i1 %3159, label %3160, label %3167, !dx.controlflow.hints !133

; <label>:3160                                    ; preds = %3156
  %3161 = fmul fast float %3136, 0x3FF7154760000000
  %3162 = call float @dx.op.unary.f32(i32 21, float %3161)  ; Exp(value)
  %3163 = fsub fast float 1.000000e+00, %3162
  %3164 = fmul fast float %3133, %3163
  %3165 = fsub fast float -0.000000e+00, %3164
  %3166 = fdiv fast float %3165, %3136
  br label %3167

; <label>:3167                                    ; preds = %3160, %3156, %3116, %3109
  %3168 = phi float [ %3166, %3160 ], [ %3128, %3116 ], [ %3113, %3109 ], [ %3133, %3156 ]
  %3169 = phi float [ %3157, %3160 ], [ %3127, %3116 ], [ %3112, %3109 ], [ %3157, %3156 ]
  %3170 = phi float [ %3146, %3160 ], [ %3126, %3116 ], [ %3111, %3109 ], [ %3146, %3156 ]
  %3171 = phi float [ %3162, %3160 ], [ %3118, %3116 ], [ 1.000000e+00, %3109 ], [ 1.000000e+00, %3156 ]
  %3172 = phi float [ %3158, %3160 ], [ %3118, %3116 ], [ 1.000000e+00, %3109 ], [ %3158, %3156 ]
  %3173 = phi float [ %3147, %3160 ], [ %3118, %3116 ], [ 1.000000e+00, %3109 ], [ %3147, %3156 ]
  %3174 = fmul fast float %3173, %3085
  %3175 = fmul fast float %3172, %3096
  %3176 = fmul fast float %3171, %3107
  %3177 = fadd fast float %3174, %3170
  %3178 = fadd fast float %3175, %3169
  %3179 = fadd fast float %3176, %3168
  %3180 = fmul fast float %3173, %3084
  %3181 = fmul fast float %3172, %3095
  %3182 = fmul fast float %3171, %3106
  br label %3183

; <label>:3183                                    ; preds = %3167, %2978
  %3184 = phi float [ %2984, %2978 ], [ %3182, %3167 ]
  %3185 = phi float [ %2983, %2978 ], [ %3181, %3167 ]
  %3186 = phi float [ %2982, %2978 ], [ %3180, %3167 ]
  %3187 = phi float [ %2981, %2978 ], [ %3179, %3167 ]
  %3188 = phi float [ %2980, %2978 ], [ %3178, %3167 ]
  %3189 = phi float [ %2979, %2978 ], [ %3177, %3167 ]
  %3190 = fmul fast float %3186, %2327
  %3191 = fmul fast float %3185, %2328
  %3192 = fmul fast float %3184, %2329
  %3193 = fsub fast float 1.000000e+00, %2390
  %3194 = fmul fast float %3189, %3193
  %3195 = fmul fast float %3188, %3193
  %3196 = fmul fast float %3187, %3193
  %3197 = fadd fast float %3194, %3190
  %3198 = fadd fast float %3195, %3191
  %3199 = fadd fast float %3196, %3192
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3202 = fmul fast float %3201, %2400
  %3203 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %23, i32 %24, i32 undef, float %2390, float %2390, float %2390, float %2390, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3205 = extractvalue %dx.types.CBufRet.f32 %3204, 0
  %3206 = fmul fast float %3205, %3197
  %3207 = fmul fast float %3205, %3198
  %3208 = fmul fast float %3205, %3199
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %23, i32 %24, i32 undef, float %3206, float %3207, float %3208, float %3206, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %23, i32 %24, i32 undef, float %3203, float %3203, float %3203, float %3203, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !29, !32}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 164}
!12 = !{i32 4, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!13 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!19 = !{i32 10, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!20 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{!24, !25, !26, !27}
!24 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!27 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !28}
!28 = !{i32 0, i32 14}
!29 = !{!30, !31}
!30 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!32 = !{!33, !34}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{void ()* @cs_fog_raymarching_air_particles_brfog, !"cs_fog_raymarching_air_particles_brfog", null, !4, !36}
!36 = !{i32 0, i64 272, i32 4, !37}
!37 = !{i32 8, i32 8, i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = !{!91, !91, i64 0}
!91 = !{!"float", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !{!95, !97, !99, !100, !102, !103, !104}
!95 = distinct !{!95, !96, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!96 = distinct !{!96, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!97 = distinct !{!97, !98, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!98 = distinct !{!98, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!99 = distinct !{!99, !98, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!100 = distinct !{!100, !101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!101 = distinct !{!101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!102 = distinct !{!102, !101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!103 = distinct !{!103, !101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!104 = distinct !{!104, !101, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = !{!107}
!107 = distinct !{!107, !108, !"\01?sort@@YAXAIAM00@Z: %c"}
!108 = distinct !{!108, !"\01?sort@@YAXAIAM00@Z"}
!109 = !{!110, !111, !95, !97, !99, !100, !102, !103, !104}
!110 = distinct !{!110, !108, !"\01?sort@@YAXAIAM00@Z: %a"}
!111 = distinct !{!111, !108, !"\01?sort@@YAXAIAM00@Z: %b"}
!112 = !{!111}
!113 = !{!110, !107, !95, !97, !99, !100, !102, !103, !104}
!114 = !{!110}
!115 = !{!111, !107, !95, !97, !99, !100, !102, !103, !104}
!116 = !{!117}
!117 = distinct !{!117, !118, !"\01?sort@@YAXAIAM00@Z: %c"}
!118 = distinct !{!118, !"\01?sort@@YAXAIAM00@Z"}
!119 = !{!120, !121, !95, !97, !99, !100, !102, !103, !104}
!120 = distinct !{!120, !118, !"\01?sort@@YAXAIAM00@Z: %a"}
!121 = distinct !{!121, !118, !"\01?sort@@YAXAIAM00@Z: %b"}
!122 = !{!121}
!123 = !{!120, !117, !95, !97, !99, !100, !102, !103, !104}
!124 = !{!120}
!125 = !{!121, !117, !95, !97, !99, !100, !102, !103, !104}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}

