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
; shader hash: 933b3e290513f43ba5d36318431f3367
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

define void @cs_fog_raymarching_heightmap_particles_brfog() {
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
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 3
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = fsub fast float -0.000000e+00, %71
  %211 = fsub fast float -0.000000e+00, %72
  %212 = fsub fast float %207, %73
  %213 = fadd fast float %212, %209
  %214 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %210, float %211, float %213)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %216 = fdiv fast float 1.000000e+00, %215
  %217 = fmul fast float %216, %214
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fsub fast float %219, %73
  %221 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %210, float %211, float %220)  ; Dot3(ax,ay,az,bx,by,bz)
  %222 = fmul fast float %216, %221
  %223 = call float @dx.op.binary.f32(i32 36, float %217, float %222)  ; FMin(a,b)
  %224 = call float @dx.op.binary.f32(i32 35, float %217, float %222)  ; FMax(a,b)
  %225 = call float @dx.op.binary.f32(i32 36, float %205, float %223)  ; FMin(a,b)
  %226 = call float @dx.op.binary.f32(i32 35, float %204, float %224)  ; FMax(a,b)
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %231 = fsub fast float %228, %73
  %232 = fadd fast float %231, %230
  %233 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %210, float %211, float %232)  ; Dot3(ax,ay,az,bx,by,bz)
  %234 = fmul fast float %216, %233
  %235 = fcmp fast olt float %234, 0.000000e+00
  %236 = fcmp fast ogt float %116, 0.000000e+00
  %237 = and i1 %236, %235
  br i1 %237, label %242, label %238, !dx.controlflow.hints !43

; <label>:238                                     ; preds = %202
  %239 = fcmp fast olt float %116, 0.000000e+00
  br i1 %239, label %240, label %242, !dx.controlflow.hints !44

; <label>:240                                     ; preds = %238
  %241 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %234)  ; FMax(a,b)
  br label %242

; <label>:242                                     ; preds = %240, %238, %202
  %243 = phi float [ 0.000000e+00, %202 ], [ %241, %240 ], [ 0.000000e+00, %238 ]
  %244 = phi float [ 0.000000e+00, %202 ], [ 0x47EFFFFFE0000000, %240 ], [ %234, %238 ]
  %245 = fcmp fast oeq float %244, 0.000000e+00
  br i1 %245, label %249, label %246, !dx.controlflow.hints !45

; <label>:246                                     ; preds = %242
  %247 = call float @dx.op.binary.f32(i32 36, float %225, float %243)  ; FMin(a,b)
  %248 = call float @dx.op.binary.f32(i32 35, float %226, float %244)  ; FMax(a,b)
  br label %249

; <label>:249                                     ; preds = %246, %242
  %250 = phi i32 [ 1, %246 ], [ 0, %242 ]
  %251 = phi float [ %248, %246 ], [ %226, %242 ]
  %252 = phi float [ %247, %246 ], [ %225, %242 ]
  %253 = fdiv fast float 1.000000e+00, %114
  %254 = fdiv fast float 1.000000e+00, %115
  %255 = fdiv fast float 1.000000e+00, %116
  %256 = call float @dx.op.binary.f32(i32 36, float %135, float %251)  ; FMin(a,b)
  %257 = call float @dx.op.binary.f32(i32 35, float %112, float %252)  ; FMax(a,b)
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = fmul fast float %60, 2.000000e+00
  %261 = fadd fast float %260, -1.000000e+00
  %262 = fmul fast float %259, %261
  %263 = fadd fast float %262, %257
  %264 = fcmp fast olt float %263, %256
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %267 = fcmp fast olt float %266, 1.000000e+00
  %268 = and i1 %264, %267
  br i1 %268, label %269, label %2745

; <label>:269                                     ; preds = %249
  %270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.i32 %270, 1
  %272 = add i32 %271, -1
  %273 = fmul fast float %263, %116
  %274 = fadd fast float %273, %73
  %275 = fmul fast float %263, %115
  %276 = fadd fast float %275, %72
  %277 = fmul fast float %263, %114
  %278 = fadd fast float %277, %71
  br label %279

; <label>:279                                     ; preds = %2715, %269
  %280 = phi i32 [ %2717, %2715 ], [ undef, %269 ]
  %281 = phi float [ %2718, %2715 ], [ undef, %269 ]
  %282 = phi float [ %2719, %2715 ], [ undef, %269 ]
  %283 = phi float [ %2720, %2715 ], [ undef, %269 ]
  %284 = phi float [ %2721, %2715 ], [ undef, %269 ]
  %285 = phi float [ %2722, %2715 ], [ undef, %269 ]
  %286 = phi i32 [ %770, %2715 ], [ undef, %269 ]
  %287 = phi float [ %771, %2715 ], [ undef, %269 ]
  %288 = phi float [ %585, %2715 ], [ undef, %269 ]
  %289 = phi float [ %586, %2715 ], [ undef, %269 ]
  %290 = phi float [ %587, %2715 ], [ undef, %269 ]
  %291 = phi float [ %588, %2715 ], [ undef, %269 ]
  %292 = phi float [ %2723, %2715 ], [ 0.000000e+00, %269 ]
  %293 = phi float [ %2724, %2715 ], [ 1.000000e+00, %269 ]
  %294 = phi float [ %2725, %2715 ], [ 0.000000e+00, %269 ]
  %295 = phi float [ %2726, %2715 ], [ 0.000000e+00, %269 ]
  %296 = phi float [ %2727, %2715 ], [ 0.000000e+00, %269 ]
  %297 = phi float [ %2737, %2715 ], [ %278, %269 ]
  %298 = phi float [ %2738, %2715 ], [ %276, %269 ]
  %299 = phi float [ %2739, %2715 ], [ %274, %269 ]
  %300 = phi float [ %2716, %2715 ], [ %263, %269 ]
  %301 = phi i32 [ %590, %2715 ], [ 10, %269 ]
  %302 = phi i32 [ %482, %2715 ], [ %272, %269 ]
  %303 = phi float [ %2728, %2715 ], [ 0.000000e+00, %269 ]
  %304 = phi float [ %2729, %2715 ], [ 0.000000e+00, %269 ]
  %305 = phi float [ %2730, %2715 ], [ 0.000000e+00, %269 ]
  %306 = phi float [ %2731, %2715 ], [ 0.000000e+00, %269 ]
  %307 = phi float [ %2732, %2715 ], [ 0.000000e+00, %269 ]
  %308 = phi i32 [ %2733, %2715 ], [ 0, %269 ]
  %309 = fsub fast float -0.000000e+00, %298
  %310 = fsub fast float -0.000000e+00, %297
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = icmp eq i32 %203, 0
  br i1 %313, label %479, label %314, !dx.controlflow.hints !46

; <label>:314                                     ; preds = %279
  %315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.i32 %315, 1
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %319 = fcmp fast ogt float %318, %300
  br i1 %319, label %320, label %322, !dx.controlflow.hints !47

; <label>:320                                     ; preds = %314
  %321 = fsub fast float %318, %300
  br label %469

; <label>:322                                     ; preds = %314
  %323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.i32 %323, 3
  %325 = icmp eq i32 %324, 0
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %330 = fsub fast float %327, %299
  %331 = fadd fast float %330, %329
  %332 = fsub fast float 0xC7EFFFFFE0000000, %299
  br i1 %325, label %340, label %333, !dx.controlflow.hints !40

; <label>:333                                     ; preds = %322
  %334 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %310, float %309, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %335 = fmul fast float %216, %334
  %336 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %310, float %309, float %332)  ; Dot3(ax,ay,az,bx,by,bz)
  %337 = fmul fast float %216, %336
  %338 = call float @dx.op.binary.f32(i32 36, float %335, float %337)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %335, float %337)  ; FMax(a,b)
  br label %370

; <label>:340                                     ; preds = %322
  %341 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %345 = fsub fast float %341, %297
  %346 = fmul fast float %253, %345
  %347 = fadd fast float %345, %343
  %348 = fmul fast float %347, %253
  %349 = call float @dx.op.binary.f32(i32 36, float %346, float %348)  ; FMin(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float %346, float %348)  ; FMax(a,b)
  %351 = fsub fast float %342, %298
  %352 = fmul fast float %254, %351
  %353 = fadd fast float %351, %344
  %354 = fmul fast float %353, %254
  %355 = call float @dx.op.binary.f32(i32 36, float %352, float %354)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %349, float %355)  ; FMax(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %352, float %354)  ; FMax(a,b)
  %358 = call float @dx.op.binary.f32(i32 36, float %350, float %357)  ; FMin(a,b)
  %359 = fmul fast float %255, %332
  %360 = fmul fast float %255, %331
  %361 = call float @dx.op.binary.f32(i32 36, float %359, float %360)  ; FMin(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float %356, float %361)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float %359, float %360)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float %358, float %363)  ; FMin(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %362)  ; FMax(a,b)
  %366 = fcmp fast ult float %364, %365
  br i1 %366, label %370, label %367, !dx.controlflow.hints !41

; <label>:367                                     ; preds = %340
  %368 = call float @dx.op.binary.f32(i32 36, float %362, float %364)  ; FMin(a,b)
  %369 = call float @dx.op.binary.f32(i32 35, float %362, float %364)  ; FMax(a,b)
  br label %370

; <label>:370                                     ; preds = %367, %340, %333
  %371 = phi float [ %338, %333 ], [ %368, %367 ], [ 0.000000e+00, %340 ]
  %372 = phi float [ %339, %333 ], [ %369, %367 ], [ 0.000000e+00, %340 ]
  %373 = fcmp fast ogt float %371, 0.000000e+00
  br i1 %373, label %469, label %374, !dx.controlflow.hints !48

; <label>:374                                     ; preds = %370
  %375 = fcmp fast ugt float %372, 0.000000e+00
  br i1 %375, label %376, label %469, !dx.controlflow.hints !49

; <label>:376                                     ; preds = %374
  %377 = icmp sgt i32 %302, 0
  br i1 %377, label %378, label %463

; <label>:378                                     ; preds = %376
  br label %379

; <label>:379                                     ; preds = %459, %378
  %380 = phi i32 [ %460, %459 ], [ %302, %378 ]
  %381 = sitofp i32 %380 to float
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = fsub fast float %297, %383
  %386 = fsub fast float %298, %384
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 0
  %389 = extractvalue %dx.types.CBufRet.f32 %387, 1
  %390 = fmul fast float %385, %388
  %391 = fmul fast float %386, %389
  %392 = fsub fast float 1.000000e+00, %391
  %393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.i32 %393, 3
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %402, label %396, !dx.controlflow.hints !50

; <label>:396                                     ; preds = %379
  %397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %390, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float %381)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = extractvalue %dx.types.ResRet.f32 %397, 1
  %400 = extractvalue %dx.types.ResRet.f32 %397, 2
  %401 = extractvalue %dx.types.ResRet.f32 %397, 3
  br label %408

; <label>:402                                     ; preds = %379
  %403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %390, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float %381)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = extractvalue %dx.types.ResRet.f32 %403, 1
  %406 = extractvalue %dx.types.ResRet.f32 %403, 2
  %407 = extractvalue %dx.types.ResRet.f32 %403, 3
  br label %408

; <label>:408                                     ; preds = %402, %396
  %409 = phi float [ %398, %396 ], [ %404, %402 ]
  %410 = phi float [ %399, %396 ], [ %405, %402 ]
  %411 = phi float [ %400, %396 ], [ %406, %402 ]
  %412 = phi float [ %401, %396 ], [ %407, %402 ]
  %413 = extractvalue %dx.types.CBufRet.f32 %387, 3
  %414 = fmul fast float %413, %409
  %415 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %416 = fadd fast float %414, %415
  %417 = fmul fast float %413, %410
  %418 = fadd fast float %417, %415
  %419 = fmul fast float %413, %411
  %420 = fadd fast float %419, %415
  %421 = and i32 %380, 31
  %422 = shl i32 1, %421
  %423 = uitofp i32 %422 to float
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 3
  %426 = fdiv fast float 1.000000e+00, %425
  %427 = fmul fast float %426, %423
  %428 = fmul fast float %427, %116
  %429 = fadd fast float %428, %299
  %430 = fcmp fast oeq float %412, 0.000000e+00
  %431 = fcmp fast ogt float %299, %418
  %432 = fcmp fast ogt float %429, %418
  %433 = and i1 %431, %432
  %434 = or i1 %430, %433
  br i1 %434, label %435, label %439, !dx.controlflow.hints !51

; <label>:435                                     ; preds = %408
  %436 = add nsw i32 %380, 1
  %437 = add nsw i32 %316, -1
  %438 = call i32 @dx.op.binary.i32(i32 38, i32 %436, i32 %437)  ; IMin(a,b)
  br label %469

; <label>:439                                     ; preds = %408
  %440 = fcmp fast olt float %299, %420
  %441 = fcmp fast olt float %429, %420
  %442 = and i1 %440, %441
  br i1 %442, label %443, label %447, !dx.controlflow.hints !52

; <label>:443                                     ; preds = %439
  %444 = add nsw i32 %380, 1
  %445 = add nsw i32 %316, -1
  %446 = call i32 @dx.op.binary.i32(i32 38, i32 %444, i32 %445)  ; IMin(a,b)
  br label %469

; <label>:447                                     ; preds = %439
  %448 = fcmp fast olt float %299, %416
  %449 = fcmp fast olt float %429, %416
  %450 = and i1 %448, %449
  br i1 %450, label %451, label %459, !dx.controlflow.hints !53

; <label>:451                                     ; preds = %447
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %454 = extractvalue %dx.types.CBufRet.f32 %387, 2
  %455 = fcmp fast une float %453, %454
  br i1 %455, label %456, label %463, !dx.controlflow.hints !54

; <label>:456                                     ; preds = %451
  %457 = fsub fast float %299, %420
  %458 = call float @dx.op.binary.f32(i32 36, float %427, float %457)  ; FMin(a,b)
  br label %463

; <label>:459                                     ; preds = %447
  %460 = add nsw i32 %380, -1
  %461 = icmp sgt i32 %380, 1
  br i1 %461, label %379, label %462

; <label>:462                                     ; preds = %459
  br label %463

; <label>:463                                     ; preds = %462, %456, %451, %376
  %464 = phi float [ %458, %456 ], [ %427, %451 ], [ 0.000000e+00, %376 ], [ 0.000000e+00, %462 ]
  %465 = phi i32 [ %380, %456 ], [ %380, %451 ], [ %302, %376 ], [ %460, %462 ]
  %466 = add nsw i32 %465, 1
  %467 = add nsw i32 %316, -1
  %468 = call i32 @dx.op.binary.i32(i32 38, i32 %466, i32 %467)  ; IMin(a,b)
  br label %469

; <label>:469                                     ; preds = %463, %443, %435, %374, %370, %320
  %470 = phi float [ %321, %320 ], [ %427, %435 ], [ %427, %443 ], [ %464, %463 ], [ 0x47EFFFFFE0000000, %374 ], [ %371, %370 ]
  %471 = phi i32 [ %203, %320 ], [ %203, %435 ], [ %203, %443 ], [ %203, %463 ], [ 0, %374 ], [ %203, %370 ]
  %472 = phi i32 [ %302, %320 ], [ %438, %435 ], [ %446, %443 ], [ %468, %463 ], [ %302, %374 ], [ %302, %370 ]
  %473 = icmp ne i32 %471, 0
  %474 = zext i1 %473 to i32
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %477 = call float @dx.op.binary.f32(i32 35, float %470, float %476)  ; FMax(a,b)
  %478 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %477)  ; FMin(a,b)
  br label %479

; <label>:479                                     ; preds = %469, %279
  %480 = phi i32 [ %474, %469 ], [ 0, %279 ]
  %481 = phi float [ %478, %469 ], [ 0x47EFFFFFE0000000, %279 ]
  %482 = phi i32 [ %472, %469 ], [ %302, %279 ]
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = fsub fast float %297, %484
  %487 = fsub fast float %298, %485
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 3
  %491 = fmul fast float %486, %489
  %492 = fmul fast float %487, %490
  %493 = call float @dx.op.binary.f32(i32 36, float %491, float %492)  ; FMin(a,b)
  %494 = fcmp fast olt float %493, 0.000000e+00
  %495 = call float @dx.op.binary.f32(i32 35, float %491, float %492)  ; FMax(a,b)
  %496 = fcmp fast ogt float %495, 1.000000e+00
  %497 = or i1 %494, %496
  %498 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %499 = fcmp fast olt float %299, %498
  %500 = or i1 %497, %499
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 3
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %505 = fadd fast float %504, %502
  %506 = fcmp fast ogt float %299, %505
  %507 = or i1 %500, %506
  br i1 %507, label %508, label %537, !dx.controlflow.hints !55

; <label>:508                                     ; preds = %479
  %509 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %510 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %511 = fsub fast float %484, %297
  %512 = fmul fast float %511, %253
  %513 = fadd fast float %511, %509
  %514 = fmul fast float %513, %253
  %515 = call float @dx.op.binary.f32(i32 36, float %512, float %514)  ; FMin(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %512, float %514)  ; FMax(a,b)
  %517 = fsub fast float %485, %298
  %518 = fmul fast float %517, %254
  %519 = fadd fast float %517, %510
  %520 = fmul fast float %519, %254
  %521 = call float @dx.op.binary.f32(i32 36, float %518, float %520)  ; FMin(a,b)
  %522 = call float @dx.op.binary.f32(i32 35, float %515, float %521)  ; FMax(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %518, float %520)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 36, float %516, float %523)  ; FMin(a,b)
  %525 = fsub fast float %498, %299
  %526 = fmul fast float %525, %255
  %527 = fsub fast float %502, %299
  %528 = fadd fast float %527, %504
  %529 = fmul fast float %528, %255
  %530 = call float @dx.op.binary.f32(i32 36, float %526, float %529)  ; FMin(a,b)
  %531 = call float @dx.op.binary.f32(i32 35, float %522, float %530)  ; FMax(a,b)
  %532 = call float @dx.op.binary.f32(i32 35, float %526, float %529)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 36, float %524, float %532)  ; FMin(a,b)
  %534 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %531)  ; FMax(a,b)
  %535 = fcmp fast oge float %533, %534
  %536 = select i1 %535, float %531, float 1.000000e+07
  br label %583

; <label>:537                                     ; preds = %479
  %538 = fsub fast float 1.000000e+00, %492
  %539 = icmp eq i32 %301, 0
  br i1 %539, label %568, label %540

; <label>:540                                     ; preds = %537
  br label %541

; <label>:541                                     ; preds = %564, %540
  %542 = phi i32 [ %565, %564 ], [ %301, %540 ]
  %543 = uitofp i32 %542 to float
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %22, float %491, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float %543)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = fcmp fast oeq float %545, 0.000000e+00
  %549 = fcmp ule float %299, %547
  %550 = fcmp uge float %299, %546
  %551 = or i1 %550, %549
  %552 = or i1 %548, %551
  br i1 %552, label %553, label %564, !dx.controlflow.hints !56

; <label>:553                                     ; preds = %541
  %554 = extractvalue %dx.types.ResRet.f32 %544, 3
  %555 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %556 = and i32 %542, 31
  %557 = lshr i32 1024, %556
  %558 = uitofp i32 %557 to float
  %559 = fdiv fast float %555, %558
  %560 = add i32 %542, 1
  %561 = uitofp i32 %560 to float
  %562 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %561)  ; FMin(a,b)
  %563 = fptosi float %562 to i32
  br label %583

; <label>:564                                     ; preds = %541
  %565 = add i32 %542, -1
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %541, !llvm.loop !57

; <label>:567                                     ; preds = %564
  br label %568

; <label>:568                                     ; preds = %567, %537
  %569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %491, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  %571 = extractvalue %dx.types.ResRet.f32 %569, 1
  %572 = extractvalue %dx.types.ResRet.f32 %569, 2
  %573 = extractvalue %dx.types.ResRet.f32 %569, 3
  %574 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %575 = fmul fast float %574, 9.765625e-04
  %576 = fcmp fast oeq float %570, 0.000000e+00
  %577 = fcmp ule float %299, %572
  %578 = fcmp uge float %299, %571
  %579 = or i1 %578, %577
  %580 = or i1 %576, %579
  %581 = zext i1 %580 to i32
  %582 = xor i32 %581, 1
  br label %583

; <label>:583                                     ; preds = %568, %553, %508
  %584 = phi float [ %536, %508 ], [ %559, %553 ], [ %575, %568 ]
  %585 = phi float [ %288, %508 ], [ %545, %553 ], [ %570, %568 ]
  %586 = phi float [ %289, %508 ], [ %546, %553 ], [ %571, %568 ]
  %587 = phi float [ %290, %508 ], [ %547, %553 ], [ %572, %568 ]
  %588 = phi float [ %291, %508 ], [ %554, %553 ], [ %573, %568 ]
  %589 = phi i32 [ 0, %508 ], [ 0, %553 ], [ %582, %568 ]
  %590 = phi i32 [ 10, %508 ], [ %563, %553 ], [ 1, %568 ]
  %591 = icmp eq i32 %589, 0
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %594 = call float @dx.op.binary.f32(i32 35, float %584, float %593)  ; FMax(a,b)
  %595 = call float @dx.op.binary.f32(i32 36, float %481, float %594)  ; FMin(a,b)
  %596 = icmp eq i32 %250, 0
  br i1 %596, label %768, label %597, !dx.controlflow.hints !59

; <label>:597                                     ; preds = %583
  %598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.i32 %598, 1
  %600 = and i32 %599, 1
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %759, !dx.controlflow.hints !60

; <label>:602                                     ; preds = %597
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 3
  %606 = fmul fast float %604, %297
  %607 = fmul fast float %605, %298
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 0
  %610 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %611 = fadd fast float %606, %609
  %612 = fadd fast float %607, %610
  %613 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  %614 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = fmul fast float %618, %616
  %620 = fsub fast float %611, %613
  %621 = fsub fast float %612, %614
  %622 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %623 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %624 = fmul fast float %622, %620
  %625 = fmul fast float %623, %621
  %626 = fmul fast float %624, %624
  %627 = fmul fast float %625, %625
  %628 = fadd fast float %626, %627
  %629 = call float @dx.op.unary.f32(i32 24, float %628)  ; Sqrt(value)
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 3
  %632 = fmul fast float %631, %629
  %633 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %634 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %635 = fsub fast float %634, %619
  %636 = fmul fast float %635, %633
  %637 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %638 = fsub fast float %299, %619
  %639 = fsub fast float %638, %637
  %640 = fsub fast float %639, %636
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 2
  %643 = fsub fast float %640, %642
  %644 = fcmp fast olt float %643, 0.000000e+00
  %645 = call float @dx.op.unary.f32(i32 6, float %643)  ; FAbs(value)
  %646 = extractvalue %dx.types.CBufRet.i32 %598, 0
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %701, label %648

; <label>:648                                     ; preds = %602
  br label %649

; <label>:649                                     ; preds = %688, %648
  %650 = phi i32 [ %694, %688 ], [ 1, %648 ]
  %651 = phi float [ %696, %688 ], [ 0x47EFFFFFE0000000, %648 ]
  %652 = phi i32 [ %697, %688 ], [ 0, %648 ]
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.i32 %655, 1
  %657 = and i32 %656, 8
  %658 = icmp eq i32 %657, 0
  %659 = fcmp fast ogt float %654, %640
  %660 = or i1 %659, %658
  %661 = add i32 %652, 171
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %661)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %664 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %665 = extractvalue %dx.types.CBufRet.f32 %662, 2
  br i1 %660, label %666, label %672, !dx.controlflow.hints !61

; <label>:666                                     ; preds = %649
  %667 = fsub fast float %663, %297
  %668 = fsub fast float %664, %298
  %669 = fmul fast float %667, %667
  %670 = fmul fast float %668, %668
  %671 = fadd fast float %669, %670
  br label %688

; <label>:672                                     ; preds = %649
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %675 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %676 = fmul fast float %675, %674
  %677 = fsub fast float %676, %654
  %678 = fdiv fast float %665, %677
  %679 = fsub fast float %297, %663
  %680 = fsub fast float %298, %664
  %681 = fsub fast float %640, %654
  %682 = fmul fast float %678, %681
  %683 = fmul fast float %679, %679
  %684 = fmul fast float %680, %680
  %685 = fadd fast float %683, %684
  %686 = fmul fast float %682, %682
  %687 = fadd fast float %685, %686
  br label %688

; <label>:688                                     ; preds = %672, %666
  %689 = phi float [ %671, %666 ], [ %687, %672 ]
  %690 = call float @dx.op.unary.f32(i32 24, float %689)  ; Sqrt(value)
  %691 = fsub float %665, %690
  %692 = fcmp fast olt float %691, 0.000000e+00
  %693 = zext i1 %692 to i32
  %694 = and i32 %693, %650
  %695 = call float @dx.op.unary.f32(i32 6, float %691)  ; FAbs(value)
  %696 = call float @dx.op.binary.f32(i32 36, float %651, float %695)  ; FMin(a,b)
  %697 = add i32 %652, 1
  %698 = extractvalue %dx.types.CBufRet.i32 %655, 0
  %699 = icmp ult i32 %697, %698
  br i1 %699, label %649, label %700

; <label>:700                                     ; preds = %688
  br label %701

; <label>:701                                     ; preds = %700, %602
  %702 = phi i32 [ 1, %602 ], [ %694, %700 ]
  %703 = phi float [ 0x47EFFFFFE0000000, %602 ], [ %696, %700 ]
  br label %704

; <label>:704                                     ; preds = %704, %701
  %705 = phi i32 [ %702, %701 ], [ %744, %704 ]
  %706 = phi float [ 0x47EFFFFFE0000000, %701 ], [ %746, %704 ]
  %707 = phi i32 [ 0, %701 ], [ %747, %704 ]
  %708 = add nuw nsw i32 %707, 191
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %708)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %713 = add nuw nsw i32 %707, 195
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %713)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %718 = fsub fast float %297, %710
  %719 = fsub fast float %298, %711
  %720 = fsub fast float %640, %712
  %721 = call float @dx.op.unary.f32(i32 6, float %718)  ; FAbs(value)
  %722 = call float @dx.op.unary.f32(i32 6, float %719)  ; FAbs(value)
  %723 = call float @dx.op.unary.f32(i32 6, float %720)  ; FAbs(value)
  %724 = fsub fast float %721, %715
  %725 = fsub fast float %722, %716
  %726 = fsub fast float %723, %717
  %727 = call float @dx.op.binary.f32(i32 35, float %724, float 0.000000e+00)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float %725, float 0.000000e+00)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float %726, float 0.000000e+00)  ; FMax(a,b)
  %730 = fmul fast float %727, %727
  %731 = fmul fast float %728, %728
  %732 = fadd fast float %731, %730
  %733 = fmul fast float %729, %729
  %734 = fadd fast float %732, %733
  %735 = call float @dx.op.unary.f32(i32 24, float %734)  ; Sqrt(value)
  %736 = call float @dx.op.binary.f32(i32 35, float %725, float %726)  ; FMax(a,b)
  %737 = call float @dx.op.binary.f32(i32 35, float %724, float %736)  ; FMax(a,b)
  %738 = call float @dx.op.binary.f32(i32 36, float %737, float 0.000000e+00)  ; FMin(a,b)
  %739 = fadd fast float %738, %735
  %740 = fsub fast float -0.000000e+00, %739
  %741 = fcmp ogt float %739, -0.000000e+00
  %742 = icmp ne i32 %705, 0
  %743 = and i1 %742, %741
  %744 = zext i1 %743 to i32
  %745 = call float @dx.op.unary.f32(i32 6, float %740)  ; FAbs(value)
  %746 = call float @dx.op.binary.f32(i32 36, float %706, float %745)  ; FMin(a,b)
  %747 = add nuw nsw i32 %707, 1
  %748 = icmp eq i32 %747, 4
  br i1 %748, label %749, label %704

; <label>:749                                     ; preds = %704
  %750 = call float @dx.op.binary.f32(i32 36, float %645, float %746)  ; FMin(a,b)
  %751 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.i32 %751, 1
  %753 = and i32 %752, 2
  %754 = icmp ne i32 %753, 0
  %755 = xor i1 %743, %754
  %756 = call float @dx.op.binary.f32(i32 36, float %750, float %703)  ; FMin(a,b)
  %757 = and i1 %755, %644
  %758 = zext i1 %757 to i32
  br label %759

; <label>:759                                     ; preds = %749, %597
  %760 = phi i32 [ %286, %597 ], [ %758, %749 ]
  %761 = phi float [ 0.000000e+00, %597 ], [ %756, %749 ]
  %762 = phi float [ %299, %597 ], [ %640, %749 ]
  %763 = icmp ne i32 %760, 0
  %764 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %765 = call float @dx.op.binary.f32(i32 35, float %761, float %764)  ; FMax(a,b)
  %766 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %765)  ; FMin(a,b)
  %767 = zext i1 %763 to i32
  br label %768

; <label>:768                                     ; preds = %759, %583
  %769 = phi i32 [ %767, %759 ], [ 0, %583 ]
  %770 = phi i32 [ %760, %759 ], [ %286, %583 ]
  %771 = phi float [ %762, %759 ], [ %287, %583 ]
  %772 = phi float [ %766, %759 ], [ 0x47EFFFFFE0000000, %583 ]
  %773 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %774 = fmul fast float %773, %300
  %775 = call float @dx.op.unary.f32(i32 23, float %774)  ; Log(value)
  %776 = fmul fast float %775, 0x3FE62E4300000000
  %777 = call float @dx.op.binary.f32(i32 35, float %776, float 1.000000e+00)  ; FMax(a,b)
  %778 = fmul fast float %777, %772
  %779 = call float @dx.op.binary.f32(i32 36, float %778, float %595)  ; FMin(a,b)
  %780 = call float @dx.op.binary.f32(i32 35, float %779, float %312)  ; FMax(a,b)
  %781 = fsub fast float %256, %300
  %782 = fadd fast float %781, 0x3F1A36E2E0000000
  %783 = call float @dx.op.binary.f32(i32 36, float %782, float %780)  ; FMin(a,b)
  %784 = icmp eq i32 %480, 0
  br i1 %784, label %890, label %785, !dx.controlflow.hints !62

; <label>:785                                     ; preds = %768
  %786 = fcmp fast olt float %782, %780
  %787 = fmul fast float %116, %59
  %788 = fmul fast float %787, %783
  %789 = fadd fast float %788, %299
  %790 = fmul fast float %116, %60
  %791 = fmul fast float %790, %783
  %792 = fadd fast float %791, %299
  %793 = fmul fast float %116, %61
  %794 = fmul fast float %793, %783
  %795 = fadd fast float %794, %299
  br i1 %786, label %796, label %801, !dx.controlflow.hints !63

; <label>:796                                     ; preds = %785
  %797 = fmul fast float %783, %114
  %798 = fmul fast float %783, %115
  %799 = fadd fast float %797, %297
  %800 = fadd fast float %798, %298
  br label %801

; <label>:801                                     ; preds = %796, %785
  %802 = phi float [ %799, %796 ], [ %297, %785 ]
  %803 = phi float [ %800, %796 ], [ %298, %785 ]
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = fsub fast float %802, %805
  %808 = fsub fast float %803, %806
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %812 = fmul fast float %807, %810
  %813 = fmul fast float %808, %811
  %814 = fsub fast float 1.000000e+00, %813
  %815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.i32 %815, 3
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %824, label %818, !dx.controlflow.hints !50

; <label>:818                                     ; preds = %801
  %819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %812, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = extractvalue %dx.types.ResRet.f32 %819, 3
  br label %830

; <label>:824                                     ; preds = %801
  %825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %812, float %814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = extractvalue %dx.types.ResRet.f32 %825, 3
  br label %830

; <label>:830                                     ; preds = %824, %818
  %831 = phi float [ %820, %818 ], [ %826, %824 ]
  %832 = phi float [ %821, %818 ], [ %827, %824 ]
  %833 = phi float [ %822, %818 ], [ %828, %824 ]
  %834 = phi float [ %823, %818 ], [ %829, %824 ]
  %835 = extractvalue %dx.types.CBufRet.f32 %809, 3
  %836 = fmul fast float %835, %832
  %837 = fmul fast float %836, %831
  %838 = fsub fast float %836, %837
  %839 = fcmp fast ole float %838, 0.000000e+00
  %840 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %841 = fadd fast float %837, %840
  %842 = fmul fast float %835, %833
  %843 = fadd fast float %842, %840
  %844 = fdiv fast float 1.000000e+00, %838
  %845 = select i1 %839, float 1.000000e+06, float %844
  %846 = fsub fast float %789, %841
  %847 = fmul fast float %845, %846
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %849 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %850 = fmul fast float %849, %848
  %851 = fsub fast float %849, %850
  %852 = fcmp fast olt float %789, %843
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 3
  %855 = select i1 %852, float %854, float 1.000000e+00
  %856 = fmul fast float %851, %855
  %857 = fsub fast float %792, %841
  %858 = fmul fast float %845, %857
  %859 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %860 = fmul fast float %849, %859
  %861 = fsub fast float %849, %860
  %862 = fcmp fast olt float %792, %843
  %863 = select i1 %862, float %854, float 1.000000e+00
  %864 = fmul fast float %861, %863
  %865 = fadd fast float %864, %856
  %866 = fsub fast float %795, %841
  %867 = fmul fast float %845, %866
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %869 = fmul fast float %849, %868
  %870 = fsub fast float %849, %869
  %871 = fcmp fast olt float %795, %843
  %872 = select i1 %871, float %854, float 1.000000e+00
  %873 = fmul fast float %870, %872
  %874 = fadd fast float %865, %873
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %879 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %880 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %881 = fmul fast float %783, 0x3FD5555560000000
  %882 = fmul fast float %881, %834
  %883 = fmul fast float %882, %876
  %884 = fmul fast float %883, %874
  %885 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %886 = fmul fast float %884, %878
  %887 = fmul fast float %884, %879
  %888 = fmul fast float %884, %880
  %889 = fmul fast float %884, %885
  br label %890

; <label>:890                                     ; preds = %830, %768
  %891 = phi float [ %884, %830 ], [ 0.000000e+00, %768 ]
  %892 = phi float [ %889, %830 ], [ 0.000000e+00, %768 ]
  %893 = phi float [ %886, %830 ], [ 0.000000e+00, %768 ]
  %894 = phi float [ %887, %830 ], [ 0.000000e+00, %768 ]
  %895 = phi float [ %888, %830 ], [ 0.000000e+00, %768 ]
  br i1 %591, label %1038, label %896, !dx.controlflow.hints !64

; <label>:896                                     ; preds = %890
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %899 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %900 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.i32 %901, 0
  %903 = icmp ne i32 %902, 0
  %904 = zext i1 %903 to i32
  %905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.i32 %905, 0
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %941, label %908

; <label>:908                                     ; preds = %896
  br label %909

; <label>:909                                     ; preds = %936, %908
  %910 = phi i32 [ %937, %936 ], [ 0, %908 ]
  %911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %910, i32 0)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = extractvalue %dx.types.ResRet.f32 %911, 1
  %914 = extractvalue %dx.types.ResRet.f32 %911, 2
  %915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %910, i32 16)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = fsub fast float %912, %916
  %920 = fsub fast float %913, %917
  %921 = fsub fast float %914, %918
  %922 = fadd fast float %916, %912
  %923 = fadd fast float %917, %913
  %924 = fadd fast float %918, %914
  %925 = fcmp fast olt float %297, %919
  %926 = fcmp fast olt float %298, %920
  %927 = fcmp fast olt float %299, %921
  %928 = or i1 %925, %926
  %929 = or i1 %927, %928
  %930 = fcmp fast ogt float %297, %922
  %931 = fcmp fast ogt float %298, %923
  %932 = fcmp fast ogt float %299, %924
  %933 = or i1 %930, %931
  %934 = or i1 %932, %933
  %935 = or i1 %929, %934
  br i1 %935, label %936, label %939, !dx.controlflow.hints !65

; <label>:936                                     ; preds = %909
  %937 = add nuw i32 %910, 1
  %938 = icmp ult i32 %937, %906
  br i1 %938, label %909, label %939

; <label>:939                                     ; preds = %936, %909
  %940 = phi i32 [ 255, %936 ], [ %910, %909 ]
  br label %941

; <label>:941                                     ; preds = %939, %896
  %942 = phi i32 [ 255, %896 ], [ %940, %939 ]
  %943 = icmp eq i32 %942, 255
  br i1 %943, label %953, label %944, !dx.controlflow.hints !66

; <label>:944                                     ; preds = %941
  %945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %942, i32 32)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = extractvalue %dx.types.ResRet.f32 %945, 1
  %948 = extractvalue %dx.types.ResRet.f32 %945, 2
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %942, i32 156)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = icmp ne i32 %950, 0
  %952 = zext i1 %951 to i32
  br label %953

; <label>:953                                     ; preds = %944, %941
  %954 = phi float [ %946, %944 ], [ %898, %941 ]
  %955 = phi float [ %947, %944 ], [ %899, %941 ]
  %956 = phi float [ %948, %944 ], [ %900, %941 ]
  %957 = phi i32 [ %952, %944 ], [ %904, %941 ]
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %1028, !dx.controlflow.hints !67

; <label>:959                                     ; preds = %953
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 3
  %962 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 3
  br i1 %943, label %976, label %966, !dx.controlflow.hints !68

; <label>:966                                     ; preds = %959
  %967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %942, i32 60)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %942, i32 64)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.f32 %969, 0
  %971 = extractvalue %dx.types.ResRet.f32 %969, 1
  %972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %942, i32 72)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %942, i32 96)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  br label %976

; <label>:976                                     ; preds = %966, %959
  %977 = phi float [ %968, %966 ], [ %504, %959 ]
  %978 = phi float [ %973, %966 ], [ %502, %959 ]
  %979 = phi float [ %975, %966 ], [ %962, %959 ]
  %980 = phi float [ %970, %966 ], [ %964, %959 ]
  %981 = phi float [ %971, %966 ], [ %965, %959 ]
  %982 = call float @dx.op.binary.f32(i32 35, float %585, float 0.000000e+00)  ; FMax(a,b)
  %983 = call float @dx.op.binary.f32(i32 36, float %982, float 1.000000e+00)  ; FMin(a,b)
  %984 = call float @dx.op.unary.f32(i32 24, float %983)  ; Sqrt(value)
  %985 = call float @dx.op.binary.f32(i32 35, float %588, float 0x3F847AE140000000)  ; FMax(a,b)
  %986 = fsub fast float %586, %299
  %987 = fsub fast float %299, %587
  %988 = call float @dx.op.binary.f32(i32 36, float %987, float %986)  ; FMin(a,b)
  %989 = fdiv fast float %988, %985
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = fsub fast float %299, %978
  %992 = fdiv fast float %991, %977
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fsub fast float 1.000000e+00, %993
  %995 = fmul float %990, %994
  %996 = fmul float %995, %995
  %997 = fmul fast float %984, %961
  %998 = fmul fast float %997, %996
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = fsub fast float %998, %1001
  %1003 = fsub fast float %1000, %1001
  %1004 = fdiv fast float %1002, %1003
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = fmul fast float %1005, %979
  %1007 = fcmp fast ogt float %981, 0.000000e+00
  br i1 %1007, label %1008, label %1028, !dx.controlflow.hints !69

; <label>:1008                                    ; preds = %976
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1013 = fsub fast float %297, %1010
  %1014 = fsub fast float %298, %1011
  %1015 = fsub fast float %299, %1012
  %1016 = fmul fast float %1013, %1013
  %1017 = fmul fast float %1014, %1014
  %1018 = fadd fast float %1016, %1017
  %1019 = fmul fast float %1015, %1015
  %1020 = fadd fast float %1018, %1019
  %1021 = call float @dx.op.unary.f32(i32 24, float %1020)  ; Sqrt(value)
  %1022 = fsub fast float %1021, %980
  %1023 = fsub fast float %981, %980
  %1024 = fdiv fast float %1022, %1023
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = fmul fast float %1025, %1025
  %1027 = fmul fast float %1026, %1006
  br label %1028

; <label>:1028                                    ; preds = %1008, %976, %953
  %1029 = phi float [ 0.000000e+00, %953 ], [ %1027, %1008 ], [ %1006, %976 ]
  %1030 = fmul fast float %1029, %783
  %1031 = fmul fast float %1030, %954
  %1032 = fmul fast float %1030, %955
  %1033 = fmul fast float %1030, %956
  %1034 = fadd fast float %1031, %893
  %1035 = fadd fast float %1032, %894
  %1036 = fadd fast float %1033, %895
  %1037 = fadd fast float %1030, %891
  br label %1038

; <label>:1038                                    ; preds = %1028, %890
  %1039 = phi float [ %1037, %1028 ], [ %891, %890 ]
  %1040 = phi float [ %1034, %1028 ], [ %893, %890 ]
  %1041 = phi float [ %1035, %1028 ], [ %894, %890 ]
  %1042 = phi float [ %1036, %1028 ], [ %895, %890 ]
  %1043 = icmp eq i32 %769, 0
  br i1 %1043, label %1087, label %1044, !dx.controlflow.hints !70

; <label>:1044                                    ; preds = %1038
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1047 = fsub fast float %783, %1046
  %1048 = extractvalue %dx.types.CBufRet.f32 %1045, 3
  %1049 = fmul fast float %1047, %1048
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1055 = fsub fast float %1054, %771
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 3
  %1058 = fmul fast float %1055, %1057
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = fmul fast float %1059, %1052
  %1061 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1062 = fsub fast float %300, %1061
  %1063 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1064 = fmul fast float %1062, %1063
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = fsub fast float 1.000000e+00, %1050
  %1067 = fmul fast float %1065, %1066
  %1068 = fadd fast float %1067, %1050
  %1069 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1070 = fsub fast float %1060, %1069
  %1071 = fmul fast float %1070, %1068
  %1072 = fadd fast float %1071, %1069
  %1073 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1074 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1076 = fmul fast float %1072, %783
  %1077 = extractvalue %dx.types.CBufRet.f32 %1056, 2
  %1078 = fmul fast float %1076, %1073
  %1079 = fmul fast float %1076, %1074
  %1080 = fmul fast float %1076, %1075
  %1081 = fadd fast float %1078, %1040
  %1082 = fadd fast float %1079, %1041
  %1083 = fadd fast float %1080, %1042
  %1084 = fmul fast float %1076, %1077
  %1085 = fadd fast float %1084, %892
  %1086 = fadd fast float %1076, %1039
  br label %1087

; <label>:1087                                    ; preds = %1044, %1038
  %1088 = phi float [ %1086, %1044 ], [ %1039, %1038 ]
  %1089 = phi float [ %1085, %1044 ], [ %892, %1038 ]
  %1090 = phi float [ %1081, %1044 ], [ %1040, %1038 ]
  %1091 = phi float [ %1082, %1044 ], [ %1041, %1038 ]
  %1092 = phi float [ %1083, %1044 ], [ %1042, %1038 ]
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1095 = fcmp fast ogt float %1088, %1094
  br i1 %1095, label %1096, label %1102, !dx.controlflow.hints !71

; <label>:1096                                    ; preds = %1087
  %1097 = fdiv fast float 1.000000e+00, %1088
  %1098 = fmul fast float %1097, %1090
  %1099 = fmul fast float %1097, %1091
  %1100 = fmul fast float %1097, %1092
  %1101 = fmul fast float %1097, %1089
  br label %1102

; <label>:1102                                    ; preds = %1096, %1087
  %1103 = phi float [ %1101, %1096 ], [ %1089, %1087 ]
  %1104 = phi float [ %1098, %1096 ], [ %1090, %1087 ]
  %1105 = phi float [ %1099, %1096 ], [ %1091, %1087 ]
  %1106 = phi float [ %1100, %1096 ], [ %1092, %1087 ]
  br i1 %1095, label %1109, label %1107, !dx.controlflow.hints !72

; <label>:1107                                    ; preds = %1102
  %1108 = fadd fast float %783, %300
  br label %2715

; <label>:1109                                    ; preds = %1102
  %1110 = fmul fast float %1088, 0xBFF7154760000000
  %1111 = call float @dx.op.unary.f32(i32 21, float %1110)  ; Exp(value)
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.i32 %1113, 0
  %1115 = icmp eq i32 %1114, 1
  br i1 %1115, label %1116, label %1151, !dx.controlflow.hints !73

; <label>:1116                                    ; preds = %1109
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = fsub fast float %297, %1118
  %1121 = fsub fast float %298, %1119
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1125 = fmul fast float %1120, %1123
  %1126 = fmul fast float %1121, %1124
  %1127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %21, float %1125, float %1126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = fcmp fast ogt float %1128, 0.000000e+00
  %1130 = extractvalue %dx.types.CBufRet.i32 %1113, 3
  %1131 = icmp ne i32 %1130, 0
  %1132 = and i1 %1129, %1131
  br i1 %1132, label %1133, label %1151, !dx.controlflow.hints !74

; <label>:1133                                    ; preds = %1116
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1137 = fsub fast float %297, %1135
  %1138 = fsub fast float %298, %1136
  %1139 = fmul fast float %1137, %1137
  %1140 = fmul fast float %1138, %1138
  %1141 = fadd fast float %1139, %1140
  %1142 = uitofp i32 %1130 to float
  %1143 = fmul fast float %1142, %1142
  %1144 = fcmp fast ogt float %1141, %1143
  br i1 %1144, label %1151, label %1145, !dx.controlflow.hints !75

; <label>:1145                                    ; preds = %1133
  %1146 = call float @dx.op.unary.f32(i32 24, float %1141)  ; Sqrt(value)
  %1147 = fsub fast float %1142, %1146
  %1148 = fmul fast float %1147, 0x3F75555560000000
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1150 = call float @dx.op.binary.f32(i32 36, float %1149, float %1128)  ; FMin(a,b)
  br label %1151

; <label>:1151                                    ; preds = %1145, %1133, %1116, %1109
  %1152 = phi float [ 1.000000e+00, %1109 ], [ %1150, %1145 ], [ %1128, %1116 ], [ 0.000000e+00, %1133 ]
  %1153 = fcmp fast ogt float %1152, 0.000000e+00
  br i1 %1153, label %1154, label %1227, !dx.controlflow.hints !76

; <label>:1154                                    ; preds = %1151
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.i32 %1155, 1
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.i32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.i32 %1158, 2
  %1162 = extractvalue %dx.types.ResRet.i32 %1158, 3
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.i32 %1163, 1
  %1166 = extractvalue %dx.types.ResRet.i32 %1163, 2
  %1167 = extractvalue %dx.types.ResRet.i32 %1163, 3
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.i32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.i32 %1168, 2
  %1172 = extractvalue %dx.types.ResRet.i32 %1168, 3
  %1173 = and i32 %1169, 65535
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = lshr i32 %1169, 16
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = and i32 %1170, 65535
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = lshr i32 %1170, 16
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = and i32 %1171, 65535
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = lshr i32 %1171, 16
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = and i32 %1172, 65535
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = lshr i32 %1172, 16
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = and i32 %1164, 65535
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = lshr i32 %1164, 16
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = and i32 %1165, 65535
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = lshr i32 %1165, 16
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = and i32 %1166, 65535
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = lshr i32 %1166, 16
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = and i32 %1167, 65535
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = lshr i32 %1167, 16
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = and i32 %1159, 65535
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = lshr i32 %1159, 16
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = and i32 %1160, 65535
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = lshr i32 %1160, 16
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = and i32 %1161, 65535
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = lshr i32 %1161, 16
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = and i32 %1162, 65535
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = lshr i32 %1162, 16
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = and i32 %1156, 65535
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = lshr i32 %1156, 16
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = and i32 %1157, 65535
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  br label %1227

; <label>:1227                                    ; preds = %1154, %1151
  %1228 = phi float [ %1226, %1154 ], [ 0.000000e+00, %1151 ]
  %1229 = phi float [ %1224, %1154 ], [ 0.000000e+00, %1151 ]
  %1230 = phi float [ %1222, %1154 ], [ 0.000000e+00, %1151 ]
  %1231 = phi float [ %1220, %1154 ], [ 0.000000e+00, %1151 ]
  %1232 = phi float [ %1218, %1154 ], [ 0.000000e+00, %1151 ]
  %1233 = phi float [ %1216, %1154 ], [ 0.000000e+00, %1151 ]
  %1234 = phi float [ %1214, %1154 ], [ 0.000000e+00, %1151 ]
  %1235 = phi float [ %1212, %1154 ], [ 0.000000e+00, %1151 ]
  %1236 = phi float [ %1210, %1154 ], [ 0.000000e+00, %1151 ]
  %1237 = phi float [ %1208, %1154 ], [ 0.000000e+00, %1151 ]
  %1238 = phi float [ %1206, %1154 ], [ 0.000000e+00, %1151 ]
  %1239 = phi float [ %1204, %1154 ], [ 0.000000e+00, %1151 ]
  %1240 = phi float [ %1202, %1154 ], [ 0.000000e+00, %1151 ]
  %1241 = phi float [ %1200, %1154 ], [ 0.000000e+00, %1151 ]
  %1242 = phi float [ %1198, %1154 ], [ 0.000000e+00, %1151 ]
  %1243 = phi float [ %1196, %1154 ], [ 0.000000e+00, %1151 ]
  %1244 = phi float [ %1194, %1154 ], [ 0.000000e+00, %1151 ]
  %1245 = phi float [ %1192, %1154 ], [ 0.000000e+00, %1151 ]
  %1246 = phi float [ %1190, %1154 ], [ 0.000000e+00, %1151 ]
  %1247 = phi float [ %1188, %1154 ], [ 0.000000e+00, %1151 ]
  %1248 = phi float [ %1186, %1154 ], [ 0.000000e+00, %1151 ]
  %1249 = phi float [ %1184, %1154 ], [ 0.000000e+00, %1151 ]
  %1250 = phi float [ %1182, %1154 ], [ 0.000000e+00, %1151 ]
  %1251 = phi float [ %1180, %1154 ], [ 0.000000e+00, %1151 ]
  %1252 = phi float [ %1178, %1154 ], [ 0.000000e+00, %1151 ]
  %1253 = phi float [ %1176, %1154 ], [ 0.000000e+00, %1151 ]
  %1254 = phi float [ %1174, %1154 ], [ 0.000000e+00, %1151 ]
  %1255 = fcmp fast olt float %1152, 1.000000e+00
  br i1 %1255, label %1256, label %1916, !dx.controlflow.hints !77

; <label>:1256                                    ; preds = %1227
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = fsub fast float %297, %1258
  %1261 = fsub fast float %298, %1259
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1265 = fmul fast float %1260, %1263
  %1266 = fmul fast float %1261, %1264
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = fmul fast float %1268, %1265
  %1270 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1271 = fadd fast float %1269, %1270
  %1272 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1273 = fmul fast float %1272, %1266
  %1274 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1275 = fadd fast float %1273, %1274
  %1276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1271, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1282 = fsub fast float %1280, %1281
  %1283 = fmul fast float %1282, %1277
  %1284 = fadd fast float %1283, %1281
  %1285 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1286 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1287 = fsub fast float %1285, %1286
  %1288 = fmul fast float %1287, %1278
  %1289 = fadd fast float %1288, %1286
  %1290 = fsub fast float %299, %1284
  %1291 = fsub fast float %1289, %1284
  %1292 = fdiv fast float %1290, %1291
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = fmul fast float %1295, %1293
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1298 = fadd fast float %1296, %1297
  %1299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1271, float %1275, float %1298, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = extractvalue %dx.types.CBufRet.f32 %1303, 1
  %1306 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1307 = fmul fast float %1304, %1300
  %1308 = fmul fast float %1305, %1301
  %1309 = fmul fast float %1306, %1302
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.CBufRet.f32 %1310, 2
  %1314 = fadd fast float %1307, %1311
  %1315 = fadd fast float %1308, %1312
  %1316 = fadd fast float %1309, %1313
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = fmul fast float %1318, %1265
  %1320 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1321 = fadd fast float %1319, %1320
  %1322 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1323 = fmul fast float %1322, %1266
  %1324 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1325 = fadd fast float %1323, %1324
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = extractvalue %dx.types.CBufRet.f32 %1326, 3
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %1335 = extractvalue %dx.types.CBufRet.f32 %1331, 3
  %1336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1321, float %1325, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.ResRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.ResRet.f32 %1336, 2
  %1340 = extractvalue %dx.types.ResRet.f32 %1336, 3
  %1341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1321, float %1325, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = extractvalue %dx.types.ResRet.f32 %1341, 1
  %1344 = extractvalue %dx.types.ResRet.f32 %1341, 2
  %1345 = extractvalue %dx.types.ResRet.f32 %1341, 3
  %1346 = fmul fast float %1337, %1314
  %1347 = fmul fast float %1342, %1314
  %1348 = fmul fast float %1344, %1314
  %1349 = fmul fast float %1340, %1314
  %1350 = fadd fast float %1346, %1327
  %1351 = fadd fast float %1347, %1328
  %1352 = fadd fast float %1348, %1329
  %1353 = fadd fast float %1349, %1330
  %1354 = fmul fast float %1338, %1314
  %1355 = fmul fast float %1343, %1314
  %1356 = fadd fast float %1354, %1332
  %1357 = fadd fast float %1355, %1333
  %1358 = fmul fast float %1339, %1314
  %1359 = fmul fast float %1345, %1314
  %1360 = fadd fast float %1358, %1334
  %1361 = fadd fast float %1359, %1335
  %1362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1321, float %1325, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = extractvalue %dx.types.ResRet.f32 %1362, 3
  %1367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1321, float %1325, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 2
  %1371 = extractvalue %dx.types.ResRet.f32 %1367, 3
  %1372 = fmul fast float %1363, %1315
  %1373 = fmul fast float %1368, %1315
  %1374 = fmul fast float %1370, %1315
  %1375 = fmul fast float %1366, %1315
  %1376 = fadd fast float %1350, %1372
  %1377 = fadd fast float %1351, %1373
  %1378 = fadd fast float %1352, %1374
  %1379 = fadd fast float %1353, %1375
  %1380 = fmul fast float %1364, %1315
  %1381 = fmul fast float %1369, %1315
  %1382 = fadd fast float %1356, %1380
  %1383 = fadd fast float %1357, %1381
  %1384 = fmul fast float %1365, %1315
  %1385 = fmul fast float %1371, %1315
  %1386 = fadd fast float %1360, %1384
  %1387 = fadd fast float %1361, %1385
  %1388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1321, float %1325, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.ResRet.f32 %1388, 3
  %1393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %21, float %1321, float %1325, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = extractvalue %dx.types.ResRet.f32 %1393, 3
  %1398 = fmul fast float %1389, %1316
  %1399 = fmul fast float %1394, %1316
  %1400 = fmul fast float %1396, %1316
  %1401 = fmul fast float %1392, %1316
  %1402 = fadd fast float %1376, %1398
  %1403 = fadd fast float %1377, %1399
  %1404 = fadd fast float %1378, %1400
  %1405 = fadd fast float %1379, %1401
  %1406 = fmul fast float %1390, %1316
  %1407 = fmul fast float %1395, %1316
  %1408 = fadd fast float %1382, %1406
  %1409 = fadd fast float %1383, %1407
  %1410 = fmul fast float %1391, %1316
  %1411 = fmul fast float %1397, %1316
  %1412 = fadd fast float %1386, %1410
  %1413 = fadd fast float %1387, %1411
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = fsub fast float %297, %1415
  %1417 = fsub fast float %1258, %297
  %1418 = call float @dx.op.binary.f32(i32 35, float %1417, float %1416)  ; FMax(a,b)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1420 = fsub fast float %298, %1419
  %1421 = fsub fast float %1259, %298
  %1422 = call float @dx.op.binary.f32(i32 35, float %1421, float %1420)  ; FMax(a,b)
  %1423 = call float @dx.op.binary.f32(i32 35, float %1418, float %1422)  ; FMax(a,b)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1262, 3
  %1425 = fmul fast float %1424, %1423
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.CBufRet.f32 %1427, 2
  %1431 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1432 = fsub fast float %1428, %1402
  %1433 = fsub fast float %1429, %1403
  %1434 = fsub fast float %1430, %1404
  %1435 = fsub fast float %1431, %1405
  %1436 = fmul fast float %1432, %1426
  %1437 = fmul fast float %1433, %1426
  %1438 = fmul fast float %1434, %1426
  %1439 = fmul fast float %1435, %1426
  %1440 = fadd fast float %1436, %1402
  %1441 = fadd fast float %1437, %1403
  %1442 = fadd fast float %1438, %1404
  %1443 = fadd fast float %1439, %1405
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.CBufRet.f32 %1444, 1
  %1447 = fsub fast float %1445, %1408
  %1448 = fsub fast float %1446, %1409
  %1449 = fmul fast float %1447, %1426
  %1450 = fmul fast float %1448, %1426
  %1451 = fadd fast float %1449, %1408
  %1452 = fadd fast float %1450, %1409
  %1453 = extractvalue %dx.types.CBufRet.f32 %1444, 2
  %1454 = extractvalue %dx.types.CBufRet.f32 %1444, 3
  %1455 = fsub fast float %1453, %1412
  %1456 = fsub fast float %1454, %1413
  %1457 = fmul fast float %1455, %1426
  %1458 = fmul fast float %1456, %1426
  %1459 = fadd fast float %1457, %1412
  %1460 = fadd fast float %1458, %1413
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = fmul fast float %1462, %1440
  %1464 = fmul fast float %1462, %1441
  %1465 = fmul fast float %1462, %1442
  %1466 = fmul fast float %1462, %1443
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = fmul fast float %1468, %1451
  %1470 = fmul fast float %1468, %1452
  %1471 = fadd fast float %1469, %1463
  %1472 = fadd fast float %1470, %1465
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = fmul fast float %1474, %1459
  %1476 = fmul fast float %1474, %1460
  %1477 = fadd fast float %1471, %1475
  %1478 = fadd fast float %1472, %1476
  %1479 = extractvalue %dx.types.CBufRet.f32 %1461, 1
  %1480 = fmul fast float %1479, %1440
  %1481 = fmul fast float %1479, %1441
  %1482 = fmul fast float %1479, %1442
  %1483 = fmul fast float %1479, %1443
  %1484 = extractvalue %dx.types.CBufRet.f32 %1467, 1
  %1485 = fmul fast float %1484, %1451
  %1486 = fmul fast float %1484, %1452
  %1487 = fadd fast float %1485, %1480
  %1488 = fadd fast float %1486, %1482
  %1489 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1490 = fmul fast float %1489, %1459
  %1491 = fmul fast float %1489, %1460
  %1492 = fadd fast float %1487, %1490
  %1493 = fadd fast float %1488, %1491
  %1494 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1495 = fmul fast float %1494, %1440
  %1496 = fmul fast float %1494, %1441
  %1497 = fmul fast float %1494, %1442
  %1498 = fmul fast float %1494, %1443
  %1499 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1500 = fmul fast float %1499, %1451
  %1501 = fmul fast float %1499, %1452
  %1502 = fadd fast float %1500, %1495
  %1503 = fadd fast float %1501, %1497
  %1504 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1505 = fmul fast float %1504, %1459
  %1506 = fmul fast float %1504, %1460
  %1507 = fadd fast float %1502, %1505
  %1508 = fadd fast float %1503, %1506
  %1509 = fmul fast float %1496, %1496
  %1510 = fmul fast float %1508, %1508
  %1511 = fmul fast float %1498, %1498
  %1512 = fadd fast float %1511, %1509
  %1513 = fadd fast float %1512, %1510
  %1514 = call float @dx.op.unary.f32(i32 24, float %1513)  ; Sqrt(value)
  %1515 = fcmp fast ugt float %1514, 0.000000e+00
  br i1 %1515, label %1516, label %1531, !dx.controlflow.hints !78

; <label>:1516                                    ; preds = %1256
  %1517 = fsub fast float -0.000000e+00, %1498
  %1518 = fdiv fast float %1517, %1514
  %1519 = fsub fast float -0.000000e+00, %1496
  %1520 = fdiv fast float %1519, %1514
  %1521 = fdiv fast float %1508, %1514
  %1522 = fmul fast float %1507, 0x3FE279A760000000
  %1523 = fmul fast float %1520, %1496
  %1524 = fmul fast float %1521, %1508
  %1525 = fmul fast float %1518, %1498
  %1526 = fadd fast float %1523, %1525
  %1527 = fsub fast float %1526, %1524
  %1528 = call float @dx.op.unary.f32(i32 6, float %1527)  ; FAbs(value)
  %1529 = fadd fast float %1528, 0x3DDB7CDFE0000000
  %1530 = fdiv fast float %1522, %1529
  br label %1531

; <label>:1531                                    ; preds = %1516, %1256
  %1532 = phi float [ %1530, %1516 ], [ 1.000000e+00, %1256 ]
  %1533 = fmul fast float %1481, %1481
  %1534 = fmul fast float %1493, %1493
  %1535 = fmul fast float %1483, %1483
  %1536 = fadd fast float %1535, %1533
  %1537 = fadd fast float %1536, %1534
  %1538 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1539 = fcmp fast ugt float %1538, 0.000000e+00
  br i1 %1539, label %1540, label %1555, !dx.controlflow.hints !78

; <label>:1540                                    ; preds = %1531
  %1541 = fsub fast float -0.000000e+00, %1483
  %1542 = fdiv fast float %1541, %1538
  %1543 = fsub fast float -0.000000e+00, %1481
  %1544 = fdiv fast float %1543, %1538
  %1545 = fdiv fast float %1493, %1538
  %1546 = fmul fast float %1492, 0x3FE279A760000000
  %1547 = fmul fast float %1544, %1481
  %1548 = fmul fast float %1545, %1493
  %1549 = fmul fast float %1542, %1483
  %1550 = fadd fast float %1547, %1549
  %1551 = fsub fast float %1550, %1548
  %1552 = call float @dx.op.unary.f32(i32 6, float %1551)  ; FAbs(value)
  %1553 = fadd fast float %1552, 0x3DDB7CDFE0000000
  %1554 = fdiv fast float %1546, %1553
  br label %1555

; <label>:1555                                    ; preds = %1540, %1531
  %1556 = phi float [ %1554, %1540 ], [ 1.000000e+00, %1531 ]
  %1557 = call float @dx.op.binary.f32(i32 36, float %1556, float %1532)  ; FMin(a,b)
  %1558 = fmul fast float %1464, %1464
  %1559 = fmul fast float %1478, %1478
  %1560 = fmul fast float %1466, %1466
  %1561 = fadd fast float %1560, %1558
  %1562 = fadd fast float %1561, %1559
  %1563 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1564 = fcmp fast ugt float %1563, 0.000000e+00
  br i1 %1564, label %1565, label %1580, !dx.controlflow.hints !78

; <label>:1565                                    ; preds = %1555
  %1566 = fsub fast float -0.000000e+00, %1466
  %1567 = fdiv fast float %1566, %1563
  %1568 = fsub fast float -0.000000e+00, %1464
  %1569 = fdiv fast float %1568, %1563
  %1570 = fdiv fast float %1478, %1563
  %1571 = fmul fast float %1477, 0x3FE279A760000000
  %1572 = fmul fast float %1569, %1464
  %1573 = fmul fast float %1570, %1478
  %1574 = fmul fast float %1567, %1466
  %1575 = fadd fast float %1572, %1574
  %1576 = fsub fast float %1575, %1573
  %1577 = call float @dx.op.unary.f32(i32 6, float %1576)  ; FAbs(value)
  %1578 = fadd fast float %1577, 0x3DDB7CDFE0000000
  %1579 = fdiv fast float %1571, %1578
  br label %1580

; <label>:1580                                    ; preds = %1565, %1555
  %1581 = phi float [ %1579, %1565 ], [ 1.000000e+00, %1555 ]
  %1582 = call float @dx.op.binary.f32(i32 36, float %1581, float %1557)  ; FMin(a,b)
  %1583 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1584 = fcmp fast olt float %1583, 1.000000e+00
  br i1 %1584, label %1585, label %1595, !dx.controlflow.hints !79

; <label>:1585                                    ; preds = %1580
  %1586 = fmul fast float %1583, %1464
  %1587 = fmul fast float %1583, %1478
  %1588 = fmul fast float %1583, %1466
  %1589 = fmul fast float %1583, %1481
  %1590 = fmul fast float %1583, %1493
  %1591 = fmul fast float %1583, %1483
  %1592 = fmul fast float %1583, %1496
  %1593 = fmul fast float %1583, %1508
  %1594 = fmul fast float %1583, %1498
  br label %1595

; <label>:1595                                    ; preds = %1585, %1580
  %1596 = phi float [ %1592, %1585 ], [ %1496, %1580 ]
  %1597 = phi float [ %1593, %1585 ], [ %1508, %1580 ]
  %1598 = phi float [ %1594, %1585 ], [ %1498, %1580 ]
  %1599 = phi float [ %1589, %1585 ], [ %1481, %1580 ]
  %1600 = phi float [ %1590, %1585 ], [ %1493, %1580 ]
  %1601 = phi float [ %1591, %1585 ], [ %1483, %1580 ]
  %1602 = phi float [ %1586, %1585 ], [ %1464, %1580 ]
  %1603 = phi float [ %1587, %1585 ], [ %1478, %1580 ]
  %1604 = phi float [ %1588, %1585 ], [ %1466, %1580 ]
  %1605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1477)  ; FMax(a,b)
  %1606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1492)  ; FMax(a,b)
  %1607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1507)  ; FMax(a,b)
  %1608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1608, 0
  %1610 = fcmp fast ogt float %1609, 0.000000e+00
  %1611 = fcmp fast oge float %1265, 0.000000e+00
  %1612 = and i1 %1611, %1610
  %1613 = fcmp fast ole float %1265, 1.000000e+00
  %1614 = and i1 %1613, %1612
  %1615 = fcmp fast oge float %1266, 0.000000e+00
  %1616 = and i1 %1615, %1614
  %1617 = fcmp fast ole float %1266, 1.000000e+00
  %1618 = and i1 %1617, %1616
  br i1 %1618, label %1619, label %1764, !dx.controlflow.hints !80

; <label>:1619                                    ; preds = %1595
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 2
  %1622 = extractvalue %dx.types.CBufRet.f32 %1620, 3
  %1623 = fmul fast float %1621, %1265
  %1624 = fmul fast float %1622, %1266
  %1625 = call float @dx.op.unary.f32(i32 27, float %1623)  ; Round_ni(value)
  %1626 = call float @dx.op.unary.f32(i32 27, float %1624)  ; Round_ni(value)
  %1627 = fptosi float %1625 to i32
  %1628 = fptosi float %1626 to i32
  %1629 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1627, i32 %1628, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 65535
  %1632 = lshr i32 %1630, 16
  %1633 = icmp eq i32 %1631, 65535
  br i1 %1633, label %1670, label %1634, !dx.controlflow.hints !81

; <label>:1634                                    ; preds = %1619
  %1635 = extractvalue %dx.types.CBufRet.f32 %1608, 1
  %1636 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1638 = fmul fast float %1636, %1265
  %1639 = fmul fast float %1637, %1266
  %1640 = fmul fast float %1638, 1.250000e-01
  %1641 = fmul fast float %1639, 1.250000e-01
  %1642 = call float @dx.op.unary.f32(i32 27, float %1640)  ; Round_ni(value)
  %1643 = call float @dx.op.unary.f32(i32 27, float %1641)  ; Round_ni(value)
  %1644 = fmul fast float %1642, 8.000000e+00
  %1645 = fmul fast float %1643, 8.000000e+00
  %1646 = and i32 %1630, 255
  %1647 = lshr i32 %1630, 8
  %1648 = and i32 %1647, 255
  %1649 = mul nuw nsw i32 %1646, 9
  %1650 = uitofp i32 %1649 to float
  %1651 = mul nuw nsw i32 %1648, 9
  %1652 = uitofp i32 %1651 to float
  %1653 = fadd fast float %1650, 5.000000e-01
  %1654 = fadd fast float %1653, %1638
  %1655 = fsub fast float %1654, %1644
  %1656 = fadd fast float %1652, 5.000000e-01
  %1657 = fadd fast float %1656, %1639
  %1658 = fsub fast float %1657, %1645
  %1659 = fdiv fast float %1655, %1609
  %1660 = fdiv fast float %1658, %1635
  %1661 = fmul fast float %1293, 4.375000e-01
  %1662 = fadd fast float %1661, 3.125000e-02
  %1663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1659, float %1660, float %1662, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1664 = extractvalue %dx.types.ResRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.ResRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.ResRet.f32 %1663, 2
  %1667 = fadd fast float %1664, %1605
  %1668 = fadd fast float %1665, %1606
  %1669 = fadd fast float %1666, %1607
  br label %1670

; <label>:1670                                    ; preds = %1634, %1619
  %1671 = phi float [ %1669, %1634 ], [ %1607, %1619 ]
  %1672 = phi float [ %1668, %1634 ], [ %1606, %1619 ]
  %1673 = phi float [ %1667, %1634 ], [ %1605, %1619 ]
  %1674 = icmp eq i32 %1632, 65535
  br i1 %1674, label %1764, label %1675, !dx.controlflow.hints !82

; <label>:1675                                    ; preds = %1670
  %1676 = extractvalue %dx.types.CBufRet.f32 %1608, 1
  %1677 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1679 = fmul fast float %1677, %1265
  %1680 = fmul fast float %1678, %1266
  %1681 = fmul fast float %1679, 1.250000e-01
  %1682 = fmul fast float %1680, 1.250000e-01
  %1683 = call float @dx.op.unary.f32(i32 27, float %1681)  ; Round_ni(value)
  %1684 = call float @dx.op.unary.f32(i32 27, float %1682)  ; Round_ni(value)
  %1685 = fmul fast float %1683, 8.000000e+00
  %1686 = fmul fast float %1684, 8.000000e+00
  %1687 = fsub fast float %1679, %1685
  %1688 = fsub fast float %1680, %1686
  %1689 = fadd fast float %1687, 5.000000e-01
  %1690 = fadd fast float %1688, 5.000000e-01
  %1691 = and i32 %1632, 255
  %1692 = lshr i32 %1630, 24
  %1693 = mul nuw nsw i32 %1691, 9
  %1694 = uitofp i32 %1693 to float
  %1695 = mul nuw nsw i32 %1692, 9
  %1696 = uitofp i32 %1695 to float
  %1697 = fadd fast float %1689, %1694
  %1698 = fadd fast float %1690, %1696
  %1699 = fdiv fast float %1697, %1609
  %1700 = fdiv fast float %1698, %1676
  %1701 = fmul fast float %1293, 4.375000e-01
  %1702 = fadd fast float %1701, 3.125000e-02
  %1703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1699, float %1700, float %1702, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1704 = extractvalue %dx.types.ResRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.ResRet.f32 %1703, 1
  %1706 = extractvalue %dx.types.ResRet.f32 %1703, 2
  %1707 = fadd fast float %1701, 5.312500e-01
  %1708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %21, float %1699, float %1700, float %1707, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1712 = fmul fast float %1709, 2.000000e+00
  %1713 = fmul fast float %1710, 2.000000e+00
  %1714 = fmul fast float %1711, 2.000000e+00
  %1715 = fadd fast float %1712, -1.000000e+00
  %1716 = fadd fast float %1713, -1.000000e+00
  %1717 = fadd fast float %1714, -1.000000e+00
  %1718 = fmul fast float %1715, %1715
  %1719 = fmul fast float %1716, %1716
  %1720 = fadd fast float %1718, %1719
  %1721 = fmul fast float %1717, %1717
  %1722 = fadd fast float %1720, %1721
  %1723 = call float @dx.op.unary.f32(i32 24, float %1722)  ; Sqrt(value)
  %1724 = fcmp fast ogt float %1723, 0.000000e+00
  br i1 %1724, label %1725, label %1729, !dx.controlflow.hints !83

; <label>:1725                                    ; preds = %1675
  %1726 = fdiv fast float %1715, %1723
  %1727 = fdiv fast float %1716, %1723
  %1728 = fdiv fast float %1717, %1723
  br label %1729

; <label>:1729                                    ; preds = %1725, %1675
  %1730 = phi float [ %1726, %1725 ], [ 0.000000e+00, %1675 ]
  %1731 = phi float [ %1727, %1725 ], [ 0.000000e+00, %1675 ]
  %1732 = phi float [ %1728, %1725 ], [ 0.000000e+00, %1675 ]
  %1733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.f32 %1733, 0
  %1735 = extractvalue %dx.types.CBufRet.f32 %1733, 1
  %1736 = fsub fast float %297, %1734
  %1737 = fsub fast float %298, %1735
  %1738 = fmul fast float %1736, %1736
  %1739 = fmul fast float %1737, %1737
  %1740 = fadd fast float %1738, %1739
  %1741 = call float @dx.op.unary.f32(i32 24, float %1740)  ; Sqrt(value)
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1745 = fsub fast float %1741, %1743
  %1746 = fdiv fast float %1745, %1744
  %1747 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1748 = fmul fast float %1747, 2.000000e+00
  %1749 = fsub fast float 3.000000e+00, %1748
  %1750 = fmul fast float %1747, %1747
  %1751 = fmul fast float %1750, %1749
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1730, float %1731, float %1732, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1752)  ; FMax(a,b)
  %1754 = fmul fast float %1753, 0x400C5BF8A0000000
  %1755 = fmul fast float %1751, %1704
  %1756 = fmul fast float %1755, %1754
  %1757 = fadd fast float %1756, %1673
  %1758 = fmul fast float %1751, %1705
  %1759 = fmul fast float %1758, %1754
  %1760 = fadd fast float %1759, %1672
  %1761 = fmul fast float %1751, %1706
  %1762 = fmul fast float %1761, %1754
  %1763 = fadd fast float %1762, %1671
  br label %1764

; <label>:1764                                    ; preds = %1729, %1670, %1595
  %1765 = phi float [ %1763, %1729 ], [ %1671, %1670 ], [ %1607, %1595 ]
  %1766 = phi float [ %1760, %1729 ], [ %1672, %1670 ], [ %1606, %1595 ]
  %1767 = phi float [ %1757, %1729 ], [ %1673, %1670 ], [ %1605, %1595 ]
  %1768 = fcmp fast ogt float %299, %1289
  %1769 = and i1 %1611, %1768
  %1770 = and i1 %1613, %1769
  %1771 = and i1 %1615, %1770
  %1772 = and i1 %1617, %1771
  br i1 %1772, label %1773, label %1830, !dx.controlflow.hints !84

; <label>:1773                                    ; preds = %1764
  %1774 = fmul fast float %1291, 0x3FC24924A0000000
  %1775 = fsub fast float %299, %1289
  %1776 = fdiv fast float %1775, %1774
  %1777 = call float @dx.op.unary.f32(i32 7, float %1776)  ; Saturate(value)
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 0
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.CBufRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.CBufRet.f32 %1780, 2
  %1784 = fsub fast float %1779, %1767
  %1785 = fsub fast float %1781, %1602
  %1786 = fsub fast float %1782, %1603
  %1787 = fsub fast float %1783, %1604
  %1788 = fmul fast float %1784, %1777
  %1789 = fmul fast float %1785, %1777
  %1790 = fmul fast float %1786, %1777
  %1791 = fmul fast float %1787, %1777
  %1792 = fadd fast float %1788, %1767
  %1793 = fadd fast float %1789, %1602
  %1794 = fadd fast float %1790, %1603
  %1795 = fadd fast float %1791, %1604
  %1796 = extractvalue %dx.types.CBufRet.f32 %1778, 1
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 0
  %1799 = extractvalue %dx.types.CBufRet.f32 %1797, 1
  %1800 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1801 = fsub fast float %1796, %1766
  %1802 = fsub fast float %1798, %1599
  %1803 = fsub fast float %1799, %1600
  %1804 = fsub fast float %1800, %1601
  %1805 = fmul fast float %1801, %1777
  %1806 = fmul fast float %1802, %1777
  %1807 = fmul fast float %1803, %1777
  %1808 = fmul fast float %1804, %1777
  %1809 = fadd fast float %1805, %1766
  %1810 = fadd fast float %1806, %1599
  %1811 = fadd fast float %1807, %1600
  %1812 = fadd fast float %1808, %1601
  %1813 = extractvalue %dx.types.CBufRet.f32 %1778, 2
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.CBufRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.CBufRet.f32 %1814, 2
  %1818 = fsub fast float %1813, %1765
  %1819 = fsub fast float %1815, %1596
  %1820 = fsub fast float %1816, %1597
  %1821 = fsub fast float %1817, %1598
  %1822 = fmul fast float %1818, %1777
  %1823 = fmul fast float %1819, %1777
  %1824 = fmul fast float %1820, %1777
  %1825 = fmul fast float %1821, %1777
  %1826 = fadd fast float %1822, %1765
  %1827 = fadd fast float %1823, %1596
  %1828 = fadd fast float %1824, %1597
  %1829 = fadd fast float %1825, %1598
  br label %1830

; <label>:1830                                    ; preds = %1773, %1764
  %1831 = phi float [ %1826, %1773 ], [ %1765, %1764 ]
  %1832 = phi float [ %1827, %1773 ], [ %1596, %1764 ]
  %1833 = phi float [ %1828, %1773 ], [ %1597, %1764 ]
  %1834 = phi float [ %1829, %1773 ], [ %1598, %1764 ]
  %1835 = phi float [ %1809, %1773 ], [ %1766, %1764 ]
  %1836 = phi float [ %1810, %1773 ], [ %1599, %1764 ]
  %1837 = phi float [ %1811, %1773 ], [ %1600, %1764 ]
  %1838 = phi float [ %1812, %1773 ], [ %1601, %1764 ]
  %1839 = phi float [ %1792, %1773 ], [ %1767, %1764 ]
  %1840 = phi float [ %1793, %1773 ], [ %1602, %1764 ]
  %1841 = phi float [ %1794, %1773 ], [ %1603, %1764 ]
  %1842 = phi float [ %1795, %1773 ], [ %1604, %1764 ]
  %1843 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1844 = fmul fast float %1843, %1839
  %1845 = fmul fast float %1843, %1835
  %1846 = fmul fast float %1843, %1831
  %1847 = fmul fast float %1840, 1.500000e+00
  %1848 = fmul fast float %1847, %1843
  %1849 = fmul fast float %1841, 1.500000e+00
  %1850 = fmul fast float %1849, %1843
  %1851 = fmul fast float %1842, 1.500000e+00
  %1852 = fmul fast float %1851, %1843
  %1853 = fmul fast float %1836, 1.500000e+00
  %1854 = fmul fast float %1853, %1843
  %1855 = fmul fast float %1837, 1.500000e+00
  %1856 = fmul fast float %1855, %1843
  %1857 = fmul fast float %1838, 1.500000e+00
  %1858 = fmul fast float %1857, %1843
  %1859 = fmul fast float %1832, 1.500000e+00
  %1860 = fmul fast float %1859, %1843
  %1861 = fmul fast float %1833, 1.500000e+00
  %1862 = fmul fast float %1861, %1843
  %1863 = fmul fast float %1834, 1.500000e+00
  %1864 = fmul fast float %1863, %1843
  %1865 = fsub fast float %1254, %1844
  %1866 = fmul fast float %1865, %1152
  %1867 = fadd fast float %1866, %1844
  %1868 = fsub fast float %1253, %1848
  %1869 = fmul fast float %1868, %1152
  %1870 = fadd fast float %1869, %1848
  %1871 = fsub fast float %1252, %1850
  %1872 = fmul fast float %1871, %1152
  %1873 = fadd fast float %1872, %1850
  %1874 = fsub fast float %1251, %1852
  %1875 = fmul fast float %1874, %1152
  %1876 = fadd fast float %1875, %1852
  %1877 = fmul fast float %1250, %1152
  %1878 = fmul fast float %1249, %1152
  %1879 = fmul fast float %1248, %1152
  %1880 = fmul fast float %1247, %1152
  %1881 = fmul fast float %1246, %1152
  %1882 = fsub fast float %1245, %1845
  %1883 = fmul fast float %1882, %1152
  %1884 = fadd fast float %1883, %1845
  %1885 = fsub fast float %1244, %1854
  %1886 = fmul fast float %1885, %1152
  %1887 = fadd fast float %1886, %1854
  %1888 = fsub fast float %1243, %1856
  %1889 = fmul fast float %1888, %1152
  %1890 = fadd fast float %1889, %1856
  %1891 = fsub fast float %1242, %1858
  %1892 = fmul fast float %1891, %1152
  %1893 = fadd fast float %1892, %1858
  %1894 = fmul fast float %1241, %1152
  %1895 = fmul fast float %1240, %1152
  %1896 = fmul fast float %1239, %1152
  %1897 = fmul fast float %1238, %1152
  %1898 = fmul fast float %1237, %1152
  %1899 = fsub fast float %1236, %1846
  %1900 = fmul fast float %1899, %1152
  %1901 = fadd fast float %1900, %1846
  %1902 = fsub fast float %1235, %1860
  %1903 = fmul fast float %1902, %1152
  %1904 = fadd fast float %1903, %1860
  %1905 = fsub fast float %1234, %1862
  %1906 = fmul fast float %1905, %1152
  %1907 = fadd fast float %1906, %1862
  %1908 = fsub fast float %1233, %1864
  %1909 = fmul fast float %1908, %1152
  %1910 = fadd fast float %1909, %1864
  %1911 = fmul fast float %1232, %1152
  %1912 = fmul fast float %1231, %1152
  %1913 = fmul fast float %1230, %1152
  %1914 = fmul fast float %1229, %1152
  %1915 = fmul fast float %1228, %1152
  br label %1916

; <label>:1916                                    ; preds = %1830, %1227
  %1917 = phi float [ %1915, %1830 ], [ %1228, %1227 ]
  %1918 = phi float [ %1914, %1830 ], [ %1229, %1227 ]
  %1919 = phi float [ %1913, %1830 ], [ %1230, %1227 ]
  %1920 = phi float [ %1912, %1830 ], [ %1231, %1227 ]
  %1921 = phi float [ %1911, %1830 ], [ %1232, %1227 ]
  %1922 = phi float [ %1910, %1830 ], [ %1233, %1227 ]
  %1923 = phi float [ %1907, %1830 ], [ %1234, %1227 ]
  %1924 = phi float [ %1904, %1830 ], [ %1235, %1227 ]
  %1925 = phi float [ %1901, %1830 ], [ %1236, %1227 ]
  %1926 = phi float [ %1898, %1830 ], [ %1237, %1227 ]
  %1927 = phi float [ %1897, %1830 ], [ %1238, %1227 ]
  %1928 = phi float [ %1896, %1830 ], [ %1239, %1227 ]
  %1929 = phi float [ %1895, %1830 ], [ %1240, %1227 ]
  %1930 = phi float [ %1894, %1830 ], [ %1241, %1227 ]
  %1931 = phi float [ %1893, %1830 ], [ %1242, %1227 ]
  %1932 = phi float [ %1890, %1830 ], [ %1243, %1227 ]
  %1933 = phi float [ %1887, %1830 ], [ %1244, %1227 ]
  %1934 = phi float [ %1884, %1830 ], [ %1245, %1227 ]
  %1935 = phi float [ %1881, %1830 ], [ %1246, %1227 ]
  %1936 = phi float [ %1880, %1830 ], [ %1247, %1227 ]
  %1937 = phi float [ %1879, %1830 ], [ %1248, %1227 ]
  %1938 = phi float [ %1878, %1830 ], [ %1249, %1227 ]
  %1939 = phi float [ %1877, %1830 ], [ %1250, %1227 ]
  %1940 = phi float [ %1876, %1830 ], [ %1251, %1227 ]
  %1941 = phi float [ %1873, %1830 ], [ %1252, %1227 ]
  %1942 = phi float [ %1870, %1830 ], [ %1253, %1227 ]
  %1943 = phi float [ %1867, %1830 ], [ %1254, %1227 ]
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 2
  %1946 = fmul fast float %1945, %1945
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.CBufRet.f32 %1947, 2
  %1951 = fmul fast float %1943, 0x3FD20DD760000000
  %1952 = fmul fast float %1950, %1941
  %1953 = fmul fast float %1950, %1950
  %1954 = fmul fast float %1953, 0x3FEE471020000000
  %1955 = fadd fast float %1954, 0xBFD42F6020000000
  %1956 = fmul fast float %1955, %1937
  %1957 = fmul fast float %1948, %1940
  %1958 = fmul fast float %1949, %1942
  %1959 = fmul fast float %1950, 0x3FF17B1420000000
  %1960 = fmul fast float %1946, %1936
  %1961 = fmul fast float %1960, %1948
  %1962 = fmul fast float %1961, %1959
  %1963 = fmul fast float %1946, %1938
  %1964 = fmul fast float %1963, %1949
  %1965 = fmul fast float %1964, %1959
  %1966 = fmul fast float %1948, %1948
  %1967 = fmul fast float %1949, %1949
  %1968 = fsub fast float %1966, %1967
  %1969 = fmul fast float %1935, 0x3FE17B1420000000
  %1970 = fmul fast float %1969, %1968
  %1971 = fmul fast float %1939, 0x3FF17B1420000000
  %1972 = fmul fast float %1971, %1949
  %1973 = fmul fast float %1972, %1948
  %1974 = fadd fast float %1970, %1973
  %1975 = fadd fast float %1974, %1956
  %1976 = fmul fast float %1975, %1946
  %1977 = fsub fast float %1958, %1952
  %1978 = fadd fast float %1977, %1957
  %1979 = fmul fast float %1978, 0x3FDF454380000000
  %1980 = fmul fast float %1979, %1945
  %1981 = fsub fast float %1951, %1962
  %1982 = fsub fast float %1981, %1965
  %1983 = fadd fast float %1982, %1976
  %1984 = fadd fast float %1983, %1980
  %1985 = fmul fast float %1934, 0x3FD20DD760000000
  %1986 = fmul fast float %1950, %1932
  %1987 = fmul fast float %1955, %1928
  %1988 = fmul fast float %1948, %1931
  %1989 = fmul fast float %1949, %1933
  %1990 = fmul fast float %1946, %1927
  %1991 = fmul fast float %1990, %1948
  %1992 = fmul fast float %1991, %1959
  %1993 = fmul fast float %1946, %1929
  %1994 = fmul fast float %1993, %1949
  %1995 = fmul fast float %1994, %1959
  %1996 = fmul fast float %1926, 0x3FE17B1420000000
  %1997 = fmul fast float %1996, %1968
  %1998 = fmul fast float %1930, 0x3FF17B1420000000
  %1999 = fmul fast float %1998, %1949
  %2000 = fmul fast float %1999, %1948
  %2001 = fadd fast float %1997, %2000
  %2002 = fadd fast float %2001, %1987
  %2003 = fmul fast float %2002, %1946
  %2004 = fsub fast float %1989, %1986
  %2005 = fadd fast float %2004, %1988
  %2006 = fmul fast float %2005, 0x3FDF454380000000
  %2007 = fmul fast float %2006, %1945
  %2008 = fsub fast float %1985, %1992
  %2009 = fsub fast float %2008, %1995
  %2010 = fadd fast float %2009, %2003
  %2011 = fadd fast float %2010, %2007
  %2012 = fmul fast float %1925, 0x3FD20DD760000000
  %2013 = fmul fast float %1950, %1923
  %2014 = fmul fast float %1955, %1919
  %2015 = fmul fast float %1948, %1922
  %2016 = fmul fast float %1949, %1924
  %2017 = fmul fast float %1946, %1918
  %2018 = fmul fast float %2017, %1948
  %2019 = fmul fast float %2018, %1959
  %2020 = fmul fast float %1946, %1920
  %2021 = fmul fast float %2020, %1949
  %2022 = fmul fast float %2021, %1959
  %2023 = fmul fast float %1917, 0x3FE17B1420000000
  %2024 = fmul fast float %2023, %1968
  %2025 = fmul fast float %1921, 0x3FF17B1420000000
  %2026 = fmul fast float %2025, %1949
  %2027 = fmul fast float %2026, %1948
  %2028 = fadd fast float %2024, %2027
  %2029 = fadd fast float %2028, %2014
  %2030 = fmul fast float %2029, %1946
  %2031 = fsub fast float %2016, %2013
  %2032 = fadd fast float %2031, %2015
  %2033 = fmul fast float %2032, 0x3FDF454380000000
  %2034 = fmul fast float %2033, %1945
  %2035 = fsub fast float %2012, %2019
  %2036 = fsub fast float %2035, %2022
  %2037 = fadd fast float %2036, %2030
  %2038 = fadd fast float %2037, %2034
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 3
  %2041 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %2042 = fmul fast float %2041, %2040
  %2043 = fmul fast float %2042, %1984
  %2044 = fmul fast float %2042, %2011
  %2045 = fmul fast float %2042, %2038
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 3
  %2048 = fcmp fast une float %2047, 0.000000e+00
  %2049 = extractvalue %dx.types.CBufRet.f32 %2046, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2046, 1
  %2051 = extractvalue %dx.types.CBufRet.f32 %2046, 2
  br i1 %2048, label %2052, label %2074, !dx.controlflow.hints !85

; <label>:2052                                    ; preds = %1916
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.CBufRet.f32 %2053, 2
  %2057 = call float @dx.op.dot3.f32(i32 55, float %2049, float %2050, float %2051, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %2058 = fcmp fast ogt float %1103, 0.000000e+00
  %2059 = select i1 %2058, float 1.000000e+00, float -1.000000e+00
  %2060 = fmul fast float %2059, 5.000000e-01
  %2061 = fmul fast float %2060, %2057
  %2062 = fmul fast float %2059, %1103
  %2063 = fadd fast float %2061, 4.921875e-01
  %2064 = fadd fast float %2062, -3.125000e-02
  %2065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %21, float %2063, float 0x3FB25F3060000000, float %2064, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2068 = extractvalue %dx.types.CBufRet.f32 %2067, 0
  %2069 = fmul fast float %2066, 0x400921FB60000000
  %2070 = fmul fast float %2069, %2068
  %2071 = fmul fast float %2070, %2054
  %2072 = fmul fast float %2070, %2055
  %2073 = fmul fast float %2070, %2056
  br label %2074

; <label>:2074                                    ; preds = %2052, %1916
  %2075 = phi float [ %2071, %2052 ], [ 0.000000e+00, %1916 ]
  %2076 = phi float [ %2072, %2052 ], [ 0.000000e+00, %1916 ]
  %2077 = phi float [ %2073, %2052 ], [ 0.000000e+00, %1916 ]
  %2078 = fdiv fast float 1.000000e+00, %2049
  %2079 = fdiv fast float 1.000000e+00, %2050
  %2080 = fdiv fast float 1.000000e+00, %2051
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 0
  %2083 = fmul fast float %2082, %2049
  %2084 = fmul fast float %2082, %2050
  %2085 = fmul fast float %2082, %2051
  %2086 = fadd fast float %2083, %297
  %2087 = fsub fast float -0.000000e+00, %2086
  %2088 = fadd fast float %2084, %298
  %2089 = fsub fast float -0.000000e+00, %2088
  %2090 = fadd fast float %2085, %299
  br i1 %313, label %2162, label %2091, !dx.controlflow.hints !46

; <label>:2091                                    ; preds = %2074
  %2092 = extractvalue %dx.types.CBufRet.f32 %2081, 1
  %2093 = fcmp fast ogt float %2092, %2082
  br i1 %2093, label %2094, label %2096, !dx.controlflow.hints !47

; <label>:2094                                    ; preds = %2091
  %2095 = fsub fast float %2092, %2082
  br label %2153

; <label>:2096                                    ; preds = %2091
  %2097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2098 = extractvalue %dx.types.CBufRet.i32 %2097, 3
  %2099 = icmp eq i32 %2098, 0
  %2100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.f32 %2100, 2
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 2
  %2104 = fsub fast float %2101, %2090
  %2105 = fadd fast float %2104, %2103
  %2106 = fsub fast float 0xC7EFFFFFE0000000, %2090
  br i1 %2099, label %2116, label %2107, !dx.controlflow.hints !40

; <label>:2107                                    ; preds = %2096
  %2108 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2087, float %2089, float %2105)  ; Dot3(ax,ay,az,bx,by,bz)
  %2109 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2049, float %2050, float %2051)  ; Dot3(ax,ay,az,bx,by,bz)
  %2110 = fdiv fast float 1.000000e+00, %2109
  %2111 = fmul fast float %2110, %2108
  %2112 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2087, float %2089, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %2113 = fmul fast float %2110, %2112
  %2114 = call float @dx.op.binary.f32(i32 36, float %2111, float %2113)  ; FMin(a,b)
  %2115 = call float @dx.op.binary.f32(i32 35, float %2111, float %2113)  ; FMax(a,b)
  br label %2146

; <label>:2116                                    ; preds = %2096
  %2117 = extractvalue %dx.types.CBufRet.f32 %2100, 0
  %2118 = extractvalue %dx.types.CBufRet.f32 %2100, 1
  %2119 = extractvalue %dx.types.CBufRet.f32 %2102, 0
  %2120 = extractvalue %dx.types.CBufRet.f32 %2102, 1
  %2121 = fsub fast float %2117, %2086
  %2122 = fmul fast float %2078, %2121
  %2123 = fadd fast float %2121, %2119
  %2124 = fmul fast float %2123, %2078
  %2125 = call float @dx.op.binary.f32(i32 36, float %2122, float %2124)  ; FMin(a,b)
  %2126 = call float @dx.op.binary.f32(i32 35, float %2122, float %2124)  ; FMax(a,b)
  %2127 = fsub fast float %2118, %2088
  %2128 = fmul fast float %2079, %2127
  %2129 = fadd fast float %2127, %2120
  %2130 = fmul fast float %2129, %2079
  %2131 = call float @dx.op.binary.f32(i32 36, float %2128, float %2130)  ; FMin(a,b)
  %2132 = call float @dx.op.binary.f32(i32 35, float %2125, float %2131)  ; FMax(a,b)
  %2133 = call float @dx.op.binary.f32(i32 35, float %2128, float %2130)  ; FMax(a,b)
  %2134 = call float @dx.op.binary.f32(i32 36, float %2126, float %2133)  ; FMin(a,b)
  %2135 = fmul fast float %2080, %2106
  %2136 = fmul fast float %2080, %2105
  %2137 = call float @dx.op.binary.f32(i32 36, float %2135, float %2136)  ; FMin(a,b)
  %2138 = call float @dx.op.binary.f32(i32 35, float %2132, float %2137)  ; FMax(a,b)
  %2139 = call float @dx.op.binary.f32(i32 35, float %2135, float %2136)  ; FMax(a,b)
  %2140 = call float @dx.op.binary.f32(i32 36, float %2134, float %2139)  ; FMin(a,b)
  %2141 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2138)  ; FMax(a,b)
  %2142 = fcmp fast ult float %2140, %2141
  br i1 %2142, label %2146, label %2143, !dx.controlflow.hints !41

; <label>:2143                                    ; preds = %2116
  %2144 = call float @dx.op.binary.f32(i32 36, float %2138, float %2140)  ; FMin(a,b)
  %2145 = call float @dx.op.binary.f32(i32 35, float %2138, float %2140)  ; FMax(a,b)
  br label %2146

; <label>:2146                                    ; preds = %2143, %2116, %2107
  %2147 = phi float [ %2114, %2107 ], [ %2144, %2143 ], [ 0.000000e+00, %2116 ]
  %2148 = phi float [ %2115, %2107 ], [ %2145, %2143 ], [ 0.000000e+00, %2116 ]
  %2149 = fcmp fast ogt float %2147, 0.000000e+00
  br i1 %2149, label %2153, label %2150, !dx.controlflow.hints !48

; <label>:2150                                    ; preds = %2146
  %2151 = fcmp fast ugt float %2148, 0.000000e+00
  br i1 %2151, label %2152, label %2153, !dx.controlflow.hints !49

; <label>:2152                                    ; preds = %2150
  br label %2153

; <label>:2153                                    ; preds = %2152, %2150, %2146, %2094
  %2154 = phi float [ %2095, %2094 ], [ 0.000000e+00, %2152 ], [ 0x47EFFFFFE0000000, %2150 ], [ %2147, %2146 ]
  %2155 = phi i32 [ %203, %2094 ], [ %203, %2152 ], [ 0, %2150 ], [ %203, %2146 ]
  %2156 = icmp ne i32 %2155, 0
  %2157 = zext i1 %2156 to i32
  %2158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2158, 2
  %2160 = call float @dx.op.binary.f32(i32 35, float %2154, float %2159)  ; FMax(a,b)
  %2161 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2160)  ; FMin(a,b)
  br label %2162

; <label>:2162                                    ; preds = %2153, %2074
  %2163 = phi float [ %2161, %2153 ], [ 0x47EFFFFFE0000000, %2074 ]
  %2164 = phi i32 [ %2157, %2153 ], [ 0, %2074 ]
  %2165 = fsub fast float %2086, %484
  %2166 = fsub fast float %2088, %485
  %2167 = fmul fast float %2165, %489
  %2168 = fmul fast float %2166, %490
  %2169 = call float @dx.op.binary.f32(i32 36, float %2167, float %2168)  ; FMin(a,b)
  %2170 = fcmp fast olt float %2169, 0.000000e+00
  %2171 = call float @dx.op.binary.f32(i32 35, float %2167, float %2168)  ; FMax(a,b)
  %2172 = fcmp fast ogt float %2171, 1.000000e+00
  %2173 = or i1 %2170, %2172
  %2174 = fcmp fast olt float %2090, %498
  %2175 = or i1 %2173, %2174
  %2176 = fcmp fast ogt float %2090, %505
  %2177 = or i1 %2175, %2176
  %2178 = extractvalue %dx.types.CBufRet.f32 %488, 0
  br i1 %2177, label %2179, label %2207, !dx.controlflow.hints !55

; <label>:2179                                    ; preds = %2162
  %2180 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %2181 = fsub fast float %484, %2086
  %2182 = fmul fast float %2181, %2078
  %2183 = fadd fast float %2181, %2178
  %2184 = fmul fast float %2183, %2078
  %2185 = call float @dx.op.binary.f32(i32 36, float %2182, float %2184)  ; FMin(a,b)
  %2186 = call float @dx.op.binary.f32(i32 35, float %2182, float %2184)  ; FMax(a,b)
  %2187 = fsub fast float %485, %2088
  %2188 = fmul fast float %2187, %2079
  %2189 = fadd fast float %2187, %2180
  %2190 = fmul fast float %2189, %2079
  %2191 = call float @dx.op.binary.f32(i32 36, float %2188, float %2190)  ; FMin(a,b)
  %2192 = call float @dx.op.binary.f32(i32 35, float %2185, float %2191)  ; FMax(a,b)
  %2193 = call float @dx.op.binary.f32(i32 35, float %2188, float %2190)  ; FMax(a,b)
  %2194 = call float @dx.op.binary.f32(i32 36, float %2186, float %2193)  ; FMin(a,b)
  %2195 = fsub fast float %498, %2090
  %2196 = fmul fast float %2195, %2080
  %2197 = fsub fast float %502, %2090
  %2198 = fadd fast float %2197, %504
  %2199 = fmul fast float %2198, %2080
  %2200 = call float @dx.op.binary.f32(i32 36, float %2196, float %2199)  ; FMin(a,b)
  %2201 = call float @dx.op.binary.f32(i32 35, float %2192, float %2200)  ; FMax(a,b)
  %2202 = call float @dx.op.binary.f32(i32 35, float %2196, float %2199)  ; FMax(a,b)
  %2203 = call float @dx.op.binary.f32(i32 36, float %2194, float %2202)  ; FMin(a,b)
  %2204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2201)  ; FMax(a,b)
  %2205 = fcmp fast oge float %2203, %2204
  %2206 = select i1 %2205, float %2201, float 1.000000e+07
  br label %2222

; <label>:2207                                    ; preds = %2162
  %2208 = fsub fast float 1.000000e+00, %2168
  %2209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %2167, float %2208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2210 = extractvalue %dx.types.ResRet.f32 %2209, 0
  %2211 = extractvalue %dx.types.ResRet.f32 %2209, 1
  %2212 = extractvalue %dx.types.ResRet.f32 %2209, 2
  %2213 = extractvalue %dx.types.ResRet.f32 %2209, 3
  %2214 = fmul fast float %2178, 9.765625e-04
  %2215 = fcmp fast oeq float %2210, 0.000000e+00
  %2216 = fcmp ule float %2090, %2212
  %2217 = fcmp uge float %2090, %2211
  %2218 = or i1 %2217, %2216
  %2219 = or i1 %2215, %2218
  %2220 = zext i1 %2219 to i32
  %2221 = xor i32 %2220, 1
  br label %2222

; <label>:2222                                    ; preds = %2207, %2179
  %2223 = phi float [ %2206, %2179 ], [ %2214, %2207 ]
  %2224 = phi float [ %282, %2179 ], [ %2210, %2207 ]
  %2225 = phi float [ %283, %2179 ], [ %2211, %2207 ]
  %2226 = phi float [ %284, %2179 ], [ %2212, %2207 ]
  %2227 = phi float [ %285, %2179 ], [ %2213, %2207 ]
  %2228 = phi i32 [ 0, %2179 ], [ %2221, %2207 ]
  %2229 = icmp eq i32 %2228, 0
  %2230 = call float @dx.op.binary.f32(i32 35, float %2223, float %593)  ; FMax(a,b)
  %2231 = call float @dx.op.binary.f32(i32 36, float %2163, float %2230)  ; FMin(a,b)
  br i1 %596, label %2403, label %2232, !dx.controlflow.hints !59

; <label>:2232                                    ; preds = %2222
  %2233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.i32 %2233, 1
  %2235 = and i32 %2234, 1
  %2236 = icmp eq i32 %2235, 0
  br i1 %2236, label %2237, label %2394, !dx.controlflow.hints !60

; <label>:2237                                    ; preds = %2232
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 2
  %2240 = extractvalue %dx.types.CBufRet.f32 %2238, 3
  %2241 = fmul fast float %2239, %2086
  %2242 = fmul fast float %2240, %2088
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 0
  %2245 = extractvalue %dx.types.CBufRet.f32 %2243, 1
  %2246 = fadd fast float %2241, %2244
  %2247 = fadd fast float %2242, %2245
  %2248 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2249 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %2248, float %2249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2251 = extractvalue %dx.types.ResRet.f32 %2250, 0
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2254 = fmul fast float %2253, %2251
  %2255 = fsub fast float %2246, %2248
  %2256 = fsub fast float %2247, %2249
  %2257 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2258 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2259 = fmul fast float %2257, %2255
  %2260 = fmul fast float %2258, %2256
  %2261 = fmul fast float %2259, %2259
  %2262 = fmul fast float %2260, %2260
  %2263 = fadd fast float %2261, %2262
  %2264 = call float @dx.op.unary.f32(i32 24, float %2263)  ; Sqrt(value)
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 3
  %2267 = fmul fast float %2266, %2264
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2265, 2
  %2270 = fsub fast float %2269, %2254
  %2271 = fmul fast float %2270, %2268
  %2272 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2273 = fsub fast float %2090, %2254
  %2274 = fsub fast float %2273, %2272
  %2275 = fsub fast float %2274, %2271
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 2
  %2278 = fsub fast float %2275, %2277
  %2279 = fcmp fast olt float %2278, 0.000000e+00
  %2280 = call float @dx.op.unary.f32(i32 6, float %2278)  ; FAbs(value)
  %2281 = extractvalue %dx.types.CBufRet.i32 %2233, 0
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2336, label %2283

; <label>:2283                                    ; preds = %2237
  br label %2284

; <label>:2284                                    ; preds = %2323, %2283
  %2285 = phi i32 [ %2329, %2323 ], [ 1, %2283 ]
  %2286 = phi float [ %2331, %2323 ], [ 0x47EFFFFFE0000000, %2283 ]
  %2287 = phi i32 [ %2332, %2323 ], [ 0, %2283 ]
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.i32 %2290, 1
  %2292 = and i32 %2291, 8
  %2293 = icmp eq i32 %2292, 0
  %2294 = fcmp fast ogt float %2289, %2275
  %2295 = or i1 %2294, %2293
  %2296 = add i32 %2287, 171
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2296)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.CBufRet.f32 %2297, 1
  %2300 = extractvalue %dx.types.CBufRet.f32 %2297, 2
  br i1 %2295, label %2301, label %2307, !dx.controlflow.hints !61

; <label>:2301                                    ; preds = %2284
  %2302 = fsub fast float %2298, %2086
  %2303 = fsub fast float %2299, %2088
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2303, %2303
  %2306 = fadd fast float %2304, %2305
  br label %2323

; <label>:2307                                    ; preds = %2284
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2310 = extractvalue %dx.types.CBufRet.f32 %2288, 2
  %2311 = fmul fast float %2310, %2309
  %2312 = fsub fast float %2311, %2289
  %2313 = fdiv fast float %2300, %2312
  %2314 = fsub fast float %2086, %2298
  %2315 = fsub fast float %2088, %2299
  %2316 = fsub fast float %2275, %2289
  %2317 = fmul fast float %2313, %2316
  %2318 = fmul fast float %2314, %2314
  %2319 = fmul fast float %2315, %2315
  %2320 = fadd fast float %2318, %2319
  %2321 = fmul fast float %2317, %2317
  %2322 = fadd fast float %2320, %2321
  br label %2323

; <label>:2323                                    ; preds = %2307, %2301
  %2324 = phi float [ %2306, %2301 ], [ %2322, %2307 ]
  %2325 = call float @dx.op.unary.f32(i32 24, float %2324)  ; Sqrt(value)
  %2326 = fsub float %2300, %2325
  %2327 = fcmp fast olt float %2326, 0.000000e+00
  %2328 = zext i1 %2327 to i32
  %2329 = and i32 %2328, %2285
  %2330 = call float @dx.op.unary.f32(i32 6, float %2326)  ; FAbs(value)
  %2331 = call float @dx.op.binary.f32(i32 36, float %2286, float %2330)  ; FMin(a,b)
  %2332 = add i32 %2287, 1
  %2333 = extractvalue %dx.types.CBufRet.i32 %2290, 0
  %2334 = icmp ult i32 %2332, %2333
  br i1 %2334, label %2284, label %2335

; <label>:2335                                    ; preds = %2323
  br label %2336

; <label>:2336                                    ; preds = %2335, %2237
  %2337 = phi i32 [ 1, %2237 ], [ %2329, %2335 ]
  %2338 = phi float [ 0x47EFFFFFE0000000, %2237 ], [ %2331, %2335 ]
  br label %2339

; <label>:2339                                    ; preds = %2339, %2336
  %2340 = phi i32 [ %2337, %2336 ], [ %2379, %2339 ]
  %2341 = phi float [ 0x47EFFFFFE0000000, %2336 ], [ %2381, %2339 ]
  %2342 = phi i32 [ 0, %2336 ], [ %2382, %2339 ]
  %2343 = add nuw nsw i32 %2342, 191
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2343)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.CBufRet.f32 %2344, 2
  %2348 = add nuw nsw i32 %2342, 195
  %2349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2348)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2349, 0
  %2351 = extractvalue %dx.types.CBufRet.f32 %2349, 1
  %2352 = extractvalue %dx.types.CBufRet.f32 %2349, 2
  %2353 = fsub fast float %2086, %2345
  %2354 = fsub fast float %2088, %2346
  %2355 = fsub fast float %2275, %2347
  %2356 = call float @dx.op.unary.f32(i32 6, float %2353)  ; FAbs(value)
  %2357 = call float @dx.op.unary.f32(i32 6, float %2354)  ; FAbs(value)
  %2358 = call float @dx.op.unary.f32(i32 6, float %2355)  ; FAbs(value)
  %2359 = fsub fast float %2356, %2350
  %2360 = fsub fast float %2357, %2351
  %2361 = fsub fast float %2358, %2352
  %2362 = call float @dx.op.binary.f32(i32 35, float %2359, float 0.000000e+00)  ; FMax(a,b)
  %2363 = call float @dx.op.binary.f32(i32 35, float %2360, float 0.000000e+00)  ; FMax(a,b)
  %2364 = call float @dx.op.binary.f32(i32 35, float %2361, float 0.000000e+00)  ; FMax(a,b)
  %2365 = fmul fast float %2362, %2362
  %2366 = fmul fast float %2363, %2363
  %2367 = fadd fast float %2366, %2365
  %2368 = fmul fast float %2364, %2364
  %2369 = fadd fast float %2367, %2368
  %2370 = call float @dx.op.unary.f32(i32 24, float %2369)  ; Sqrt(value)
  %2371 = call float @dx.op.binary.f32(i32 35, float %2360, float %2361)  ; FMax(a,b)
  %2372 = call float @dx.op.binary.f32(i32 35, float %2359, float %2371)  ; FMax(a,b)
  %2373 = call float @dx.op.binary.f32(i32 36, float %2372, float 0.000000e+00)  ; FMin(a,b)
  %2374 = fadd fast float %2373, %2370
  %2375 = fsub fast float -0.000000e+00, %2374
  %2376 = fcmp ogt float %2374, -0.000000e+00
  %2377 = icmp ne i32 %2340, 0
  %2378 = and i1 %2377, %2376
  %2379 = zext i1 %2378 to i32
  %2380 = call float @dx.op.unary.f32(i32 6, float %2375)  ; FAbs(value)
  %2381 = call float @dx.op.binary.f32(i32 36, float %2341, float %2380)  ; FMin(a,b)
  %2382 = add nuw nsw i32 %2342, 1
  %2383 = icmp eq i32 %2382, 4
  br i1 %2383, label %2384, label %2339

; <label>:2384                                    ; preds = %2339
  %2385 = call float @dx.op.binary.f32(i32 36, float %2280, float %2381)  ; FMin(a,b)
  %2386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.i32 %2386, 1
  %2388 = and i32 %2387, 2
  %2389 = icmp ne i32 %2388, 0
  %2390 = xor i1 %2378, %2389
  %2391 = call float @dx.op.binary.f32(i32 36, float %2385, float %2338)  ; FMin(a,b)
  %2392 = and i1 %2390, %2279
  %2393 = zext i1 %2392 to i32
  br label %2394

; <label>:2394                                    ; preds = %2384, %2232
  %2395 = phi i32 [ %280, %2232 ], [ %2393, %2384 ]
  %2396 = phi float [ 0.000000e+00, %2232 ], [ %2391, %2384 ]
  %2397 = phi float [ %2090, %2232 ], [ %2275, %2384 ]
  %2398 = icmp ne i32 %2395, 0
  %2399 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %2400 = call float @dx.op.binary.f32(i32 35, float %2396, float %2399)  ; FMax(a,b)
  %2401 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2400)  ; FMin(a,b)
  %2402 = zext i1 %2398 to i32
  br label %2403

; <label>:2403                                    ; preds = %2394, %2222
  %2404 = phi i32 [ %2395, %2394 ], [ %280, %2222 ]
  %2405 = phi float [ %2397, %2394 ], [ %281, %2222 ]
  %2406 = phi float [ %2401, %2394 ], [ 0x47EFFFFFE0000000, %2222 ]
  %2407 = phi i32 [ %2402, %2394 ], [ 0, %2222 ]
  %2408 = icmp eq i32 %2164, 0
  br i1 %2408, label %2482, label %2409, !dx.controlflow.hints !62

; <label>:2409                                    ; preds = %2403
  %2410 = fmul fast float %773, %2082
  %2411 = call float @dx.op.unary.f32(i32 23, float %2410)  ; Log(value)
  %2412 = fmul fast float %2411, 0x3FE62E4300000000
  %2413 = call float @dx.op.binary.f32(i32 35, float %2412, float 1.000000e+00)  ; FMax(a,b)
  %2414 = fmul fast float %2413, %2406
  %2415 = call float @dx.op.binary.f32(i32 36, float %2414, float %2231)  ; FMin(a,b)
  %2416 = call float @dx.op.binary.f32(i32 35, float %2415, float 0.000000e+00)  ; FMax(a,b)
  %2417 = fcmp fast ogt float %2416, 0x3F1A36E2E0000000
  %2418 = fadd fast float %2083, %2086
  %2419 = fadd fast float %2084, %2088
  %2420 = select i1 %2417, float %2418, float %2086
  %2421 = select i1 %2417, float %2419, float %2088
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.CBufRet.f32 %2422, 1
  %2425 = fsub fast float %2420, %2423
  %2426 = fsub fast float %2421, %2424
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.CBufRet.f32 %2427, 1
  %2430 = fmul fast float %2425, %2428
  %2431 = fmul fast float %2426, %2429
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.i32 %2433, 3
  %2435 = icmp eq i32 %2434, 0
  br i1 %2435, label %2442, label %2436, !dx.controlflow.hints !50

; <label>:2436                                    ; preds = %2409
  %2437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %2430, float %2432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2438 = extractvalue %dx.types.ResRet.f32 %2437, 0
  %2439 = extractvalue %dx.types.ResRet.f32 %2437, 1
  %2440 = extractvalue %dx.types.ResRet.f32 %2437, 2
  %2441 = extractvalue %dx.types.ResRet.f32 %2437, 3
  br label %2448

; <label>:2442                                    ; preds = %2409
  %2443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %2430, float %2432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.ResRet.f32 %2443, 2
  %2447 = extractvalue %dx.types.ResRet.f32 %2443, 3
  br label %2448

; <label>:2448                                    ; preds = %2442, %2436
  %2449 = phi float [ %2438, %2436 ], [ %2444, %2442 ]
  %2450 = phi float [ %2439, %2436 ], [ %2445, %2442 ]
  %2451 = phi float [ %2440, %2436 ], [ %2446, %2442 ]
  %2452 = phi float [ %2441, %2436 ], [ %2447, %2442 ]
  %2453 = extractvalue %dx.types.CBufRet.f32 %2427, 3
  %2454 = fmul fast float %2453, %2450
  %2455 = fmul fast float %2454, %2449
  %2456 = fsub fast float %2454, %2455
  %2457 = fcmp fast ole float %2456, 0.000000e+00
  %2458 = extractvalue %dx.types.CBufRet.f32 %2422, 2
  %2459 = fadd fast float %2455, %2458
  %2460 = fmul fast float %2453, %2451
  %2461 = fadd fast float %2460, %2458
  %2462 = fdiv fast float 1.000000e+00, %2456
  %2463 = select i1 %2457, float 1.000000e+06, float %2462
  %2464 = fsub fast float %2090, %2459
  %2465 = fmul fast float %2463, %2464
  %2466 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2468 = fmul fast float %2467, %2466
  %2469 = fsub fast float %2467, %2468
  %2470 = fcmp fast olt float %2090, %2461
  %2471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.f32 %2471, 3
  %2473 = fmul fast float %2472, 3.000000e+00
  %2474 = select i1 %2470, float %2473, float 3.000000e+00
  %2475 = fmul fast float %2469, %2474
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 2
  %2478 = fmul fast float %2082, 0x3FD5555560000000
  %2479 = fmul fast float %2478, %2452
  %2480 = fmul fast float %2479, %2477
  %2481 = fmul fast float %2480, %2475
  br label %2482

; <label>:2482                                    ; preds = %2448, %2403
  %2483 = phi float [ %2481, %2448 ], [ 0.000000e+00, %2403 ]
  br i1 %2229, label %2609, label %2484, !dx.controlflow.hints !64

; <label>:2484                                    ; preds = %2482
  %2485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2486 = extractvalue %dx.types.CBufRet.i32 %2485, 0
  %2487 = icmp ne i32 %2486, 0
  %2488 = zext i1 %2487 to i32
  %2489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2490 = extractvalue %dx.types.CBufRet.i32 %2489, 0
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2525, label %2492

; <label>:2492                                    ; preds = %2484
  br label %2493

; <label>:2493                                    ; preds = %2520, %2492
  %2494 = phi i32 [ %2521, %2520 ], [ 0, %2492 ]
  %2495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2494, i32 0)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.ResRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.ResRet.f32 %2495, 2
  %2499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2494, i32 16)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.ResRet.f32 %2499, 2
  %2503 = fsub fast float %2496, %2500
  %2504 = fsub fast float %2497, %2501
  %2505 = fsub fast float %2498, %2502
  %2506 = fadd fast float %2500, %2496
  %2507 = fadd fast float %2501, %2497
  %2508 = fadd fast float %2502, %2498
  %2509 = fcmp fast olt float %2086, %2503
  %2510 = fcmp fast olt float %2088, %2504
  %2511 = fcmp fast olt float %2090, %2505
  %2512 = or i1 %2509, %2510
  %2513 = or i1 %2511, %2512
  %2514 = fcmp fast ogt float %2086, %2506
  %2515 = fcmp fast ogt float %2088, %2507
  %2516 = fcmp fast ogt float %2090, %2508
  %2517 = or i1 %2514, %2515
  %2518 = or i1 %2516, %2517
  %2519 = or i1 %2513, %2518
  br i1 %2519, label %2520, label %2523, !dx.controlflow.hints !65

; <label>:2520                                    ; preds = %2493
  %2521 = add nuw i32 %2494, 1
  %2522 = icmp ult i32 %2521, %2490
  br i1 %2522, label %2493, label %2523

; <label>:2523                                    ; preds = %2520, %2493
  %2524 = phi i32 [ 255, %2520 ], [ %2494, %2493 ]
  br label %2525

; <label>:2525                                    ; preds = %2523, %2484
  %2526 = phi i32 [ 255, %2484 ], [ %2524, %2523 ]
  %2527 = icmp eq i32 %2526, 255
  br i1 %2527, label %2533, label %2528, !dx.controlflow.hints !66

; <label>:2528                                    ; preds = %2525
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2526, i32 156)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = icmp ne i32 %2530, 0
  %2532 = zext i1 %2531 to i32
  br label %2533

; <label>:2533                                    ; preds = %2528, %2525
  %2534 = phi i32 [ %2532, %2528 ], [ %2488, %2525 ]
  %2535 = icmp eq i32 %2534, 0
  br i1 %2535, label %2536, label %2605, !dx.controlflow.hints !67

; <label>:2536                                    ; preds = %2533
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 3
  %2539 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2542 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  br i1 %2527, label %2553, label %2543, !dx.controlflow.hints !68

; <label>:2543                                    ; preds = %2536
  %2544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2526, i32 60)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.f32 %2544, 0
  %2546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2526, i32 64)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.ResRet.f32 %2546, 1
  %2549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2526, i32 72)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2526, i32 96)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.f32 %2551, 0
  br label %2553

; <label>:2553                                    ; preds = %2543, %2536
  %2554 = phi float [ %2545, %2543 ], [ %504, %2536 ]
  %2555 = phi float [ %2550, %2543 ], [ %502, %2536 ]
  %2556 = phi float [ %2552, %2543 ], [ %2539, %2536 ]
  %2557 = phi float [ %2547, %2543 ], [ %2541, %2536 ]
  %2558 = phi float [ %2548, %2543 ], [ %2542, %2536 ]
  %2559 = call float @dx.op.binary.f32(i32 35, float %2224, float 0.000000e+00)  ; FMax(a,b)
  %2560 = call float @dx.op.binary.f32(i32 36, float %2559, float 1.000000e+00)  ; FMin(a,b)
  %2561 = call float @dx.op.unary.f32(i32 24, float %2560)  ; Sqrt(value)
  %2562 = call float @dx.op.binary.f32(i32 35, float %2227, float 0x3F847AE140000000)  ; FMax(a,b)
  %2563 = fsub fast float %2225, %2090
  %2564 = fsub fast float %2090, %2226
  %2565 = call float @dx.op.binary.f32(i32 36, float %2564, float %2563)  ; FMin(a,b)
  %2566 = fdiv fast float %2565, %2562
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2568 = fsub fast float %2090, %2555
  %2569 = fdiv fast float %2568, %2554
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fsub fast float 1.000000e+00, %2570
  %2572 = fmul float %2567, %2571
  %2573 = fmul float %2572, %2572
  %2574 = fmul fast float %2561, %2538
  %2575 = fmul fast float %2574, %2573
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 2
  %2578 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2579 = fsub fast float %2575, %2578
  %2580 = fsub fast float %2577, %2578
  %2581 = fdiv fast float %2579, %2580
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2583 = fmul fast float %2582, %2556
  %2584 = fcmp fast ogt float %2558, 0.000000e+00
  br i1 %2584, label %2585, label %2605, !dx.controlflow.hints !69

; <label>:2585                                    ; preds = %2553
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 0
  %2588 = extractvalue %dx.types.CBufRet.f32 %2586, 1
  %2589 = extractvalue %dx.types.CBufRet.f32 %2586, 2
  %2590 = fsub fast float %2086, %2587
  %2591 = fsub fast float %2088, %2588
  %2592 = fsub fast float %2090, %2589
  %2593 = fmul fast float %2590, %2590
  %2594 = fmul fast float %2591, %2591
  %2595 = fadd fast float %2593, %2594
  %2596 = fmul fast float %2592, %2592
  %2597 = fadd fast float %2595, %2596
  %2598 = call float @dx.op.unary.f32(i32 24, float %2597)  ; Sqrt(value)
  %2599 = fsub fast float %2598, %2557
  %2600 = fsub fast float %2558, %2557
  %2601 = fdiv fast float %2599, %2600
  %2602 = call float @dx.op.unary.f32(i32 7, float %2601)  ; Saturate(value)
  %2603 = fmul fast float %2602, %2602
  %2604 = fmul fast float %2603, %2583
  br label %2605

; <label>:2605                                    ; preds = %2585, %2553, %2533
  %2606 = phi float [ 0.000000e+00, %2533 ], [ %2604, %2585 ], [ %2583, %2553 ]
  %2607 = fmul fast float %2606, %2082
  %2608 = fadd fast float %2607, %2483
  br label %2609

; <label>:2609                                    ; preds = %2605, %2482
  %2610 = phi float [ %2608, %2605 ], [ %2483, %2482 ]
  %2611 = icmp eq i32 %2407, 0
  br i1 %2611, label %2643, label %2612, !dx.controlflow.hints !70

; <label>:2612                                    ; preds = %2609
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 1
  %2615 = fsub fast float %2082, %2614
  %2616 = extractvalue %dx.types.CBufRet.f32 %2613, 3
  %2617 = fmul fast float %2615, %2616
  %2618 = call float @dx.op.unary.f32(i32 7, float %2617)  ; Saturate(value)
  %2619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2619, 3
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 2
  %2623 = fsub fast float %2622, %2405
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 3
  %2626 = fmul fast float %2623, %2625
  %2627 = call float @dx.op.unary.f32(i32 7, float %2626)  ; Saturate(value)
  %2628 = fmul fast float %2627, %2620
  %2629 = extractvalue %dx.types.CBufRet.f32 %2624, 0
  %2630 = fsub fast float %2082, %2629
  %2631 = extractvalue %dx.types.CBufRet.f32 %2624, 1
  %2632 = fmul fast float %2630, %2631
  %2633 = call float @dx.op.unary.f32(i32 7, float %2632)  ; Saturate(value)
  %2634 = fsub fast float 1.000000e+00, %2618
  %2635 = fmul fast float %2633, %2634
  %2636 = fadd fast float %2635, %2618
  %2637 = extractvalue %dx.types.CBufRet.f32 %2613, 0
  %2638 = fsub fast float %2628, %2637
  %2639 = fmul fast float %2638, %2636
  %2640 = fadd fast float %2639, %2637
  %2641 = fmul fast float %2640, %2082
  %2642 = fadd fast float %2641, %2610
  br label %2643

; <label>:2643                                    ; preds = %2612, %2609
  %2644 = phi float [ %2642, %2612 ], [ %2610, %2609 ]
  %2645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2646 = extractvalue %dx.types.CBufRet.f32 %2645, 3
  %2647 = fmul fast float %2644, 0xBFF7154760000000
  %2648 = fmul fast float %2647, %2646
  %2649 = call float @dx.op.unary.f32(i32 21, float %2648)  ; Exp(value)
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  %2651 = fmul fast float %2650, %2075
  %2652 = fmul fast float %2650, %2076
  %2653 = fmul fast float %2650, %2077
  %2654 = fadd fast float %2651, %2043
  %2655 = fadd fast float %2652, %2044
  %2656 = fadd fast float %2653, %2045
  %2657 = fsub fast float 1.000000e+00, %1112
  %2658 = fmul fast float %1104, %293
  %2659 = fmul fast float %2658, %2657
  %2660 = fmul fast float %2659, %2654
  %2661 = fmul fast float %1105, %293
  %2662 = fmul fast float %2661, %2657
  %2663 = fmul fast float %2662, %2655
  %2664 = fmul fast float %1106, %293
  %2665 = fmul fast float %2664, %2657
  %2666 = fmul fast float %2665, %2656
  %2667 = fadd fast float %2660, %294
  %2668 = fadd fast float %2663, %295
  %2669 = fadd fast float %2666, %296
  %2670 = fdiv fast float %1088, %783
  %2671 = fadd fast float %783, %300
  %2672 = fmul fast float %300, %300
  %2673 = fmul fast float %2671, %2671
  %2674 = fsub fast float %2672, %2673
  %2675 = fmul fast float %2674, -5.000000e-01
  %2676 = fmul fast float %2675, %2670
  %2677 = fadd fast float %2676, %292
  %2678 = fadd fast float %1088, %303
  %2679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.i32 %2679, 0
  %2681 = icmp eq i32 %2680, 0
  br i1 %2681, label %2708, label %2682, !dx.controlflow.hints !86

; <label>:2682                                    ; preds = %2643
  %2683 = icmp ne i32 %308, 0
  %2684 = zext i1 %2683 to i32
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 2
  %2687 = extractvalue %dx.types.CBufRet.f32 %2685, 0
  %2688 = fsub fast float %2671, %2687
  %2689 = fmul fast float %2688, %2686
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2691 = fadd fast float %2690, -5.000000e-01
  %2692 = fmul fast float %2691, 2.000000e+00
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 2
  %2695 = fcmp fast olt float %2692, %2694
  br i1 %2695, label %2696, label %2708, !dx.controlflow.hints !87

; <label>:2696                                    ; preds = %2682
  %2697 = fmul fast float %2692, %2692
  %2698 = fmul fast float %2657, %293
  %2699 = fmul fast float %2692, %2698
  %2700 = fmul fast float %2697, %2698
  %2701 = fmul fast float %2699, %2697
  %2702 = fmul fast float %2697, %2697
  %2703 = fmul fast float %2702, %2698
  %2704 = fadd fast float %2699, %304
  %2705 = fadd fast float %2700, %305
  %2706 = fadd fast float %2701, %306
  %2707 = fadd fast float %2703, %307
  br label %2708

; <label>:2708                                    ; preds = %2696, %2682, %2643
  %2709 = phi float [ %304, %2643 ], [ %2704, %2696 ], [ %304, %2682 ]
  %2710 = phi float [ %305, %2643 ], [ %2705, %2696 ], [ %305, %2682 ]
  %2711 = phi float [ %306, %2643 ], [ %2706, %2696 ], [ %306, %2682 ]
  %2712 = phi float [ %307, %2643 ], [ %2707, %2696 ], [ %307, %2682 ]
  %2713 = phi i32 [ %308, %2643 ], [ 1, %2696 ], [ %2684, %2682 ]
  %2714 = fmul fast float %1112, %293
  br label %2715

; <label>:2715                                    ; preds = %2708, %1107
  %2716 = phi float [ %1108, %1107 ], [ %2671, %2708 ]
  %2717 = phi i32 [ %280, %1107 ], [ %2404, %2708 ]
  %2718 = phi float [ %281, %1107 ], [ %2405, %2708 ]
  %2719 = phi float [ %282, %1107 ], [ %2224, %2708 ]
  %2720 = phi float [ %283, %1107 ], [ %2225, %2708 ]
  %2721 = phi float [ %284, %1107 ], [ %2226, %2708 ]
  %2722 = phi float [ %285, %1107 ], [ %2227, %2708 ]
  %2723 = phi float [ %292, %1107 ], [ %2677, %2708 ]
  %2724 = phi float [ %293, %1107 ], [ %2714, %2708 ]
  %2725 = phi float [ %294, %1107 ], [ %2667, %2708 ]
  %2726 = phi float [ %295, %1107 ], [ %2668, %2708 ]
  %2727 = phi float [ %296, %1107 ], [ %2669, %2708 ]
  %2728 = phi float [ %303, %1107 ], [ %2678, %2708 ]
  %2729 = phi float [ %304, %1107 ], [ %2709, %2708 ]
  %2730 = phi float [ %305, %1107 ], [ %2710, %2708 ]
  %2731 = phi float [ %306, %1107 ], [ %2711, %2708 ]
  %2732 = phi float [ %307, %1107 ], [ %2712, %2708 ]
  %2733 = phi i32 [ %308, %1107 ], [ %2713, %2708 ]
  %2734 = fmul fast float %783, %114
  %2735 = fmul fast float %783, %115
  %2736 = fmul fast float %783, %116
  %2737 = fadd fast float %2734, %297
  %2738 = fadd fast float %2735, %298
  %2739 = fadd fast float %2736, %299
  %2740 = fcmp fast olt float %2716, %256
  %2741 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %2742 = fcmp fast olt float %2741, %2724
  %2743 = and i1 %2740, %2742
  br i1 %2743, label %279, label %2744

; <label>:2744                                    ; preds = %2715
  br label %2745

; <label>:2745                                    ; preds = %2744, %249
  %2746 = phi float [ 0.000000e+00, %249 ], [ %2723, %2744 ]
  %2747 = phi float [ 1.000000e+00, %249 ], [ %2724, %2744 ]
  %2748 = phi float [ 0.000000e+00, %249 ], [ %2725, %2744 ]
  %2749 = phi float [ 0.000000e+00, %249 ], [ %2726, %2744 ]
  %2750 = phi float [ 0.000000e+00, %249 ], [ %2727, %2744 ]
  %2751 = phi float [ 0.000000e+00, %249 ], [ %2728, %2744 ]
  %2752 = phi float [ 0.000000e+00, %249 ], [ %2729, %2744 ]
  %2753 = phi float [ 0.000000e+00, %249 ], [ %2730, %2744 ]
  %2754 = phi float [ 0.000000e+00, %249 ], [ %2731, %2744 ]
  %2755 = phi float [ 0.000000e+00, %249 ], [ %2732, %2744 ]
  %2756 = phi i32 [ 0, %249 ], [ %2733, %2744 ]
  %2757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.i32 %2757, 0
  %2759 = icmp eq i32 %2758, 0
  br i1 %2759, label %2801, label %2760, !dx.controlflow.hints !88

; <label>:2760                                    ; preds = %2745
  %2761 = icmp eq i32 %2756, 0
  br i1 %2761, label %2800, label %2762, !dx.controlflow.hints !89

; <label>:2762                                    ; preds = %2760
  %2763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.i32 %2763, 2
  %2765 = icmp eq i32 %2764, 0
  br i1 %2765, label %2772, label %2766, !dx.controlflow.hints !90

; <label>:2766                                    ; preds = %2762
  %2767 = fsub fast float 1.000000e+00, %2747
  %2768 = fdiv fast float %2752, %2767
  %2769 = fdiv fast float %2753, %2767
  %2770 = fdiv fast float %2754, %2767
  %2771 = fdiv fast float %2755, %2767
  br label %2777

; <label>:2772                                    ; preds = %2762
  %2773 = fadd fast float %2752, %2747
  %2774 = fadd fast float %2753, %2747
  %2775 = fadd fast float %2754, %2747
  %2776 = fadd fast float %2755, %2747
  br label %2777

; <label>:2777                                    ; preds = %2772, %2766
  %2778 = phi float [ %2768, %2766 ], [ %2773, %2772 ]
  %2779 = phi float [ %2769, %2766 ], [ %2774, %2772 ]
  %2780 = phi float [ %2770, %2766 ], [ %2775, %2772 ]
  %2781 = phi float [ %2771, %2766 ], [ %2776, %2772 ]
  %2782 = call float @dx.op.binary.f32(i32 35, float %2778, float -1.000000e+00)  ; FMax(a,b)
  %2783 = call float @dx.op.binary.f32(i32 35, float %2779, float -1.000000e+00)  ; FMax(a,b)
  %2784 = call float @dx.op.binary.f32(i32 35, float %2780, float -1.000000e+00)  ; FMax(a,b)
  %2785 = call float @dx.op.binary.f32(i32 35, float %2781, float -1.000000e+00)  ; FMax(a,b)
  %2786 = call float @dx.op.binary.f32(i32 36, float %2782, float 1.000000e+00)  ; FMin(a,b)
  %2787 = call float @dx.op.binary.f32(i32 36, float %2783, float 1.000000e+00)  ; FMin(a,b)
  %2788 = call float @dx.op.binary.f32(i32 36, float %2784, float 1.000000e+00)  ; FMin(a,b)
  %2789 = call float @dx.op.binary.f32(i32 36, float %2785, float 1.000000e+00)  ; FMin(a,b)
  %2790 = fmul fast float %2786, 1.500000e+00
  %2791 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2788, float %2790)  ; FMad(a,b,c)
  %2792 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2787, float 0.000000e+00)  ; FMad(a,b,c)
  %2793 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2789, float %2792)  ; FMad(a,b,c)
  %2794 = fmul fast float %2786, 0x3FEBB67AE0000000
  %2795 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2788, float %2794)  ; FMad(a,b,c)
  %2796 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2787, float 0.000000e+00)  ; FMad(a,b,c)
  %2797 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2789, float %2796)  ; FMad(a,b,c)
  %2798 = fadd fast float %2791, 5.000000e-01
  %2799 = fadd fast float %2795, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 0, float %2798, float %2793, float %2799, float %2797, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2801

; <label>:2800                                    ; preds = %2760
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2801

; <label>:2801                                    ; preds = %2800, %2777, %2745
  %2802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2802, 2
  %2804 = fsub fast float %2747, %2803
  %2805 = fdiv fast float %2804, %2803
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2807 = fmul fast float %2806, 2.000000e+00
  %2808 = fsub fast float 3.000000e+00, %2807
  %2809 = fmul fast float %2806, %2806
  %2810 = fmul fast float %2809, %2747
  %2811 = fmul fast float %2810, %2808
  %2812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2812, 0
  %2814 = extractvalue %dx.types.CBufRet.f32 %2812, 1
  %2815 = extractvalue %dx.types.CBufRet.f32 %2812, 2
  %2816 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %2813, float %2814, float %2815)  ; Dot3(ax,ay,az,bx,by,bz)
  %2817 = fmul fast float %2816, %2746
  %2818 = fcmp fast ogt float %2751, 0.000000e+00
  %2819 = fdiv fast float 1.000000e+00, %2751
  %2820 = fmul fast float %2817, %2819
  %2821 = select i1 %2818, float %2820, float %125
  %2822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2823 = extractvalue %dx.types.CBufRet.f32 %2822, 0
  %2824 = extractvalue %dx.types.CBufRet.f32 %2822, 1
  %2825 = extractvalue %dx.types.CBufRet.f32 %2822, 2
  %2826 = fmul fast float %2823, %78
  %2827 = fmul fast float %2824, %78
  %2828 = fmul fast float %2825, %78
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 0
  %2831 = extractvalue %dx.types.CBufRet.f32 %2829, 1
  %2832 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2833 = fmul fast float %2830, %79
  %2834 = fmul fast float %2831, %79
  %2835 = fmul fast float %2832, %79
  %2836 = fadd fast float %2833, %2826
  %2837 = fadd fast float %2834, %2827
  %2838 = fadd fast float %2835, %2828
  %2839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2840 = extractvalue %dx.types.CBufRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.CBufRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.CBufRet.f32 %2839, 2
  %2843 = fadd fast float %2836, %2840
  %2844 = fadd fast float %2837, %2841
  %2845 = fadd fast float %2838, %2842
  %2846 = fmul fast float %2843, %2821
  %2847 = fmul fast float %2844, %2821
  %2848 = fmul fast float %2845, %2821
  %2849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2850 = extractvalue %dx.types.CBufRet.f32 %2849, 0
  %2851 = extractvalue %dx.types.CBufRet.f32 %2849, 1
  %2852 = extractvalue %dx.types.CBufRet.f32 %2849, 2
  %2853 = extractvalue %dx.types.CBufRet.f32 %2849, 3
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2857 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2858 = extractvalue %dx.types.CBufRet.f32 %2854, 3
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 0
  %2861 = extractvalue %dx.types.CBufRet.f32 %2859, 1
  %2862 = extractvalue %dx.types.CBufRet.f32 %2859, 2
  %2863 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.CBufRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %2868 = extractvalue %dx.types.CBufRet.f32 %2864, 3
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 3
  %2871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2872 = extractvalue %dx.types.CBufRet.f32 %2871, 3
  %2873 = extractvalue %dx.types.CBufRet.f32 %2871, 0
  %2874 = extractvalue %dx.types.CBufRet.f32 %2871, 1
  %2875 = extractvalue %dx.types.CBufRet.f32 %2871, 2
  %2876 = fcmp fast olt float %2875, -5.000000e-01
  %2877 = call float @dx.op.dot3.f32(i32 55, float %2846, float %2847, float %2848, float %2846, float %2847, float %2848)  ; Dot3(ax,ay,az,bx,by,bz)
  %2878 = call float @dx.op.unary.f32(i32 25, float %2877)  ; Rsqrt(value)
  %2879 = fmul fast float %2878, %2877
  %2880 = fmul fast float %2878, %2846
  %2881 = fmul fast float %2878, %2847
  %2882 = fmul fast float %2878, %2848
  %2883 = fadd fast float %2879, %2853
  %2884 = call float @dx.op.dot3.f32(i32 55, float %2880, float %2881, float %2882, float %2850, float %2851, float %2852)  ; Dot3(ax,ay,az,bx,by,bz)
  %2885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2886 = extractvalue %dx.types.CBufRet.i32 %2885, 1
  %2887 = and i32 %2886, 1
  %2888 = icmp ne i32 %2887, 0
  %2889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2889, 2
  %2891 = fcmp fast ogt float %2890, 0.000000e+00
  %2892 = and i1 %2888, %2891
  br i1 %2892, label %2893, label %3299, !dx.controlflow.hints !91

; <label>:2893                                    ; preds = %2801
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 3
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 2
  %2898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2898, 2
  %2900 = fsub fast float %2897, %2899
  %2901 = and i32 %2886, 2
  %2902 = extractvalue %dx.types.CBufRet.i32 %2885, 0
  %2903 = call i32 @dx.op.binary.i32(i32 40, i32 %2902, i32 3)  ; UMin(a,b)
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.CBufRet.f32 %2898, 0
  %2908 = extractvalue %dx.types.CBufRet.f32 %2898, 1
  %2909 = fsub fast float %2905, %2907
  %2910 = fsub fast float %2906, %2908
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 0
  %2913 = fcmp fast ogt float %2912, 0.000000e+00
  %2914 = fsub fast float -0.000000e+00, %2909
  %2915 = fsub fast float -0.000000e+00, %2910
  %2916 = call float @dx.op.dot2.f32(i32 54, float %2880, float %2881, float %2880, float %2881)  ; Dot2(ax,ay,bx,by)
  %2917 = call float @dx.op.dot2.f32(i32 54, float %2880, float %2881, float %2914, float %2915)  ; Dot2(ax,ay,bx,by)
  %2918 = fmul fast float %2917, 2.000000e+00
  %2919 = call float @dx.op.dot2.f32(i32 54, float %2914, float %2915, float %2914, float %2915)  ; Dot2(ax,ay,bx,by)
  %2920 = fmul fast float %2912, %2912
  %2921 = fsub fast float %2919, %2920
  %2922 = fmul fast float %2918, %2918
  %2923 = fmul fast float %2916, 4.000000e+00
  %2924 = fmul fast float %2923, %2921
  %2925 = fsub fast float %2922, %2924
  %2926 = fcmp fast ogt float %2925, 0.000000e+00
  br i1 %2926, label %2927, label %2942, !dx.controlflow.hints !92

; <label>:2927                                    ; preds = %2893
  %2928 = fcmp fast ogt float %2918, 0.000000e+00
  %2929 = call float @dx.op.unary.f32(i32 24, float %2925)  ; Sqrt(value)
  %2930 = fsub fast float -0.000000e+00, %2929
  %2931 = select i1 %2928, float %2929, float %2930
  %2932 = fadd fast float %2931, %2918
  %2933 = fmul float %2932, -5.000000e-01
  %2934 = fdiv fast float %2933, %2916
  %2935 = call float @dx.op.binary.f32(i32 35, float %2934, float 0.000000e+00)  ; FMax(a,b)
  %2936 = call float @dx.op.binary.f32(i32 36, float %2879, float %2935)  ; FMin(a,b)
  %2937 = fdiv fast float %2921, %2933
  %2938 = call float @dx.op.binary.f32(i32 35, float %2937, float 0.000000e+00)  ; FMax(a,b)
  %2939 = call float @dx.op.binary.f32(i32 36, float %2879, float %2938)  ; FMin(a,b)
  %2940 = call float @dx.op.binary.f32(i32 36, float %2936, float %2939)  ; FMin(a,b)
  %2941 = call float @dx.op.binary.f32(i32 35, float %2936, float %2939)  ; FMax(a,b)
  br label %2942

; <label>:2942                                    ; preds = %2927, %2893
  %2943 = phi float [ %2941, %2927 ], [ -1.000000e+00, %2893 ]
  %2944 = phi float [ %2940, %2927 ], [ -1.000000e+00, %2893 ]
  %2945 = phi i1 [ true, %2927 ], [ false, %2893 ]
  %2946 = and i1 %2913, %2945
  br i1 %2946, label %2947, label %2949, !dx.controlflow.hints !93

; <label>:2947                                    ; preds = %2942
  %2948 = fcmp fast oeq float %2944, %2943
  br i1 %2948, label %3252, label %2950, !dx.controlflow.hints !94

; <label>:2949                                    ; preds = %2942
  br i1 %2913, label %3252, label %2950, !dx.controlflow.hints !95

; <label>:2950                                    ; preds = %2949, %2947
  %2951 = phi float [ %2879, %2949 ], [ %2943, %2947 ]
  %2952 = phi float [ 0.000000e+00, %2949 ], [ %2944, %2947 ]
  %2953 = icmp ne i32 %2901, 0
  %2954 = fmul fast float %2951, %2882
  %2955 = fadd fast float %2954, %2895
  %2956 = fmul fast float %2955, %2951
  %2957 = select i1 %2953, float 0.000000e+00, float %2956
  %2958 = fcmp fast oeq float %2882, 0.000000e+00
  %2959 = fdiv fast float %2900, %2882
  %2960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2959)  ; FMax(a,b)
  %2961 = select i1 %2958, float %2951, float %2960
  %2962 = call float @dx.op.binary.f32(i32 36, float %2951, float %2961)  ; FMin(a,b)
  %2963 = fcmp fast ogt float %2882, 0.000000e+00
  %2964 = fcmp fast olt float %2900, 0.000000e+00
  br i1 %2963, label %2965, label %3022, !dx.controlflow.hints !96

; <label>:2965                                    ; preds = %2950
  %2966 = icmp eq i32 %2901, 0
  br i1 %2964, label %2967, label %3011, !dx.controlflow.hints !97

; <label>:2967                                    ; preds = %2965
  %2968 = select i1 %2966, float %2951, float 0.000000e+00
  %2969 = fsub fast float -0.000000e+00, %2968
  %2970 = call float @dx.op.unary.f32(i32 6, float %2969)  ; FAbs(value)
  %2971 = fmul fast float %2968, %2882
  %2972 = fadd fast float %2971, %2895
  %2973 = fmul fast float %2970, %2972
  %2974 = fsub fast float %2957, %2973
  %2975 = fsub fast float %2951, %2970
  %2976 = select i1 %2966, float %2975, float 0.000000e+00
  %2977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2978 = extractvalue %dx.types.CBufRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.CBufRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.CBufRet.f32 %2977, 2
  %2981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.CBufRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.CBufRet.f32 %2981, 2
  %2985 = extractvalue %dx.types.CBufRet.f32 %2981, 3
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 3
  %2988 = call float @dx.op.binary.f32(i32 36, float %2974, float %2987)  ; FMin(a,b)
  %2989 = fmul fast float %2985, %2976
  %2990 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2991 = fsub fast float %2982, %2978
  %2992 = fsub fast float %2983, %2979
  %2993 = fsub fast float %2984, %2980
  %2994 = fmul fast float %2990, %2991
  %2995 = fmul fast float %2990, %2992
  %2996 = fmul fast float %2990, %2993
  %2997 = fadd fast float %2994, %2978
  %2998 = fadd fast float %2995, %2979
  %2999 = fadd fast float %2996, %2980
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 0
  %3002 = extractvalue %dx.types.CBufRet.f32 %3000, 1
  %3003 = fadd fast float %3002, %3001
  %3004 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3000, 2
  %3006 = extractvalue %dx.types.CBufRet.f32 %3000, 3
  %3007 = fadd fast float %3006, %3005
  %3008 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  %3009 = fmul fast float %3004, %2988
  %3010 = fmul fast float %3009, %3008
  br label %3252

; <label>:3011                                    ; preds = %2965
  br i1 %2966, label %3012, label %3033, !dx.controlflow.hints !98

; <label>:3012                                    ; preds = %3011
  %3013 = call float @dx.op.binary.f32(i32 36, float %2962, float %2952)  ; FMin(a,b)
  %3014 = fsub fast float %2962, %3013
  %3015 = fsub fast float %3014, %2951
  %3016 = call float @dx.op.unary.f32(i32 6, float %3015)  ; FAbs(value)
  %3017 = fadd fast float %3014, %2951
  %3018 = fmul fast float %3017, %2882
  %3019 = fadd fast float %3018, %2895
  %3020 = fmul fast float %3019, %3016
  %3021 = fsub fast float %2957, %3020
  br label %3033

; <label>:3022                                    ; preds = %2950
  br i1 %2964, label %3023, label %3033, !dx.controlflow.hints !99

; <label>:3023                                    ; preds = %3022
  %3024 = call float @dx.op.binary.f32(i32 35, float %2952, float %2962)  ; FMax(a,b)
  %3025 = icmp eq i32 %2901, 0
  %3026 = select i1 %3025, float %2962, float 0.000000e+00
  %3027 = fsub fast float -0.000000e+00, %3026
  %3028 = call float @dx.op.unary.f32(i32 6, float %3027)  ; FAbs(value)
  %3029 = fmul fast float %3026, %2882
  %3030 = fadd fast float %3029, %2895
  %3031 = fmul fast float %3028, %3030
  %3032 = fsub fast float %2957, %3031
  br label %3033

; <label>:3033                                    ; preds = %3023, %3022, %3012, %3011
  %3034 = phi float [ %2952, %3011 ], [ %2952, %3012 ], [ %3024, %3023 ], [ %2952, %3022 ]
  %3035 = phi float [ 0.000000e+00, %3011 ], [ %3016, %3012 ], [ %3028, %3023 ], [ 0.000000e+00, %3022 ]
  %3036 = phi float [ %2957, %3011 ], [ %3021, %3012 ], [ %3032, %3023 ], [ %2957, %3022 ]
  %3037 = phi float [ %2962, %3011 ], [ %2962, %3012 ], [ %2951, %3023 ], [ %2951, %3022 ]
  %3038 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %3038, align 4, !tbaa !100, !noalias !104
  %3039 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %3039, align 4, !tbaa !100, !noalias !104
  %3040 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %3040, align 4, !tbaa !100, !noalias !104
  %3041 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %3041, align 4, !tbaa !100, !noalias !104
  %3042 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %3042, align 4, !tbaa !100, !noalias !104
  %3043 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %3043, align 4, !tbaa !100, !noalias !104
  %3044 = icmp sgt i32 %2903, 0
  br i1 %3044, label %3045, label %3106

; <label>:3045                                    ; preds = %3033
  br label %3046

; <label>:3046                                    ; preds = %3095, %3045
  %3047 = phi i32 [ %3096, %3095 ], [ 0, %3045 ]
  %3048 = phi i32 [ %3097, %3095 ], [ 0, %3045 ]
  %3049 = add nuw i32 %3048, 171
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %3049)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.CBufRet.f32 %3050, 1
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 0
  %3055 = extractvalue %dx.types.CBufRet.f32 %3053, 1
  %3056 = fsub fast float %3051, %3054
  %3057 = fsub fast float %3052, %3055
  %3058 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %3059 = fsub fast float -0.000000e+00, %3056
  %3060 = fsub fast float -0.000000e+00, %3057
  %3061 = call float @dx.op.dot2.f32(i32 54, float %2880, float %2881, float %3059, float %3060)  ; Dot2(ax,ay,bx,by)
  %3062 = fmul fast float %3061, 2.000000e+00
  %3063 = call float @dx.op.dot2.f32(i32 54, float %3059, float %3060, float %3059, float %3060)  ; Dot2(ax,ay,bx,by)
  %3064 = fmul fast float %3058, %3058
  %3065 = fsub fast float %3063, %3064
  %3066 = fmul fast float %3062, %3062
  %3067 = fmul fast float %2923, %3065
  %3068 = fsub fast float %3066, %3067
  %3069 = fcmp fast ogt float %3068, 0.000000e+00
  br i1 %3069, label %3070, label %3085, !dx.controlflow.hints !92

; <label>:3070                                    ; preds = %3046
  %3071 = fcmp fast ogt float %3062, 0.000000e+00
  %3072 = call float @dx.op.unary.f32(i32 24, float %3068)  ; Sqrt(value)
  %3073 = fsub fast float -0.000000e+00, %3072
  %3074 = select i1 %3071, float %3072, float %3073
  %3075 = fadd fast float %3074, %3062
  %3076 = fmul float %3075, -5.000000e-01
  %3077 = fdiv fast float %3076, %2916
  %3078 = call float @dx.op.binary.f32(i32 35, float %3077, float 0.000000e+00)  ; FMax(a,b)
  %3079 = call float @dx.op.binary.f32(i32 36, float %2951, float %3078)  ; FMin(a,b)
  %3080 = fdiv fast float %3065, %3076
  %3081 = call float @dx.op.binary.f32(i32 35, float %3080, float 0.000000e+00)  ; FMax(a,b)
  %3082 = call float @dx.op.binary.f32(i32 36, float %2951, float %3081)  ; FMin(a,b)
  %3083 = call float @dx.op.binary.f32(i32 36, float %3079, float %3082)  ; FMin(a,b)
  %3084 = call float @dx.op.binary.f32(i32 35, float %3079, float %3082)  ; FMax(a,b)
  br label %3085

; <label>:3085                                    ; preds = %3070, %3046
  %3086 = phi float [ %3084, %3070 ], [ -1.000000e+00, %3046 ]
  %3087 = phi float [ %3083, %3070 ], [ -1.000000e+00, %3046 ]
  %3088 = phi i1 [ true, %3070 ], [ false, %3046 ]
  br i1 %3088, label %3089, label %3095, !dx.controlflow.hints !115

; <label>:3089                                    ; preds = %3085
  %3090 = call float @dx.op.binary.f32(i32 35, float %3034, float %3087)  ; FMax(a,b)
  %3091 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %3048
  store float %3090, float* %3091, align 4, !tbaa !100, !noalias !104
  %3092 = call float @dx.op.binary.f32(i32 35, float %3034, float %3086)  ; FMax(a,b)
  %3093 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %3048
  store float %3092, float* %3093, align 4, !tbaa !100, !noalias !104
  %3094 = add nsw i32 %3047, 1
  br label %3095

; <label>:3095                                    ; preds = %3089, %3085
  %3096 = phi i32 [ %3094, %3089 ], [ %3047, %3085 ]
  %3097 = add nuw nsw i32 %3048, 1
  %3098 = icmp eq i32 %3097, %2903
  br i1 %3098, label %3099, label %3046

; <label>:3099                                    ; preds = %3095
  %3100 = load float, float* %3040, align 4, !tbaa !100, !alias.scope !116, !noalias !119
  %3101 = load float, float* %3039, align 4, !tbaa !100, !alias.scope !122, !noalias !123
  %3102 = load float, float* %3038, align 4, !tbaa !100, !alias.scope !124, !noalias !125
  %3103 = load float, float* %3043, align 4, !tbaa !100, !alias.scope !126, !noalias !129
  %3104 = load float, float* %3042, align 4, !tbaa !100, !alias.scope !132, !noalias !133
  %3105 = load float, float* %3041, align 4, !tbaa !100, !alias.scope !134, !noalias !135
  br label %3106

; <label>:3106                                    ; preds = %3099, %3033
  %3107 = phi float [ -1.000000e+00, %3033 ], [ %3105, %3099 ]
  %3108 = phi float [ -1.000000e+00, %3033 ], [ %3104, %3099 ]
  %3109 = phi float [ -1.000000e+00, %3033 ], [ %3103, %3099 ]
  %3110 = phi float [ -1.000000e+00, %3033 ], [ %3102, %3099 ]
  %3111 = phi float [ -1.000000e+00, %3033 ], [ %3101, %3099 ]
  %3112 = phi float [ -1.000000e+00, %3033 ], [ %3100, %3099 ]
  %3113 = phi i32 [ 0, %3033 ], [ %3096, %3099 ]
  %3114 = call float @dx.op.binary.f32(i32 36, float %3111, float %3112)  ; FMin(a,b)
  %3115 = call float @dx.op.binary.f32(i32 36, float %3110, float %3114)  ; FMin(a,b)
  %3116 = call float @dx.op.binary.f32(i32 35, float %3110, float %3111)  ; FMax(a,b)
  %3117 = call float @dx.op.binary.f32(i32 36, float %3116, float %3112)  ; FMin(a,b)
  %3118 = call float @dx.op.binary.f32(i32 36, float %3110, float %3111)  ; FMin(a,b)
  %3119 = call float @dx.op.binary.f32(i32 35, float %3118, float %3117)  ; FMax(a,b)
  %3120 = call float @dx.op.binary.f32(i32 35, float %3111, float %3112)  ; FMax(a,b)
  %3121 = call float @dx.op.binary.f32(i32 35, float %3110, float %3120)  ; FMax(a,b)
  store float %3115, float* %3038, align 4, !tbaa !100, !alias.scope !124, !noalias !125
  store float %3119, float* %3039, align 4, !tbaa !100, !alias.scope !122, !noalias !123
  store float %3121, float* %3040, align 4, !tbaa !100, !alias.scope !116, !noalias !119
  %3122 = call float @dx.op.binary.f32(i32 36, float %3108, float %3109)  ; FMin(a,b)
  %3123 = call float @dx.op.binary.f32(i32 36, float %3107, float %3122)  ; FMin(a,b)
  %3124 = call float @dx.op.binary.f32(i32 35, float %3107, float %3108)  ; FMax(a,b)
  %3125 = call float @dx.op.binary.f32(i32 36, float %3124, float %3109)  ; FMin(a,b)
  %3126 = call float @dx.op.binary.f32(i32 36, float %3107, float %3108)  ; FMin(a,b)
  %3127 = call float @dx.op.binary.f32(i32 35, float %3126, float %3125)  ; FMax(a,b)
  %3128 = call float @dx.op.binary.f32(i32 35, float %3108, float %3109)  ; FMax(a,b)
  %3129 = call float @dx.op.binary.f32(i32 35, float %3107, float %3128)  ; FMax(a,b)
  store float %3123, float* %3041, align 4, !tbaa !100, !alias.scope !134, !noalias !135
  store float %3127, float* %3042, align 4, !tbaa !100, !alias.scope !132, !noalias !133
  store float %3129, float* %3043, align 4, !tbaa !100, !alias.scope !126, !noalias !129
  %3130 = sub nsw i32 3, %3113
  %3131 = icmp sgt i32 %3130, 2
  br i1 %3131, label %3132, label %3170, !dx.controlflow.hints !136

; <label>:3132                                    ; preds = %3106
  %3133 = icmp eq i32 %2901, 0
  %3134 = fsub fast float %2951, %3035
  %3135 = select i1 %3133, float %3134, float %3035
  %3136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.f32 %3136, 0
  %3138 = extractvalue %dx.types.CBufRet.f32 %3136, 1
  %3139 = extractvalue %dx.types.CBufRet.f32 %3136, 2
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.CBufRet.f32 %3140, 1
  %3143 = extractvalue %dx.types.CBufRet.f32 %3140, 2
  %3144 = extractvalue %dx.types.CBufRet.f32 %3140, 3
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 3
  %3147 = call float @dx.op.binary.f32(i32 36, float %3036, float %3146)  ; FMin(a,b)
  %3148 = fmul fast float %3144, %3135
  %3149 = call float @dx.op.unary.f32(i32 7, float %3148)  ; Saturate(value)
  %3150 = fsub fast float %3141, %3137
  %3151 = fsub fast float %3142, %3138
  %3152 = fsub fast float %3143, %3139
  %3153 = fmul fast float %3149, %3150
  %3154 = fmul fast float %3149, %3151
  %3155 = fmul fast float %3149, %3152
  %3156 = fadd fast float %3153, %3137
  %3157 = fadd fast float %3154, %3138
  %3158 = fadd fast float %3155, %3139
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 0
  %3161 = extractvalue %dx.types.CBufRet.f32 %3159, 1
  %3162 = fadd fast float %3161, %3160
  %3163 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3164 = extractvalue %dx.types.CBufRet.f32 %3159, 2
  %3165 = extractvalue %dx.types.CBufRet.f32 %3159, 3
  %3166 = fadd fast float %3165, %3164
  %3167 = call float @dx.op.unary.f32(i32 7, float %3166)  ; Saturate(value)
  %3168 = fmul fast float %3163, %3147
  %3169 = fmul fast float %3168, %3167
  br label %3252

; <label>:3170                                    ; preds = %3106
  %3171 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %3130
  %3172 = load float, float* %3171, align 4, !tbaa !100, !noalias !104
  %3173 = fcmp fast olt float %3172, %3037
  %3174 = icmp sgt i32 %3113, 0
  %3175 = and i1 %3174, %3173
  br i1 %3175, label %3176, label %3213

; <label>:3176                                    ; preds = %3170
  br label %3177

; <label>:3177                                    ; preds = %3206, %3176
  %3178 = phi float [ %3207, %3206 ], [ %3035, %3176 ]
  %3179 = phi float [ %3208, %3206 ], [ %3036, %3176 ]
  %3180 = phi float [ %3188, %3206 ], [ %3172, %3176 ]
  %3181 = phi i32 [ %3185, %3206 ], [ %3130, %3176 ]
  %3182 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %3181
  %3183 = load float, float* %3182, align 4, !tbaa !100, !noalias !104
  %3184 = icmp slt i32 %3181, 2
  %3185 = add nsw i32 %3181, 1
  %3186 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %3185
  %3187 = load float, float* %3186, align 4, !tbaa !100, !noalias !104
  %3188 = select i1 %3184, float %3187, float %2951
  %3189 = call float @dx.op.binary.f32(i32 36, float %3188, float %3183)  ; FMin(a,b)
  %3190 = call float @dx.op.binary.f32(i32 36, float %3037, float %3189)  ; FMin(a,b)
  %3191 = icmp eq i32 %2901, 0
  %3192 = fadd fast float %3190, %3180
  %3193 = fmul fast float %3192, %2882
  %3194 = fadd fast float %3193, %2895
  br i1 %3191, label %3200, label %3195, !dx.controlflow.hints !137

; <label>:3195                                    ; preds = %3177
  %3196 = fsub fast float %3190, %3180
  %3197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3196)  ; FMax(a,b)
  %3198 = fmul fast float %3197, %3194
  %3199 = fadd fast float %3198, %3179
  br label %3206

; <label>:3200                                    ; preds = %3177
  %3201 = fsub fast float %3180, %3190
  %3202 = call float @dx.op.unary.f32(i32 6, float %3201)  ; FAbs(value)
  %3203 = fadd fast float %3202, %3178
  %3204 = fmul fast float %3202, %3194
  %3205 = fsub fast float %3179, %3204
  br label %3206

; <label>:3206                                    ; preds = %3200, %3195
  %3207 = phi float [ %3197, %3195 ], [ %3203, %3200 ]
  %3208 = phi float [ %3199, %3195 ], [ %3205, %3200 ]
  %3209 = fcmp fast olt float %3188, %3037
  %3210 = icmp slt i32 %3185, 3
  %3211 = and i1 %3210, %3209
  br i1 %3211, label %3177, label %3212

; <label>:3212                                    ; preds = %3206
  br label %3213

; <label>:3213                                    ; preds = %3212, %3170
  %3214 = phi float [ %3035, %3170 ], [ %3207, %3212 ]
  %3215 = phi float [ %3036, %3170 ], [ %3208, %3212 ]
  %3216 = fsub fast float %2951, %3214
  %3217 = select i1 %2953, float %3214, float %3216
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3221 = extractvalue %dx.types.CBufRet.f32 %3218, 2
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3225 = extractvalue %dx.types.CBufRet.f32 %3222, 2
  %3226 = extractvalue %dx.types.CBufRet.f32 %3222, 3
  %3227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3228 = extractvalue %dx.types.CBufRet.f32 %3227, 3
  %3229 = call float @dx.op.binary.f32(i32 36, float %3215, float %3228)  ; FMin(a,b)
  %3230 = fmul fast float %3226, %3217
  %3231 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3232 = fsub fast float %3223, %3219
  %3233 = fsub fast float %3224, %3220
  %3234 = fsub fast float %3225, %3221
  %3235 = fmul fast float %3231, %3232
  %3236 = fmul fast float %3231, %3233
  %3237 = fmul fast float %3231, %3234
  %3238 = fadd fast float %3235, %3219
  %3239 = fadd fast float %3236, %3220
  %3240 = fadd fast float %3237, %3221
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  %3243 = extractvalue %dx.types.CBufRet.f32 %3241, 1
  %3244 = fadd fast float %3243, %3242
  %3245 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3246 = extractvalue %dx.types.CBufRet.f32 %3241, 2
  %3247 = extractvalue %dx.types.CBufRet.f32 %3241, 3
  %3248 = fadd fast float %3247, %3246
  %3249 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3250 = fmul fast float %3245, %3229
  %3251 = fmul fast float %3250, %3249
  br label %3252

; <label>:3252                                    ; preds = %3213, %3132, %2967, %2949, %2947
  %3253 = phi float [ %2976, %2967 ], [ %3135, %3132 ], [ %3217, %3213 ], [ 0.000000e+00, %2947 ], [ 0.000000e+00, %2949 ]
  %3254 = phi float [ %3010, %2967 ], [ %3169, %3132 ], [ %3251, %3213 ], [ 0.000000e+00, %2947 ], [ 0.000000e+00, %2949 ]
  %3255 = phi float [ %2997, %2967 ], [ %3156, %3132 ], [ %3238, %3213 ], [ 0.000000e+00, %2947 ], [ 0.000000e+00, %2949 ]
  %3256 = phi float [ %2998, %2967 ], [ %3157, %3132 ], [ %3239, %3213 ], [ 0.000000e+00, %2947 ], [ 0.000000e+00, %2949 ]
  %3257 = phi float [ %2999, %2967 ], [ %3158, %3132 ], [ %3240, %3213 ], [ 0.000000e+00, %2947 ], [ 0.000000e+00, %2949 ]
  %3258 = fmul fast float %2890, %3254
  %3259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3260 = extractvalue %dx.types.CBufRet.f32 %3259, 2
  %3261 = fsub fast float %2897, %3260
  %3262 = fcmp fast olt float %3258, -2.000000e+01
  %3263 = call float @dx.op.unary.f32(i32 21, float %3258)  ; Exp(value)
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 2
  %3266 = extractvalue %dx.types.CBufRet.f32 %3264, 3
  %3267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3268 = extractvalue %dx.types.CBufRet.f32 %3267, 2
  %3269 = fmul fast float %3266, %3261
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3271 = fsub fast float 1.000000e+00, %3270
  %3272 = fmul fast float %2882, 5.000000e-01
  %3273 = fadd fast float %3272, 5.000000e-01
  %3274 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3275 = fsub fast float 1.000000e+00, %3274
  %3276 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3271)  ; FMax(a,b)
  %3277 = fdiv fast float %3275, %3276
  %3278 = fsub fast float %3261, %2848
  %3279 = call float @dx.op.unary.f32(i32 6, float %3278)  ; FAbs(value)
  %3280 = fmul fast float %3279, %3265
  %3281 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3282 = fsub fast float 1.000000e+00, %3280
  %3283 = fmul fast float %3282, %3281
  %3284 = fadd fast float %3283, %3280
  %3285 = fmul fast float %3268, %3261
  %3286 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  %3287 = fsub fast float 1.000000e+00, %3284
  %3288 = fmul fast float %3287, %3286
  %3289 = fadd fast float %3288, %3284
  %3290 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3291 = fadd fast float %3263, -1.000000e+00
  %3292 = select i1 %3262, float -1.000000e+00, float %3291
  %3293 = fmul fast float %3290, %3292
  %3294 = fadd fast float %3293, 1.000000e+00
  %3295 = fsub fast float -0.000000e+00, %3293
  %3296 = fmul fast float %3255, %3295
  %3297 = fmul fast float %3256, %3295
  %3298 = fmul fast float %3257, %3295
  br label %3299

; <label>:3299                                    ; preds = %3252, %2801
  %3300 = phi float [ %3253, %3252 ], [ 0.000000e+00, %2801 ]
  %3301 = phi float [ %3294, %3252 ], [ 1.000000e+00, %2801 ]
  %3302 = phi float [ %3296, %3252 ], [ 0.000000e+00, %2801 ]
  %3303 = phi float [ %3297, %3252 ], [ 0.000000e+00, %2801 ]
  %3304 = phi float [ %3298, %3252 ], [ 0.000000e+00, %2801 ]
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3307 = fsub fast float 1.000000e+00, %3301
  %3308 = fmul fast float %3307, %2883
  %3309 = fmul fast float %3308, %3306
  %3310 = fsub fast float %2883, %3309
  br i1 %2876, label %3311, label %3340, !dx.controlflow.hints !138

; <label>:3311                                    ; preds = %3299
  %3312 = fmul fast float %2884, %2873
  %3313 = fadd fast float %3312, %2874
  %3314 = call float @dx.op.unary.f32(i32 7, float %3313)  ; Saturate(value)
  %3315 = fmul fast float %2855, %3310
  %3316 = fsub fast float -0.000000e+00, %3315
  %3317 = fmul fast float %2856, %3310
  %3318 = fsub fast float -0.000000e+00, %3317
  %3319 = call float @dx.op.unary.f32(i32 21, float %3316)  ; Exp(value)
  %3320 = call float @dx.op.unary.f32(i32 21, float %3318)  ; Exp(value)
  %3321 = call float @dx.op.binary.f32(i32 35, float %2863, float %3319)  ; FMax(a,b)
  %3322 = call float @dx.op.binary.f32(i32 35, float %2863, float %3320)  ; FMax(a,b)
  %3323 = fsub fast float %3322, %3321
  %3324 = fmul fast float %3323, %3314
  %3325 = fadd fast float %3324, %3321
  %3326 = call float @dx.op.unary.f32(i32 7, float %3325)  ; Saturate(value)
  %3327 = fsub fast float %2860, %2865
  %3328 = fsub fast float %2861, %2866
  %3329 = fsub fast float %2862, %2867
  %3330 = fmul fast float %3314, %3327
  %3331 = fmul fast float %3314, %3328
  %3332 = fmul fast float %3314, %3329
  %3333 = fadd fast float %3330, %2865
  %3334 = fadd fast float %3331, %2866
  %3335 = fadd fast float %3332, %2867
  %3336 = fsub fast float 1.000000e+00, %3326
  %3337 = fmul fast float %3336, %3333
  %3338 = fmul fast float %3336, %3334
  %3339 = fmul fast float %3336, %3335
  br label %3399

; <label>:3340                                    ; preds = %3299
  %3341 = fmul fast float %3310, %2872
  %3342 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  %3343 = fsub fast float 2.000000e+00, %3342
  %3344 = fmul fast float %3342, 9.921875e-01
  %3345 = fmul fast float %3344, %3343
  %3346 = fadd fast float %3345, 3.906250e-03
  %3347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %3346, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3348 = extractvalue %dx.types.ResRet.f32 %3347, 0
  %3349 = fsub fast float %3342, %3348
  %3350 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3349)  ; FMax(a,b)
  %3351 = fmul fast float %2858, %2848
  %3352 = call float @dx.op.unary.f32(i32 6, float %3351)  ; FAbs(value)
  %3353 = fcmp fast ogt float %3352, 0x3EB0C6F7A0000000
  br i1 %3353, label %3354, label %3360, !dx.controlflow.hints !139

; <label>:3354                                    ; preds = %3340
  %3355 = fmul fast float %3351, 0xBFF7154760000000
  %3356 = call float @dx.op.unary.f32(i32 21, float %3355)  ; Exp(value)
  %3357 = fsub fast float 1.000000e+00, %3356
  %3358 = fdiv fast float %3357, %3351
  %3359 = fmul fast float %3358, %2868
  br label %3360

; <label>:3360                                    ; preds = %3354, %3340
  %3361 = phi float [ %3359, %3354 ], [ %2868, %3340 ]
  %3362 = fadd fast float %3361, %2870
  %3363 = fmul fast float %3362, %3350
  %3364 = fmul fast float %2855, %3363
  %3365 = fsub fast float -0.000000e+00, %3364
  %3366 = fmul fast float %2856, %3363
  %3367 = fsub fast float -0.000000e+00, %3366
  %3368 = fmul fast float %2857, %3363
  %3369 = fsub fast float -0.000000e+00, %3368
  %3370 = call float @dx.op.unary.f32(i32 21, float %3365)  ; Exp(value)
  %3371 = call float @dx.op.unary.f32(i32 21, float %3367)  ; Exp(value)
  %3372 = call float @dx.op.unary.f32(i32 21, float %3369)  ; Exp(value)
  %3373 = fmul fast float %2884, %2884
  %3374 = fadd fast float %3373, 1.000000e+00
  %3375 = fmul fast float %3374, 0x3FAE8EC8A0000000
  %3376 = fmul fast float %3375, %2865
  %3377 = fmul fast float %3375, %2866
  %3378 = fmul fast float %3375, %2867
  %3379 = fmul fast float %2884, %2863
  %3380 = fsub fast float 1.000000e+00, %3379
  %3381 = fmul fast float %2863, %2863
  %3382 = fsub fast float 1.000000e+00, %3381
  %3383 = fmul fast float %3382, 0x3FB45F3060000000
  %3384 = fmul fast float %3380, %3380
  %3385 = fdiv fast float 1.000000e+00, %3384
  %3386 = fmul fast float %3383, %3385
  %3387 = fmul fast float %3386, %2860
  %3388 = fmul fast float %3386, %2861
  %3389 = fmul fast float %3386, %2862
  %3390 = fadd fast float %3387, %3376
  %3391 = fadd fast float %3388, %3377
  %3392 = fadd fast float %3389, %3378
  %3393 = fsub fast float 1.000000e+00, %3370
  %3394 = fsub fast float 1.000000e+00, %3371
  %3395 = fsub fast float 1.000000e+00, %3372
  %3396 = fmul fast float %3390, %3393
  %3397 = fmul fast float %3391, %3394
  %3398 = fmul fast float %3392, %3395
  br label %3399

; <label>:3399                                    ; preds = %3360, %3311
  %3400 = phi float [ %3337, %3311 ], [ %3396, %3360 ]
  %3401 = phi float [ %3338, %3311 ], [ %3397, %3360 ]
  %3402 = phi float [ %3339, %3311 ], [ %3398, %3360 ]
  %3403 = phi float [ %3326, %3311 ], [ %3370, %3360 ]
  %3404 = phi float [ %3326, %3311 ], [ %3371, %3360 ]
  %3405 = phi float [ %3326, %3311 ], [ %3372, %3360 ]
  br i1 %2892, label %3406, label %3604, !dx.controlflow.hints !140

; <label>:3406                                    ; preds = %3399
  %3407 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3408 = fmul fast float %3407, %3307
  %3409 = fsub fast float %3302, %3400
  %3410 = fsub fast float %3303, %3401
  %3411 = fsub fast float %3304, %3402
  %3412 = fmul fast float %3408, %3409
  %3413 = fmul fast float %3408, %3410
  %3414 = fmul fast float %3408, %3411
  %3415 = fadd fast float %3412, %3400
  %3416 = fadd fast float %3413, %3401
  %3417 = fadd fast float %3414, %3402
  %3418 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3403)  ; FMax(a,b)
  %3419 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3404)  ; FMax(a,b)
  %3420 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3405)  ; FMax(a,b)
  %3421 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3301)  ; FMax(a,b)
  %3422 = call float @dx.op.binary.f32(i32 35, float %3300, float %3310)  ; FMax(a,b)
  %3423 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3422)  ; FMax(a,b)
  %3424 = fdiv fast float %3300, %3423
  %3425 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3426 = fdiv fast float %3310, %3423
  %3427 = call float @dx.op.unary.f32(i32 7, float %3426)  ; Saturate(value)
  %3428 = fcmp fast une float %3421, 1.000000e+00
  br i1 %3428, label %3429, label %3442, !dx.controlflow.hints !141

; <label>:3429                                    ; preds = %3406
  %3430 = call float @dx.op.unary.f32(i32 23, float %3421)  ; Log(value)
  %3431 = fmul fast float %3430, 0x3FE62E4300000000
  %3432 = fmul fast float %3302, %3431
  %3433 = fsub fast float -0.000000e+00, %3432
  %3434 = fmul fast float %3303, %3431
  %3435 = fsub fast float -0.000000e+00, %3434
  %3436 = fmul fast float %3304, %3431
  %3437 = fsub fast float -0.000000e+00, %3436
  %3438 = fsub fast float 1.000000e+00, %3421
  %3439 = fdiv fast float %3433, %3438
  %3440 = fdiv fast float %3435, %3438
  %3441 = fdiv fast float %3437, %3438
  br label %3442

; <label>:3442                                    ; preds = %3429, %3406
  %3443 = phi float [ %3439, %3429 ], [ %3302, %3406 ]
  %3444 = phi float [ %3440, %3429 ], [ %3303, %3406 ]
  %3445 = phi float [ %3441, %3429 ], [ %3304, %3406 ]
  %3446 = phi float [ %3431, %3429 ], [ 0.000000e+00, %3406 ]
  %3447 = fcmp fast une float %3418, 1.000000e+00
  br i1 %3447, label %3448, label %3455, !dx.controlflow.hints !142

; <label>:3448                                    ; preds = %3442
  %3449 = call float @dx.op.unary.f32(i32 23, float %3418)  ; Log(value)
  %3450 = fmul fast float %3449, 0x3FE62E4300000000
  %3451 = fmul fast float %3415, %3450
  %3452 = fsub fast float -0.000000e+00, %3451
  %3453 = fsub fast float 1.000000e+00, %3418
  %3454 = fdiv fast float %3452, %3453
  br label %3455

; <label>:3455                                    ; preds = %3448, %3442
  %3456 = phi float [ %3454, %3448 ], [ %3415, %3442 ]
  %3457 = phi float [ %3450, %3448 ], [ 0.000000e+00, %3442 ]
  %3458 = fcmp fast une float %3419, 1.000000e+00
  br i1 %3458, label %3459, label %3466, !dx.controlflow.hints !142

; <label>:3459                                    ; preds = %3455
  %3460 = call float @dx.op.unary.f32(i32 23, float %3419)  ; Log(value)
  %3461 = fmul fast float %3460, 0x3FE62E4300000000
  %3462 = fmul fast float %3416, %3461
  %3463 = fsub fast float -0.000000e+00, %3462
  %3464 = fsub fast float 1.000000e+00, %3419
  %3465 = fdiv fast float %3463, %3464
  br label %3466

; <label>:3466                                    ; preds = %3459, %3455
  %3467 = phi float [ %3465, %3459 ], [ %3416, %3455 ]
  %3468 = phi float [ %3461, %3459 ], [ 0.000000e+00, %3455 ]
  %3469 = fcmp fast une float %3420, 1.000000e+00
  br i1 %3469, label %3470, label %3477, !dx.controlflow.hints !142

; <label>:3470                                    ; preds = %3466
  %3471 = call float @dx.op.unary.f32(i32 23, float %3420)  ; Log(value)
  %3472 = fmul fast float %3471, 0x3FE62E4300000000
  %3473 = fmul fast float %3417, %3472
  %3474 = fsub fast float -0.000000e+00, %3473
  %3475 = fsub fast float 1.000000e+00, %3420
  %3476 = fdiv fast float %3474, %3475
  br label %3477

; <label>:3477                                    ; preds = %3470, %3466
  %3478 = phi float [ %3476, %3470 ], [ %3417, %3466 ]
  %3479 = phi float [ %3472, %3470 ], [ 0.000000e+00, %3466 ]
  %3480 = fmul fast float %3443, %3427
  %3481 = fmul fast float %3444, %3427
  %3482 = fmul fast float %3445, %3427
  %3483 = fmul fast float %3446, %3427
  %3484 = fmul fast float %3456, %3425
  %3485 = fmul fast float %3467, %3425
  %3486 = fmul fast float %3478, %3425
  %3487 = fmul fast float %3457, %3425
  %3488 = fmul fast float %3468, %3425
  %3489 = fmul fast float %3479, %3425
  %3490 = fadd fast float %3484, %3480
  %3491 = fadd fast float %3485, %3481
  %3492 = fadd fast float %3486, %3482
  %3493 = fadd fast float %3487, %3483
  %3494 = fadd fast float %3488, %3483
  %3495 = fadd fast float %3489, %3483
  %3496 = fcmp fast une float %3493, 0.000000e+00
  br i1 %3496, label %3497, label %3504, !dx.controlflow.hints !143

; <label>:3497                                    ; preds = %3477
  %3498 = fmul fast float %3493, 0x3FF7154760000000
  %3499 = call float @dx.op.unary.f32(i32 21, float %3498)  ; Exp(value)
  %3500 = fsub fast float 1.000000e+00, %3499
  %3501 = fmul fast float %3490, %3500
  %3502 = fsub fast float -0.000000e+00, %3501
  %3503 = fdiv fast float %3502, %3493
  br label %3504

; <label>:3504                                    ; preds = %3497, %3477
  %3505 = phi float [ %3499, %3497 ], [ 1.000000e+00, %3477 ]
  %3506 = phi float [ %3503, %3497 ], [ %3490, %3477 ]
  %3507 = fcmp fast une float %3494, 0.000000e+00
  br i1 %3507, label %3508, label %3515, !dx.controlflow.hints !143

; <label>:3508                                    ; preds = %3504
  %3509 = fmul fast float %3494, 0x3FF7154760000000
  %3510 = call float @dx.op.unary.f32(i32 21, float %3509)  ; Exp(value)
  %3511 = fsub fast float 1.000000e+00, %3510
  %3512 = fmul fast float %3491, %3511
  %3513 = fsub fast float -0.000000e+00, %3512
  %3514 = fdiv fast float %3513, %3494
  br label %3515

; <label>:3515                                    ; preds = %3508, %3504
  %3516 = phi float [ %3510, %3508 ], [ 1.000000e+00, %3504 ]
  %3517 = phi float [ %3514, %3508 ], [ %3491, %3504 ]
  %3518 = fcmp fast une float %3495, 0.000000e+00
  br i1 %3518, label %3519, label %3526, !dx.controlflow.hints !143

; <label>:3519                                    ; preds = %3515
  %3520 = fmul fast float %3495, 0x3FF7154760000000
  %3521 = call float @dx.op.unary.f32(i32 21, float %3520)  ; Exp(value)
  %3522 = fsub fast float 1.000000e+00, %3521
  %3523 = fmul fast float %3492, %3522
  %3524 = fsub fast float -0.000000e+00, %3523
  %3525 = fdiv fast float %3524, %3495
  br label %3526

; <label>:3526                                    ; preds = %3519, %3515
  %3527 = phi float [ %3521, %3519 ], [ 1.000000e+00, %3515 ]
  %3528 = phi float [ %3525, %3519 ], [ %3492, %3515 ]
  %3529 = fcmp fast ogt float %3425, %3427
  br i1 %3529, label %3530, label %3550, !dx.controlflow.hints !144

; <label>:3530                                    ; preds = %3526
  %3531 = fsub fast float 1.000000e+00, %3427
  %3532 = fmul fast float %3443, %3531
  %3533 = fmul fast float %3444, %3531
  %3534 = fmul fast float %3445, %3531
  %3535 = fmul fast float %3446, %3531
  %3536 = fcmp fast une float %3535, 0.000000e+00
  br i1 %3536, label %3537, label %3588, !dx.controlflow.hints !145

; <label>:3537                                    ; preds = %3530
  %3538 = fmul fast float %3535, 0x3FF7154760000000
  %3539 = call float @dx.op.unary.f32(i32 21, float %3538)  ; Exp(value)
  %3540 = fsub fast float 1.000000e+00, %3539
  %3541 = fmul fast float %3532, %3540
  %3542 = fsub fast float -0.000000e+00, %3541
  %3543 = fmul fast float %3533, %3540
  %3544 = fsub fast float -0.000000e+00, %3543
  %3545 = fmul fast float %3534, %3540
  %3546 = fsub fast float -0.000000e+00, %3545
  %3547 = fdiv fast float %3542, %3535
  %3548 = fdiv fast float %3544, %3535
  %3549 = fdiv fast float %3546, %3535
  br label %3588

; <label>:3550                                    ; preds = %3526
  %3551 = fsub fast float 1.000000e+00, %3425
  %3552 = fmul fast float %3456, %3551
  %3553 = fmul fast float %3467, %3551
  %3554 = fmul fast float %3478, %3551
  %3555 = fmul fast float %3457, %3551
  %3556 = fmul fast float %3468, %3551
  %3557 = fmul fast float %3479, %3551
  %3558 = fcmp fast une float %3555, 0.000000e+00
  br i1 %3558, label %3559, label %3566, !dx.controlflow.hints !143

; <label>:3559                                    ; preds = %3550
  %3560 = fmul fast float %3555, 0x3FF7154760000000
  %3561 = call float @dx.op.unary.f32(i32 21, float %3560)  ; Exp(value)
  %3562 = fsub fast float 1.000000e+00, %3561
  %3563 = fmul fast float %3552, %3562
  %3564 = fsub fast float -0.000000e+00, %3563
  %3565 = fdiv fast float %3564, %3555
  br label %3566

; <label>:3566                                    ; preds = %3559, %3550
  %3567 = phi float [ %3565, %3559 ], [ %3552, %3550 ]
  %3568 = phi float [ %3561, %3559 ], [ 1.000000e+00, %3550 ]
  %3569 = fcmp fast une float %3556, 0.000000e+00
  br i1 %3569, label %3570, label %3577, !dx.controlflow.hints !143

; <label>:3570                                    ; preds = %3566
  %3571 = fmul fast float %3556, 0x3FF7154760000000
  %3572 = call float @dx.op.unary.f32(i32 21, float %3571)  ; Exp(value)
  %3573 = fsub fast float 1.000000e+00, %3572
  %3574 = fmul fast float %3553, %3573
  %3575 = fsub fast float -0.000000e+00, %3574
  %3576 = fdiv fast float %3575, %3556
  br label %3577

; <label>:3577                                    ; preds = %3570, %3566
  %3578 = phi float [ %3576, %3570 ], [ %3553, %3566 ]
  %3579 = phi float [ %3572, %3570 ], [ 1.000000e+00, %3566 ]
  %3580 = fcmp fast une float %3557, 0.000000e+00
  br i1 %3580, label %3581, label %3588, !dx.controlflow.hints !143

; <label>:3581                                    ; preds = %3577
  %3582 = fmul fast float %3557, 0x3FF7154760000000
  %3583 = call float @dx.op.unary.f32(i32 21, float %3582)  ; Exp(value)
  %3584 = fsub fast float 1.000000e+00, %3583
  %3585 = fmul fast float %3554, %3584
  %3586 = fsub fast float -0.000000e+00, %3585
  %3587 = fdiv fast float %3586, %3557
  br label %3588

; <label>:3588                                    ; preds = %3581, %3577, %3537, %3530
  %3589 = phi float [ %3587, %3581 ], [ %3549, %3537 ], [ %3534, %3530 ], [ %3554, %3577 ]
  %3590 = phi float [ %3578, %3581 ], [ %3548, %3537 ], [ %3533, %3530 ], [ %3578, %3577 ]
  %3591 = phi float [ %3567, %3581 ], [ %3547, %3537 ], [ %3532, %3530 ], [ %3567, %3577 ]
  %3592 = phi float [ %3583, %3581 ], [ %3539, %3537 ], [ 1.000000e+00, %3530 ], [ 1.000000e+00, %3577 ]
  %3593 = phi float [ %3579, %3581 ], [ %3539, %3537 ], [ 1.000000e+00, %3530 ], [ %3579, %3577 ]
  %3594 = phi float [ %3568, %3581 ], [ %3539, %3537 ], [ 1.000000e+00, %3530 ], [ %3568, %3577 ]
  %3595 = fmul fast float %3594, %3506
  %3596 = fmul fast float %3593, %3517
  %3597 = fmul fast float %3592, %3528
  %3598 = fadd fast float %3595, %3591
  %3599 = fadd fast float %3596, %3590
  %3600 = fadd fast float %3597, %3589
  %3601 = fmul fast float %3594, %3505
  %3602 = fmul fast float %3593, %3516
  %3603 = fmul fast float %3592, %3527
  br label %3604

; <label>:3604                                    ; preds = %3588, %3399
  %3605 = phi float [ %3405, %3399 ], [ %3603, %3588 ]
  %3606 = phi float [ %3404, %3399 ], [ %3602, %3588 ]
  %3607 = phi float [ %3403, %3399 ], [ %3601, %3588 ]
  %3608 = phi float [ %3402, %3399 ], [ %3600, %3588 ]
  %3609 = phi float [ %3401, %3399 ], [ %3599, %3588 ]
  %3610 = phi float [ %3400, %3399 ], [ %3598, %3588 ]
  %3611 = fmul fast float %3607, %2748
  %3612 = fmul fast float %3606, %2749
  %3613 = fmul fast float %3605, %2750
  %3614 = fsub fast float 1.000000e+00, %2811
  %3615 = fmul fast float %3610, %3614
  %3616 = fmul fast float %3609, %3614
  %3617 = fmul fast float %3608, %3614
  %3618 = fadd fast float %3615, %3611
  %3619 = fadd fast float %3616, %3612
  %3620 = fadd fast float %3617, %3613
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 2
  %3623 = fmul fast float %3622, %2821
  %3624 = call float @dx.op.unary.f32(i32 7, float %3623)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %25, i32 %26, i32 undef, float %2811, float %2811, float %2811, float %2811, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 0
  %3627 = fmul fast float %3626, %3618
  %3628 = fmul fast float %3626, %3619
  %3629 = fmul fast float %3626, %3620
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %25, i32 %26, i32 undef, float %3627, float %3628, float %3629, float %3627, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %25, i32 %26, i32 undef, float %3624, float %3624, float %3624, float %3624, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!37 = !{void ()* @cs_fog_raymarching_heightmap_particles_brfog, !"cs_fog_raymarching_heightmap_particles_brfog", null, !4, !38}
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
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = !{!101, !101, i64 0}
!101 = !{!"float", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!105, !107, !109, !110, !112, !113, !114}
!105 = distinct !{!105, !106, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!106 = distinct !{!106, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!107 = distinct !{!107, !108, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!108 = distinct !{!108, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!109 = distinct !{!109, !108, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!110 = distinct !{!110, !111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!111 = distinct !{!111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!112 = distinct !{!112, !111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!113 = distinct !{!113, !111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!114 = distinct !{!114, !111, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = !{!117}
!117 = distinct !{!117, !118, !"\01?sort@@YAXAIAM00@Z: %c"}
!118 = distinct !{!118, !"\01?sort@@YAXAIAM00@Z"}
!119 = !{!120, !121, !105, !107, !109, !110, !112, !113, !114}
!120 = distinct !{!120, !118, !"\01?sort@@YAXAIAM00@Z: %a"}
!121 = distinct !{!121, !118, !"\01?sort@@YAXAIAM00@Z: %b"}
!122 = !{!121}
!123 = !{!120, !117, !105, !107, !109, !110, !112, !113, !114}
!124 = !{!120}
!125 = !{!121, !117, !105, !107, !109, !110, !112, !113, !114}
!126 = !{!127}
!127 = distinct !{!127, !128, !"\01?sort@@YAXAIAM00@Z: %c"}
!128 = distinct !{!128, !"\01?sort@@YAXAIAM00@Z"}
!129 = !{!130, !131, !105, !107, !109, !110, !112, !113, !114}
!130 = distinct !{!130, !128, !"\01?sort@@YAXAIAM00@Z: %a"}
!131 = distinct !{!131, !128, !"\01?sort@@YAXAIAM00@Z: %b"}
!132 = !{!131}
!133 = !{!130, !127, !105, !107, !109, !110, !112, !113, !114}
!134 = !{!130}
!135 = !{!131, !127, !105, !107, !109, !110, !112, !113, !114}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}

