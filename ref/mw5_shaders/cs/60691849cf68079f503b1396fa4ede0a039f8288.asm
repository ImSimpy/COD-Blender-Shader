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
; shader hash: dc06c8a26d8792505a1e5277079c1baf
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
;                                   texture     f32          2d      T2            t27     1
;                                   texture     f32          2d      T3            t18     1
;                                   texture  struct         r/o      T4            t25     1
;                                   texture     f32     2darray      T5            t31     1
;                                   texture     f32          3d      T6            t30     1
;                                   texture     f32          2d      T7            t29     1
;                                   texture     f32          2d      T8            t26     1
;                                   texture     u32          2d      T9            t32     1
;                                   texture     f32          3d     T10            t33     1
;                                   texture     f32          1d     T11            t14     1
;                                   texture     f32          2d     T12            t13     1
;                                   texture     f32          2d     T13             t0     1
;                                   texture    byte         r/o     T14            t17     1
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

define void @cs_fog_raymarching_air_heightmap_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %26 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = add i32 %26, %25
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 1
  %32 = add i32 %29, %31
  %33 = lshr i32 %32, 1
  %34 = and i32 %33, 1
  %35 = and i32 %32, 1
  %36 = xor i32 %34, %35
  %37 = shl i32 %25, 1
  %38 = shl i32 %26, 1
  %39 = or i32 %36, %37
  %40 = or i32 %34, %38
  %41 = uitofp i32 %39 to float
  %42 = uitofp i32 %40 to float
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %45 = fmul fast float %44, 0x3FE3C6EF40000000
  %46 = frem fast float %41, 2.560000e+02
  %47 = frem fast float %42, 2.560000e+02
  %48 = fptoui float %46 to i32
  %49 = fptoui float %47 to i32
  %50 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = extractvalue %dx.types.ResRet.f32 %50, 3
  %55 = fadd fast float %51, %45
  %56 = fadd fast float %52, %45
  %57 = fadd fast float %53, %45
  %58 = fadd fast float %54, %45
  %59 = call float @dx.op.unary.f32(i32 22, float %55)  ; Frc(value)
  %60 = call float @dx.op.unary.f32(i32 22, float %56)  ; Frc(value)
  %61 = call float @dx.op.unary.f32(i32 22, float %57)  ; Frc(value)
  %62 = call float @dx.op.unary.f32(i32 22, float %58)  ; Frc(value)
  %63 = fadd fast float %61, %41
  %64 = fadd fast float %62, %42
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 3
  %68 = fmul fast float %66, %63
  %69 = fmul fast float %67, %64
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %76 = fmul fast float %68, 2.000000e+00
  %77 = fmul fast float %69, 2.000000e+00
  %78 = fsub fast float 1.000000e+00, %76
  %79 = fsub fast float 1.000000e+00, %77
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %81, %78
  %85 = fmul fast float %82, %78
  %86 = fmul fast float %83, %78
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fmul fast float %88, %79
  %92 = fmul fast float %89, %79
  %93 = fmul fast float %90, %79
  %94 = fadd fast float %91, %84
  %95 = fadd fast float %92, %85
  %96 = fadd fast float %93, %86
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %101 = fadd fast float %94, %98
  %102 = fadd fast float %95, %99
  %103 = fadd fast float %96, %100
  %104 = fmul fast float %101, %75
  %105 = fmul fast float %102, %75
  %106 = fmul fast float %103, %75
  %107 = fmul fast float %104, %104
  %108 = fmul fast float %105, %105
  %109 = fadd fast float %107, %108
  %110 = fmul fast float %106, %106
  %111 = fadd fast float %109, %110
  %112 = call float @dx.op.unary.f32(i32 24, float %111)  ; Sqrt(value)
  %113 = fdiv fast float 1.000000e+00, %112
  %114 = fmul fast float %104, %113
  %115 = fmul fast float %105, %113
  %116 = fmul fast float %106, %113
  %117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fcmp fast ogt float %118, -1.000000e+00
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %122 = select i1 %119, float %121, float 1.000000e+00
  %123 = fadd fast float %118, 1.000000e+00
  %124 = fmul fast float %122, %123
  %125 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %126 = fdiv fast float 1.000000e+00, %75
  %127 = fmul fast float %126, %112
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %130 = fmul fast float %129, %127
  %131 = fmul fast float %127, %125
  %132 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %133 = fcmp fast oge float %125, %132
  %134 = call float @dx.op.binary.f32(i32 36, float %131, float %130)  ; FMin(a,b)
  %135 = select i1 %133, float %130, float %134
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 3
  %138 = icmp eq i32 %137, 0
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = fsub fast float %140, %73
  %144 = fadd fast float %143, %142
  %145 = fsub fast float 0xC7EFFFFFE0000000, %73
  br i1 %138, label %157, label %146, !dx.controlflow.hints !40

; <label>:146                                     ; preds = %0
  %147 = fsub fast float -0.000000e+00, %72
  %148 = fsub fast float -0.000000e+00, %71
  %149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %148, float %147, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = fdiv fast float 1.000000e+00, %150
  %152 = fmul fast float %151, %149
  %153 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %148, float %147, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = fmul fast float %151, %153
  %155 = call float @dx.op.binary.f32(i32 36, float %152, float %154)  ; FMin(a,b)
  %156 = call float @dx.op.binary.f32(i32 35, float %152, float %154)  ; FMax(a,b)
  br label %190

; <label>:157                                     ; preds = %0
  %158 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %162 = fdiv fast float 1.000000e+00, %114
  %163 = fdiv fast float 1.000000e+00, %115
  %164 = fdiv fast float 1.000000e+00, %116
  %165 = fsub fast float %158, %71
  %166 = fmul fast float %162, %165
  %167 = fadd fast float %165, %160
  %168 = fmul fast float %167, %162
  %169 = call float @dx.op.binary.f32(i32 36, float %166, float %168)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %166, float %168)  ; FMax(a,b)
  %171 = fsub fast float %159, %72
  %172 = fmul fast float %163, %171
  %173 = fadd fast float %171, %161
  %174 = fmul fast float %173, %163
  %175 = call float @dx.op.binary.f32(i32 36, float %172, float %174)  ; FMin(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %169, float %175)  ; FMax(a,b)
  %177 = call float @dx.op.binary.f32(i32 35, float %172, float %174)  ; FMax(a,b)
  %178 = call float @dx.op.binary.f32(i32 36, float %170, float %177)  ; FMin(a,b)
  %179 = fmul fast float %164, %145
  %180 = fmul fast float %164, %144
  %181 = call float @dx.op.binary.f32(i32 36, float %179, float %180)  ; FMin(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float %176, float %181)  ; FMax(a,b)
  %183 = call float @dx.op.binary.f32(i32 35, float %179, float %180)  ; FMax(a,b)
  %184 = call float @dx.op.binary.f32(i32 36, float %178, float %183)  ; FMin(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %182)  ; FMax(a,b)
  %186 = fcmp fast ult float %184, %185
  br i1 %186, label %190, label %187, !dx.controlflow.hints !41

; <label>:187                                     ; preds = %157
  %188 = call float @dx.op.binary.f32(i32 36, float %182, float %184)  ; FMin(a,b)
  %189 = call float @dx.op.binary.f32(i32 35, float %182, float %184)  ; FMax(a,b)
  br label %190

; <label>:190                                     ; preds = %187, %157, %146
  %191 = phi float [ %155, %146 ], [ %188, %187 ], [ 0.000000e+00, %157 ]
  %192 = phi float [ %156, %146 ], [ %189, %187 ], [ 0.000000e+00, %157 ]
  %193 = fcmp fast oeq float %192, 0.000000e+00
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %196 = fcmp fast olt float %192, %195
  %197 = or i1 %193, %196
  br i1 %197, label %202, label %198, !dx.controlflow.hints !42

; <label>:198                                     ; preds = %190
  %199 = call float @dx.op.binary.f32(i32 35, float %195, float %191)  ; FMax(a,b)
  %200 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %199)  ; FMin(a,b)
  %201 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %192)  ; FMax(a,b)
  br label %202

; <label>:202                                     ; preds = %198, %190
  %203 = phi i32 [ 1, %198 ], [ 0, %190 ]
  %204 = phi float [ %201, %198 ], [ -1.000000e+00, %190 ]
  %205 = phi float [ %200, %198 ], [ 0x47EFFFFFE0000000, %190 ]
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 3
  %208 = fsub fast float -0.000000e+00, %71
  %209 = fsub fast float -0.000000e+00, %72
  %210 = fsub fast float %207, %73
  %211 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %208, float %209, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %213 = fdiv fast float 1.000000e+00, %212
  %214 = fmul fast float %213, %211
  %215 = fcmp fast olt float %214, 0.000000e+00
  %216 = fcmp fast ogt float %116, 0.000000e+00
  %217 = and i1 %216, %215
  br i1 %217, label %222, label %218, !dx.controlflow.hints !43

; <label>:218                                     ; preds = %202
  %219 = fcmp fast olt float %116, 0.000000e+00
  br i1 %219, label %220, label %222, !dx.controlflow.hints !44

; <label>:220                                     ; preds = %218
  %221 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %214)  ; FMax(a,b)
  br label %222

; <label>:222                                     ; preds = %220, %218, %202
  %223 = phi float [ 0.000000e+00, %202 ], [ %221, %220 ], [ 0.000000e+00, %218 ]
  %224 = phi float [ 0.000000e+00, %202 ], [ 0x47EFFFFFE0000000, %220 ], [ %214, %218 ]
  %225 = fcmp fast oeq float %224, 0.000000e+00
  br i1 %225, label %229, label %226, !dx.controlflow.hints !45

; <label>:226                                     ; preds = %222
  %227 = call float @dx.op.binary.f32(i32 36, float %205, float %223)  ; FMin(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float %204, float %224)  ; FMax(a,b)
  br label %229

; <label>:229                                     ; preds = %226, %222
  %230 = phi i32 [ 1, %226 ], [ 0, %222 ]
  %231 = phi float [ %228, %226 ], [ %204, %222 ]
  %232 = phi float [ %227, %226 ], [ %205, %222 ]
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %237 = fsub fast float %234, %73
  %238 = fadd fast float %237, %236
  %239 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %208, float %209, float %238)  ; Dot3(ax,ay,az,bx,by,bz)
  %240 = fmul fast float %213, %239
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = fsub fast float %242, %73
  %244 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %208, float %209, float %243)  ; Dot3(ax,ay,az,bx,by,bz)
  %245 = fmul fast float %213, %244
  %246 = call float @dx.op.binary.f32(i32 36, float %240, float %245)  ; FMin(a,b)
  %247 = call float @dx.op.binary.f32(i32 35, float %240, float %245)  ; FMax(a,b)
  %248 = call float @dx.op.binary.f32(i32 36, float %232, float %246)  ; FMin(a,b)
  %249 = call float @dx.op.binary.f32(i32 35, float %231, float %247)  ; FMax(a,b)
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 3
  %254 = fsub fast float %251, %73
  %255 = fadd fast float %254, %253
  %256 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %208, float %209, float %255)  ; Dot3(ax,ay,az,bx,by,bz)
  %257 = fmul fast float %213, %256
  %258 = fcmp fast olt float %257, 0.000000e+00
  %259 = and i1 %216, %258
  br i1 %259, label %264, label %260, !dx.controlflow.hints !46

; <label>:260                                     ; preds = %229
  %261 = fcmp fast olt float %116, 0.000000e+00
  br i1 %261, label %262, label %264, !dx.controlflow.hints !47

; <label>:262                                     ; preds = %260
  %263 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %257)  ; FMax(a,b)
  br label %264

; <label>:264                                     ; preds = %262, %260, %229
  %265 = phi float [ 0.000000e+00, %229 ], [ %263, %262 ], [ 0.000000e+00, %260 ]
  %266 = phi float [ 0.000000e+00, %229 ], [ 0x47EFFFFFE0000000, %262 ], [ %257, %260 ]
  %267 = fcmp fast oeq float %266, 0.000000e+00
  br i1 %267, label %271, label %268, !dx.controlflow.hints !48

; <label>:268                                     ; preds = %264
  %269 = call float @dx.op.binary.f32(i32 36, float %248, float %265)  ; FMin(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %249, float %266)  ; FMax(a,b)
  br label %271

; <label>:271                                     ; preds = %268, %264
  %272 = phi i32 [ 1, %268 ], [ 0, %264 ]
  %273 = phi float [ %270, %268 ], [ %249, %264 ]
  %274 = phi float [ %269, %268 ], [ %248, %264 ]
  %275 = fdiv fast float 1.000000e+00, %114
  %276 = fdiv fast float 1.000000e+00, %115
  %277 = fdiv fast float 1.000000e+00, %116
  %278 = call float @dx.op.binary.f32(i32 36, float %135, float %273)  ; FMin(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float %112, float %274)  ; FMax(a,b)
  %280 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %281 = fmul fast float %60, 2.000000e+00
  %282 = fadd fast float %281, -1.000000e+00
  %283 = fmul fast float %280, %282
  %284 = fadd fast float %283, %279
  %285 = fcmp fast olt float %284, %278
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %288 = fcmp fast olt float %287, 1.000000e+00
  %289 = and i1 %285, %288
  br i1 %289, label %290, label %2909

; <label>:290                                     ; preds = %271
  %291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.i32 %291, 1
  %293 = add i32 %292, -1
  %294 = fmul fast float %284, %116
  %295 = fadd fast float %294, %73
  %296 = fmul fast float %284, %115
  %297 = fadd fast float %296, %72
  %298 = fmul fast float %284, %114
  %299 = fadd fast float %298, %71
  br label %300

; <label>:300                                     ; preds = %2879, %290
  %301 = phi i32 [ %2881, %2879 ], [ undef, %290 ]
  %302 = phi float [ %2882, %2879 ], [ undef, %290 ]
  %303 = phi float [ %2883, %2879 ], [ undef, %290 ]
  %304 = phi float [ %2884, %2879 ], [ undef, %290 ]
  %305 = phi float [ %2885, %2879 ], [ undef, %290 ]
  %306 = phi float [ %2886, %2879 ], [ undef, %290 ]
  %307 = phi i32 [ %806, %2879 ], [ undef, %290 ]
  %308 = phi float [ %807, %2879 ], [ undef, %290 ]
  %309 = phi float [ %606, %2879 ], [ undef, %290 ]
  %310 = phi float [ %607, %2879 ], [ undef, %290 ]
  %311 = phi float [ %608, %2879 ], [ undef, %290 ]
  %312 = phi float [ %609, %2879 ], [ undef, %290 ]
  %313 = phi float [ %2887, %2879 ], [ 0.000000e+00, %290 ]
  %314 = phi float [ %2888, %2879 ], [ 1.000000e+00, %290 ]
  %315 = phi float [ %2889, %2879 ], [ 0.000000e+00, %290 ]
  %316 = phi float [ %2890, %2879 ], [ 0.000000e+00, %290 ]
  %317 = phi float [ %2891, %2879 ], [ 0.000000e+00, %290 ]
  %318 = phi float [ %2901, %2879 ], [ %299, %290 ]
  %319 = phi float [ %2902, %2879 ], [ %297, %290 ]
  %320 = phi float [ %2903, %2879 ], [ %295, %290 ]
  %321 = phi float [ %2880, %2879 ], [ %284, %290 ]
  %322 = phi i32 [ %611, %2879 ], [ 10, %290 ]
  %323 = phi i32 [ %503, %2879 ], [ %293, %290 ]
  %324 = phi float [ %2892, %2879 ], [ 0.000000e+00, %290 ]
  %325 = phi float [ %2893, %2879 ], [ 0.000000e+00, %290 ]
  %326 = phi float [ %2894, %2879 ], [ 0.000000e+00, %290 ]
  %327 = phi float [ %2895, %2879 ], [ 0.000000e+00, %290 ]
  %328 = phi float [ %2896, %2879 ], [ 0.000000e+00, %290 ]
  %329 = phi i32 [ %2897, %2879 ], [ 0, %290 ]
  %330 = fsub fast float -0.000000e+00, %319
  %331 = fsub fast float -0.000000e+00, %318
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = icmp eq i32 %203, 0
  br i1 %334, label %500, label %335, !dx.controlflow.hints !49

; <label>:335                                     ; preds = %300
  %336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.i32 %336, 1
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %340 = fcmp fast ogt float %339, %321
  br i1 %340, label %341, label %343, !dx.controlflow.hints !50

; <label>:341                                     ; preds = %335
  %342 = fsub fast float %339, %321
  br label %490

; <label>:343                                     ; preds = %335
  %344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.i32 %344, 3
  %346 = icmp eq i32 %345, 0
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %351 = fsub fast float %348, %320
  %352 = fadd fast float %351, %350
  %353 = fsub fast float 0xC7EFFFFFE0000000, %320
  br i1 %346, label %361, label %354, !dx.controlflow.hints !40

; <label>:354                                     ; preds = %343
  %355 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %331, float %330, float %352)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = fmul fast float %213, %355
  %357 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %331, float %330, float %353)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = fmul fast float %213, %357
  %359 = call float @dx.op.binary.f32(i32 36, float %356, float %358)  ; FMin(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %356, float %358)  ; FMax(a,b)
  br label %391

; <label>:361                                     ; preds = %343
  %362 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %364 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %366 = fsub fast float %362, %318
  %367 = fmul fast float %275, %366
  %368 = fadd fast float %366, %364
  %369 = fmul fast float %368, %275
  %370 = call float @dx.op.binary.f32(i32 36, float %367, float %369)  ; FMin(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float %367, float %369)  ; FMax(a,b)
  %372 = fsub fast float %363, %319
  %373 = fmul fast float %276, %372
  %374 = fadd fast float %372, %365
  %375 = fmul fast float %374, %276
  %376 = call float @dx.op.binary.f32(i32 36, float %373, float %375)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 35, float %370, float %376)  ; FMax(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %373, float %375)  ; FMax(a,b)
  %379 = call float @dx.op.binary.f32(i32 36, float %371, float %378)  ; FMin(a,b)
  %380 = fmul fast float %277, %353
  %381 = fmul fast float %277, %352
  %382 = call float @dx.op.binary.f32(i32 36, float %380, float %381)  ; FMin(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %377, float %382)  ; FMax(a,b)
  %384 = call float @dx.op.binary.f32(i32 35, float %380, float %381)  ; FMax(a,b)
  %385 = call float @dx.op.binary.f32(i32 36, float %379, float %384)  ; FMin(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %383)  ; FMax(a,b)
  %387 = fcmp fast ult float %385, %386
  br i1 %387, label %391, label %388, !dx.controlflow.hints !41

; <label>:388                                     ; preds = %361
  %389 = call float @dx.op.binary.f32(i32 36, float %383, float %385)  ; FMin(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float %383, float %385)  ; FMax(a,b)
  br label %391

; <label>:391                                     ; preds = %388, %361, %354
  %392 = phi float [ %359, %354 ], [ %389, %388 ], [ 0.000000e+00, %361 ]
  %393 = phi float [ %360, %354 ], [ %390, %388 ], [ 0.000000e+00, %361 ]
  %394 = fcmp fast ogt float %392, 0.000000e+00
  br i1 %394, label %490, label %395, !dx.controlflow.hints !51

; <label>:395                                     ; preds = %391
  %396 = fcmp fast ugt float %393, 0.000000e+00
  br i1 %396, label %397, label %490, !dx.controlflow.hints !52

; <label>:397                                     ; preds = %395
  %398 = icmp sgt i32 %323, 0
  br i1 %398, label %399, label %484

; <label>:399                                     ; preds = %397
  br label %400

; <label>:400                                     ; preds = %480, %399
  %401 = phi i32 [ %481, %480 ], [ %323, %399 ]
  %402 = sitofp i32 %401 to float
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = fsub fast float %318, %404
  %407 = fsub fast float %319, %405
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = fmul fast float %406, %409
  %412 = fmul fast float %407, %410
  %413 = fsub fast float 1.000000e+00, %412
  %414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.i32 %414, 3
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %423, label %417, !dx.controlflow.hints !53

; <label>:417                                     ; preds = %400
  %418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %411, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float %402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = extractvalue %dx.types.ResRet.f32 %418, 3
  br label %429

; <label>:423                                     ; preds = %400
  %424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %411, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float %402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  br label %429

; <label>:429                                     ; preds = %423, %417
  %430 = phi float [ %419, %417 ], [ %425, %423 ]
  %431 = phi float [ %420, %417 ], [ %426, %423 ]
  %432 = phi float [ %421, %417 ], [ %427, %423 ]
  %433 = phi float [ %422, %417 ], [ %428, %423 ]
  %434 = extractvalue %dx.types.CBufRet.f32 %408, 3
  %435 = fmul fast float %434, %430
  %436 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %437 = fadd fast float %435, %436
  %438 = fmul fast float %434, %431
  %439 = fadd fast float %438, %436
  %440 = fmul fast float %434, %432
  %441 = fadd fast float %440, %436
  %442 = and i32 %401, 31
  %443 = shl i32 1, %442
  %444 = uitofp i32 %443 to float
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 3
  %447 = fdiv fast float 1.000000e+00, %446
  %448 = fmul fast float %447, %444
  %449 = fmul fast float %448, %116
  %450 = fadd fast float %449, %320
  %451 = fcmp fast oeq float %433, 0.000000e+00
  %452 = fcmp fast ogt float %320, %439
  %453 = fcmp fast ogt float %450, %439
  %454 = and i1 %452, %453
  %455 = or i1 %451, %454
  br i1 %455, label %456, label %460, !dx.controlflow.hints !54

; <label>:456                                     ; preds = %429
  %457 = add nsw i32 %401, 1
  %458 = add nsw i32 %337, -1
  %459 = call i32 @dx.op.binary.i32(i32 38, i32 %457, i32 %458)  ; IMin(a,b)
  br label %490

; <label>:460                                     ; preds = %429
  %461 = fcmp fast olt float %320, %441
  %462 = fcmp fast olt float %450, %441
  %463 = and i1 %461, %462
  br i1 %463, label %464, label %468, !dx.controlflow.hints !55

; <label>:464                                     ; preds = %460
  %465 = add nsw i32 %401, 1
  %466 = add nsw i32 %337, -1
  %467 = call i32 @dx.op.binary.i32(i32 38, i32 %465, i32 %466)  ; IMin(a,b)
  br label %490

; <label>:468                                     ; preds = %460
  %469 = fcmp fast olt float %320, %437
  %470 = fcmp fast olt float %450, %437
  %471 = and i1 %469, %470
  br i1 %471, label %472, label %480, !dx.controlflow.hints !56

; <label>:472                                     ; preds = %468
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 3
  %475 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %476 = fcmp fast une float %474, %475
  br i1 %476, label %477, label %484, !dx.controlflow.hints !57

; <label>:477                                     ; preds = %472
  %478 = fsub fast float %320, %441
  %479 = call float @dx.op.binary.f32(i32 36, float %448, float %478)  ; FMin(a,b)
  br label %484

; <label>:480                                     ; preds = %468
  %481 = add nsw i32 %401, -1
  %482 = icmp sgt i32 %401, 1
  br i1 %482, label %400, label %483

; <label>:483                                     ; preds = %480
  br label %484

; <label>:484                                     ; preds = %483, %477, %472, %397
  %485 = phi float [ %479, %477 ], [ %448, %472 ], [ 0.000000e+00, %397 ], [ 0.000000e+00, %483 ]
  %486 = phi i32 [ %401, %477 ], [ %401, %472 ], [ %323, %397 ], [ %481, %483 ]
  %487 = add nsw i32 %486, 1
  %488 = add nsw i32 %337, -1
  %489 = call i32 @dx.op.binary.i32(i32 38, i32 %487, i32 %488)  ; IMin(a,b)
  br label %490

; <label>:490                                     ; preds = %484, %464, %456, %395, %391, %341
  %491 = phi float [ %342, %341 ], [ %448, %456 ], [ %448, %464 ], [ %485, %484 ], [ 0x47EFFFFFE0000000, %395 ], [ %392, %391 ]
  %492 = phi i32 [ %203, %341 ], [ %203, %456 ], [ %203, %464 ], [ %203, %484 ], [ 0, %395 ], [ %203, %391 ]
  %493 = phi i32 [ %323, %341 ], [ %459, %456 ], [ %467, %464 ], [ %489, %484 ], [ %323, %395 ], [ %323, %391 ]
  %494 = icmp ne i32 %492, 0
  %495 = zext i1 %494 to i32
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %498 = call float @dx.op.binary.f32(i32 35, float %491, float %497)  ; FMax(a,b)
  %499 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %498)  ; FMin(a,b)
  br label %500

; <label>:500                                     ; preds = %490, %300
  %501 = phi i32 [ %495, %490 ], [ 0, %300 ]
  %502 = phi float [ %499, %490 ], [ 0x47EFFFFFE0000000, %300 ]
  %503 = phi i32 [ %493, %490 ], [ %323, %300 ]
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 0
  %506 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %507 = fsub fast float %318, %505
  %508 = fsub fast float %319, %506
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 2
  %511 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %512 = fmul fast float %507, %510
  %513 = fmul fast float %508, %511
  %514 = call float @dx.op.binary.f32(i32 36, float %512, float %513)  ; FMin(a,b)
  %515 = fcmp fast olt float %514, 0.000000e+00
  %516 = call float @dx.op.binary.f32(i32 35, float %512, float %513)  ; FMax(a,b)
  %517 = fcmp fast ogt float %516, 1.000000e+00
  %518 = or i1 %515, %517
  %519 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %520 = fcmp fast olt float %320, %519
  %521 = or i1 %518, %520
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = fadd fast float %525, %523
  %527 = fcmp fast ogt float %320, %526
  %528 = or i1 %521, %527
  br i1 %528, label %529, label %558, !dx.controlflow.hints !58

; <label>:529                                     ; preds = %500
  %530 = extractvalue %dx.types.CBufRet.f32 %509, 0
  %531 = extractvalue %dx.types.CBufRet.f32 %509, 1
  %532 = fsub fast float %505, %318
  %533 = fmul fast float %532, %275
  %534 = fadd fast float %532, %530
  %535 = fmul fast float %534, %275
  %536 = call float @dx.op.binary.f32(i32 36, float %533, float %535)  ; FMin(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %533, float %535)  ; FMax(a,b)
  %538 = fsub fast float %506, %319
  %539 = fmul fast float %538, %276
  %540 = fadd fast float %538, %531
  %541 = fmul fast float %540, %276
  %542 = call float @dx.op.binary.f32(i32 36, float %539, float %541)  ; FMin(a,b)
  %543 = call float @dx.op.binary.f32(i32 35, float %536, float %542)  ; FMax(a,b)
  %544 = call float @dx.op.binary.f32(i32 35, float %539, float %541)  ; FMax(a,b)
  %545 = call float @dx.op.binary.f32(i32 36, float %537, float %544)  ; FMin(a,b)
  %546 = fsub fast float %519, %320
  %547 = fmul fast float %546, %277
  %548 = fsub fast float %523, %320
  %549 = fadd fast float %548, %525
  %550 = fmul fast float %549, %277
  %551 = call float @dx.op.binary.f32(i32 36, float %547, float %550)  ; FMin(a,b)
  %552 = call float @dx.op.binary.f32(i32 35, float %543, float %551)  ; FMax(a,b)
  %553 = call float @dx.op.binary.f32(i32 35, float %547, float %550)  ; FMax(a,b)
  %554 = call float @dx.op.binary.f32(i32 36, float %545, float %553)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %552)  ; FMax(a,b)
  %556 = fcmp fast oge float %554, %555
  %557 = select i1 %556, float %552, float 1.000000e+07
  br label %604

; <label>:558                                     ; preds = %500
  %559 = fsub fast float 1.000000e+00, %513
  %560 = icmp eq i32 %322, 0
  br i1 %560, label %589, label %561

; <label>:561                                     ; preds = %558
  br label %562

; <label>:562                                     ; preds = %585, %561
  %563 = phi i32 [ %586, %585 ], [ %322, %561 ]
  %564 = uitofp i32 %563 to float
  %565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %22, float %512, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float %564)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = fcmp fast oeq float %566, 0.000000e+00
  %570 = fcmp ule float %320, %568
  %571 = fcmp uge float %320, %567
  %572 = or i1 %571, %570
  %573 = or i1 %569, %572
  br i1 %573, label %574, label %585, !dx.controlflow.hints !59

; <label>:574                                     ; preds = %562
  %575 = extractvalue %dx.types.ResRet.f32 %565, 3
  %576 = extractvalue %dx.types.CBufRet.f32 %509, 0
  %577 = and i32 %563, 31
  %578 = lshr i32 1024, %577
  %579 = uitofp i32 %578 to float
  %580 = fdiv fast float %576, %579
  %581 = add i32 %563, 1
  %582 = uitofp i32 %581 to float
  %583 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %582)  ; FMin(a,b)
  %584 = fptosi float %583 to i32
  br label %604

; <label>:585                                     ; preds = %562
  %586 = add i32 %563, -1
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %562, !llvm.loop !60

; <label>:588                                     ; preds = %585
  br label %589

; <label>:589                                     ; preds = %588, %558
  %590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %512, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %591 = extractvalue %dx.types.ResRet.f32 %590, 0
  %592 = extractvalue %dx.types.ResRet.f32 %590, 1
  %593 = extractvalue %dx.types.ResRet.f32 %590, 2
  %594 = extractvalue %dx.types.ResRet.f32 %590, 3
  %595 = extractvalue %dx.types.CBufRet.f32 %509, 0
  %596 = fmul fast float %595, 9.765625e-04
  %597 = fcmp fast oeq float %591, 0.000000e+00
  %598 = fcmp ule float %320, %593
  %599 = fcmp uge float %320, %592
  %600 = or i1 %599, %598
  %601 = or i1 %597, %600
  %602 = zext i1 %601 to i32
  %603 = xor i32 %602, 1
  br label %604

; <label>:604                                     ; preds = %589, %574, %529
  %605 = phi float [ %557, %529 ], [ %580, %574 ], [ %596, %589 ]
  %606 = phi float [ %309, %529 ], [ %566, %574 ], [ %591, %589 ]
  %607 = phi float [ %310, %529 ], [ %567, %574 ], [ %592, %589 ]
  %608 = phi float [ %311, %529 ], [ %568, %574 ], [ %593, %589 ]
  %609 = phi float [ %312, %529 ], [ %575, %574 ], [ %594, %589 ]
  %610 = phi i32 [ 0, %529 ], [ 0, %574 ], [ %603, %589 ]
  %611 = phi i32 [ 10, %529 ], [ %584, %574 ], [ 1, %589 ]
  %612 = icmp eq i32 %610, 0
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %615 = call float @dx.op.binary.f32(i32 35, float %605, float %614)  ; FMax(a,b)
  %616 = call float @dx.op.binary.f32(i32 36, float %502, float %615)  ; FMin(a,b)
  %617 = icmp eq i32 %230, 0
  br i1 %617, label %630, label %618, !dx.controlflow.hints !62

; <label>:618                                     ; preds = %604
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 3
  %621 = extractvalue %dx.types.CBufRet.f32 %619, 2
  %622 = fmul fast float %620, %321
  %623 = fdiv fast float %622, %278
  %624 = fadd fast float %623, 1.000000e+00
  %625 = call float @dx.op.unary.f32(i32 23, float %624)  ; Log(value)
  %626 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %625)  ; FMin(a,b)
  %627 = fmul fast float %621, %278
  %628 = fmul fast float %627, %626
  %629 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %628)  ; FMin(a,b)
  br label %630

; <label>:630                                     ; preds = %618, %604
  %631 = phi float [ %629, %618 ], [ 0x47EFFFFFE0000000, %604 ]
  %632 = icmp eq i32 %272, 0
  br i1 %632, label %804, label %633, !dx.controlflow.hints !63

; <label>:633                                     ; preds = %630
  %634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.i32 %634, 1
  %636 = and i32 %635, 1
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %795, !dx.controlflow.hints !64

; <label>:638                                     ; preds = %633
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %642 = fmul fast float %640, %318
  %643 = fmul fast float %641, %319
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %647 = fadd fast float %642, %645
  %648 = fadd fast float %643, %646
  %649 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %650 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = fmul fast float %654, %652
  %656 = fsub fast float %647, %649
  %657 = fsub fast float %648, %650
  %658 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %659 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %660 = fmul fast float %658, %656
  %661 = fmul fast float %659, %657
  %662 = fmul fast float %660, %660
  %663 = fmul fast float %661, %661
  %664 = fadd fast float %662, %663
  %665 = call float @dx.op.unary.f32(i32 24, float %664)  ; Sqrt(value)
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %668 = fmul fast float %667, %665
  %669 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %670 = extractvalue %dx.types.CBufRet.f32 %666, 2
  %671 = fsub fast float %670, %655
  %672 = fmul fast float %671, %669
  %673 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %674 = fsub fast float %320, %655
  %675 = fsub fast float %674, %673
  %676 = fsub fast float %675, %672
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %679 = fsub fast float %676, %678
  %680 = fcmp fast olt float %679, 0.000000e+00
  %681 = call float @dx.op.unary.f32(i32 6, float %679)  ; FAbs(value)
  %682 = extractvalue %dx.types.CBufRet.i32 %634, 0
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %737, label %684

; <label>:684                                     ; preds = %638
  br label %685

; <label>:685                                     ; preds = %724, %684
  %686 = phi i32 [ %730, %724 ], [ 1, %684 ]
  %687 = phi float [ %732, %724 ], [ 0x47EFFFFFE0000000, %684 ]
  %688 = phi i32 [ %733, %724 ], [ 0, %684 ]
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.i32 %691, 1
  %693 = and i32 %692, 8
  %694 = icmp eq i32 %693, 0
  %695 = fcmp fast ogt float %690, %676
  %696 = or i1 %695, %694
  %697 = add i32 %688, 171
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %697)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %701 = extractvalue %dx.types.CBufRet.f32 %698, 2
  br i1 %696, label %702, label %708, !dx.controlflow.hints !65

; <label>:702                                     ; preds = %685
  %703 = fsub fast float %699, %318
  %704 = fsub fast float %700, %319
  %705 = fmul fast float %703, %703
  %706 = fmul fast float %704, %704
  %707 = fadd fast float %705, %706
  br label %724

; <label>:708                                     ; preds = %685
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %711 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %712 = fmul fast float %711, %710
  %713 = fsub fast float %712, %690
  %714 = fdiv fast float %701, %713
  %715 = fsub fast float %318, %699
  %716 = fsub fast float %319, %700
  %717 = fsub fast float %676, %690
  %718 = fmul fast float %714, %717
  %719 = fmul fast float %715, %715
  %720 = fmul fast float %716, %716
  %721 = fadd fast float %719, %720
  %722 = fmul fast float %718, %718
  %723 = fadd fast float %721, %722
  br label %724

; <label>:724                                     ; preds = %708, %702
  %725 = phi float [ %707, %702 ], [ %723, %708 ]
  %726 = call float @dx.op.unary.f32(i32 24, float %725)  ; Sqrt(value)
  %727 = fsub float %701, %726
  %728 = fcmp fast olt float %727, 0.000000e+00
  %729 = zext i1 %728 to i32
  %730 = and i32 %729, %686
  %731 = call float @dx.op.unary.f32(i32 6, float %727)  ; FAbs(value)
  %732 = call float @dx.op.binary.f32(i32 36, float %687, float %731)  ; FMin(a,b)
  %733 = add i32 %688, 1
  %734 = extractvalue %dx.types.CBufRet.i32 %691, 0
  %735 = icmp ult i32 %733, %734
  br i1 %735, label %685, label %736

; <label>:736                                     ; preds = %724
  br label %737

; <label>:737                                     ; preds = %736, %638
  %738 = phi i32 [ 1, %638 ], [ %730, %736 ]
  %739 = phi float [ 0x47EFFFFFE0000000, %638 ], [ %732, %736 ]
  br label %740

; <label>:740                                     ; preds = %740, %737
  %741 = phi i32 [ %738, %737 ], [ %780, %740 ]
  %742 = phi float [ 0x47EFFFFFE0000000, %737 ], [ %782, %740 ]
  %743 = phi i32 [ 0, %737 ], [ %783, %740 ]
  %744 = add nuw nsw i32 %743, 191
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %744)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %747 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %748 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %749 = add nuw nsw i32 %743, 195
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %749)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 0
  %752 = extractvalue %dx.types.CBufRet.f32 %750, 1
  %753 = extractvalue %dx.types.CBufRet.f32 %750, 2
  %754 = fsub fast float %318, %746
  %755 = fsub fast float %319, %747
  %756 = fsub fast float %676, %748
  %757 = call float @dx.op.unary.f32(i32 6, float %754)  ; FAbs(value)
  %758 = call float @dx.op.unary.f32(i32 6, float %755)  ; FAbs(value)
  %759 = call float @dx.op.unary.f32(i32 6, float %756)  ; FAbs(value)
  %760 = fsub fast float %757, %751
  %761 = fsub fast float %758, %752
  %762 = fsub fast float %759, %753
  %763 = call float @dx.op.binary.f32(i32 35, float %760, float 0.000000e+00)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float %761, float 0.000000e+00)  ; FMax(a,b)
  %765 = call float @dx.op.binary.f32(i32 35, float %762, float 0.000000e+00)  ; FMax(a,b)
  %766 = fmul fast float %763, %763
  %767 = fmul fast float %764, %764
  %768 = fadd fast float %767, %766
  %769 = fmul fast float %765, %765
  %770 = fadd fast float %768, %769
  %771 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %772 = call float @dx.op.binary.f32(i32 35, float %761, float %762)  ; FMax(a,b)
  %773 = call float @dx.op.binary.f32(i32 35, float %760, float %772)  ; FMax(a,b)
  %774 = call float @dx.op.binary.f32(i32 36, float %773, float 0.000000e+00)  ; FMin(a,b)
  %775 = fadd fast float %774, %771
  %776 = fsub fast float -0.000000e+00, %775
  %777 = fcmp ogt float %775, -0.000000e+00
  %778 = icmp ne i32 %741, 0
  %779 = and i1 %778, %777
  %780 = zext i1 %779 to i32
  %781 = call float @dx.op.unary.f32(i32 6, float %776)  ; FAbs(value)
  %782 = call float @dx.op.binary.f32(i32 36, float %742, float %781)  ; FMin(a,b)
  %783 = add nuw nsw i32 %743, 1
  %784 = icmp eq i32 %783, 4
  br i1 %784, label %785, label %740

; <label>:785                                     ; preds = %740
  %786 = call float @dx.op.binary.f32(i32 36, float %681, float %782)  ; FMin(a,b)
  %787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.i32 %787, 1
  %789 = and i32 %788, 2
  %790 = icmp ne i32 %789, 0
  %791 = xor i1 %779, %790
  %792 = call float @dx.op.binary.f32(i32 36, float %786, float %739)  ; FMin(a,b)
  %793 = and i1 %791, %680
  %794 = zext i1 %793 to i32
  br label %795

; <label>:795                                     ; preds = %785, %633
  %796 = phi i32 [ %307, %633 ], [ %794, %785 ]
  %797 = phi float [ 0.000000e+00, %633 ], [ %792, %785 ]
  %798 = phi float [ %320, %633 ], [ %676, %785 ]
  %799 = icmp ne i32 %796, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %613, 3
  %801 = call float @dx.op.binary.f32(i32 35, float %797, float %800)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 36, float %631, float %801)  ; FMin(a,b)
  %803 = zext i1 %799 to i32
  br label %804

; <label>:804                                     ; preds = %795, %630
  %805 = phi i32 [ %803, %795 ], [ 0, %630 ]
  %806 = phi i32 [ %796, %795 ], [ %307, %630 ]
  %807 = phi float [ %798, %795 ], [ %308, %630 ]
  %808 = phi float [ %802, %795 ], [ %631, %630 ]
  %809 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %810 = fmul fast float %809, %321
  %811 = call float @dx.op.unary.f32(i32 23, float %810)  ; Log(value)
  %812 = fmul fast float %811, 0x3FE62E4300000000
  %813 = call float @dx.op.binary.f32(i32 35, float %812, float 1.000000e+00)  ; FMax(a,b)
  %814 = fmul fast float %813, %808
  %815 = call float @dx.op.binary.f32(i32 36, float %814, float %616)  ; FMin(a,b)
  %816 = call float @dx.op.binary.f32(i32 35, float %815, float %333)  ; FMax(a,b)
  %817 = fsub fast float %278, %321
  %818 = fadd fast float %817, 0x3F1A36E2E0000000
  %819 = call float @dx.op.binary.f32(i32 36, float %818, float %816)  ; FMin(a,b)
  %820 = icmp eq i32 %501, 0
  br i1 %820, label %926, label %821, !dx.controlflow.hints !66

; <label>:821                                     ; preds = %804
  %822 = fcmp fast olt float %818, %816
  %823 = fmul fast float %116, %59
  %824 = fmul fast float %823, %819
  %825 = fadd fast float %824, %320
  %826 = fmul fast float %116, %60
  %827 = fmul fast float %826, %819
  %828 = fadd fast float %827, %320
  %829 = fmul fast float %116, %61
  %830 = fmul fast float %829, %819
  %831 = fadd fast float %830, %320
  br i1 %822, label %832, label %837, !dx.controlflow.hints !67

; <label>:832                                     ; preds = %821
  %833 = fmul fast float %819, %114
  %834 = fmul fast float %819, %115
  %835 = fadd fast float %833, %318
  %836 = fadd fast float %834, %319
  br label %837

; <label>:837                                     ; preds = %832, %821
  %838 = phi float [ %835, %832 ], [ %318, %821 ]
  %839 = phi float [ %836, %832 ], [ %319, %821 ]
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %843 = fsub fast float %838, %841
  %844 = fsub fast float %839, %842
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %848 = fmul fast float %843, %846
  %849 = fmul fast float %844, %847
  %850 = fsub fast float 1.000000e+00, %849
  %851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.i32 %851, 3
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %860, label %854, !dx.controlflow.hints !53

; <label>:854                                     ; preds = %837
  %855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %848, float %850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = extractvalue %dx.types.ResRet.f32 %855, 3
  br label %866

; <label>:860                                     ; preds = %837
  %861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %848, float %850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 0
  %863 = extractvalue %dx.types.ResRet.f32 %861, 1
  %864 = extractvalue %dx.types.ResRet.f32 %861, 2
  %865 = extractvalue %dx.types.ResRet.f32 %861, 3
  br label %866

; <label>:866                                     ; preds = %860, %854
  %867 = phi float [ %856, %854 ], [ %862, %860 ]
  %868 = phi float [ %857, %854 ], [ %863, %860 ]
  %869 = phi float [ %858, %854 ], [ %864, %860 ]
  %870 = phi float [ %859, %854 ], [ %865, %860 ]
  %871 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %872 = fmul fast float %871, %868
  %873 = fmul fast float %872, %867
  %874 = fsub fast float %872, %873
  %875 = fcmp fast ole float %874, 0.000000e+00
  %876 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %877 = fadd fast float %873, %876
  %878 = fmul fast float %871, %869
  %879 = fadd fast float %878, %876
  %880 = fdiv fast float 1.000000e+00, %874
  %881 = select i1 %875, float 1.000000e+06, float %880
  %882 = fsub fast float %825, %877
  %883 = fmul fast float %881, %882
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %885 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %886 = fmul fast float %885, %884
  %887 = fsub fast float %885, %886
  %888 = fcmp fast olt float %825, %879
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %891 = select i1 %888, float %890, float 1.000000e+00
  %892 = fmul fast float %887, %891
  %893 = fsub fast float %828, %877
  %894 = fmul fast float %881, %893
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %896 = fmul fast float %885, %895
  %897 = fsub fast float %885, %896
  %898 = fcmp fast olt float %828, %879
  %899 = select i1 %898, float %890, float 1.000000e+00
  %900 = fmul fast float %897, %899
  %901 = fadd fast float %900, %892
  %902 = fsub fast float %831, %877
  %903 = fmul fast float %881, %902
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fmul fast float %885, %904
  %906 = fsub fast float %885, %905
  %907 = fcmp fast olt float %831, %879
  %908 = select i1 %907, float %890, float 1.000000e+00
  %909 = fmul fast float %906, %908
  %910 = fadd fast float %901, %909
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = extractvalue %dx.types.CBufRet.f32 %913, 1
  %916 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %917 = fmul fast float %819, 0x3FD5555560000000
  %918 = fmul fast float %917, %870
  %919 = fmul fast float %918, %912
  %920 = fmul fast float %919, %910
  %921 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %922 = fmul fast float %920, %914
  %923 = fmul fast float %920, %915
  %924 = fmul fast float %920, %916
  %925 = fmul fast float %920, %921
  br label %926

; <label>:926                                     ; preds = %866, %804
  %927 = phi float [ %920, %866 ], [ 0.000000e+00, %804 ]
  %928 = phi float [ %925, %866 ], [ 0.000000e+00, %804 ]
  %929 = phi float [ %922, %866 ], [ 0.000000e+00, %804 ]
  %930 = phi float [ %923, %866 ], [ 0.000000e+00, %804 ]
  %931 = phi float [ %924, %866 ], [ 0.000000e+00, %804 ]
  br i1 %617, label %991, label %932, !dx.controlflow.hints !68

; <label>:932                                     ; preds = %926
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = fsub fast float %934, %320
  %936 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %331, float %330, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = fmul fast float %213, %936
  %938 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %937)  ; FMax(a,b)
  %939 = fcmp fast olt float %116, 0.000000e+00
  %940 = call float @dx.op.binary.f32(i32 36, float %819, float %938)  ; FMin(a,b)
  br i1 %939, label %942, label %941, !dx.controlflow.hints !69

; <label>:941                                     ; preds = %932
  br label %942

; <label>:942                                     ; preds = %941, %932
  %943 = phi float [ 0.000000e+00, %941 ], [ %940, %932 ]
  %944 = phi float [ %940, %941 ], [ %819, %932 ]
  %945 = phi float [ %940, %941 ], [ 0.000000e+00, %932 ]
  %946 = phi float [ %819, %941 ], [ %940, %932 ]
  %947 = fsub fast float %944, %943
  %948 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %949 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %948)  ; FMin(a,b)
  %950 = fsub fast float %320, %934
  %951 = fmul fast float %949, 0x3FF7154760000000
  %952 = fmul fast float %951, %950
  %953 = call float @dx.op.unary.f32(i32 21, float %952)  ; Exp(value)
  %954 = fmul fast float %116, 0x3FF7154760000000
  %955 = fmul fast float %954, %946
  %956 = fmul fast float %955, %949
  %957 = call float @dx.op.unary.f32(i32 21, float %956)  ; Exp(value)
  %958 = fmul fast float %954, %945
  %959 = fmul fast float %958, %949
  %960 = call float @dx.op.unary.f32(i32 21, float %959)  ; Exp(value)
  %961 = fsub fast float %957, %960
  %962 = fmul fast float %961, %953
  %963 = fmul fast float %949, %116
  %964 = fdiv fast float %962, %963
  %965 = fadd fast float %947, %964
  %966 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %967 = fcmp fast olt float %966, 0x3F0FFB4800000000
  %968 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %950)  ; FMax(a,b)
  %969 = fmul fast float %968, 0x3FF7154760000000
  %970 = fmul fast float %969, %948
  %971 = call float @dx.op.unary.f32(i32 21, float %970)  ; Exp(value)
  %972 = fmul fast float %971, %819
  %973 = select i1 %967, float %972, float %965
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 1
  %976 = fmul fast float %973, %975
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %980 = extractvalue %dx.types.CBufRet.f32 %977, 2
  %981 = extractvalue %dx.types.CBufRet.f32 %974, 2
  %982 = fmul fast float %978, %976
  %983 = fmul fast float %979, %976
  %984 = fmul fast float %980, %976
  %985 = fadd fast float %982, %929
  %986 = fadd fast float %983, %930
  %987 = fadd fast float %984, %931
  %988 = fmul fast float %981, %976
  %989 = fadd fast float %988, %928
  %990 = fadd fast float %976, %927
  br label %991

; <label>:991                                     ; preds = %942, %926
  %992 = phi float [ %990, %942 ], [ %927, %926 ]
  %993 = phi float [ %989, %942 ], [ %928, %926 ]
  %994 = phi float [ %985, %942 ], [ %929, %926 ]
  %995 = phi float [ %986, %942 ], [ %930, %926 ]
  %996 = phi float [ %987, %942 ], [ %931, %926 ]
  br i1 %612, label %1139, label %997, !dx.controlflow.hints !70

; <label>:997                                     ; preds = %991
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1000 = extractvalue %dx.types.CBufRet.f32 %998, 1
  %1001 = extractvalue %dx.types.CBufRet.f32 %998, 2
  %1002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.i32 %1002, 0
  %1004 = icmp ne i32 %1003, 0
  %1005 = zext i1 %1004 to i32
  %1006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.i32 %1006, 0
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1042, label %1009

; <label>:1009                                    ; preds = %997
  br label %1010

; <label>:1010                                    ; preds = %1037, %1009
  %1011 = phi i32 [ %1038, %1037 ], [ 0, %1009 ]
  %1012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1011, i32 0)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.ResRet.f32 %1012, 2
  %1016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1011, i32 16)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.ResRet.f32 %1016, 2
  %1020 = fsub fast float %1013, %1017
  %1021 = fsub fast float %1014, %1018
  %1022 = fsub fast float %1015, %1019
  %1023 = fadd fast float %1017, %1013
  %1024 = fadd fast float %1018, %1014
  %1025 = fadd fast float %1019, %1015
  %1026 = fcmp fast olt float %318, %1020
  %1027 = fcmp fast olt float %319, %1021
  %1028 = fcmp fast olt float %320, %1022
  %1029 = or i1 %1026, %1027
  %1030 = or i1 %1028, %1029
  %1031 = fcmp fast ogt float %318, %1023
  %1032 = fcmp fast ogt float %319, %1024
  %1033 = fcmp fast ogt float %320, %1025
  %1034 = or i1 %1031, %1032
  %1035 = or i1 %1033, %1034
  %1036 = or i1 %1030, %1035
  br i1 %1036, label %1037, label %1040, !dx.controlflow.hints !71

; <label>:1037                                    ; preds = %1010
  %1038 = add nuw i32 %1011, 1
  %1039 = icmp ult i32 %1038, %1007
  br i1 %1039, label %1010, label %1040

; <label>:1040                                    ; preds = %1037, %1010
  %1041 = phi i32 [ 255, %1037 ], [ %1011, %1010 ]
  br label %1042

; <label>:1042                                    ; preds = %1040, %997
  %1043 = phi i32 [ 255, %997 ], [ %1041, %1040 ]
  %1044 = icmp eq i32 %1043, 255
  br i1 %1044, label %1054, label %1045, !dx.controlflow.hints !72

; <label>:1045                                    ; preds = %1042
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1043, i32 32)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1043, i32 156)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = icmp ne i32 %1051, 0
  %1053 = zext i1 %1052 to i32
  br label %1054

; <label>:1054                                    ; preds = %1045, %1042
  %1055 = phi float [ %1047, %1045 ], [ %999, %1042 ]
  %1056 = phi float [ %1048, %1045 ], [ %1000, %1042 ]
  %1057 = phi float [ %1049, %1045 ], [ %1001, %1042 ]
  %1058 = phi i32 [ %1053, %1045 ], [ %1005, %1042 ]
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1060, label %1129, !dx.controlflow.hints !73

; <label>:1060                                    ; preds = %1054
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 3
  %1063 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 3
  br i1 %1044, label %1077, label %1067, !dx.controlflow.hints !74

; <label>:1067                                    ; preds = %1060
  %1068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1043, i32 60)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1043, i32 64)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.ResRet.f32 %1070, 1
  %1073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1043, i32 72)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1043, i32 96)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  br label %1077

; <label>:1077                                    ; preds = %1067, %1060
  %1078 = phi float [ %1069, %1067 ], [ %525, %1060 ]
  %1079 = phi float [ %1074, %1067 ], [ %523, %1060 ]
  %1080 = phi float [ %1076, %1067 ], [ %1063, %1060 ]
  %1081 = phi float [ %1071, %1067 ], [ %1065, %1060 ]
  %1082 = phi float [ %1072, %1067 ], [ %1066, %1060 ]
  %1083 = call float @dx.op.binary.f32(i32 35, float %606, float 0.000000e+00)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 36, float %1083, float 1.000000e+00)  ; FMin(a,b)
  %1085 = call float @dx.op.unary.f32(i32 24, float %1084)  ; Sqrt(value)
  %1086 = call float @dx.op.binary.f32(i32 35, float %609, float 0x3F847AE140000000)  ; FMax(a,b)
  %1087 = fsub fast float %607, %320
  %1088 = fsub fast float %320, %608
  %1089 = call float @dx.op.binary.f32(i32 36, float %1088, float %1087)  ; FMin(a,b)
  %1090 = fdiv fast float %1089, %1086
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1092 = fsub fast float %320, %1079
  %1093 = fdiv fast float %1092, %1078
  %1094 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  %1095 = fsub fast float 1.000000e+00, %1094
  %1096 = fmul float %1091, %1095
  %1097 = fmul float %1096, %1096
  %1098 = fmul fast float %1085, %1062
  %1099 = fmul fast float %1098, %1097
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1102 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1103 = fsub fast float %1099, %1102
  %1104 = fsub fast float %1101, %1102
  %1105 = fdiv fast float %1103, %1104
  %1106 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1107 = fmul fast float %1106, %1080
  %1108 = fcmp fast ogt float %1082, 0.000000e+00
  br i1 %1108, label %1109, label %1129, !dx.controlflow.hints !75

; <label>:1109                                    ; preds = %1077
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.CBufRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1114 = fsub fast float %318, %1111
  %1115 = fsub fast float %319, %1112
  %1116 = fsub fast float %320, %1113
  %1117 = fmul fast float %1114, %1114
  %1118 = fmul fast float %1115, %1115
  %1119 = fadd fast float %1117, %1118
  %1120 = fmul fast float %1116, %1116
  %1121 = fadd fast float %1119, %1120
  %1122 = call float @dx.op.unary.f32(i32 24, float %1121)  ; Sqrt(value)
  %1123 = fsub fast float %1122, %1081
  %1124 = fsub fast float %1082, %1081
  %1125 = fdiv fast float %1123, %1124
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = fmul fast float %1126, %1126
  %1128 = fmul fast float %1127, %1107
  br label %1129

; <label>:1129                                    ; preds = %1109, %1077, %1054
  %1130 = phi float [ 0.000000e+00, %1054 ], [ %1128, %1109 ], [ %1107, %1077 ]
  %1131 = fmul fast float %1130, %819
  %1132 = fmul fast float %1131, %1055
  %1133 = fmul fast float %1131, %1056
  %1134 = fmul fast float %1131, %1057
  %1135 = fadd fast float %1132, %994
  %1136 = fadd fast float %1133, %995
  %1137 = fadd fast float %1134, %996
  %1138 = fadd fast float %1131, %992
  br label %1139

; <label>:1139                                    ; preds = %1129, %991
  %1140 = phi float [ %1138, %1129 ], [ %992, %991 ]
  %1141 = phi float [ %1135, %1129 ], [ %994, %991 ]
  %1142 = phi float [ %1136, %1129 ], [ %995, %991 ]
  %1143 = phi float [ %1137, %1129 ], [ %996, %991 ]
  %1144 = icmp eq i32 %805, 0
  br i1 %1144, label %1188, label %1145, !dx.controlflow.hints !76

; <label>:1145                                    ; preds = %1139
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 1
  %1148 = fsub fast float %819, %1147
  %1149 = extractvalue %dx.types.CBufRet.f32 %1146, 3
  %1150 = fmul fast float %1148, %1149
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 3
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1156 = fsub fast float %1155, %807
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 3
  %1159 = fmul fast float %1156, %1158
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = fmul fast float %1160, %1153
  %1162 = extractvalue %dx.types.CBufRet.f32 %1157, 0
  %1163 = fsub fast float %321, %1162
  %1164 = extractvalue %dx.types.CBufRet.f32 %1157, 1
  %1165 = fmul fast float %1163, %1164
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1167 = fsub fast float 1.000000e+00, %1151
  %1168 = fmul fast float %1166, %1167
  %1169 = fadd fast float %1168, %1151
  %1170 = extractvalue %dx.types.CBufRet.f32 %1146, 0
  %1171 = fsub fast float %1161, %1170
  %1172 = fmul fast float %1171, %1169
  %1173 = fadd fast float %1172, %1170
  %1174 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1175 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1176 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1177 = fmul fast float %1173, %819
  %1178 = extractvalue %dx.types.CBufRet.f32 %1157, 2
  %1179 = fmul fast float %1177, %1174
  %1180 = fmul fast float %1177, %1175
  %1181 = fmul fast float %1177, %1176
  %1182 = fadd fast float %1179, %1141
  %1183 = fadd fast float %1180, %1142
  %1184 = fadd fast float %1181, %1143
  %1185 = fmul fast float %1177, %1178
  %1186 = fadd fast float %1185, %993
  %1187 = fadd fast float %1177, %1140
  br label %1188

; <label>:1188                                    ; preds = %1145, %1139
  %1189 = phi float [ %1187, %1145 ], [ %1140, %1139 ]
  %1190 = phi float [ %1186, %1145 ], [ %993, %1139 ]
  %1191 = phi float [ %1182, %1145 ], [ %1141, %1139 ]
  %1192 = phi float [ %1183, %1145 ], [ %1142, %1139 ]
  %1193 = phi float [ %1184, %1145 ], [ %1143, %1139 ]
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1196 = fcmp fast ogt float %1189, %1195
  br i1 %1196, label %1197, label %1203, !dx.controlflow.hints !77

; <label>:1197                                    ; preds = %1188
  %1198 = fdiv fast float 1.000000e+00, %1189
  %1199 = fmul fast float %1198, %1191
  %1200 = fmul fast float %1198, %1192
  %1201 = fmul fast float %1198, %1193
  %1202 = fmul fast float %1198, %1190
  br label %1203

; <label>:1203                                    ; preds = %1197, %1188
  %1204 = phi float [ %1202, %1197 ], [ %1190, %1188 ]
  %1205 = phi float [ %1199, %1197 ], [ %1191, %1188 ]
  %1206 = phi float [ %1200, %1197 ], [ %1192, %1188 ]
  %1207 = phi float [ %1201, %1197 ], [ %1193, %1188 ]
  br i1 %1196, label %1210, label %1208, !dx.controlflow.hints !78

; <label>:1208                                    ; preds = %1203
  %1209 = fadd fast float %819, %321
  br label %2879

; <label>:1210                                    ; preds = %1203
  %1211 = fmul fast float %1189, 0xBFF7154760000000
  %1212 = call float @dx.op.unary.f32(i32 21, float %1211)  ; Exp(value)
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.i32 %1214, 0
  %1216 = icmp eq i32 %1215, 1
  br i1 %1216, label %1217, label %1252, !dx.controlflow.hints !79

; <label>:1217                                    ; preds = %1210
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1221 = fsub fast float %318, %1219
  %1222 = fsub fast float %319, %1220
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1226 = fmul fast float %1221, %1224
  %1227 = fmul fast float %1222, %1225
  %1228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %21, float %1226, float %1227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = fcmp fast ogt float %1229, 0.000000e+00
  %1231 = extractvalue %dx.types.CBufRet.i32 %1214, 3
  %1232 = icmp ne i32 %1231, 0
  %1233 = and i1 %1230, %1232
  br i1 %1233, label %1234, label %1252, !dx.controlflow.hints !80

; <label>:1234                                    ; preds = %1217
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1238 = fsub fast float %318, %1236
  %1239 = fsub fast float %319, %1237
  %1240 = fmul fast float %1238, %1238
  %1241 = fmul fast float %1239, %1239
  %1242 = fadd fast float %1240, %1241
  %1243 = uitofp i32 %1231 to float
  %1244 = fmul fast float %1243, %1243
  %1245 = fcmp fast ogt float %1242, %1244
  br i1 %1245, label %1252, label %1246, !dx.controlflow.hints !81

; <label>:1246                                    ; preds = %1234
  %1247 = call float @dx.op.unary.f32(i32 24, float %1242)  ; Sqrt(value)
  %1248 = fsub fast float %1243, %1247
  %1249 = fmul fast float %1248, 0x3F75555560000000
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = call float @dx.op.binary.f32(i32 36, float %1250, float %1229)  ; FMin(a,b)
  br label %1252

; <label>:1252                                    ; preds = %1246, %1234, %1217, %1210
  %1253 = phi float [ 1.000000e+00, %1210 ], [ %1251, %1246 ], [ %1229, %1217 ], [ 0.000000e+00, %1234 ]
  %1254 = fcmp fast ogt float %1253, 0.000000e+00
  br i1 %1254, label %1255, label %1328, !dx.controlflow.hints !82

; <label>:1255                                    ; preds = %1252
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.i32 %1256, 1
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.i32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.i32 %1259, 2
  %1263 = extractvalue %dx.types.ResRet.i32 %1259, 3
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.i32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.i32 %1264, 2
  %1268 = extractvalue %dx.types.ResRet.i32 %1264, 3
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.i32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.i32 %1269, 2
  %1273 = extractvalue %dx.types.ResRet.i32 %1269, 3
  %1274 = and i32 %1270, 65535
  %1275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1274)  ; LegacyF16ToF32(value)
  %1276 = lshr i32 %1270, 16
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = and i32 %1271, 65535
  %1279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1278)  ; LegacyF16ToF32(value)
  %1280 = lshr i32 %1271, 16
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = and i32 %1272, 65535
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = lshr i32 %1272, 16
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = and i32 %1273, 65535
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = lshr i32 %1273, 16
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = and i32 %1265, 65535
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = lshr i32 %1265, 16
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = and i32 %1266, 65535
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = lshr i32 %1266, 16
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = and i32 %1267, 65535
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = lshr i32 %1267, 16
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = and i32 %1268, 65535
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = lshr i32 %1268, 16
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = and i32 %1260, 65535
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = lshr i32 %1260, 16
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = and i32 %1261, 65535
  %1311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1310)  ; LegacyF16ToF32(value)
  %1312 = lshr i32 %1261, 16
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = and i32 %1262, 65535
  %1315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1314)  ; LegacyF16ToF32(value)
  %1316 = lshr i32 %1262, 16
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = and i32 %1263, 65535
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = lshr i32 %1263, 16
  %1321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1320)  ; LegacyF16ToF32(value)
  %1322 = and i32 %1257, 65535
  %1323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1322)  ; LegacyF16ToF32(value)
  %1324 = lshr i32 %1257, 16
  %1325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1324)  ; LegacyF16ToF32(value)
  %1326 = and i32 %1258, 65535
  %1327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1326)  ; LegacyF16ToF32(value)
  br label %1328

; <label>:1328                                    ; preds = %1255, %1252
  %1329 = phi float [ %1327, %1255 ], [ 0.000000e+00, %1252 ]
  %1330 = phi float [ %1325, %1255 ], [ 0.000000e+00, %1252 ]
  %1331 = phi float [ %1323, %1255 ], [ 0.000000e+00, %1252 ]
  %1332 = phi float [ %1321, %1255 ], [ 0.000000e+00, %1252 ]
  %1333 = phi float [ %1319, %1255 ], [ 0.000000e+00, %1252 ]
  %1334 = phi float [ %1317, %1255 ], [ 0.000000e+00, %1252 ]
  %1335 = phi float [ %1315, %1255 ], [ 0.000000e+00, %1252 ]
  %1336 = phi float [ %1313, %1255 ], [ 0.000000e+00, %1252 ]
  %1337 = phi float [ %1311, %1255 ], [ 0.000000e+00, %1252 ]
  %1338 = phi float [ %1309, %1255 ], [ 0.000000e+00, %1252 ]
  %1339 = phi float [ %1307, %1255 ], [ 0.000000e+00, %1252 ]
  %1340 = phi float [ %1305, %1255 ], [ 0.000000e+00, %1252 ]
  %1341 = phi float [ %1303, %1255 ], [ 0.000000e+00, %1252 ]
  %1342 = phi float [ %1301, %1255 ], [ 0.000000e+00, %1252 ]
  %1343 = phi float [ %1299, %1255 ], [ 0.000000e+00, %1252 ]
  %1344 = phi float [ %1297, %1255 ], [ 0.000000e+00, %1252 ]
  %1345 = phi float [ %1295, %1255 ], [ 0.000000e+00, %1252 ]
  %1346 = phi float [ %1293, %1255 ], [ 0.000000e+00, %1252 ]
  %1347 = phi float [ %1291, %1255 ], [ 0.000000e+00, %1252 ]
  %1348 = phi float [ %1289, %1255 ], [ 0.000000e+00, %1252 ]
  %1349 = phi float [ %1287, %1255 ], [ 0.000000e+00, %1252 ]
  %1350 = phi float [ %1285, %1255 ], [ 0.000000e+00, %1252 ]
  %1351 = phi float [ %1283, %1255 ], [ 0.000000e+00, %1252 ]
  %1352 = phi float [ %1281, %1255 ], [ 0.000000e+00, %1252 ]
  %1353 = phi float [ %1279, %1255 ], [ 0.000000e+00, %1252 ]
  %1354 = phi float [ %1277, %1255 ], [ 0.000000e+00, %1252 ]
  %1355 = phi float [ %1275, %1255 ], [ 0.000000e+00, %1252 ]
  %1356 = fcmp fast olt float %1253, 1.000000e+00
  br i1 %1356, label %1357, label %2017, !dx.controlflow.hints !83

; <label>:1357                                    ; preds = %1328
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.CBufRet.f32 %1358, 1
  %1361 = fsub fast float %318, %1359
  %1362 = fsub fast float %319, %1360
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1366 = fmul fast float %1361, %1364
  %1367 = fmul fast float %1362, %1365
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = fmul fast float %1369, %1366
  %1371 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1372 = fadd fast float %1370, %1371
  %1373 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1374 = fmul fast float %1373, %1367
  %1375 = extractvalue %dx.types.CBufRet.f32 %1368, 3
  %1376 = fadd fast float %1374, %1375
  %1377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1372, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.ResRet.f32 %1377, 1
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1382 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1383 = fsub fast float %1381, %1382
  %1384 = fmul fast float %1383, %1378
  %1385 = fadd fast float %1384, %1382
  %1386 = extractvalue %dx.types.CBufRet.f32 %1380, 3
  %1387 = extractvalue %dx.types.CBufRet.f32 %1380, 2
  %1388 = fsub fast float %1386, %1387
  %1389 = fmul fast float %1388, %1379
  %1390 = fadd fast float %1389, %1387
  %1391 = fsub fast float %320, %1385
  %1392 = fsub fast float %1390, %1385
  %1393 = fdiv fast float %1391, %1392
  %1394 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 0
  %1397 = fmul fast float %1396, %1394
  %1398 = extractvalue %dx.types.CBufRet.f32 %1395, 1
  %1399 = fadd fast float %1397, %1398
  %1400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1372, float %1376, float %1399, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1408 = fmul fast float %1405, %1401
  %1409 = fmul fast float %1406, %1402
  %1410 = fmul fast float %1407, %1403
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1415 = fadd fast float %1408, %1412
  %1416 = fadd fast float %1409, %1413
  %1417 = fadd fast float %1410, %1414
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 0
  %1420 = fmul fast float %1419, %1366
  %1421 = extractvalue %dx.types.CBufRet.f32 %1418, 1
  %1422 = fadd fast float %1420, %1421
  %1423 = extractvalue %dx.types.CBufRet.f32 %1418, 2
  %1424 = fmul fast float %1423, %1367
  %1425 = extractvalue %dx.types.CBufRet.f32 %1418, 3
  %1426 = fadd fast float %1424, %1425
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.CBufRet.f32 %1427, 2
  %1431 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.CBufRet.f32 %1432, 2
  %1436 = extractvalue %dx.types.CBufRet.f32 %1432, 3
  %1437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1422, float %1426, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = extractvalue %dx.types.ResRet.f32 %1437, 3
  %1442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1422, float %1426, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.ResRet.f32 %1442, 2
  %1446 = extractvalue %dx.types.ResRet.f32 %1442, 3
  %1447 = fmul fast float %1438, %1415
  %1448 = fmul fast float %1443, %1415
  %1449 = fmul fast float %1445, %1415
  %1450 = fmul fast float %1441, %1415
  %1451 = fadd fast float %1447, %1428
  %1452 = fadd fast float %1448, %1429
  %1453 = fadd fast float %1449, %1430
  %1454 = fadd fast float %1450, %1431
  %1455 = fmul fast float %1439, %1415
  %1456 = fmul fast float %1444, %1415
  %1457 = fadd fast float %1455, %1433
  %1458 = fadd fast float %1456, %1434
  %1459 = fmul fast float %1440, %1415
  %1460 = fmul fast float %1446, %1415
  %1461 = fadd fast float %1459, %1435
  %1462 = fadd fast float %1460, %1436
  %1463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1422, float %1426, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1422, float %1426, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1468, 2
  %1472 = extractvalue %dx.types.ResRet.f32 %1468, 3
  %1473 = fmul fast float %1464, %1416
  %1474 = fmul fast float %1469, %1416
  %1475 = fmul fast float %1471, %1416
  %1476 = fmul fast float %1467, %1416
  %1477 = fadd fast float %1451, %1473
  %1478 = fadd fast float %1452, %1474
  %1479 = fadd fast float %1453, %1475
  %1480 = fadd fast float %1454, %1476
  %1481 = fmul fast float %1465, %1416
  %1482 = fmul fast float %1470, %1416
  %1483 = fadd fast float %1457, %1481
  %1484 = fadd fast float %1458, %1482
  %1485 = fmul fast float %1466, %1416
  %1486 = fmul fast float %1472, %1416
  %1487 = fadd fast float %1461, %1485
  %1488 = fadd fast float %1462, %1486
  %1489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1422, float %1426, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.ResRet.f32 %1489, 1
  %1492 = extractvalue %dx.types.ResRet.f32 %1489, 2
  %1493 = extractvalue %dx.types.ResRet.f32 %1489, 3
  %1494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1422, float %1426, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1495 = extractvalue %dx.types.ResRet.f32 %1494, 0
  %1496 = extractvalue %dx.types.ResRet.f32 %1494, 1
  %1497 = extractvalue %dx.types.ResRet.f32 %1494, 2
  %1498 = extractvalue %dx.types.ResRet.f32 %1494, 3
  %1499 = fmul fast float %1490, %1417
  %1500 = fmul fast float %1495, %1417
  %1501 = fmul fast float %1497, %1417
  %1502 = fmul fast float %1493, %1417
  %1503 = fadd fast float %1477, %1499
  %1504 = fadd fast float %1478, %1500
  %1505 = fadd fast float %1479, %1501
  %1506 = fadd fast float %1480, %1502
  %1507 = fmul fast float %1491, %1417
  %1508 = fmul fast float %1496, %1417
  %1509 = fadd fast float %1483, %1507
  %1510 = fadd fast float %1484, %1508
  %1511 = fmul fast float %1492, %1417
  %1512 = fmul fast float %1498, %1417
  %1513 = fadd fast float %1487, %1511
  %1514 = fadd fast float %1488, %1512
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = fsub fast float %318, %1516
  %1518 = fsub fast float %1359, %318
  %1519 = call float @dx.op.binary.f32(i32 35, float %1518, float %1517)  ; FMax(a,b)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1521 = fsub fast float %319, %1520
  %1522 = fsub fast float %1360, %319
  %1523 = call float @dx.op.binary.f32(i32 35, float %1522, float %1521)  ; FMax(a,b)
  %1524 = call float @dx.op.binary.f32(i32 35, float %1519, float %1523)  ; FMax(a,b)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1363, 3
  %1526 = fmul fast float %1525, %1524
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.CBufRet.f32 %1528, 1
  %1531 = extractvalue %dx.types.CBufRet.f32 %1528, 2
  %1532 = extractvalue %dx.types.CBufRet.f32 %1528, 3
  %1533 = fsub fast float %1529, %1503
  %1534 = fsub fast float %1530, %1504
  %1535 = fsub fast float %1531, %1505
  %1536 = fsub fast float %1532, %1506
  %1537 = fmul fast float %1533, %1527
  %1538 = fmul fast float %1534, %1527
  %1539 = fmul fast float %1535, %1527
  %1540 = fmul fast float %1536, %1527
  %1541 = fadd fast float %1537, %1503
  %1542 = fadd fast float %1538, %1504
  %1543 = fadd fast float %1539, %1505
  %1544 = fadd fast float %1540, %1506
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1548 = fsub fast float %1546, %1509
  %1549 = fsub fast float %1547, %1510
  %1550 = fmul fast float %1548, %1527
  %1551 = fmul fast float %1549, %1527
  %1552 = fadd fast float %1550, %1509
  %1553 = fadd fast float %1551, %1510
  %1554 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1555 = extractvalue %dx.types.CBufRet.f32 %1545, 3
  %1556 = fsub fast float %1554, %1513
  %1557 = fsub fast float %1555, %1514
  %1558 = fmul fast float %1556, %1527
  %1559 = fmul fast float %1557, %1527
  %1560 = fadd fast float %1558, %1513
  %1561 = fadd fast float %1559, %1514
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = fmul fast float %1563, %1541
  %1565 = fmul fast float %1563, %1542
  %1566 = fmul fast float %1563, %1543
  %1567 = fmul fast float %1563, %1544
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = fmul fast float %1569, %1552
  %1571 = fmul fast float %1569, %1553
  %1572 = fadd fast float %1570, %1564
  %1573 = fadd fast float %1571, %1566
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 0
  %1576 = fmul fast float %1575, %1560
  %1577 = fmul fast float %1575, %1561
  %1578 = fadd fast float %1572, %1576
  %1579 = fadd fast float %1573, %1577
  %1580 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %1581 = fmul fast float %1580, %1541
  %1582 = fmul fast float %1580, %1542
  %1583 = fmul fast float %1580, %1543
  %1584 = fmul fast float %1580, %1544
  %1585 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %1586 = fmul fast float %1585, %1552
  %1587 = fmul fast float %1585, %1553
  %1588 = fadd fast float %1586, %1581
  %1589 = fadd fast float %1587, %1583
  %1590 = extractvalue %dx.types.CBufRet.f32 %1574, 1
  %1591 = fmul fast float %1590, %1560
  %1592 = fmul fast float %1590, %1561
  %1593 = fadd fast float %1588, %1591
  %1594 = fadd fast float %1589, %1592
  %1595 = extractvalue %dx.types.CBufRet.f32 %1562, 2
  %1596 = fmul fast float %1595, %1541
  %1597 = fmul fast float %1595, %1542
  %1598 = fmul fast float %1595, %1543
  %1599 = fmul fast float %1595, %1544
  %1600 = extractvalue %dx.types.CBufRet.f32 %1568, 2
  %1601 = fmul fast float %1600, %1552
  %1602 = fmul fast float %1600, %1553
  %1603 = fadd fast float %1601, %1596
  %1604 = fadd fast float %1602, %1598
  %1605 = extractvalue %dx.types.CBufRet.f32 %1574, 2
  %1606 = fmul fast float %1605, %1560
  %1607 = fmul fast float %1605, %1561
  %1608 = fadd fast float %1603, %1606
  %1609 = fadd fast float %1604, %1607
  %1610 = fmul fast float %1597, %1597
  %1611 = fmul fast float %1609, %1609
  %1612 = fmul fast float %1599, %1599
  %1613 = fadd fast float %1612, %1610
  %1614 = fadd fast float %1613, %1611
  %1615 = call float @dx.op.unary.f32(i32 24, float %1614)  ; Sqrt(value)
  %1616 = fcmp fast ugt float %1615, 0.000000e+00
  br i1 %1616, label %1617, label %1632, !dx.controlflow.hints !84

; <label>:1617                                    ; preds = %1357
  %1618 = fsub fast float -0.000000e+00, %1599
  %1619 = fdiv fast float %1618, %1615
  %1620 = fsub fast float -0.000000e+00, %1597
  %1621 = fdiv fast float %1620, %1615
  %1622 = fdiv fast float %1609, %1615
  %1623 = fmul fast float %1608, 0x3FE279A760000000
  %1624 = fmul fast float %1621, %1597
  %1625 = fmul fast float %1622, %1609
  %1626 = fmul fast float %1619, %1599
  %1627 = fadd fast float %1624, %1626
  %1628 = fsub fast float %1627, %1625
  %1629 = call float @dx.op.unary.f32(i32 6, float %1628)  ; FAbs(value)
  %1630 = fadd fast float %1629, 0x3DDB7CDFE0000000
  %1631 = fdiv fast float %1623, %1630
  br label %1632

; <label>:1632                                    ; preds = %1617, %1357
  %1633 = phi float [ %1631, %1617 ], [ 1.000000e+00, %1357 ]
  %1634 = fmul fast float %1582, %1582
  %1635 = fmul fast float %1594, %1594
  %1636 = fmul fast float %1584, %1584
  %1637 = fadd fast float %1636, %1634
  %1638 = fadd fast float %1637, %1635
  %1639 = call float @dx.op.unary.f32(i32 24, float %1638)  ; Sqrt(value)
  %1640 = fcmp fast ugt float %1639, 0.000000e+00
  br i1 %1640, label %1641, label %1656, !dx.controlflow.hints !84

; <label>:1641                                    ; preds = %1632
  %1642 = fsub fast float -0.000000e+00, %1584
  %1643 = fdiv fast float %1642, %1639
  %1644 = fsub fast float -0.000000e+00, %1582
  %1645 = fdiv fast float %1644, %1639
  %1646 = fdiv fast float %1594, %1639
  %1647 = fmul fast float %1593, 0x3FE279A760000000
  %1648 = fmul fast float %1645, %1582
  %1649 = fmul fast float %1646, %1594
  %1650 = fmul fast float %1643, %1584
  %1651 = fadd fast float %1648, %1650
  %1652 = fsub fast float %1651, %1649
  %1653 = call float @dx.op.unary.f32(i32 6, float %1652)  ; FAbs(value)
  %1654 = fadd fast float %1653, 0x3DDB7CDFE0000000
  %1655 = fdiv fast float %1647, %1654
  br label %1656

; <label>:1656                                    ; preds = %1641, %1632
  %1657 = phi float [ %1655, %1641 ], [ 1.000000e+00, %1632 ]
  %1658 = call float @dx.op.binary.f32(i32 36, float %1657, float %1633)  ; FMin(a,b)
  %1659 = fmul fast float %1565, %1565
  %1660 = fmul fast float %1579, %1579
  %1661 = fmul fast float %1567, %1567
  %1662 = fadd fast float %1661, %1659
  %1663 = fadd fast float %1662, %1660
  %1664 = call float @dx.op.unary.f32(i32 24, float %1663)  ; Sqrt(value)
  %1665 = fcmp fast ugt float %1664, 0.000000e+00
  br i1 %1665, label %1666, label %1681, !dx.controlflow.hints !84

; <label>:1666                                    ; preds = %1656
  %1667 = fsub fast float -0.000000e+00, %1567
  %1668 = fdiv fast float %1667, %1664
  %1669 = fsub fast float -0.000000e+00, %1565
  %1670 = fdiv fast float %1669, %1664
  %1671 = fdiv fast float %1579, %1664
  %1672 = fmul fast float %1578, 0x3FE279A760000000
  %1673 = fmul fast float %1670, %1565
  %1674 = fmul fast float %1671, %1579
  %1675 = fmul fast float %1668, %1567
  %1676 = fadd fast float %1673, %1675
  %1677 = fsub fast float %1676, %1674
  %1678 = call float @dx.op.unary.f32(i32 6, float %1677)  ; FAbs(value)
  %1679 = fadd fast float %1678, 0x3DDB7CDFE0000000
  %1680 = fdiv fast float %1672, %1679
  br label %1681

; <label>:1681                                    ; preds = %1666, %1656
  %1682 = phi float [ %1680, %1666 ], [ 1.000000e+00, %1656 ]
  %1683 = call float @dx.op.binary.f32(i32 36, float %1682, float %1658)  ; FMin(a,b)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1685 = fcmp fast olt float %1684, 1.000000e+00
  br i1 %1685, label %1686, label %1696, !dx.controlflow.hints !85

; <label>:1686                                    ; preds = %1681
  %1687 = fmul fast float %1684, %1565
  %1688 = fmul fast float %1684, %1579
  %1689 = fmul fast float %1684, %1567
  %1690 = fmul fast float %1684, %1582
  %1691 = fmul fast float %1684, %1594
  %1692 = fmul fast float %1684, %1584
  %1693 = fmul fast float %1684, %1597
  %1694 = fmul fast float %1684, %1609
  %1695 = fmul fast float %1684, %1599
  br label %1696

; <label>:1696                                    ; preds = %1686, %1681
  %1697 = phi float [ %1693, %1686 ], [ %1597, %1681 ]
  %1698 = phi float [ %1694, %1686 ], [ %1609, %1681 ]
  %1699 = phi float [ %1695, %1686 ], [ %1599, %1681 ]
  %1700 = phi float [ %1690, %1686 ], [ %1582, %1681 ]
  %1701 = phi float [ %1691, %1686 ], [ %1594, %1681 ]
  %1702 = phi float [ %1692, %1686 ], [ %1584, %1681 ]
  %1703 = phi float [ %1687, %1686 ], [ %1565, %1681 ]
  %1704 = phi float [ %1688, %1686 ], [ %1579, %1681 ]
  %1705 = phi float [ %1689, %1686 ], [ %1567, %1681 ]
  %1706 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1578)  ; FMax(a,b)
  %1707 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1593)  ; FMax(a,b)
  %1708 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1608)  ; FMax(a,b)
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = fcmp fast ogt float %1710, 0.000000e+00
  %1712 = fcmp fast oge float %1366, 0.000000e+00
  %1713 = and i1 %1712, %1711
  %1714 = fcmp fast ole float %1366, 1.000000e+00
  %1715 = and i1 %1714, %1713
  %1716 = fcmp fast oge float %1367, 0.000000e+00
  %1717 = and i1 %1716, %1715
  %1718 = fcmp fast ole float %1367, 1.000000e+00
  %1719 = and i1 %1718, %1717
  br i1 %1719, label %1720, label %1865, !dx.controlflow.hints !86

; <label>:1720                                    ; preds = %1696
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1723 = extractvalue %dx.types.CBufRet.f32 %1721, 3
  %1724 = fmul fast float %1722, %1366
  %1725 = fmul fast float %1723, %1367
  %1726 = call float @dx.op.unary.f32(i32 27, float %1724)  ; Round_ni(value)
  %1727 = call float @dx.op.unary.f32(i32 27, float %1725)  ; Round_ni(value)
  %1728 = fptosi float %1726 to i32
  %1729 = fptosi float %1727 to i32
  %1730 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1728, i32 %1729, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = and i32 %1731, 65535
  %1733 = lshr i32 %1731, 16
  %1734 = icmp eq i32 %1732, 65535
  br i1 %1734, label %1771, label %1735, !dx.controlflow.hints !87

; <label>:1735                                    ; preds = %1720
  %1736 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1737 = extractvalue %dx.types.CBufRet.f32 %1721, 0
  %1738 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1739 = fmul fast float %1737, %1366
  %1740 = fmul fast float %1738, %1367
  %1741 = fmul fast float %1739, 1.250000e-01
  %1742 = fmul fast float %1740, 1.250000e-01
  %1743 = call float @dx.op.unary.f32(i32 27, float %1741)  ; Round_ni(value)
  %1744 = call float @dx.op.unary.f32(i32 27, float %1742)  ; Round_ni(value)
  %1745 = fmul fast float %1743, 8.000000e+00
  %1746 = fmul fast float %1744, 8.000000e+00
  %1747 = and i32 %1731, 255
  %1748 = lshr i32 %1731, 8
  %1749 = and i32 %1748, 255
  %1750 = mul nuw nsw i32 %1747, 9
  %1751 = uitofp i32 %1750 to float
  %1752 = mul nuw nsw i32 %1749, 9
  %1753 = uitofp i32 %1752 to float
  %1754 = fadd fast float %1751, 5.000000e-01
  %1755 = fadd fast float %1754, %1739
  %1756 = fsub fast float %1755, %1745
  %1757 = fadd fast float %1753, 5.000000e-01
  %1758 = fadd fast float %1757, %1740
  %1759 = fsub fast float %1758, %1746
  %1760 = fdiv fast float %1756, %1710
  %1761 = fdiv fast float %1759, %1736
  %1762 = fmul fast float %1394, 4.375000e-01
  %1763 = fadd fast float %1762, 3.125000e-02
  %1764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1760, float %1761, float %1763, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.ResRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.ResRet.f32 %1764, 2
  %1768 = fadd fast float %1765, %1706
  %1769 = fadd fast float %1766, %1707
  %1770 = fadd fast float %1767, %1708
  br label %1771

; <label>:1771                                    ; preds = %1735, %1720
  %1772 = phi float [ %1770, %1735 ], [ %1708, %1720 ]
  %1773 = phi float [ %1769, %1735 ], [ %1707, %1720 ]
  %1774 = phi float [ %1768, %1735 ], [ %1706, %1720 ]
  %1775 = icmp eq i32 %1733, 65535
  br i1 %1775, label %1865, label %1776, !dx.controlflow.hints !88

; <label>:1776                                    ; preds = %1771
  %1777 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1778 = extractvalue %dx.types.CBufRet.f32 %1721, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1780 = fmul fast float %1778, %1366
  %1781 = fmul fast float %1779, %1367
  %1782 = fmul fast float %1780, 1.250000e-01
  %1783 = fmul fast float %1781, 1.250000e-01
  %1784 = call float @dx.op.unary.f32(i32 27, float %1782)  ; Round_ni(value)
  %1785 = call float @dx.op.unary.f32(i32 27, float %1783)  ; Round_ni(value)
  %1786 = fmul fast float %1784, 8.000000e+00
  %1787 = fmul fast float %1785, 8.000000e+00
  %1788 = fsub fast float %1780, %1786
  %1789 = fsub fast float %1781, %1787
  %1790 = fadd fast float %1788, 5.000000e-01
  %1791 = fadd fast float %1789, 5.000000e-01
  %1792 = and i32 %1733, 255
  %1793 = lshr i32 %1731, 24
  %1794 = mul nuw nsw i32 %1792, 9
  %1795 = uitofp i32 %1794 to float
  %1796 = mul nuw nsw i32 %1793, 9
  %1797 = uitofp i32 %1796 to float
  %1798 = fadd fast float %1790, %1795
  %1799 = fadd fast float %1791, %1797
  %1800 = fdiv fast float %1798, %1710
  %1801 = fdiv fast float %1799, %1777
  %1802 = fmul fast float %1394, 4.375000e-01
  %1803 = fadd fast float %1802, 3.125000e-02
  %1804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1800, float %1801, float %1803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1805 = extractvalue %dx.types.ResRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.ResRet.f32 %1804, 1
  %1807 = extractvalue %dx.types.ResRet.f32 %1804, 2
  %1808 = fadd fast float %1802, 5.312500e-01
  %1809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1800, float %1801, float %1808, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1810 = extractvalue %dx.types.ResRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.ResRet.f32 %1809, 1
  %1812 = extractvalue %dx.types.ResRet.f32 %1809, 2
  %1813 = fmul fast float %1810, 2.000000e+00
  %1814 = fmul fast float %1811, 2.000000e+00
  %1815 = fmul fast float %1812, 2.000000e+00
  %1816 = fadd fast float %1813, -1.000000e+00
  %1817 = fadd fast float %1814, -1.000000e+00
  %1818 = fadd fast float %1815, -1.000000e+00
  %1819 = fmul fast float %1816, %1816
  %1820 = fmul fast float %1817, %1817
  %1821 = fadd fast float %1819, %1820
  %1822 = fmul fast float %1818, %1818
  %1823 = fadd fast float %1821, %1822
  %1824 = call float @dx.op.unary.f32(i32 24, float %1823)  ; Sqrt(value)
  %1825 = fcmp fast ogt float %1824, 0.000000e+00
  br i1 %1825, label %1826, label %1830, !dx.controlflow.hints !89

; <label>:1826                                    ; preds = %1776
  %1827 = fdiv fast float %1816, %1824
  %1828 = fdiv fast float %1817, %1824
  %1829 = fdiv fast float %1818, %1824
  br label %1830

; <label>:1830                                    ; preds = %1826, %1776
  %1831 = phi float [ %1827, %1826 ], [ 0.000000e+00, %1776 ]
  %1832 = phi float [ %1828, %1826 ], [ 0.000000e+00, %1776 ]
  %1833 = phi float [ %1829, %1826 ], [ 0.000000e+00, %1776 ]
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %1837 = fsub fast float %318, %1835
  %1838 = fsub fast float %319, %1836
  %1839 = fmul fast float %1837, %1837
  %1840 = fmul fast float %1838, %1838
  %1841 = fadd fast float %1839, %1840
  %1842 = call float @dx.op.unary.f32(i32 24, float %1841)  ; Sqrt(value)
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1846 = fsub fast float %1842, %1844
  %1847 = fdiv fast float %1846, %1845
  %1848 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1849 = fmul fast float %1848, 2.000000e+00
  %1850 = fsub fast float 3.000000e+00, %1849
  %1851 = fmul fast float %1848, %1848
  %1852 = fmul fast float %1851, %1850
  %1853 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1853)  ; FMax(a,b)
  %1855 = fmul fast float %1854, 0x400C5BF8A0000000
  %1856 = fmul fast float %1852, %1805
  %1857 = fmul fast float %1856, %1855
  %1858 = fadd fast float %1857, %1774
  %1859 = fmul fast float %1852, %1806
  %1860 = fmul fast float %1859, %1855
  %1861 = fadd fast float %1860, %1773
  %1862 = fmul fast float %1852, %1807
  %1863 = fmul fast float %1862, %1855
  %1864 = fadd fast float %1863, %1772
  br label %1865

; <label>:1865                                    ; preds = %1830, %1771, %1696
  %1866 = phi float [ %1864, %1830 ], [ %1772, %1771 ], [ %1708, %1696 ]
  %1867 = phi float [ %1861, %1830 ], [ %1773, %1771 ], [ %1707, %1696 ]
  %1868 = phi float [ %1858, %1830 ], [ %1774, %1771 ], [ %1706, %1696 ]
  %1869 = fcmp fast ogt float %320, %1390
  %1870 = and i1 %1712, %1869
  %1871 = and i1 %1714, %1870
  %1872 = and i1 %1716, %1871
  %1873 = and i1 %1718, %1872
  br i1 %1873, label %1874, label %1931, !dx.controlflow.hints !90

; <label>:1874                                    ; preds = %1865
  %1875 = fmul fast float %1392, 0x3FC24924A0000000
  %1876 = fsub fast float %320, %1390
  %1877 = fdiv fast float %1876, %1875
  %1878 = call float @dx.op.unary.f32(i32 7, float %1877)  ; Saturate(value)
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.CBufRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.CBufRet.f32 %1881, 2
  %1885 = fsub fast float %1880, %1868
  %1886 = fsub fast float %1882, %1703
  %1887 = fsub fast float %1883, %1704
  %1888 = fsub fast float %1884, %1705
  %1889 = fmul fast float %1885, %1878
  %1890 = fmul fast float %1886, %1878
  %1891 = fmul fast float %1887, %1878
  %1892 = fmul fast float %1888, %1878
  %1893 = fadd fast float %1889, %1868
  %1894 = fadd fast float %1890, %1703
  %1895 = fadd fast float %1891, %1704
  %1896 = fadd fast float %1892, %1705
  %1897 = extractvalue %dx.types.CBufRet.f32 %1879, 1
  %1898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.CBufRet.f32 %1898, 1
  %1901 = extractvalue %dx.types.CBufRet.f32 %1898, 2
  %1902 = fsub fast float %1897, %1867
  %1903 = fsub fast float %1899, %1700
  %1904 = fsub fast float %1900, %1701
  %1905 = fsub fast float %1901, %1702
  %1906 = fmul fast float %1902, %1878
  %1907 = fmul fast float %1903, %1878
  %1908 = fmul fast float %1904, %1878
  %1909 = fmul fast float %1905, %1878
  %1910 = fadd fast float %1906, %1867
  %1911 = fadd fast float %1907, %1700
  %1912 = fadd fast float %1908, %1701
  %1913 = fadd fast float %1909, %1702
  %1914 = extractvalue %dx.types.CBufRet.f32 %1879, 2
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 0
  %1917 = extractvalue %dx.types.CBufRet.f32 %1915, 1
  %1918 = extractvalue %dx.types.CBufRet.f32 %1915, 2
  %1919 = fsub fast float %1914, %1866
  %1920 = fsub fast float %1916, %1697
  %1921 = fsub fast float %1917, %1698
  %1922 = fsub fast float %1918, %1699
  %1923 = fmul fast float %1919, %1878
  %1924 = fmul fast float %1920, %1878
  %1925 = fmul fast float %1921, %1878
  %1926 = fmul fast float %1922, %1878
  %1927 = fadd fast float %1923, %1866
  %1928 = fadd fast float %1924, %1697
  %1929 = fadd fast float %1925, %1698
  %1930 = fadd fast float %1926, %1699
  br label %1931

; <label>:1931                                    ; preds = %1874, %1865
  %1932 = phi float [ %1927, %1874 ], [ %1866, %1865 ]
  %1933 = phi float [ %1928, %1874 ], [ %1697, %1865 ]
  %1934 = phi float [ %1929, %1874 ], [ %1698, %1865 ]
  %1935 = phi float [ %1930, %1874 ], [ %1699, %1865 ]
  %1936 = phi float [ %1910, %1874 ], [ %1867, %1865 ]
  %1937 = phi float [ %1911, %1874 ], [ %1700, %1865 ]
  %1938 = phi float [ %1912, %1874 ], [ %1701, %1865 ]
  %1939 = phi float [ %1913, %1874 ], [ %1702, %1865 ]
  %1940 = phi float [ %1893, %1874 ], [ %1868, %1865 ]
  %1941 = phi float [ %1894, %1874 ], [ %1703, %1865 ]
  %1942 = phi float [ %1895, %1874 ], [ %1704, %1865 ]
  %1943 = phi float [ %1896, %1874 ], [ %1705, %1865 ]
  %1944 = extractvalue %dx.types.CBufRet.f32 %1515, 3
  %1945 = fmul fast float %1944, %1940
  %1946 = fmul fast float %1944, %1936
  %1947 = fmul fast float %1944, %1932
  %1948 = fmul fast float %1941, 1.500000e+00
  %1949 = fmul fast float %1948, %1944
  %1950 = fmul fast float %1942, 1.500000e+00
  %1951 = fmul fast float %1950, %1944
  %1952 = fmul fast float %1943, 1.500000e+00
  %1953 = fmul fast float %1952, %1944
  %1954 = fmul fast float %1937, 1.500000e+00
  %1955 = fmul fast float %1954, %1944
  %1956 = fmul fast float %1938, 1.500000e+00
  %1957 = fmul fast float %1956, %1944
  %1958 = fmul fast float %1939, 1.500000e+00
  %1959 = fmul fast float %1958, %1944
  %1960 = fmul fast float %1933, 1.500000e+00
  %1961 = fmul fast float %1960, %1944
  %1962 = fmul fast float %1934, 1.500000e+00
  %1963 = fmul fast float %1962, %1944
  %1964 = fmul fast float %1935, 1.500000e+00
  %1965 = fmul fast float %1964, %1944
  %1966 = fsub fast float %1355, %1945
  %1967 = fmul fast float %1966, %1253
  %1968 = fadd fast float %1967, %1945
  %1969 = fsub fast float %1354, %1949
  %1970 = fmul fast float %1969, %1253
  %1971 = fadd fast float %1970, %1949
  %1972 = fsub fast float %1353, %1951
  %1973 = fmul fast float %1972, %1253
  %1974 = fadd fast float %1973, %1951
  %1975 = fsub fast float %1352, %1953
  %1976 = fmul fast float %1975, %1253
  %1977 = fadd fast float %1976, %1953
  %1978 = fmul fast float %1351, %1253
  %1979 = fmul fast float %1350, %1253
  %1980 = fmul fast float %1349, %1253
  %1981 = fmul fast float %1348, %1253
  %1982 = fmul fast float %1347, %1253
  %1983 = fsub fast float %1346, %1946
  %1984 = fmul fast float %1983, %1253
  %1985 = fadd fast float %1984, %1946
  %1986 = fsub fast float %1345, %1955
  %1987 = fmul fast float %1986, %1253
  %1988 = fadd fast float %1987, %1955
  %1989 = fsub fast float %1344, %1957
  %1990 = fmul fast float %1989, %1253
  %1991 = fadd fast float %1990, %1957
  %1992 = fsub fast float %1343, %1959
  %1993 = fmul fast float %1992, %1253
  %1994 = fadd fast float %1993, %1959
  %1995 = fmul fast float %1342, %1253
  %1996 = fmul fast float %1341, %1253
  %1997 = fmul fast float %1340, %1253
  %1998 = fmul fast float %1339, %1253
  %1999 = fmul fast float %1338, %1253
  %2000 = fsub fast float %1337, %1947
  %2001 = fmul fast float %2000, %1253
  %2002 = fadd fast float %2001, %1947
  %2003 = fsub fast float %1336, %1961
  %2004 = fmul fast float %2003, %1253
  %2005 = fadd fast float %2004, %1961
  %2006 = fsub fast float %1335, %1963
  %2007 = fmul fast float %2006, %1253
  %2008 = fadd fast float %2007, %1963
  %2009 = fsub fast float %1334, %1965
  %2010 = fmul fast float %2009, %1253
  %2011 = fadd fast float %2010, %1965
  %2012 = fmul fast float %1333, %1253
  %2013 = fmul fast float %1332, %1253
  %2014 = fmul fast float %1331, %1253
  %2015 = fmul fast float %1330, %1253
  %2016 = fmul fast float %1329, %1253
  br label %2017

; <label>:2017                                    ; preds = %1931, %1328
  %2018 = phi float [ %2016, %1931 ], [ %1329, %1328 ]
  %2019 = phi float [ %2015, %1931 ], [ %1330, %1328 ]
  %2020 = phi float [ %2014, %1931 ], [ %1331, %1328 ]
  %2021 = phi float [ %2013, %1931 ], [ %1332, %1328 ]
  %2022 = phi float [ %2012, %1931 ], [ %1333, %1328 ]
  %2023 = phi float [ %2011, %1931 ], [ %1334, %1328 ]
  %2024 = phi float [ %2008, %1931 ], [ %1335, %1328 ]
  %2025 = phi float [ %2005, %1931 ], [ %1336, %1328 ]
  %2026 = phi float [ %2002, %1931 ], [ %1337, %1328 ]
  %2027 = phi float [ %1999, %1931 ], [ %1338, %1328 ]
  %2028 = phi float [ %1998, %1931 ], [ %1339, %1328 ]
  %2029 = phi float [ %1997, %1931 ], [ %1340, %1328 ]
  %2030 = phi float [ %1996, %1931 ], [ %1341, %1328 ]
  %2031 = phi float [ %1995, %1931 ], [ %1342, %1328 ]
  %2032 = phi float [ %1994, %1931 ], [ %1343, %1328 ]
  %2033 = phi float [ %1991, %1931 ], [ %1344, %1328 ]
  %2034 = phi float [ %1988, %1931 ], [ %1345, %1328 ]
  %2035 = phi float [ %1985, %1931 ], [ %1346, %1328 ]
  %2036 = phi float [ %1982, %1931 ], [ %1347, %1328 ]
  %2037 = phi float [ %1981, %1931 ], [ %1348, %1328 ]
  %2038 = phi float [ %1980, %1931 ], [ %1349, %1328 ]
  %2039 = phi float [ %1979, %1931 ], [ %1350, %1328 ]
  %2040 = phi float [ %1978, %1931 ], [ %1351, %1328 ]
  %2041 = phi float [ %1977, %1931 ], [ %1352, %1328 ]
  %2042 = phi float [ %1974, %1931 ], [ %1353, %1328 ]
  %2043 = phi float [ %1971, %1931 ], [ %1354, %1328 ]
  %2044 = phi float [ %1968, %1931 ], [ %1355, %1328 ]
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2047 = fmul fast float %2046, %2046
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2052 = fmul fast float %2044, 0x3FD20DD760000000
  %2053 = fmul fast float %2051, %2042
  %2054 = fmul fast float %2051, %2051
  %2055 = fmul fast float %2054, 0x3FEE471020000000
  %2056 = fadd fast float %2055, 0xBFD42F6020000000
  %2057 = fmul fast float %2056, %2038
  %2058 = fmul fast float %2049, %2041
  %2059 = fmul fast float %2050, %2043
  %2060 = fmul fast float %2051, 0x3FF17B1420000000
  %2061 = fmul fast float %2047, %2037
  %2062 = fmul fast float %2061, %2049
  %2063 = fmul fast float %2062, %2060
  %2064 = fmul fast float %2047, %2039
  %2065 = fmul fast float %2064, %2050
  %2066 = fmul fast float %2065, %2060
  %2067 = fmul fast float %2049, %2049
  %2068 = fmul fast float %2050, %2050
  %2069 = fsub fast float %2067, %2068
  %2070 = fmul fast float %2036, 0x3FE17B1420000000
  %2071 = fmul fast float %2070, %2069
  %2072 = fmul fast float %2040, 0x3FF17B1420000000
  %2073 = fmul fast float %2072, %2050
  %2074 = fmul fast float %2073, %2049
  %2075 = fadd fast float %2071, %2074
  %2076 = fadd fast float %2075, %2057
  %2077 = fmul fast float %2076, %2047
  %2078 = fsub fast float %2059, %2053
  %2079 = fadd fast float %2078, %2058
  %2080 = fmul fast float %2079, 0x3FDF454380000000
  %2081 = fmul fast float %2080, %2046
  %2082 = fsub fast float %2052, %2063
  %2083 = fsub fast float %2082, %2066
  %2084 = fadd fast float %2083, %2077
  %2085 = fadd fast float %2084, %2081
  %2086 = fmul fast float %2035, 0x3FD20DD760000000
  %2087 = fmul fast float %2051, %2033
  %2088 = fmul fast float %2056, %2029
  %2089 = fmul fast float %2049, %2032
  %2090 = fmul fast float %2050, %2034
  %2091 = fmul fast float %2047, %2028
  %2092 = fmul fast float %2091, %2049
  %2093 = fmul fast float %2092, %2060
  %2094 = fmul fast float %2047, %2030
  %2095 = fmul fast float %2094, %2050
  %2096 = fmul fast float %2095, %2060
  %2097 = fmul fast float %2027, 0x3FE17B1420000000
  %2098 = fmul fast float %2097, %2069
  %2099 = fmul fast float %2031, 0x3FF17B1420000000
  %2100 = fmul fast float %2099, %2050
  %2101 = fmul fast float %2100, %2049
  %2102 = fadd fast float %2098, %2101
  %2103 = fadd fast float %2102, %2088
  %2104 = fmul fast float %2103, %2047
  %2105 = fsub fast float %2090, %2087
  %2106 = fadd fast float %2105, %2089
  %2107 = fmul fast float %2106, 0x3FDF454380000000
  %2108 = fmul fast float %2107, %2046
  %2109 = fsub fast float %2086, %2093
  %2110 = fsub fast float %2109, %2096
  %2111 = fadd fast float %2110, %2104
  %2112 = fadd fast float %2111, %2108
  %2113 = fmul fast float %2026, 0x3FD20DD760000000
  %2114 = fmul fast float %2051, %2024
  %2115 = fmul fast float %2056, %2020
  %2116 = fmul fast float %2049, %2023
  %2117 = fmul fast float %2050, %2025
  %2118 = fmul fast float %2047, %2019
  %2119 = fmul fast float %2118, %2049
  %2120 = fmul fast float %2119, %2060
  %2121 = fmul fast float %2047, %2021
  %2122 = fmul fast float %2121, %2050
  %2123 = fmul fast float %2122, %2060
  %2124 = fmul fast float %2018, 0x3FE17B1420000000
  %2125 = fmul fast float %2124, %2069
  %2126 = fmul fast float %2022, 0x3FF17B1420000000
  %2127 = fmul fast float %2126, %2050
  %2128 = fmul fast float %2127, %2049
  %2129 = fadd fast float %2125, %2128
  %2130 = fadd fast float %2129, %2115
  %2131 = fmul fast float %2130, %2047
  %2132 = fsub fast float %2117, %2114
  %2133 = fadd fast float %2132, %2116
  %2134 = fmul fast float %2133, 0x3FDF454380000000
  %2135 = fmul fast float %2134, %2046
  %2136 = fsub fast float %2113, %2120
  %2137 = fsub fast float %2136, %2123
  %2138 = fadd fast float %2137, %2131
  %2139 = fadd fast float %2138, %2135
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2142 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %2143 = fmul fast float %2142, %2141
  %2144 = fmul fast float %2143, %2085
  %2145 = fmul fast float %2143, %2112
  %2146 = fmul fast float %2143, %2139
  %2147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.f32 %2147, 3
  %2149 = fcmp fast une float %2148, 0.000000e+00
  %2150 = extractvalue %dx.types.CBufRet.f32 %2147, 0
  %2151 = extractvalue %dx.types.CBufRet.f32 %2147, 1
  %2152 = extractvalue %dx.types.CBufRet.f32 %2147, 2
  br i1 %2149, label %2153, label %2175, !dx.controlflow.hints !91

; <label>:2153                                    ; preds = %2017
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.CBufRet.f32 %2154, 1
  %2157 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2158 = call float @dx.op.dot3.f32(i32 55, float %2150, float %2151, float %2152, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %2159 = fcmp fast ogt float %1204, 0.000000e+00
  %2160 = select i1 %2159, float 1.000000e+00, float -1.000000e+00
  %2161 = fmul fast float %2160, 5.000000e-01
  %2162 = fmul fast float %2161, %2158
  %2163 = fmul fast float %2160, %1204
  %2164 = fadd fast float %2162, 4.921875e-01
  %2165 = fadd fast float %2163, -3.125000e-02
  %2166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %2164, float 0x3FB25F3060000000, float %2165, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 0
  %2170 = fmul fast float %2167, 0x400921FB60000000
  %2171 = fmul fast float %2170, %2169
  %2172 = fmul fast float %2171, %2155
  %2173 = fmul fast float %2171, %2156
  %2174 = fmul fast float %2171, %2157
  br label %2175

; <label>:2175                                    ; preds = %2153, %2017
  %2176 = phi float [ %2172, %2153 ], [ 0.000000e+00, %2017 ]
  %2177 = phi float [ %2173, %2153 ], [ 0.000000e+00, %2017 ]
  %2178 = phi float [ %2174, %2153 ], [ 0.000000e+00, %2017 ]
  %2179 = fdiv fast float 1.000000e+00, %2150
  %2180 = fdiv fast float 1.000000e+00, %2151
  %2181 = fdiv fast float 1.000000e+00, %2152
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 0
  %2184 = fmul fast float %2183, %2150
  %2185 = fmul fast float %2183, %2151
  %2186 = fmul fast float %2183, %2152
  %2187 = fadd fast float %2184, %318
  %2188 = fsub fast float -0.000000e+00, %2187
  %2189 = fadd fast float %2185, %319
  %2190 = fsub fast float -0.000000e+00, %2189
  %2191 = fadd fast float %2186, %320
  br i1 %334, label %2263, label %2192, !dx.controlflow.hints !49

; <label>:2192                                    ; preds = %2175
  %2193 = extractvalue %dx.types.CBufRet.f32 %2182, 1
  %2194 = fcmp fast ogt float %2193, %2183
  br i1 %2194, label %2195, label %2197, !dx.controlflow.hints !50

; <label>:2195                                    ; preds = %2192
  %2196 = fsub fast float %2193, %2183
  br label %2254

; <label>:2197                                    ; preds = %2192
  %2198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.i32 %2198, 3
  %2200 = icmp eq i32 %2199, 0
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 2
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 2
  %2205 = fsub fast float %2202, %2191
  %2206 = fadd fast float %2205, %2204
  %2207 = fsub fast float 0xC7EFFFFFE0000000, %2191
  br i1 %2200, label %2217, label %2208, !dx.controlflow.hints !40

; <label>:2208                                    ; preds = %2197
  %2209 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2188, float %2190, float %2206)  ; Dot3(ax,ay,az,bx,by,bz)
  %2210 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2150, float %2151, float %2152)  ; Dot3(ax,ay,az,bx,by,bz)
  %2211 = fdiv fast float 1.000000e+00, %2210
  %2212 = fmul fast float %2211, %2209
  %2213 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2188, float %2190, float %2207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2214 = fmul fast float %2211, %2213
  %2215 = call float @dx.op.binary.f32(i32 36, float %2212, float %2214)  ; FMin(a,b)
  %2216 = call float @dx.op.binary.f32(i32 35, float %2212, float %2214)  ; FMax(a,b)
  br label %2247

; <label>:2217                                    ; preds = %2197
  %2218 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2219 = extractvalue %dx.types.CBufRet.f32 %2201, 1
  %2220 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2221 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2222 = fsub fast float %2218, %2187
  %2223 = fmul fast float %2179, %2222
  %2224 = fadd fast float %2222, %2220
  %2225 = fmul fast float %2224, %2179
  %2226 = call float @dx.op.binary.f32(i32 36, float %2223, float %2225)  ; FMin(a,b)
  %2227 = call float @dx.op.binary.f32(i32 35, float %2223, float %2225)  ; FMax(a,b)
  %2228 = fsub fast float %2219, %2189
  %2229 = fmul fast float %2180, %2228
  %2230 = fadd fast float %2228, %2221
  %2231 = fmul fast float %2230, %2180
  %2232 = call float @dx.op.binary.f32(i32 36, float %2229, float %2231)  ; FMin(a,b)
  %2233 = call float @dx.op.binary.f32(i32 35, float %2226, float %2232)  ; FMax(a,b)
  %2234 = call float @dx.op.binary.f32(i32 35, float %2229, float %2231)  ; FMax(a,b)
  %2235 = call float @dx.op.binary.f32(i32 36, float %2227, float %2234)  ; FMin(a,b)
  %2236 = fmul fast float %2181, %2207
  %2237 = fmul fast float %2181, %2206
  %2238 = call float @dx.op.binary.f32(i32 36, float %2236, float %2237)  ; FMin(a,b)
  %2239 = call float @dx.op.binary.f32(i32 35, float %2233, float %2238)  ; FMax(a,b)
  %2240 = call float @dx.op.binary.f32(i32 35, float %2236, float %2237)  ; FMax(a,b)
  %2241 = call float @dx.op.binary.f32(i32 36, float %2235, float %2240)  ; FMin(a,b)
  %2242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2239)  ; FMax(a,b)
  %2243 = fcmp fast ult float %2241, %2242
  br i1 %2243, label %2247, label %2244, !dx.controlflow.hints !41

; <label>:2244                                    ; preds = %2217
  %2245 = call float @dx.op.binary.f32(i32 36, float %2239, float %2241)  ; FMin(a,b)
  %2246 = call float @dx.op.binary.f32(i32 35, float %2239, float %2241)  ; FMax(a,b)
  br label %2247

; <label>:2247                                    ; preds = %2244, %2217, %2208
  %2248 = phi float [ %2215, %2208 ], [ %2245, %2244 ], [ 0.000000e+00, %2217 ]
  %2249 = phi float [ %2216, %2208 ], [ %2246, %2244 ], [ 0.000000e+00, %2217 ]
  %2250 = fcmp fast ogt float %2248, 0.000000e+00
  br i1 %2250, label %2254, label %2251, !dx.controlflow.hints !51

; <label>:2251                                    ; preds = %2247
  %2252 = fcmp fast ugt float %2249, 0.000000e+00
  br i1 %2252, label %2253, label %2254, !dx.controlflow.hints !52

; <label>:2253                                    ; preds = %2251
  br label %2254

; <label>:2254                                    ; preds = %2253, %2251, %2247, %2195
  %2255 = phi float [ %2196, %2195 ], [ 0.000000e+00, %2253 ], [ 0x47EFFFFFE0000000, %2251 ], [ %2248, %2247 ]
  %2256 = phi i32 [ %203, %2195 ], [ %203, %2253 ], [ 0, %2251 ], [ %203, %2247 ]
  %2257 = icmp ne i32 %2256, 0
  %2258 = zext i1 %2257 to i32
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2261 = call float @dx.op.binary.f32(i32 35, float %2255, float %2260)  ; FMax(a,b)
  %2262 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2261)  ; FMin(a,b)
  br label %2263

; <label>:2263                                    ; preds = %2254, %2175
  %2264 = phi float [ %2262, %2254 ], [ 0x47EFFFFFE0000000, %2175 ]
  %2265 = phi i32 [ %2258, %2254 ], [ 0, %2175 ]
  %2266 = fsub fast float %2187, %505
  %2267 = fsub fast float %2189, %506
  %2268 = fmul fast float %2266, %510
  %2269 = fmul fast float %2267, %511
  %2270 = call float @dx.op.binary.f32(i32 36, float %2268, float %2269)  ; FMin(a,b)
  %2271 = fcmp fast olt float %2270, 0.000000e+00
  %2272 = call float @dx.op.binary.f32(i32 35, float %2268, float %2269)  ; FMax(a,b)
  %2273 = fcmp fast ogt float %2272, 1.000000e+00
  %2274 = or i1 %2271, %2273
  %2275 = fcmp fast olt float %2191, %519
  %2276 = or i1 %2274, %2275
  %2277 = fcmp fast ogt float %2191, %526
  %2278 = or i1 %2276, %2277
  %2279 = extractvalue %dx.types.CBufRet.f32 %509, 0
  br i1 %2278, label %2280, label %2308, !dx.controlflow.hints !58

; <label>:2280                                    ; preds = %2263
  %2281 = extractvalue %dx.types.CBufRet.f32 %509, 1
  %2282 = fsub fast float %505, %2187
  %2283 = fmul fast float %2282, %2179
  %2284 = fadd fast float %2282, %2279
  %2285 = fmul fast float %2284, %2179
  %2286 = call float @dx.op.binary.f32(i32 36, float %2283, float %2285)  ; FMin(a,b)
  %2287 = call float @dx.op.binary.f32(i32 35, float %2283, float %2285)  ; FMax(a,b)
  %2288 = fsub fast float %506, %2189
  %2289 = fmul fast float %2288, %2180
  %2290 = fadd fast float %2288, %2281
  %2291 = fmul fast float %2290, %2180
  %2292 = call float @dx.op.binary.f32(i32 36, float %2289, float %2291)  ; FMin(a,b)
  %2293 = call float @dx.op.binary.f32(i32 35, float %2286, float %2292)  ; FMax(a,b)
  %2294 = call float @dx.op.binary.f32(i32 35, float %2289, float %2291)  ; FMax(a,b)
  %2295 = call float @dx.op.binary.f32(i32 36, float %2287, float %2294)  ; FMin(a,b)
  %2296 = fsub fast float %519, %2191
  %2297 = fmul fast float %2296, %2181
  %2298 = fsub fast float %523, %2191
  %2299 = fadd fast float %2298, %525
  %2300 = fmul fast float %2299, %2181
  %2301 = call float @dx.op.binary.f32(i32 36, float %2297, float %2300)  ; FMin(a,b)
  %2302 = call float @dx.op.binary.f32(i32 35, float %2293, float %2301)  ; FMax(a,b)
  %2303 = call float @dx.op.binary.f32(i32 35, float %2297, float %2300)  ; FMax(a,b)
  %2304 = call float @dx.op.binary.f32(i32 36, float %2295, float %2303)  ; FMin(a,b)
  %2305 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2302)  ; FMax(a,b)
  %2306 = fcmp fast oge float %2304, %2305
  %2307 = select i1 %2306, float %2302, float 1.000000e+07
  br label %2323

; <label>:2308                                    ; preds = %2263
  %2309 = fsub fast float 1.000000e+00, %2269
  %2310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %2268, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2311 = extractvalue %dx.types.ResRet.f32 %2310, 0
  %2312 = extractvalue %dx.types.ResRet.f32 %2310, 1
  %2313 = extractvalue %dx.types.ResRet.f32 %2310, 2
  %2314 = extractvalue %dx.types.ResRet.f32 %2310, 3
  %2315 = fmul fast float %2279, 9.765625e-04
  %2316 = fcmp fast oeq float %2311, 0.000000e+00
  %2317 = fcmp ule float %2191, %2313
  %2318 = fcmp uge float %2191, %2312
  %2319 = or i1 %2318, %2317
  %2320 = or i1 %2316, %2319
  %2321 = zext i1 %2320 to i32
  %2322 = xor i32 %2321, 1
  br label %2323

; <label>:2323                                    ; preds = %2308, %2280
  %2324 = phi float [ %2307, %2280 ], [ %2315, %2308 ]
  %2325 = phi float [ %303, %2280 ], [ %2311, %2308 ]
  %2326 = phi float [ %304, %2280 ], [ %2312, %2308 ]
  %2327 = phi float [ %305, %2280 ], [ %2313, %2308 ]
  %2328 = phi float [ %306, %2280 ], [ %2314, %2308 ]
  %2329 = phi i32 [ 0, %2280 ], [ %2322, %2308 ]
  %2330 = icmp eq i32 %2329, 0
  %2331 = call float @dx.op.binary.f32(i32 35, float %2324, float %614)  ; FMax(a,b)
  %2332 = call float @dx.op.binary.f32(i32 36, float %2264, float %2331)  ; FMin(a,b)
  br i1 %617, label %2345, label %2333, !dx.controlflow.hints !62

; <label>:2333                                    ; preds = %2323
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 3
  %2336 = extractvalue %dx.types.CBufRet.f32 %2334, 2
  %2337 = fmul fast float %2335, %2183
  %2338 = fdiv fast float %2337, %2183
  %2339 = fadd fast float %2338, 1.000000e+00
  %2340 = call float @dx.op.unary.f32(i32 23, float %2339)  ; Log(value)
  %2341 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2340)  ; FMin(a,b)
  %2342 = fmul fast float %2336, %2183
  %2343 = fmul fast float %2342, %2341
  %2344 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2343)  ; FMin(a,b)
  br label %2345

; <label>:2345                                    ; preds = %2333, %2323
  %2346 = phi float [ %2344, %2333 ], [ 0x47EFFFFFE0000000, %2323 ]
  br i1 %632, label %2518, label %2347, !dx.controlflow.hints !63

; <label>:2347                                    ; preds = %2345
  %2348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.i32 %2348, 1
  %2350 = and i32 %2349, 1
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2352, label %2509, !dx.controlflow.hints !64

; <label>:2352                                    ; preds = %2347
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2355 = extractvalue %dx.types.CBufRet.f32 %2353, 3
  %2356 = fmul fast float %2354, %2187
  %2357 = fmul fast float %2355, %2189
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2361 = fadd fast float %2356, %2359
  %2362 = fadd fast float %2357, %2360
  %2363 = call float @dx.op.unary.f32(i32 7, float %2361)  ; Saturate(value)
  %2364 = call float @dx.op.unary.f32(i32 7, float %2362)  ; Saturate(value)
  %2365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2363, float %2364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 0
  %2369 = fmul fast float %2368, %2366
  %2370 = fsub fast float %2361, %2363
  %2371 = fsub fast float %2362, %2364
  %2372 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2373 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2374 = fmul fast float %2372, %2370
  %2375 = fmul fast float %2373, %2371
  %2376 = fmul fast float %2374, %2374
  %2377 = fmul fast float %2375, %2375
  %2378 = fadd fast float %2376, %2377
  %2379 = call float @dx.op.unary.f32(i32 24, float %2378)  ; Sqrt(value)
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 3
  %2382 = fmul fast float %2381, %2379
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  %2384 = extractvalue %dx.types.CBufRet.f32 %2380, 2
  %2385 = fsub fast float %2384, %2369
  %2386 = fmul fast float %2385, %2383
  %2387 = extractvalue %dx.types.CBufRet.f32 %2367, 1
  %2388 = fsub fast float %2191, %2369
  %2389 = fsub fast float %2388, %2387
  %2390 = fsub fast float %2389, %2386
  %2391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2392 = extractvalue %dx.types.CBufRet.f32 %2391, 2
  %2393 = fsub fast float %2390, %2392
  %2394 = fcmp fast olt float %2393, 0.000000e+00
  %2395 = call float @dx.op.unary.f32(i32 6, float %2393)  ; FAbs(value)
  %2396 = extractvalue %dx.types.CBufRet.i32 %2348, 0
  %2397 = icmp eq i32 %2396, 0
  br i1 %2397, label %2451, label %2398

; <label>:2398                                    ; preds = %2352
  br label %2399

; <label>:2399                                    ; preds = %2438, %2398
  %2400 = phi i32 [ %2444, %2438 ], [ 1, %2398 ]
  %2401 = phi float [ %2446, %2438 ], [ 0x47EFFFFFE0000000, %2398 ]
  %2402 = phi i32 [ %2447, %2438 ], [ 0, %2398 ]
  %2403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2404 = extractvalue %dx.types.CBufRet.f32 %2403, 1
  %2405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2406 = extractvalue %dx.types.CBufRet.i32 %2405, 1
  %2407 = and i32 %2406, 8
  %2408 = icmp eq i32 %2407, 0
  %2409 = fcmp fast ogt float %2404, %2390
  %2410 = or i1 %2409, %2408
  %2411 = add i32 %2402, 171
  %2412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2411)  ; CBufferLoadLegacy(handle,regIndex)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.CBufRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.CBufRet.f32 %2412, 2
  br i1 %2410, label %2416, label %2422, !dx.controlflow.hints !65

; <label>:2416                                    ; preds = %2399
  %2417 = fsub fast float %2413, %2187
  %2418 = fsub fast float %2414, %2189
  %2419 = fmul fast float %2417, %2417
  %2420 = fmul fast float %2418, %2418
  %2421 = fadd fast float %2419, %2420
  br label %2438

; <label>:2422                                    ; preds = %2399
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 2
  %2425 = extractvalue %dx.types.CBufRet.f32 %2403, 2
  %2426 = fmul fast float %2425, %2424
  %2427 = fsub fast float %2426, %2404
  %2428 = fdiv fast float %2415, %2427
  %2429 = fsub fast float %2187, %2413
  %2430 = fsub fast float %2189, %2414
  %2431 = fsub fast float %2390, %2404
  %2432 = fmul fast float %2428, %2431
  %2433 = fmul fast float %2429, %2429
  %2434 = fmul fast float %2430, %2430
  %2435 = fadd fast float %2433, %2434
  %2436 = fmul fast float %2432, %2432
  %2437 = fadd fast float %2435, %2436
  br label %2438

; <label>:2438                                    ; preds = %2422, %2416
  %2439 = phi float [ %2421, %2416 ], [ %2437, %2422 ]
  %2440 = call float @dx.op.unary.f32(i32 24, float %2439)  ; Sqrt(value)
  %2441 = fsub float %2415, %2440
  %2442 = fcmp fast olt float %2441, 0.000000e+00
  %2443 = zext i1 %2442 to i32
  %2444 = and i32 %2443, %2400
  %2445 = call float @dx.op.unary.f32(i32 6, float %2441)  ; FAbs(value)
  %2446 = call float @dx.op.binary.f32(i32 36, float %2401, float %2445)  ; FMin(a,b)
  %2447 = add i32 %2402, 1
  %2448 = extractvalue %dx.types.CBufRet.i32 %2405, 0
  %2449 = icmp ult i32 %2447, %2448
  br i1 %2449, label %2399, label %2450

; <label>:2450                                    ; preds = %2438
  br label %2451

; <label>:2451                                    ; preds = %2450, %2352
  %2452 = phi i32 [ 1, %2352 ], [ %2444, %2450 ]
  %2453 = phi float [ 0x47EFFFFFE0000000, %2352 ], [ %2446, %2450 ]
  br label %2454

; <label>:2454                                    ; preds = %2454, %2451
  %2455 = phi i32 [ %2452, %2451 ], [ %2494, %2454 ]
  %2456 = phi float [ 0x47EFFFFFE0000000, %2451 ], [ %2496, %2454 ]
  %2457 = phi i32 [ 0, %2451 ], [ %2497, %2454 ]
  %2458 = add nuw nsw i32 %2457, 191
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2458)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.CBufRet.f32 %2459, 1
  %2462 = extractvalue %dx.types.CBufRet.f32 %2459, 2
  %2463 = add nuw nsw i32 %2457, 195
  %2464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2463)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.f32 %2464, 0
  %2466 = extractvalue %dx.types.CBufRet.f32 %2464, 1
  %2467 = extractvalue %dx.types.CBufRet.f32 %2464, 2
  %2468 = fsub fast float %2187, %2460
  %2469 = fsub fast float %2189, %2461
  %2470 = fsub fast float %2390, %2462
  %2471 = call float @dx.op.unary.f32(i32 6, float %2468)  ; FAbs(value)
  %2472 = call float @dx.op.unary.f32(i32 6, float %2469)  ; FAbs(value)
  %2473 = call float @dx.op.unary.f32(i32 6, float %2470)  ; FAbs(value)
  %2474 = fsub fast float %2471, %2465
  %2475 = fsub fast float %2472, %2466
  %2476 = fsub fast float %2473, %2467
  %2477 = call float @dx.op.binary.f32(i32 35, float %2474, float 0.000000e+00)  ; FMax(a,b)
  %2478 = call float @dx.op.binary.f32(i32 35, float %2475, float 0.000000e+00)  ; FMax(a,b)
  %2479 = call float @dx.op.binary.f32(i32 35, float %2476, float 0.000000e+00)  ; FMax(a,b)
  %2480 = fmul fast float %2477, %2477
  %2481 = fmul fast float %2478, %2478
  %2482 = fadd fast float %2481, %2480
  %2483 = fmul fast float %2479, %2479
  %2484 = fadd fast float %2482, %2483
  %2485 = call float @dx.op.unary.f32(i32 24, float %2484)  ; Sqrt(value)
  %2486 = call float @dx.op.binary.f32(i32 35, float %2475, float %2476)  ; FMax(a,b)
  %2487 = call float @dx.op.binary.f32(i32 35, float %2474, float %2486)  ; FMax(a,b)
  %2488 = call float @dx.op.binary.f32(i32 36, float %2487, float 0.000000e+00)  ; FMin(a,b)
  %2489 = fadd fast float %2488, %2485
  %2490 = fsub fast float -0.000000e+00, %2489
  %2491 = fcmp ogt float %2489, -0.000000e+00
  %2492 = icmp ne i32 %2455, 0
  %2493 = and i1 %2492, %2491
  %2494 = zext i1 %2493 to i32
  %2495 = call float @dx.op.unary.f32(i32 6, float %2490)  ; FAbs(value)
  %2496 = call float @dx.op.binary.f32(i32 36, float %2456, float %2495)  ; FMin(a,b)
  %2497 = add nuw nsw i32 %2457, 1
  %2498 = icmp eq i32 %2497, 4
  br i1 %2498, label %2499, label %2454

; <label>:2499                                    ; preds = %2454
  %2500 = call float @dx.op.binary.f32(i32 36, float %2395, float %2496)  ; FMin(a,b)
  %2501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.i32 %2501, 1
  %2503 = and i32 %2502, 2
  %2504 = icmp ne i32 %2503, 0
  %2505 = xor i1 %2493, %2504
  %2506 = call float @dx.op.binary.f32(i32 36, float %2500, float %2453)  ; FMin(a,b)
  %2507 = and i1 %2505, %2394
  %2508 = zext i1 %2507 to i32
  br label %2509

; <label>:2509                                    ; preds = %2499, %2347
  %2510 = phi i32 [ %301, %2347 ], [ %2508, %2499 ]
  %2511 = phi float [ 0.000000e+00, %2347 ], [ %2506, %2499 ]
  %2512 = phi float [ %2191, %2347 ], [ %2390, %2499 ]
  %2513 = icmp ne i32 %2510, 0
  %2514 = extractvalue %dx.types.CBufRet.f32 %613, 3
  %2515 = call float @dx.op.binary.f32(i32 35, float %2511, float %2514)  ; FMax(a,b)
  %2516 = call float @dx.op.binary.f32(i32 36, float %2346, float %2515)  ; FMin(a,b)
  %2517 = zext i1 %2513 to i32
  br label %2518

; <label>:2518                                    ; preds = %2509, %2345
  %2519 = phi i32 [ %2510, %2509 ], [ %301, %2345 ]
  %2520 = phi float [ %2512, %2509 ], [ %302, %2345 ]
  %2521 = phi float [ %2516, %2509 ], [ %2346, %2345 ]
  %2522 = phi i32 [ %2517, %2509 ], [ 0, %2345 ]
  %2523 = icmp eq i32 %2265, 0
  br i1 %2523, label %2597, label %2524, !dx.controlflow.hints !66

; <label>:2524                                    ; preds = %2518
  %2525 = fmul fast float %809, %2183
  %2526 = call float @dx.op.unary.f32(i32 23, float %2525)  ; Log(value)
  %2527 = fmul fast float %2526, 0x3FE62E4300000000
  %2528 = call float @dx.op.binary.f32(i32 35, float %2527, float 1.000000e+00)  ; FMax(a,b)
  %2529 = fmul fast float %2528, %2521
  %2530 = call float @dx.op.binary.f32(i32 36, float %2529, float %2332)  ; FMin(a,b)
  %2531 = call float @dx.op.binary.f32(i32 35, float %2530, float 0.000000e+00)  ; FMax(a,b)
  %2532 = fcmp fast ogt float %2531, 0x3F1A36E2E0000000
  %2533 = fadd fast float %2184, %2187
  %2534 = fadd fast float %2185, %2189
  %2535 = select i1 %2532, float %2533, float %2187
  %2536 = select i1 %2532, float %2534, float %2189
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.CBufRet.f32 %2537, 1
  %2540 = fsub fast float %2535, %2538
  %2541 = fsub fast float %2536, %2539
  %2542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.f32 %2542, 0
  %2544 = extractvalue %dx.types.CBufRet.f32 %2542, 1
  %2545 = fmul fast float %2540, %2543
  %2546 = fmul fast float %2541, %2544
  %2547 = fsub fast float 1.000000e+00, %2546
  %2548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.i32 %2548, 3
  %2550 = icmp eq i32 %2549, 0
  br i1 %2550, label %2557, label %2551, !dx.controlflow.hints !53

; <label>:2551                                    ; preds = %2524
  %2552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2545, float %2547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2553 = extractvalue %dx.types.ResRet.f32 %2552, 0
  %2554 = extractvalue %dx.types.ResRet.f32 %2552, 1
  %2555 = extractvalue %dx.types.ResRet.f32 %2552, 2
  %2556 = extractvalue %dx.types.ResRet.f32 %2552, 3
  br label %2563

; <label>:2557                                    ; preds = %2524
  %2558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %2545, float %2547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2559 = extractvalue %dx.types.ResRet.f32 %2558, 0
  %2560 = extractvalue %dx.types.ResRet.f32 %2558, 1
  %2561 = extractvalue %dx.types.ResRet.f32 %2558, 2
  %2562 = extractvalue %dx.types.ResRet.f32 %2558, 3
  br label %2563

; <label>:2563                                    ; preds = %2557, %2551
  %2564 = phi float [ %2553, %2551 ], [ %2559, %2557 ]
  %2565 = phi float [ %2554, %2551 ], [ %2560, %2557 ]
  %2566 = phi float [ %2555, %2551 ], [ %2561, %2557 ]
  %2567 = phi float [ %2556, %2551 ], [ %2562, %2557 ]
  %2568 = extractvalue %dx.types.CBufRet.f32 %2542, 3
  %2569 = fmul fast float %2568, %2565
  %2570 = fmul fast float %2569, %2564
  %2571 = fsub fast float %2569, %2570
  %2572 = fcmp fast ole float %2571, 0.000000e+00
  %2573 = extractvalue %dx.types.CBufRet.f32 %2537, 2
  %2574 = fadd fast float %2570, %2573
  %2575 = fmul fast float %2568, %2566
  %2576 = fadd fast float %2575, %2573
  %2577 = fdiv fast float 1.000000e+00, %2571
  %2578 = select i1 %2572, float 1.000000e+06, float %2577
  %2579 = fsub fast float %2191, %2574
  %2580 = fmul fast float %2578, %2579
  %2581 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2582 = extractvalue %dx.types.CBufRet.f32 %2542, 2
  %2583 = fmul fast float %2582, %2581
  %2584 = fsub fast float %2582, %2583
  %2585 = fcmp fast olt float %2191, %2576
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 3
  %2588 = fmul fast float %2587, 3.000000e+00
  %2589 = select i1 %2585, float %2588, float 3.000000e+00
  %2590 = fmul fast float %2584, %2589
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 2
  %2593 = fmul fast float %2183, 0x3FD5555560000000
  %2594 = fmul fast float %2593, %2567
  %2595 = fmul fast float %2594, %2592
  %2596 = fmul fast float %2595, %2590
  br label %2597

; <label>:2597                                    ; preds = %2563, %2518
  %2598 = phi float [ %2596, %2563 ], [ 0.000000e+00, %2518 ]
  br i1 %617, label %2646, label %2599, !dx.controlflow.hints !68

; <label>:2599                                    ; preds = %2597
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 0
  %2602 = fsub fast float %2601, %2191
  %2603 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2188, float %2190, float %2602)  ; Dot3(ax,ay,az,bx,by,bz)
  %2604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2150, float %2151, float %2152)  ; Dot3(ax,ay,az,bx,by,bz)
  %2605 = fdiv fast float 1.000000e+00, %2604
  %2606 = fmul fast float %2605, %2603
  %2607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2606)  ; FMax(a,b)
  %2608 = fcmp fast olt float %2152, 0.000000e+00
  %2609 = call float @dx.op.binary.f32(i32 36, float %2183, float %2607)  ; FMin(a,b)
  br i1 %2608, label %2611, label %2610, !dx.controlflow.hints !69

; <label>:2610                                    ; preds = %2599
  br label %2611

; <label>:2611                                    ; preds = %2610, %2599
  %2612 = phi float [ 0.000000e+00, %2610 ], [ %2609, %2599 ]
  %2613 = phi float [ %2609, %2610 ], [ %2183, %2599 ]
  %2614 = phi float [ %2609, %2610 ], [ 0.000000e+00, %2599 ]
  %2615 = phi float [ %2183, %2610 ], [ %2609, %2599 ]
  %2616 = fsub fast float %2613, %2612
  %2617 = extractvalue %dx.types.CBufRet.f32 %2600, 1
  %2618 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2617)  ; FMin(a,b)
  %2619 = fsub fast float %2191, %2601
  %2620 = fmul fast float %2618, 0x3FF7154760000000
  %2621 = fmul fast float %2620, %2619
  %2622 = call float @dx.op.unary.f32(i32 21, float %2621)  ; Exp(value)
  %2623 = fmul fast float %2152, 0x3FF7154760000000
  %2624 = fmul fast float %2623, %2615
  %2625 = fmul fast float %2624, %2618
  %2626 = call float @dx.op.unary.f32(i32 21, float %2625)  ; Exp(value)
  %2627 = fmul fast float %2623, %2614
  %2628 = fmul fast float %2627, %2618
  %2629 = call float @dx.op.unary.f32(i32 21, float %2628)  ; Exp(value)
  %2630 = fsub fast float %2626, %2629
  %2631 = fmul fast float %2630, %2622
  %2632 = fmul fast float %2618, %2152
  %2633 = fdiv fast float %2631, %2632
  %2634 = fadd fast float %2616, %2633
  %2635 = call float @dx.op.unary.f32(i32 6, float %2152)  ; FAbs(value)
  %2636 = fcmp fast olt float %2635, 0x3F0FFB4800000000
  %2637 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2619)  ; FMax(a,b)
  %2638 = fmul fast float %2637, 0x3FF7154760000000
  %2639 = fmul fast float %2638, %2617
  %2640 = call float @dx.op.unary.f32(i32 21, float %2639)  ; Exp(value)
  %2641 = fmul fast float %2640, %2183
  %2642 = select i1 %2636, float %2641, float %2634
  %2643 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2644 = fmul fast float %2642, %2643
  %2645 = fadd fast float %2644, %2598
  br label %2646

; <label>:2646                                    ; preds = %2611, %2597
  %2647 = phi float [ %2645, %2611 ], [ %2598, %2597 ]
  br i1 %2330, label %2773, label %2648, !dx.controlflow.hints !70

; <label>:2648                                    ; preds = %2646
  %2649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.i32 %2649, 0
  %2651 = icmp ne i32 %2650, 0
  %2652 = zext i1 %2651 to i32
  %2653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.i32 %2653, 0
  %2655 = icmp eq i32 %2654, 0
  br i1 %2655, label %2689, label %2656

; <label>:2656                                    ; preds = %2648
  br label %2657

; <label>:2657                                    ; preds = %2684, %2656
  %2658 = phi i32 [ %2685, %2684 ], [ 0, %2656 ]
  %2659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2658, i32 0)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2661 = extractvalue %dx.types.ResRet.f32 %2659, 1
  %2662 = extractvalue %dx.types.ResRet.f32 %2659, 2
  %2663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2658, i32 16)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.ResRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.ResRet.f32 %2663, 2
  %2667 = fsub fast float %2660, %2664
  %2668 = fsub fast float %2661, %2665
  %2669 = fsub fast float %2662, %2666
  %2670 = fadd fast float %2664, %2660
  %2671 = fadd fast float %2665, %2661
  %2672 = fadd fast float %2666, %2662
  %2673 = fcmp fast olt float %2187, %2667
  %2674 = fcmp fast olt float %2189, %2668
  %2675 = fcmp fast olt float %2191, %2669
  %2676 = or i1 %2673, %2674
  %2677 = or i1 %2675, %2676
  %2678 = fcmp fast ogt float %2187, %2670
  %2679 = fcmp fast ogt float %2189, %2671
  %2680 = fcmp fast ogt float %2191, %2672
  %2681 = or i1 %2678, %2679
  %2682 = or i1 %2680, %2681
  %2683 = or i1 %2677, %2682
  br i1 %2683, label %2684, label %2687, !dx.controlflow.hints !71

; <label>:2684                                    ; preds = %2657
  %2685 = add nuw i32 %2658, 1
  %2686 = icmp ult i32 %2685, %2654
  br i1 %2686, label %2657, label %2687

; <label>:2687                                    ; preds = %2684, %2657
  %2688 = phi i32 [ 255, %2684 ], [ %2658, %2657 ]
  br label %2689

; <label>:2689                                    ; preds = %2687, %2648
  %2690 = phi i32 [ 255, %2648 ], [ %2688, %2687 ]
  %2691 = icmp eq i32 %2690, 255
  br i1 %2691, label %2697, label %2692, !dx.controlflow.hints !72

; <label>:2692                                    ; preds = %2689
  %2693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2690, i32 156)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.i32 %2693, 0
  %2695 = icmp ne i32 %2694, 0
  %2696 = zext i1 %2695 to i32
  br label %2697

; <label>:2697                                    ; preds = %2692, %2689
  %2698 = phi i32 [ %2696, %2692 ], [ %2652, %2689 ]
  %2699 = icmp eq i32 %2698, 0
  br i1 %2699, label %2700, label %2769, !dx.controlflow.hints !73

; <label>:2700                                    ; preds = %2697
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 3
  %2703 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 2
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 3
  br i1 %2691, label %2717, label %2707, !dx.controlflow.hints !74

; <label>:2707                                    ; preds = %2700
  %2708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2690, i32 60)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2690, i32 64)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.f32 %2710, 0
  %2712 = extractvalue %dx.types.ResRet.f32 %2710, 1
  %2713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2690, i32 72)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2690, i32 96)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  br label %2717

; <label>:2717                                    ; preds = %2707, %2700
  %2718 = phi float [ %2709, %2707 ], [ %525, %2700 ]
  %2719 = phi float [ %2714, %2707 ], [ %523, %2700 ]
  %2720 = phi float [ %2716, %2707 ], [ %2703, %2700 ]
  %2721 = phi float [ %2711, %2707 ], [ %2705, %2700 ]
  %2722 = phi float [ %2712, %2707 ], [ %2706, %2700 ]
  %2723 = call float @dx.op.binary.f32(i32 35, float %2325, float 0.000000e+00)  ; FMax(a,b)
  %2724 = call float @dx.op.binary.f32(i32 36, float %2723, float 1.000000e+00)  ; FMin(a,b)
  %2725 = call float @dx.op.unary.f32(i32 24, float %2724)  ; Sqrt(value)
  %2726 = call float @dx.op.binary.f32(i32 35, float %2328, float 0x3F847AE140000000)  ; FMax(a,b)
  %2727 = fsub fast float %2326, %2191
  %2728 = fsub fast float %2191, %2327
  %2729 = call float @dx.op.binary.f32(i32 36, float %2728, float %2727)  ; FMin(a,b)
  %2730 = fdiv fast float %2729, %2726
  %2731 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2732 = fsub fast float %2191, %2719
  %2733 = fdiv fast float %2732, %2718
  %2734 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2735 = fsub fast float 1.000000e+00, %2734
  %2736 = fmul float %2731, %2735
  %2737 = fmul float %2736, %2736
  %2738 = fmul fast float %2725, %2702
  %2739 = fmul fast float %2738, %2737
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2742 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2743 = fsub fast float %2739, %2742
  %2744 = fsub fast float %2741, %2742
  %2745 = fdiv fast float %2743, %2744
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = fmul fast float %2746, %2720
  %2748 = fcmp fast ogt float %2722, 0.000000e+00
  br i1 %2748, label %2749, label %2769, !dx.controlflow.hints !75

; <label>:2749                                    ; preds = %2717
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.CBufRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.CBufRet.f32 %2750, 2
  %2754 = fsub fast float %2187, %2751
  %2755 = fsub fast float %2189, %2752
  %2756 = fsub fast float %2191, %2753
  %2757 = fmul fast float %2754, %2754
  %2758 = fmul fast float %2755, %2755
  %2759 = fadd fast float %2757, %2758
  %2760 = fmul fast float %2756, %2756
  %2761 = fadd fast float %2759, %2760
  %2762 = call float @dx.op.unary.f32(i32 24, float %2761)  ; Sqrt(value)
  %2763 = fsub fast float %2762, %2721
  %2764 = fsub fast float %2722, %2721
  %2765 = fdiv fast float %2763, %2764
  %2766 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2767 = fmul fast float %2766, %2766
  %2768 = fmul fast float %2767, %2747
  br label %2769

; <label>:2769                                    ; preds = %2749, %2717, %2697
  %2770 = phi float [ 0.000000e+00, %2697 ], [ %2768, %2749 ], [ %2747, %2717 ]
  %2771 = fmul fast float %2770, %2183
  %2772 = fadd fast float %2771, %2647
  br label %2773

; <label>:2773                                    ; preds = %2769, %2646
  %2774 = phi float [ %2772, %2769 ], [ %2647, %2646 ]
  %2775 = icmp eq i32 %2522, 0
  br i1 %2775, label %2807, label %2776, !dx.controlflow.hints !76

; <label>:2776                                    ; preds = %2773
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 1
  %2779 = fsub fast float %2183, %2778
  %2780 = extractvalue %dx.types.CBufRet.f32 %2777, 3
  %2781 = fmul fast float %2779, %2780
  %2782 = call float @dx.op.unary.f32(i32 7, float %2781)  ; Saturate(value)
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 3
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2787 = fsub fast float %2786, %2520
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 3
  %2790 = fmul fast float %2787, %2789
  %2791 = call float @dx.op.unary.f32(i32 7, float %2790)  ; Saturate(value)
  %2792 = fmul fast float %2791, %2784
  %2793 = extractvalue %dx.types.CBufRet.f32 %2788, 0
  %2794 = fsub fast float %2183, %2793
  %2795 = extractvalue %dx.types.CBufRet.f32 %2788, 1
  %2796 = fmul fast float %2794, %2795
  %2797 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2798 = fsub fast float 1.000000e+00, %2782
  %2799 = fmul fast float %2797, %2798
  %2800 = fadd fast float %2799, %2782
  %2801 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2802 = fsub fast float %2792, %2801
  %2803 = fmul fast float %2802, %2800
  %2804 = fadd fast float %2803, %2801
  %2805 = fmul fast float %2804, %2183
  %2806 = fadd fast float %2805, %2774
  br label %2807

; <label>:2807                                    ; preds = %2776, %2773
  %2808 = phi float [ %2806, %2776 ], [ %2774, %2773 ]
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 3
  %2811 = fmul fast float %2808, 0xBFF7154760000000
  %2812 = fmul fast float %2811, %2810
  %2813 = call float @dx.op.unary.f32(i32 21, float %2812)  ; Exp(value)
  %2814 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  %2815 = fmul fast float %2814, %2176
  %2816 = fmul fast float %2814, %2177
  %2817 = fmul fast float %2814, %2178
  %2818 = fadd fast float %2815, %2144
  %2819 = fadd fast float %2816, %2145
  %2820 = fadd fast float %2817, %2146
  %2821 = fsub fast float 1.000000e+00, %1213
  %2822 = fmul fast float %1205, %314
  %2823 = fmul fast float %2822, %2821
  %2824 = fmul fast float %2823, %2818
  %2825 = fmul fast float %1206, %314
  %2826 = fmul fast float %2825, %2821
  %2827 = fmul fast float %2826, %2819
  %2828 = fmul fast float %1207, %314
  %2829 = fmul fast float %2828, %2821
  %2830 = fmul fast float %2829, %2820
  %2831 = fadd fast float %2824, %315
  %2832 = fadd fast float %2827, %316
  %2833 = fadd fast float %2830, %317
  %2834 = fdiv fast float %1189, %819
  %2835 = fadd fast float %819, %321
  %2836 = fmul fast float %321, %321
  %2837 = fmul fast float %2835, %2835
  %2838 = fsub fast float %2836, %2837
  %2839 = fmul fast float %2838, -5.000000e-01
  %2840 = fmul fast float %2839, %2834
  %2841 = fadd fast float %2840, %313
  %2842 = fadd fast float %1189, %324
  %2843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.i32 %2843, 0
  %2845 = icmp eq i32 %2844, 0
  br i1 %2845, label %2872, label %2846, !dx.controlflow.hints !92

; <label>:2846                                    ; preds = %2807
  %2847 = icmp ne i32 %329, 0
  %2848 = zext i1 %2847 to i32
  %2849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2850 = extractvalue %dx.types.CBufRet.f32 %2849, 2
  %2851 = extractvalue %dx.types.CBufRet.f32 %2849, 0
  %2852 = fsub fast float %2835, %2851
  %2853 = fmul fast float %2852, %2850
  %2854 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  %2855 = fadd fast float %2854, -5.000000e-01
  %2856 = fmul fast float %2855, 2.000000e+00
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 2
  %2859 = fcmp fast olt float %2856, %2858
  br i1 %2859, label %2860, label %2872, !dx.controlflow.hints !93

; <label>:2860                                    ; preds = %2846
  %2861 = fmul fast float %2856, %2856
  %2862 = fmul fast float %2821, %314
  %2863 = fmul fast float %2856, %2862
  %2864 = fmul fast float %2861, %2862
  %2865 = fmul fast float %2863, %2861
  %2866 = fmul fast float %2861, %2861
  %2867 = fmul fast float %2866, %2862
  %2868 = fadd fast float %2863, %325
  %2869 = fadd fast float %2864, %326
  %2870 = fadd fast float %2865, %327
  %2871 = fadd fast float %2867, %328
  br label %2872

; <label>:2872                                    ; preds = %2860, %2846, %2807
  %2873 = phi float [ %325, %2807 ], [ %2868, %2860 ], [ %325, %2846 ]
  %2874 = phi float [ %326, %2807 ], [ %2869, %2860 ], [ %326, %2846 ]
  %2875 = phi float [ %327, %2807 ], [ %2870, %2860 ], [ %327, %2846 ]
  %2876 = phi float [ %328, %2807 ], [ %2871, %2860 ], [ %328, %2846 ]
  %2877 = phi i32 [ %329, %2807 ], [ 1, %2860 ], [ %2848, %2846 ]
  %2878 = fmul fast float %1213, %314
  br label %2879

; <label>:2879                                    ; preds = %2872, %1208
  %2880 = phi float [ %1209, %1208 ], [ %2835, %2872 ]
  %2881 = phi i32 [ %301, %1208 ], [ %2519, %2872 ]
  %2882 = phi float [ %302, %1208 ], [ %2520, %2872 ]
  %2883 = phi float [ %303, %1208 ], [ %2325, %2872 ]
  %2884 = phi float [ %304, %1208 ], [ %2326, %2872 ]
  %2885 = phi float [ %305, %1208 ], [ %2327, %2872 ]
  %2886 = phi float [ %306, %1208 ], [ %2328, %2872 ]
  %2887 = phi float [ %313, %1208 ], [ %2841, %2872 ]
  %2888 = phi float [ %314, %1208 ], [ %2878, %2872 ]
  %2889 = phi float [ %315, %1208 ], [ %2831, %2872 ]
  %2890 = phi float [ %316, %1208 ], [ %2832, %2872 ]
  %2891 = phi float [ %317, %1208 ], [ %2833, %2872 ]
  %2892 = phi float [ %324, %1208 ], [ %2842, %2872 ]
  %2893 = phi float [ %325, %1208 ], [ %2873, %2872 ]
  %2894 = phi float [ %326, %1208 ], [ %2874, %2872 ]
  %2895 = phi float [ %327, %1208 ], [ %2875, %2872 ]
  %2896 = phi float [ %328, %1208 ], [ %2876, %2872 ]
  %2897 = phi i32 [ %329, %1208 ], [ %2877, %2872 ]
  %2898 = fmul fast float %819, %114
  %2899 = fmul fast float %819, %115
  %2900 = fmul fast float %819, %116
  %2901 = fadd fast float %2898, %318
  %2902 = fadd fast float %2899, %319
  %2903 = fadd fast float %2900, %320
  %2904 = fcmp fast olt float %2880, %278
  %2905 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %2906 = fcmp fast olt float %2905, %2888
  %2907 = and i1 %2904, %2906
  br i1 %2907, label %300, label %2908

; <label>:2908                                    ; preds = %2879
  br label %2909

; <label>:2909                                    ; preds = %2908, %271
  %2910 = phi float [ 0.000000e+00, %271 ], [ %2887, %2908 ]
  %2911 = phi float [ 1.000000e+00, %271 ], [ %2888, %2908 ]
  %2912 = phi float [ 0.000000e+00, %271 ], [ %2889, %2908 ]
  %2913 = phi float [ 0.000000e+00, %271 ], [ %2890, %2908 ]
  %2914 = phi float [ 0.000000e+00, %271 ], [ %2891, %2908 ]
  %2915 = phi float [ 0.000000e+00, %271 ], [ %2892, %2908 ]
  %2916 = phi float [ 0.000000e+00, %271 ], [ %2893, %2908 ]
  %2917 = phi float [ 0.000000e+00, %271 ], [ %2894, %2908 ]
  %2918 = phi float [ 0.000000e+00, %271 ], [ %2895, %2908 ]
  %2919 = phi float [ 0.000000e+00, %271 ], [ %2896, %2908 ]
  %2920 = phi i32 [ 0, %271 ], [ %2897, %2908 ]
  %2921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.i32 %2921, 0
  %2923 = icmp eq i32 %2922, 0
  br i1 %2923, label %2965, label %2924, !dx.controlflow.hints !94

; <label>:2924                                    ; preds = %2909
  %2925 = icmp eq i32 %2920, 0
  br i1 %2925, label %2964, label %2926, !dx.controlflow.hints !95

; <label>:2926                                    ; preds = %2924
  %2927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.i32 %2927, 2
  %2929 = icmp eq i32 %2928, 0
  br i1 %2929, label %2936, label %2930, !dx.controlflow.hints !96

; <label>:2930                                    ; preds = %2926
  %2931 = fsub fast float 1.000000e+00, %2911
  %2932 = fdiv fast float %2916, %2931
  %2933 = fdiv fast float %2917, %2931
  %2934 = fdiv fast float %2918, %2931
  %2935 = fdiv fast float %2919, %2931
  br label %2941

; <label>:2936                                    ; preds = %2926
  %2937 = fadd fast float %2916, %2911
  %2938 = fadd fast float %2917, %2911
  %2939 = fadd fast float %2918, %2911
  %2940 = fadd fast float %2919, %2911
  br label %2941

; <label>:2941                                    ; preds = %2936, %2930
  %2942 = phi float [ %2932, %2930 ], [ %2937, %2936 ]
  %2943 = phi float [ %2933, %2930 ], [ %2938, %2936 ]
  %2944 = phi float [ %2934, %2930 ], [ %2939, %2936 ]
  %2945 = phi float [ %2935, %2930 ], [ %2940, %2936 ]
  %2946 = call float @dx.op.binary.f32(i32 35, float %2942, float -1.000000e+00)  ; FMax(a,b)
  %2947 = call float @dx.op.binary.f32(i32 35, float %2943, float -1.000000e+00)  ; FMax(a,b)
  %2948 = call float @dx.op.binary.f32(i32 35, float %2944, float -1.000000e+00)  ; FMax(a,b)
  %2949 = call float @dx.op.binary.f32(i32 35, float %2945, float -1.000000e+00)  ; FMax(a,b)
  %2950 = call float @dx.op.binary.f32(i32 36, float %2946, float 1.000000e+00)  ; FMin(a,b)
  %2951 = call float @dx.op.binary.f32(i32 36, float %2947, float 1.000000e+00)  ; FMin(a,b)
  %2952 = call float @dx.op.binary.f32(i32 36, float %2948, float 1.000000e+00)  ; FMin(a,b)
  %2953 = call float @dx.op.binary.f32(i32 36, float %2949, float 1.000000e+00)  ; FMin(a,b)
  %2954 = fmul fast float %2950, 1.500000e+00
  %2955 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2952, float %2954)  ; FMad(a,b,c)
  %2956 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2951, float 0.000000e+00)  ; FMad(a,b,c)
  %2957 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2953, float %2956)  ; FMad(a,b,c)
  %2958 = fmul fast float %2950, 0x3FEBB67AE0000000
  %2959 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2952, float %2958)  ; FMad(a,b,c)
  %2960 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2951, float 0.000000e+00)  ; FMad(a,b,c)
  %2961 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2953, float %2960)  ; FMad(a,b,c)
  %2962 = fadd fast float %2955, 5.000000e-01
  %2963 = fadd fast float %2959, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 0, float %2962, float %2957, float %2963, float %2961, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2965

; <label>:2964                                    ; preds = %2924
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2965

; <label>:2965                                    ; preds = %2964, %2941, %2909
  %2966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.f32 %2966, 2
  %2968 = fsub fast float %2911, %2967
  %2969 = fdiv fast float %2968, %2967
  %2970 = call float @dx.op.unary.f32(i32 7, float %2969)  ; Saturate(value)
  %2971 = fmul fast float %2970, 2.000000e+00
  %2972 = fsub fast float 3.000000e+00, %2971
  %2973 = fmul fast float %2970, %2970
  %2974 = fmul fast float %2973, %2911
  %2975 = fmul fast float %2974, %2972
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = extractvalue %dx.types.CBufRet.f32 %2976, 1
  %2979 = extractvalue %dx.types.CBufRet.f32 %2976, 2
  %2980 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %2977, float %2978, float %2979)  ; Dot3(ax,ay,az,bx,by,bz)
  %2981 = fmul fast float %2980, %2910
  %2982 = fcmp fast ogt float %2915, 0.000000e+00
  %2983 = fdiv fast float 1.000000e+00, %2915
  %2984 = fmul fast float %2981, %2983
  %2985 = select i1 %2982, float %2984, float %125
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.CBufRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.CBufRet.f32 %2986, 2
  %2990 = fmul fast float %2987, %78
  %2991 = fmul fast float %2988, %78
  %2992 = fmul fast float %2989, %78
  %2993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2994 = extractvalue %dx.types.CBufRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.CBufRet.f32 %2993, 1
  %2996 = extractvalue %dx.types.CBufRet.f32 %2993, 2
  %2997 = fmul fast float %2994, %79
  %2998 = fmul fast float %2995, %79
  %2999 = fmul fast float %2996, %79
  %3000 = fadd fast float %2997, %2990
  %3001 = fadd fast float %2998, %2991
  %3002 = fadd fast float %2999, %2992
  %3003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3004 = extractvalue %dx.types.CBufRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.CBufRet.f32 %3003, 1
  %3006 = extractvalue %dx.types.CBufRet.f32 %3003, 2
  %3007 = fadd fast float %3000, %3004
  %3008 = fadd fast float %3001, %3005
  %3009 = fadd fast float %3002, %3006
  %3010 = fmul fast float %3007, %2985
  %3011 = fmul fast float %3008, %2985
  %3012 = fmul fast float %3009, %2985
  %3013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.f32 %3013, 0
  %3015 = extractvalue %dx.types.CBufRet.f32 %3013, 1
  %3016 = extractvalue %dx.types.CBufRet.f32 %3013, 2
  %3017 = extractvalue %dx.types.CBufRet.f32 %3013, 3
  %3018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3019 = extractvalue %dx.types.CBufRet.f32 %3018, 0
  %3020 = extractvalue %dx.types.CBufRet.f32 %3018, 1
  %3021 = extractvalue %dx.types.CBufRet.f32 %3018, 2
  %3022 = extractvalue %dx.types.CBufRet.f32 %3018, 3
  %3023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3023, 0
  %3025 = extractvalue %dx.types.CBufRet.f32 %3023, 1
  %3026 = extractvalue %dx.types.CBufRet.f32 %3023, 2
  %3027 = extractvalue %dx.types.CBufRet.f32 %3023, 3
  %3028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3029 = extractvalue %dx.types.CBufRet.f32 %3028, 0
  %3030 = extractvalue %dx.types.CBufRet.f32 %3028, 1
  %3031 = extractvalue %dx.types.CBufRet.f32 %3028, 2
  %3032 = extractvalue %dx.types.CBufRet.f32 %3028, 3
  %3033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3034 = extractvalue %dx.types.CBufRet.f32 %3033, 3
  %3035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3036 = extractvalue %dx.types.CBufRet.f32 %3035, 3
  %3037 = extractvalue %dx.types.CBufRet.f32 %3035, 0
  %3038 = extractvalue %dx.types.CBufRet.f32 %3035, 1
  %3039 = extractvalue %dx.types.CBufRet.f32 %3035, 2
  %3040 = fcmp fast olt float %3039, -5.000000e-01
  %3041 = call float @dx.op.dot3.f32(i32 55, float %3010, float %3011, float %3012, float %3010, float %3011, float %3012)  ; Dot3(ax,ay,az,bx,by,bz)
  %3042 = call float @dx.op.unary.f32(i32 25, float %3041)  ; Rsqrt(value)
  %3043 = fmul fast float %3042, %3041
  %3044 = fmul fast float %3042, %3010
  %3045 = fmul fast float %3042, %3011
  %3046 = fmul fast float %3042, %3012
  %3047 = fadd fast float %3043, %3017
  %3048 = call float @dx.op.dot3.f32(i32 55, float %3044, float %3045, float %3046, float %3014, float %3015, float %3016)  ; Dot3(ax,ay,az,bx,by,bz)
  %3049 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3050 = extractvalue %dx.types.CBufRet.i32 %3049, 1
  %3051 = and i32 %3050, 1
  %3052 = icmp ne i32 %3051, 0
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 2
  %3055 = fcmp fast ogt float %3054, 0.000000e+00
  %3056 = and i1 %3052, %3055
  br i1 %3056, label %3057, label %3463, !dx.controlflow.hints !97

; <label>:3057                                    ; preds = %2965
  %3058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3059 = extractvalue %dx.types.CBufRet.f32 %3058, 3
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 2
  %3062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3063 = extractvalue %dx.types.CBufRet.f32 %3062, 2
  %3064 = fsub fast float %3061, %3063
  %3065 = and i32 %3050, 2
  %3066 = extractvalue %dx.types.CBufRet.i32 %3049, 0
  %3067 = call i32 @dx.op.binary.i32(i32 40, i32 %3066, i32 3)  ; UMin(a,b)
  %3068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.CBufRet.f32 %3068, 1
  %3071 = extractvalue %dx.types.CBufRet.f32 %3062, 0
  %3072 = extractvalue %dx.types.CBufRet.f32 %3062, 1
  %3073 = fsub fast float %3069, %3071
  %3074 = fsub fast float %3070, %3072
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 0
  %3077 = fcmp fast ogt float %3076, 0.000000e+00
  %3078 = fsub fast float -0.000000e+00, %3073
  %3079 = fsub fast float -0.000000e+00, %3074
  %3080 = call float @dx.op.dot2.f32(i32 54, float %3044, float %3045, float %3044, float %3045)  ; Dot2(ax,ay,bx,by)
  %3081 = call float @dx.op.dot2.f32(i32 54, float %3044, float %3045, float %3078, float %3079)  ; Dot2(ax,ay,bx,by)
  %3082 = fmul fast float %3081, 2.000000e+00
  %3083 = call float @dx.op.dot2.f32(i32 54, float %3078, float %3079, float %3078, float %3079)  ; Dot2(ax,ay,bx,by)
  %3084 = fmul fast float %3076, %3076
  %3085 = fsub fast float %3083, %3084
  %3086 = fmul fast float %3082, %3082
  %3087 = fmul fast float %3080, 4.000000e+00
  %3088 = fmul fast float %3087, %3085
  %3089 = fsub fast float %3086, %3088
  %3090 = fcmp fast ogt float %3089, 0.000000e+00
  br i1 %3090, label %3091, label %3106, !dx.controlflow.hints !98

; <label>:3091                                    ; preds = %3057
  %3092 = fcmp fast ogt float %3082, 0.000000e+00
  %3093 = call float @dx.op.unary.f32(i32 24, float %3089)  ; Sqrt(value)
  %3094 = fsub fast float -0.000000e+00, %3093
  %3095 = select i1 %3092, float %3093, float %3094
  %3096 = fadd fast float %3095, %3082
  %3097 = fmul float %3096, -5.000000e-01
  %3098 = fdiv fast float %3097, %3080
  %3099 = call float @dx.op.binary.f32(i32 35, float %3098, float 0.000000e+00)  ; FMax(a,b)
  %3100 = call float @dx.op.binary.f32(i32 36, float %3043, float %3099)  ; FMin(a,b)
  %3101 = fdiv fast float %3085, %3097
  %3102 = call float @dx.op.binary.f32(i32 35, float %3101, float 0.000000e+00)  ; FMax(a,b)
  %3103 = call float @dx.op.binary.f32(i32 36, float %3043, float %3102)  ; FMin(a,b)
  %3104 = call float @dx.op.binary.f32(i32 36, float %3100, float %3103)  ; FMin(a,b)
  %3105 = call float @dx.op.binary.f32(i32 35, float %3100, float %3103)  ; FMax(a,b)
  br label %3106

; <label>:3106                                    ; preds = %3091, %3057
  %3107 = phi float [ %3105, %3091 ], [ -1.000000e+00, %3057 ]
  %3108 = phi float [ %3104, %3091 ], [ -1.000000e+00, %3057 ]
  %3109 = phi i1 [ true, %3091 ], [ false, %3057 ]
  %3110 = and i1 %3077, %3109
  br i1 %3110, label %3111, label %3113, !dx.controlflow.hints !99

; <label>:3111                                    ; preds = %3106
  %3112 = fcmp fast oeq float %3108, %3107
  br i1 %3112, label %3416, label %3114, !dx.controlflow.hints !100

; <label>:3113                                    ; preds = %3106
  br i1 %3077, label %3416, label %3114, !dx.controlflow.hints !101

; <label>:3114                                    ; preds = %3113, %3111
  %3115 = phi float [ %3043, %3113 ], [ %3107, %3111 ]
  %3116 = phi float [ 0.000000e+00, %3113 ], [ %3108, %3111 ]
  %3117 = icmp ne i32 %3065, 0
  %3118 = fmul fast float %3115, %3046
  %3119 = fadd fast float %3118, %3059
  %3120 = fmul fast float %3119, %3115
  %3121 = select i1 %3117, float 0.000000e+00, float %3120
  %3122 = fcmp fast oeq float %3046, 0.000000e+00
  %3123 = fdiv fast float %3064, %3046
  %3124 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3123)  ; FMax(a,b)
  %3125 = select i1 %3122, float %3115, float %3124
  %3126 = call float @dx.op.binary.f32(i32 36, float %3115, float %3125)  ; FMin(a,b)
  %3127 = fcmp fast ogt float %3046, 0.000000e+00
  %3128 = fcmp fast olt float %3064, 0.000000e+00
  br i1 %3127, label %3129, label %3186, !dx.controlflow.hints !102

; <label>:3129                                    ; preds = %3114
  %3130 = icmp eq i32 %3065, 0
  br i1 %3128, label %3131, label %3175, !dx.controlflow.hints !103

; <label>:3131                                    ; preds = %3129
  %3132 = select i1 %3130, float %3115, float 0.000000e+00
  %3133 = fsub fast float -0.000000e+00, %3132
  %3134 = call float @dx.op.unary.f32(i32 6, float %3133)  ; FAbs(value)
  %3135 = fmul fast float %3132, %3046
  %3136 = fadd fast float %3135, %3059
  %3137 = fmul fast float %3134, %3136
  %3138 = fsub fast float %3121, %3137
  %3139 = fsub fast float %3115, %3134
  %3140 = select i1 %3130, float %3139, float 0.000000e+00
  %3141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3142 = extractvalue %dx.types.CBufRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.CBufRet.f32 %3141, 1
  %3144 = extractvalue %dx.types.CBufRet.f32 %3141, 2
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 0
  %3147 = extractvalue %dx.types.CBufRet.f32 %3145, 1
  %3148 = extractvalue %dx.types.CBufRet.f32 %3145, 2
  %3149 = extractvalue %dx.types.CBufRet.f32 %3145, 3
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 3
  %3152 = call float @dx.op.binary.f32(i32 36, float %3138, float %3151)  ; FMin(a,b)
  %3153 = fmul fast float %3149, %3140
  %3154 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3155 = fsub fast float %3146, %3142
  %3156 = fsub fast float %3147, %3143
  %3157 = fsub fast float %3148, %3144
  %3158 = fmul fast float %3154, %3155
  %3159 = fmul fast float %3154, %3156
  %3160 = fmul fast float %3154, %3157
  %3161 = fadd fast float %3158, %3142
  %3162 = fadd fast float %3159, %3143
  %3163 = fadd fast float %3160, %3144
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.CBufRet.f32 %3164, 1
  %3167 = fadd fast float %3166, %3165
  %3168 = call float @dx.op.unary.f32(i32 7, float %3167)  ; Saturate(value)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3164, 2
  %3170 = extractvalue %dx.types.CBufRet.f32 %3164, 3
  %3171 = fadd fast float %3170, %3169
  %3172 = call float @dx.op.unary.f32(i32 7, float %3171)  ; Saturate(value)
  %3173 = fmul fast float %3168, %3152
  %3174 = fmul fast float %3173, %3172
  br label %3416

; <label>:3175                                    ; preds = %3129
  br i1 %3130, label %3176, label %3197, !dx.controlflow.hints !104

; <label>:3176                                    ; preds = %3175
  %3177 = call float @dx.op.binary.f32(i32 36, float %3126, float %3116)  ; FMin(a,b)
  %3178 = fsub fast float %3126, %3177
  %3179 = fsub fast float %3178, %3115
  %3180 = call float @dx.op.unary.f32(i32 6, float %3179)  ; FAbs(value)
  %3181 = fadd fast float %3178, %3115
  %3182 = fmul fast float %3181, %3046
  %3183 = fadd fast float %3182, %3059
  %3184 = fmul fast float %3183, %3180
  %3185 = fsub fast float %3121, %3184
  br label %3197

; <label>:3186                                    ; preds = %3114
  br i1 %3128, label %3187, label %3197, !dx.controlflow.hints !105

; <label>:3187                                    ; preds = %3186
  %3188 = call float @dx.op.binary.f32(i32 35, float %3116, float %3126)  ; FMax(a,b)
  %3189 = icmp eq i32 %3065, 0
  %3190 = select i1 %3189, float %3126, float 0.000000e+00
  %3191 = fsub fast float -0.000000e+00, %3190
  %3192 = call float @dx.op.unary.f32(i32 6, float %3191)  ; FAbs(value)
  %3193 = fmul fast float %3190, %3046
  %3194 = fadd fast float %3193, %3059
  %3195 = fmul fast float %3192, %3194
  %3196 = fsub fast float %3121, %3195
  br label %3197

; <label>:3197                                    ; preds = %3187, %3186, %3176, %3175
  %3198 = phi float [ %3116, %3175 ], [ %3116, %3176 ], [ %3188, %3187 ], [ %3116, %3186 ]
  %3199 = phi float [ 0.000000e+00, %3175 ], [ %3180, %3176 ], [ %3192, %3187 ], [ 0.000000e+00, %3186 ]
  %3200 = phi float [ %3121, %3175 ], [ %3185, %3176 ], [ %3196, %3187 ], [ %3121, %3186 ]
  %3201 = phi float [ %3126, %3175 ], [ %3126, %3176 ], [ %3115, %3187 ], [ %3115, %3186 ]
  %3202 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %3202, align 4, !tbaa !106, !noalias !110
  %3203 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %3203, align 4, !tbaa !106, !noalias !110
  %3204 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %3204, align 4, !tbaa !106, !noalias !110
  %3205 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %3205, align 4, !tbaa !106, !noalias !110
  %3206 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %3206, align 4, !tbaa !106, !noalias !110
  %3207 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %3207, align 4, !tbaa !106, !noalias !110
  %3208 = icmp sgt i32 %3067, 0
  br i1 %3208, label %3209, label %3270

; <label>:3209                                    ; preds = %3197
  br label %3210

; <label>:3210                                    ; preds = %3259, %3209
  %3211 = phi i32 [ %3260, %3259 ], [ 0, %3209 ]
  %3212 = phi i32 [ %3261, %3259 ], [ 0, %3209 ]
  %3213 = add nuw i32 %3212, 171
  %3214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %3213)  ; CBufferLoadLegacy(handle,regIndex)
  %3215 = extractvalue %dx.types.CBufRet.f32 %3214, 0
  %3216 = extractvalue %dx.types.CBufRet.f32 %3214, 1
  %3217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.CBufRet.f32 %3217, 1
  %3220 = fsub fast float %3215, %3218
  %3221 = fsub fast float %3216, %3219
  %3222 = extractvalue %dx.types.CBufRet.f32 %3214, 2
  %3223 = fsub fast float -0.000000e+00, %3220
  %3224 = fsub fast float -0.000000e+00, %3221
  %3225 = call float @dx.op.dot2.f32(i32 54, float %3044, float %3045, float %3223, float %3224)  ; Dot2(ax,ay,bx,by)
  %3226 = fmul fast float %3225, 2.000000e+00
  %3227 = call float @dx.op.dot2.f32(i32 54, float %3223, float %3224, float %3223, float %3224)  ; Dot2(ax,ay,bx,by)
  %3228 = fmul fast float %3222, %3222
  %3229 = fsub fast float %3227, %3228
  %3230 = fmul fast float %3226, %3226
  %3231 = fmul fast float %3087, %3229
  %3232 = fsub fast float %3230, %3231
  %3233 = fcmp fast ogt float %3232, 0.000000e+00
  br i1 %3233, label %3234, label %3249, !dx.controlflow.hints !98

; <label>:3234                                    ; preds = %3210
  %3235 = fcmp fast ogt float %3226, 0.000000e+00
  %3236 = call float @dx.op.unary.f32(i32 24, float %3232)  ; Sqrt(value)
  %3237 = fsub fast float -0.000000e+00, %3236
  %3238 = select i1 %3235, float %3236, float %3237
  %3239 = fadd fast float %3238, %3226
  %3240 = fmul float %3239, -5.000000e-01
  %3241 = fdiv fast float %3240, %3080
  %3242 = call float @dx.op.binary.f32(i32 35, float %3241, float 0.000000e+00)  ; FMax(a,b)
  %3243 = call float @dx.op.binary.f32(i32 36, float %3115, float %3242)  ; FMin(a,b)
  %3244 = fdiv fast float %3229, %3240
  %3245 = call float @dx.op.binary.f32(i32 35, float %3244, float 0.000000e+00)  ; FMax(a,b)
  %3246 = call float @dx.op.binary.f32(i32 36, float %3115, float %3245)  ; FMin(a,b)
  %3247 = call float @dx.op.binary.f32(i32 36, float %3243, float %3246)  ; FMin(a,b)
  %3248 = call float @dx.op.binary.f32(i32 35, float %3243, float %3246)  ; FMax(a,b)
  br label %3249

; <label>:3249                                    ; preds = %3234, %3210
  %3250 = phi float [ %3248, %3234 ], [ -1.000000e+00, %3210 ]
  %3251 = phi float [ %3247, %3234 ], [ -1.000000e+00, %3210 ]
  %3252 = phi i1 [ true, %3234 ], [ false, %3210 ]
  br i1 %3252, label %3253, label %3259, !dx.controlflow.hints !121

; <label>:3253                                    ; preds = %3249
  %3254 = call float @dx.op.binary.f32(i32 35, float %3198, float %3251)  ; FMax(a,b)
  %3255 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %3212
  store float %3254, float* %3255, align 4, !tbaa !106, !noalias !110
  %3256 = call float @dx.op.binary.f32(i32 35, float %3198, float %3250)  ; FMax(a,b)
  %3257 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %3212
  store float %3256, float* %3257, align 4, !tbaa !106, !noalias !110
  %3258 = add nsw i32 %3211, 1
  br label %3259

; <label>:3259                                    ; preds = %3253, %3249
  %3260 = phi i32 [ %3258, %3253 ], [ %3211, %3249 ]
  %3261 = add nuw nsw i32 %3212, 1
  %3262 = icmp eq i32 %3261, %3067
  br i1 %3262, label %3263, label %3210

; <label>:3263                                    ; preds = %3259
  %3264 = load float, float* %3204, align 4, !tbaa !106, !alias.scope !122, !noalias !125
  %3265 = load float, float* %3203, align 4, !tbaa !106, !alias.scope !128, !noalias !129
  %3266 = load float, float* %3202, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  %3267 = load float, float* %3207, align 4, !tbaa !106, !alias.scope !132, !noalias !135
  %3268 = load float, float* %3206, align 4, !tbaa !106, !alias.scope !138, !noalias !139
  %3269 = load float, float* %3205, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  br label %3270

; <label>:3270                                    ; preds = %3263, %3197
  %3271 = phi float [ -1.000000e+00, %3197 ], [ %3269, %3263 ]
  %3272 = phi float [ -1.000000e+00, %3197 ], [ %3268, %3263 ]
  %3273 = phi float [ -1.000000e+00, %3197 ], [ %3267, %3263 ]
  %3274 = phi float [ -1.000000e+00, %3197 ], [ %3266, %3263 ]
  %3275 = phi float [ -1.000000e+00, %3197 ], [ %3265, %3263 ]
  %3276 = phi float [ -1.000000e+00, %3197 ], [ %3264, %3263 ]
  %3277 = phi i32 [ 0, %3197 ], [ %3260, %3263 ]
  %3278 = call float @dx.op.binary.f32(i32 36, float %3275, float %3276)  ; FMin(a,b)
  %3279 = call float @dx.op.binary.f32(i32 36, float %3274, float %3278)  ; FMin(a,b)
  %3280 = call float @dx.op.binary.f32(i32 35, float %3274, float %3275)  ; FMax(a,b)
  %3281 = call float @dx.op.binary.f32(i32 36, float %3280, float %3276)  ; FMin(a,b)
  %3282 = call float @dx.op.binary.f32(i32 36, float %3274, float %3275)  ; FMin(a,b)
  %3283 = call float @dx.op.binary.f32(i32 35, float %3282, float %3281)  ; FMax(a,b)
  %3284 = call float @dx.op.binary.f32(i32 35, float %3275, float %3276)  ; FMax(a,b)
  %3285 = call float @dx.op.binary.f32(i32 35, float %3274, float %3284)  ; FMax(a,b)
  store float %3279, float* %3202, align 4, !tbaa !106, !alias.scope !130, !noalias !131
  store float %3283, float* %3203, align 4, !tbaa !106, !alias.scope !128, !noalias !129
  store float %3285, float* %3204, align 4, !tbaa !106, !alias.scope !122, !noalias !125
  %3286 = call float @dx.op.binary.f32(i32 36, float %3272, float %3273)  ; FMin(a,b)
  %3287 = call float @dx.op.binary.f32(i32 36, float %3271, float %3286)  ; FMin(a,b)
  %3288 = call float @dx.op.binary.f32(i32 35, float %3271, float %3272)  ; FMax(a,b)
  %3289 = call float @dx.op.binary.f32(i32 36, float %3288, float %3273)  ; FMin(a,b)
  %3290 = call float @dx.op.binary.f32(i32 36, float %3271, float %3272)  ; FMin(a,b)
  %3291 = call float @dx.op.binary.f32(i32 35, float %3290, float %3289)  ; FMax(a,b)
  %3292 = call float @dx.op.binary.f32(i32 35, float %3272, float %3273)  ; FMax(a,b)
  %3293 = call float @dx.op.binary.f32(i32 35, float %3271, float %3292)  ; FMax(a,b)
  store float %3287, float* %3205, align 4, !tbaa !106, !alias.scope !140, !noalias !141
  store float %3291, float* %3206, align 4, !tbaa !106, !alias.scope !138, !noalias !139
  store float %3293, float* %3207, align 4, !tbaa !106, !alias.scope !132, !noalias !135
  %3294 = sub nsw i32 3, %3277
  %3295 = icmp sgt i32 %3294, 2
  br i1 %3295, label %3296, label %3334, !dx.controlflow.hints !142

; <label>:3296                                    ; preds = %3270
  %3297 = icmp eq i32 %3065, 0
  %3298 = fsub fast float %3115, %3199
  %3299 = select i1 %3297, float %3298, float %3199
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.CBufRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.CBufRet.f32 %3300, 2
  %3304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3305 = extractvalue %dx.types.CBufRet.f32 %3304, 0
  %3306 = extractvalue %dx.types.CBufRet.f32 %3304, 1
  %3307 = extractvalue %dx.types.CBufRet.f32 %3304, 2
  %3308 = extractvalue %dx.types.CBufRet.f32 %3304, 3
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 3
  %3311 = call float @dx.op.binary.f32(i32 36, float %3200, float %3310)  ; FMin(a,b)
  %3312 = fmul fast float %3308, %3299
  %3313 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  %3314 = fsub fast float %3305, %3301
  %3315 = fsub fast float %3306, %3302
  %3316 = fsub fast float %3307, %3303
  %3317 = fmul fast float %3313, %3314
  %3318 = fmul fast float %3313, %3315
  %3319 = fmul fast float %3313, %3316
  %3320 = fadd fast float %3317, %3301
  %3321 = fadd fast float %3318, %3302
  %3322 = fadd fast float %3319, %3303
  %3323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.CBufRet.f32 %3323, 1
  %3326 = fadd fast float %3325, %3324
  %3327 = call float @dx.op.unary.f32(i32 7, float %3326)  ; Saturate(value)
  %3328 = extractvalue %dx.types.CBufRet.f32 %3323, 2
  %3329 = extractvalue %dx.types.CBufRet.f32 %3323, 3
  %3330 = fadd fast float %3329, %3328
  %3331 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  %3332 = fmul fast float %3327, %3311
  %3333 = fmul fast float %3332, %3331
  br label %3416

; <label>:3334                                    ; preds = %3270
  %3335 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %3294
  %3336 = load float, float* %3335, align 4, !tbaa !106, !noalias !110
  %3337 = fcmp fast olt float %3336, %3201
  %3338 = icmp sgt i32 %3277, 0
  %3339 = and i1 %3338, %3337
  br i1 %3339, label %3340, label %3377

; <label>:3340                                    ; preds = %3334
  br label %3341

; <label>:3341                                    ; preds = %3370, %3340
  %3342 = phi float [ %3371, %3370 ], [ %3199, %3340 ]
  %3343 = phi float [ %3372, %3370 ], [ %3200, %3340 ]
  %3344 = phi float [ %3352, %3370 ], [ %3336, %3340 ]
  %3345 = phi i32 [ %3349, %3370 ], [ %3294, %3340 ]
  %3346 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %3345
  %3347 = load float, float* %3346, align 4, !tbaa !106, !noalias !110
  %3348 = icmp slt i32 %3345, 2
  %3349 = add nsw i32 %3345, 1
  %3350 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %3349
  %3351 = load float, float* %3350, align 4, !tbaa !106, !noalias !110
  %3352 = select i1 %3348, float %3351, float %3115
  %3353 = call float @dx.op.binary.f32(i32 36, float %3352, float %3347)  ; FMin(a,b)
  %3354 = call float @dx.op.binary.f32(i32 36, float %3201, float %3353)  ; FMin(a,b)
  %3355 = icmp eq i32 %3065, 0
  %3356 = fadd fast float %3354, %3344
  %3357 = fmul fast float %3356, %3046
  %3358 = fadd fast float %3357, %3059
  br i1 %3355, label %3364, label %3359, !dx.controlflow.hints !143

; <label>:3359                                    ; preds = %3341
  %3360 = fsub fast float %3354, %3344
  %3361 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3360)  ; FMax(a,b)
  %3362 = fmul fast float %3361, %3358
  %3363 = fadd fast float %3362, %3343
  br label %3370

; <label>:3364                                    ; preds = %3341
  %3365 = fsub fast float %3344, %3354
  %3366 = call float @dx.op.unary.f32(i32 6, float %3365)  ; FAbs(value)
  %3367 = fadd fast float %3366, %3342
  %3368 = fmul fast float %3366, %3358
  %3369 = fsub fast float %3343, %3368
  br label %3370

; <label>:3370                                    ; preds = %3364, %3359
  %3371 = phi float [ %3361, %3359 ], [ %3367, %3364 ]
  %3372 = phi float [ %3363, %3359 ], [ %3369, %3364 ]
  %3373 = fcmp fast olt float %3352, %3201
  %3374 = icmp slt i32 %3349, 3
  %3375 = and i1 %3374, %3373
  br i1 %3375, label %3341, label %3376

; <label>:3376                                    ; preds = %3370
  br label %3377

; <label>:3377                                    ; preds = %3376, %3334
  %3378 = phi float [ %3199, %3334 ], [ %3371, %3376 ]
  %3379 = phi float [ %3200, %3334 ], [ %3372, %3376 ]
  %3380 = fsub fast float %3115, %3378
  %3381 = select i1 %3117, float %3378, float %3380
  %3382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3383 = extractvalue %dx.types.CBufRet.f32 %3382, 0
  %3384 = extractvalue %dx.types.CBufRet.f32 %3382, 1
  %3385 = extractvalue %dx.types.CBufRet.f32 %3382, 2
  %3386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3387 = extractvalue %dx.types.CBufRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.CBufRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.CBufRet.f32 %3386, 2
  %3390 = extractvalue %dx.types.CBufRet.f32 %3386, 3
  %3391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3392 = extractvalue %dx.types.CBufRet.f32 %3391, 3
  %3393 = call float @dx.op.binary.f32(i32 36, float %3379, float %3392)  ; FMin(a,b)
  %3394 = fmul fast float %3390, %3381
  %3395 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3396 = fsub fast float %3387, %3383
  %3397 = fsub fast float %3388, %3384
  %3398 = fsub fast float %3389, %3385
  %3399 = fmul fast float %3395, %3396
  %3400 = fmul fast float %3395, %3397
  %3401 = fmul fast float %3395, %3398
  %3402 = fadd fast float %3399, %3383
  %3403 = fadd fast float %3400, %3384
  %3404 = fadd fast float %3401, %3385
  %3405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3406 = extractvalue %dx.types.CBufRet.f32 %3405, 0
  %3407 = extractvalue %dx.types.CBufRet.f32 %3405, 1
  %3408 = fadd fast float %3407, %3406
  %3409 = call float @dx.op.unary.f32(i32 7, float %3408)  ; Saturate(value)
  %3410 = extractvalue %dx.types.CBufRet.f32 %3405, 2
  %3411 = extractvalue %dx.types.CBufRet.f32 %3405, 3
  %3412 = fadd fast float %3411, %3410
  %3413 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3414 = fmul fast float %3409, %3393
  %3415 = fmul fast float %3414, %3413
  br label %3416

; <label>:3416                                    ; preds = %3377, %3296, %3131, %3113, %3111
  %3417 = phi float [ %3140, %3131 ], [ %3299, %3296 ], [ %3381, %3377 ], [ 0.000000e+00, %3111 ], [ 0.000000e+00, %3113 ]
  %3418 = phi float [ %3174, %3131 ], [ %3333, %3296 ], [ %3415, %3377 ], [ 0.000000e+00, %3111 ], [ 0.000000e+00, %3113 ]
  %3419 = phi float [ %3161, %3131 ], [ %3320, %3296 ], [ %3402, %3377 ], [ 0.000000e+00, %3111 ], [ 0.000000e+00, %3113 ]
  %3420 = phi float [ %3162, %3131 ], [ %3321, %3296 ], [ %3403, %3377 ], [ 0.000000e+00, %3111 ], [ 0.000000e+00, %3113 ]
  %3421 = phi float [ %3163, %3131 ], [ %3322, %3296 ], [ %3404, %3377 ], [ 0.000000e+00, %3111 ], [ 0.000000e+00, %3113 ]
  %3422 = fmul fast float %3054, %3418
  %3423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3424 = extractvalue %dx.types.CBufRet.f32 %3423, 2
  %3425 = fsub fast float %3061, %3424
  %3426 = fcmp fast olt float %3422, -2.000000e+01
  %3427 = call float @dx.op.unary.f32(i32 21, float %3422)  ; Exp(value)
  %3428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3429 = extractvalue %dx.types.CBufRet.f32 %3428, 2
  %3430 = extractvalue %dx.types.CBufRet.f32 %3428, 3
  %3431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3432 = extractvalue %dx.types.CBufRet.f32 %3431, 2
  %3433 = fmul fast float %3430, %3425
  %3434 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3435 = fsub fast float 1.000000e+00, %3434
  %3436 = fmul fast float %3046, 5.000000e-01
  %3437 = fadd fast float %3436, 5.000000e-01
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3435)  ; FMax(a,b)
  %3441 = fdiv fast float %3439, %3440
  %3442 = fsub fast float %3425, %3012
  %3443 = call float @dx.op.unary.f32(i32 6, float %3442)  ; FAbs(value)
  %3444 = fmul fast float %3443, %3429
  %3445 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  %3446 = fsub fast float 1.000000e+00, %3444
  %3447 = fmul fast float %3446, %3445
  %3448 = fadd fast float %3447, %3444
  %3449 = fmul fast float %3432, %3425
  %3450 = call float @dx.op.unary.f32(i32 7, float %3449)  ; Saturate(value)
  %3451 = fsub fast float 1.000000e+00, %3448
  %3452 = fmul fast float %3451, %3450
  %3453 = fadd fast float %3452, %3448
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3455 = fadd fast float %3427, -1.000000e+00
  %3456 = select i1 %3426, float -1.000000e+00, float %3455
  %3457 = fmul fast float %3454, %3456
  %3458 = fadd fast float %3457, 1.000000e+00
  %3459 = fsub fast float -0.000000e+00, %3457
  %3460 = fmul fast float %3419, %3459
  %3461 = fmul fast float %3420, %3459
  %3462 = fmul fast float %3421, %3459
  br label %3463

; <label>:3463                                    ; preds = %3416, %2965
  %3464 = phi float [ %3417, %3416 ], [ 0.000000e+00, %2965 ]
  %3465 = phi float [ %3458, %3416 ], [ 1.000000e+00, %2965 ]
  %3466 = phi float [ %3460, %3416 ], [ 0.000000e+00, %2965 ]
  %3467 = phi float [ %3461, %3416 ], [ 0.000000e+00, %2965 ]
  %3468 = phi float [ %3462, %3416 ], [ 0.000000e+00, %2965 ]
  %3469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3470 = extractvalue %dx.types.CBufRet.f32 %3469, 1
  %3471 = fsub fast float 1.000000e+00, %3465
  %3472 = fmul fast float %3471, %3047
  %3473 = fmul fast float %3472, %3470
  %3474 = fsub fast float %3047, %3473
  br i1 %3040, label %3475, label %3504, !dx.controlflow.hints !144

; <label>:3475                                    ; preds = %3463
  %3476 = fmul fast float %3048, %3037
  %3477 = fadd fast float %3476, %3038
  %3478 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3479 = fmul fast float %3019, %3474
  %3480 = fsub fast float -0.000000e+00, %3479
  %3481 = fmul fast float %3020, %3474
  %3482 = fsub fast float -0.000000e+00, %3481
  %3483 = call float @dx.op.unary.f32(i32 21, float %3480)  ; Exp(value)
  %3484 = call float @dx.op.unary.f32(i32 21, float %3482)  ; Exp(value)
  %3485 = call float @dx.op.binary.f32(i32 35, float %3027, float %3483)  ; FMax(a,b)
  %3486 = call float @dx.op.binary.f32(i32 35, float %3027, float %3484)  ; FMax(a,b)
  %3487 = fsub fast float %3486, %3485
  %3488 = fmul fast float %3487, %3478
  %3489 = fadd fast float %3488, %3485
  %3490 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  %3491 = fsub fast float %3024, %3029
  %3492 = fsub fast float %3025, %3030
  %3493 = fsub fast float %3026, %3031
  %3494 = fmul fast float %3478, %3491
  %3495 = fmul fast float %3478, %3492
  %3496 = fmul fast float %3478, %3493
  %3497 = fadd fast float %3494, %3029
  %3498 = fadd fast float %3495, %3030
  %3499 = fadd fast float %3496, %3031
  %3500 = fsub fast float 1.000000e+00, %3490
  %3501 = fmul fast float %3500, %3497
  %3502 = fmul fast float %3500, %3498
  %3503 = fmul fast float %3500, %3499
  br label %3563

; <label>:3504                                    ; preds = %3463
  %3505 = fmul fast float %3474, %3036
  %3506 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3507 = fsub fast float 2.000000e+00, %3506
  %3508 = fmul fast float %3506, 9.921875e-01
  %3509 = fmul fast float %3508, %3507
  %3510 = fadd fast float %3509, 3.906250e-03
  %3511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %3510, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = fsub fast float %3506, %3512
  %3514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3513)  ; FMax(a,b)
  %3515 = fmul fast float %3022, %3012
  %3516 = call float @dx.op.unary.f32(i32 6, float %3515)  ; FAbs(value)
  %3517 = fcmp fast ogt float %3516, 0x3EB0C6F7A0000000
  br i1 %3517, label %3518, label %3524, !dx.controlflow.hints !145

; <label>:3518                                    ; preds = %3504
  %3519 = fmul fast float %3515, 0xBFF7154760000000
  %3520 = call float @dx.op.unary.f32(i32 21, float %3519)  ; Exp(value)
  %3521 = fsub fast float 1.000000e+00, %3520
  %3522 = fdiv fast float %3521, %3515
  %3523 = fmul fast float %3522, %3032
  br label %3524

; <label>:3524                                    ; preds = %3518, %3504
  %3525 = phi float [ %3523, %3518 ], [ %3032, %3504 ]
  %3526 = fadd fast float %3525, %3034
  %3527 = fmul fast float %3526, %3514
  %3528 = fmul fast float %3019, %3527
  %3529 = fsub fast float -0.000000e+00, %3528
  %3530 = fmul fast float %3020, %3527
  %3531 = fsub fast float -0.000000e+00, %3530
  %3532 = fmul fast float %3021, %3527
  %3533 = fsub fast float -0.000000e+00, %3532
  %3534 = call float @dx.op.unary.f32(i32 21, float %3529)  ; Exp(value)
  %3535 = call float @dx.op.unary.f32(i32 21, float %3531)  ; Exp(value)
  %3536 = call float @dx.op.unary.f32(i32 21, float %3533)  ; Exp(value)
  %3537 = fmul fast float %3048, %3048
  %3538 = fadd fast float %3537, 1.000000e+00
  %3539 = fmul fast float %3538, 0x3FAE8EC8A0000000
  %3540 = fmul fast float %3539, %3029
  %3541 = fmul fast float %3539, %3030
  %3542 = fmul fast float %3539, %3031
  %3543 = fmul fast float %3048, %3027
  %3544 = fsub fast float 1.000000e+00, %3543
  %3545 = fmul fast float %3027, %3027
  %3546 = fsub fast float 1.000000e+00, %3545
  %3547 = fmul fast float %3546, 0x3FB45F3060000000
  %3548 = fmul fast float %3544, %3544
  %3549 = fdiv fast float 1.000000e+00, %3548
  %3550 = fmul fast float %3547, %3549
  %3551 = fmul fast float %3550, %3024
  %3552 = fmul fast float %3550, %3025
  %3553 = fmul fast float %3550, %3026
  %3554 = fadd fast float %3551, %3540
  %3555 = fadd fast float %3552, %3541
  %3556 = fadd fast float %3553, %3542
  %3557 = fsub fast float 1.000000e+00, %3534
  %3558 = fsub fast float 1.000000e+00, %3535
  %3559 = fsub fast float 1.000000e+00, %3536
  %3560 = fmul fast float %3554, %3557
  %3561 = fmul fast float %3555, %3558
  %3562 = fmul fast float %3556, %3559
  br label %3563

; <label>:3563                                    ; preds = %3524, %3475
  %3564 = phi float [ %3501, %3475 ], [ %3560, %3524 ]
  %3565 = phi float [ %3502, %3475 ], [ %3561, %3524 ]
  %3566 = phi float [ %3503, %3475 ], [ %3562, %3524 ]
  %3567 = phi float [ %3490, %3475 ], [ %3534, %3524 ]
  %3568 = phi float [ %3490, %3475 ], [ %3535, %3524 ]
  %3569 = phi float [ %3490, %3475 ], [ %3536, %3524 ]
  br i1 %3056, label %3570, label %3768, !dx.controlflow.hints !146

; <label>:3570                                    ; preds = %3563
  %3571 = extractvalue %dx.types.CBufRet.f32 %3469, 0
  %3572 = fmul fast float %3571, %3471
  %3573 = fsub fast float %3466, %3564
  %3574 = fsub fast float %3467, %3565
  %3575 = fsub fast float %3468, %3566
  %3576 = fmul fast float %3572, %3573
  %3577 = fmul fast float %3572, %3574
  %3578 = fmul fast float %3572, %3575
  %3579 = fadd fast float %3576, %3564
  %3580 = fadd fast float %3577, %3565
  %3581 = fadd fast float %3578, %3566
  %3582 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3567)  ; FMax(a,b)
  %3583 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3568)  ; FMax(a,b)
  %3584 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3569)  ; FMax(a,b)
  %3585 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3465)  ; FMax(a,b)
  %3586 = call float @dx.op.binary.f32(i32 35, float %3464, float %3474)  ; FMax(a,b)
  %3587 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3586)  ; FMax(a,b)
  %3588 = fdiv fast float %3464, %3587
  %3589 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3590 = fdiv fast float %3474, %3587
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3592 = fcmp fast une float %3585, 1.000000e+00
  br i1 %3592, label %3593, label %3606, !dx.controlflow.hints !147

; <label>:3593                                    ; preds = %3570
  %3594 = call float @dx.op.unary.f32(i32 23, float %3585)  ; Log(value)
  %3595 = fmul fast float %3594, 0x3FE62E4300000000
  %3596 = fmul fast float %3466, %3595
  %3597 = fsub fast float -0.000000e+00, %3596
  %3598 = fmul fast float %3467, %3595
  %3599 = fsub fast float -0.000000e+00, %3598
  %3600 = fmul fast float %3468, %3595
  %3601 = fsub fast float -0.000000e+00, %3600
  %3602 = fsub fast float 1.000000e+00, %3585
  %3603 = fdiv fast float %3597, %3602
  %3604 = fdiv fast float %3599, %3602
  %3605 = fdiv fast float %3601, %3602
  br label %3606

; <label>:3606                                    ; preds = %3593, %3570
  %3607 = phi float [ %3603, %3593 ], [ %3466, %3570 ]
  %3608 = phi float [ %3604, %3593 ], [ %3467, %3570 ]
  %3609 = phi float [ %3605, %3593 ], [ %3468, %3570 ]
  %3610 = phi float [ %3595, %3593 ], [ 0.000000e+00, %3570 ]
  %3611 = fcmp fast une float %3582, 1.000000e+00
  br i1 %3611, label %3612, label %3619, !dx.controlflow.hints !148

; <label>:3612                                    ; preds = %3606
  %3613 = call float @dx.op.unary.f32(i32 23, float %3582)  ; Log(value)
  %3614 = fmul fast float %3613, 0x3FE62E4300000000
  %3615 = fmul fast float %3579, %3614
  %3616 = fsub fast float -0.000000e+00, %3615
  %3617 = fsub fast float 1.000000e+00, %3582
  %3618 = fdiv fast float %3616, %3617
  br label %3619

; <label>:3619                                    ; preds = %3612, %3606
  %3620 = phi float [ %3618, %3612 ], [ %3579, %3606 ]
  %3621 = phi float [ %3614, %3612 ], [ 0.000000e+00, %3606 ]
  %3622 = fcmp fast une float %3583, 1.000000e+00
  br i1 %3622, label %3623, label %3630, !dx.controlflow.hints !148

; <label>:3623                                    ; preds = %3619
  %3624 = call float @dx.op.unary.f32(i32 23, float %3583)  ; Log(value)
  %3625 = fmul fast float %3624, 0x3FE62E4300000000
  %3626 = fmul fast float %3580, %3625
  %3627 = fsub fast float -0.000000e+00, %3626
  %3628 = fsub fast float 1.000000e+00, %3583
  %3629 = fdiv fast float %3627, %3628
  br label %3630

; <label>:3630                                    ; preds = %3623, %3619
  %3631 = phi float [ %3629, %3623 ], [ %3580, %3619 ]
  %3632 = phi float [ %3625, %3623 ], [ 0.000000e+00, %3619 ]
  %3633 = fcmp fast une float %3584, 1.000000e+00
  br i1 %3633, label %3634, label %3641, !dx.controlflow.hints !148

; <label>:3634                                    ; preds = %3630
  %3635 = call float @dx.op.unary.f32(i32 23, float %3584)  ; Log(value)
  %3636 = fmul fast float %3635, 0x3FE62E4300000000
  %3637 = fmul fast float %3581, %3636
  %3638 = fsub fast float -0.000000e+00, %3637
  %3639 = fsub fast float 1.000000e+00, %3584
  %3640 = fdiv fast float %3638, %3639
  br label %3641

; <label>:3641                                    ; preds = %3634, %3630
  %3642 = phi float [ %3640, %3634 ], [ %3581, %3630 ]
  %3643 = phi float [ %3636, %3634 ], [ 0.000000e+00, %3630 ]
  %3644 = fmul fast float %3607, %3591
  %3645 = fmul fast float %3608, %3591
  %3646 = fmul fast float %3609, %3591
  %3647 = fmul fast float %3610, %3591
  %3648 = fmul fast float %3620, %3589
  %3649 = fmul fast float %3631, %3589
  %3650 = fmul fast float %3642, %3589
  %3651 = fmul fast float %3621, %3589
  %3652 = fmul fast float %3632, %3589
  %3653 = fmul fast float %3643, %3589
  %3654 = fadd fast float %3648, %3644
  %3655 = fadd fast float %3649, %3645
  %3656 = fadd fast float %3650, %3646
  %3657 = fadd fast float %3651, %3647
  %3658 = fadd fast float %3652, %3647
  %3659 = fadd fast float %3653, %3647
  %3660 = fcmp fast une float %3657, 0.000000e+00
  br i1 %3660, label %3661, label %3668, !dx.controlflow.hints !149

; <label>:3661                                    ; preds = %3641
  %3662 = fmul fast float %3657, 0x3FF7154760000000
  %3663 = call float @dx.op.unary.f32(i32 21, float %3662)  ; Exp(value)
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = fmul fast float %3654, %3664
  %3666 = fsub fast float -0.000000e+00, %3665
  %3667 = fdiv fast float %3666, %3657
  br label %3668

; <label>:3668                                    ; preds = %3661, %3641
  %3669 = phi float [ %3663, %3661 ], [ 1.000000e+00, %3641 ]
  %3670 = phi float [ %3667, %3661 ], [ %3654, %3641 ]
  %3671 = fcmp fast une float %3658, 0.000000e+00
  br i1 %3671, label %3672, label %3679, !dx.controlflow.hints !149

; <label>:3672                                    ; preds = %3668
  %3673 = fmul fast float %3658, 0x3FF7154760000000
  %3674 = call float @dx.op.unary.f32(i32 21, float %3673)  ; Exp(value)
  %3675 = fsub fast float 1.000000e+00, %3674
  %3676 = fmul fast float %3655, %3675
  %3677 = fsub fast float -0.000000e+00, %3676
  %3678 = fdiv fast float %3677, %3658
  br label %3679

; <label>:3679                                    ; preds = %3672, %3668
  %3680 = phi float [ %3674, %3672 ], [ 1.000000e+00, %3668 ]
  %3681 = phi float [ %3678, %3672 ], [ %3655, %3668 ]
  %3682 = fcmp fast une float %3659, 0.000000e+00
  br i1 %3682, label %3683, label %3690, !dx.controlflow.hints !149

; <label>:3683                                    ; preds = %3679
  %3684 = fmul fast float %3659, 0x3FF7154760000000
  %3685 = call float @dx.op.unary.f32(i32 21, float %3684)  ; Exp(value)
  %3686 = fsub fast float 1.000000e+00, %3685
  %3687 = fmul fast float %3656, %3686
  %3688 = fsub fast float -0.000000e+00, %3687
  %3689 = fdiv fast float %3688, %3659
  br label %3690

; <label>:3690                                    ; preds = %3683, %3679
  %3691 = phi float [ %3685, %3683 ], [ 1.000000e+00, %3679 ]
  %3692 = phi float [ %3689, %3683 ], [ %3656, %3679 ]
  %3693 = fcmp fast ogt float %3589, %3591
  br i1 %3693, label %3694, label %3714, !dx.controlflow.hints !150

; <label>:3694                                    ; preds = %3690
  %3695 = fsub fast float 1.000000e+00, %3591
  %3696 = fmul fast float %3607, %3695
  %3697 = fmul fast float %3608, %3695
  %3698 = fmul fast float %3609, %3695
  %3699 = fmul fast float %3610, %3695
  %3700 = fcmp fast une float %3699, 0.000000e+00
  br i1 %3700, label %3701, label %3752, !dx.controlflow.hints !151

; <label>:3701                                    ; preds = %3694
  %3702 = fmul fast float %3699, 0x3FF7154760000000
  %3703 = call float @dx.op.unary.f32(i32 21, float %3702)  ; Exp(value)
  %3704 = fsub fast float 1.000000e+00, %3703
  %3705 = fmul fast float %3696, %3704
  %3706 = fsub fast float -0.000000e+00, %3705
  %3707 = fmul fast float %3697, %3704
  %3708 = fsub fast float -0.000000e+00, %3707
  %3709 = fmul fast float %3698, %3704
  %3710 = fsub fast float -0.000000e+00, %3709
  %3711 = fdiv fast float %3706, %3699
  %3712 = fdiv fast float %3708, %3699
  %3713 = fdiv fast float %3710, %3699
  br label %3752

; <label>:3714                                    ; preds = %3690
  %3715 = fsub fast float 1.000000e+00, %3589
  %3716 = fmul fast float %3620, %3715
  %3717 = fmul fast float %3631, %3715
  %3718 = fmul fast float %3642, %3715
  %3719 = fmul fast float %3621, %3715
  %3720 = fmul fast float %3632, %3715
  %3721 = fmul fast float %3643, %3715
  %3722 = fcmp fast une float %3719, 0.000000e+00
  br i1 %3722, label %3723, label %3730, !dx.controlflow.hints !149

; <label>:3723                                    ; preds = %3714
  %3724 = fmul fast float %3719, 0x3FF7154760000000
  %3725 = call float @dx.op.unary.f32(i32 21, float %3724)  ; Exp(value)
  %3726 = fsub fast float 1.000000e+00, %3725
  %3727 = fmul fast float %3716, %3726
  %3728 = fsub fast float -0.000000e+00, %3727
  %3729 = fdiv fast float %3728, %3719
  br label %3730

; <label>:3730                                    ; preds = %3723, %3714
  %3731 = phi float [ %3729, %3723 ], [ %3716, %3714 ]
  %3732 = phi float [ %3725, %3723 ], [ 1.000000e+00, %3714 ]
  %3733 = fcmp fast une float %3720, 0.000000e+00
  br i1 %3733, label %3734, label %3741, !dx.controlflow.hints !149

; <label>:3734                                    ; preds = %3730
  %3735 = fmul fast float %3720, 0x3FF7154760000000
  %3736 = call float @dx.op.unary.f32(i32 21, float %3735)  ; Exp(value)
  %3737 = fsub fast float 1.000000e+00, %3736
  %3738 = fmul fast float %3717, %3737
  %3739 = fsub fast float -0.000000e+00, %3738
  %3740 = fdiv fast float %3739, %3720
  br label %3741

; <label>:3741                                    ; preds = %3734, %3730
  %3742 = phi float [ %3740, %3734 ], [ %3717, %3730 ]
  %3743 = phi float [ %3736, %3734 ], [ 1.000000e+00, %3730 ]
  %3744 = fcmp fast une float %3721, 0.000000e+00
  br i1 %3744, label %3745, label %3752, !dx.controlflow.hints !149

; <label>:3745                                    ; preds = %3741
  %3746 = fmul fast float %3721, 0x3FF7154760000000
  %3747 = call float @dx.op.unary.f32(i32 21, float %3746)  ; Exp(value)
  %3748 = fsub fast float 1.000000e+00, %3747
  %3749 = fmul fast float %3718, %3748
  %3750 = fsub fast float -0.000000e+00, %3749
  %3751 = fdiv fast float %3750, %3721
  br label %3752

; <label>:3752                                    ; preds = %3745, %3741, %3701, %3694
  %3753 = phi float [ %3751, %3745 ], [ %3713, %3701 ], [ %3698, %3694 ], [ %3718, %3741 ]
  %3754 = phi float [ %3742, %3745 ], [ %3712, %3701 ], [ %3697, %3694 ], [ %3742, %3741 ]
  %3755 = phi float [ %3731, %3745 ], [ %3711, %3701 ], [ %3696, %3694 ], [ %3731, %3741 ]
  %3756 = phi float [ %3747, %3745 ], [ %3703, %3701 ], [ 1.000000e+00, %3694 ], [ 1.000000e+00, %3741 ]
  %3757 = phi float [ %3743, %3745 ], [ %3703, %3701 ], [ 1.000000e+00, %3694 ], [ %3743, %3741 ]
  %3758 = phi float [ %3732, %3745 ], [ %3703, %3701 ], [ 1.000000e+00, %3694 ], [ %3732, %3741 ]
  %3759 = fmul fast float %3758, %3670
  %3760 = fmul fast float %3757, %3681
  %3761 = fmul fast float %3756, %3692
  %3762 = fadd fast float %3759, %3755
  %3763 = fadd fast float %3760, %3754
  %3764 = fadd fast float %3761, %3753
  %3765 = fmul fast float %3758, %3669
  %3766 = fmul fast float %3757, %3680
  %3767 = fmul fast float %3756, %3691
  br label %3768

; <label>:3768                                    ; preds = %3752, %3563
  %3769 = phi float [ %3569, %3563 ], [ %3767, %3752 ]
  %3770 = phi float [ %3568, %3563 ], [ %3766, %3752 ]
  %3771 = phi float [ %3567, %3563 ], [ %3765, %3752 ]
  %3772 = phi float [ %3566, %3563 ], [ %3764, %3752 ]
  %3773 = phi float [ %3565, %3563 ], [ %3763, %3752 ]
  %3774 = phi float [ %3564, %3563 ], [ %3762, %3752 ]
  %3775 = fmul fast float %3771, %2912
  %3776 = fmul fast float %3770, %2913
  %3777 = fmul fast float %3769, %2914
  %3778 = fsub fast float 1.000000e+00, %2975
  %3779 = fmul fast float %3774, %3778
  %3780 = fmul fast float %3773, %3778
  %3781 = fmul fast float %3772, %3778
  %3782 = fadd fast float %3779, %3775
  %3783 = fadd fast float %3780, %3776
  %3784 = fadd fast float %3781, %3777
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 2
  %3787 = fmul fast float %3786, %2985
  %3788 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %25, i32 %26, i32 undef, float %2975, float %2975, float %2975, float %2975, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = fmul fast float %3790, %3782
  %3792 = fmul fast float %3790, %3783
  %3793 = fmul fast float %3790, %3784
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %25, i32 %26, i32 undef, float %3791, float %3792, float %3793, float %3791, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %25, i32 %26, i32 undef, float %3788, float %3788, float %3788, float %3788, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !24, !30, !33}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 164}
!13 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 7, i32 0, !7}
!14 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 30, i32 1, i32 4, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 33, i32 1, i32 4, i32 0, !7}
!20 = !{i32 11, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!21 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{!25, !26, !27, !28}
!25 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!26 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!27 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!28 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !29}
!29 = !{i32 0, i32 14}
!30 = !{!31, !32}
!31 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!33 = !{!34, !35, !36}
!34 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!35 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!36 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!37 = !{void ()* @cs_fog_raymarching_air_heightmap_particles_brfog, !"cs_fog_raymarching_air_heightmap_particles_brfog", null, !4, !38}
!38 = !{i32 0, i64 272, i32 4, !39}
!39 = !{i32 8, i32 8, i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
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
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = !{!107, !107, i64 0}
!107 = !{!"float", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!111, !113, !115, !116, !118, !119, !120}
!111 = distinct !{!111, !112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!112 = distinct !{!112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!113 = distinct !{!113, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!114 = distinct !{!114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!115 = distinct !{!115, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!116 = distinct !{!116, !117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!117 = distinct !{!117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!118 = distinct !{!118, !117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!119 = distinct !{!119, !117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!120 = distinct !{!120, !117, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = !{!123}
!123 = distinct !{!123, !124, !"\01?sort@@YAXAIAM00@Z: %c"}
!124 = distinct !{!124, !"\01?sort@@YAXAIAM00@Z"}
!125 = !{!126, !127, !111, !113, !115, !116, !118, !119, !120}
!126 = distinct !{!126, !124, !"\01?sort@@YAXAIAM00@Z: %a"}
!127 = distinct !{!127, !124, !"\01?sort@@YAXAIAM00@Z: %b"}
!128 = !{!127}
!129 = !{!126, !123, !111, !113, !115, !116, !118, !119, !120}
!130 = !{!126}
!131 = !{!127, !123, !111, !113, !115, !116, !118, !119, !120}
!132 = !{!133}
!133 = distinct !{!133, !134, !"\01?sort@@YAXAIAM00@Z: %c"}
!134 = distinct !{!134, !"\01?sort@@YAXAIAM00@Z"}
!135 = !{!136, !137, !111, !113, !115, !116, !118, !119, !120}
!136 = distinct !{!136, !134, !"\01?sort@@YAXAIAM00@Z: %a"}
!137 = distinct !{!137, !134, !"\01?sort@@YAXAIAM00@Z: %b"}
!138 = !{!137}
!139 = !{!136, !133, !111, !113, !115, !116, !118, !119, !120}
!140 = !{!136}
!141 = !{!137, !133, !111, !113, !115, !116, !118, !119, !120}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}

