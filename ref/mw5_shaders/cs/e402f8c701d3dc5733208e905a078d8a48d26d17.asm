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
; shader hash: 36a6d0b6e6942d7035051669b83e010d
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
;                                   sampler      NA          NA      S2             s3     1
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t16     1
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

define void @cs_fog_raymarching_air_heightmap_particles() {
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
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %25 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = add i32 %25, %24
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = add i32 %28, %30
  %32 = lshr i32 %31, 1
  %33 = and i32 %32, 1
  %34 = and i32 %31, 1
  %35 = xor i32 %33, %34
  %36 = shl i32 %24, 1
  %37 = shl i32 %25, 1
  %38 = or i32 %35, %36
  %39 = or i32 %33, %37
  %40 = uitofp i32 %38 to float
  %41 = uitofp i32 %39 to float
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %44 = fmul fast float %43, 0x3FE3C6EF40000000
  %45 = frem fast float %40, 2.560000e+02
  %46 = frem fast float %41, 2.560000e+02
  %47 = fptoui float %45 to i32
  %48 = fptoui float %46 to i32
  %49 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = extractvalue %dx.types.ResRet.f32 %49, 3
  %54 = fadd fast float %50, %44
  %55 = fadd fast float %51, %44
  %56 = fadd fast float %52, %44
  %57 = fadd fast float %53, %44
  %58 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %59 = call float @dx.op.unary.f32(i32 22, float %55)  ; Frc(value)
  %60 = call float @dx.op.unary.f32(i32 22, float %56)  ; Frc(value)
  %61 = call float @dx.op.unary.f32(i32 22, float %57)  ; Frc(value)
  %62 = fadd fast float %60, %40
  %63 = fadd fast float %61, %41
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %67 = fmul fast float %65, %62
  %68 = fmul fast float %66, %63
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %75 = fmul fast float %67, 2.000000e+00
  %76 = fmul fast float %68, 2.000000e+00
  %77 = fsub fast float 1.000000e+00, %75
  %78 = fsub fast float 1.000000e+00, %76
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fmul fast float %80, %77
  %84 = fmul fast float %81, %77
  %85 = fmul fast float %82, %77
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = fmul fast float %87, %78
  %91 = fmul fast float %88, %78
  %92 = fmul fast float %89, %78
  %93 = fadd fast float %90, %83
  %94 = fadd fast float %91, %84
  %95 = fadd fast float %92, %85
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = fadd fast float %93, %97
  %101 = fadd fast float %94, %98
  %102 = fadd fast float %95, %99
  %103 = fmul fast float %100, %74
  %104 = fmul fast float %101, %74
  %105 = fmul fast float %102, %74
  %106 = fmul fast float %103, %103
  %107 = fmul fast float %104, %104
  %108 = fadd fast float %106, %107
  %109 = fmul fast float %105, %105
  %110 = fadd fast float %108, %109
  %111 = call float @dx.op.unary.f32(i32 24, float %110)  ; Sqrt(value)
  %112 = fdiv fast float 1.000000e+00, %111
  %113 = fmul fast float %103, %112
  %114 = fmul fast float %104, %112
  %115 = fmul fast float %105, %112
  %116 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %38, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = fcmp fast ogt float %117, -1.000000e+00
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %121 = select i1 %118, float %120, float 1.000000e+00
  %122 = fadd fast float %117, 1.000000e+00
  %123 = fmul fast float %121, %122
  %124 = call float @dx.op.unary.f32(i32 6, float %123)  ; FAbs(value)
  %125 = fdiv fast float 1.000000e+00, %74
  %126 = fmul fast float %125, %111
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %129 = fmul fast float %128, %126
  %130 = fmul fast float %126, %124
  %131 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %132 = fcmp fast oge float %124, %131
  %133 = call float @dx.op.binary.f32(i32 36, float %130, float %129)  ; FMin(a,b)
  %134 = select i1 %132, float %129, float %133
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 3
  %137 = icmp eq i32 %136, 0
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = fsub fast float %139, %72
  %143 = fadd fast float %142, %141
  %144 = fsub fast float 0xC7EFFFFFE0000000, %72
  br i1 %137, label %156, label %145, !dx.controlflow.hints !39

; <label>:145                                     ; preds = %0
  %146 = fsub fast float -0.000000e+00, %71
  %147 = fsub fast float -0.000000e+00, %70
  %148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %147, float %146, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = fdiv fast float 1.000000e+00, %149
  %151 = fmul fast float %150, %148
  %152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %147, float %146, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %153 = fmul fast float %150, %152
  %154 = call float @dx.op.binary.f32(i32 36, float %151, float %153)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %151, float %153)  ; FMax(a,b)
  br label %189

; <label>:156                                     ; preds = %0
  %157 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %161 = fdiv fast float 1.000000e+00, %113
  %162 = fdiv fast float 1.000000e+00, %114
  %163 = fdiv fast float 1.000000e+00, %115
  %164 = fsub fast float %157, %70
  %165 = fmul fast float %161, %164
  %166 = fadd fast float %164, %159
  %167 = fmul fast float %166, %161
  %168 = call float @dx.op.binary.f32(i32 36, float %165, float %167)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 35, float %165, float %167)  ; FMax(a,b)
  %170 = fsub fast float %158, %71
  %171 = fmul fast float %162, %170
  %172 = fadd fast float %170, %160
  %173 = fmul fast float %172, %162
  %174 = call float @dx.op.binary.f32(i32 36, float %171, float %173)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %168, float %174)  ; FMax(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %171, float %173)  ; FMax(a,b)
  %177 = call float @dx.op.binary.f32(i32 36, float %169, float %176)  ; FMin(a,b)
  %178 = fmul fast float %163, %144
  %179 = fmul fast float %163, %143
  %180 = call float @dx.op.binary.f32(i32 36, float %178, float %179)  ; FMin(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float %175, float %180)  ; FMax(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float %178, float %179)  ; FMax(a,b)
  %183 = call float @dx.op.binary.f32(i32 36, float %177, float %182)  ; FMin(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %181)  ; FMax(a,b)
  %185 = fcmp fast ult float %183, %184
  br i1 %185, label %189, label %186, !dx.controlflow.hints !40

; <label>:186                                     ; preds = %156
  %187 = call float @dx.op.binary.f32(i32 36, float %181, float %183)  ; FMin(a,b)
  %188 = call float @dx.op.binary.f32(i32 35, float %181, float %183)  ; FMax(a,b)
  br label %189

; <label>:189                                     ; preds = %186, %156, %145
  %190 = phi float [ %154, %145 ], [ %187, %186 ], [ 0.000000e+00, %156 ]
  %191 = phi float [ %155, %145 ], [ %188, %186 ], [ 0.000000e+00, %156 ]
  %192 = fcmp fast oeq float %191, 0.000000e+00
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %195 = fcmp fast olt float %191, %194
  %196 = or i1 %192, %195
  br i1 %196, label %201, label %197, !dx.controlflow.hints !41

; <label>:197                                     ; preds = %189
  %198 = call float @dx.op.binary.f32(i32 35, float %194, float %190)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %198)  ; FMin(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %191)  ; FMax(a,b)
  br label %201

; <label>:201                                     ; preds = %197, %189
  %202 = phi i32 [ 1, %197 ], [ 0, %189 ]
  %203 = phi float [ %200, %197 ], [ -1.000000e+00, %189 ]
  %204 = phi float [ %199, %197 ], [ 0x47EFFFFFE0000000, %189 ]
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %207 = fsub fast float -0.000000e+00, %70
  %208 = fsub fast float -0.000000e+00, %71
  %209 = fsub fast float %206, %72
  %210 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %207, float %208, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %211 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = fdiv fast float 1.000000e+00, %211
  %213 = fmul fast float %212, %210
  %214 = fcmp fast olt float %213, 0.000000e+00
  %215 = fcmp fast ogt float %115, 0.000000e+00
  %216 = and i1 %215, %214
  br i1 %216, label %221, label %217, !dx.controlflow.hints !42

; <label>:217                                     ; preds = %201
  %218 = fcmp fast olt float %115, 0.000000e+00
  br i1 %218, label %219, label %221, !dx.controlflow.hints !43

; <label>:219                                     ; preds = %217
  %220 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %213)  ; FMax(a,b)
  br label %221

; <label>:221                                     ; preds = %219, %217, %201
  %222 = phi float [ 0.000000e+00, %201 ], [ %220, %219 ], [ 0.000000e+00, %217 ]
  %223 = phi float [ 0.000000e+00, %201 ], [ 0x47EFFFFFE0000000, %219 ], [ %213, %217 ]
  %224 = fcmp fast oeq float %223, 0.000000e+00
  br i1 %224, label %228, label %225, !dx.controlflow.hints !44

; <label>:225                                     ; preds = %221
  %226 = call float @dx.op.binary.f32(i32 36, float %204, float %222)  ; FMin(a,b)
  %227 = call float @dx.op.binary.f32(i32 35, float %203, float %223)  ; FMax(a,b)
  br label %228

; <label>:228                                     ; preds = %225, %221
  %229 = phi i32 [ 1, %225 ], [ 0, %221 ]
  %230 = phi float [ %227, %225 ], [ %203, %221 ]
  %231 = phi float [ %226, %225 ], [ %204, %221 ]
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = fsub fast float %233, %72
  %237 = fadd fast float %236, %235
  %238 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %207, float %208, float %237)  ; Dot3(ax,ay,az,bx,by,bz)
  %239 = fmul fast float %212, %238
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = fsub fast float %241, %72
  %243 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %207, float %208, float %242)  ; Dot3(ax,ay,az,bx,by,bz)
  %244 = fmul fast float %212, %243
  %245 = call float @dx.op.binary.f32(i32 36, float %239, float %244)  ; FMin(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float %239, float %244)  ; FMax(a,b)
  %247 = call float @dx.op.binary.f32(i32 36, float %231, float %245)  ; FMin(a,b)
  %248 = call float @dx.op.binary.f32(i32 35, float %230, float %246)  ; FMax(a,b)
  %249 = fdiv fast float 1.000000e+00, %113
  %250 = fdiv fast float 1.000000e+00, %114
  %251 = fdiv fast float 1.000000e+00, %115
  %252 = call float @dx.op.binary.f32(i32 36, float %134, float %248)  ; FMin(a,b)
  %253 = call float @dx.op.binary.f32(i32 35, float %111, float %247)  ; FMax(a,b)
  %254 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %255 = fmul fast float %59, 2.000000e+00
  %256 = fadd fast float %255, -1.000000e+00
  %257 = fmul fast float %254, %256
  %258 = fadd fast float %257, %253
  %259 = fcmp fast olt float %258, %252
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = fcmp fast olt float %261, 1.000000e+00
  %263 = and i1 %259, %262
  br i1 %263, label %264, label %2440

; <label>:264                                     ; preds = %228
  %265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.i32 %265, 1
  %267 = add i32 %266, -1
  %268 = fmul fast float %258, %115
  %269 = fadd fast float %268, %72
  %270 = fmul fast float %258, %114
  %271 = fadd fast float %270, %71
  %272 = fmul fast float %258, %113
  %273 = fadd fast float %272, %70
  br label %274

; <label>:274                                     ; preds = %2412, %264
  %275 = phi float [ %2414, %2412 ], [ undef, %264 ]
  %276 = phi float [ %2415, %2412 ], [ undef, %264 ]
  %277 = phi float [ %2416, %2412 ], [ undef, %264 ]
  %278 = phi float [ %2417, %2412 ], [ undef, %264 ]
  %279 = phi float [ %576, %2412 ], [ undef, %264 ]
  %280 = phi float [ %577, %2412 ], [ undef, %264 ]
  %281 = phi float [ %578, %2412 ], [ undef, %264 ]
  %282 = phi float [ %579, %2412 ], [ undef, %264 ]
  %283 = phi float [ %2418, %2412 ], [ 0.000000e+00, %264 ]
  %284 = phi float [ %2419, %2412 ], [ 1.000000e+00, %264 ]
  %285 = phi float [ %2420, %2412 ], [ 0.000000e+00, %264 ]
  %286 = phi float [ %2421, %2412 ], [ 0.000000e+00, %264 ]
  %287 = phi float [ %2422, %2412 ], [ 0.000000e+00, %264 ]
  %288 = phi float [ %2432, %2412 ], [ %273, %264 ]
  %289 = phi float [ %2433, %2412 ], [ %271, %264 ]
  %290 = phi float [ %2434, %2412 ], [ %269, %264 ]
  %291 = phi float [ %2413, %2412 ], [ %258, %264 ]
  %292 = phi i32 [ %581, %2412 ], [ 10, %264 ]
  %293 = phi i32 [ %473, %2412 ], [ %267, %264 ]
  %294 = phi float [ %2423, %2412 ], [ 0.000000e+00, %264 ]
  %295 = phi float [ %2424, %2412 ], [ 0.000000e+00, %264 ]
  %296 = phi float [ %2425, %2412 ], [ 0.000000e+00, %264 ]
  %297 = phi float [ %2426, %2412 ], [ 0.000000e+00, %264 ]
  %298 = phi float [ %2427, %2412 ], [ 0.000000e+00, %264 ]
  %299 = phi i32 [ %2428, %2412 ], [ 0, %264 ]
  %300 = fsub fast float -0.000000e+00, %289
  %301 = fsub fast float -0.000000e+00, %288
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = icmp eq i32 %202, 0
  br i1 %304, label %470, label %305, !dx.controlflow.hints !45

; <label>:305                                     ; preds = %274
  %306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.i32 %306, 1
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %310 = fcmp fast ogt float %309, %291
  br i1 %310, label %311, label %313, !dx.controlflow.hints !46

; <label>:311                                     ; preds = %305
  %312 = fsub fast float %309, %291
  br label %460

; <label>:313                                     ; preds = %305
  %314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.i32 %314, 3
  %316 = icmp eq i32 %315, 0
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %321 = fsub fast float %318, %290
  %322 = fadd fast float %321, %320
  %323 = fsub fast float 0xC7EFFFFFE0000000, %290
  br i1 %316, label %331, label %324, !dx.controlflow.hints !39

; <label>:324                                     ; preds = %313
  %325 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %301, float %300, float %322)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = fmul fast float %212, %325
  %327 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %301, float %300, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = fmul fast float %212, %327
  %329 = call float @dx.op.binary.f32(i32 36, float %326, float %328)  ; FMin(a,b)
  %330 = call float @dx.op.binary.f32(i32 35, float %326, float %328)  ; FMax(a,b)
  br label %361

; <label>:331                                     ; preds = %313
  %332 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %336 = fsub fast float %332, %288
  %337 = fmul fast float %249, %336
  %338 = fadd fast float %336, %334
  %339 = fmul fast float %338, %249
  %340 = call float @dx.op.binary.f32(i32 36, float %337, float %339)  ; FMin(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %337, float %339)  ; FMax(a,b)
  %342 = fsub fast float %333, %289
  %343 = fmul fast float %250, %342
  %344 = fadd fast float %342, %335
  %345 = fmul fast float %344, %250
  %346 = call float @dx.op.binary.f32(i32 36, float %343, float %345)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %340, float %346)  ; FMax(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %343, float %345)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 36, float %341, float %348)  ; FMin(a,b)
  %350 = fmul fast float %251, %323
  %351 = fmul fast float %251, %322
  %352 = call float @dx.op.binary.f32(i32 36, float %350, float %351)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 35, float %347, float %352)  ; FMax(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float %350, float %351)  ; FMax(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float %349, float %354)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %353)  ; FMax(a,b)
  %357 = fcmp fast ult float %355, %356
  br i1 %357, label %361, label %358, !dx.controlflow.hints !40

; <label>:358                                     ; preds = %331
  %359 = call float @dx.op.binary.f32(i32 36, float %353, float %355)  ; FMin(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %353, float %355)  ; FMax(a,b)
  br label %361

; <label>:361                                     ; preds = %358, %331, %324
  %362 = phi float [ %329, %324 ], [ %359, %358 ], [ 0.000000e+00, %331 ]
  %363 = phi float [ %330, %324 ], [ %360, %358 ], [ 0.000000e+00, %331 ]
  %364 = fcmp fast ogt float %362, 0.000000e+00
  br i1 %364, label %460, label %365, !dx.controlflow.hints !47

; <label>:365                                     ; preds = %361
  %366 = fcmp fast ugt float %363, 0.000000e+00
  br i1 %366, label %367, label %460, !dx.controlflow.hints !48

; <label>:367                                     ; preds = %365
  %368 = icmp sgt i32 %293, 0
  br i1 %368, label %369, label %454

; <label>:369                                     ; preds = %367
  br label %370

; <label>:370                                     ; preds = %450, %369
  %371 = phi i32 [ %451, %450 ], [ %293, %369 ]
  %372 = sitofp i32 %371 to float
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = fsub fast float %288, %374
  %377 = fsub fast float %289, %375
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %381 = fmul fast float %376, %379
  %382 = fmul fast float %377, %380
  %383 = fsub fast float 1.000000e+00, %382
  %384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.i32 %384, 3
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %393, label %387, !dx.controlflow.hints !49

; <label>:387                                     ; preds = %370
  %388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %381, float %383, float undef, float undef, i32 0, i32 0, i32 undef, float %372)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = extractvalue %dx.types.ResRet.f32 %388, 3
  br label %399

; <label>:393                                     ; preds = %370
  %394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %381, float %383, float undef, float undef, i32 0, i32 0, i32 undef, float %372)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = extractvalue %dx.types.ResRet.f32 %394, 2
  %398 = extractvalue %dx.types.ResRet.f32 %394, 3
  br label %399

; <label>:399                                     ; preds = %393, %387
  %400 = phi float [ %389, %387 ], [ %395, %393 ]
  %401 = phi float [ %390, %387 ], [ %396, %393 ]
  %402 = phi float [ %391, %387 ], [ %397, %393 ]
  %403 = phi float [ %392, %387 ], [ %398, %393 ]
  %404 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %405 = fmul fast float %404, %400
  %406 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %407 = fadd fast float %405, %406
  %408 = fmul fast float %404, %401
  %409 = fadd fast float %408, %406
  %410 = fmul fast float %404, %402
  %411 = fadd fast float %410, %406
  %412 = and i32 %371, 31
  %413 = shl i32 1, %412
  %414 = uitofp i32 %413 to float
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 3
  %417 = fdiv fast float 1.000000e+00, %416
  %418 = fmul fast float %417, %414
  %419 = fmul fast float %418, %115
  %420 = fadd fast float %419, %290
  %421 = fcmp fast oeq float %403, 0.000000e+00
  %422 = fcmp fast ogt float %290, %409
  %423 = fcmp fast ogt float %420, %409
  %424 = and i1 %422, %423
  %425 = or i1 %421, %424
  br i1 %425, label %426, label %430, !dx.controlflow.hints !50

; <label>:426                                     ; preds = %399
  %427 = add nsw i32 %371, 1
  %428 = add nsw i32 %307, -1
  %429 = call i32 @dx.op.binary.i32(i32 38, i32 %427, i32 %428)  ; IMin(a,b)
  br label %460

; <label>:430                                     ; preds = %399
  %431 = fcmp fast olt float %290, %411
  %432 = fcmp fast olt float %420, %411
  %433 = and i1 %431, %432
  br i1 %433, label %434, label %438, !dx.controlflow.hints !51

; <label>:434                                     ; preds = %430
  %435 = add nsw i32 %371, 1
  %436 = add nsw i32 %307, -1
  %437 = call i32 @dx.op.binary.i32(i32 38, i32 %435, i32 %436)  ; IMin(a,b)
  br label %460

; <label>:438                                     ; preds = %430
  %439 = fcmp fast olt float %290, %407
  %440 = fcmp fast olt float %420, %407
  %441 = and i1 %439, %440
  br i1 %441, label %442, label %450, !dx.controlflow.hints !52

; <label>:442                                     ; preds = %438
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 3
  %445 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %446 = fcmp fast une float %444, %445
  br i1 %446, label %447, label %454, !dx.controlflow.hints !53

; <label>:447                                     ; preds = %442
  %448 = fsub fast float %290, %411
  %449 = call float @dx.op.binary.f32(i32 36, float %418, float %448)  ; FMin(a,b)
  br label %454

; <label>:450                                     ; preds = %438
  %451 = add nsw i32 %371, -1
  %452 = icmp sgt i32 %371, 1
  br i1 %452, label %370, label %453

; <label>:453                                     ; preds = %450
  br label %454

; <label>:454                                     ; preds = %453, %447, %442, %367
  %455 = phi float [ %449, %447 ], [ %418, %442 ], [ 0.000000e+00, %367 ], [ 0.000000e+00, %453 ]
  %456 = phi i32 [ %371, %447 ], [ %371, %442 ], [ %293, %367 ], [ %451, %453 ]
  %457 = add nsw i32 %456, 1
  %458 = add nsw i32 %307, -1
  %459 = call i32 @dx.op.binary.i32(i32 38, i32 %457, i32 %458)  ; IMin(a,b)
  br label %460

; <label>:460                                     ; preds = %454, %434, %426, %365, %361, %311
  %461 = phi float [ %312, %311 ], [ %418, %426 ], [ %418, %434 ], [ %455, %454 ], [ 0x47EFFFFFE0000000, %365 ], [ %362, %361 ]
  %462 = phi i32 [ %202, %311 ], [ %202, %426 ], [ %202, %434 ], [ %202, %454 ], [ 0, %365 ], [ %202, %361 ]
  %463 = phi i32 [ %293, %311 ], [ %429, %426 ], [ %437, %434 ], [ %459, %454 ], [ %293, %365 ], [ %293, %361 ]
  %464 = icmp ne i32 %462, 0
  %465 = zext i1 %464 to i32
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %468 = call float @dx.op.binary.f32(i32 35, float %461, float %467)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %468)  ; FMin(a,b)
  br label %470

; <label>:470                                     ; preds = %460, %274
  %471 = phi i32 [ %465, %460 ], [ 0, %274 ]
  %472 = phi float [ %469, %460 ], [ 0x47EFFFFFE0000000, %274 ]
  %473 = phi i32 [ %463, %460 ], [ %293, %274 ]
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %477 = fsub fast float %288, %475
  %478 = fsub fast float %289, %476
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 2
  %481 = extractvalue %dx.types.CBufRet.f32 %479, 3
  %482 = fmul fast float %477, %480
  %483 = fmul fast float %478, %481
  %484 = call float @dx.op.binary.f32(i32 36, float %482, float %483)  ; FMin(a,b)
  %485 = fcmp fast olt float %484, 0.000000e+00
  %486 = call float @dx.op.binary.f32(i32 35, float %482, float %483)  ; FMax(a,b)
  %487 = fcmp fast ogt float %486, 1.000000e+00
  %488 = or i1 %485, %487
  %489 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %490 = fcmp fast olt float %290, %489
  %491 = or i1 %488, %490
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 3
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 0
  %496 = fadd fast float %495, %493
  %497 = fcmp fast ogt float %290, %496
  %498 = or i1 %491, %497
  br i1 %498, label %499, label %528, !dx.controlflow.hints !54

; <label>:499                                     ; preds = %470
  %500 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %501 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %502 = fsub fast float %475, %288
  %503 = fmul fast float %502, %249
  %504 = fadd fast float %502, %500
  %505 = fmul fast float %504, %249
  %506 = call float @dx.op.binary.f32(i32 36, float %503, float %505)  ; FMin(a,b)
  %507 = call float @dx.op.binary.f32(i32 35, float %503, float %505)  ; FMax(a,b)
  %508 = fsub fast float %476, %289
  %509 = fmul fast float %508, %250
  %510 = fadd fast float %508, %501
  %511 = fmul fast float %510, %250
  %512 = call float @dx.op.binary.f32(i32 36, float %509, float %511)  ; FMin(a,b)
  %513 = call float @dx.op.binary.f32(i32 35, float %506, float %512)  ; FMax(a,b)
  %514 = call float @dx.op.binary.f32(i32 35, float %509, float %511)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 36, float %507, float %514)  ; FMin(a,b)
  %516 = fsub fast float %489, %290
  %517 = fmul fast float %516, %251
  %518 = fsub fast float %493, %290
  %519 = fadd fast float %518, %495
  %520 = fmul fast float %519, %251
  %521 = call float @dx.op.binary.f32(i32 36, float %517, float %520)  ; FMin(a,b)
  %522 = call float @dx.op.binary.f32(i32 35, float %513, float %521)  ; FMax(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %517, float %520)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 36, float %515, float %523)  ; FMin(a,b)
  %525 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %522)  ; FMax(a,b)
  %526 = fcmp fast oge float %524, %525
  %527 = select i1 %526, float %522, float 1.000000e+07
  br label %574

; <label>:528                                     ; preds = %470
  %529 = fsub fast float 1.000000e+00, %483
  %530 = icmp eq i32 %292, 0
  br i1 %530, label %559, label %531

; <label>:531                                     ; preds = %528
  br label %532

; <label>:532                                     ; preds = %555, %531
  %533 = phi i32 [ %556, %555 ], [ %292, %531 ]
  %534 = uitofp i32 %533 to float
  %535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %482, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float %534)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = extractvalue %dx.types.ResRet.f32 %535, 1
  %538 = extractvalue %dx.types.ResRet.f32 %535, 2
  %539 = fcmp fast oeq float %536, 0.000000e+00
  %540 = fcmp ule float %290, %538
  %541 = fcmp uge float %290, %537
  %542 = or i1 %541, %540
  %543 = or i1 %539, %542
  br i1 %543, label %544, label %555, !dx.controlflow.hints !55

; <label>:544                                     ; preds = %532
  %545 = extractvalue %dx.types.ResRet.f32 %535, 3
  %546 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %547 = and i32 %533, 31
  %548 = lshr i32 1024, %547
  %549 = uitofp i32 %548 to float
  %550 = fdiv fast float %546, %549
  %551 = add i32 %533, 1
  %552 = uitofp i32 %551 to float
  %553 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %552)  ; FMin(a,b)
  %554 = fptosi float %553 to i32
  br label %574

; <label>:555                                     ; preds = %532
  %556 = add i32 %533, -1
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %532, !llvm.loop !56

; <label>:558                                     ; preds = %555
  br label %559

; <label>:559                                     ; preds = %558, %528
  %560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %482, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = extractvalue %dx.types.ResRet.f32 %560, 2
  %564 = extractvalue %dx.types.ResRet.f32 %560, 3
  %565 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %566 = fmul fast float %565, 9.765625e-04
  %567 = fcmp fast oeq float %561, 0.000000e+00
  %568 = fcmp ule float %290, %563
  %569 = fcmp uge float %290, %562
  %570 = or i1 %569, %568
  %571 = or i1 %567, %570
  %572 = zext i1 %571 to i32
  %573 = xor i32 %572, 1
  br label %574

; <label>:574                                     ; preds = %559, %544, %499
  %575 = phi float [ %527, %499 ], [ %550, %544 ], [ %566, %559 ]
  %576 = phi float [ %279, %499 ], [ %536, %544 ], [ %561, %559 ]
  %577 = phi float [ %280, %499 ], [ %537, %544 ], [ %562, %559 ]
  %578 = phi float [ %281, %499 ], [ %538, %544 ], [ %563, %559 ]
  %579 = phi float [ %282, %499 ], [ %545, %544 ], [ %564, %559 ]
  %580 = phi i32 [ 0, %499 ], [ 0, %544 ], [ %573, %559 ]
  %581 = phi i32 [ 10, %499 ], [ %554, %544 ], [ 1, %559 ]
  %582 = icmp eq i32 %580, 0
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %585 = call float @dx.op.binary.f32(i32 35, float %575, float %584)  ; FMax(a,b)
  %586 = call float @dx.op.binary.f32(i32 36, float %472, float %585)  ; FMin(a,b)
  %587 = icmp eq i32 %229, 0
  br i1 %587, label %600, label %588, !dx.controlflow.hints !58

; <label>:588                                     ; preds = %574
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 3
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %592 = fmul fast float %590, %291
  %593 = fdiv fast float %592, %252
  %594 = fadd fast float %593, 1.000000e+00
  %595 = call float @dx.op.unary.f32(i32 23, float %594)  ; Log(value)
  %596 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %595)  ; FMin(a,b)
  %597 = fmul fast float %591, %252
  %598 = fmul fast float %597, %596
  %599 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %598)  ; FMin(a,b)
  br label %600

; <label>:600                                     ; preds = %588, %574
  %601 = phi float [ %599, %588 ], [ 0x47EFFFFFE0000000, %574 ]
  %602 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %603 = fmul fast float %602, %291
  %604 = call float @dx.op.unary.f32(i32 23, float %603)  ; Log(value)
  %605 = fmul fast float %604, 0x3FE62E4300000000
  %606 = call float @dx.op.binary.f32(i32 35, float %605, float 1.000000e+00)  ; FMax(a,b)
  %607 = fmul fast float %606, %601
  %608 = call float @dx.op.binary.f32(i32 36, float %607, float %586)  ; FMin(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float %608, float %303)  ; FMax(a,b)
  %610 = fsub fast float %252, %291
  %611 = fadd fast float %610, 0x3F1A36E2E0000000
  %612 = call float @dx.op.binary.f32(i32 36, float %611, float %609)  ; FMin(a,b)
  %613 = icmp eq i32 %471, 0
  br i1 %613, label %719, label %614, !dx.controlflow.hints !59

; <label>:614                                     ; preds = %600
  %615 = fcmp fast olt float %611, %609
  %616 = fmul fast float %115, %58
  %617 = fmul fast float %616, %612
  %618 = fadd fast float %617, %290
  %619 = fmul fast float %115, %59
  %620 = fmul fast float %619, %612
  %621 = fadd fast float %620, %290
  %622 = fmul fast float %115, %60
  %623 = fmul fast float %622, %612
  %624 = fadd fast float %623, %290
  br i1 %615, label %625, label %630, !dx.controlflow.hints !60

; <label>:625                                     ; preds = %614
  %626 = fmul fast float %612, %113
  %627 = fmul fast float %612, %114
  %628 = fadd fast float %626, %288
  %629 = fadd fast float %627, %289
  br label %630

; <label>:630                                     ; preds = %625, %614
  %631 = phi float [ %628, %625 ], [ %288, %614 ]
  %632 = phi float [ %629, %625 ], [ %289, %614 ]
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = extractvalue %dx.types.CBufRet.f32 %633, 1
  %636 = fsub fast float %631, %634
  %637 = fsub fast float %632, %635
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 0
  %640 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %641 = fmul fast float %636, %639
  %642 = fmul fast float %637, %640
  %643 = fsub fast float 1.000000e+00, %642
  %644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.i32 %644, 3
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %653, label %647, !dx.controlflow.hints !49

; <label>:647                                     ; preds = %630
  %648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %641, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = extractvalue %dx.types.ResRet.f32 %648, 3
  br label %659

; <label>:653                                     ; preds = %630
  %654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %641, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = extractvalue %dx.types.ResRet.f32 %654, 1
  %657 = extractvalue %dx.types.ResRet.f32 %654, 2
  %658 = extractvalue %dx.types.ResRet.f32 %654, 3
  br label %659

; <label>:659                                     ; preds = %653, %647
  %660 = phi float [ %649, %647 ], [ %655, %653 ]
  %661 = phi float [ %650, %647 ], [ %656, %653 ]
  %662 = phi float [ %651, %647 ], [ %657, %653 ]
  %663 = phi float [ %652, %647 ], [ %658, %653 ]
  %664 = extractvalue %dx.types.CBufRet.f32 %638, 3
  %665 = fmul fast float %664, %661
  %666 = fmul fast float %665, %660
  %667 = fsub fast float %665, %666
  %668 = fcmp fast ole float %667, 0.000000e+00
  %669 = extractvalue %dx.types.CBufRet.f32 %633, 2
  %670 = fadd fast float %666, %669
  %671 = fmul fast float %664, %662
  %672 = fadd fast float %671, %669
  %673 = fdiv fast float 1.000000e+00, %667
  %674 = select i1 %668, float 1.000000e+06, float %673
  %675 = fsub fast float %618, %670
  %676 = fmul fast float %674, %675
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %678 = extractvalue %dx.types.CBufRet.f32 %638, 2
  %679 = fmul fast float %678, %677
  %680 = fsub fast float %678, %679
  %681 = fcmp fast olt float %618, %672
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 3
  %684 = select i1 %681, float %683, float 1.000000e+00
  %685 = fmul fast float %680, %684
  %686 = fsub fast float %621, %670
  %687 = fmul fast float %674, %686
  %688 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %689 = fmul fast float %678, %688
  %690 = fsub fast float %678, %689
  %691 = fcmp fast olt float %621, %672
  %692 = select i1 %691, float %683, float 1.000000e+00
  %693 = fmul fast float %690, %692
  %694 = fadd fast float %693, %685
  %695 = fsub fast float %624, %670
  %696 = fmul fast float %674, %695
  %697 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %698 = fmul fast float %678, %697
  %699 = fsub fast float %678, %698
  %700 = fcmp fast olt float %624, %672
  %701 = select i1 %700, float %683, float 1.000000e+00
  %702 = fmul fast float %699, %701
  %703 = fadd fast float %694, %702
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %709 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %710 = fmul fast float %612, 0x3FD5555560000000
  %711 = fmul fast float %710, %663
  %712 = fmul fast float %711, %705
  %713 = fmul fast float %712, %703
  %714 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %715 = fmul fast float %713, %707
  %716 = fmul fast float %713, %708
  %717 = fmul fast float %713, %709
  %718 = fmul fast float %713, %714
  br label %719

; <label>:719                                     ; preds = %659, %600
  %720 = phi float [ %713, %659 ], [ 0.000000e+00, %600 ]
  %721 = phi float [ %718, %659 ], [ 0.000000e+00, %600 ]
  %722 = phi float [ %715, %659 ], [ 0.000000e+00, %600 ]
  %723 = phi float [ %716, %659 ], [ 0.000000e+00, %600 ]
  %724 = phi float [ %717, %659 ], [ 0.000000e+00, %600 ]
  br i1 %587, label %784, label %725, !dx.controlflow.hints !61

; <label>:725                                     ; preds = %719
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = fsub fast float %727, %290
  %729 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %301, float %300, float %728)  ; Dot3(ax,ay,az,bx,by,bz)
  %730 = fmul fast float %212, %729
  %731 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %730)  ; FMax(a,b)
  %732 = fcmp fast olt float %115, 0.000000e+00
  %733 = call float @dx.op.binary.f32(i32 36, float %612, float %731)  ; FMin(a,b)
  br i1 %732, label %735, label %734, !dx.controlflow.hints !62

; <label>:734                                     ; preds = %725
  br label %735

; <label>:735                                     ; preds = %734, %725
  %736 = phi float [ 0.000000e+00, %734 ], [ %733, %725 ]
  %737 = phi float [ %733, %734 ], [ %612, %725 ]
  %738 = phi float [ %733, %734 ], [ 0.000000e+00, %725 ]
  %739 = phi float [ %612, %734 ], [ %733, %725 ]
  %740 = fsub fast float %737, %736
  %741 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %742 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %741)  ; FMin(a,b)
  %743 = fsub fast float %290, %727
  %744 = fmul fast float %742, 0x3FF7154760000000
  %745 = fmul fast float %744, %743
  %746 = call float @dx.op.unary.f32(i32 21, float %745)  ; Exp(value)
  %747 = fmul fast float %115, 0x3FF7154760000000
  %748 = fmul fast float %747, %739
  %749 = fmul fast float %748, %742
  %750 = call float @dx.op.unary.f32(i32 21, float %749)  ; Exp(value)
  %751 = fmul fast float %747, %738
  %752 = fmul fast float %751, %742
  %753 = call float @dx.op.unary.f32(i32 21, float %752)  ; Exp(value)
  %754 = fsub fast float %750, %753
  %755 = fmul fast float %754, %746
  %756 = fmul fast float %742, %115
  %757 = fdiv fast float %755, %756
  %758 = fadd fast float %740, %757
  %759 = call float @dx.op.unary.f32(i32 6, float %115)  ; FAbs(value)
  %760 = fcmp fast olt float %759, 0x3F0FFB4800000000
  %761 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %743)  ; FMax(a,b)
  %762 = fmul fast float %761, 0x3FF7154760000000
  %763 = fmul fast float %762, %741
  %764 = call float @dx.op.unary.f32(i32 21, float %763)  ; Exp(value)
  %765 = fmul fast float %764, %612
  %766 = select i1 %760, float %765, float %758
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %769 = fmul fast float %766, %768
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %773 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %774 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %775 = fmul fast float %771, %769
  %776 = fmul fast float %772, %769
  %777 = fmul fast float %773, %769
  %778 = fadd fast float %775, %722
  %779 = fadd fast float %776, %723
  %780 = fadd fast float %777, %724
  %781 = fmul fast float %774, %769
  %782 = fadd fast float %781, %721
  %783 = fadd fast float %769, %720
  br label %784

; <label>:784                                     ; preds = %735, %719
  %785 = phi float [ %783, %735 ], [ %720, %719 ]
  %786 = phi float [ %782, %735 ], [ %721, %719 ]
  %787 = phi float [ %778, %735 ], [ %722, %719 ]
  %788 = phi float [ %779, %735 ], [ %723, %719 ]
  %789 = phi float [ %780, %735 ], [ %724, %719 ]
  br i1 %582, label %932, label %790, !dx.controlflow.hints !63

; <label>:790                                     ; preds = %784
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 0
  %793 = extractvalue %dx.types.CBufRet.f32 %791, 1
  %794 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.i32 %795, 0
  %797 = icmp ne i32 %796, 0
  %798 = zext i1 %797 to i32
  %799 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.i32 %799, 0
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %835, label %802

; <label>:802                                     ; preds = %790
  br label %803

; <label>:803                                     ; preds = %830, %802
  %804 = phi i32 [ %831, %830 ], [ 0, %802 ]
  %805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %804, i32 0)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %804, i32 16)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = extractvalue %dx.types.ResRet.f32 %809, 1
  %812 = extractvalue %dx.types.ResRet.f32 %809, 2
  %813 = fsub fast float %806, %810
  %814 = fsub fast float %807, %811
  %815 = fsub fast float %808, %812
  %816 = fadd fast float %810, %806
  %817 = fadd fast float %811, %807
  %818 = fadd fast float %812, %808
  %819 = fcmp fast olt float %288, %813
  %820 = fcmp fast olt float %289, %814
  %821 = fcmp fast olt float %290, %815
  %822 = or i1 %819, %820
  %823 = or i1 %821, %822
  %824 = fcmp fast ogt float %288, %816
  %825 = fcmp fast ogt float %289, %817
  %826 = fcmp fast ogt float %290, %818
  %827 = or i1 %824, %825
  %828 = or i1 %826, %827
  %829 = or i1 %823, %828
  br i1 %829, label %830, label %833, !dx.controlflow.hints !64

; <label>:830                                     ; preds = %803
  %831 = add nuw i32 %804, 1
  %832 = icmp ult i32 %831, %800
  br i1 %832, label %803, label %833

; <label>:833                                     ; preds = %830, %803
  %834 = phi i32 [ 255, %830 ], [ %804, %803 ]
  br label %835

; <label>:835                                     ; preds = %833, %790
  %836 = phi i32 [ 255, %790 ], [ %834, %833 ]
  %837 = icmp eq i32 %836, 255
  br i1 %837, label %847, label %838, !dx.controlflow.hints !65

; <label>:838                                     ; preds = %835
  %839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %836, i32 32)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %836, i32 156)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = icmp ne i32 %844, 0
  %846 = zext i1 %845 to i32
  br label %847

; <label>:847                                     ; preds = %838, %835
  %848 = phi float [ %840, %838 ], [ %792, %835 ]
  %849 = phi float [ %841, %838 ], [ %793, %835 ]
  %850 = phi float [ %842, %838 ], [ %794, %835 ]
  %851 = phi i32 [ %846, %838 ], [ %798, %835 ]
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %853, label %922, !dx.controlflow.hints !66

; <label>:853                                     ; preds = %847
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 3
  %856 = extractvalue %dx.types.CBufRet.f32 %492, 0
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 3
  br i1 %837, label %870, label %860, !dx.controlflow.hints !67

; <label>:860                                     ; preds = %853
  %861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %836, i32 60)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 0
  %863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %836, i32 64)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %836, i32 72)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %836, i32 96)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  br label %870

; <label>:870                                     ; preds = %860, %853
  %871 = phi float [ %862, %860 ], [ %495, %853 ]
  %872 = phi float [ %867, %860 ], [ %493, %853 ]
  %873 = phi float [ %869, %860 ], [ %856, %853 ]
  %874 = phi float [ %864, %860 ], [ %858, %853 ]
  %875 = phi float [ %865, %860 ], [ %859, %853 ]
  %876 = call float @dx.op.binary.f32(i32 35, float %576, float 0.000000e+00)  ; FMax(a,b)
  %877 = call float @dx.op.binary.f32(i32 36, float %876, float 1.000000e+00)  ; FMin(a,b)
  %878 = call float @dx.op.unary.f32(i32 24, float %877)  ; Sqrt(value)
  %879 = call float @dx.op.binary.f32(i32 35, float %579, float 0x3F847AE140000000)  ; FMax(a,b)
  %880 = fsub fast float %577, %290
  %881 = fsub fast float %290, %578
  %882 = call float @dx.op.binary.f32(i32 36, float %881, float %880)  ; FMin(a,b)
  %883 = fdiv fast float %882, %879
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %885 = fsub fast float %290, %872
  %886 = fdiv fast float %885, %871
  %887 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %888 = fsub fast float 1.000000e+00, %887
  %889 = fmul float %884, %888
  %890 = fmul float %889, %889
  %891 = fmul fast float %878, %855
  %892 = fmul fast float %891, %890
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 2
  %895 = extractvalue %dx.types.CBufRet.f32 %893, 1
  %896 = fsub fast float %892, %895
  %897 = fsub fast float %894, %895
  %898 = fdiv fast float %896, %897
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %900 = fmul fast float %899, %873
  %901 = fcmp fast ogt float %875, 0.000000e+00
  br i1 %901, label %902, label %922, !dx.controlflow.hints !68

; <label>:902                                     ; preds = %870
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %906 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %907 = fsub fast float %288, %904
  %908 = fsub fast float %289, %905
  %909 = fsub fast float %290, %906
  %910 = fmul fast float %907, %907
  %911 = fmul fast float %908, %908
  %912 = fadd fast float %910, %911
  %913 = fmul fast float %909, %909
  %914 = fadd fast float %912, %913
  %915 = call float @dx.op.unary.f32(i32 24, float %914)  ; Sqrt(value)
  %916 = fsub fast float %915, %874
  %917 = fsub fast float %875, %874
  %918 = fdiv fast float %916, %917
  %919 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %920 = fmul fast float %919, %919
  %921 = fmul fast float %920, %900
  br label %922

; <label>:922                                     ; preds = %902, %870, %847
  %923 = phi float [ 0.000000e+00, %847 ], [ %921, %902 ], [ %900, %870 ]
  %924 = fmul fast float %923, %612
  %925 = fmul fast float %924, %848
  %926 = fmul fast float %924, %849
  %927 = fmul fast float %924, %850
  %928 = fadd fast float %925, %787
  %929 = fadd fast float %926, %788
  %930 = fadd fast float %927, %789
  %931 = fadd fast float %924, %785
  br label %932

; <label>:932                                     ; preds = %922, %784
  %933 = phi float [ %931, %922 ], [ %785, %784 ]
  %934 = phi float [ %928, %922 ], [ %787, %784 ]
  %935 = phi float [ %929, %922 ], [ %788, %784 ]
  %936 = phi float [ %930, %922 ], [ %789, %784 ]
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %939 = fcmp fast ogt float %933, %938
  br i1 %939, label %940, label %946, !dx.controlflow.hints !69

; <label>:940                                     ; preds = %932
  %941 = fdiv fast float 1.000000e+00, %933
  %942 = fmul fast float %941, %934
  %943 = fmul fast float %941, %935
  %944 = fmul fast float %941, %936
  %945 = fmul fast float %941, %786
  br label %946

; <label>:946                                     ; preds = %940, %932
  %947 = phi float [ %945, %940 ], [ %786, %932 ]
  %948 = phi float [ %942, %940 ], [ %934, %932 ]
  %949 = phi float [ %943, %940 ], [ %935, %932 ]
  %950 = phi float [ %944, %940 ], [ %936, %932 ]
  br i1 %939, label %953, label %951, !dx.controlflow.hints !70

; <label>:951                                     ; preds = %946
  %952 = fadd fast float %612, %291
  br label %2412

; <label>:953                                     ; preds = %946
  %954 = fmul fast float %933, 0xBFF7154760000000
  %955 = call float @dx.op.unary.f32(i32 21, float %954)  ; Exp(value)
  %956 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.i32 %957, 0
  %959 = icmp eq i32 %958, 1
  br i1 %959, label %960, label %995, !dx.controlflow.hints !71

; <label>:960                                     ; preds = %953
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = fsub fast float %288, %962
  %965 = fsub fast float %289, %963
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = fmul fast float %964, %967
  %970 = fmul fast float %965, %968
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %969, float %970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = fcmp fast ogt float %972, 0.000000e+00
  %974 = extractvalue %dx.types.CBufRet.i32 %957, 3
  %975 = icmp ne i32 %974, 0
  %976 = and i1 %973, %975
  br i1 %976, label %977, label %995, !dx.controlflow.hints !72

; <label>:977                                     ; preds = %960
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %981 = fsub fast float %288, %979
  %982 = fsub fast float %289, %980
  %983 = fmul fast float %981, %981
  %984 = fmul fast float %982, %982
  %985 = fadd fast float %983, %984
  %986 = uitofp i32 %974 to float
  %987 = fmul fast float %986, %986
  %988 = fcmp fast ogt float %985, %987
  br i1 %988, label %995, label %989, !dx.controlflow.hints !73

; <label>:989                                     ; preds = %977
  %990 = call float @dx.op.unary.f32(i32 24, float %985)  ; Sqrt(value)
  %991 = fsub fast float %986, %990
  %992 = fmul fast float %991, 0x3F75555560000000
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = call float @dx.op.binary.f32(i32 36, float %993, float %972)  ; FMin(a,b)
  br label %995

; <label>:995                                     ; preds = %989, %977, %960, %953
  %996 = phi float [ 1.000000e+00, %953 ], [ %994, %989 ], [ %972, %960 ], [ 0.000000e+00, %977 ]
  %997 = fcmp fast ogt float %996, 0.000000e+00
  br i1 %997, label %998, label %1071, !dx.controlflow.hints !74

; <label>:998                                     ; preds = %995
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = extractvalue %dx.types.ResRet.i32 %999, 1
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.i32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.i32 %1002, 2
  %1006 = extractvalue %dx.types.ResRet.i32 %1002, 3
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.i32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.i32 %1007, 2
  %1011 = extractvalue %dx.types.ResRet.i32 %1007, 3
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.i32 %1012, 1
  %1015 = extractvalue %dx.types.ResRet.i32 %1012, 2
  %1016 = extractvalue %dx.types.ResRet.i32 %1012, 3
  %1017 = and i32 %1013, 65535
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = lshr i32 %1013, 16
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = and i32 %1014, 65535
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = lshr i32 %1014, 16
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = and i32 %1015, 65535
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = lshr i32 %1015, 16
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = and i32 %1016, 65535
  %1030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1029)  ; LegacyF16ToF32(value)
  %1031 = lshr i32 %1016, 16
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = and i32 %1008, 65535
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = lshr i32 %1008, 16
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = and i32 %1009, 65535
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = lshr i32 %1009, 16
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = and i32 %1010, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = lshr i32 %1010, 16
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = and i32 %1011, 65535
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = lshr i32 %1011, 16
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = and i32 %1003, 65535
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = lshr i32 %1003, 16
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = and i32 %1004, 65535
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = lshr i32 %1004, 16
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = and i32 %1005, 65535
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = lshr i32 %1005, 16
  %1060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1059)  ; LegacyF16ToF32(value)
  %1061 = and i32 %1006, 65535
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = lshr i32 %1006, 16
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = and i32 %1000, 65535
  %1066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1065)  ; LegacyF16ToF32(value)
  %1067 = lshr i32 %1000, 16
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = and i32 %1001, 65535
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  br label %1071

; <label>:1071                                    ; preds = %998, %995
  %1072 = phi float [ %1070, %998 ], [ 0.000000e+00, %995 ]
  %1073 = phi float [ %1068, %998 ], [ 0.000000e+00, %995 ]
  %1074 = phi float [ %1066, %998 ], [ 0.000000e+00, %995 ]
  %1075 = phi float [ %1064, %998 ], [ 0.000000e+00, %995 ]
  %1076 = phi float [ %1062, %998 ], [ 0.000000e+00, %995 ]
  %1077 = phi float [ %1060, %998 ], [ 0.000000e+00, %995 ]
  %1078 = phi float [ %1058, %998 ], [ 0.000000e+00, %995 ]
  %1079 = phi float [ %1056, %998 ], [ 0.000000e+00, %995 ]
  %1080 = phi float [ %1054, %998 ], [ 0.000000e+00, %995 ]
  %1081 = phi float [ %1052, %998 ], [ 0.000000e+00, %995 ]
  %1082 = phi float [ %1050, %998 ], [ 0.000000e+00, %995 ]
  %1083 = phi float [ %1048, %998 ], [ 0.000000e+00, %995 ]
  %1084 = phi float [ %1046, %998 ], [ 0.000000e+00, %995 ]
  %1085 = phi float [ %1044, %998 ], [ 0.000000e+00, %995 ]
  %1086 = phi float [ %1042, %998 ], [ 0.000000e+00, %995 ]
  %1087 = phi float [ %1040, %998 ], [ 0.000000e+00, %995 ]
  %1088 = phi float [ %1038, %998 ], [ 0.000000e+00, %995 ]
  %1089 = phi float [ %1036, %998 ], [ 0.000000e+00, %995 ]
  %1090 = phi float [ %1034, %998 ], [ 0.000000e+00, %995 ]
  %1091 = phi float [ %1032, %998 ], [ 0.000000e+00, %995 ]
  %1092 = phi float [ %1030, %998 ], [ 0.000000e+00, %995 ]
  %1093 = phi float [ %1028, %998 ], [ 0.000000e+00, %995 ]
  %1094 = phi float [ %1026, %998 ], [ 0.000000e+00, %995 ]
  %1095 = phi float [ %1024, %998 ], [ 0.000000e+00, %995 ]
  %1096 = phi float [ %1022, %998 ], [ 0.000000e+00, %995 ]
  %1097 = phi float [ %1020, %998 ], [ 0.000000e+00, %995 ]
  %1098 = phi float [ %1018, %998 ], [ 0.000000e+00, %995 ]
  %1099 = fcmp fast olt float %996, 1.000000e+00
  br i1 %1099, label %1100, label %1760, !dx.controlflow.hints !75

; <label>:1100                                    ; preds = %1071
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1104 = fsub fast float %288, %1102
  %1105 = fsub fast float %289, %1103
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.CBufRet.f32 %1106, 1
  %1109 = fmul fast float %1104, %1107
  %1110 = fmul fast float %1105, %1108
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1113 = fmul fast float %1112, %1109
  %1114 = extractvalue %dx.types.CBufRet.f32 %1111, 1
  %1115 = fadd fast float %1113, %1114
  %1116 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1117 = fmul fast float %1116, %1110
  %1118 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1119 = fadd fast float %1117, %1118
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1115, float %1119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1126 = fsub fast float %1124, %1125
  %1127 = fmul fast float %1126, %1121
  %1128 = fadd fast float %1127, %1125
  %1129 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1130 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1131 = fsub fast float %1129, %1130
  %1132 = fmul fast float %1131, %1122
  %1133 = fadd fast float %1132, %1130
  %1134 = fsub fast float %290, %1128
  %1135 = fsub fast float %1133, %1128
  %1136 = fdiv fast float %1134, %1135
  %1137 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = fmul fast float %1139, %1137
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1142 = fadd fast float %1140, %1141
  %1143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %1115, float %1119, float %1142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.CBufRet.f32 %1147, 1
  %1150 = extractvalue %dx.types.CBufRet.f32 %1147, 2
  %1151 = fmul fast float %1148, %1144
  %1152 = fmul fast float %1149, %1145
  %1153 = fmul fast float %1150, %1146
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.CBufRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1158 = fadd fast float %1151, %1155
  %1159 = fadd fast float %1152, %1156
  %1160 = fadd fast float %1153, %1157
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1163 = fmul fast float %1162, %1109
  %1164 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1165 = fadd fast float %1163, %1164
  %1166 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  %1167 = fmul fast float %1166, %1110
  %1168 = extractvalue %dx.types.CBufRet.f32 %1161, 3
  %1169 = fadd fast float %1167, %1168
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1174 = extractvalue %dx.types.CBufRet.f32 %1170, 3
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1165, float %1169, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1184 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1165, float %1169, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.ResRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.ResRet.f32 %1185, 2
  %1189 = extractvalue %dx.types.ResRet.f32 %1185, 3
  %1190 = fmul fast float %1181, %1158
  %1191 = fmul fast float %1186, %1158
  %1192 = fmul fast float %1188, %1158
  %1193 = fmul fast float %1184, %1158
  %1194 = fadd fast float %1190, %1171
  %1195 = fadd fast float %1191, %1172
  %1196 = fadd fast float %1192, %1173
  %1197 = fadd fast float %1193, %1174
  %1198 = fmul fast float %1182, %1158
  %1199 = fmul fast float %1187, %1158
  %1200 = fadd fast float %1198, %1176
  %1201 = fadd fast float %1199, %1177
  %1202 = fmul fast float %1183, %1158
  %1203 = fmul fast float %1189, %1158
  %1204 = fadd fast float %1202, %1178
  %1205 = fadd fast float %1203, %1179
  %1206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1165, float %1169, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = extractvalue %dx.types.ResRet.f32 %1206, 3
  %1211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1165, float %1169, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.ResRet.f32 %1211, 2
  %1215 = extractvalue %dx.types.ResRet.f32 %1211, 3
  %1216 = fmul fast float %1207, %1159
  %1217 = fmul fast float %1212, %1159
  %1218 = fmul fast float %1214, %1159
  %1219 = fmul fast float %1210, %1159
  %1220 = fadd fast float %1194, %1216
  %1221 = fadd fast float %1195, %1217
  %1222 = fadd fast float %1196, %1218
  %1223 = fadd fast float %1197, %1219
  %1224 = fmul fast float %1208, %1159
  %1225 = fmul fast float %1213, %1159
  %1226 = fadd fast float %1200, %1224
  %1227 = fadd fast float %1201, %1225
  %1228 = fmul fast float %1209, %1159
  %1229 = fmul fast float %1215, %1159
  %1230 = fadd fast float %1204, %1228
  %1231 = fadd fast float %1205, %1229
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1165, float %1169, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1165, float %1169, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = fmul fast float %1233, %1160
  %1243 = fmul fast float %1238, %1160
  %1244 = fmul fast float %1240, %1160
  %1245 = fmul fast float %1236, %1160
  %1246 = fadd fast float %1220, %1242
  %1247 = fadd fast float %1221, %1243
  %1248 = fadd fast float %1222, %1244
  %1249 = fadd fast float %1223, %1245
  %1250 = fmul fast float %1234, %1160
  %1251 = fmul fast float %1239, %1160
  %1252 = fadd fast float %1226, %1250
  %1253 = fadd fast float %1227, %1251
  %1254 = fmul fast float %1235, %1160
  %1255 = fmul fast float %1241, %1160
  %1256 = fadd fast float %1230, %1254
  %1257 = fadd fast float %1231, %1255
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = fsub fast float %288, %1259
  %1261 = fsub fast float %1102, %288
  %1262 = call float @dx.op.binary.f32(i32 35, float %1261, float %1260)  ; FMax(a,b)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1264 = fsub fast float %289, %1263
  %1265 = fsub fast float %1103, %289
  %1266 = call float @dx.op.binary.f32(i32 35, float %1265, float %1264)  ; FMax(a,b)
  %1267 = call float @dx.op.binary.f32(i32 35, float %1262, float %1266)  ; FMax(a,b)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1106, 3
  %1269 = fmul fast float %1268, %1267
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1275 = extractvalue %dx.types.CBufRet.f32 %1271, 3
  %1276 = fsub fast float %1272, %1246
  %1277 = fsub fast float %1273, %1247
  %1278 = fsub fast float %1274, %1248
  %1279 = fsub fast float %1275, %1249
  %1280 = fmul fast float %1276, %1270
  %1281 = fmul fast float %1277, %1270
  %1282 = fmul fast float %1278, %1270
  %1283 = fmul fast float %1279, %1270
  %1284 = fadd fast float %1280, %1246
  %1285 = fadd fast float %1281, %1247
  %1286 = fadd fast float %1282, %1248
  %1287 = fadd fast float %1283, %1249
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = fsub fast float %1289, %1252
  %1292 = fsub fast float %1290, %1253
  %1293 = fmul fast float %1291, %1270
  %1294 = fmul fast float %1292, %1270
  %1295 = fadd fast float %1293, %1252
  %1296 = fadd fast float %1294, %1253
  %1297 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1298 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1299 = fsub fast float %1297, %1256
  %1300 = fsub fast float %1298, %1257
  %1301 = fmul fast float %1299, %1270
  %1302 = fmul fast float %1300, %1270
  %1303 = fadd fast float %1301, %1256
  %1304 = fadd fast float %1302, %1257
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = fmul fast float %1306, %1284
  %1308 = fmul fast float %1306, %1285
  %1309 = fmul fast float %1306, %1286
  %1310 = fmul fast float %1306, %1287
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1313 = fmul fast float %1312, %1295
  %1314 = fmul fast float %1312, %1296
  %1315 = fadd fast float %1313, %1307
  %1316 = fadd fast float %1314, %1309
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = fmul fast float %1318, %1303
  %1320 = fmul fast float %1318, %1304
  %1321 = fadd fast float %1315, %1319
  %1322 = fadd fast float %1316, %1320
  %1323 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1324 = fmul fast float %1323, %1284
  %1325 = fmul fast float %1323, %1285
  %1326 = fmul fast float %1323, %1286
  %1327 = fmul fast float %1323, %1287
  %1328 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1329 = fmul fast float %1328, %1295
  %1330 = fmul fast float %1328, %1296
  %1331 = fadd fast float %1329, %1324
  %1332 = fadd fast float %1330, %1326
  %1333 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1334 = fmul fast float %1333, %1303
  %1335 = fmul fast float %1333, %1304
  %1336 = fadd fast float %1331, %1334
  %1337 = fadd fast float %1332, %1335
  %1338 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1339 = fmul fast float %1338, %1284
  %1340 = fmul fast float %1338, %1285
  %1341 = fmul fast float %1338, %1286
  %1342 = fmul fast float %1338, %1287
  %1343 = extractvalue %dx.types.CBufRet.f32 %1311, 2
  %1344 = fmul fast float %1343, %1295
  %1345 = fmul fast float %1343, %1296
  %1346 = fadd fast float %1344, %1339
  %1347 = fadd fast float %1345, %1341
  %1348 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1349 = fmul fast float %1348, %1303
  %1350 = fmul fast float %1348, %1304
  %1351 = fadd fast float %1346, %1349
  %1352 = fadd fast float %1347, %1350
  %1353 = fmul fast float %1340, %1340
  %1354 = fmul fast float %1352, %1352
  %1355 = fmul fast float %1342, %1342
  %1356 = fadd fast float %1355, %1353
  %1357 = fadd fast float %1356, %1354
  %1358 = call float @dx.op.unary.f32(i32 24, float %1357)  ; Sqrt(value)
  %1359 = fcmp fast ugt float %1358, 0.000000e+00
  br i1 %1359, label %1360, label %1375, !dx.controlflow.hints !76

; <label>:1360                                    ; preds = %1100
  %1361 = fsub fast float -0.000000e+00, %1342
  %1362 = fdiv fast float %1361, %1358
  %1363 = fsub fast float -0.000000e+00, %1340
  %1364 = fdiv fast float %1363, %1358
  %1365 = fdiv fast float %1352, %1358
  %1366 = fmul fast float %1351, 0x3FE279A760000000
  %1367 = fmul fast float %1364, %1340
  %1368 = fmul fast float %1365, %1352
  %1369 = fmul fast float %1362, %1342
  %1370 = fadd fast float %1367, %1369
  %1371 = fsub fast float %1370, %1368
  %1372 = call float @dx.op.unary.f32(i32 6, float %1371)  ; FAbs(value)
  %1373 = fadd fast float %1372, 0x3DDB7CDFE0000000
  %1374 = fdiv fast float %1366, %1373
  br label %1375

; <label>:1375                                    ; preds = %1360, %1100
  %1376 = phi float [ %1374, %1360 ], [ 1.000000e+00, %1100 ]
  %1377 = fmul fast float %1325, %1325
  %1378 = fmul fast float %1337, %1337
  %1379 = fmul fast float %1327, %1327
  %1380 = fadd fast float %1379, %1377
  %1381 = fadd fast float %1380, %1378
  %1382 = call float @dx.op.unary.f32(i32 24, float %1381)  ; Sqrt(value)
  %1383 = fcmp fast ugt float %1382, 0.000000e+00
  br i1 %1383, label %1384, label %1399, !dx.controlflow.hints !76

; <label>:1384                                    ; preds = %1375
  %1385 = fsub fast float -0.000000e+00, %1327
  %1386 = fdiv fast float %1385, %1382
  %1387 = fsub fast float -0.000000e+00, %1325
  %1388 = fdiv fast float %1387, %1382
  %1389 = fdiv fast float %1337, %1382
  %1390 = fmul fast float %1336, 0x3FE279A760000000
  %1391 = fmul fast float %1388, %1325
  %1392 = fmul fast float %1389, %1337
  %1393 = fmul fast float %1386, %1327
  %1394 = fadd fast float %1391, %1393
  %1395 = fsub fast float %1394, %1392
  %1396 = call float @dx.op.unary.f32(i32 6, float %1395)  ; FAbs(value)
  %1397 = fadd fast float %1396, 0x3DDB7CDFE0000000
  %1398 = fdiv fast float %1390, %1397
  br label %1399

; <label>:1399                                    ; preds = %1384, %1375
  %1400 = phi float [ %1398, %1384 ], [ 1.000000e+00, %1375 ]
  %1401 = call float @dx.op.binary.f32(i32 36, float %1400, float %1376)  ; FMin(a,b)
  %1402 = fmul fast float %1308, %1308
  %1403 = fmul fast float %1322, %1322
  %1404 = fmul fast float %1310, %1310
  %1405 = fadd fast float %1404, %1402
  %1406 = fadd fast float %1405, %1403
  %1407 = call float @dx.op.unary.f32(i32 24, float %1406)  ; Sqrt(value)
  %1408 = fcmp fast ugt float %1407, 0.000000e+00
  br i1 %1408, label %1409, label %1424, !dx.controlflow.hints !76

; <label>:1409                                    ; preds = %1399
  %1410 = fsub fast float -0.000000e+00, %1310
  %1411 = fdiv fast float %1410, %1407
  %1412 = fsub fast float -0.000000e+00, %1308
  %1413 = fdiv fast float %1412, %1407
  %1414 = fdiv fast float %1322, %1407
  %1415 = fmul fast float %1321, 0x3FE279A760000000
  %1416 = fmul fast float %1413, %1308
  %1417 = fmul fast float %1414, %1322
  %1418 = fmul fast float %1411, %1310
  %1419 = fadd fast float %1416, %1418
  %1420 = fsub fast float %1419, %1417
  %1421 = call float @dx.op.unary.f32(i32 6, float %1420)  ; FAbs(value)
  %1422 = fadd fast float %1421, 0x3DDB7CDFE0000000
  %1423 = fdiv fast float %1415, %1422
  br label %1424

; <label>:1424                                    ; preds = %1409, %1399
  %1425 = phi float [ %1423, %1409 ], [ 1.000000e+00, %1399 ]
  %1426 = call float @dx.op.binary.f32(i32 36, float %1425, float %1401)  ; FMin(a,b)
  %1427 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1428 = fcmp fast olt float %1427, 1.000000e+00
  br i1 %1428, label %1429, label %1439, !dx.controlflow.hints !77

; <label>:1429                                    ; preds = %1424
  %1430 = fmul fast float %1427, %1308
  %1431 = fmul fast float %1427, %1322
  %1432 = fmul fast float %1427, %1310
  %1433 = fmul fast float %1427, %1325
  %1434 = fmul fast float %1427, %1337
  %1435 = fmul fast float %1427, %1327
  %1436 = fmul fast float %1427, %1340
  %1437 = fmul fast float %1427, %1352
  %1438 = fmul fast float %1427, %1342
  br label %1439

; <label>:1439                                    ; preds = %1429, %1424
  %1440 = phi float [ %1436, %1429 ], [ %1340, %1424 ]
  %1441 = phi float [ %1437, %1429 ], [ %1352, %1424 ]
  %1442 = phi float [ %1438, %1429 ], [ %1342, %1424 ]
  %1443 = phi float [ %1433, %1429 ], [ %1325, %1424 ]
  %1444 = phi float [ %1434, %1429 ], [ %1337, %1424 ]
  %1445 = phi float [ %1435, %1429 ], [ %1327, %1424 ]
  %1446 = phi float [ %1430, %1429 ], [ %1308, %1424 ]
  %1447 = phi float [ %1431, %1429 ], [ %1322, %1424 ]
  %1448 = phi float [ %1432, %1429 ], [ %1310, %1424 ]
  %1449 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1321)  ; FMax(a,b)
  %1450 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1336)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1351)  ; FMax(a,b)
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  %1454 = fcmp fast ogt float %1453, 0.000000e+00
  %1455 = fcmp fast oge float %1109, 0.000000e+00
  %1456 = and i1 %1455, %1454
  %1457 = fcmp fast ole float %1109, 1.000000e+00
  %1458 = and i1 %1457, %1456
  %1459 = fcmp fast oge float %1110, 0.000000e+00
  %1460 = and i1 %1459, %1458
  %1461 = fcmp fast ole float %1110, 1.000000e+00
  %1462 = and i1 %1461, %1460
  br i1 %1462, label %1463, label %1608, !dx.controlflow.hints !78

; <label>:1463                                    ; preds = %1439
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 2
  %1466 = extractvalue %dx.types.CBufRet.f32 %1464, 3
  %1467 = fmul fast float %1465, %1109
  %1468 = fmul fast float %1466, %1110
  %1469 = call float @dx.op.unary.f32(i32 27, float %1467)  ; Round_ni(value)
  %1470 = call float @dx.op.unary.f32(i32 27, float %1468)  ; Round_ni(value)
  %1471 = fptosi float %1469 to i32
  %1472 = fptosi float %1470 to i32
  %1473 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1471, i32 %1472, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 65535
  %1476 = lshr i32 %1474, 16
  %1477 = icmp eq i32 %1475, 65535
  br i1 %1477, label %1514, label %1478, !dx.controlflow.hints !79

; <label>:1478                                    ; preds = %1463
  %1479 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %1480 = extractvalue %dx.types.CBufRet.f32 %1464, 0
  %1481 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1482 = fmul fast float %1480, %1109
  %1483 = fmul fast float %1481, %1110
  %1484 = fmul fast float %1482, 1.250000e-01
  %1485 = fmul fast float %1483, 1.250000e-01
  %1486 = call float @dx.op.unary.f32(i32 27, float %1484)  ; Round_ni(value)
  %1487 = call float @dx.op.unary.f32(i32 27, float %1485)  ; Round_ni(value)
  %1488 = fmul fast float %1486, 8.000000e+00
  %1489 = fmul fast float %1487, 8.000000e+00
  %1490 = and i32 %1474, 255
  %1491 = lshr i32 %1474, 8
  %1492 = and i32 %1491, 255
  %1493 = mul nuw nsw i32 %1490, 9
  %1494 = uitofp i32 %1493 to float
  %1495 = mul nuw nsw i32 %1492, 9
  %1496 = uitofp i32 %1495 to float
  %1497 = fadd fast float %1494, 5.000000e-01
  %1498 = fadd fast float %1497, %1482
  %1499 = fsub fast float %1498, %1488
  %1500 = fadd fast float %1496, 5.000000e-01
  %1501 = fadd fast float %1500, %1483
  %1502 = fsub fast float %1501, %1489
  %1503 = fdiv fast float %1499, %1453
  %1504 = fdiv fast float %1502, %1479
  %1505 = fmul fast float %1137, 4.375000e-01
  %1506 = fadd fast float %1505, 3.125000e-02
  %1507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %1503, float %1504, float %1506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = fadd fast float %1508, %1449
  %1512 = fadd fast float %1509, %1450
  %1513 = fadd fast float %1510, %1451
  br label %1514

; <label>:1514                                    ; preds = %1478, %1463
  %1515 = phi float [ %1513, %1478 ], [ %1451, %1463 ]
  %1516 = phi float [ %1512, %1478 ], [ %1450, %1463 ]
  %1517 = phi float [ %1511, %1478 ], [ %1449, %1463 ]
  %1518 = icmp eq i32 %1476, 65535
  br i1 %1518, label %1608, label %1519, !dx.controlflow.hints !80

; <label>:1519                                    ; preds = %1514
  %1520 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %1521 = extractvalue %dx.types.CBufRet.f32 %1464, 0
  %1522 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1523 = fmul fast float %1521, %1109
  %1524 = fmul fast float %1522, %1110
  %1525 = fmul fast float %1523, 1.250000e-01
  %1526 = fmul fast float %1524, 1.250000e-01
  %1527 = call float @dx.op.unary.f32(i32 27, float %1525)  ; Round_ni(value)
  %1528 = call float @dx.op.unary.f32(i32 27, float %1526)  ; Round_ni(value)
  %1529 = fmul fast float %1527, 8.000000e+00
  %1530 = fmul fast float %1528, 8.000000e+00
  %1531 = fsub fast float %1523, %1529
  %1532 = fsub fast float %1524, %1530
  %1533 = fadd fast float %1531, 5.000000e-01
  %1534 = fadd fast float %1532, 5.000000e-01
  %1535 = and i32 %1476, 255
  %1536 = lshr i32 %1474, 24
  %1537 = mul nuw nsw i32 %1535, 9
  %1538 = uitofp i32 %1537 to float
  %1539 = mul nuw nsw i32 %1536, 9
  %1540 = uitofp i32 %1539 to float
  %1541 = fadd fast float %1533, %1538
  %1542 = fadd fast float %1534, %1540
  %1543 = fdiv fast float %1541, %1453
  %1544 = fdiv fast float %1542, %1520
  %1545 = fmul fast float %1137, 4.375000e-01
  %1546 = fadd fast float %1545, 3.125000e-02
  %1547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %1543, float %1544, float %1546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.ResRet.f32 %1547, 1
  %1550 = extractvalue %dx.types.ResRet.f32 %1547, 2
  %1551 = fadd fast float %1545, 5.312500e-01
  %1552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %1543, float %1544, float %1551, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.f32 %1552, 2
  %1556 = fmul fast float %1553, 2.000000e+00
  %1557 = fmul fast float %1554, 2.000000e+00
  %1558 = fmul fast float %1555, 2.000000e+00
  %1559 = fadd fast float %1556, -1.000000e+00
  %1560 = fadd fast float %1557, -1.000000e+00
  %1561 = fadd fast float %1558, -1.000000e+00
  %1562 = fmul fast float %1559, %1559
  %1563 = fmul fast float %1560, %1560
  %1564 = fadd fast float %1562, %1563
  %1565 = fmul fast float %1561, %1561
  %1566 = fadd fast float %1564, %1565
  %1567 = call float @dx.op.unary.f32(i32 24, float %1566)  ; Sqrt(value)
  %1568 = fcmp fast ogt float %1567, 0.000000e+00
  br i1 %1568, label %1569, label %1573, !dx.controlflow.hints !81

; <label>:1569                                    ; preds = %1519
  %1570 = fdiv fast float %1559, %1567
  %1571 = fdiv fast float %1560, %1567
  %1572 = fdiv fast float %1561, %1567
  br label %1573

; <label>:1573                                    ; preds = %1569, %1519
  %1574 = phi float [ %1570, %1569 ], [ 0.000000e+00, %1519 ]
  %1575 = phi float [ %1571, %1569 ], [ 0.000000e+00, %1519 ]
  %1576 = phi float [ %1572, %1569 ], [ 0.000000e+00, %1519 ]
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1580 = fsub fast float %288, %1578
  %1581 = fsub fast float %289, %1579
  %1582 = fmul fast float %1580, %1580
  %1583 = fmul fast float %1581, %1581
  %1584 = fadd fast float %1582, %1583
  %1585 = call float @dx.op.unary.f32(i32 24, float %1584)  ; Sqrt(value)
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.CBufRet.f32 %1586, 1
  %1589 = fsub fast float %1585, %1587
  %1590 = fdiv fast float %1589, %1588
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1592 = fmul fast float %1591, 2.000000e+00
  %1593 = fsub fast float 3.000000e+00, %1592
  %1594 = fmul fast float %1591, %1591
  %1595 = fmul fast float %1594, %1593
  %1596 = call float @dx.op.dot3.f32(i32 55, float %1574, float %1575, float %1576, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1596)  ; FMax(a,b)
  %1598 = fmul fast float %1597, 0x400C5BF8A0000000
  %1599 = fmul fast float %1595, %1548
  %1600 = fmul fast float %1599, %1598
  %1601 = fadd fast float %1600, %1517
  %1602 = fmul fast float %1595, %1549
  %1603 = fmul fast float %1602, %1598
  %1604 = fadd fast float %1603, %1516
  %1605 = fmul fast float %1595, %1550
  %1606 = fmul fast float %1605, %1598
  %1607 = fadd fast float %1606, %1515
  br label %1608

; <label>:1608                                    ; preds = %1573, %1514, %1439
  %1609 = phi float [ %1607, %1573 ], [ %1515, %1514 ], [ %1451, %1439 ]
  %1610 = phi float [ %1604, %1573 ], [ %1516, %1514 ], [ %1450, %1439 ]
  %1611 = phi float [ %1601, %1573 ], [ %1517, %1514 ], [ %1449, %1439 ]
  %1612 = fcmp fast ogt float %290, %1133
  %1613 = and i1 %1455, %1612
  %1614 = and i1 %1457, %1613
  %1615 = and i1 %1459, %1614
  %1616 = and i1 %1461, %1615
  br i1 %1616, label %1617, label %1674, !dx.controlflow.hints !82

; <label>:1617                                    ; preds = %1608
  %1618 = fmul fast float %1135, 0x3FC24924A0000000
  %1619 = fsub fast float %290, %1133
  %1620 = fdiv fast float %1619, %1618
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1628 = fsub fast float %1623, %1611
  %1629 = fsub fast float %1625, %1446
  %1630 = fsub fast float %1626, %1447
  %1631 = fsub fast float %1627, %1448
  %1632 = fmul fast float %1628, %1621
  %1633 = fmul fast float %1629, %1621
  %1634 = fmul fast float %1630, %1621
  %1635 = fmul fast float %1631, %1621
  %1636 = fadd fast float %1632, %1611
  %1637 = fadd fast float %1633, %1446
  %1638 = fadd fast float %1634, %1447
  %1639 = fadd fast float %1635, %1448
  %1640 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1645 = fsub fast float %1640, %1610
  %1646 = fsub fast float %1642, %1443
  %1647 = fsub fast float %1643, %1444
  %1648 = fsub fast float %1644, %1445
  %1649 = fmul fast float %1645, %1621
  %1650 = fmul fast float %1646, %1621
  %1651 = fmul fast float %1647, %1621
  %1652 = fmul fast float %1648, %1621
  %1653 = fadd fast float %1649, %1610
  %1654 = fadd fast float %1650, %1443
  %1655 = fadd fast float %1651, %1444
  %1656 = fadd fast float %1652, %1445
  %1657 = extractvalue %dx.types.CBufRet.f32 %1622, 2
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1662 = fsub fast float %1657, %1609
  %1663 = fsub fast float %1659, %1440
  %1664 = fsub fast float %1660, %1441
  %1665 = fsub fast float %1661, %1442
  %1666 = fmul fast float %1662, %1621
  %1667 = fmul fast float %1663, %1621
  %1668 = fmul fast float %1664, %1621
  %1669 = fmul fast float %1665, %1621
  %1670 = fadd fast float %1666, %1609
  %1671 = fadd fast float %1667, %1440
  %1672 = fadd fast float %1668, %1441
  %1673 = fadd fast float %1669, %1442
  br label %1674

; <label>:1674                                    ; preds = %1617, %1608
  %1675 = phi float [ %1670, %1617 ], [ %1609, %1608 ]
  %1676 = phi float [ %1671, %1617 ], [ %1440, %1608 ]
  %1677 = phi float [ %1672, %1617 ], [ %1441, %1608 ]
  %1678 = phi float [ %1673, %1617 ], [ %1442, %1608 ]
  %1679 = phi float [ %1653, %1617 ], [ %1610, %1608 ]
  %1680 = phi float [ %1654, %1617 ], [ %1443, %1608 ]
  %1681 = phi float [ %1655, %1617 ], [ %1444, %1608 ]
  %1682 = phi float [ %1656, %1617 ], [ %1445, %1608 ]
  %1683 = phi float [ %1636, %1617 ], [ %1611, %1608 ]
  %1684 = phi float [ %1637, %1617 ], [ %1446, %1608 ]
  %1685 = phi float [ %1638, %1617 ], [ %1447, %1608 ]
  %1686 = phi float [ %1639, %1617 ], [ %1448, %1608 ]
  %1687 = extractvalue %dx.types.CBufRet.f32 %1258, 3
  %1688 = fmul fast float %1687, %1683
  %1689 = fmul fast float %1687, %1679
  %1690 = fmul fast float %1687, %1675
  %1691 = fmul fast float %1684, 1.500000e+00
  %1692 = fmul fast float %1691, %1687
  %1693 = fmul fast float %1685, 1.500000e+00
  %1694 = fmul fast float %1693, %1687
  %1695 = fmul fast float %1686, 1.500000e+00
  %1696 = fmul fast float %1695, %1687
  %1697 = fmul fast float %1680, 1.500000e+00
  %1698 = fmul fast float %1697, %1687
  %1699 = fmul fast float %1681, 1.500000e+00
  %1700 = fmul fast float %1699, %1687
  %1701 = fmul fast float %1682, 1.500000e+00
  %1702 = fmul fast float %1701, %1687
  %1703 = fmul fast float %1676, 1.500000e+00
  %1704 = fmul fast float %1703, %1687
  %1705 = fmul fast float %1677, 1.500000e+00
  %1706 = fmul fast float %1705, %1687
  %1707 = fmul fast float %1678, 1.500000e+00
  %1708 = fmul fast float %1707, %1687
  %1709 = fsub fast float %1098, %1688
  %1710 = fmul fast float %1709, %996
  %1711 = fadd fast float %1710, %1688
  %1712 = fsub fast float %1097, %1692
  %1713 = fmul fast float %1712, %996
  %1714 = fadd fast float %1713, %1692
  %1715 = fsub fast float %1096, %1694
  %1716 = fmul fast float %1715, %996
  %1717 = fadd fast float %1716, %1694
  %1718 = fsub fast float %1095, %1696
  %1719 = fmul fast float %1718, %996
  %1720 = fadd fast float %1719, %1696
  %1721 = fmul fast float %1094, %996
  %1722 = fmul fast float %1093, %996
  %1723 = fmul fast float %1092, %996
  %1724 = fmul fast float %1091, %996
  %1725 = fmul fast float %1090, %996
  %1726 = fsub fast float %1089, %1689
  %1727 = fmul fast float %1726, %996
  %1728 = fadd fast float %1727, %1689
  %1729 = fsub fast float %1088, %1698
  %1730 = fmul fast float %1729, %996
  %1731 = fadd fast float %1730, %1698
  %1732 = fsub fast float %1087, %1700
  %1733 = fmul fast float %1732, %996
  %1734 = fadd fast float %1733, %1700
  %1735 = fsub fast float %1086, %1702
  %1736 = fmul fast float %1735, %996
  %1737 = fadd fast float %1736, %1702
  %1738 = fmul fast float %1085, %996
  %1739 = fmul fast float %1084, %996
  %1740 = fmul fast float %1083, %996
  %1741 = fmul fast float %1082, %996
  %1742 = fmul fast float %1081, %996
  %1743 = fsub fast float %1080, %1690
  %1744 = fmul fast float %1743, %996
  %1745 = fadd fast float %1744, %1690
  %1746 = fsub fast float %1079, %1704
  %1747 = fmul fast float %1746, %996
  %1748 = fadd fast float %1747, %1704
  %1749 = fsub fast float %1078, %1706
  %1750 = fmul fast float %1749, %996
  %1751 = fadd fast float %1750, %1706
  %1752 = fsub fast float %1077, %1708
  %1753 = fmul fast float %1752, %996
  %1754 = fadd fast float %1753, %1708
  %1755 = fmul fast float %1076, %996
  %1756 = fmul fast float %1075, %996
  %1757 = fmul fast float %1074, %996
  %1758 = fmul fast float %1073, %996
  %1759 = fmul fast float %1072, %996
  br label %1760

; <label>:1760                                    ; preds = %1674, %1071
  %1761 = phi float [ %1759, %1674 ], [ %1072, %1071 ]
  %1762 = phi float [ %1758, %1674 ], [ %1073, %1071 ]
  %1763 = phi float [ %1757, %1674 ], [ %1074, %1071 ]
  %1764 = phi float [ %1756, %1674 ], [ %1075, %1071 ]
  %1765 = phi float [ %1755, %1674 ], [ %1076, %1071 ]
  %1766 = phi float [ %1754, %1674 ], [ %1077, %1071 ]
  %1767 = phi float [ %1751, %1674 ], [ %1078, %1071 ]
  %1768 = phi float [ %1748, %1674 ], [ %1079, %1071 ]
  %1769 = phi float [ %1745, %1674 ], [ %1080, %1071 ]
  %1770 = phi float [ %1742, %1674 ], [ %1081, %1071 ]
  %1771 = phi float [ %1741, %1674 ], [ %1082, %1071 ]
  %1772 = phi float [ %1740, %1674 ], [ %1083, %1071 ]
  %1773 = phi float [ %1739, %1674 ], [ %1084, %1071 ]
  %1774 = phi float [ %1738, %1674 ], [ %1085, %1071 ]
  %1775 = phi float [ %1737, %1674 ], [ %1086, %1071 ]
  %1776 = phi float [ %1734, %1674 ], [ %1087, %1071 ]
  %1777 = phi float [ %1731, %1674 ], [ %1088, %1071 ]
  %1778 = phi float [ %1728, %1674 ], [ %1089, %1071 ]
  %1779 = phi float [ %1725, %1674 ], [ %1090, %1071 ]
  %1780 = phi float [ %1724, %1674 ], [ %1091, %1071 ]
  %1781 = phi float [ %1723, %1674 ], [ %1092, %1071 ]
  %1782 = phi float [ %1722, %1674 ], [ %1093, %1071 ]
  %1783 = phi float [ %1721, %1674 ], [ %1094, %1071 ]
  %1784 = phi float [ %1720, %1674 ], [ %1095, %1071 ]
  %1785 = phi float [ %1717, %1674 ], [ %1096, %1071 ]
  %1786 = phi float [ %1714, %1674 ], [ %1097, %1071 ]
  %1787 = phi float [ %1711, %1674 ], [ %1098, %1071 ]
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1790 = fmul fast float %1789, %1789
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1795 = fmul fast float %1787, 0x3FD20DD760000000
  %1796 = fmul fast float %1794, %1785
  %1797 = fmul fast float %1794, %1794
  %1798 = fmul fast float %1797, 0x3FEE471020000000
  %1799 = fadd fast float %1798, 0xBFD42F6020000000
  %1800 = fmul fast float %1799, %1781
  %1801 = fmul fast float %1792, %1784
  %1802 = fmul fast float %1793, %1786
  %1803 = fmul fast float %1794, 0x3FF17B1420000000
  %1804 = fmul fast float %1790, %1780
  %1805 = fmul fast float %1804, %1792
  %1806 = fmul fast float %1805, %1803
  %1807 = fmul fast float %1790, %1782
  %1808 = fmul fast float %1807, %1793
  %1809 = fmul fast float %1808, %1803
  %1810 = fmul fast float %1792, %1792
  %1811 = fmul fast float %1793, %1793
  %1812 = fsub fast float %1810, %1811
  %1813 = fmul fast float %1779, 0x3FE17B1420000000
  %1814 = fmul fast float %1813, %1812
  %1815 = fmul fast float %1783, 0x3FF17B1420000000
  %1816 = fmul fast float %1815, %1793
  %1817 = fmul fast float %1816, %1792
  %1818 = fadd fast float %1814, %1817
  %1819 = fadd fast float %1818, %1800
  %1820 = fmul fast float %1819, %1790
  %1821 = fsub fast float %1802, %1796
  %1822 = fadd fast float %1821, %1801
  %1823 = fmul fast float %1822, 0x3FDF454380000000
  %1824 = fmul fast float %1823, %1789
  %1825 = fsub fast float %1795, %1806
  %1826 = fsub fast float %1825, %1809
  %1827 = fadd fast float %1826, %1820
  %1828 = fadd fast float %1827, %1824
  %1829 = fmul fast float %1778, 0x3FD20DD760000000
  %1830 = fmul fast float %1794, %1776
  %1831 = fmul fast float %1799, %1772
  %1832 = fmul fast float %1792, %1775
  %1833 = fmul fast float %1793, %1777
  %1834 = fmul fast float %1790, %1771
  %1835 = fmul fast float %1834, %1792
  %1836 = fmul fast float %1835, %1803
  %1837 = fmul fast float %1790, %1773
  %1838 = fmul fast float %1837, %1793
  %1839 = fmul fast float %1838, %1803
  %1840 = fmul fast float %1770, 0x3FE17B1420000000
  %1841 = fmul fast float %1840, %1812
  %1842 = fmul fast float %1774, 0x3FF17B1420000000
  %1843 = fmul fast float %1842, %1793
  %1844 = fmul fast float %1843, %1792
  %1845 = fadd fast float %1841, %1844
  %1846 = fadd fast float %1845, %1831
  %1847 = fmul fast float %1846, %1790
  %1848 = fsub fast float %1833, %1830
  %1849 = fadd fast float %1848, %1832
  %1850 = fmul fast float %1849, 0x3FDF454380000000
  %1851 = fmul fast float %1850, %1789
  %1852 = fsub fast float %1829, %1836
  %1853 = fsub fast float %1852, %1839
  %1854 = fadd fast float %1853, %1847
  %1855 = fadd fast float %1854, %1851
  %1856 = fmul fast float %1769, 0x3FD20DD760000000
  %1857 = fmul fast float %1794, %1767
  %1858 = fmul fast float %1799, %1763
  %1859 = fmul fast float %1792, %1766
  %1860 = fmul fast float %1793, %1768
  %1861 = fmul fast float %1790, %1762
  %1862 = fmul fast float %1861, %1792
  %1863 = fmul fast float %1862, %1803
  %1864 = fmul fast float %1790, %1764
  %1865 = fmul fast float %1864, %1793
  %1866 = fmul fast float %1865, %1803
  %1867 = fmul fast float %1761, 0x3FE17B1420000000
  %1868 = fmul fast float %1867, %1812
  %1869 = fmul fast float %1765, 0x3FF17B1420000000
  %1870 = fmul fast float %1869, %1793
  %1871 = fmul fast float %1870, %1792
  %1872 = fadd fast float %1868, %1871
  %1873 = fadd fast float %1872, %1858
  %1874 = fmul fast float %1873, %1790
  %1875 = fsub fast float %1860, %1857
  %1876 = fadd fast float %1875, %1859
  %1877 = fmul fast float %1876, 0x3FDF454380000000
  %1878 = fmul fast float %1877, %1789
  %1879 = fsub fast float %1856, %1863
  %1880 = fsub fast float %1879, %1866
  %1881 = fadd fast float %1880, %1874
  %1882 = fadd fast float %1881, %1878
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 3
  %1885 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %1886 = fmul fast float %1885, %1884
  %1887 = fmul fast float %1886, %1828
  %1888 = fmul fast float %1886, %1855
  %1889 = fmul fast float %1886, %1882
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %1892 = fcmp fast une float %1891, 0.000000e+00
  %1893 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1894 = extractvalue %dx.types.CBufRet.f32 %1890, 1
  %1895 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  br i1 %1892, label %1896, label %1918, !dx.controlflow.hints !83

; <label>:1896                                    ; preds = %1760
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.CBufRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.CBufRet.f32 %1897, 2
  %1901 = call float @dx.op.dot3.f32(i32 55, float %1893, float %1894, float %1895, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %1902 = fcmp fast ogt float %947, 0.000000e+00
  %1903 = select i1 %1902, float 1.000000e+00, float -1.000000e+00
  %1904 = fmul fast float %1903, 5.000000e-01
  %1905 = fmul fast float %1904, %1901
  %1906 = fmul fast float %1903, %947
  %1907 = fadd fast float %1905, 4.921875e-01
  %1908 = fadd fast float %1906, -3.125000e-02
  %1909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1907, float 0x3FB25F3060000000, float %1908, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = fmul fast float %1910, 0x400921FB60000000
  %1914 = fmul fast float %1913, %1912
  %1915 = fmul fast float %1914, %1898
  %1916 = fmul fast float %1914, %1899
  %1917 = fmul fast float %1914, %1900
  br label %1918

; <label>:1918                                    ; preds = %1896, %1760
  %1919 = phi float [ %1915, %1896 ], [ 0.000000e+00, %1760 ]
  %1920 = phi float [ %1916, %1896 ], [ 0.000000e+00, %1760 ]
  %1921 = phi float [ %1917, %1896 ], [ 0.000000e+00, %1760 ]
  %1922 = fdiv fast float 1.000000e+00, %1893
  %1923 = fdiv fast float 1.000000e+00, %1894
  %1924 = fdiv fast float 1.000000e+00, %1895
  %1925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1925, 0
  %1927 = fmul fast float %1926, %1893
  %1928 = fmul fast float %1926, %1894
  %1929 = fmul fast float %1926, %1895
  %1930 = fadd fast float %1927, %288
  %1931 = fsub fast float -0.000000e+00, %1930
  %1932 = fadd fast float %1928, %289
  %1933 = fsub fast float -0.000000e+00, %1932
  %1934 = fadd fast float %1929, %290
  br i1 %304, label %2006, label %1935, !dx.controlflow.hints !45

; <label>:1935                                    ; preds = %1918
  %1936 = extractvalue %dx.types.CBufRet.f32 %1925, 1
  %1937 = fcmp fast ogt float %1936, %1926
  br i1 %1937, label %1938, label %1940, !dx.controlflow.hints !46

; <label>:1938                                    ; preds = %1935
  %1939 = fsub fast float %1936, %1926
  br label %1997

; <label>:1940                                    ; preds = %1935
  %1941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1942 = extractvalue %dx.types.CBufRet.i32 %1941, 3
  %1943 = icmp eq i32 %1942, 0
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 2
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1948 = fsub fast float %1945, %1934
  %1949 = fadd fast float %1948, %1947
  %1950 = fsub fast float 0xC7EFFFFFE0000000, %1934
  br i1 %1943, label %1960, label %1951, !dx.controlflow.hints !39

; <label>:1951                                    ; preds = %1940
  %1952 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1931, float %1933, float %1949)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1893, float %1894, float %1895)  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = fdiv fast float 1.000000e+00, %1953
  %1955 = fmul fast float %1954, %1952
  %1956 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1931, float %1933, float %1950)  ; Dot3(ax,ay,az,bx,by,bz)
  %1957 = fmul fast float %1954, %1956
  %1958 = call float @dx.op.binary.f32(i32 36, float %1955, float %1957)  ; FMin(a,b)
  %1959 = call float @dx.op.binary.f32(i32 35, float %1955, float %1957)  ; FMax(a,b)
  br label %1990

; <label>:1960                                    ; preds = %1940
  %1961 = extractvalue %dx.types.CBufRet.f32 %1944, 0
  %1962 = extractvalue %dx.types.CBufRet.f32 %1944, 1
  %1963 = extractvalue %dx.types.CBufRet.f32 %1946, 0
  %1964 = extractvalue %dx.types.CBufRet.f32 %1946, 1
  %1965 = fsub fast float %1961, %1930
  %1966 = fmul fast float %1922, %1965
  %1967 = fadd fast float %1965, %1963
  %1968 = fmul fast float %1967, %1922
  %1969 = call float @dx.op.binary.f32(i32 36, float %1966, float %1968)  ; FMin(a,b)
  %1970 = call float @dx.op.binary.f32(i32 35, float %1966, float %1968)  ; FMax(a,b)
  %1971 = fsub fast float %1962, %1932
  %1972 = fmul fast float %1923, %1971
  %1973 = fadd fast float %1971, %1964
  %1974 = fmul fast float %1973, %1923
  %1975 = call float @dx.op.binary.f32(i32 36, float %1972, float %1974)  ; FMin(a,b)
  %1976 = call float @dx.op.binary.f32(i32 35, float %1969, float %1975)  ; FMax(a,b)
  %1977 = call float @dx.op.binary.f32(i32 35, float %1972, float %1974)  ; FMax(a,b)
  %1978 = call float @dx.op.binary.f32(i32 36, float %1970, float %1977)  ; FMin(a,b)
  %1979 = fmul fast float %1924, %1950
  %1980 = fmul fast float %1924, %1949
  %1981 = call float @dx.op.binary.f32(i32 36, float %1979, float %1980)  ; FMin(a,b)
  %1982 = call float @dx.op.binary.f32(i32 35, float %1976, float %1981)  ; FMax(a,b)
  %1983 = call float @dx.op.binary.f32(i32 35, float %1979, float %1980)  ; FMax(a,b)
  %1984 = call float @dx.op.binary.f32(i32 36, float %1978, float %1983)  ; FMin(a,b)
  %1985 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1982)  ; FMax(a,b)
  %1986 = fcmp fast ult float %1984, %1985
  br i1 %1986, label %1990, label %1987, !dx.controlflow.hints !40

; <label>:1987                                    ; preds = %1960
  %1988 = call float @dx.op.binary.f32(i32 36, float %1982, float %1984)  ; FMin(a,b)
  %1989 = call float @dx.op.binary.f32(i32 35, float %1982, float %1984)  ; FMax(a,b)
  br label %1990

; <label>:1990                                    ; preds = %1987, %1960, %1951
  %1991 = phi float [ %1958, %1951 ], [ %1988, %1987 ], [ 0.000000e+00, %1960 ]
  %1992 = phi float [ %1959, %1951 ], [ %1989, %1987 ], [ 0.000000e+00, %1960 ]
  %1993 = fcmp fast ogt float %1991, 0.000000e+00
  br i1 %1993, label %1997, label %1994, !dx.controlflow.hints !47

; <label>:1994                                    ; preds = %1990
  %1995 = fcmp fast ugt float %1992, 0.000000e+00
  br i1 %1995, label %1996, label %1997, !dx.controlflow.hints !48

; <label>:1996                                    ; preds = %1994
  br label %1997

; <label>:1997                                    ; preds = %1996, %1994, %1990, %1938
  %1998 = phi float [ %1939, %1938 ], [ 0.000000e+00, %1996 ], [ 0x47EFFFFFE0000000, %1994 ], [ %1991, %1990 ]
  %1999 = phi i32 [ %202, %1938 ], [ %202, %1996 ], [ 0, %1994 ], [ %202, %1990 ]
  %2000 = icmp ne i32 %1999, 0
  %2001 = zext i1 %2000 to i32
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 2
  %2004 = call float @dx.op.binary.f32(i32 35, float %1998, float %2003)  ; FMax(a,b)
  %2005 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2004)  ; FMin(a,b)
  br label %2006

; <label>:2006                                    ; preds = %1997, %1918
  %2007 = phi float [ %2005, %1997 ], [ 0x47EFFFFFE0000000, %1918 ]
  %2008 = phi i32 [ %2001, %1997 ], [ 0, %1918 ]
  %2009 = fsub fast float %1930, %475
  %2010 = fsub fast float %1932, %476
  %2011 = fmul fast float %2009, %480
  %2012 = fmul fast float %2010, %481
  %2013 = call float @dx.op.binary.f32(i32 36, float %2011, float %2012)  ; FMin(a,b)
  %2014 = fcmp fast olt float %2013, 0.000000e+00
  %2015 = call float @dx.op.binary.f32(i32 35, float %2011, float %2012)  ; FMax(a,b)
  %2016 = fcmp fast ogt float %2015, 1.000000e+00
  %2017 = or i1 %2014, %2016
  %2018 = fcmp fast olt float %1934, %489
  %2019 = or i1 %2017, %2018
  %2020 = fcmp fast ogt float %1934, %496
  %2021 = or i1 %2019, %2020
  %2022 = extractvalue %dx.types.CBufRet.f32 %479, 0
  br i1 %2021, label %2023, label %2051, !dx.controlflow.hints !54

; <label>:2023                                    ; preds = %2006
  %2024 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %2025 = fsub fast float %475, %1930
  %2026 = fmul fast float %2025, %1922
  %2027 = fadd fast float %2025, %2022
  %2028 = fmul fast float %2027, %1922
  %2029 = call float @dx.op.binary.f32(i32 36, float %2026, float %2028)  ; FMin(a,b)
  %2030 = call float @dx.op.binary.f32(i32 35, float %2026, float %2028)  ; FMax(a,b)
  %2031 = fsub fast float %476, %1932
  %2032 = fmul fast float %2031, %1923
  %2033 = fadd fast float %2031, %2024
  %2034 = fmul fast float %2033, %1923
  %2035 = call float @dx.op.binary.f32(i32 36, float %2032, float %2034)  ; FMin(a,b)
  %2036 = call float @dx.op.binary.f32(i32 35, float %2029, float %2035)  ; FMax(a,b)
  %2037 = call float @dx.op.binary.f32(i32 35, float %2032, float %2034)  ; FMax(a,b)
  %2038 = call float @dx.op.binary.f32(i32 36, float %2030, float %2037)  ; FMin(a,b)
  %2039 = fsub fast float %489, %1934
  %2040 = fmul fast float %2039, %1924
  %2041 = fsub fast float %493, %1934
  %2042 = fadd fast float %2041, %495
  %2043 = fmul fast float %2042, %1924
  %2044 = call float @dx.op.binary.f32(i32 36, float %2040, float %2043)  ; FMin(a,b)
  %2045 = call float @dx.op.binary.f32(i32 35, float %2036, float %2044)  ; FMax(a,b)
  %2046 = call float @dx.op.binary.f32(i32 35, float %2040, float %2043)  ; FMax(a,b)
  %2047 = call float @dx.op.binary.f32(i32 36, float %2038, float %2046)  ; FMin(a,b)
  %2048 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2045)  ; FMax(a,b)
  %2049 = fcmp fast oge float %2047, %2048
  %2050 = select i1 %2049, float %2045, float 1.000000e+07
  br label %2066

; <label>:2051                                    ; preds = %2006
  %2052 = fsub fast float 1.000000e+00, %2012
  %2053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %2011, float %2052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.ResRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.ResRet.f32 %2053, 2
  %2057 = extractvalue %dx.types.ResRet.f32 %2053, 3
  %2058 = fmul fast float %2022, 9.765625e-04
  %2059 = fcmp fast oeq float %2054, 0.000000e+00
  %2060 = fcmp ule float %1934, %2056
  %2061 = fcmp uge float %1934, %2055
  %2062 = or i1 %2061, %2060
  %2063 = or i1 %2059, %2062
  %2064 = zext i1 %2063 to i32
  %2065 = xor i32 %2064, 1
  br label %2066

; <label>:2066                                    ; preds = %2051, %2023
  %2067 = phi float [ %2050, %2023 ], [ %2058, %2051 ]
  %2068 = phi float [ %275, %2023 ], [ %2054, %2051 ]
  %2069 = phi float [ %276, %2023 ], [ %2055, %2051 ]
  %2070 = phi float [ %277, %2023 ], [ %2056, %2051 ]
  %2071 = phi float [ %278, %2023 ], [ %2057, %2051 ]
  %2072 = phi i32 [ 0, %2023 ], [ %2065, %2051 ]
  %2073 = icmp eq i32 %2072, 0
  %2074 = call float @dx.op.binary.f32(i32 35, float %2067, float %584)  ; FMax(a,b)
  %2075 = call float @dx.op.binary.f32(i32 36, float %2007, float %2074)  ; FMin(a,b)
  br i1 %587, label %2088, label %2076, !dx.controlflow.hints !58

; <label>:2076                                    ; preds = %2066
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2079 = extractvalue %dx.types.CBufRet.f32 %2077, 2
  %2080 = fmul fast float %2078, %1926
  %2081 = fdiv fast float %2080, %1926
  %2082 = fadd fast float %2081, 1.000000e+00
  %2083 = call float @dx.op.unary.f32(i32 23, float %2082)  ; Log(value)
  %2084 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2083)  ; FMin(a,b)
  %2085 = fmul fast float %2079, %1926
  %2086 = fmul fast float %2085, %2084
  %2087 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2086)  ; FMin(a,b)
  br label %2088

; <label>:2088                                    ; preds = %2076, %2066
  %2089 = phi float [ %2087, %2076 ], [ 0x47EFFFFFE0000000, %2066 ]
  %2090 = icmp eq i32 %2008, 0
  br i1 %2090, label %2164, label %2091, !dx.controlflow.hints !59

; <label>:2091                                    ; preds = %2088
  %2092 = fmul fast float %602, %1926
  %2093 = call float @dx.op.unary.f32(i32 23, float %2092)  ; Log(value)
  %2094 = fmul fast float %2093, 0x3FE62E4300000000
  %2095 = call float @dx.op.binary.f32(i32 35, float %2094, float 1.000000e+00)  ; FMax(a,b)
  %2096 = fmul fast float %2095, %2089
  %2097 = call float @dx.op.binary.f32(i32 36, float %2096, float %2075)  ; FMin(a,b)
  %2098 = call float @dx.op.binary.f32(i32 35, float %2097, float 0.000000e+00)  ; FMax(a,b)
  %2099 = fcmp fast ogt float %2098, 0x3F1A36E2E0000000
  %2100 = fadd fast float %1927, %1930
  %2101 = fadd fast float %1928, %1932
  %2102 = select i1 %2099, float %2100, float %1930
  %2103 = select i1 %2099, float %2101, float %1932
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2107 = fsub fast float %2102, %2105
  %2108 = fsub fast float %2103, %2106
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.CBufRet.f32 %2109, 1
  %2112 = fmul fast float %2107, %2110
  %2113 = fmul fast float %2108, %2111
  %2114 = fsub fast float 1.000000e+00, %2113
  %2115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.i32 %2115, 3
  %2117 = icmp eq i32 %2116, 0
  br i1 %2117, label %2124, label %2118, !dx.controlflow.hints !49

; <label>:2118                                    ; preds = %2091
  %2119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %2112, float %2114, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  %2121 = extractvalue %dx.types.ResRet.f32 %2119, 1
  %2122 = extractvalue %dx.types.ResRet.f32 %2119, 2
  %2123 = extractvalue %dx.types.ResRet.f32 %2119, 3
  br label %2130

; <label>:2124                                    ; preds = %2091
  %2125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %2112, float %2114, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2126 = extractvalue %dx.types.ResRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.ResRet.f32 %2125, 1
  %2128 = extractvalue %dx.types.ResRet.f32 %2125, 2
  %2129 = extractvalue %dx.types.ResRet.f32 %2125, 3
  br label %2130

; <label>:2130                                    ; preds = %2124, %2118
  %2131 = phi float [ %2120, %2118 ], [ %2126, %2124 ]
  %2132 = phi float [ %2121, %2118 ], [ %2127, %2124 ]
  %2133 = phi float [ %2122, %2118 ], [ %2128, %2124 ]
  %2134 = phi float [ %2123, %2118 ], [ %2129, %2124 ]
  %2135 = extractvalue %dx.types.CBufRet.f32 %2109, 3
  %2136 = fmul fast float %2135, %2132
  %2137 = fmul fast float %2136, %2131
  %2138 = fsub fast float %2136, %2137
  %2139 = fcmp fast ole float %2138, 0.000000e+00
  %2140 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2141 = fadd fast float %2137, %2140
  %2142 = fmul fast float %2135, %2133
  %2143 = fadd fast float %2142, %2140
  %2144 = fdiv fast float 1.000000e+00, %2138
  %2145 = select i1 %2139, float 1.000000e+06, float %2144
  %2146 = fsub fast float %1934, %2141
  %2147 = fmul fast float %2145, %2146
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2150 = fmul fast float %2149, %2148
  %2151 = fsub fast float %2149, %2150
  %2152 = fcmp fast olt float %1934, %2143
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 3
  %2155 = fmul fast float %2154, 3.000000e+00
  %2156 = select i1 %2152, float %2155, float 3.000000e+00
  %2157 = fmul fast float %2151, %2156
  %2158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2158, 2
  %2160 = fmul fast float %1926, 0x3FD5555560000000
  %2161 = fmul fast float %2160, %2134
  %2162 = fmul fast float %2161, %2159
  %2163 = fmul fast float %2162, %2157
  br label %2164

; <label>:2164                                    ; preds = %2130, %2088
  %2165 = phi float [ %2163, %2130 ], [ 0.000000e+00, %2088 ]
  br i1 %587, label %2213, label %2166, !dx.controlflow.hints !61

; <label>:2166                                    ; preds = %2164
  %2167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2167, 0
  %2169 = fsub fast float %2168, %1934
  %2170 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1931, float %1933, float %2169)  ; Dot3(ax,ay,az,bx,by,bz)
  %2171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1893, float %1894, float %1895)  ; Dot3(ax,ay,az,bx,by,bz)
  %2172 = fdiv fast float 1.000000e+00, %2171
  %2173 = fmul fast float %2172, %2170
  %2174 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2173)  ; FMax(a,b)
  %2175 = fcmp fast olt float %1895, 0.000000e+00
  %2176 = call float @dx.op.binary.f32(i32 36, float %1926, float %2174)  ; FMin(a,b)
  br i1 %2175, label %2178, label %2177, !dx.controlflow.hints !62

; <label>:2177                                    ; preds = %2166
  br label %2178

; <label>:2178                                    ; preds = %2177, %2166
  %2179 = phi float [ 0.000000e+00, %2177 ], [ %2176, %2166 ]
  %2180 = phi float [ %2176, %2177 ], [ %1926, %2166 ]
  %2181 = phi float [ %2176, %2177 ], [ 0.000000e+00, %2166 ]
  %2182 = phi float [ %1926, %2177 ], [ %2176, %2166 ]
  %2183 = fsub fast float %2180, %2179
  %2184 = extractvalue %dx.types.CBufRet.f32 %2167, 1
  %2185 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2184)  ; FMin(a,b)
  %2186 = fsub fast float %1934, %2168
  %2187 = fmul fast float %2185, 0x3FF7154760000000
  %2188 = fmul fast float %2187, %2186
  %2189 = call float @dx.op.unary.f32(i32 21, float %2188)  ; Exp(value)
  %2190 = fmul fast float %1895, 0x3FF7154760000000
  %2191 = fmul fast float %2190, %2182
  %2192 = fmul fast float %2191, %2185
  %2193 = call float @dx.op.unary.f32(i32 21, float %2192)  ; Exp(value)
  %2194 = fmul fast float %2190, %2181
  %2195 = fmul fast float %2194, %2185
  %2196 = call float @dx.op.unary.f32(i32 21, float %2195)  ; Exp(value)
  %2197 = fsub fast float %2193, %2196
  %2198 = fmul fast float %2197, %2189
  %2199 = fmul fast float %2185, %1895
  %2200 = fdiv fast float %2198, %2199
  %2201 = fadd fast float %2183, %2200
  %2202 = call float @dx.op.unary.f32(i32 6, float %1895)  ; FAbs(value)
  %2203 = fcmp fast olt float %2202, 0x3F0FFB4800000000
  %2204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2186)  ; FMax(a,b)
  %2205 = fmul fast float %2204, 0x3FF7154760000000
  %2206 = fmul fast float %2205, %2184
  %2207 = call float @dx.op.unary.f32(i32 21, float %2206)  ; Exp(value)
  %2208 = fmul fast float %2207, %1926
  %2209 = select i1 %2203, float %2208, float %2201
  %2210 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %2211 = fmul fast float %2209, %2210
  %2212 = fadd fast float %2211, %2165
  br label %2213

; <label>:2213                                    ; preds = %2178, %2164
  %2214 = phi float [ %2212, %2178 ], [ %2165, %2164 ]
  br i1 %2073, label %2340, label %2215, !dx.controlflow.hints !63

; <label>:2215                                    ; preds = %2213
  %2216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.i32 %2216, 0
  %2218 = icmp ne i32 %2217, 0
  %2219 = zext i1 %2218 to i32
  %2220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.i32 %2220, 0
  %2222 = icmp eq i32 %2221, 0
  br i1 %2222, label %2256, label %2223

; <label>:2223                                    ; preds = %2215
  br label %2224

; <label>:2224                                    ; preds = %2251, %2223
  %2225 = phi i32 [ %2252, %2251 ], [ 0, %2223 ]
  %2226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2225, i32 0)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.ResRet.f32 %2226, 1
  %2229 = extractvalue %dx.types.ResRet.f32 %2226, 2
  %2230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2225, i32 16)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.f32 %2230, 0
  %2232 = extractvalue %dx.types.ResRet.f32 %2230, 1
  %2233 = extractvalue %dx.types.ResRet.f32 %2230, 2
  %2234 = fsub fast float %2227, %2231
  %2235 = fsub fast float %2228, %2232
  %2236 = fsub fast float %2229, %2233
  %2237 = fadd fast float %2231, %2227
  %2238 = fadd fast float %2232, %2228
  %2239 = fadd fast float %2233, %2229
  %2240 = fcmp fast olt float %1930, %2234
  %2241 = fcmp fast olt float %1932, %2235
  %2242 = fcmp fast olt float %1934, %2236
  %2243 = or i1 %2240, %2241
  %2244 = or i1 %2242, %2243
  %2245 = fcmp fast ogt float %1930, %2237
  %2246 = fcmp fast ogt float %1932, %2238
  %2247 = fcmp fast ogt float %1934, %2239
  %2248 = or i1 %2245, %2246
  %2249 = or i1 %2247, %2248
  %2250 = or i1 %2244, %2249
  br i1 %2250, label %2251, label %2254, !dx.controlflow.hints !64

; <label>:2251                                    ; preds = %2224
  %2252 = add nuw i32 %2225, 1
  %2253 = icmp ult i32 %2252, %2221
  br i1 %2253, label %2224, label %2254

; <label>:2254                                    ; preds = %2251, %2224
  %2255 = phi i32 [ 255, %2251 ], [ %2225, %2224 ]
  br label %2256

; <label>:2256                                    ; preds = %2254, %2215
  %2257 = phi i32 [ 255, %2215 ], [ %2255, %2254 ]
  %2258 = icmp eq i32 %2257, 255
  br i1 %2258, label %2264, label %2259, !dx.controlflow.hints !65

; <label>:2259                                    ; preds = %2256
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2257, i32 156)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = icmp ne i32 %2261, 0
  %2263 = zext i1 %2262 to i32
  br label %2264

; <label>:2264                                    ; preds = %2259, %2256
  %2265 = phi i32 [ %2263, %2259 ], [ %2219, %2256 ]
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %2267, label %2336, !dx.controlflow.hints !66

; <label>:2267                                    ; preds = %2264
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2270 = extractvalue %dx.types.CBufRet.f32 %492, 0
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 2
  %2273 = extractvalue %dx.types.CBufRet.f32 %2271, 3
  br i1 %2258, label %2284, label %2274, !dx.controlflow.hints !67

; <label>:2274                                    ; preds = %2267
  %2275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2257, i32 60)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.f32 %2275, 0
  %2277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2257, i32 64)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.ResRet.f32 %2277, 1
  %2280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2257, i32 72)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.f32 %2280, 0
  %2282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2257, i32 96)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  br label %2284

; <label>:2284                                    ; preds = %2274, %2267
  %2285 = phi float [ %2276, %2274 ], [ %495, %2267 ]
  %2286 = phi float [ %2281, %2274 ], [ %493, %2267 ]
  %2287 = phi float [ %2283, %2274 ], [ %2270, %2267 ]
  %2288 = phi float [ %2278, %2274 ], [ %2272, %2267 ]
  %2289 = phi float [ %2279, %2274 ], [ %2273, %2267 ]
  %2290 = call float @dx.op.binary.f32(i32 35, float %2068, float 0.000000e+00)  ; FMax(a,b)
  %2291 = call float @dx.op.binary.f32(i32 36, float %2290, float 1.000000e+00)  ; FMin(a,b)
  %2292 = call float @dx.op.unary.f32(i32 24, float %2291)  ; Sqrt(value)
  %2293 = call float @dx.op.binary.f32(i32 35, float %2071, float 0x3F847AE140000000)  ; FMax(a,b)
  %2294 = fsub fast float %2069, %1934
  %2295 = fsub fast float %1934, %2070
  %2296 = call float @dx.op.binary.f32(i32 36, float %2295, float %2294)  ; FMin(a,b)
  %2297 = fdiv fast float %2296, %2293
  %2298 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2299 = fsub fast float %1934, %2286
  %2300 = fdiv fast float %2299, %2285
  %2301 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2302 = fsub fast float 1.000000e+00, %2301
  %2303 = fmul float %2298, %2302
  %2304 = fmul float %2303, %2303
  %2305 = fmul fast float %2292, %2269
  %2306 = fmul fast float %2305, %2304
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 2
  %2309 = extractvalue %dx.types.CBufRet.f32 %2307, 1
  %2310 = fsub fast float %2306, %2309
  %2311 = fsub fast float %2308, %2309
  %2312 = fdiv fast float %2310, %2311
  %2313 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2314 = fmul fast float %2313, %2287
  %2315 = fcmp fast ogt float %2289, 0.000000e+00
  br i1 %2315, label %2316, label %2336, !dx.controlflow.hints !68

; <label>:2316                                    ; preds = %2284
  %2317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.f32 %2317, 0
  %2319 = extractvalue %dx.types.CBufRet.f32 %2317, 1
  %2320 = extractvalue %dx.types.CBufRet.f32 %2317, 2
  %2321 = fsub fast float %1930, %2318
  %2322 = fsub fast float %1932, %2319
  %2323 = fsub fast float %1934, %2320
  %2324 = fmul fast float %2321, %2321
  %2325 = fmul fast float %2322, %2322
  %2326 = fadd fast float %2324, %2325
  %2327 = fmul fast float %2323, %2323
  %2328 = fadd fast float %2326, %2327
  %2329 = call float @dx.op.unary.f32(i32 24, float %2328)  ; Sqrt(value)
  %2330 = fsub fast float %2329, %2288
  %2331 = fsub fast float %2289, %2288
  %2332 = fdiv fast float %2330, %2331
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2334 = fmul fast float %2333, %2333
  %2335 = fmul fast float %2334, %2314
  br label %2336

; <label>:2336                                    ; preds = %2316, %2284, %2264
  %2337 = phi float [ 0.000000e+00, %2264 ], [ %2335, %2316 ], [ %2314, %2284 ]
  %2338 = fmul fast float %2337, %1926
  %2339 = fadd fast float %2338, %2214
  br label %2340

; <label>:2340                                    ; preds = %2336, %2213
  %2341 = phi float [ %2339, %2336 ], [ %2214, %2213 ]
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 3
  %2344 = fmul fast float %2341, 0xBFF7154760000000
  %2345 = fmul fast float %2344, %2343
  %2346 = call float @dx.op.unary.f32(i32 21, float %2345)  ; Exp(value)
  %2347 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2348 = fmul fast float %2347, %1919
  %2349 = fmul fast float %2347, %1920
  %2350 = fmul fast float %2347, %1921
  %2351 = fadd fast float %2348, %1887
  %2352 = fadd fast float %2349, %1888
  %2353 = fadd fast float %2350, %1889
  %2354 = fsub fast float 1.000000e+00, %956
  %2355 = fmul fast float %948, %284
  %2356 = fmul fast float %2355, %2354
  %2357 = fmul fast float %2356, %2351
  %2358 = fmul fast float %949, %284
  %2359 = fmul fast float %2358, %2354
  %2360 = fmul fast float %2359, %2352
  %2361 = fmul fast float %950, %284
  %2362 = fmul fast float %2361, %2354
  %2363 = fmul fast float %2362, %2353
  %2364 = fadd fast float %2357, %285
  %2365 = fadd fast float %2360, %286
  %2366 = fadd fast float %2363, %287
  %2367 = fdiv fast float %933, %612
  %2368 = fadd fast float %612, %291
  %2369 = fmul fast float %291, %291
  %2370 = fmul fast float %2368, %2368
  %2371 = fsub fast float %2369, %2370
  %2372 = fmul fast float %2371, -5.000000e-01
  %2373 = fmul fast float %2372, %2367
  %2374 = fadd fast float %2373, %283
  %2375 = fadd fast float %933, %294
  %2376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.i32 %2376, 0
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2405, label %2379, !dx.controlflow.hints !84

; <label>:2379                                    ; preds = %2340
  %2380 = icmp ne i32 %299, 0
  %2381 = zext i1 %2380 to i32
  %2382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2383 = extractvalue %dx.types.CBufRet.f32 %2382, 2
  %2384 = extractvalue %dx.types.CBufRet.f32 %2382, 0
  %2385 = fsub fast float %2368, %2384
  %2386 = fmul fast float %2385, %2383
  %2387 = call float @dx.op.unary.f32(i32 7, float %2386)  ; Saturate(value)
  %2388 = fadd fast float %2387, -5.000000e-01
  %2389 = fmul fast float %2388, 2.000000e+00
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 2
  %2392 = fcmp fast olt float %2389, %2391
  br i1 %2392, label %2393, label %2405, !dx.controlflow.hints !85

; <label>:2393                                    ; preds = %2379
  %2394 = fmul fast float %2389, %2389
  %2395 = fmul fast float %2354, %284
  %2396 = fmul fast float %2389, %2395
  %2397 = fmul fast float %2394, %2395
  %2398 = fmul fast float %2396, %2394
  %2399 = fmul fast float %2394, %2394
  %2400 = fmul fast float %2399, %2395
  %2401 = fadd fast float %2396, %295
  %2402 = fadd fast float %2397, %296
  %2403 = fadd fast float %2398, %297
  %2404 = fadd fast float %2400, %298
  br label %2405

; <label>:2405                                    ; preds = %2393, %2379, %2340
  %2406 = phi float [ %295, %2340 ], [ %2401, %2393 ], [ %295, %2379 ]
  %2407 = phi float [ %296, %2340 ], [ %2402, %2393 ], [ %296, %2379 ]
  %2408 = phi float [ %297, %2340 ], [ %2403, %2393 ], [ %297, %2379 ]
  %2409 = phi float [ %298, %2340 ], [ %2404, %2393 ], [ %298, %2379 ]
  %2410 = phi i32 [ %299, %2340 ], [ 1, %2393 ], [ %2381, %2379 ]
  %2411 = fmul fast float %956, %284
  br label %2412

; <label>:2412                                    ; preds = %2405, %951
  %2413 = phi float [ %952, %951 ], [ %2368, %2405 ]
  %2414 = phi float [ %275, %951 ], [ %2068, %2405 ]
  %2415 = phi float [ %276, %951 ], [ %2069, %2405 ]
  %2416 = phi float [ %277, %951 ], [ %2070, %2405 ]
  %2417 = phi float [ %278, %951 ], [ %2071, %2405 ]
  %2418 = phi float [ %283, %951 ], [ %2374, %2405 ]
  %2419 = phi float [ %284, %951 ], [ %2411, %2405 ]
  %2420 = phi float [ %285, %951 ], [ %2364, %2405 ]
  %2421 = phi float [ %286, %951 ], [ %2365, %2405 ]
  %2422 = phi float [ %287, %951 ], [ %2366, %2405 ]
  %2423 = phi float [ %294, %951 ], [ %2375, %2405 ]
  %2424 = phi float [ %295, %951 ], [ %2406, %2405 ]
  %2425 = phi float [ %296, %951 ], [ %2407, %2405 ]
  %2426 = phi float [ %297, %951 ], [ %2408, %2405 ]
  %2427 = phi float [ %298, %951 ], [ %2409, %2405 ]
  %2428 = phi i32 [ %299, %951 ], [ %2410, %2405 ]
  %2429 = fmul fast float %612, %113
  %2430 = fmul fast float %612, %114
  %2431 = fmul fast float %612, %115
  %2432 = fadd fast float %2429, %288
  %2433 = fadd fast float %2430, %289
  %2434 = fadd fast float %2431, %290
  %2435 = fcmp fast olt float %2413, %252
  %2436 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %2437 = fcmp fast olt float %2436, %2419
  %2438 = and i1 %2435, %2437
  br i1 %2438, label %274, label %2439

; <label>:2439                                    ; preds = %2412
  br label %2440

; <label>:2440                                    ; preds = %2439, %228
  %2441 = phi float [ 0.000000e+00, %228 ], [ %2418, %2439 ]
  %2442 = phi float [ 1.000000e+00, %228 ], [ %2419, %2439 ]
  %2443 = phi float [ 0.000000e+00, %228 ], [ %2420, %2439 ]
  %2444 = phi float [ 0.000000e+00, %228 ], [ %2421, %2439 ]
  %2445 = phi float [ 0.000000e+00, %228 ], [ %2422, %2439 ]
  %2446 = phi float [ 0.000000e+00, %228 ], [ %2423, %2439 ]
  %2447 = phi float [ 0.000000e+00, %228 ], [ %2424, %2439 ]
  %2448 = phi float [ 0.000000e+00, %228 ], [ %2425, %2439 ]
  %2449 = phi float [ 0.000000e+00, %228 ], [ %2426, %2439 ]
  %2450 = phi float [ 0.000000e+00, %228 ], [ %2427, %2439 ]
  %2451 = phi i32 [ 0, %228 ], [ %2428, %2439 ]
  %2452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.i32 %2452, 0
  %2454 = icmp eq i32 %2453, 0
  br i1 %2454, label %2496, label %2455, !dx.controlflow.hints !86

; <label>:2455                                    ; preds = %2440
  %2456 = icmp eq i32 %2451, 0
  br i1 %2456, label %2495, label %2457, !dx.controlflow.hints !87

; <label>:2457                                    ; preds = %2455
  %2458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.i32 %2458, 2
  %2460 = icmp eq i32 %2459, 0
  br i1 %2460, label %2467, label %2461, !dx.controlflow.hints !88

; <label>:2461                                    ; preds = %2457
  %2462 = fsub fast float 1.000000e+00, %2442
  %2463 = fdiv fast float %2447, %2462
  %2464 = fdiv fast float %2448, %2462
  %2465 = fdiv fast float %2449, %2462
  %2466 = fdiv fast float %2450, %2462
  br label %2472

; <label>:2467                                    ; preds = %2457
  %2468 = fadd fast float %2447, %2442
  %2469 = fadd fast float %2448, %2442
  %2470 = fadd fast float %2449, %2442
  %2471 = fadd fast float %2450, %2442
  br label %2472

; <label>:2472                                    ; preds = %2467, %2461
  %2473 = phi float [ %2463, %2461 ], [ %2468, %2467 ]
  %2474 = phi float [ %2464, %2461 ], [ %2469, %2467 ]
  %2475 = phi float [ %2465, %2461 ], [ %2470, %2467 ]
  %2476 = phi float [ %2466, %2461 ], [ %2471, %2467 ]
  %2477 = call float @dx.op.binary.f32(i32 35, float %2473, float -1.000000e+00)  ; FMax(a,b)
  %2478 = call float @dx.op.binary.f32(i32 35, float %2474, float -1.000000e+00)  ; FMax(a,b)
  %2479 = call float @dx.op.binary.f32(i32 35, float %2475, float -1.000000e+00)  ; FMax(a,b)
  %2480 = call float @dx.op.binary.f32(i32 35, float %2476, float -1.000000e+00)  ; FMax(a,b)
  %2481 = call float @dx.op.binary.f32(i32 36, float %2477, float 1.000000e+00)  ; FMin(a,b)
  %2482 = call float @dx.op.binary.f32(i32 36, float %2478, float 1.000000e+00)  ; FMin(a,b)
  %2483 = call float @dx.op.binary.f32(i32 36, float %2479, float 1.000000e+00)  ; FMin(a,b)
  %2484 = call float @dx.op.binary.f32(i32 36, float %2480, float 1.000000e+00)  ; FMin(a,b)
  %2485 = fmul fast float %2481, 1.500000e+00
  %2486 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2483, float %2485)  ; FMad(a,b,c)
  %2487 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2482, float 0.000000e+00)  ; FMad(a,b,c)
  %2488 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2484, float %2487)  ; FMad(a,b,c)
  %2489 = fmul fast float %2481, 0x3FEBB67AE0000000
  %2490 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2483, float %2489)  ; FMad(a,b,c)
  %2491 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2482, float 0.000000e+00)  ; FMad(a,b,c)
  %2492 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2484, float %2491)  ; FMad(a,b,c)
  %2493 = fadd fast float %2486, 5.000000e-01
  %2494 = fadd fast float %2490, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float %2493, float %2488, float %2494, float %2492, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2496

; <label>:2495                                    ; preds = %2455
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2496

; <label>:2496                                    ; preds = %2495, %2472, %2440
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 2
  %2499 = fsub fast float %2442, %2498
  %2500 = fdiv fast float %2499, %2498
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  %2502 = fmul fast float %2501, 2.000000e+00
  %2503 = fsub fast float 3.000000e+00, %2502
  %2504 = fmul fast float %2501, %2501
  %2505 = fmul fast float %2504, %2442
  %2506 = fmul fast float %2505, %2503
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.CBufRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.CBufRet.f32 %2507, 2
  %2511 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float %2508, float %2509, float %2510)  ; Dot3(ax,ay,az,bx,by,bz)
  %2512 = fmul fast float %2511, %2441
  %2513 = fcmp fast ogt float %2446, 0.000000e+00
  %2514 = fdiv fast float 1.000000e+00, %2446
  %2515 = fmul fast float %2512, %2514
  %2516 = select i1 %2513, float %2515, float %124
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.CBufRet.f32 %2517, 1
  %2520 = extractvalue %dx.types.CBufRet.f32 %2517, 2
  %2521 = fmul fast float %2518, %77
  %2522 = fmul fast float %2519, %77
  %2523 = fmul fast float %2520, %77
  %2524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.CBufRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.CBufRet.f32 %2524, 2
  %2528 = fmul fast float %2525, %78
  %2529 = fmul fast float %2526, %78
  %2530 = fmul fast float %2527, %78
  %2531 = fadd fast float %2528, %2521
  %2532 = fadd fast float %2529, %2522
  %2533 = fadd fast float %2530, %2523
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.CBufRet.f32 %2534, 1
  %2537 = extractvalue %dx.types.CBufRet.f32 %2534, 2
  %2538 = fadd fast float %2531, %2535
  %2539 = fadd fast float %2532, %2536
  %2540 = fadd fast float %2533, %2537
  %2541 = fmul fast float %2538, %2516
  %2542 = fmul fast float %2539, %2516
  %2543 = fmul fast float %2540, %2516
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.CBufRet.f32 %2544, 1
  %2547 = extractvalue %dx.types.CBufRet.f32 %2544, 2
  %2548 = extractvalue %dx.types.CBufRet.f32 %2544, 3
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.CBufRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.CBufRet.f32 %2549, 2
  %2553 = extractvalue %dx.types.CBufRet.f32 %2549, 3
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 0
  %2556 = extractvalue %dx.types.CBufRet.f32 %2554, 1
  %2557 = extractvalue %dx.types.CBufRet.f32 %2554, 2
  %2558 = extractvalue %dx.types.CBufRet.f32 %2554, 3
  %2559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2560 = extractvalue %dx.types.CBufRet.f32 %2559, 0
  %2561 = extractvalue %dx.types.CBufRet.f32 %2559, 1
  %2562 = extractvalue %dx.types.CBufRet.f32 %2559, 2
  %2563 = extractvalue %dx.types.CBufRet.f32 %2559, 3
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 3
  %2566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2566, 3
  %2568 = extractvalue %dx.types.CBufRet.f32 %2566, 0
  %2569 = extractvalue %dx.types.CBufRet.f32 %2566, 1
  %2570 = extractvalue %dx.types.CBufRet.f32 %2566, 2
  %2571 = fcmp fast olt float %2570, -5.000000e-01
  %2572 = call float @dx.op.dot3.f32(i32 55, float %2541, float %2542, float %2543, float %2541, float %2542, float %2543)  ; Dot3(ax,ay,az,bx,by,bz)
  %2573 = call float @dx.op.unary.f32(i32 25, float %2572)  ; Rsqrt(value)
  %2574 = fmul fast float %2573, %2572
  %2575 = fmul fast float %2573, %2541
  %2576 = fmul fast float %2573, %2542
  %2577 = fmul fast float %2573, %2543
  %2578 = fadd fast float %2574, %2548
  %2579 = call float @dx.op.dot3.f32(i32 55, float %2575, float %2576, float %2577, float %2545, float %2546, float %2547)  ; Dot3(ax,ay,az,bx,by,bz)
  %2580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.i32 %2580, 1
  %2582 = and i32 %2581, 1
  %2583 = icmp ne i32 %2582, 0
  %2584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.f32 %2584, 2
  %2586 = fcmp fast ogt float %2585, 0.000000e+00
  %2587 = and i1 %2583, %2586
  br i1 %2587, label %2588, label %2994, !dx.controlflow.hints !89

; <label>:2588                                    ; preds = %2496
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 3
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 2
  %2593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2594 = extractvalue %dx.types.CBufRet.f32 %2593, 2
  %2595 = fsub fast float %2592, %2594
  %2596 = and i32 %2581, 2
  %2597 = extractvalue %dx.types.CBufRet.i32 %2580, 0
  %2598 = call i32 @dx.op.binary.i32(i32 40, i32 %2597, i32 3)  ; UMin(a,b)
  %2599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2599, 0
  %2601 = extractvalue %dx.types.CBufRet.f32 %2599, 1
  %2602 = extractvalue %dx.types.CBufRet.f32 %2593, 0
  %2603 = extractvalue %dx.types.CBufRet.f32 %2593, 1
  %2604 = fsub fast float %2600, %2602
  %2605 = fsub fast float %2601, %2603
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 0
  %2608 = fcmp fast ogt float %2607, 0.000000e+00
  %2609 = fsub fast float -0.000000e+00, %2604
  %2610 = fsub fast float -0.000000e+00, %2605
  %2611 = call float @dx.op.dot2.f32(i32 54, float %2575, float %2576, float %2575, float %2576)  ; Dot2(ax,ay,bx,by)
  %2612 = call float @dx.op.dot2.f32(i32 54, float %2575, float %2576, float %2609, float %2610)  ; Dot2(ax,ay,bx,by)
  %2613 = fmul fast float %2612, 2.000000e+00
  %2614 = call float @dx.op.dot2.f32(i32 54, float %2609, float %2610, float %2609, float %2610)  ; Dot2(ax,ay,bx,by)
  %2615 = fmul fast float %2607, %2607
  %2616 = fsub fast float %2614, %2615
  %2617 = fmul fast float %2613, %2613
  %2618 = fmul fast float %2611, 4.000000e+00
  %2619 = fmul fast float %2618, %2616
  %2620 = fsub fast float %2617, %2619
  %2621 = fcmp fast ogt float %2620, 0.000000e+00
  br i1 %2621, label %2622, label %2637, !dx.controlflow.hints !90

; <label>:2622                                    ; preds = %2588
  %2623 = fcmp fast ogt float %2613, 0.000000e+00
  %2624 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2625 = fsub fast float -0.000000e+00, %2624
  %2626 = select i1 %2623, float %2624, float %2625
  %2627 = fadd fast float %2626, %2613
  %2628 = fmul float %2627, -5.000000e-01
  %2629 = fdiv fast float %2628, %2611
  %2630 = call float @dx.op.binary.f32(i32 35, float %2629, float 0.000000e+00)  ; FMax(a,b)
  %2631 = call float @dx.op.binary.f32(i32 36, float %2574, float %2630)  ; FMin(a,b)
  %2632 = fdiv fast float %2616, %2628
  %2633 = call float @dx.op.binary.f32(i32 35, float %2632, float 0.000000e+00)  ; FMax(a,b)
  %2634 = call float @dx.op.binary.f32(i32 36, float %2574, float %2633)  ; FMin(a,b)
  %2635 = call float @dx.op.binary.f32(i32 36, float %2631, float %2634)  ; FMin(a,b)
  %2636 = call float @dx.op.binary.f32(i32 35, float %2631, float %2634)  ; FMax(a,b)
  br label %2637

; <label>:2637                                    ; preds = %2622, %2588
  %2638 = phi float [ %2636, %2622 ], [ -1.000000e+00, %2588 ]
  %2639 = phi float [ %2635, %2622 ], [ -1.000000e+00, %2588 ]
  %2640 = phi i1 [ true, %2622 ], [ false, %2588 ]
  %2641 = and i1 %2608, %2640
  br i1 %2641, label %2642, label %2644, !dx.controlflow.hints !91

; <label>:2642                                    ; preds = %2637
  %2643 = fcmp fast oeq float %2639, %2638
  br i1 %2643, label %2947, label %2645, !dx.controlflow.hints !92

; <label>:2644                                    ; preds = %2637
  br i1 %2608, label %2947, label %2645, !dx.controlflow.hints !93

; <label>:2645                                    ; preds = %2644, %2642
  %2646 = phi float [ %2574, %2644 ], [ %2638, %2642 ]
  %2647 = phi float [ 0.000000e+00, %2644 ], [ %2639, %2642 ]
  %2648 = icmp ne i32 %2596, 0
  %2649 = fmul fast float %2646, %2577
  %2650 = fadd fast float %2649, %2590
  %2651 = fmul fast float %2650, %2646
  %2652 = select i1 %2648, float 0.000000e+00, float %2651
  %2653 = fcmp fast oeq float %2577, 0.000000e+00
  %2654 = fdiv fast float %2595, %2577
  %2655 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2654)  ; FMax(a,b)
  %2656 = select i1 %2653, float %2646, float %2655
  %2657 = call float @dx.op.binary.f32(i32 36, float %2646, float %2656)  ; FMin(a,b)
  %2658 = fcmp fast ogt float %2577, 0.000000e+00
  %2659 = fcmp fast olt float %2595, 0.000000e+00
  br i1 %2658, label %2660, label %2717, !dx.controlflow.hints !94

; <label>:2660                                    ; preds = %2645
  %2661 = icmp eq i32 %2596, 0
  br i1 %2659, label %2662, label %2706, !dx.controlflow.hints !95

; <label>:2662                                    ; preds = %2660
  %2663 = select i1 %2661, float %2646, float 0.000000e+00
  %2664 = fsub fast float -0.000000e+00, %2663
  %2665 = call float @dx.op.unary.f32(i32 6, float %2664)  ; FAbs(value)
  %2666 = fmul fast float %2663, %2577
  %2667 = fadd fast float %2666, %2590
  %2668 = fmul fast float %2665, %2667
  %2669 = fsub fast float %2652, %2668
  %2670 = fsub fast float %2646, %2665
  %2671 = select i1 %2661, float %2670, float 0.000000e+00
  %2672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2673 = extractvalue %dx.types.CBufRet.f32 %2672, 0
  %2674 = extractvalue %dx.types.CBufRet.f32 %2672, 1
  %2675 = extractvalue %dx.types.CBufRet.f32 %2672, 2
  %2676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2677 = extractvalue %dx.types.CBufRet.f32 %2676, 0
  %2678 = extractvalue %dx.types.CBufRet.f32 %2676, 1
  %2679 = extractvalue %dx.types.CBufRet.f32 %2676, 2
  %2680 = extractvalue %dx.types.CBufRet.f32 %2676, 3
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2683 = call float @dx.op.binary.f32(i32 36, float %2669, float %2682)  ; FMin(a,b)
  %2684 = fmul fast float %2680, %2671
  %2685 = call float @dx.op.unary.f32(i32 7, float %2684)  ; Saturate(value)
  %2686 = fsub fast float %2677, %2673
  %2687 = fsub fast float %2678, %2674
  %2688 = fsub fast float %2679, %2675
  %2689 = fmul fast float %2685, %2686
  %2690 = fmul fast float %2685, %2687
  %2691 = fmul fast float %2685, %2688
  %2692 = fadd fast float %2689, %2673
  %2693 = fadd fast float %2690, %2674
  %2694 = fadd fast float %2691, %2675
  %2695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2695, 0
  %2697 = extractvalue %dx.types.CBufRet.f32 %2695, 1
  %2698 = fadd fast float %2697, %2696
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2695, 2
  %2701 = extractvalue %dx.types.CBufRet.f32 %2695, 3
  %2702 = fadd fast float %2701, %2700
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = fmul fast float %2699, %2683
  %2705 = fmul fast float %2704, %2703
  br label %2947

; <label>:2706                                    ; preds = %2660
  br i1 %2661, label %2707, label %2728, !dx.controlflow.hints !96

; <label>:2707                                    ; preds = %2706
  %2708 = call float @dx.op.binary.f32(i32 36, float %2657, float %2647)  ; FMin(a,b)
  %2709 = fsub fast float %2657, %2708
  %2710 = fsub fast float %2709, %2646
  %2711 = call float @dx.op.unary.f32(i32 6, float %2710)  ; FAbs(value)
  %2712 = fadd fast float %2709, %2646
  %2713 = fmul fast float %2712, %2577
  %2714 = fadd fast float %2713, %2590
  %2715 = fmul fast float %2714, %2711
  %2716 = fsub fast float %2652, %2715
  br label %2728

; <label>:2717                                    ; preds = %2645
  br i1 %2659, label %2718, label %2728, !dx.controlflow.hints !97

; <label>:2718                                    ; preds = %2717
  %2719 = call float @dx.op.binary.f32(i32 35, float %2647, float %2657)  ; FMax(a,b)
  %2720 = icmp eq i32 %2596, 0
  %2721 = select i1 %2720, float %2657, float 0.000000e+00
  %2722 = fsub fast float -0.000000e+00, %2721
  %2723 = call float @dx.op.unary.f32(i32 6, float %2722)  ; FAbs(value)
  %2724 = fmul fast float %2721, %2577
  %2725 = fadd fast float %2724, %2590
  %2726 = fmul fast float %2723, %2725
  %2727 = fsub fast float %2652, %2726
  br label %2728

; <label>:2728                                    ; preds = %2718, %2717, %2707, %2706
  %2729 = phi float [ %2647, %2706 ], [ %2647, %2707 ], [ %2719, %2718 ], [ %2647, %2717 ]
  %2730 = phi float [ 0.000000e+00, %2706 ], [ %2711, %2707 ], [ %2723, %2718 ], [ 0.000000e+00, %2717 ]
  %2731 = phi float [ %2652, %2706 ], [ %2716, %2707 ], [ %2727, %2718 ], [ %2652, %2717 ]
  %2732 = phi float [ %2657, %2706 ], [ %2657, %2707 ], [ %2646, %2718 ], [ %2646, %2717 ]
  %2733 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %2733, align 4, !tbaa !98, !noalias !102
  %2734 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %2734, align 4, !tbaa !98, !noalias !102
  %2735 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %2735, align 4, !tbaa !98, !noalias !102
  %2736 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %2736, align 4, !tbaa !98, !noalias !102
  %2737 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %2737, align 4, !tbaa !98, !noalias !102
  %2738 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %2738, align 4, !tbaa !98, !noalias !102
  %2739 = icmp sgt i32 %2598, 0
  br i1 %2739, label %2740, label %2801

; <label>:2740                                    ; preds = %2728
  br label %2741

; <label>:2741                                    ; preds = %2790, %2740
  %2742 = phi i32 [ %2791, %2790 ], [ 0, %2740 ]
  %2743 = phi i32 [ %2792, %2790 ], [ 0, %2740 ]
  %2744 = add nuw i32 %2743, 171
  %2745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %2744)  ; CBufferLoadLegacy(handle,regIndex)
  %2746 = extractvalue %dx.types.CBufRet.f32 %2745, 0
  %2747 = extractvalue %dx.types.CBufRet.f32 %2745, 1
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 0
  %2750 = extractvalue %dx.types.CBufRet.f32 %2748, 1
  %2751 = fsub fast float %2746, %2749
  %2752 = fsub fast float %2747, %2750
  %2753 = extractvalue %dx.types.CBufRet.f32 %2745, 2
  %2754 = fsub fast float -0.000000e+00, %2751
  %2755 = fsub fast float -0.000000e+00, %2752
  %2756 = call float @dx.op.dot2.f32(i32 54, float %2575, float %2576, float %2754, float %2755)  ; Dot2(ax,ay,bx,by)
  %2757 = fmul fast float %2756, 2.000000e+00
  %2758 = call float @dx.op.dot2.f32(i32 54, float %2754, float %2755, float %2754, float %2755)  ; Dot2(ax,ay,bx,by)
  %2759 = fmul fast float %2753, %2753
  %2760 = fsub fast float %2758, %2759
  %2761 = fmul fast float %2757, %2757
  %2762 = fmul fast float %2618, %2760
  %2763 = fsub fast float %2761, %2762
  %2764 = fcmp fast ogt float %2763, 0.000000e+00
  br i1 %2764, label %2765, label %2780, !dx.controlflow.hints !90

; <label>:2765                                    ; preds = %2741
  %2766 = fcmp fast ogt float %2757, 0.000000e+00
  %2767 = call float @dx.op.unary.f32(i32 24, float %2763)  ; Sqrt(value)
  %2768 = fsub fast float -0.000000e+00, %2767
  %2769 = select i1 %2766, float %2767, float %2768
  %2770 = fadd fast float %2769, %2757
  %2771 = fmul float %2770, -5.000000e-01
  %2772 = fdiv fast float %2771, %2611
  %2773 = call float @dx.op.binary.f32(i32 35, float %2772, float 0.000000e+00)  ; FMax(a,b)
  %2774 = call float @dx.op.binary.f32(i32 36, float %2646, float %2773)  ; FMin(a,b)
  %2775 = fdiv fast float %2760, %2771
  %2776 = call float @dx.op.binary.f32(i32 35, float %2775, float 0.000000e+00)  ; FMax(a,b)
  %2777 = call float @dx.op.binary.f32(i32 36, float %2646, float %2776)  ; FMin(a,b)
  %2778 = call float @dx.op.binary.f32(i32 36, float %2774, float %2777)  ; FMin(a,b)
  %2779 = call float @dx.op.binary.f32(i32 35, float %2774, float %2777)  ; FMax(a,b)
  br label %2780

; <label>:2780                                    ; preds = %2765, %2741
  %2781 = phi float [ %2779, %2765 ], [ -1.000000e+00, %2741 ]
  %2782 = phi float [ %2778, %2765 ], [ -1.000000e+00, %2741 ]
  %2783 = phi i1 [ true, %2765 ], [ false, %2741 ]
  br i1 %2783, label %2784, label %2790, !dx.controlflow.hints !113

; <label>:2784                                    ; preds = %2780
  %2785 = call float @dx.op.binary.f32(i32 35, float %2729, float %2782)  ; FMax(a,b)
  %2786 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2743
  store float %2785, float* %2786, align 4, !tbaa !98, !noalias !102
  %2787 = call float @dx.op.binary.f32(i32 35, float %2729, float %2781)  ; FMax(a,b)
  %2788 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2743
  store float %2787, float* %2788, align 4, !tbaa !98, !noalias !102
  %2789 = add nsw i32 %2742, 1
  br label %2790

; <label>:2790                                    ; preds = %2784, %2780
  %2791 = phi i32 [ %2789, %2784 ], [ %2742, %2780 ]
  %2792 = add nuw nsw i32 %2743, 1
  %2793 = icmp eq i32 %2792, %2598
  br i1 %2793, label %2794, label %2741

; <label>:2794                                    ; preds = %2790
  %2795 = load float, float* %2735, align 4, !tbaa !98, !alias.scope !114, !noalias !117
  %2796 = load float, float* %2734, align 4, !tbaa !98, !alias.scope !120, !noalias !121
  %2797 = load float, float* %2733, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  %2798 = load float, float* %2738, align 4, !tbaa !98, !alias.scope !124, !noalias !127
  %2799 = load float, float* %2737, align 4, !tbaa !98, !alias.scope !130, !noalias !131
  %2800 = load float, float* %2736, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  br label %2801

; <label>:2801                                    ; preds = %2794, %2728
  %2802 = phi float [ -1.000000e+00, %2728 ], [ %2800, %2794 ]
  %2803 = phi float [ -1.000000e+00, %2728 ], [ %2799, %2794 ]
  %2804 = phi float [ -1.000000e+00, %2728 ], [ %2798, %2794 ]
  %2805 = phi float [ -1.000000e+00, %2728 ], [ %2797, %2794 ]
  %2806 = phi float [ -1.000000e+00, %2728 ], [ %2796, %2794 ]
  %2807 = phi float [ -1.000000e+00, %2728 ], [ %2795, %2794 ]
  %2808 = phi i32 [ 0, %2728 ], [ %2791, %2794 ]
  %2809 = call float @dx.op.binary.f32(i32 36, float %2806, float %2807)  ; FMin(a,b)
  %2810 = call float @dx.op.binary.f32(i32 36, float %2805, float %2809)  ; FMin(a,b)
  %2811 = call float @dx.op.binary.f32(i32 35, float %2805, float %2806)  ; FMax(a,b)
  %2812 = call float @dx.op.binary.f32(i32 36, float %2811, float %2807)  ; FMin(a,b)
  %2813 = call float @dx.op.binary.f32(i32 36, float %2805, float %2806)  ; FMin(a,b)
  %2814 = call float @dx.op.binary.f32(i32 35, float %2813, float %2812)  ; FMax(a,b)
  %2815 = call float @dx.op.binary.f32(i32 35, float %2806, float %2807)  ; FMax(a,b)
  %2816 = call float @dx.op.binary.f32(i32 35, float %2805, float %2815)  ; FMax(a,b)
  store float %2810, float* %2733, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  store float %2814, float* %2734, align 4, !tbaa !98, !alias.scope !120, !noalias !121
  store float %2816, float* %2735, align 4, !tbaa !98, !alias.scope !114, !noalias !117
  %2817 = call float @dx.op.binary.f32(i32 36, float %2803, float %2804)  ; FMin(a,b)
  %2818 = call float @dx.op.binary.f32(i32 36, float %2802, float %2817)  ; FMin(a,b)
  %2819 = call float @dx.op.binary.f32(i32 35, float %2802, float %2803)  ; FMax(a,b)
  %2820 = call float @dx.op.binary.f32(i32 36, float %2819, float %2804)  ; FMin(a,b)
  %2821 = call float @dx.op.binary.f32(i32 36, float %2802, float %2803)  ; FMin(a,b)
  %2822 = call float @dx.op.binary.f32(i32 35, float %2821, float %2820)  ; FMax(a,b)
  %2823 = call float @dx.op.binary.f32(i32 35, float %2803, float %2804)  ; FMax(a,b)
  %2824 = call float @dx.op.binary.f32(i32 35, float %2802, float %2823)  ; FMax(a,b)
  store float %2818, float* %2736, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  store float %2822, float* %2737, align 4, !tbaa !98, !alias.scope !130, !noalias !131
  store float %2824, float* %2738, align 4, !tbaa !98, !alias.scope !124, !noalias !127
  %2825 = sub nsw i32 3, %2808
  %2826 = icmp sgt i32 %2825, 2
  br i1 %2826, label %2827, label %2865, !dx.controlflow.hints !134

; <label>:2827                                    ; preds = %2801
  %2828 = icmp eq i32 %2596, 0
  %2829 = fsub fast float %2646, %2730
  %2830 = select i1 %2828, float %2829, float %2730
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2836 = extractvalue %dx.types.CBufRet.f32 %2835, 0
  %2837 = extractvalue %dx.types.CBufRet.f32 %2835, 1
  %2838 = extractvalue %dx.types.CBufRet.f32 %2835, 2
  %2839 = extractvalue %dx.types.CBufRet.f32 %2835, 3
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 3
  %2842 = call float @dx.op.binary.f32(i32 36, float %2731, float %2841)  ; FMin(a,b)
  %2843 = fmul fast float %2839, %2830
  %2844 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2845 = fsub fast float %2836, %2832
  %2846 = fsub fast float %2837, %2833
  %2847 = fsub fast float %2838, %2834
  %2848 = fmul fast float %2844, %2845
  %2849 = fmul fast float %2844, %2846
  %2850 = fmul fast float %2844, %2847
  %2851 = fadd fast float %2848, %2832
  %2852 = fadd fast float %2849, %2833
  %2853 = fadd fast float %2850, %2834
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2857 = fadd fast float %2856, %2855
  %2858 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2860 = extractvalue %dx.types.CBufRet.f32 %2854, 3
  %2861 = fadd fast float %2860, %2859
  %2862 = call float @dx.op.unary.f32(i32 7, float %2861)  ; Saturate(value)
  %2863 = fmul fast float %2858, %2842
  %2864 = fmul fast float %2863, %2862
  br label %2947

; <label>:2865                                    ; preds = %2801
  %2866 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2825
  %2867 = load float, float* %2866, align 4, !tbaa !98, !noalias !102
  %2868 = fcmp fast olt float %2867, %2732
  %2869 = icmp sgt i32 %2808, 0
  %2870 = and i1 %2869, %2868
  br i1 %2870, label %2871, label %2908

; <label>:2871                                    ; preds = %2865
  br label %2872

; <label>:2872                                    ; preds = %2901, %2871
  %2873 = phi float [ %2902, %2901 ], [ %2730, %2871 ]
  %2874 = phi float [ %2903, %2901 ], [ %2731, %2871 ]
  %2875 = phi float [ %2883, %2901 ], [ %2867, %2871 ]
  %2876 = phi i32 [ %2880, %2901 ], [ %2825, %2871 ]
  %2877 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2876
  %2878 = load float, float* %2877, align 4, !tbaa !98, !noalias !102
  %2879 = icmp slt i32 %2876, 2
  %2880 = add nsw i32 %2876, 1
  %2881 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2880
  %2882 = load float, float* %2881, align 4, !tbaa !98, !noalias !102
  %2883 = select i1 %2879, float %2882, float %2646
  %2884 = call float @dx.op.binary.f32(i32 36, float %2883, float %2878)  ; FMin(a,b)
  %2885 = call float @dx.op.binary.f32(i32 36, float %2732, float %2884)  ; FMin(a,b)
  %2886 = icmp eq i32 %2596, 0
  %2887 = fadd fast float %2885, %2875
  %2888 = fmul fast float %2887, %2577
  %2889 = fadd fast float %2888, %2590
  br i1 %2886, label %2895, label %2890, !dx.controlflow.hints !135

; <label>:2890                                    ; preds = %2872
  %2891 = fsub fast float %2885, %2875
  %2892 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2891)  ; FMax(a,b)
  %2893 = fmul fast float %2892, %2889
  %2894 = fadd fast float %2893, %2874
  br label %2901

; <label>:2895                                    ; preds = %2872
  %2896 = fsub fast float %2875, %2885
  %2897 = call float @dx.op.unary.f32(i32 6, float %2896)  ; FAbs(value)
  %2898 = fadd fast float %2897, %2873
  %2899 = fmul fast float %2897, %2889
  %2900 = fsub fast float %2874, %2899
  br label %2901

; <label>:2901                                    ; preds = %2895, %2890
  %2902 = phi float [ %2892, %2890 ], [ %2898, %2895 ]
  %2903 = phi float [ %2894, %2890 ], [ %2900, %2895 ]
  %2904 = fcmp fast olt float %2883, %2732
  %2905 = icmp slt i32 %2880, 3
  %2906 = and i1 %2905, %2904
  br i1 %2906, label %2872, label %2907

; <label>:2907                                    ; preds = %2901
  br label %2908

; <label>:2908                                    ; preds = %2907, %2865
  %2909 = phi float [ %2730, %2865 ], [ %2902, %2907 ]
  %2910 = phi float [ %2731, %2865 ], [ %2903, %2907 ]
  %2911 = fsub fast float %2646, %2909
  %2912 = select i1 %2648, float %2909, float %2911
  %2913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2914 = extractvalue %dx.types.CBufRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.CBufRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.CBufRet.f32 %2913, 2
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.CBufRet.f32 %2917, 2
  %2921 = extractvalue %dx.types.CBufRet.f32 %2917, 3
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 3
  %2924 = call float @dx.op.binary.f32(i32 36, float %2910, float %2923)  ; FMin(a,b)
  %2925 = fmul fast float %2921, %2912
  %2926 = call float @dx.op.unary.f32(i32 7, float %2925)  ; Saturate(value)
  %2927 = fsub fast float %2918, %2914
  %2928 = fsub fast float %2919, %2915
  %2929 = fsub fast float %2920, %2916
  %2930 = fmul fast float %2926, %2927
  %2931 = fmul fast float %2926, %2928
  %2932 = fmul fast float %2926, %2929
  %2933 = fadd fast float %2930, %2914
  %2934 = fadd fast float %2931, %2915
  %2935 = fadd fast float %2932, %2916
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %2939 = fadd fast float %2938, %2937
  %2940 = call float @dx.op.unary.f32(i32 7, float %2939)  ; Saturate(value)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2936, 2
  %2942 = extractvalue %dx.types.CBufRet.f32 %2936, 3
  %2943 = fadd fast float %2942, %2941
  %2944 = call float @dx.op.unary.f32(i32 7, float %2943)  ; Saturate(value)
  %2945 = fmul fast float %2940, %2924
  %2946 = fmul fast float %2945, %2944
  br label %2947

; <label>:2947                                    ; preds = %2908, %2827, %2662, %2644, %2642
  %2948 = phi float [ %2671, %2662 ], [ %2830, %2827 ], [ %2912, %2908 ], [ 0.000000e+00, %2642 ], [ 0.000000e+00, %2644 ]
  %2949 = phi float [ %2705, %2662 ], [ %2864, %2827 ], [ %2946, %2908 ], [ 0.000000e+00, %2642 ], [ 0.000000e+00, %2644 ]
  %2950 = phi float [ %2692, %2662 ], [ %2851, %2827 ], [ %2933, %2908 ], [ 0.000000e+00, %2642 ], [ 0.000000e+00, %2644 ]
  %2951 = phi float [ %2693, %2662 ], [ %2852, %2827 ], [ %2934, %2908 ], [ 0.000000e+00, %2642 ], [ 0.000000e+00, %2644 ]
  %2952 = phi float [ %2694, %2662 ], [ %2853, %2827 ], [ %2935, %2908 ], [ 0.000000e+00, %2642 ], [ 0.000000e+00, %2644 ]
  %2953 = fmul fast float %2585, %2949
  %2954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2955 = extractvalue %dx.types.CBufRet.f32 %2954, 2
  %2956 = fsub fast float %2592, %2955
  %2957 = fcmp fast olt float %2953, -2.000000e+01
  %2958 = call float @dx.op.unary.f32(i32 21, float %2953)  ; Exp(value)
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 2
  %2961 = extractvalue %dx.types.CBufRet.f32 %2959, 3
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 2
  %2964 = fmul fast float %2961, %2956
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2966 = fsub fast float 1.000000e+00, %2965
  %2967 = fmul fast float %2577, 5.000000e-01
  %2968 = fadd fast float %2967, 5.000000e-01
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  %2970 = fsub fast float 1.000000e+00, %2969
  %2971 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2966)  ; FMax(a,b)
  %2972 = fdiv fast float %2970, %2971
  %2973 = fsub fast float %2956, %2543
  %2974 = call float @dx.op.unary.f32(i32 6, float %2973)  ; FAbs(value)
  %2975 = fmul fast float %2974, %2960
  %2976 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2977 = fsub fast float 1.000000e+00, %2975
  %2978 = fmul fast float %2977, %2976
  %2979 = fadd fast float %2978, %2975
  %2980 = fmul fast float %2963, %2956
  %2981 = call float @dx.op.unary.f32(i32 7, float %2980)  ; Saturate(value)
  %2982 = fsub fast float 1.000000e+00, %2979
  %2983 = fmul fast float %2982, %2981
  %2984 = fadd fast float %2983, %2979
  %2985 = call float @dx.op.unary.f32(i32 7, float %2984)  ; Saturate(value)
  %2986 = fadd fast float %2958, -1.000000e+00
  %2987 = select i1 %2957, float -1.000000e+00, float %2986
  %2988 = fmul fast float %2985, %2987
  %2989 = fadd fast float %2988, 1.000000e+00
  %2990 = fsub fast float -0.000000e+00, %2988
  %2991 = fmul fast float %2950, %2990
  %2992 = fmul fast float %2951, %2990
  %2993 = fmul fast float %2952, %2990
  br label %2994

; <label>:2994                                    ; preds = %2947, %2496
  %2995 = phi float [ %2948, %2947 ], [ 0.000000e+00, %2496 ]
  %2996 = phi float [ %2989, %2947 ], [ 1.000000e+00, %2496 ]
  %2997 = phi float [ %2991, %2947 ], [ 0.000000e+00, %2496 ]
  %2998 = phi float [ %2992, %2947 ], [ 0.000000e+00, %2496 ]
  %2999 = phi float [ %2993, %2947 ], [ 0.000000e+00, %2496 ]
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 1
  %3002 = fsub fast float 1.000000e+00, %2996
  %3003 = fmul fast float %3002, %2578
  %3004 = fmul fast float %3003, %3001
  %3005 = fsub fast float %2578, %3004
  br i1 %2571, label %3006, label %3035, !dx.controlflow.hints !136

; <label>:3006                                    ; preds = %2994
  %3007 = fmul fast float %2579, %2568
  %3008 = fadd fast float %3007, %2569
  %3009 = call float @dx.op.unary.f32(i32 7, float %3008)  ; Saturate(value)
  %3010 = fmul fast float %2550, %3005
  %3011 = fsub fast float -0.000000e+00, %3010
  %3012 = fmul fast float %2551, %3005
  %3013 = fsub fast float -0.000000e+00, %3012
  %3014 = call float @dx.op.unary.f32(i32 21, float %3011)  ; Exp(value)
  %3015 = call float @dx.op.unary.f32(i32 21, float %3013)  ; Exp(value)
  %3016 = call float @dx.op.binary.f32(i32 35, float %2558, float %3014)  ; FMax(a,b)
  %3017 = call float @dx.op.binary.f32(i32 35, float %2558, float %3015)  ; FMax(a,b)
  %3018 = fsub fast float %3017, %3016
  %3019 = fmul fast float %3018, %3009
  %3020 = fadd fast float %3019, %3016
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3022 = fsub fast float %2555, %2560
  %3023 = fsub fast float %2556, %2561
  %3024 = fsub fast float %2557, %2562
  %3025 = fmul fast float %3009, %3022
  %3026 = fmul fast float %3009, %3023
  %3027 = fmul fast float %3009, %3024
  %3028 = fadd fast float %3025, %2560
  %3029 = fadd fast float %3026, %2561
  %3030 = fadd fast float %3027, %2562
  %3031 = fsub fast float 1.000000e+00, %3021
  %3032 = fmul fast float %3031, %3028
  %3033 = fmul fast float %3031, %3029
  %3034 = fmul fast float %3031, %3030
  br label %3094

; <label>:3035                                    ; preds = %2994
  %3036 = fmul fast float %3005, %2567
  %3037 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3038 = fsub fast float 2.000000e+00, %3037
  %3039 = fmul fast float %3037, 9.921875e-01
  %3040 = fmul fast float %3039, %3038
  %3041 = fadd fast float %3040, 3.906250e-03
  %3042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %20, float %3041, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3043 = extractvalue %dx.types.ResRet.f32 %3042, 0
  %3044 = fsub fast float %3037, %3043
  %3045 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3044)  ; FMax(a,b)
  %3046 = fmul fast float %2553, %2543
  %3047 = call float @dx.op.unary.f32(i32 6, float %3046)  ; FAbs(value)
  %3048 = fcmp fast ogt float %3047, 0x3EB0C6F7A0000000
  br i1 %3048, label %3049, label %3055, !dx.controlflow.hints !137

; <label>:3049                                    ; preds = %3035
  %3050 = fmul fast float %3046, 0xBFF7154760000000
  %3051 = call float @dx.op.unary.f32(i32 21, float %3050)  ; Exp(value)
  %3052 = fsub fast float 1.000000e+00, %3051
  %3053 = fdiv fast float %3052, %3046
  %3054 = fmul fast float %3053, %2563
  br label %3055

; <label>:3055                                    ; preds = %3049, %3035
  %3056 = phi float [ %3054, %3049 ], [ %2563, %3035 ]
  %3057 = fadd fast float %3056, %2565
  %3058 = fmul fast float %3057, %3045
  %3059 = fmul fast float %2550, %3058
  %3060 = fsub fast float -0.000000e+00, %3059
  %3061 = fmul fast float %2551, %3058
  %3062 = fsub fast float -0.000000e+00, %3061
  %3063 = fmul fast float %2552, %3058
  %3064 = fsub fast float -0.000000e+00, %3063
  %3065 = call float @dx.op.unary.f32(i32 21, float %3060)  ; Exp(value)
  %3066 = call float @dx.op.unary.f32(i32 21, float %3062)  ; Exp(value)
  %3067 = call float @dx.op.unary.f32(i32 21, float %3064)  ; Exp(value)
  %3068 = fmul fast float %2579, %2579
  %3069 = fadd fast float %3068, 1.000000e+00
  %3070 = fmul fast float %3069, 0x3FAE8EC8A0000000
  %3071 = fmul fast float %3070, %2560
  %3072 = fmul fast float %3070, %2561
  %3073 = fmul fast float %3070, %2562
  %3074 = fmul fast float %2579, %2558
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = fmul fast float %2558, %2558
  %3077 = fsub fast float 1.000000e+00, %3076
  %3078 = fmul fast float %3077, 0x3FB45F3060000000
  %3079 = fmul fast float %3075, %3075
  %3080 = fdiv fast float 1.000000e+00, %3079
  %3081 = fmul fast float %3078, %3080
  %3082 = fmul fast float %3081, %2555
  %3083 = fmul fast float %3081, %2556
  %3084 = fmul fast float %3081, %2557
  %3085 = fadd fast float %3082, %3071
  %3086 = fadd fast float %3083, %3072
  %3087 = fadd fast float %3084, %3073
  %3088 = fsub fast float 1.000000e+00, %3065
  %3089 = fsub fast float 1.000000e+00, %3066
  %3090 = fsub fast float 1.000000e+00, %3067
  %3091 = fmul fast float %3085, %3088
  %3092 = fmul fast float %3086, %3089
  %3093 = fmul fast float %3087, %3090
  br label %3094

; <label>:3094                                    ; preds = %3055, %3006
  %3095 = phi float [ %3032, %3006 ], [ %3091, %3055 ]
  %3096 = phi float [ %3033, %3006 ], [ %3092, %3055 ]
  %3097 = phi float [ %3034, %3006 ], [ %3093, %3055 ]
  %3098 = phi float [ %3021, %3006 ], [ %3065, %3055 ]
  %3099 = phi float [ %3021, %3006 ], [ %3066, %3055 ]
  %3100 = phi float [ %3021, %3006 ], [ %3067, %3055 ]
  br i1 %2587, label %3101, label %3299, !dx.controlflow.hints !138

; <label>:3101                                    ; preds = %3094
  %3102 = extractvalue %dx.types.CBufRet.f32 %3000, 0
  %3103 = fmul fast float %3102, %3002
  %3104 = fsub fast float %2997, %3095
  %3105 = fsub fast float %2998, %3096
  %3106 = fsub fast float %2999, %3097
  %3107 = fmul fast float %3103, %3104
  %3108 = fmul fast float %3103, %3105
  %3109 = fmul fast float %3103, %3106
  %3110 = fadd fast float %3107, %3095
  %3111 = fadd fast float %3108, %3096
  %3112 = fadd fast float %3109, %3097
  %3113 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3098)  ; FMax(a,b)
  %3114 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3099)  ; FMax(a,b)
  %3115 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3100)  ; FMax(a,b)
  %3116 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2996)  ; FMax(a,b)
  %3117 = call float @dx.op.binary.f32(i32 35, float %2995, float %3005)  ; FMax(a,b)
  %3118 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3117)  ; FMax(a,b)
  %3119 = fdiv fast float %2995, %3118
  %3120 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3121 = fdiv fast float %3005, %3118
  %3122 = call float @dx.op.unary.f32(i32 7, float %3121)  ; Saturate(value)
  %3123 = fcmp fast une float %3116, 1.000000e+00
  br i1 %3123, label %3124, label %3137, !dx.controlflow.hints !139

; <label>:3124                                    ; preds = %3101
  %3125 = call float @dx.op.unary.f32(i32 23, float %3116)  ; Log(value)
  %3126 = fmul fast float %3125, 0x3FE62E4300000000
  %3127 = fmul fast float %2997, %3126
  %3128 = fsub fast float -0.000000e+00, %3127
  %3129 = fmul fast float %2998, %3126
  %3130 = fsub fast float -0.000000e+00, %3129
  %3131 = fmul fast float %2999, %3126
  %3132 = fsub fast float -0.000000e+00, %3131
  %3133 = fsub fast float 1.000000e+00, %3116
  %3134 = fdiv fast float %3128, %3133
  %3135 = fdiv fast float %3130, %3133
  %3136 = fdiv fast float %3132, %3133
  br label %3137

; <label>:3137                                    ; preds = %3124, %3101
  %3138 = phi float [ %3134, %3124 ], [ %2997, %3101 ]
  %3139 = phi float [ %3135, %3124 ], [ %2998, %3101 ]
  %3140 = phi float [ %3136, %3124 ], [ %2999, %3101 ]
  %3141 = phi float [ %3126, %3124 ], [ 0.000000e+00, %3101 ]
  %3142 = fcmp fast une float %3113, 1.000000e+00
  br i1 %3142, label %3143, label %3150, !dx.controlflow.hints !140

; <label>:3143                                    ; preds = %3137
  %3144 = call float @dx.op.unary.f32(i32 23, float %3113)  ; Log(value)
  %3145 = fmul fast float %3144, 0x3FE62E4300000000
  %3146 = fmul fast float %3110, %3145
  %3147 = fsub fast float -0.000000e+00, %3146
  %3148 = fsub fast float 1.000000e+00, %3113
  %3149 = fdiv fast float %3147, %3148
  br label %3150

; <label>:3150                                    ; preds = %3143, %3137
  %3151 = phi float [ %3149, %3143 ], [ %3110, %3137 ]
  %3152 = phi float [ %3145, %3143 ], [ 0.000000e+00, %3137 ]
  %3153 = fcmp fast une float %3114, 1.000000e+00
  br i1 %3153, label %3154, label %3161, !dx.controlflow.hints !140

; <label>:3154                                    ; preds = %3150
  %3155 = call float @dx.op.unary.f32(i32 23, float %3114)  ; Log(value)
  %3156 = fmul fast float %3155, 0x3FE62E4300000000
  %3157 = fmul fast float %3111, %3156
  %3158 = fsub fast float -0.000000e+00, %3157
  %3159 = fsub fast float 1.000000e+00, %3114
  %3160 = fdiv fast float %3158, %3159
  br label %3161

; <label>:3161                                    ; preds = %3154, %3150
  %3162 = phi float [ %3160, %3154 ], [ %3111, %3150 ]
  %3163 = phi float [ %3156, %3154 ], [ 0.000000e+00, %3150 ]
  %3164 = fcmp fast une float %3115, 1.000000e+00
  br i1 %3164, label %3165, label %3172, !dx.controlflow.hints !140

; <label>:3165                                    ; preds = %3161
  %3166 = call float @dx.op.unary.f32(i32 23, float %3115)  ; Log(value)
  %3167 = fmul fast float %3166, 0x3FE62E4300000000
  %3168 = fmul fast float %3112, %3167
  %3169 = fsub fast float -0.000000e+00, %3168
  %3170 = fsub fast float 1.000000e+00, %3115
  %3171 = fdiv fast float %3169, %3170
  br label %3172

; <label>:3172                                    ; preds = %3165, %3161
  %3173 = phi float [ %3171, %3165 ], [ %3112, %3161 ]
  %3174 = phi float [ %3167, %3165 ], [ 0.000000e+00, %3161 ]
  %3175 = fmul fast float %3138, %3122
  %3176 = fmul fast float %3139, %3122
  %3177 = fmul fast float %3140, %3122
  %3178 = fmul fast float %3141, %3122
  %3179 = fmul fast float %3151, %3120
  %3180 = fmul fast float %3162, %3120
  %3181 = fmul fast float %3173, %3120
  %3182 = fmul fast float %3152, %3120
  %3183 = fmul fast float %3163, %3120
  %3184 = fmul fast float %3174, %3120
  %3185 = fadd fast float %3179, %3175
  %3186 = fadd fast float %3180, %3176
  %3187 = fadd fast float %3181, %3177
  %3188 = fadd fast float %3182, %3178
  %3189 = fadd fast float %3183, %3178
  %3190 = fadd fast float %3184, %3178
  %3191 = fcmp fast une float %3188, 0.000000e+00
  br i1 %3191, label %3192, label %3199, !dx.controlflow.hints !141

; <label>:3192                                    ; preds = %3172
  %3193 = fmul fast float %3188, 0x3FF7154760000000
  %3194 = call float @dx.op.unary.f32(i32 21, float %3193)  ; Exp(value)
  %3195 = fsub fast float 1.000000e+00, %3194
  %3196 = fmul fast float %3185, %3195
  %3197 = fsub fast float -0.000000e+00, %3196
  %3198 = fdiv fast float %3197, %3188
  br label %3199

; <label>:3199                                    ; preds = %3192, %3172
  %3200 = phi float [ %3194, %3192 ], [ 1.000000e+00, %3172 ]
  %3201 = phi float [ %3198, %3192 ], [ %3185, %3172 ]
  %3202 = fcmp fast une float %3189, 0.000000e+00
  br i1 %3202, label %3203, label %3210, !dx.controlflow.hints !141

; <label>:3203                                    ; preds = %3199
  %3204 = fmul fast float %3189, 0x3FF7154760000000
  %3205 = call float @dx.op.unary.f32(i32 21, float %3204)  ; Exp(value)
  %3206 = fsub fast float 1.000000e+00, %3205
  %3207 = fmul fast float %3186, %3206
  %3208 = fsub fast float -0.000000e+00, %3207
  %3209 = fdiv fast float %3208, %3189
  br label %3210

; <label>:3210                                    ; preds = %3203, %3199
  %3211 = phi float [ %3205, %3203 ], [ 1.000000e+00, %3199 ]
  %3212 = phi float [ %3209, %3203 ], [ %3186, %3199 ]
  %3213 = fcmp fast une float %3190, 0.000000e+00
  br i1 %3213, label %3214, label %3221, !dx.controlflow.hints !141

; <label>:3214                                    ; preds = %3210
  %3215 = fmul fast float %3190, 0x3FF7154760000000
  %3216 = call float @dx.op.unary.f32(i32 21, float %3215)  ; Exp(value)
  %3217 = fsub fast float 1.000000e+00, %3216
  %3218 = fmul fast float %3187, %3217
  %3219 = fsub fast float -0.000000e+00, %3218
  %3220 = fdiv fast float %3219, %3190
  br label %3221

; <label>:3221                                    ; preds = %3214, %3210
  %3222 = phi float [ %3216, %3214 ], [ 1.000000e+00, %3210 ]
  %3223 = phi float [ %3220, %3214 ], [ %3187, %3210 ]
  %3224 = fcmp fast ogt float %3120, %3122
  br i1 %3224, label %3225, label %3245, !dx.controlflow.hints !142

; <label>:3225                                    ; preds = %3221
  %3226 = fsub fast float 1.000000e+00, %3122
  %3227 = fmul fast float %3138, %3226
  %3228 = fmul fast float %3139, %3226
  %3229 = fmul fast float %3140, %3226
  %3230 = fmul fast float %3141, %3226
  %3231 = fcmp fast une float %3230, 0.000000e+00
  br i1 %3231, label %3232, label %3283, !dx.controlflow.hints !143

; <label>:3232                                    ; preds = %3225
  %3233 = fmul fast float %3230, 0x3FF7154760000000
  %3234 = call float @dx.op.unary.f32(i32 21, float %3233)  ; Exp(value)
  %3235 = fsub fast float 1.000000e+00, %3234
  %3236 = fmul fast float %3227, %3235
  %3237 = fsub fast float -0.000000e+00, %3236
  %3238 = fmul fast float %3228, %3235
  %3239 = fsub fast float -0.000000e+00, %3238
  %3240 = fmul fast float %3229, %3235
  %3241 = fsub fast float -0.000000e+00, %3240
  %3242 = fdiv fast float %3237, %3230
  %3243 = fdiv fast float %3239, %3230
  %3244 = fdiv fast float %3241, %3230
  br label %3283

; <label>:3245                                    ; preds = %3221
  %3246 = fsub fast float 1.000000e+00, %3120
  %3247 = fmul fast float %3151, %3246
  %3248 = fmul fast float %3162, %3246
  %3249 = fmul fast float %3173, %3246
  %3250 = fmul fast float %3152, %3246
  %3251 = fmul fast float %3163, %3246
  %3252 = fmul fast float %3174, %3246
  %3253 = fcmp fast une float %3250, 0.000000e+00
  br i1 %3253, label %3254, label %3261, !dx.controlflow.hints !141

; <label>:3254                                    ; preds = %3245
  %3255 = fmul fast float %3250, 0x3FF7154760000000
  %3256 = call float @dx.op.unary.f32(i32 21, float %3255)  ; Exp(value)
  %3257 = fsub fast float 1.000000e+00, %3256
  %3258 = fmul fast float %3247, %3257
  %3259 = fsub fast float -0.000000e+00, %3258
  %3260 = fdiv fast float %3259, %3250
  br label %3261

; <label>:3261                                    ; preds = %3254, %3245
  %3262 = phi float [ %3260, %3254 ], [ %3247, %3245 ]
  %3263 = phi float [ %3256, %3254 ], [ 1.000000e+00, %3245 ]
  %3264 = fcmp fast une float %3251, 0.000000e+00
  br i1 %3264, label %3265, label %3272, !dx.controlflow.hints !141

; <label>:3265                                    ; preds = %3261
  %3266 = fmul fast float %3251, 0x3FF7154760000000
  %3267 = call float @dx.op.unary.f32(i32 21, float %3266)  ; Exp(value)
  %3268 = fsub fast float 1.000000e+00, %3267
  %3269 = fmul fast float %3248, %3268
  %3270 = fsub fast float -0.000000e+00, %3269
  %3271 = fdiv fast float %3270, %3251
  br label %3272

; <label>:3272                                    ; preds = %3265, %3261
  %3273 = phi float [ %3271, %3265 ], [ %3248, %3261 ]
  %3274 = phi float [ %3267, %3265 ], [ 1.000000e+00, %3261 ]
  %3275 = fcmp fast une float %3252, 0.000000e+00
  br i1 %3275, label %3276, label %3283, !dx.controlflow.hints !141

; <label>:3276                                    ; preds = %3272
  %3277 = fmul fast float %3252, 0x3FF7154760000000
  %3278 = call float @dx.op.unary.f32(i32 21, float %3277)  ; Exp(value)
  %3279 = fsub fast float 1.000000e+00, %3278
  %3280 = fmul fast float %3249, %3279
  %3281 = fsub fast float -0.000000e+00, %3280
  %3282 = fdiv fast float %3281, %3252
  br label %3283

; <label>:3283                                    ; preds = %3276, %3272, %3232, %3225
  %3284 = phi float [ %3282, %3276 ], [ %3244, %3232 ], [ %3229, %3225 ], [ %3249, %3272 ]
  %3285 = phi float [ %3273, %3276 ], [ %3243, %3232 ], [ %3228, %3225 ], [ %3273, %3272 ]
  %3286 = phi float [ %3262, %3276 ], [ %3242, %3232 ], [ %3227, %3225 ], [ %3262, %3272 ]
  %3287 = phi float [ %3278, %3276 ], [ %3234, %3232 ], [ 1.000000e+00, %3225 ], [ 1.000000e+00, %3272 ]
  %3288 = phi float [ %3274, %3276 ], [ %3234, %3232 ], [ 1.000000e+00, %3225 ], [ %3274, %3272 ]
  %3289 = phi float [ %3263, %3276 ], [ %3234, %3232 ], [ 1.000000e+00, %3225 ], [ %3263, %3272 ]
  %3290 = fmul fast float %3289, %3201
  %3291 = fmul fast float %3288, %3212
  %3292 = fmul fast float %3287, %3223
  %3293 = fadd fast float %3290, %3286
  %3294 = fadd fast float %3291, %3285
  %3295 = fadd fast float %3292, %3284
  %3296 = fmul fast float %3289, %3200
  %3297 = fmul fast float %3288, %3211
  %3298 = fmul fast float %3287, %3222
  br label %3299

; <label>:3299                                    ; preds = %3283, %3094
  %3300 = phi float [ %3100, %3094 ], [ %3298, %3283 ]
  %3301 = phi float [ %3099, %3094 ], [ %3297, %3283 ]
  %3302 = phi float [ %3098, %3094 ], [ %3296, %3283 ]
  %3303 = phi float [ %3097, %3094 ], [ %3295, %3283 ]
  %3304 = phi float [ %3096, %3094 ], [ %3294, %3283 ]
  %3305 = phi float [ %3095, %3094 ], [ %3293, %3283 ]
  %3306 = fmul fast float %3302, %2443
  %3307 = fmul fast float %3301, %2444
  %3308 = fmul fast float %3300, %2445
  %3309 = fsub fast float 1.000000e+00, %2506
  %3310 = fmul fast float %3305, %3309
  %3311 = fmul fast float %3304, %3309
  %3312 = fmul fast float %3303, %3309
  %3313 = fadd fast float %3310, %3306
  %3314 = fadd fast float %3311, %3307
  %3315 = fadd fast float %3312, %3308
  %3316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3317 = extractvalue %dx.types.CBufRet.f32 %3316, 2
  %3318 = fmul fast float %3317, %2516
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %24, i32 %25, i32 undef, float %2506, float %2506, float %2506, float %2506, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 0
  %3322 = fmul fast float %3321, %3313
  %3323 = fmul fast float %3321, %3314
  %3324 = fmul fast float %3321, %3315
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %24, i32 %25, i32 undef, float %3322, float %3323, float %3324, float %3322, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 undef, float %3319, float %3319, float %3319, float %3319, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !29, !32}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
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
!32 = !{!33, !34, !35}
!33 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!36 = !{void ()* @cs_fog_raymarching_air_heightmap_particles, !"cs_fog_raymarching_air_heightmap_particles", null, !4, !37}
!37 = !{i32 0, i64 272, i32 4, !38}
!38 = !{i32 8, i32 8, i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
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
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = !{!99, !99, i64 0}
!99 = !{!"float", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !108, !110, !111, !112}
!103 = distinct !{!103, !104, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!104 = distinct !{!104, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!105 = distinct !{!105, !106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!106 = distinct !{!106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!107 = distinct !{!107, !106, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!108 = distinct !{!108, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!109 = distinct !{!109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!110 = distinct !{!110, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!111 = distinct !{!111, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!112 = distinct !{!112, !109, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = !{!115}
!115 = distinct !{!115, !116, !"\01?sort@@YAXAIAM00@Z: %c"}
!116 = distinct !{!116, !"\01?sort@@YAXAIAM00@Z"}
!117 = !{!118, !119, !103, !105, !107, !108, !110, !111, !112}
!118 = distinct !{!118, !116, !"\01?sort@@YAXAIAM00@Z: %a"}
!119 = distinct !{!119, !116, !"\01?sort@@YAXAIAM00@Z: %b"}
!120 = !{!119}
!121 = !{!118, !115, !103, !105, !107, !108, !110, !111, !112}
!122 = !{!118}
!123 = !{!119, !115, !103, !105, !107, !108, !110, !111, !112}
!124 = !{!125}
!125 = distinct !{!125, !126, !"\01?sort@@YAXAIAM00@Z: %c"}
!126 = distinct !{!126, !"\01?sort@@YAXAIAM00@Z"}
!127 = !{!128, !129, !103, !105, !107, !108, !110, !111, !112}
!128 = distinct !{!128, !126, !"\01?sort@@YAXAIAM00@Z: %a"}
!129 = distinct !{!129, !126, !"\01?sort@@YAXAIAM00@Z: %b"}
!130 = !{!129}
!131 = !{!128, !125, !103, !105, !107, !108, !110, !111, !112}
!132 = !{!128}
!133 = !{!129, !125, !103, !105, !107, !108, !110, !111, !112}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}

