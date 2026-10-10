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
; shader hash: 493950ee19cf64b77078283418bf02a0
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

define void @cs_fog_raymarching_heightmap_particles() {
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
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = fsub fast float -0.000000e+00, %70
  %210 = fsub fast float -0.000000e+00, %71
  %211 = fsub fast float %206, %72
  %212 = fadd fast float %211, %208
  %213 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %209, float %210, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = fdiv fast float 1.000000e+00, %214
  %216 = fmul fast float %215, %213
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = fsub fast float %218, %72
  %220 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %209, float %210, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %221 = fmul fast float %215, %220
  %222 = call float @dx.op.binary.f32(i32 36, float %216, float %221)  ; FMin(a,b)
  %223 = call float @dx.op.binary.f32(i32 35, float %216, float %221)  ; FMax(a,b)
  %224 = call float @dx.op.binary.f32(i32 36, float %204, float %222)  ; FMin(a,b)
  %225 = call float @dx.op.binary.f32(i32 35, float %203, float %223)  ; FMax(a,b)
  %226 = fdiv fast float 1.000000e+00, %113
  %227 = fdiv fast float 1.000000e+00, %114
  %228 = fdiv fast float 1.000000e+00, %115
  %229 = call float @dx.op.binary.f32(i32 36, float %134, float %225)  ; FMin(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %111, float %224)  ; FMax(a,b)
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = fmul fast float %59, 2.000000e+00
  %234 = fadd fast float %233, -1.000000e+00
  %235 = fmul fast float %232, %234
  %236 = fadd fast float %235, %230
  %237 = fcmp fast olt float %236, %229
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = fcmp fast olt float %239, 1.000000e+00
  %241 = and i1 %237, %240
  br i1 %241, label %242, label %2275

; <label>:242                                     ; preds = %201
  %243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.i32 %243, 1
  %245 = add i32 %244, -1
  %246 = fmul fast float %236, %115
  %247 = fadd fast float %246, %72
  %248 = fmul fast float %236, %114
  %249 = fadd fast float %248, %71
  %250 = fmul fast float %236, %113
  %251 = fadd fast float %250, %70
  br label %252

; <label>:252                                     ; preds = %2247, %242
  %253 = phi float [ %2249, %2247 ], [ undef, %242 ]
  %254 = phi float [ %2250, %2247 ], [ undef, %242 ]
  %255 = phi float [ %2251, %2247 ], [ undef, %242 ]
  %256 = phi float [ %2252, %2247 ], [ undef, %242 ]
  %257 = phi float [ %554, %2247 ], [ undef, %242 ]
  %258 = phi float [ %555, %2247 ], [ undef, %242 ]
  %259 = phi float [ %556, %2247 ], [ undef, %242 ]
  %260 = phi float [ %557, %2247 ], [ undef, %242 ]
  %261 = phi float [ %2253, %2247 ], [ 0.000000e+00, %242 ]
  %262 = phi float [ %2254, %2247 ], [ 1.000000e+00, %242 ]
  %263 = phi float [ %2255, %2247 ], [ 0.000000e+00, %242 ]
  %264 = phi float [ %2256, %2247 ], [ 0.000000e+00, %242 ]
  %265 = phi float [ %2257, %2247 ], [ 0.000000e+00, %242 ]
  %266 = phi float [ %2267, %2247 ], [ %251, %242 ]
  %267 = phi float [ %2268, %2247 ], [ %249, %242 ]
  %268 = phi float [ %2269, %2247 ], [ %247, %242 ]
  %269 = phi float [ %2248, %2247 ], [ %236, %242 ]
  %270 = phi i32 [ %559, %2247 ], [ 10, %242 ]
  %271 = phi i32 [ %451, %2247 ], [ %245, %242 ]
  %272 = phi float [ %2258, %2247 ], [ 0.000000e+00, %242 ]
  %273 = phi float [ %2259, %2247 ], [ 0.000000e+00, %242 ]
  %274 = phi float [ %2260, %2247 ], [ 0.000000e+00, %242 ]
  %275 = phi float [ %2261, %2247 ], [ 0.000000e+00, %242 ]
  %276 = phi float [ %2262, %2247 ], [ 0.000000e+00, %242 ]
  %277 = phi i32 [ %2263, %2247 ], [ 0, %242 ]
  %278 = fsub fast float -0.000000e+00, %267
  %279 = fsub fast float -0.000000e+00, %266
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = icmp eq i32 %202, 0
  br i1 %282, label %448, label %283, !dx.controlflow.hints !42

; <label>:283                                     ; preds = %252
  %284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.i32 %284, 1
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %288 = fcmp fast ogt float %287, %269
  br i1 %288, label %289, label %291, !dx.controlflow.hints !43

; <label>:289                                     ; preds = %283
  %290 = fsub fast float %287, %269
  br label %438

; <label>:291                                     ; preds = %283
  %292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.i32 %292, 3
  %294 = icmp eq i32 %293, 0
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = fsub fast float %296, %268
  %300 = fadd fast float %299, %298
  %301 = fsub fast float 0xC7EFFFFFE0000000, %268
  br i1 %294, label %309, label %302, !dx.controlflow.hints !39

; <label>:302                                     ; preds = %291
  %303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %278, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %304 = fmul fast float %215, %303
  %305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %278, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fmul fast float %215, %305
  %307 = call float @dx.op.binary.f32(i32 36, float %304, float %306)  ; FMin(a,b)
  %308 = call float @dx.op.binary.f32(i32 35, float %304, float %306)  ; FMax(a,b)
  br label %339

; <label>:309                                     ; preds = %291
  %310 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %314 = fsub fast float %310, %266
  %315 = fmul fast float %226, %314
  %316 = fadd fast float %314, %312
  %317 = fmul fast float %316, %226
  %318 = call float @dx.op.binary.f32(i32 36, float %315, float %317)  ; FMin(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float %315, float %317)  ; FMax(a,b)
  %320 = fsub fast float %311, %267
  %321 = fmul fast float %227, %320
  %322 = fadd fast float %320, %313
  %323 = fmul fast float %322, %227
  %324 = call float @dx.op.binary.f32(i32 36, float %321, float %323)  ; FMin(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %318, float %324)  ; FMax(a,b)
  %326 = call float @dx.op.binary.f32(i32 35, float %321, float %323)  ; FMax(a,b)
  %327 = call float @dx.op.binary.f32(i32 36, float %319, float %326)  ; FMin(a,b)
  %328 = fmul fast float %228, %301
  %329 = fmul fast float %228, %300
  %330 = call float @dx.op.binary.f32(i32 36, float %328, float %329)  ; FMin(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %325, float %330)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %328, float %329)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 36, float %327, float %332)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %331)  ; FMax(a,b)
  %335 = fcmp fast ult float %333, %334
  br i1 %335, label %339, label %336, !dx.controlflow.hints !40

; <label>:336                                     ; preds = %309
  %337 = call float @dx.op.binary.f32(i32 36, float %331, float %333)  ; FMin(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %331, float %333)  ; FMax(a,b)
  br label %339

; <label>:339                                     ; preds = %336, %309, %302
  %340 = phi float [ %307, %302 ], [ %337, %336 ], [ 0.000000e+00, %309 ]
  %341 = phi float [ %308, %302 ], [ %338, %336 ], [ 0.000000e+00, %309 ]
  %342 = fcmp fast ogt float %340, 0.000000e+00
  br i1 %342, label %438, label %343, !dx.controlflow.hints !44

; <label>:343                                     ; preds = %339
  %344 = fcmp fast ugt float %341, 0.000000e+00
  br i1 %344, label %345, label %438, !dx.controlflow.hints !45

; <label>:345                                     ; preds = %343
  %346 = icmp sgt i32 %271, 0
  br i1 %346, label %347, label %432

; <label>:347                                     ; preds = %345
  br label %348

; <label>:348                                     ; preds = %428, %347
  %349 = phi i32 [ %429, %428 ], [ %271, %347 ]
  %350 = sitofp i32 %349 to float
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %354 = fsub fast float %266, %352
  %355 = fsub fast float %267, %353
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = fmul fast float %354, %357
  %360 = fmul fast float %355, %358
  %361 = fsub fast float 1.000000e+00, %360
  %362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.i32 %362, 3
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %371, label %365, !dx.controlflow.hints !46

; <label>:365                                     ; preds = %348
  %366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %359, float %361, float undef, float undef, i32 0, i32 0, i32 undef, float %350)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = extractvalue %dx.types.ResRet.f32 %366, 3
  br label %377

; <label>:371                                     ; preds = %348
  %372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %359, float %361, float undef, float undef, i32 0, i32 0, i32 undef, float %350)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = extractvalue %dx.types.ResRet.f32 %372, 3
  br label %377

; <label>:377                                     ; preds = %371, %365
  %378 = phi float [ %367, %365 ], [ %373, %371 ]
  %379 = phi float [ %368, %365 ], [ %374, %371 ]
  %380 = phi float [ %369, %365 ], [ %375, %371 ]
  %381 = phi float [ %370, %365 ], [ %376, %371 ]
  %382 = extractvalue %dx.types.CBufRet.f32 %356, 3
  %383 = fmul fast float %382, %378
  %384 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %385 = fadd fast float %383, %384
  %386 = fmul fast float %382, %379
  %387 = fadd fast float %386, %384
  %388 = fmul fast float %382, %380
  %389 = fadd fast float %388, %384
  %390 = and i32 %349, 31
  %391 = shl i32 1, %390
  %392 = uitofp i32 %391 to float
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 3
  %395 = fdiv fast float 1.000000e+00, %394
  %396 = fmul fast float %395, %392
  %397 = fmul fast float %396, %115
  %398 = fadd fast float %397, %268
  %399 = fcmp fast oeq float %381, 0.000000e+00
  %400 = fcmp fast ogt float %268, %387
  %401 = fcmp fast ogt float %398, %387
  %402 = and i1 %400, %401
  %403 = or i1 %399, %402
  br i1 %403, label %404, label %408, !dx.controlflow.hints !47

; <label>:404                                     ; preds = %377
  %405 = add nsw i32 %349, 1
  %406 = add nsw i32 %285, -1
  %407 = call i32 @dx.op.binary.i32(i32 38, i32 %405, i32 %406)  ; IMin(a,b)
  br label %438

; <label>:408                                     ; preds = %377
  %409 = fcmp fast olt float %268, %389
  %410 = fcmp fast olt float %398, %389
  %411 = and i1 %409, %410
  br i1 %411, label %412, label %416, !dx.controlflow.hints !48

; <label>:412                                     ; preds = %408
  %413 = add nsw i32 %349, 1
  %414 = add nsw i32 %285, -1
  %415 = call i32 @dx.op.binary.i32(i32 38, i32 %413, i32 %414)  ; IMin(a,b)
  br label %438

; <label>:416                                     ; preds = %408
  %417 = fcmp fast olt float %268, %385
  %418 = fcmp fast olt float %398, %385
  %419 = and i1 %417, %418
  br i1 %419, label %420, label %428, !dx.controlflow.hints !49

; <label>:420                                     ; preds = %416
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 3
  %423 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %424 = fcmp fast une float %422, %423
  br i1 %424, label %425, label %432, !dx.controlflow.hints !50

; <label>:425                                     ; preds = %420
  %426 = fsub fast float %268, %389
  %427 = call float @dx.op.binary.f32(i32 36, float %396, float %426)  ; FMin(a,b)
  br label %432

; <label>:428                                     ; preds = %416
  %429 = add nsw i32 %349, -1
  %430 = icmp sgt i32 %349, 1
  br i1 %430, label %348, label %431

; <label>:431                                     ; preds = %428
  br label %432

; <label>:432                                     ; preds = %431, %425, %420, %345
  %433 = phi float [ %427, %425 ], [ %396, %420 ], [ 0.000000e+00, %345 ], [ 0.000000e+00, %431 ]
  %434 = phi i32 [ %349, %425 ], [ %349, %420 ], [ %271, %345 ], [ %429, %431 ]
  %435 = add nsw i32 %434, 1
  %436 = add nsw i32 %285, -1
  %437 = call i32 @dx.op.binary.i32(i32 38, i32 %435, i32 %436)  ; IMin(a,b)
  br label %438

; <label>:438                                     ; preds = %432, %412, %404, %343, %339, %289
  %439 = phi float [ %290, %289 ], [ %396, %404 ], [ %396, %412 ], [ %433, %432 ], [ 0x47EFFFFFE0000000, %343 ], [ %340, %339 ]
  %440 = phi i32 [ %202, %289 ], [ %202, %404 ], [ %202, %412 ], [ %202, %432 ], [ 0, %343 ], [ %202, %339 ]
  %441 = phi i32 [ %271, %289 ], [ %407, %404 ], [ %415, %412 ], [ %437, %432 ], [ %271, %343 ], [ %271, %339 ]
  %442 = icmp ne i32 %440, 0
  %443 = zext i1 %442 to i32
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %446 = call float @dx.op.binary.f32(i32 35, float %439, float %445)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %446)  ; FMin(a,b)
  br label %448

; <label>:448                                     ; preds = %438, %252
  %449 = phi i32 [ %443, %438 ], [ 0, %252 ]
  %450 = phi float [ %447, %438 ], [ 0x47EFFFFFE0000000, %252 ]
  %451 = phi i32 [ %441, %438 ], [ %271, %252 ]
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = fsub fast float %266, %453
  %456 = fsub fast float %267, %454
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %459 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %460 = fmul fast float %455, %458
  %461 = fmul fast float %456, %459
  %462 = call float @dx.op.binary.f32(i32 36, float %460, float %461)  ; FMin(a,b)
  %463 = fcmp fast olt float %462, 0.000000e+00
  %464 = call float @dx.op.binary.f32(i32 35, float %460, float %461)  ; FMax(a,b)
  %465 = fcmp fast ogt float %464, 1.000000e+00
  %466 = or i1 %463, %465
  %467 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %468 = fcmp fast olt float %268, %467
  %469 = or i1 %466, %468
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 3
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = fadd fast float %473, %471
  %475 = fcmp fast ogt float %268, %474
  %476 = or i1 %469, %475
  br i1 %476, label %477, label %506, !dx.controlflow.hints !51

; <label>:477                                     ; preds = %448
  %478 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %457, 1
  %480 = fsub fast float %453, %266
  %481 = fmul fast float %480, %226
  %482 = fadd fast float %480, %478
  %483 = fmul fast float %482, %226
  %484 = call float @dx.op.binary.f32(i32 36, float %481, float %483)  ; FMin(a,b)
  %485 = call float @dx.op.binary.f32(i32 35, float %481, float %483)  ; FMax(a,b)
  %486 = fsub fast float %454, %267
  %487 = fmul fast float %486, %227
  %488 = fadd fast float %486, %479
  %489 = fmul fast float %488, %227
  %490 = call float @dx.op.binary.f32(i32 36, float %487, float %489)  ; FMin(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %484, float %490)  ; FMax(a,b)
  %492 = call float @dx.op.binary.f32(i32 35, float %487, float %489)  ; FMax(a,b)
  %493 = call float @dx.op.binary.f32(i32 36, float %485, float %492)  ; FMin(a,b)
  %494 = fsub fast float %467, %268
  %495 = fmul fast float %494, %228
  %496 = fsub fast float %471, %268
  %497 = fadd fast float %496, %473
  %498 = fmul fast float %497, %228
  %499 = call float @dx.op.binary.f32(i32 36, float %495, float %498)  ; FMin(a,b)
  %500 = call float @dx.op.binary.f32(i32 35, float %491, float %499)  ; FMax(a,b)
  %501 = call float @dx.op.binary.f32(i32 35, float %495, float %498)  ; FMax(a,b)
  %502 = call float @dx.op.binary.f32(i32 36, float %493, float %501)  ; FMin(a,b)
  %503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %500)  ; FMax(a,b)
  %504 = fcmp fast oge float %502, %503
  %505 = select i1 %504, float %500, float 1.000000e+07
  br label %552

; <label>:506                                     ; preds = %448
  %507 = fsub fast float 1.000000e+00, %461
  %508 = icmp eq i32 %270, 0
  br i1 %508, label %537, label %509

; <label>:509                                     ; preds = %506
  br label %510

; <label>:510                                     ; preds = %533, %509
  %511 = phi i32 [ %534, %533 ], [ %270, %509 ]
  %512 = uitofp i32 %511 to float
  %513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %460, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float %512)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = extractvalue %dx.types.ResRet.f32 %513, 2
  %517 = fcmp fast oeq float %514, 0.000000e+00
  %518 = fcmp ule float %268, %516
  %519 = fcmp uge float %268, %515
  %520 = or i1 %519, %518
  %521 = or i1 %517, %520
  br i1 %521, label %522, label %533, !dx.controlflow.hints !52

; <label>:522                                     ; preds = %510
  %523 = extractvalue %dx.types.ResRet.f32 %513, 3
  %524 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %525 = and i32 %511, 31
  %526 = lshr i32 1024, %525
  %527 = uitofp i32 %526 to float
  %528 = fdiv fast float %524, %527
  %529 = add i32 %511, 1
  %530 = uitofp i32 %529 to float
  %531 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %530)  ; FMin(a,b)
  %532 = fptosi float %531 to i32
  br label %552

; <label>:533                                     ; preds = %510
  %534 = add i32 %511, -1
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %510, !llvm.loop !53

; <label>:536                                     ; preds = %533
  br label %537

; <label>:537                                     ; preds = %536, %506
  %538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %460, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  %543 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %544 = fmul fast float %543, 9.765625e-04
  %545 = fcmp fast oeq float %539, 0.000000e+00
  %546 = fcmp ule float %268, %541
  %547 = fcmp uge float %268, %540
  %548 = or i1 %547, %546
  %549 = or i1 %545, %548
  %550 = zext i1 %549 to i32
  %551 = xor i32 %550, 1
  br label %552

; <label>:552                                     ; preds = %537, %522, %477
  %553 = phi float [ %505, %477 ], [ %528, %522 ], [ %544, %537 ]
  %554 = phi float [ %257, %477 ], [ %514, %522 ], [ %539, %537 ]
  %555 = phi float [ %258, %477 ], [ %515, %522 ], [ %540, %537 ]
  %556 = phi float [ %259, %477 ], [ %516, %522 ], [ %541, %537 ]
  %557 = phi float [ %260, %477 ], [ %523, %522 ], [ %542, %537 ]
  %558 = phi i32 [ 0, %477 ], [ 0, %522 ], [ %551, %537 ]
  %559 = phi i32 [ 10, %477 ], [ %532, %522 ], [ 1, %537 ]
  %560 = icmp eq i32 %558, 0
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %563 = call float @dx.op.binary.f32(i32 35, float %553, float %562)  ; FMax(a,b)
  %564 = call float @dx.op.binary.f32(i32 36, float %450, float %563)  ; FMin(a,b)
  %565 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %566 = fmul fast float %565, %269
  %567 = call float @dx.op.unary.f32(i32 23, float %566)  ; Log(value)
  %568 = fmul fast float %567, 0x3FE62E4300000000
  %569 = call float @dx.op.binary.f32(i32 35, float %568, float 1.000000e+00)  ; FMax(a,b)
  %570 = fmul fast float %569, 0x47EFFFFFE0000000
  %571 = call float @dx.op.binary.f32(i32 36, float %570, float %564)  ; FMin(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float %571, float %281)  ; FMax(a,b)
  %573 = fsub fast float %229, %269
  %574 = fadd fast float %573, 0x3F1A36E2E0000000
  %575 = call float @dx.op.binary.f32(i32 36, float %574, float %572)  ; FMin(a,b)
  %576 = icmp eq i32 %449, 0
  br i1 %576, label %682, label %577, !dx.controlflow.hints !55

; <label>:577                                     ; preds = %552
  %578 = fcmp fast olt float %574, %572
  %579 = fmul fast float %115, %58
  %580 = fmul fast float %579, %575
  %581 = fadd fast float %580, %268
  %582 = fmul fast float %115, %59
  %583 = fmul fast float %582, %575
  %584 = fadd fast float %583, %268
  %585 = fmul fast float %115, %60
  %586 = fmul fast float %585, %575
  %587 = fadd fast float %586, %268
  br i1 %578, label %588, label %593, !dx.controlflow.hints !56

; <label>:588                                     ; preds = %577
  %589 = fmul fast float %575, %113
  %590 = fmul fast float %575, %114
  %591 = fadd fast float %589, %266
  %592 = fadd fast float %590, %267
  br label %593

; <label>:593                                     ; preds = %588, %577
  %594 = phi float [ %591, %588 ], [ %266, %577 ]
  %595 = phi float [ %592, %588 ], [ %267, %577 ]
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %599 = fsub fast float %594, %597
  %600 = fsub fast float %595, %598
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %604 = fmul fast float %599, %602
  %605 = fmul fast float %600, %603
  %606 = fsub fast float 1.000000e+00, %605
  %607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.i32 %607, 3
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %616, label %610, !dx.controlflow.hints !46

; <label>:610                                     ; preds = %593
  %611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %604, float %606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = extractvalue %dx.types.ResRet.f32 %611, 3
  br label %622

; <label>:616                                     ; preds = %593
  %617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %604, float %606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = extractvalue %dx.types.ResRet.f32 %617, 3
  br label %622

; <label>:622                                     ; preds = %616, %610
  %623 = phi float [ %612, %610 ], [ %618, %616 ]
  %624 = phi float [ %613, %610 ], [ %619, %616 ]
  %625 = phi float [ %614, %610 ], [ %620, %616 ]
  %626 = phi float [ %615, %610 ], [ %621, %616 ]
  %627 = extractvalue %dx.types.CBufRet.f32 %601, 3
  %628 = fmul fast float %627, %624
  %629 = fmul fast float %628, %623
  %630 = fsub fast float %628, %629
  %631 = fcmp fast ole float %630, 0.000000e+00
  %632 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %633 = fadd fast float %629, %632
  %634 = fmul fast float %627, %625
  %635 = fadd fast float %634, %632
  %636 = fdiv fast float 1.000000e+00, %630
  %637 = select i1 %631, float 1.000000e+06, float %636
  %638 = fsub fast float %581, %633
  %639 = fmul fast float %637, %638
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %641 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %642 = fmul fast float %641, %640
  %643 = fsub fast float %641, %642
  %644 = fcmp fast olt float %581, %635
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %647 = select i1 %644, float %646, float 1.000000e+00
  %648 = fmul fast float %643, %647
  %649 = fsub fast float %584, %633
  %650 = fmul fast float %637, %649
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %652 = fmul fast float %641, %651
  %653 = fsub fast float %641, %652
  %654 = fcmp fast olt float %584, %635
  %655 = select i1 %654, float %646, float 1.000000e+00
  %656 = fmul fast float %653, %655
  %657 = fadd fast float %656, %648
  %658 = fsub fast float %587, %633
  %659 = fmul fast float %637, %658
  %660 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %661 = fmul fast float %641, %660
  %662 = fsub fast float %641, %661
  %663 = fcmp fast olt float %587, %635
  %664 = select i1 %663, float %646, float 1.000000e+00
  %665 = fmul fast float %662, %664
  %666 = fadd fast float %657, %665
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %672 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %673 = fmul fast float %575, 0x3FD5555560000000
  %674 = fmul fast float %673, %626
  %675 = fmul fast float %674, %668
  %676 = fmul fast float %675, %666
  %677 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %678 = fmul fast float %676, %670
  %679 = fmul fast float %676, %671
  %680 = fmul fast float %676, %672
  %681 = fmul fast float %676, %677
  br label %682

; <label>:682                                     ; preds = %622, %552
  %683 = phi float [ %676, %622 ], [ 0.000000e+00, %552 ]
  %684 = phi float [ %681, %622 ], [ 0.000000e+00, %552 ]
  %685 = phi float [ %678, %622 ], [ 0.000000e+00, %552 ]
  %686 = phi float [ %679, %622 ], [ 0.000000e+00, %552 ]
  %687 = phi float [ %680, %622 ], [ 0.000000e+00, %552 ]
  br i1 %560, label %830, label %688, !dx.controlflow.hints !57

; <label>:688                                     ; preds = %682
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %691 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %692 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.i32 %693, 0
  %695 = icmp ne i32 %694, 0
  %696 = zext i1 %695 to i32
  %697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.i32 %697, 0
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %733, label %700

; <label>:700                                     ; preds = %688
  br label %701

; <label>:701                                     ; preds = %728, %700
  %702 = phi i32 [ %729, %728 ], [ 0, %700 ]
  %703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %702, i32 0)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %702, i32 16)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = extractvalue %dx.types.ResRet.f32 %707, 1
  %710 = extractvalue %dx.types.ResRet.f32 %707, 2
  %711 = fsub fast float %704, %708
  %712 = fsub fast float %705, %709
  %713 = fsub fast float %706, %710
  %714 = fadd fast float %708, %704
  %715 = fadd fast float %709, %705
  %716 = fadd fast float %710, %706
  %717 = fcmp fast olt float %266, %711
  %718 = fcmp fast olt float %267, %712
  %719 = fcmp fast olt float %268, %713
  %720 = or i1 %717, %718
  %721 = or i1 %719, %720
  %722 = fcmp fast ogt float %266, %714
  %723 = fcmp fast ogt float %267, %715
  %724 = fcmp fast ogt float %268, %716
  %725 = or i1 %722, %723
  %726 = or i1 %724, %725
  %727 = or i1 %721, %726
  br i1 %727, label %728, label %731, !dx.controlflow.hints !58

; <label>:728                                     ; preds = %701
  %729 = add nuw i32 %702, 1
  %730 = icmp ult i32 %729, %698
  br i1 %730, label %701, label %731

; <label>:731                                     ; preds = %728, %701
  %732 = phi i32 [ 255, %728 ], [ %702, %701 ]
  br label %733

; <label>:733                                     ; preds = %731, %688
  %734 = phi i32 [ 255, %688 ], [ %732, %731 ]
  %735 = icmp eq i32 %734, 255
  br i1 %735, label %745, label %736, !dx.controlflow.hints !59

; <label>:736                                     ; preds = %733
  %737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %734, i32 32)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %734, i32 156)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = icmp ne i32 %742, 0
  %744 = zext i1 %743 to i32
  br label %745

; <label>:745                                     ; preds = %736, %733
  %746 = phi float [ %738, %736 ], [ %690, %733 ]
  %747 = phi float [ %739, %736 ], [ %691, %733 ]
  %748 = phi float [ %740, %736 ], [ %692, %733 ]
  %749 = phi i32 [ %744, %736 ], [ %696, %733 ]
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %820, !dx.controlflow.hints !60

; <label>:751                                     ; preds = %745
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 3
  %754 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 2
  %757 = extractvalue %dx.types.CBufRet.f32 %755, 3
  br i1 %735, label %768, label %758, !dx.controlflow.hints !61

; <label>:758                                     ; preds = %751
  %759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %734, i32 60)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %734, i32 64)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %734, i32 72)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %734, i32 96)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  br label %768

; <label>:768                                     ; preds = %758, %751
  %769 = phi float [ %760, %758 ], [ %473, %751 ]
  %770 = phi float [ %765, %758 ], [ %471, %751 ]
  %771 = phi float [ %767, %758 ], [ %754, %751 ]
  %772 = phi float [ %762, %758 ], [ %756, %751 ]
  %773 = phi float [ %763, %758 ], [ %757, %751 ]
  %774 = call float @dx.op.binary.f32(i32 35, float %554, float 0.000000e+00)  ; FMax(a,b)
  %775 = call float @dx.op.binary.f32(i32 36, float %774, float 1.000000e+00)  ; FMin(a,b)
  %776 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %777 = call float @dx.op.binary.f32(i32 35, float %557, float 0x3F847AE140000000)  ; FMax(a,b)
  %778 = fsub fast float %555, %268
  %779 = fsub fast float %268, %556
  %780 = call float @dx.op.binary.f32(i32 36, float %779, float %778)  ; FMin(a,b)
  %781 = fdiv fast float %780, %777
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %783 = fsub fast float %268, %770
  %784 = fdiv fast float %783, %769
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = fsub fast float 1.000000e+00, %785
  %787 = fmul float %782, %786
  %788 = fmul float %787, %787
  %789 = fmul fast float %776, %753
  %790 = fmul fast float %789, %788
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %793 = extractvalue %dx.types.CBufRet.f32 %791, 1
  %794 = fsub fast float %790, %793
  %795 = fsub fast float %792, %793
  %796 = fdiv fast float %794, %795
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %798 = fmul fast float %797, %771
  %799 = fcmp fast ogt float %773, 0.000000e+00
  br i1 %799, label %800, label %820, !dx.controlflow.hints !62

; <label>:800                                     ; preds = %768
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 0
  %803 = extractvalue %dx.types.CBufRet.f32 %801, 1
  %804 = extractvalue %dx.types.CBufRet.f32 %801, 2
  %805 = fsub fast float %266, %802
  %806 = fsub fast float %267, %803
  %807 = fsub fast float %268, %804
  %808 = fmul fast float %805, %805
  %809 = fmul fast float %806, %806
  %810 = fadd fast float %808, %809
  %811 = fmul fast float %807, %807
  %812 = fadd fast float %810, %811
  %813 = call float @dx.op.unary.f32(i32 24, float %812)  ; Sqrt(value)
  %814 = fsub fast float %813, %772
  %815 = fsub fast float %773, %772
  %816 = fdiv fast float %814, %815
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = fmul fast float %817, %817
  %819 = fmul fast float %818, %798
  br label %820

; <label>:820                                     ; preds = %800, %768, %745
  %821 = phi float [ 0.000000e+00, %745 ], [ %819, %800 ], [ %798, %768 ]
  %822 = fmul fast float %821, %575
  %823 = fmul fast float %822, %746
  %824 = fmul fast float %822, %747
  %825 = fmul fast float %822, %748
  %826 = fadd fast float %823, %685
  %827 = fadd fast float %824, %686
  %828 = fadd fast float %825, %687
  %829 = fadd fast float %822, %683
  br label %830

; <label>:830                                     ; preds = %820, %682
  %831 = phi float [ %829, %820 ], [ %683, %682 ]
  %832 = phi float [ %826, %820 ], [ %685, %682 ]
  %833 = phi float [ %827, %820 ], [ %686, %682 ]
  %834 = phi float [ %828, %820 ], [ %687, %682 ]
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 1
  %837 = fcmp fast ogt float %831, %836
  br i1 %837, label %838, label %844, !dx.controlflow.hints !63

; <label>:838                                     ; preds = %830
  %839 = fdiv fast float 1.000000e+00, %831
  %840 = fmul fast float %839, %832
  %841 = fmul fast float %839, %833
  %842 = fmul fast float %839, %834
  %843 = fmul fast float %839, %684
  br label %844

; <label>:844                                     ; preds = %838, %830
  %845 = phi float [ %843, %838 ], [ %684, %830 ]
  %846 = phi float [ %840, %838 ], [ %832, %830 ]
  %847 = phi float [ %841, %838 ], [ %833, %830 ]
  %848 = phi float [ %842, %838 ], [ %834, %830 ]
  br i1 %837, label %851, label %849, !dx.controlflow.hints !64

; <label>:849                                     ; preds = %844
  %850 = fadd fast float %575, %269
  br label %2247

; <label>:851                                     ; preds = %844
  %852 = fmul fast float %831, 0xBFF7154760000000
  %853 = call float @dx.op.unary.f32(i32 21, float %852)  ; Exp(value)
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.i32 %855, 0
  %857 = icmp eq i32 %856, 1
  br i1 %857, label %858, label %893, !dx.controlflow.hints !65

; <label>:858                                     ; preds = %851
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 0
  %861 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %862 = fsub fast float %266, %860
  %863 = fsub fast float %267, %861
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = fmul fast float %862, %865
  %868 = fmul fast float %863, %866
  %869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %867, float %868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = fcmp fast ogt float %870, 0.000000e+00
  %872 = extractvalue %dx.types.CBufRet.i32 %855, 3
  %873 = icmp ne i32 %872, 0
  %874 = and i1 %871, %873
  br i1 %874, label %875, label %893, !dx.controlflow.hints !66

; <label>:875                                     ; preds = %858
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = extractvalue %dx.types.CBufRet.f32 %876, 1
  %879 = fsub fast float %266, %877
  %880 = fsub fast float %267, %878
  %881 = fmul fast float %879, %879
  %882 = fmul fast float %880, %880
  %883 = fadd fast float %881, %882
  %884 = uitofp i32 %872 to float
  %885 = fmul fast float %884, %884
  %886 = fcmp fast ogt float %883, %885
  br i1 %886, label %893, label %887, !dx.controlflow.hints !67

; <label>:887                                     ; preds = %875
  %888 = call float @dx.op.unary.f32(i32 24, float %883)  ; Sqrt(value)
  %889 = fsub fast float %884, %888
  %890 = fmul fast float %889, 0x3F75555560000000
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = call float @dx.op.binary.f32(i32 36, float %891, float %870)  ; FMin(a,b)
  br label %893

; <label>:893                                     ; preds = %887, %875, %858, %851
  %894 = phi float [ 1.000000e+00, %851 ], [ %892, %887 ], [ %870, %858 ], [ 0.000000e+00, %875 ]
  %895 = fcmp fast ogt float %894, 0.000000e+00
  br i1 %895, label %896, label %969, !dx.controlflow.hints !68

; <label>:896                                     ; preds = %893
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = extractvalue %dx.types.ResRet.i32 %897, 1
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = extractvalue %dx.types.ResRet.i32 %900, 1
  %903 = extractvalue %dx.types.ResRet.i32 %900, 2
  %904 = extractvalue %dx.types.ResRet.i32 %900, 3
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = extractvalue %dx.types.ResRet.i32 %905, 1
  %908 = extractvalue %dx.types.ResRet.i32 %905, 2
  %909 = extractvalue %dx.types.ResRet.i32 %905, 3
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = extractvalue %dx.types.ResRet.i32 %910, 1
  %913 = extractvalue %dx.types.ResRet.i32 %910, 2
  %914 = extractvalue %dx.types.ResRet.i32 %910, 3
  %915 = and i32 %911, 65535
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = lshr i32 %911, 16
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = and i32 %912, 65535
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = lshr i32 %912, 16
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = and i32 %913, 65535
  %924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %923)  ; LegacyF16ToF32(value)
  %925 = lshr i32 %913, 16
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = and i32 %914, 65535
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = lshr i32 %914, 16
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = and i32 %906, 65535
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = lshr i32 %906, 16
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = and i32 %907, 65535
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = lshr i32 %907, 16
  %938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %937)  ; LegacyF16ToF32(value)
  %939 = and i32 %908, 65535
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = lshr i32 %908, 16
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = and i32 %909, 65535
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = lshr i32 %909, 16
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = and i32 %901, 65535
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = lshr i32 %901, 16
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = and i32 %902, 65535
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = lshr i32 %902, 16
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = and i32 %903, 65535
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = lshr i32 %903, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = and i32 %904, 65535
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = lshr i32 %904, 16
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = and i32 %898, 65535
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = lshr i32 %898, 16
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = and i32 %899, 65535
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  br label %969

; <label>:969                                     ; preds = %896, %893
  %970 = phi float [ %968, %896 ], [ 0.000000e+00, %893 ]
  %971 = phi float [ %966, %896 ], [ 0.000000e+00, %893 ]
  %972 = phi float [ %964, %896 ], [ 0.000000e+00, %893 ]
  %973 = phi float [ %962, %896 ], [ 0.000000e+00, %893 ]
  %974 = phi float [ %960, %896 ], [ 0.000000e+00, %893 ]
  %975 = phi float [ %958, %896 ], [ 0.000000e+00, %893 ]
  %976 = phi float [ %956, %896 ], [ 0.000000e+00, %893 ]
  %977 = phi float [ %954, %896 ], [ 0.000000e+00, %893 ]
  %978 = phi float [ %952, %896 ], [ 0.000000e+00, %893 ]
  %979 = phi float [ %950, %896 ], [ 0.000000e+00, %893 ]
  %980 = phi float [ %948, %896 ], [ 0.000000e+00, %893 ]
  %981 = phi float [ %946, %896 ], [ 0.000000e+00, %893 ]
  %982 = phi float [ %944, %896 ], [ 0.000000e+00, %893 ]
  %983 = phi float [ %942, %896 ], [ 0.000000e+00, %893 ]
  %984 = phi float [ %940, %896 ], [ 0.000000e+00, %893 ]
  %985 = phi float [ %938, %896 ], [ 0.000000e+00, %893 ]
  %986 = phi float [ %936, %896 ], [ 0.000000e+00, %893 ]
  %987 = phi float [ %934, %896 ], [ 0.000000e+00, %893 ]
  %988 = phi float [ %932, %896 ], [ 0.000000e+00, %893 ]
  %989 = phi float [ %930, %896 ], [ 0.000000e+00, %893 ]
  %990 = phi float [ %928, %896 ], [ 0.000000e+00, %893 ]
  %991 = phi float [ %926, %896 ], [ 0.000000e+00, %893 ]
  %992 = phi float [ %924, %896 ], [ 0.000000e+00, %893 ]
  %993 = phi float [ %922, %896 ], [ 0.000000e+00, %893 ]
  %994 = phi float [ %920, %896 ], [ 0.000000e+00, %893 ]
  %995 = phi float [ %918, %896 ], [ 0.000000e+00, %893 ]
  %996 = phi float [ %916, %896 ], [ 0.000000e+00, %893 ]
  %997 = fcmp fast olt float %894, 1.000000e+00
  br i1 %997, label %998, label %1658, !dx.controlflow.hints !69

; <label>:998                                     ; preds = %969
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = fsub fast float %266, %1000
  %1003 = fsub fast float %267, %1001
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = fmul fast float %1002, %1005
  %1008 = fmul fast float %1003, %1006
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = fmul fast float %1010, %1007
  %1012 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1013 = fadd fast float %1011, %1012
  %1014 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1015 = fmul fast float %1014, %1008
  %1016 = extractvalue %dx.types.CBufRet.f32 %1009, 3
  %1017 = fadd fast float %1015, %1016
  %1018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1013, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1024 = fsub fast float %1022, %1023
  %1025 = fmul fast float %1024, %1019
  %1026 = fadd fast float %1025, %1023
  %1027 = extractvalue %dx.types.CBufRet.f32 %1021, 3
  %1028 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1029 = fsub fast float %1027, %1028
  %1030 = fmul fast float %1029, %1020
  %1031 = fadd fast float %1030, %1028
  %1032 = fsub fast float %268, %1026
  %1033 = fsub fast float %1031, %1026
  %1034 = fdiv fast float %1032, %1033
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = fmul fast float %1037, %1035
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1040 = fadd fast float %1038, %1039
  %1041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %20, float %1013, float %1017, float %1040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1049 = fmul fast float %1046, %1042
  %1050 = fmul fast float %1047, %1043
  %1051 = fmul fast float %1048, %1044
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1056 = fadd fast float %1049, %1053
  %1057 = fadd fast float %1050, %1054
  %1058 = fadd fast float %1051, %1055
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = fmul fast float %1060, %1007
  %1062 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1063 = fadd fast float %1061, %1062
  %1064 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1065 = fmul fast float %1064, %1008
  %1066 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1067 = fadd fast float %1065, %1066
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.CBufRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.CBufRet.f32 %1068, 2
  %1072 = extractvalue %dx.types.CBufRet.f32 %1068, 3
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1077 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1063, float %1067, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = extractvalue %dx.types.ResRet.f32 %1078, 3
  %1083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1063, float %1067, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = fmul fast float %1079, %1056
  %1089 = fmul fast float %1084, %1056
  %1090 = fmul fast float %1086, %1056
  %1091 = fmul fast float %1082, %1056
  %1092 = fadd fast float %1088, %1069
  %1093 = fadd fast float %1089, %1070
  %1094 = fadd fast float %1090, %1071
  %1095 = fadd fast float %1091, %1072
  %1096 = fmul fast float %1080, %1056
  %1097 = fmul fast float %1085, %1056
  %1098 = fadd fast float %1096, %1074
  %1099 = fadd fast float %1097, %1075
  %1100 = fmul fast float %1081, %1056
  %1101 = fmul fast float %1087, %1056
  %1102 = fadd fast float %1100, %1076
  %1103 = fadd fast float %1101, %1077
  %1104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1063, float %1067, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = extractvalue %dx.types.ResRet.f32 %1104, 3
  %1109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1063, float %1067, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1113 = extractvalue %dx.types.ResRet.f32 %1109, 3
  %1114 = fmul fast float %1105, %1057
  %1115 = fmul fast float %1110, %1057
  %1116 = fmul fast float %1112, %1057
  %1117 = fmul fast float %1108, %1057
  %1118 = fadd fast float %1092, %1114
  %1119 = fadd fast float %1093, %1115
  %1120 = fadd fast float %1094, %1116
  %1121 = fadd fast float %1095, %1117
  %1122 = fmul fast float %1106, %1057
  %1123 = fmul fast float %1111, %1057
  %1124 = fadd fast float %1098, %1122
  %1125 = fadd fast float %1099, %1123
  %1126 = fmul fast float %1107, %1057
  %1127 = fmul fast float %1113, %1057
  %1128 = fadd fast float %1102, %1126
  %1129 = fadd fast float %1103, %1127
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1063, float %1067, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = extractvalue %dx.types.ResRet.f32 %1130, 3
  %1135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %20, float %1063, float %1067, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = extractvalue %dx.types.ResRet.f32 %1135, 3
  %1140 = fmul fast float %1131, %1058
  %1141 = fmul fast float %1136, %1058
  %1142 = fmul fast float %1138, %1058
  %1143 = fmul fast float %1134, %1058
  %1144 = fadd fast float %1118, %1140
  %1145 = fadd fast float %1119, %1141
  %1146 = fadd fast float %1120, %1142
  %1147 = fadd fast float %1121, %1143
  %1148 = fmul fast float %1132, %1058
  %1149 = fmul fast float %1137, %1058
  %1150 = fadd fast float %1124, %1148
  %1151 = fadd fast float %1125, %1149
  %1152 = fmul fast float %1133, %1058
  %1153 = fmul fast float %1139, %1058
  %1154 = fadd fast float %1128, %1152
  %1155 = fadd fast float %1129, %1153
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = fsub fast float %266, %1157
  %1159 = fsub fast float %1000, %266
  %1160 = call float @dx.op.binary.f32(i32 35, float %1159, float %1158)  ; FMax(a,b)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1162 = fsub fast float %267, %1161
  %1163 = fsub fast float %1001, %267
  %1164 = call float @dx.op.binary.f32(i32 35, float %1163, float %1162)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 35, float %1160, float %1164)  ; FMax(a,b)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1004, 3
  %1167 = fmul fast float %1166, %1165
  %1168 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1173 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1174 = fsub fast float %1170, %1144
  %1175 = fsub fast float %1171, %1145
  %1176 = fsub fast float %1172, %1146
  %1177 = fsub fast float %1173, %1147
  %1178 = fmul fast float %1174, %1168
  %1179 = fmul fast float %1175, %1168
  %1180 = fmul fast float %1176, %1168
  %1181 = fmul fast float %1177, %1168
  %1182 = fadd fast float %1178, %1144
  %1183 = fadd fast float %1179, %1145
  %1184 = fadd fast float %1180, %1146
  %1185 = fadd fast float %1181, %1147
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.CBufRet.f32 %1186, 1
  %1189 = fsub fast float %1187, %1150
  %1190 = fsub fast float %1188, %1151
  %1191 = fmul fast float %1189, %1168
  %1192 = fmul fast float %1190, %1168
  %1193 = fadd fast float %1191, %1150
  %1194 = fadd fast float %1192, %1151
  %1195 = extractvalue %dx.types.CBufRet.f32 %1186, 2
  %1196 = extractvalue %dx.types.CBufRet.f32 %1186, 3
  %1197 = fsub fast float %1195, %1154
  %1198 = fsub fast float %1196, %1155
  %1199 = fmul fast float %1197, %1168
  %1200 = fmul fast float %1198, %1168
  %1201 = fadd fast float %1199, %1154
  %1202 = fadd fast float %1200, %1155
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 0
  %1205 = fmul fast float %1204, %1182
  %1206 = fmul fast float %1204, %1183
  %1207 = fmul fast float %1204, %1184
  %1208 = fmul fast float %1204, %1185
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = fmul fast float %1210, %1193
  %1212 = fmul fast float %1210, %1194
  %1213 = fadd fast float %1211, %1205
  %1214 = fadd fast float %1212, %1207
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = fmul fast float %1216, %1201
  %1218 = fmul fast float %1216, %1202
  %1219 = fadd fast float %1213, %1217
  %1220 = fadd fast float %1214, %1218
  %1221 = extractvalue %dx.types.CBufRet.f32 %1203, 1
  %1222 = fmul fast float %1221, %1182
  %1223 = fmul fast float %1221, %1183
  %1224 = fmul fast float %1221, %1184
  %1225 = fmul fast float %1221, %1185
  %1226 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1227 = fmul fast float %1226, %1193
  %1228 = fmul fast float %1226, %1194
  %1229 = fadd fast float %1227, %1222
  %1230 = fadd fast float %1228, %1224
  %1231 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1232 = fmul fast float %1231, %1201
  %1233 = fmul fast float %1231, %1202
  %1234 = fadd fast float %1229, %1232
  %1235 = fadd fast float %1230, %1233
  %1236 = extractvalue %dx.types.CBufRet.f32 %1203, 2
  %1237 = fmul fast float %1236, %1182
  %1238 = fmul fast float %1236, %1183
  %1239 = fmul fast float %1236, %1184
  %1240 = fmul fast float %1236, %1185
  %1241 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1242 = fmul fast float %1241, %1193
  %1243 = fmul fast float %1241, %1194
  %1244 = fadd fast float %1242, %1237
  %1245 = fadd fast float %1243, %1239
  %1246 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1247 = fmul fast float %1246, %1201
  %1248 = fmul fast float %1246, %1202
  %1249 = fadd fast float %1244, %1247
  %1250 = fadd fast float %1245, %1248
  %1251 = fmul fast float %1238, %1238
  %1252 = fmul fast float %1250, %1250
  %1253 = fmul fast float %1240, %1240
  %1254 = fadd fast float %1253, %1251
  %1255 = fadd fast float %1254, %1252
  %1256 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1257 = fcmp fast ugt float %1256, 0.000000e+00
  br i1 %1257, label %1258, label %1273, !dx.controlflow.hints !70

; <label>:1258                                    ; preds = %998
  %1259 = fsub fast float -0.000000e+00, %1240
  %1260 = fdiv fast float %1259, %1256
  %1261 = fsub fast float -0.000000e+00, %1238
  %1262 = fdiv fast float %1261, %1256
  %1263 = fdiv fast float %1250, %1256
  %1264 = fmul fast float %1249, 0x3FE279A760000000
  %1265 = fmul fast float %1262, %1238
  %1266 = fmul fast float %1263, %1250
  %1267 = fmul fast float %1260, %1240
  %1268 = fadd fast float %1265, %1267
  %1269 = fsub fast float %1268, %1266
  %1270 = call float @dx.op.unary.f32(i32 6, float %1269)  ; FAbs(value)
  %1271 = fadd fast float %1270, 0x3DDB7CDFE0000000
  %1272 = fdiv fast float %1264, %1271
  br label %1273

; <label>:1273                                    ; preds = %1258, %998
  %1274 = phi float [ %1272, %1258 ], [ 1.000000e+00, %998 ]
  %1275 = fmul fast float %1223, %1223
  %1276 = fmul fast float %1235, %1235
  %1277 = fmul fast float %1225, %1225
  %1278 = fadd fast float %1277, %1275
  %1279 = fadd fast float %1278, %1276
  %1280 = call float @dx.op.unary.f32(i32 24, float %1279)  ; Sqrt(value)
  %1281 = fcmp fast ugt float %1280, 0.000000e+00
  br i1 %1281, label %1282, label %1297, !dx.controlflow.hints !70

; <label>:1282                                    ; preds = %1273
  %1283 = fsub fast float -0.000000e+00, %1225
  %1284 = fdiv fast float %1283, %1280
  %1285 = fsub fast float -0.000000e+00, %1223
  %1286 = fdiv fast float %1285, %1280
  %1287 = fdiv fast float %1235, %1280
  %1288 = fmul fast float %1234, 0x3FE279A760000000
  %1289 = fmul fast float %1286, %1223
  %1290 = fmul fast float %1287, %1235
  %1291 = fmul fast float %1284, %1225
  %1292 = fadd fast float %1289, %1291
  %1293 = fsub fast float %1292, %1290
  %1294 = call float @dx.op.unary.f32(i32 6, float %1293)  ; FAbs(value)
  %1295 = fadd fast float %1294, 0x3DDB7CDFE0000000
  %1296 = fdiv fast float %1288, %1295
  br label %1297

; <label>:1297                                    ; preds = %1282, %1273
  %1298 = phi float [ %1296, %1282 ], [ 1.000000e+00, %1273 ]
  %1299 = call float @dx.op.binary.f32(i32 36, float %1298, float %1274)  ; FMin(a,b)
  %1300 = fmul fast float %1206, %1206
  %1301 = fmul fast float %1220, %1220
  %1302 = fmul fast float %1208, %1208
  %1303 = fadd fast float %1302, %1300
  %1304 = fadd fast float %1303, %1301
  %1305 = call float @dx.op.unary.f32(i32 24, float %1304)  ; Sqrt(value)
  %1306 = fcmp fast ugt float %1305, 0.000000e+00
  br i1 %1306, label %1307, label %1322, !dx.controlflow.hints !70

; <label>:1307                                    ; preds = %1297
  %1308 = fsub fast float -0.000000e+00, %1208
  %1309 = fdiv fast float %1308, %1305
  %1310 = fsub fast float -0.000000e+00, %1206
  %1311 = fdiv fast float %1310, %1305
  %1312 = fdiv fast float %1220, %1305
  %1313 = fmul fast float %1219, 0x3FE279A760000000
  %1314 = fmul fast float %1311, %1206
  %1315 = fmul fast float %1312, %1220
  %1316 = fmul fast float %1309, %1208
  %1317 = fadd fast float %1314, %1316
  %1318 = fsub fast float %1317, %1315
  %1319 = call float @dx.op.unary.f32(i32 6, float %1318)  ; FAbs(value)
  %1320 = fadd fast float %1319, 0x3DDB7CDFE0000000
  %1321 = fdiv fast float %1313, %1320
  br label %1322

; <label>:1322                                    ; preds = %1307, %1297
  %1323 = phi float [ %1321, %1307 ], [ 1.000000e+00, %1297 ]
  %1324 = call float @dx.op.binary.f32(i32 36, float %1323, float %1299)  ; FMin(a,b)
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1326 = fcmp fast olt float %1325, 1.000000e+00
  br i1 %1326, label %1327, label %1337, !dx.controlflow.hints !71

; <label>:1327                                    ; preds = %1322
  %1328 = fmul fast float %1325, %1206
  %1329 = fmul fast float %1325, %1220
  %1330 = fmul fast float %1325, %1208
  %1331 = fmul fast float %1325, %1223
  %1332 = fmul fast float %1325, %1235
  %1333 = fmul fast float %1325, %1225
  %1334 = fmul fast float %1325, %1238
  %1335 = fmul fast float %1325, %1250
  %1336 = fmul fast float %1325, %1240
  br label %1337

; <label>:1337                                    ; preds = %1327, %1322
  %1338 = phi float [ %1334, %1327 ], [ %1238, %1322 ]
  %1339 = phi float [ %1335, %1327 ], [ %1250, %1322 ]
  %1340 = phi float [ %1336, %1327 ], [ %1240, %1322 ]
  %1341 = phi float [ %1331, %1327 ], [ %1223, %1322 ]
  %1342 = phi float [ %1332, %1327 ], [ %1235, %1322 ]
  %1343 = phi float [ %1333, %1327 ], [ %1225, %1322 ]
  %1344 = phi float [ %1328, %1327 ], [ %1206, %1322 ]
  %1345 = phi float [ %1329, %1327 ], [ %1220, %1322 ]
  %1346 = phi float [ %1330, %1327 ], [ %1208, %1322 ]
  %1347 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1219)  ; FMax(a,b)
  %1348 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1234)  ; FMax(a,b)
  %1349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1249)  ; FMax(a,b)
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 0
  %1352 = fcmp fast ogt float %1351, 0.000000e+00
  %1353 = fcmp fast oge float %1007, 0.000000e+00
  %1354 = and i1 %1353, %1352
  %1355 = fcmp fast ole float %1007, 1.000000e+00
  %1356 = and i1 %1355, %1354
  %1357 = fcmp fast oge float %1008, 0.000000e+00
  %1358 = and i1 %1357, %1356
  %1359 = fcmp fast ole float %1008, 1.000000e+00
  %1360 = and i1 %1359, %1358
  br i1 %1360, label %1361, label %1506, !dx.controlflow.hints !72

; <label>:1361                                    ; preds = %1337
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1364 = extractvalue %dx.types.CBufRet.f32 %1362, 3
  %1365 = fmul fast float %1363, %1007
  %1366 = fmul fast float %1364, %1008
  %1367 = call float @dx.op.unary.f32(i32 27, float %1365)  ; Round_ni(value)
  %1368 = call float @dx.op.unary.f32(i32 27, float %1366)  ; Round_ni(value)
  %1369 = fptosi float %1367 to i32
  %1370 = fptosi float %1368 to i32
  %1371 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1369, i32 %1370, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 65535
  %1374 = lshr i32 %1372, 16
  %1375 = icmp eq i32 %1373, 65535
  br i1 %1375, label %1412, label %1376, !dx.controlflow.hints !73

; <label>:1376                                    ; preds = %1361
  %1377 = extractvalue %dx.types.CBufRet.f32 %1350, 1
  %1378 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1379 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1380 = fmul fast float %1378, %1007
  %1381 = fmul fast float %1379, %1008
  %1382 = fmul fast float %1380, 1.250000e-01
  %1383 = fmul fast float %1381, 1.250000e-01
  %1384 = call float @dx.op.unary.f32(i32 27, float %1382)  ; Round_ni(value)
  %1385 = call float @dx.op.unary.f32(i32 27, float %1383)  ; Round_ni(value)
  %1386 = fmul fast float %1384, 8.000000e+00
  %1387 = fmul fast float %1385, 8.000000e+00
  %1388 = and i32 %1372, 255
  %1389 = lshr i32 %1372, 8
  %1390 = and i32 %1389, 255
  %1391 = mul nuw nsw i32 %1388, 9
  %1392 = uitofp i32 %1391 to float
  %1393 = mul nuw nsw i32 %1390, 9
  %1394 = uitofp i32 %1393 to float
  %1395 = fadd fast float %1392, 5.000000e-01
  %1396 = fadd fast float %1395, %1380
  %1397 = fsub fast float %1396, %1386
  %1398 = fadd fast float %1394, 5.000000e-01
  %1399 = fadd fast float %1398, %1381
  %1400 = fsub fast float %1399, %1387
  %1401 = fdiv fast float %1397, %1351
  %1402 = fdiv fast float %1400, %1377
  %1403 = fmul fast float %1035, 4.375000e-01
  %1404 = fadd fast float %1403, 3.125000e-02
  %1405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %1401, float %1402, float %1404, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.ResRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.ResRet.f32 %1405, 2
  %1409 = fadd fast float %1406, %1347
  %1410 = fadd fast float %1407, %1348
  %1411 = fadd fast float %1408, %1349
  br label %1412

; <label>:1412                                    ; preds = %1376, %1361
  %1413 = phi float [ %1411, %1376 ], [ %1349, %1361 ]
  %1414 = phi float [ %1410, %1376 ], [ %1348, %1361 ]
  %1415 = phi float [ %1409, %1376 ], [ %1347, %1361 ]
  %1416 = icmp eq i32 %1374, 65535
  br i1 %1416, label %1506, label %1417, !dx.controlflow.hints !74

; <label>:1417                                    ; preds = %1412
  %1418 = extractvalue %dx.types.CBufRet.f32 %1350, 1
  %1419 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1420 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1421 = fmul fast float %1419, %1007
  %1422 = fmul fast float %1420, %1008
  %1423 = fmul fast float %1421, 1.250000e-01
  %1424 = fmul fast float %1422, 1.250000e-01
  %1425 = call float @dx.op.unary.f32(i32 27, float %1423)  ; Round_ni(value)
  %1426 = call float @dx.op.unary.f32(i32 27, float %1424)  ; Round_ni(value)
  %1427 = fmul fast float %1425, 8.000000e+00
  %1428 = fmul fast float %1426, 8.000000e+00
  %1429 = fsub fast float %1421, %1427
  %1430 = fsub fast float %1422, %1428
  %1431 = fadd fast float %1429, 5.000000e-01
  %1432 = fadd fast float %1430, 5.000000e-01
  %1433 = and i32 %1374, 255
  %1434 = lshr i32 %1372, 24
  %1435 = mul nuw nsw i32 %1433, 9
  %1436 = uitofp i32 %1435 to float
  %1437 = mul nuw nsw i32 %1434, 9
  %1438 = uitofp i32 %1437 to float
  %1439 = fadd fast float %1431, %1436
  %1440 = fadd fast float %1432, %1438
  %1441 = fdiv fast float %1439, %1351
  %1442 = fdiv fast float %1440, %1418
  %1443 = fmul fast float %1035, 4.375000e-01
  %1444 = fadd fast float %1443, 3.125000e-02
  %1445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %1441, float %1442, float %1444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.ResRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.ResRet.f32 %1445, 2
  %1449 = fadd fast float %1443, 5.312500e-01
  %1450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %20, float %1441, float %1442, float %1449, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.ResRet.f32 %1450, 2
  %1454 = fmul fast float %1451, 2.000000e+00
  %1455 = fmul fast float %1452, 2.000000e+00
  %1456 = fmul fast float %1453, 2.000000e+00
  %1457 = fadd fast float %1454, -1.000000e+00
  %1458 = fadd fast float %1455, -1.000000e+00
  %1459 = fadd fast float %1456, -1.000000e+00
  %1460 = fmul fast float %1457, %1457
  %1461 = fmul fast float %1458, %1458
  %1462 = fadd fast float %1460, %1461
  %1463 = fmul fast float %1459, %1459
  %1464 = fadd fast float %1462, %1463
  %1465 = call float @dx.op.unary.f32(i32 24, float %1464)  ; Sqrt(value)
  %1466 = fcmp fast ogt float %1465, 0.000000e+00
  br i1 %1466, label %1467, label %1471, !dx.controlflow.hints !75

; <label>:1467                                    ; preds = %1417
  %1468 = fdiv fast float %1457, %1465
  %1469 = fdiv fast float %1458, %1465
  %1470 = fdiv fast float %1459, %1465
  br label %1471

; <label>:1471                                    ; preds = %1467, %1417
  %1472 = phi float [ %1468, %1467 ], [ 0.000000e+00, %1417 ]
  %1473 = phi float [ %1469, %1467 ], [ 0.000000e+00, %1417 ]
  %1474 = phi float [ %1470, %1467 ], [ 0.000000e+00, %1417 ]
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.CBufRet.f32 %1475, 1
  %1478 = fsub fast float %266, %1476
  %1479 = fsub fast float %267, %1477
  %1480 = fmul fast float %1478, %1478
  %1481 = fmul fast float %1479, %1479
  %1482 = fadd fast float %1480, %1481
  %1483 = call float @dx.op.unary.f32(i32 24, float %1482)  ; Sqrt(value)
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1487 = fsub fast float %1483, %1485
  %1488 = fdiv fast float %1487, %1486
  %1489 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1490 = fmul fast float %1489, 2.000000e+00
  %1491 = fsub fast float 3.000000e+00, %1490
  %1492 = fmul fast float %1489, %1489
  %1493 = fmul fast float %1492, %1491
  %1494 = call float @dx.op.dot3.f32(i32 55, float %1472, float %1473, float %1474, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1494)  ; FMax(a,b)
  %1496 = fmul fast float %1495, 0x400C5BF8A0000000
  %1497 = fmul fast float %1493, %1446
  %1498 = fmul fast float %1497, %1496
  %1499 = fadd fast float %1498, %1415
  %1500 = fmul fast float %1493, %1447
  %1501 = fmul fast float %1500, %1496
  %1502 = fadd fast float %1501, %1414
  %1503 = fmul fast float %1493, %1448
  %1504 = fmul fast float %1503, %1496
  %1505 = fadd fast float %1504, %1413
  br label %1506

; <label>:1506                                    ; preds = %1471, %1412, %1337
  %1507 = phi float [ %1505, %1471 ], [ %1413, %1412 ], [ %1349, %1337 ]
  %1508 = phi float [ %1502, %1471 ], [ %1414, %1412 ], [ %1348, %1337 ]
  %1509 = phi float [ %1499, %1471 ], [ %1415, %1412 ], [ %1347, %1337 ]
  %1510 = fcmp fast ogt float %268, %1031
  %1511 = and i1 %1353, %1510
  %1512 = and i1 %1355, %1511
  %1513 = and i1 %1357, %1512
  %1514 = and i1 %1359, %1513
  br i1 %1514, label %1515, label %1572, !dx.controlflow.hints !76

; <label>:1515                                    ; preds = %1506
  %1516 = fmul fast float %1033, 0x3FC24924A0000000
  %1517 = fsub fast float %268, %1031
  %1518 = fdiv fast float %1517, %1516
  %1519 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1525 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1526 = fsub fast float %1521, %1509
  %1527 = fsub fast float %1523, %1344
  %1528 = fsub fast float %1524, %1345
  %1529 = fsub fast float %1525, %1346
  %1530 = fmul fast float %1526, %1519
  %1531 = fmul fast float %1527, %1519
  %1532 = fmul fast float %1528, %1519
  %1533 = fmul fast float %1529, %1519
  %1534 = fadd fast float %1530, %1509
  %1535 = fadd fast float %1531, %1344
  %1536 = fadd fast float %1532, %1345
  %1537 = fadd fast float %1533, %1346
  %1538 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.CBufRet.f32 %1539, 2
  %1543 = fsub fast float %1538, %1508
  %1544 = fsub fast float %1540, %1341
  %1545 = fsub fast float %1541, %1342
  %1546 = fsub fast float %1542, %1343
  %1547 = fmul fast float %1543, %1519
  %1548 = fmul fast float %1544, %1519
  %1549 = fmul fast float %1545, %1519
  %1550 = fmul fast float %1546, %1519
  %1551 = fadd fast float %1547, %1508
  %1552 = fadd fast float %1548, %1341
  %1553 = fadd fast float %1549, %1342
  %1554 = fadd fast float %1550, %1343
  %1555 = extractvalue %dx.types.CBufRet.f32 %1520, 2
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1560 = fsub fast float %1555, %1507
  %1561 = fsub fast float %1557, %1338
  %1562 = fsub fast float %1558, %1339
  %1563 = fsub fast float %1559, %1340
  %1564 = fmul fast float %1560, %1519
  %1565 = fmul fast float %1561, %1519
  %1566 = fmul fast float %1562, %1519
  %1567 = fmul fast float %1563, %1519
  %1568 = fadd fast float %1564, %1507
  %1569 = fadd fast float %1565, %1338
  %1570 = fadd fast float %1566, %1339
  %1571 = fadd fast float %1567, %1340
  br label %1572

; <label>:1572                                    ; preds = %1515, %1506
  %1573 = phi float [ %1568, %1515 ], [ %1507, %1506 ]
  %1574 = phi float [ %1569, %1515 ], [ %1338, %1506 ]
  %1575 = phi float [ %1570, %1515 ], [ %1339, %1506 ]
  %1576 = phi float [ %1571, %1515 ], [ %1340, %1506 ]
  %1577 = phi float [ %1551, %1515 ], [ %1508, %1506 ]
  %1578 = phi float [ %1552, %1515 ], [ %1341, %1506 ]
  %1579 = phi float [ %1553, %1515 ], [ %1342, %1506 ]
  %1580 = phi float [ %1554, %1515 ], [ %1343, %1506 ]
  %1581 = phi float [ %1534, %1515 ], [ %1509, %1506 ]
  %1582 = phi float [ %1535, %1515 ], [ %1344, %1506 ]
  %1583 = phi float [ %1536, %1515 ], [ %1345, %1506 ]
  %1584 = phi float [ %1537, %1515 ], [ %1346, %1506 ]
  %1585 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1586 = fmul fast float %1585, %1581
  %1587 = fmul fast float %1585, %1577
  %1588 = fmul fast float %1585, %1573
  %1589 = fmul fast float %1582, 1.500000e+00
  %1590 = fmul fast float %1589, %1585
  %1591 = fmul fast float %1583, 1.500000e+00
  %1592 = fmul fast float %1591, %1585
  %1593 = fmul fast float %1584, 1.500000e+00
  %1594 = fmul fast float %1593, %1585
  %1595 = fmul fast float %1578, 1.500000e+00
  %1596 = fmul fast float %1595, %1585
  %1597 = fmul fast float %1579, 1.500000e+00
  %1598 = fmul fast float %1597, %1585
  %1599 = fmul fast float %1580, 1.500000e+00
  %1600 = fmul fast float %1599, %1585
  %1601 = fmul fast float %1574, 1.500000e+00
  %1602 = fmul fast float %1601, %1585
  %1603 = fmul fast float %1575, 1.500000e+00
  %1604 = fmul fast float %1603, %1585
  %1605 = fmul fast float %1576, 1.500000e+00
  %1606 = fmul fast float %1605, %1585
  %1607 = fsub fast float %996, %1586
  %1608 = fmul fast float %1607, %894
  %1609 = fadd fast float %1608, %1586
  %1610 = fsub fast float %995, %1590
  %1611 = fmul fast float %1610, %894
  %1612 = fadd fast float %1611, %1590
  %1613 = fsub fast float %994, %1592
  %1614 = fmul fast float %1613, %894
  %1615 = fadd fast float %1614, %1592
  %1616 = fsub fast float %993, %1594
  %1617 = fmul fast float %1616, %894
  %1618 = fadd fast float %1617, %1594
  %1619 = fmul fast float %992, %894
  %1620 = fmul fast float %991, %894
  %1621 = fmul fast float %990, %894
  %1622 = fmul fast float %989, %894
  %1623 = fmul fast float %988, %894
  %1624 = fsub fast float %987, %1587
  %1625 = fmul fast float %1624, %894
  %1626 = fadd fast float %1625, %1587
  %1627 = fsub fast float %986, %1596
  %1628 = fmul fast float %1627, %894
  %1629 = fadd fast float %1628, %1596
  %1630 = fsub fast float %985, %1598
  %1631 = fmul fast float %1630, %894
  %1632 = fadd fast float %1631, %1598
  %1633 = fsub fast float %984, %1600
  %1634 = fmul fast float %1633, %894
  %1635 = fadd fast float %1634, %1600
  %1636 = fmul fast float %983, %894
  %1637 = fmul fast float %982, %894
  %1638 = fmul fast float %981, %894
  %1639 = fmul fast float %980, %894
  %1640 = fmul fast float %979, %894
  %1641 = fsub fast float %978, %1588
  %1642 = fmul fast float %1641, %894
  %1643 = fadd fast float %1642, %1588
  %1644 = fsub fast float %977, %1602
  %1645 = fmul fast float %1644, %894
  %1646 = fadd fast float %1645, %1602
  %1647 = fsub fast float %976, %1604
  %1648 = fmul fast float %1647, %894
  %1649 = fadd fast float %1648, %1604
  %1650 = fsub fast float %975, %1606
  %1651 = fmul fast float %1650, %894
  %1652 = fadd fast float %1651, %1606
  %1653 = fmul fast float %974, %894
  %1654 = fmul fast float %973, %894
  %1655 = fmul fast float %972, %894
  %1656 = fmul fast float %971, %894
  %1657 = fmul fast float %970, %894
  br label %1658

; <label>:1658                                    ; preds = %1572, %969
  %1659 = phi float [ %1657, %1572 ], [ %970, %969 ]
  %1660 = phi float [ %1656, %1572 ], [ %971, %969 ]
  %1661 = phi float [ %1655, %1572 ], [ %972, %969 ]
  %1662 = phi float [ %1654, %1572 ], [ %973, %969 ]
  %1663 = phi float [ %1653, %1572 ], [ %974, %969 ]
  %1664 = phi float [ %1652, %1572 ], [ %975, %969 ]
  %1665 = phi float [ %1649, %1572 ], [ %976, %969 ]
  %1666 = phi float [ %1646, %1572 ], [ %977, %969 ]
  %1667 = phi float [ %1643, %1572 ], [ %978, %969 ]
  %1668 = phi float [ %1640, %1572 ], [ %979, %969 ]
  %1669 = phi float [ %1639, %1572 ], [ %980, %969 ]
  %1670 = phi float [ %1638, %1572 ], [ %981, %969 ]
  %1671 = phi float [ %1637, %1572 ], [ %982, %969 ]
  %1672 = phi float [ %1636, %1572 ], [ %983, %969 ]
  %1673 = phi float [ %1635, %1572 ], [ %984, %969 ]
  %1674 = phi float [ %1632, %1572 ], [ %985, %969 ]
  %1675 = phi float [ %1629, %1572 ], [ %986, %969 ]
  %1676 = phi float [ %1626, %1572 ], [ %987, %969 ]
  %1677 = phi float [ %1623, %1572 ], [ %988, %969 ]
  %1678 = phi float [ %1622, %1572 ], [ %989, %969 ]
  %1679 = phi float [ %1621, %1572 ], [ %990, %969 ]
  %1680 = phi float [ %1620, %1572 ], [ %991, %969 ]
  %1681 = phi float [ %1619, %1572 ], [ %992, %969 ]
  %1682 = phi float [ %1618, %1572 ], [ %993, %969 ]
  %1683 = phi float [ %1615, %1572 ], [ %994, %969 ]
  %1684 = phi float [ %1612, %1572 ], [ %995, %969 ]
  %1685 = phi float [ %1609, %1572 ], [ %996, %969 ]
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1688 = fmul fast float %1687, %1687
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1692 = extractvalue %dx.types.CBufRet.f32 %1689, 2
  %1693 = fmul fast float %1685, 0x3FD20DD760000000
  %1694 = fmul fast float %1692, %1683
  %1695 = fmul fast float %1692, %1692
  %1696 = fmul fast float %1695, 0x3FEE471020000000
  %1697 = fadd fast float %1696, 0xBFD42F6020000000
  %1698 = fmul fast float %1697, %1679
  %1699 = fmul fast float %1690, %1682
  %1700 = fmul fast float %1691, %1684
  %1701 = fmul fast float %1692, 0x3FF17B1420000000
  %1702 = fmul fast float %1688, %1678
  %1703 = fmul fast float %1702, %1690
  %1704 = fmul fast float %1703, %1701
  %1705 = fmul fast float %1688, %1680
  %1706 = fmul fast float %1705, %1691
  %1707 = fmul fast float %1706, %1701
  %1708 = fmul fast float %1690, %1690
  %1709 = fmul fast float %1691, %1691
  %1710 = fsub fast float %1708, %1709
  %1711 = fmul fast float %1677, 0x3FE17B1420000000
  %1712 = fmul fast float %1711, %1710
  %1713 = fmul fast float %1681, 0x3FF17B1420000000
  %1714 = fmul fast float %1713, %1691
  %1715 = fmul fast float %1714, %1690
  %1716 = fadd fast float %1712, %1715
  %1717 = fadd fast float %1716, %1698
  %1718 = fmul fast float %1717, %1688
  %1719 = fsub fast float %1700, %1694
  %1720 = fadd fast float %1719, %1699
  %1721 = fmul fast float %1720, 0x3FDF454380000000
  %1722 = fmul fast float %1721, %1687
  %1723 = fsub fast float %1693, %1704
  %1724 = fsub fast float %1723, %1707
  %1725 = fadd fast float %1724, %1718
  %1726 = fadd fast float %1725, %1722
  %1727 = fmul fast float %1676, 0x3FD20DD760000000
  %1728 = fmul fast float %1692, %1674
  %1729 = fmul fast float %1697, %1670
  %1730 = fmul fast float %1690, %1673
  %1731 = fmul fast float %1691, %1675
  %1732 = fmul fast float %1688, %1669
  %1733 = fmul fast float %1732, %1690
  %1734 = fmul fast float %1733, %1701
  %1735 = fmul fast float %1688, %1671
  %1736 = fmul fast float %1735, %1691
  %1737 = fmul fast float %1736, %1701
  %1738 = fmul fast float %1668, 0x3FE17B1420000000
  %1739 = fmul fast float %1738, %1710
  %1740 = fmul fast float %1672, 0x3FF17B1420000000
  %1741 = fmul fast float %1740, %1691
  %1742 = fmul fast float %1741, %1690
  %1743 = fadd fast float %1739, %1742
  %1744 = fadd fast float %1743, %1729
  %1745 = fmul fast float %1744, %1688
  %1746 = fsub fast float %1731, %1728
  %1747 = fadd fast float %1746, %1730
  %1748 = fmul fast float %1747, 0x3FDF454380000000
  %1749 = fmul fast float %1748, %1687
  %1750 = fsub fast float %1727, %1734
  %1751 = fsub fast float %1750, %1737
  %1752 = fadd fast float %1751, %1745
  %1753 = fadd fast float %1752, %1749
  %1754 = fmul fast float %1667, 0x3FD20DD760000000
  %1755 = fmul fast float %1692, %1665
  %1756 = fmul fast float %1697, %1661
  %1757 = fmul fast float %1690, %1664
  %1758 = fmul fast float %1691, %1666
  %1759 = fmul fast float %1688, %1660
  %1760 = fmul fast float %1759, %1690
  %1761 = fmul fast float %1760, %1701
  %1762 = fmul fast float %1688, %1662
  %1763 = fmul fast float %1762, %1691
  %1764 = fmul fast float %1763, %1701
  %1765 = fmul fast float %1659, 0x3FE17B1420000000
  %1766 = fmul fast float %1765, %1710
  %1767 = fmul fast float %1663, 0x3FF17B1420000000
  %1768 = fmul fast float %1767, %1691
  %1769 = fmul fast float %1768, %1690
  %1770 = fadd fast float %1766, %1769
  %1771 = fadd fast float %1770, %1756
  %1772 = fmul fast float %1771, %1688
  %1773 = fsub fast float %1758, %1755
  %1774 = fadd fast float %1773, %1757
  %1775 = fmul fast float %1774, 0x3FDF454380000000
  %1776 = fmul fast float %1775, %1687
  %1777 = fsub fast float %1754, %1761
  %1778 = fsub fast float %1777, %1764
  %1779 = fadd fast float %1778, %1772
  %1780 = fadd fast float %1779, %1776
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 3
  %1783 = extractvalue %dx.types.CBufRet.f32 %835, 0
  %1784 = fmul fast float %1783, %1782
  %1785 = fmul fast float %1784, %1726
  %1786 = fmul fast float %1784, %1753
  %1787 = fmul fast float %1784, %1780
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1790 = fcmp fast une float %1789, 0.000000e+00
  %1791 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1792 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1793 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  br i1 %1790, label %1794, label %1816, !dx.controlflow.hints !77

; <label>:1794                                    ; preds = %1658
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.CBufRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.CBufRet.f32 %1795, 2
  %1799 = call float @dx.op.dot3.f32(i32 55, float %1791, float %1792, float %1793, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %1800 = fcmp fast ogt float %845, 0.000000e+00
  %1801 = select i1 %1800, float 1.000000e+00, float -1.000000e+00
  %1802 = fmul fast float %1801, 5.000000e-01
  %1803 = fmul fast float %1802, %1799
  %1804 = fmul fast float %1801, %845
  %1805 = fadd fast float %1803, 4.921875e-01
  %1806 = fadd fast float %1804, -3.125000e-02
  %1807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %20, float %1805, float 0x3FB25F3060000000, float %1806, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1811 = fmul fast float %1808, 0x400921FB60000000
  %1812 = fmul fast float %1811, %1810
  %1813 = fmul fast float %1812, %1796
  %1814 = fmul fast float %1812, %1797
  %1815 = fmul fast float %1812, %1798
  br label %1816

; <label>:1816                                    ; preds = %1794, %1658
  %1817 = phi float [ %1813, %1794 ], [ 0.000000e+00, %1658 ]
  %1818 = phi float [ %1814, %1794 ], [ 0.000000e+00, %1658 ]
  %1819 = phi float [ %1815, %1794 ], [ 0.000000e+00, %1658 ]
  %1820 = fdiv fast float 1.000000e+00, %1791
  %1821 = fdiv fast float 1.000000e+00, %1792
  %1822 = fdiv fast float 1.000000e+00, %1793
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = fmul fast float %1824, %1791
  %1826 = fmul fast float %1824, %1792
  %1827 = fmul fast float %1824, %1793
  %1828 = fadd fast float %1825, %266
  %1829 = fsub fast float -0.000000e+00, %1828
  %1830 = fadd fast float %1826, %267
  %1831 = fsub fast float -0.000000e+00, %1830
  %1832 = fadd fast float %1827, %268
  br i1 %282, label %1904, label %1833, !dx.controlflow.hints !42

; <label>:1833                                    ; preds = %1816
  %1834 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1835 = fcmp fast ogt float %1834, %1824
  br i1 %1835, label %1836, label %1838, !dx.controlflow.hints !43

; <label>:1836                                    ; preds = %1833
  %1837 = fsub fast float %1834, %1824
  br label %1895

; <label>:1838                                    ; preds = %1833
  %1839 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.i32 %1839, 3
  %1841 = icmp eq i32 %1840, 0
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 2
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 2
  %1846 = fsub fast float %1843, %1832
  %1847 = fadd fast float %1846, %1845
  %1848 = fsub fast float 0xC7EFFFFFE0000000, %1832
  br i1 %1841, label %1858, label %1849, !dx.controlflow.hints !39

; <label>:1849                                    ; preds = %1838
  %1850 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1829, float %1831, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %1851 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1791, float %1792, float %1793)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = fdiv fast float 1.000000e+00, %1851
  %1853 = fmul fast float %1852, %1850
  %1854 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1829, float %1831, float %1848)  ; Dot3(ax,ay,az,bx,by,bz)
  %1855 = fmul fast float %1852, %1854
  %1856 = call float @dx.op.binary.f32(i32 36, float %1853, float %1855)  ; FMin(a,b)
  %1857 = call float @dx.op.binary.f32(i32 35, float %1853, float %1855)  ; FMax(a,b)
  br label %1888

; <label>:1858                                    ; preds = %1838
  %1859 = extractvalue %dx.types.CBufRet.f32 %1842, 0
  %1860 = extractvalue %dx.types.CBufRet.f32 %1842, 1
  %1861 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1862 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1863 = fsub fast float %1859, %1828
  %1864 = fmul fast float %1820, %1863
  %1865 = fadd fast float %1863, %1861
  %1866 = fmul fast float %1865, %1820
  %1867 = call float @dx.op.binary.f32(i32 36, float %1864, float %1866)  ; FMin(a,b)
  %1868 = call float @dx.op.binary.f32(i32 35, float %1864, float %1866)  ; FMax(a,b)
  %1869 = fsub fast float %1860, %1830
  %1870 = fmul fast float %1821, %1869
  %1871 = fadd fast float %1869, %1862
  %1872 = fmul fast float %1871, %1821
  %1873 = call float @dx.op.binary.f32(i32 36, float %1870, float %1872)  ; FMin(a,b)
  %1874 = call float @dx.op.binary.f32(i32 35, float %1867, float %1873)  ; FMax(a,b)
  %1875 = call float @dx.op.binary.f32(i32 35, float %1870, float %1872)  ; FMax(a,b)
  %1876 = call float @dx.op.binary.f32(i32 36, float %1868, float %1875)  ; FMin(a,b)
  %1877 = fmul fast float %1822, %1848
  %1878 = fmul fast float %1822, %1847
  %1879 = call float @dx.op.binary.f32(i32 36, float %1877, float %1878)  ; FMin(a,b)
  %1880 = call float @dx.op.binary.f32(i32 35, float %1874, float %1879)  ; FMax(a,b)
  %1881 = call float @dx.op.binary.f32(i32 35, float %1877, float %1878)  ; FMax(a,b)
  %1882 = call float @dx.op.binary.f32(i32 36, float %1876, float %1881)  ; FMin(a,b)
  %1883 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1880)  ; FMax(a,b)
  %1884 = fcmp fast ult float %1882, %1883
  br i1 %1884, label %1888, label %1885, !dx.controlflow.hints !40

; <label>:1885                                    ; preds = %1858
  %1886 = call float @dx.op.binary.f32(i32 36, float %1880, float %1882)  ; FMin(a,b)
  %1887 = call float @dx.op.binary.f32(i32 35, float %1880, float %1882)  ; FMax(a,b)
  br label %1888

; <label>:1888                                    ; preds = %1885, %1858, %1849
  %1889 = phi float [ %1856, %1849 ], [ %1886, %1885 ], [ 0.000000e+00, %1858 ]
  %1890 = phi float [ %1857, %1849 ], [ %1887, %1885 ], [ 0.000000e+00, %1858 ]
  %1891 = fcmp fast ogt float %1889, 0.000000e+00
  br i1 %1891, label %1895, label %1892, !dx.controlflow.hints !44

; <label>:1892                                    ; preds = %1888
  %1893 = fcmp fast ugt float %1890, 0.000000e+00
  br i1 %1893, label %1894, label %1895, !dx.controlflow.hints !45

; <label>:1894                                    ; preds = %1892
  br label %1895

; <label>:1895                                    ; preds = %1894, %1892, %1888, %1836
  %1896 = phi float [ %1837, %1836 ], [ 0.000000e+00, %1894 ], [ 0x47EFFFFFE0000000, %1892 ], [ %1889, %1888 ]
  %1897 = phi i32 [ %202, %1836 ], [ %202, %1894 ], [ 0, %1892 ], [ %202, %1888 ]
  %1898 = icmp ne i32 %1897, 0
  %1899 = zext i1 %1898 to i32
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1902 = call float @dx.op.binary.f32(i32 35, float %1896, float %1901)  ; FMax(a,b)
  %1903 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1902)  ; FMin(a,b)
  br label %1904

; <label>:1904                                    ; preds = %1895, %1816
  %1905 = phi float [ %1903, %1895 ], [ 0x47EFFFFFE0000000, %1816 ]
  %1906 = phi i32 [ %1899, %1895 ], [ 0, %1816 ]
  %1907 = fsub fast float %1828, %453
  %1908 = fsub fast float %1830, %454
  %1909 = fmul fast float %1907, %458
  %1910 = fmul fast float %1908, %459
  %1911 = call float @dx.op.binary.f32(i32 36, float %1909, float %1910)  ; FMin(a,b)
  %1912 = fcmp fast olt float %1911, 0.000000e+00
  %1913 = call float @dx.op.binary.f32(i32 35, float %1909, float %1910)  ; FMax(a,b)
  %1914 = fcmp fast ogt float %1913, 1.000000e+00
  %1915 = or i1 %1912, %1914
  %1916 = fcmp fast olt float %1832, %467
  %1917 = or i1 %1915, %1916
  %1918 = fcmp fast ogt float %1832, %474
  %1919 = or i1 %1917, %1918
  %1920 = extractvalue %dx.types.CBufRet.f32 %457, 0
  br i1 %1919, label %1921, label %1949, !dx.controlflow.hints !51

; <label>:1921                                    ; preds = %1904
  %1922 = extractvalue %dx.types.CBufRet.f32 %457, 1
  %1923 = fsub fast float %453, %1828
  %1924 = fmul fast float %1923, %1820
  %1925 = fadd fast float %1923, %1920
  %1926 = fmul fast float %1925, %1820
  %1927 = call float @dx.op.binary.f32(i32 36, float %1924, float %1926)  ; FMin(a,b)
  %1928 = call float @dx.op.binary.f32(i32 35, float %1924, float %1926)  ; FMax(a,b)
  %1929 = fsub fast float %454, %1830
  %1930 = fmul fast float %1929, %1821
  %1931 = fadd fast float %1929, %1922
  %1932 = fmul fast float %1931, %1821
  %1933 = call float @dx.op.binary.f32(i32 36, float %1930, float %1932)  ; FMin(a,b)
  %1934 = call float @dx.op.binary.f32(i32 35, float %1927, float %1933)  ; FMax(a,b)
  %1935 = call float @dx.op.binary.f32(i32 35, float %1930, float %1932)  ; FMax(a,b)
  %1936 = call float @dx.op.binary.f32(i32 36, float %1928, float %1935)  ; FMin(a,b)
  %1937 = fsub fast float %467, %1832
  %1938 = fmul fast float %1937, %1822
  %1939 = fsub fast float %471, %1832
  %1940 = fadd fast float %1939, %473
  %1941 = fmul fast float %1940, %1822
  %1942 = call float @dx.op.binary.f32(i32 36, float %1938, float %1941)  ; FMin(a,b)
  %1943 = call float @dx.op.binary.f32(i32 35, float %1934, float %1942)  ; FMax(a,b)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1938, float %1941)  ; FMax(a,b)
  %1945 = call float @dx.op.binary.f32(i32 36, float %1936, float %1944)  ; FMin(a,b)
  %1946 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1943)  ; FMax(a,b)
  %1947 = fcmp fast oge float %1945, %1946
  %1948 = select i1 %1947, float %1943, float 1.000000e+07
  br label %1964

; <label>:1949                                    ; preds = %1904
  %1950 = fsub fast float 1.000000e+00, %1910
  %1951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %1909, float %1950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1952 = extractvalue %dx.types.ResRet.f32 %1951, 0
  %1953 = extractvalue %dx.types.ResRet.f32 %1951, 1
  %1954 = extractvalue %dx.types.ResRet.f32 %1951, 2
  %1955 = extractvalue %dx.types.ResRet.f32 %1951, 3
  %1956 = fmul fast float %1920, 9.765625e-04
  %1957 = fcmp fast oeq float %1952, 0.000000e+00
  %1958 = fcmp ule float %1832, %1954
  %1959 = fcmp uge float %1832, %1953
  %1960 = or i1 %1959, %1958
  %1961 = or i1 %1957, %1960
  %1962 = zext i1 %1961 to i32
  %1963 = xor i32 %1962, 1
  br label %1964

; <label>:1964                                    ; preds = %1949, %1921
  %1965 = phi float [ %1948, %1921 ], [ %1956, %1949 ]
  %1966 = phi float [ %253, %1921 ], [ %1952, %1949 ]
  %1967 = phi float [ %254, %1921 ], [ %1953, %1949 ]
  %1968 = phi float [ %255, %1921 ], [ %1954, %1949 ]
  %1969 = phi float [ %256, %1921 ], [ %1955, %1949 ]
  %1970 = phi i32 [ 0, %1921 ], [ %1963, %1949 ]
  %1971 = icmp eq i32 %1970, 0
  %1972 = icmp eq i32 %1906, 0
  br i1 %1972, label %2048, label %1973, !dx.controlflow.hints !55

; <label>:1973                                    ; preds = %1964
  %1974 = fmul fast float %565, %1824
  %1975 = call float @dx.op.unary.f32(i32 23, float %1974)  ; Log(value)
  %1976 = fmul fast float %1975, 0x3FE62E4300000000
  %1977 = call float @dx.op.binary.f32(i32 35, float %1976, float 1.000000e+00)  ; FMax(a,b)
  %1978 = fmul fast float %1977, 0x47EFFFFFE0000000
  %1979 = call float @dx.op.binary.f32(i32 35, float %1965, float %562)  ; FMax(a,b)
  %1980 = call float @dx.op.binary.f32(i32 36, float %1905, float %1979)  ; FMin(a,b)
  %1981 = call float @dx.op.binary.f32(i32 36, float %1978, float %1980)  ; FMin(a,b)
  %1982 = call float @dx.op.binary.f32(i32 35, float %1981, float 0.000000e+00)  ; FMax(a,b)
  %1983 = fcmp fast ogt float %1982, 0x3F1A36E2E0000000
  %1984 = fadd fast float %1825, %1828
  %1985 = fadd fast float %1826, %1830
  %1986 = select i1 %1983, float %1984, float %1828
  %1987 = select i1 %1983, float %1985, float %1830
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = fsub fast float %1986, %1989
  %1992 = fsub fast float %1987, %1990
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %1996 = fmul fast float %1991, %1994
  %1997 = fmul fast float %1992, %1995
  %1998 = fsub fast float 1.000000e+00, %1997
  %1999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.i32 %1999, 3
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2008, label %2002, !dx.controlflow.hints !46

; <label>:2002                                    ; preds = %1973
  %2003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1996, float %1998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.ResRet.f32 %2003, 1
  %2006 = extractvalue %dx.types.ResRet.f32 %2003, 2
  %2007 = extractvalue %dx.types.ResRet.f32 %2003, 3
  br label %2014

; <label>:2008                                    ; preds = %1973
  %2009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %20, float %1996, float %1998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.ResRet.f32 %2009, 1
  %2012 = extractvalue %dx.types.ResRet.f32 %2009, 2
  %2013 = extractvalue %dx.types.ResRet.f32 %2009, 3
  br label %2014

; <label>:2014                                    ; preds = %2008, %2002
  %2015 = phi float [ %2004, %2002 ], [ %2010, %2008 ]
  %2016 = phi float [ %2005, %2002 ], [ %2011, %2008 ]
  %2017 = phi float [ %2006, %2002 ], [ %2012, %2008 ]
  %2018 = phi float [ %2007, %2002 ], [ %2013, %2008 ]
  %2019 = extractvalue %dx.types.CBufRet.f32 %1993, 3
  %2020 = fmul fast float %2019, %2016
  %2021 = fmul fast float %2020, %2015
  %2022 = fsub fast float %2020, %2021
  %2023 = fcmp fast ole float %2022, 0.000000e+00
  %2024 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %2025 = fadd fast float %2021, %2024
  %2026 = fmul fast float %2019, %2017
  %2027 = fadd fast float %2026, %2024
  %2028 = fdiv fast float 1.000000e+00, %2022
  %2029 = select i1 %2023, float 1.000000e+06, float %2028
  %2030 = fsub fast float %1832, %2025
  %2031 = fmul fast float %2029, %2030
  %2032 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2033 = extractvalue %dx.types.CBufRet.f32 %1993, 2
  %2034 = fmul fast float %2033, %2032
  %2035 = fsub fast float %2033, %2034
  %2036 = fcmp fast olt float %1832, %2027
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 3
  %2039 = fmul fast float %2038, 3.000000e+00
  %2040 = select i1 %2036, float %2039, float 3.000000e+00
  %2041 = fmul fast float %2035, %2040
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 2
  %2044 = fmul fast float %1824, 0x3FD5555560000000
  %2045 = fmul fast float %2044, %2018
  %2046 = fmul fast float %2045, %2043
  %2047 = fmul fast float %2046, %2041
  br label %2048

; <label>:2048                                    ; preds = %2014, %1964
  %2049 = phi float [ %2047, %2014 ], [ 0.000000e+00, %1964 ]
  br i1 %1971, label %2175, label %2050, !dx.controlflow.hints !57

; <label>:2050                                    ; preds = %2048
  %2051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2052 = extractvalue %dx.types.CBufRet.i32 %2051, 0
  %2053 = icmp ne i32 %2052, 0
  %2054 = zext i1 %2053 to i32
  %2055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.i32 %2055, 0
  %2057 = icmp eq i32 %2056, 0
  br i1 %2057, label %2091, label %2058

; <label>:2058                                    ; preds = %2050
  br label %2059

; <label>:2059                                    ; preds = %2086, %2058
  %2060 = phi i32 [ %2087, %2086 ], [ 0, %2058 ]
  %2061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2060, i32 0)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  %2063 = extractvalue %dx.types.ResRet.f32 %2061, 1
  %2064 = extractvalue %dx.types.ResRet.f32 %2061, 2
  %2065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2060, i32 16)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.ResRet.f32 %2065, 1
  %2068 = extractvalue %dx.types.ResRet.f32 %2065, 2
  %2069 = fsub fast float %2062, %2066
  %2070 = fsub fast float %2063, %2067
  %2071 = fsub fast float %2064, %2068
  %2072 = fadd fast float %2066, %2062
  %2073 = fadd fast float %2067, %2063
  %2074 = fadd fast float %2068, %2064
  %2075 = fcmp fast olt float %1828, %2069
  %2076 = fcmp fast olt float %1830, %2070
  %2077 = fcmp fast olt float %1832, %2071
  %2078 = or i1 %2075, %2076
  %2079 = or i1 %2077, %2078
  %2080 = fcmp fast ogt float %1828, %2072
  %2081 = fcmp fast ogt float %1830, %2073
  %2082 = fcmp fast ogt float %1832, %2074
  %2083 = or i1 %2080, %2081
  %2084 = or i1 %2082, %2083
  %2085 = or i1 %2079, %2084
  br i1 %2085, label %2086, label %2089, !dx.controlflow.hints !58

; <label>:2086                                    ; preds = %2059
  %2087 = add nuw i32 %2060, 1
  %2088 = icmp ult i32 %2087, %2056
  br i1 %2088, label %2059, label %2089

; <label>:2089                                    ; preds = %2086, %2059
  %2090 = phi i32 [ 255, %2086 ], [ %2060, %2059 ]
  br label %2091

; <label>:2091                                    ; preds = %2089, %2050
  %2092 = phi i32 [ 255, %2050 ], [ %2090, %2089 ]
  %2093 = icmp eq i32 %2092, 255
  br i1 %2093, label %2099, label %2094, !dx.controlflow.hints !59

; <label>:2094                                    ; preds = %2091
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2092, i32 156)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = icmp ne i32 %2096, 0
  %2098 = zext i1 %2097 to i32
  br label %2099

; <label>:2099                                    ; preds = %2094, %2091
  %2100 = phi i32 [ %2098, %2094 ], [ %2054, %2091 ]
  %2101 = icmp eq i32 %2100, 0
  br i1 %2101, label %2102, label %2171, !dx.controlflow.hints !60

; <label>:2102                                    ; preds = %2099
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 3
  %2105 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 3
  br i1 %2093, label %2119, label %2109, !dx.controlflow.hints !61

; <label>:2109                                    ; preds = %2102
  %2110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2092, i32 60)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.f32 %2110, 0
  %2112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2092, i32 64)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.ResRet.f32 %2112, 1
  %2115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2092, i32 72)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.f32 %2115, 0
  %2117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2092, i32 96)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.f32 %2117, 0
  br label %2119

; <label>:2119                                    ; preds = %2109, %2102
  %2120 = phi float [ %2111, %2109 ], [ %473, %2102 ]
  %2121 = phi float [ %2116, %2109 ], [ %471, %2102 ]
  %2122 = phi float [ %2118, %2109 ], [ %2105, %2102 ]
  %2123 = phi float [ %2113, %2109 ], [ %2107, %2102 ]
  %2124 = phi float [ %2114, %2109 ], [ %2108, %2102 ]
  %2125 = call float @dx.op.binary.f32(i32 35, float %1966, float 0.000000e+00)  ; FMax(a,b)
  %2126 = call float @dx.op.binary.f32(i32 36, float %2125, float 1.000000e+00)  ; FMin(a,b)
  %2127 = call float @dx.op.unary.f32(i32 24, float %2126)  ; Sqrt(value)
  %2128 = call float @dx.op.binary.f32(i32 35, float %1969, float 0x3F847AE140000000)  ; FMax(a,b)
  %2129 = fsub fast float %1967, %1832
  %2130 = fsub fast float %1832, %1968
  %2131 = call float @dx.op.binary.f32(i32 36, float %2130, float %2129)  ; FMin(a,b)
  %2132 = fdiv fast float %2131, %2128
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = fsub fast float %1832, %2121
  %2135 = fdiv fast float %2134, %2120
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul float %2133, %2137
  %2139 = fmul float %2138, %2138
  %2140 = fmul fast float %2127, %2104
  %2141 = fmul fast float %2140, %2139
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 2
  %2144 = extractvalue %dx.types.CBufRet.f32 %2142, 1
  %2145 = fsub fast float %2141, %2144
  %2146 = fsub fast float %2143, %2144
  %2147 = fdiv fast float %2145, %2146
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = fmul fast float %2148, %2122
  %2150 = fcmp fast ogt float %2124, 0.000000e+00
  br i1 %2150, label %2151, label %2171, !dx.controlflow.hints !62

; <label>:2151                                    ; preds = %2119
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 0
  %2154 = extractvalue %dx.types.CBufRet.f32 %2152, 1
  %2155 = extractvalue %dx.types.CBufRet.f32 %2152, 2
  %2156 = fsub fast float %1828, %2153
  %2157 = fsub fast float %1830, %2154
  %2158 = fsub fast float %1832, %2155
  %2159 = fmul fast float %2156, %2156
  %2160 = fmul fast float %2157, %2157
  %2161 = fadd fast float %2159, %2160
  %2162 = fmul fast float %2158, %2158
  %2163 = fadd fast float %2161, %2162
  %2164 = call float @dx.op.unary.f32(i32 24, float %2163)  ; Sqrt(value)
  %2165 = fsub fast float %2164, %2123
  %2166 = fsub fast float %2124, %2123
  %2167 = fdiv fast float %2165, %2166
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fmul fast float %2168, %2168
  %2170 = fmul fast float %2169, %2149
  br label %2171

; <label>:2171                                    ; preds = %2151, %2119, %2099
  %2172 = phi float [ 0.000000e+00, %2099 ], [ %2170, %2151 ], [ %2149, %2119 ]
  %2173 = fmul fast float %2172, %1824
  %2174 = fadd fast float %2173, %2049
  br label %2175

; <label>:2175                                    ; preds = %2171, %2048
  %2176 = phi float [ %2174, %2171 ], [ %2049, %2048 ]
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 3
  %2179 = fmul fast float %2176, 0xBFF7154760000000
  %2180 = fmul fast float %2179, %2178
  %2181 = call float @dx.op.unary.f32(i32 21, float %2180)  ; Exp(value)
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = fmul fast float %2182, %1817
  %2184 = fmul fast float %2182, %1818
  %2185 = fmul fast float %2182, %1819
  %2186 = fadd fast float %2183, %1785
  %2187 = fadd fast float %2184, %1786
  %2188 = fadd fast float %2185, %1787
  %2189 = fsub fast float 1.000000e+00, %854
  %2190 = fmul fast float %846, %262
  %2191 = fmul fast float %2190, %2189
  %2192 = fmul fast float %2191, %2186
  %2193 = fmul fast float %847, %262
  %2194 = fmul fast float %2193, %2189
  %2195 = fmul fast float %2194, %2187
  %2196 = fmul fast float %848, %262
  %2197 = fmul fast float %2196, %2189
  %2198 = fmul fast float %2197, %2188
  %2199 = fadd fast float %2192, %263
  %2200 = fadd fast float %2195, %264
  %2201 = fadd fast float %2198, %265
  %2202 = fdiv fast float %831, %575
  %2203 = fadd fast float %575, %269
  %2204 = fmul fast float %269, %269
  %2205 = fmul fast float %2203, %2203
  %2206 = fsub fast float %2204, %2205
  %2207 = fmul fast float %2206, -5.000000e-01
  %2208 = fmul fast float %2207, %2202
  %2209 = fadd fast float %2208, %261
  %2210 = fadd fast float %831, %272
  %2211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2212 = extractvalue %dx.types.CBufRet.i32 %2211, 0
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2240, label %2214, !dx.controlflow.hints !78

; <label>:2214                                    ; preds = %2175
  %2215 = icmp ne i32 %277, 0
  %2216 = zext i1 %2215 to i32
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 2
  %2219 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2220 = fsub fast float %2203, %2219
  %2221 = fmul fast float %2220, %2218
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2223 = fadd fast float %2222, -5.000000e-01
  %2224 = fmul fast float %2223, 2.000000e+00
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 2
  %2227 = fcmp fast olt float %2224, %2226
  br i1 %2227, label %2228, label %2240, !dx.controlflow.hints !79

; <label>:2228                                    ; preds = %2214
  %2229 = fmul fast float %2224, %2224
  %2230 = fmul fast float %2189, %262
  %2231 = fmul fast float %2224, %2230
  %2232 = fmul fast float %2229, %2230
  %2233 = fmul fast float %2231, %2229
  %2234 = fmul fast float %2229, %2229
  %2235 = fmul fast float %2234, %2230
  %2236 = fadd fast float %2231, %273
  %2237 = fadd fast float %2232, %274
  %2238 = fadd fast float %2233, %275
  %2239 = fadd fast float %2235, %276
  br label %2240

; <label>:2240                                    ; preds = %2228, %2214, %2175
  %2241 = phi float [ %273, %2175 ], [ %2236, %2228 ], [ %273, %2214 ]
  %2242 = phi float [ %274, %2175 ], [ %2237, %2228 ], [ %274, %2214 ]
  %2243 = phi float [ %275, %2175 ], [ %2238, %2228 ], [ %275, %2214 ]
  %2244 = phi float [ %276, %2175 ], [ %2239, %2228 ], [ %276, %2214 ]
  %2245 = phi i32 [ %277, %2175 ], [ 1, %2228 ], [ %2216, %2214 ]
  %2246 = fmul fast float %854, %262
  br label %2247

; <label>:2247                                    ; preds = %2240, %849
  %2248 = phi float [ %850, %849 ], [ %2203, %2240 ]
  %2249 = phi float [ %253, %849 ], [ %1966, %2240 ]
  %2250 = phi float [ %254, %849 ], [ %1967, %2240 ]
  %2251 = phi float [ %255, %849 ], [ %1968, %2240 ]
  %2252 = phi float [ %256, %849 ], [ %1969, %2240 ]
  %2253 = phi float [ %261, %849 ], [ %2209, %2240 ]
  %2254 = phi float [ %262, %849 ], [ %2246, %2240 ]
  %2255 = phi float [ %263, %849 ], [ %2199, %2240 ]
  %2256 = phi float [ %264, %849 ], [ %2200, %2240 ]
  %2257 = phi float [ %265, %849 ], [ %2201, %2240 ]
  %2258 = phi float [ %272, %849 ], [ %2210, %2240 ]
  %2259 = phi float [ %273, %849 ], [ %2241, %2240 ]
  %2260 = phi float [ %274, %849 ], [ %2242, %2240 ]
  %2261 = phi float [ %275, %849 ], [ %2243, %2240 ]
  %2262 = phi float [ %276, %849 ], [ %2244, %2240 ]
  %2263 = phi i32 [ %277, %849 ], [ %2245, %2240 ]
  %2264 = fmul fast float %575, %113
  %2265 = fmul fast float %575, %114
  %2266 = fmul fast float %575, %115
  %2267 = fadd fast float %2264, %266
  %2268 = fadd fast float %2265, %267
  %2269 = fadd fast float %2266, %268
  %2270 = fcmp fast olt float %2248, %229
  %2271 = extractvalue %dx.types.CBufRet.f32 %835, 2
  %2272 = fcmp fast olt float %2271, %2254
  %2273 = and i1 %2270, %2272
  br i1 %2273, label %252, label %2274

; <label>:2274                                    ; preds = %2247
  br label %2275

; <label>:2275                                    ; preds = %2274, %201
  %2276 = phi float [ 0.000000e+00, %201 ], [ %2253, %2274 ]
  %2277 = phi float [ 1.000000e+00, %201 ], [ %2254, %2274 ]
  %2278 = phi float [ 0.000000e+00, %201 ], [ %2255, %2274 ]
  %2279 = phi float [ 0.000000e+00, %201 ], [ %2256, %2274 ]
  %2280 = phi float [ 0.000000e+00, %201 ], [ %2257, %2274 ]
  %2281 = phi float [ 0.000000e+00, %201 ], [ %2258, %2274 ]
  %2282 = phi float [ 0.000000e+00, %201 ], [ %2259, %2274 ]
  %2283 = phi float [ 0.000000e+00, %201 ], [ %2260, %2274 ]
  %2284 = phi float [ 0.000000e+00, %201 ], [ %2261, %2274 ]
  %2285 = phi float [ 0.000000e+00, %201 ], [ %2262, %2274 ]
  %2286 = phi i32 [ 0, %201 ], [ %2263, %2274 ]
  %2287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.i32 %2287, 0
  %2289 = icmp eq i32 %2288, 0
  br i1 %2289, label %2331, label %2290, !dx.controlflow.hints !80

; <label>:2290                                    ; preds = %2275
  %2291 = icmp eq i32 %2286, 0
  br i1 %2291, label %2330, label %2292, !dx.controlflow.hints !81

; <label>:2292                                    ; preds = %2290
  %2293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2294 = extractvalue %dx.types.CBufRet.i32 %2293, 2
  %2295 = icmp eq i32 %2294, 0
  br i1 %2295, label %2302, label %2296, !dx.controlflow.hints !82

; <label>:2296                                    ; preds = %2292
  %2297 = fsub fast float 1.000000e+00, %2277
  %2298 = fdiv fast float %2282, %2297
  %2299 = fdiv fast float %2283, %2297
  %2300 = fdiv fast float %2284, %2297
  %2301 = fdiv fast float %2285, %2297
  br label %2307

; <label>:2302                                    ; preds = %2292
  %2303 = fadd fast float %2282, %2277
  %2304 = fadd fast float %2283, %2277
  %2305 = fadd fast float %2284, %2277
  %2306 = fadd fast float %2285, %2277
  br label %2307

; <label>:2307                                    ; preds = %2302, %2296
  %2308 = phi float [ %2298, %2296 ], [ %2303, %2302 ]
  %2309 = phi float [ %2299, %2296 ], [ %2304, %2302 ]
  %2310 = phi float [ %2300, %2296 ], [ %2305, %2302 ]
  %2311 = phi float [ %2301, %2296 ], [ %2306, %2302 ]
  %2312 = call float @dx.op.binary.f32(i32 35, float %2308, float -1.000000e+00)  ; FMax(a,b)
  %2313 = call float @dx.op.binary.f32(i32 35, float %2309, float -1.000000e+00)  ; FMax(a,b)
  %2314 = call float @dx.op.binary.f32(i32 35, float %2310, float -1.000000e+00)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 35, float %2311, float -1.000000e+00)  ; FMax(a,b)
  %2316 = call float @dx.op.binary.f32(i32 36, float %2312, float 1.000000e+00)  ; FMin(a,b)
  %2317 = call float @dx.op.binary.f32(i32 36, float %2313, float 1.000000e+00)  ; FMin(a,b)
  %2318 = call float @dx.op.binary.f32(i32 36, float %2314, float 1.000000e+00)  ; FMin(a,b)
  %2319 = call float @dx.op.binary.f32(i32 36, float %2315, float 1.000000e+00)  ; FMin(a,b)
  %2320 = fmul fast float %2316, 1.500000e+00
  %2321 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2318, float %2320)  ; FMad(a,b,c)
  %2322 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2317, float 0.000000e+00)  ; FMad(a,b,c)
  %2323 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2319, float %2322)  ; FMad(a,b,c)
  %2324 = fmul fast float %2316, 0x3FEBB67AE0000000
  %2325 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2318, float %2324)  ; FMad(a,b,c)
  %2326 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2317, float 0.000000e+00)  ; FMad(a,b,c)
  %2327 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2319, float %2326)  ; FMad(a,b,c)
  %2328 = fadd fast float %2321, 5.000000e-01
  %2329 = fadd fast float %2325, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float %2328, float %2323, float %2329, float %2327, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2331

; <label>:2330                                    ; preds = %2290
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2331

; <label>:2331                                    ; preds = %2330, %2307, %2275
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 2
  %2334 = fsub fast float %2277, %2333
  %2335 = fdiv fast float %2334, %2333
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2337 = fmul fast float %2336, 2.000000e+00
  %2338 = fsub fast float 3.000000e+00, %2337
  %2339 = fmul fast float %2336, %2336
  %2340 = fmul fast float %2339, %2277
  %2341 = fmul fast float %2340, %2338
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.CBufRet.f32 %2342, 2
  %2346 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %2347 = fmul fast float %2346, %2276
  %2348 = fcmp fast ogt float %2281, 0.000000e+00
  %2349 = fdiv fast float 1.000000e+00, %2281
  %2350 = fmul fast float %2347, %2349
  %2351 = select i1 %2348, float %2350, float %124
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.CBufRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.CBufRet.f32 %2352, 2
  %2356 = fmul fast float %2353, %77
  %2357 = fmul fast float %2354, %77
  %2358 = fmul fast float %2355, %77
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2362 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %2363 = fmul fast float %2360, %78
  %2364 = fmul fast float %2361, %78
  %2365 = fmul fast float %2362, %78
  %2366 = fadd fast float %2363, %2356
  %2367 = fadd fast float %2364, %2357
  %2368 = fadd fast float %2365, %2358
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2373 = fadd fast float %2366, %2370
  %2374 = fadd fast float %2367, %2371
  %2375 = fadd fast float %2368, %2372
  %2376 = fmul fast float %2373, %2351
  %2377 = fmul fast float %2374, %2351
  %2378 = fmul fast float %2375, %2351
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2383 = extractvalue %dx.types.CBufRet.f32 %2379, 3
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2388 = extractvalue %dx.types.CBufRet.f32 %2384, 3
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2392 = extractvalue %dx.types.CBufRet.f32 %2389, 2
  %2393 = extractvalue %dx.types.CBufRet.f32 %2389, 3
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2397 = extractvalue %dx.types.CBufRet.f32 %2394, 2
  %2398 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2399, 3
  %2401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2401, 3
  %2403 = extractvalue %dx.types.CBufRet.f32 %2401, 0
  %2404 = extractvalue %dx.types.CBufRet.f32 %2401, 1
  %2405 = extractvalue %dx.types.CBufRet.f32 %2401, 2
  %2406 = fcmp fast olt float %2405, -5.000000e-01
  %2407 = call float @dx.op.dot3.f32(i32 55, float %2376, float %2377, float %2378, float %2376, float %2377, float %2378)  ; Dot3(ax,ay,az,bx,by,bz)
  %2408 = call float @dx.op.unary.f32(i32 25, float %2407)  ; Rsqrt(value)
  %2409 = fmul fast float %2408, %2407
  %2410 = fmul fast float %2408, %2376
  %2411 = fmul fast float %2408, %2377
  %2412 = fmul fast float %2408, %2378
  %2413 = fadd fast float %2409, %2383
  %2414 = call float @dx.op.dot3.f32(i32 55, float %2410, float %2411, float %2412, float %2380, float %2381, float %2382)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.i32 %2415, 1
  %2417 = and i32 %2416, 1
  %2418 = icmp ne i32 %2417, 0
  %2419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2420 = extractvalue %dx.types.CBufRet.f32 %2419, 2
  %2421 = fcmp fast ogt float %2420, 0.000000e+00
  %2422 = and i1 %2418, %2421
  br i1 %2422, label %2423, label %2829, !dx.controlflow.hints !83

; <label>:2423                                    ; preds = %2331
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 3
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 2
  %2430 = fsub fast float %2427, %2429
  %2431 = and i32 %2416, 2
  %2432 = extractvalue %dx.types.CBufRet.i32 %2415, 0
  %2433 = call i32 @dx.op.binary.i32(i32 40, i32 %2432, i32 3)  ; UMin(a,b)
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.CBufRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2438 = extractvalue %dx.types.CBufRet.f32 %2428, 1
  %2439 = fsub fast float %2435, %2437
  %2440 = fsub fast float %2436, %2438
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2443 = fcmp fast ogt float %2442, 0.000000e+00
  %2444 = fsub fast float -0.000000e+00, %2439
  %2445 = fsub fast float -0.000000e+00, %2440
  %2446 = call float @dx.op.dot2.f32(i32 54, float %2410, float %2411, float %2410, float %2411)  ; Dot2(ax,ay,bx,by)
  %2447 = call float @dx.op.dot2.f32(i32 54, float %2410, float %2411, float %2444, float %2445)  ; Dot2(ax,ay,bx,by)
  %2448 = fmul fast float %2447, 2.000000e+00
  %2449 = call float @dx.op.dot2.f32(i32 54, float %2444, float %2445, float %2444, float %2445)  ; Dot2(ax,ay,bx,by)
  %2450 = fmul fast float %2442, %2442
  %2451 = fsub fast float %2449, %2450
  %2452 = fmul fast float %2448, %2448
  %2453 = fmul fast float %2446, 4.000000e+00
  %2454 = fmul fast float %2453, %2451
  %2455 = fsub fast float %2452, %2454
  %2456 = fcmp fast ogt float %2455, 0.000000e+00
  br i1 %2456, label %2457, label %2472, !dx.controlflow.hints !84

; <label>:2457                                    ; preds = %2423
  %2458 = fcmp fast ogt float %2448, 0.000000e+00
  %2459 = call float @dx.op.unary.f32(i32 24, float %2455)  ; Sqrt(value)
  %2460 = fsub fast float -0.000000e+00, %2459
  %2461 = select i1 %2458, float %2459, float %2460
  %2462 = fadd fast float %2461, %2448
  %2463 = fmul float %2462, -5.000000e-01
  %2464 = fdiv fast float %2463, %2446
  %2465 = call float @dx.op.binary.f32(i32 35, float %2464, float 0.000000e+00)  ; FMax(a,b)
  %2466 = call float @dx.op.binary.f32(i32 36, float %2409, float %2465)  ; FMin(a,b)
  %2467 = fdiv fast float %2451, %2463
  %2468 = call float @dx.op.binary.f32(i32 35, float %2467, float 0.000000e+00)  ; FMax(a,b)
  %2469 = call float @dx.op.binary.f32(i32 36, float %2409, float %2468)  ; FMin(a,b)
  %2470 = call float @dx.op.binary.f32(i32 36, float %2466, float %2469)  ; FMin(a,b)
  %2471 = call float @dx.op.binary.f32(i32 35, float %2466, float %2469)  ; FMax(a,b)
  br label %2472

; <label>:2472                                    ; preds = %2457, %2423
  %2473 = phi float [ %2471, %2457 ], [ -1.000000e+00, %2423 ]
  %2474 = phi float [ %2470, %2457 ], [ -1.000000e+00, %2423 ]
  %2475 = phi i1 [ true, %2457 ], [ false, %2423 ]
  %2476 = and i1 %2443, %2475
  br i1 %2476, label %2477, label %2479, !dx.controlflow.hints !85

; <label>:2477                                    ; preds = %2472
  %2478 = fcmp fast oeq float %2474, %2473
  br i1 %2478, label %2782, label %2480, !dx.controlflow.hints !86

; <label>:2479                                    ; preds = %2472
  br i1 %2443, label %2782, label %2480, !dx.controlflow.hints !87

; <label>:2480                                    ; preds = %2479, %2477
  %2481 = phi float [ %2409, %2479 ], [ %2473, %2477 ]
  %2482 = phi float [ 0.000000e+00, %2479 ], [ %2474, %2477 ]
  %2483 = icmp ne i32 %2431, 0
  %2484 = fmul fast float %2481, %2412
  %2485 = fadd fast float %2484, %2425
  %2486 = fmul fast float %2485, %2481
  %2487 = select i1 %2483, float 0.000000e+00, float %2486
  %2488 = fcmp fast oeq float %2412, 0.000000e+00
  %2489 = fdiv fast float %2430, %2412
  %2490 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2489)  ; FMax(a,b)
  %2491 = select i1 %2488, float %2481, float %2490
  %2492 = call float @dx.op.binary.f32(i32 36, float %2481, float %2491)  ; FMin(a,b)
  %2493 = fcmp fast ogt float %2412, 0.000000e+00
  %2494 = fcmp fast olt float %2430, 0.000000e+00
  br i1 %2493, label %2495, label %2552, !dx.controlflow.hints !88

; <label>:2495                                    ; preds = %2480
  %2496 = icmp eq i32 %2431, 0
  br i1 %2494, label %2497, label %2541, !dx.controlflow.hints !89

; <label>:2497                                    ; preds = %2495
  %2498 = select i1 %2496, float %2481, float 0.000000e+00
  %2499 = fsub fast float -0.000000e+00, %2498
  %2500 = call float @dx.op.unary.f32(i32 6, float %2499)  ; FAbs(value)
  %2501 = fmul fast float %2498, %2412
  %2502 = fadd fast float %2501, %2425
  %2503 = fmul fast float %2500, %2502
  %2504 = fsub fast float %2487, %2503
  %2505 = fsub fast float %2481, %2500
  %2506 = select i1 %2496, float %2505, float 0.000000e+00
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.CBufRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.CBufRet.f32 %2507, 2
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.CBufRet.f32 %2511, 1
  %2514 = extractvalue %dx.types.CBufRet.f32 %2511, 2
  %2515 = extractvalue %dx.types.CBufRet.f32 %2511, 3
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 3
  %2518 = call float @dx.op.binary.f32(i32 36, float %2504, float %2517)  ; FMin(a,b)
  %2519 = fmul fast float %2515, %2506
  %2520 = call float @dx.op.unary.f32(i32 7, float %2519)  ; Saturate(value)
  %2521 = fsub fast float %2512, %2508
  %2522 = fsub fast float %2513, %2509
  %2523 = fsub fast float %2514, %2510
  %2524 = fmul fast float %2520, %2521
  %2525 = fmul fast float %2520, %2522
  %2526 = fmul fast float %2520, %2523
  %2527 = fadd fast float %2524, %2508
  %2528 = fadd fast float %2525, %2509
  %2529 = fadd fast float %2526, %2510
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = fadd fast float %2532, %2531
  %2534 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2530, 2
  %2536 = extractvalue %dx.types.CBufRet.f32 %2530, 3
  %2537 = fadd fast float %2536, %2535
  %2538 = call float @dx.op.unary.f32(i32 7, float %2537)  ; Saturate(value)
  %2539 = fmul fast float %2534, %2518
  %2540 = fmul fast float %2539, %2538
  br label %2782

; <label>:2541                                    ; preds = %2495
  br i1 %2496, label %2542, label %2563, !dx.controlflow.hints !90

; <label>:2542                                    ; preds = %2541
  %2543 = call float @dx.op.binary.f32(i32 36, float %2492, float %2482)  ; FMin(a,b)
  %2544 = fsub fast float %2492, %2543
  %2545 = fsub fast float %2544, %2481
  %2546 = call float @dx.op.unary.f32(i32 6, float %2545)  ; FAbs(value)
  %2547 = fadd fast float %2544, %2481
  %2548 = fmul fast float %2547, %2412
  %2549 = fadd fast float %2548, %2425
  %2550 = fmul fast float %2549, %2546
  %2551 = fsub fast float %2487, %2550
  br label %2563

; <label>:2552                                    ; preds = %2480
  br i1 %2494, label %2553, label %2563, !dx.controlflow.hints !91

; <label>:2553                                    ; preds = %2552
  %2554 = call float @dx.op.binary.f32(i32 35, float %2482, float %2492)  ; FMax(a,b)
  %2555 = icmp eq i32 %2431, 0
  %2556 = select i1 %2555, float %2492, float 0.000000e+00
  %2557 = fsub fast float -0.000000e+00, %2556
  %2558 = call float @dx.op.unary.f32(i32 6, float %2557)  ; FAbs(value)
  %2559 = fmul fast float %2556, %2412
  %2560 = fadd fast float %2559, %2425
  %2561 = fmul fast float %2558, %2560
  %2562 = fsub fast float %2487, %2561
  br label %2563

; <label>:2563                                    ; preds = %2553, %2552, %2542, %2541
  %2564 = phi float [ %2482, %2541 ], [ %2482, %2542 ], [ %2554, %2553 ], [ %2482, %2552 ]
  %2565 = phi float [ 0.000000e+00, %2541 ], [ %2546, %2542 ], [ %2558, %2553 ], [ 0.000000e+00, %2552 ]
  %2566 = phi float [ %2487, %2541 ], [ %2551, %2542 ], [ %2562, %2553 ], [ %2487, %2552 ]
  %2567 = phi float [ %2492, %2541 ], [ %2492, %2542 ], [ %2481, %2553 ], [ %2481, %2552 ]
  %2568 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %2568, align 4, !tbaa !92, !noalias !96
  %2569 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %2569, align 4, !tbaa !92, !noalias !96
  %2570 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %2570, align 4, !tbaa !92, !noalias !96
  %2571 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %2571, align 4, !tbaa !92, !noalias !96
  %2572 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %2572, align 4, !tbaa !92, !noalias !96
  %2573 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %2573, align 4, !tbaa !92, !noalias !96
  %2574 = icmp sgt i32 %2433, 0
  br i1 %2574, label %2575, label %2636

; <label>:2575                                    ; preds = %2563
  br label %2576

; <label>:2576                                    ; preds = %2625, %2575
  %2577 = phi i32 [ %2626, %2625 ], [ 0, %2575 ]
  %2578 = phi i32 [ %2627, %2625 ], [ 0, %2575 ]
  %2579 = add nuw i32 %2578, 171
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %2579)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.CBufRet.f32 %2580, 1
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.CBufRet.f32 %2583, 1
  %2586 = fsub fast float %2581, %2584
  %2587 = fsub fast float %2582, %2585
  %2588 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2589 = fsub fast float -0.000000e+00, %2586
  %2590 = fsub fast float -0.000000e+00, %2587
  %2591 = call float @dx.op.dot2.f32(i32 54, float %2410, float %2411, float %2589, float %2590)  ; Dot2(ax,ay,bx,by)
  %2592 = fmul fast float %2591, 2.000000e+00
  %2593 = call float @dx.op.dot2.f32(i32 54, float %2589, float %2590, float %2589, float %2590)  ; Dot2(ax,ay,bx,by)
  %2594 = fmul fast float %2588, %2588
  %2595 = fsub fast float %2593, %2594
  %2596 = fmul fast float %2592, %2592
  %2597 = fmul fast float %2453, %2595
  %2598 = fsub fast float %2596, %2597
  %2599 = fcmp fast ogt float %2598, 0.000000e+00
  br i1 %2599, label %2600, label %2615, !dx.controlflow.hints !84

; <label>:2600                                    ; preds = %2576
  %2601 = fcmp fast ogt float %2592, 0.000000e+00
  %2602 = call float @dx.op.unary.f32(i32 24, float %2598)  ; Sqrt(value)
  %2603 = fsub fast float -0.000000e+00, %2602
  %2604 = select i1 %2601, float %2602, float %2603
  %2605 = fadd fast float %2604, %2592
  %2606 = fmul float %2605, -5.000000e-01
  %2607 = fdiv fast float %2606, %2446
  %2608 = call float @dx.op.binary.f32(i32 35, float %2607, float 0.000000e+00)  ; FMax(a,b)
  %2609 = call float @dx.op.binary.f32(i32 36, float %2481, float %2608)  ; FMin(a,b)
  %2610 = fdiv fast float %2595, %2606
  %2611 = call float @dx.op.binary.f32(i32 35, float %2610, float 0.000000e+00)  ; FMax(a,b)
  %2612 = call float @dx.op.binary.f32(i32 36, float %2481, float %2611)  ; FMin(a,b)
  %2613 = call float @dx.op.binary.f32(i32 36, float %2609, float %2612)  ; FMin(a,b)
  %2614 = call float @dx.op.binary.f32(i32 35, float %2609, float %2612)  ; FMax(a,b)
  br label %2615

; <label>:2615                                    ; preds = %2600, %2576
  %2616 = phi float [ %2614, %2600 ], [ -1.000000e+00, %2576 ]
  %2617 = phi float [ %2613, %2600 ], [ -1.000000e+00, %2576 ]
  %2618 = phi i1 [ true, %2600 ], [ false, %2576 ]
  br i1 %2618, label %2619, label %2625, !dx.controlflow.hints !107

; <label>:2619                                    ; preds = %2615
  %2620 = call float @dx.op.binary.f32(i32 35, float %2564, float %2617)  ; FMax(a,b)
  %2621 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2578
  store float %2620, float* %2621, align 4, !tbaa !92, !noalias !96
  %2622 = call float @dx.op.binary.f32(i32 35, float %2564, float %2616)  ; FMax(a,b)
  %2623 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2578
  store float %2622, float* %2623, align 4, !tbaa !92, !noalias !96
  %2624 = add nsw i32 %2577, 1
  br label %2625

; <label>:2625                                    ; preds = %2619, %2615
  %2626 = phi i32 [ %2624, %2619 ], [ %2577, %2615 ]
  %2627 = add nuw nsw i32 %2578, 1
  %2628 = icmp eq i32 %2627, %2433
  br i1 %2628, label %2629, label %2576

; <label>:2629                                    ; preds = %2625
  %2630 = load float, float* %2570, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %2631 = load float, float* %2569, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  %2632 = load float, float* %2568, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  %2633 = load float, float* %2573, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  %2634 = load float, float* %2572, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  %2635 = load float, float* %2571, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  br label %2636

; <label>:2636                                    ; preds = %2629, %2563
  %2637 = phi float [ -1.000000e+00, %2563 ], [ %2635, %2629 ]
  %2638 = phi float [ -1.000000e+00, %2563 ], [ %2634, %2629 ]
  %2639 = phi float [ -1.000000e+00, %2563 ], [ %2633, %2629 ]
  %2640 = phi float [ -1.000000e+00, %2563 ], [ %2632, %2629 ]
  %2641 = phi float [ -1.000000e+00, %2563 ], [ %2631, %2629 ]
  %2642 = phi float [ -1.000000e+00, %2563 ], [ %2630, %2629 ]
  %2643 = phi i32 [ 0, %2563 ], [ %2626, %2629 ]
  %2644 = call float @dx.op.binary.f32(i32 36, float %2641, float %2642)  ; FMin(a,b)
  %2645 = call float @dx.op.binary.f32(i32 36, float %2640, float %2644)  ; FMin(a,b)
  %2646 = call float @dx.op.binary.f32(i32 35, float %2640, float %2641)  ; FMax(a,b)
  %2647 = call float @dx.op.binary.f32(i32 36, float %2646, float %2642)  ; FMin(a,b)
  %2648 = call float @dx.op.binary.f32(i32 36, float %2640, float %2641)  ; FMin(a,b)
  %2649 = call float @dx.op.binary.f32(i32 35, float %2648, float %2647)  ; FMax(a,b)
  %2650 = call float @dx.op.binary.f32(i32 35, float %2641, float %2642)  ; FMax(a,b)
  %2651 = call float @dx.op.binary.f32(i32 35, float %2640, float %2650)  ; FMax(a,b)
  store float %2645, float* %2568, align 4, !tbaa !92, !alias.scope !116, !noalias !117
  store float %2649, float* %2569, align 4, !tbaa !92, !alias.scope !114, !noalias !115
  store float %2651, float* %2570, align 4, !tbaa !92, !alias.scope !108, !noalias !111
  %2652 = call float @dx.op.binary.f32(i32 36, float %2638, float %2639)  ; FMin(a,b)
  %2653 = call float @dx.op.binary.f32(i32 36, float %2637, float %2652)  ; FMin(a,b)
  %2654 = call float @dx.op.binary.f32(i32 35, float %2637, float %2638)  ; FMax(a,b)
  %2655 = call float @dx.op.binary.f32(i32 36, float %2654, float %2639)  ; FMin(a,b)
  %2656 = call float @dx.op.binary.f32(i32 36, float %2637, float %2638)  ; FMin(a,b)
  %2657 = call float @dx.op.binary.f32(i32 35, float %2656, float %2655)  ; FMax(a,b)
  %2658 = call float @dx.op.binary.f32(i32 35, float %2638, float %2639)  ; FMax(a,b)
  %2659 = call float @dx.op.binary.f32(i32 35, float %2637, float %2658)  ; FMax(a,b)
  store float %2653, float* %2571, align 4, !tbaa !92, !alias.scope !126, !noalias !127
  store float %2657, float* %2572, align 4, !tbaa !92, !alias.scope !124, !noalias !125
  store float %2659, float* %2573, align 4, !tbaa !92, !alias.scope !118, !noalias !121
  %2660 = sub nsw i32 3, %2643
  %2661 = icmp sgt i32 %2660, 2
  br i1 %2661, label %2662, label %2700, !dx.controlflow.hints !128

; <label>:2662                                    ; preds = %2636
  %2663 = icmp eq i32 %2431, 0
  %2664 = fsub fast float %2481, %2565
  %2665 = select i1 %2663, float %2664, float %2565
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2671 = extractvalue %dx.types.CBufRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.CBufRet.f32 %2670, 1
  %2673 = extractvalue %dx.types.CBufRet.f32 %2670, 2
  %2674 = extractvalue %dx.types.CBufRet.f32 %2670, 3
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 3
  %2677 = call float @dx.op.binary.f32(i32 36, float %2566, float %2676)  ; FMin(a,b)
  %2678 = fmul fast float %2674, %2665
  %2679 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2680 = fsub fast float %2671, %2667
  %2681 = fsub fast float %2672, %2668
  %2682 = fsub fast float %2673, %2669
  %2683 = fmul fast float %2679, %2680
  %2684 = fmul fast float %2679, %2681
  %2685 = fmul fast float %2679, %2682
  %2686 = fadd fast float %2683, %2667
  %2687 = fadd fast float %2684, %2668
  %2688 = fadd fast float %2685, %2669
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2692 = fadd fast float %2691, %2690
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2689, 2
  %2695 = extractvalue %dx.types.CBufRet.f32 %2689, 3
  %2696 = fadd fast float %2695, %2694
  %2697 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2698 = fmul fast float %2693, %2677
  %2699 = fmul fast float %2698, %2697
  br label %2782

; <label>:2700                                    ; preds = %2636
  %2701 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2660
  %2702 = load float, float* %2701, align 4, !tbaa !92, !noalias !96
  %2703 = fcmp fast olt float %2702, %2567
  %2704 = icmp sgt i32 %2643, 0
  %2705 = and i1 %2704, %2703
  br i1 %2705, label %2706, label %2743

; <label>:2706                                    ; preds = %2700
  br label %2707

; <label>:2707                                    ; preds = %2736, %2706
  %2708 = phi float [ %2737, %2736 ], [ %2565, %2706 ]
  %2709 = phi float [ %2738, %2736 ], [ %2566, %2706 ]
  %2710 = phi float [ %2718, %2736 ], [ %2702, %2706 ]
  %2711 = phi i32 [ %2715, %2736 ], [ %2660, %2706 ]
  %2712 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2711
  %2713 = load float, float* %2712, align 4, !tbaa !92, !noalias !96
  %2714 = icmp slt i32 %2711, 2
  %2715 = add nsw i32 %2711, 1
  %2716 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2715
  %2717 = load float, float* %2716, align 4, !tbaa !92, !noalias !96
  %2718 = select i1 %2714, float %2717, float %2481
  %2719 = call float @dx.op.binary.f32(i32 36, float %2718, float %2713)  ; FMin(a,b)
  %2720 = call float @dx.op.binary.f32(i32 36, float %2567, float %2719)  ; FMin(a,b)
  %2721 = icmp eq i32 %2431, 0
  %2722 = fadd fast float %2720, %2710
  %2723 = fmul fast float %2722, %2412
  %2724 = fadd fast float %2723, %2425
  br i1 %2721, label %2730, label %2725, !dx.controlflow.hints !129

; <label>:2725                                    ; preds = %2707
  %2726 = fsub fast float %2720, %2710
  %2727 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2726)  ; FMax(a,b)
  %2728 = fmul fast float %2727, %2724
  %2729 = fadd fast float %2728, %2709
  br label %2736

; <label>:2730                                    ; preds = %2707
  %2731 = fsub fast float %2710, %2720
  %2732 = call float @dx.op.unary.f32(i32 6, float %2731)  ; FAbs(value)
  %2733 = fadd fast float %2732, %2708
  %2734 = fmul fast float %2732, %2724
  %2735 = fsub fast float %2709, %2734
  br label %2736

; <label>:2736                                    ; preds = %2730, %2725
  %2737 = phi float [ %2727, %2725 ], [ %2733, %2730 ]
  %2738 = phi float [ %2729, %2725 ], [ %2735, %2730 ]
  %2739 = fcmp fast olt float %2718, %2567
  %2740 = icmp slt i32 %2715, 3
  %2741 = and i1 %2740, %2739
  br i1 %2741, label %2707, label %2742

; <label>:2742                                    ; preds = %2736
  br label %2743

; <label>:2743                                    ; preds = %2742, %2700
  %2744 = phi float [ %2565, %2700 ], [ %2737, %2742 ]
  %2745 = phi float [ %2566, %2700 ], [ %2738, %2742 ]
  %2746 = fsub fast float %2481, %2744
  %2747 = select i1 %2483, float %2744, float %2746
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 0
  %2750 = extractvalue %dx.types.CBufRet.f32 %2748, 1
  %2751 = extractvalue %dx.types.CBufRet.f32 %2748, 2
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.CBufRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.CBufRet.f32 %2752, 2
  %2756 = extractvalue %dx.types.CBufRet.f32 %2752, 3
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 3
  %2759 = call float @dx.op.binary.f32(i32 36, float %2745, float %2758)  ; FMin(a,b)
  %2760 = fmul fast float %2756, %2747
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = fsub fast float %2753, %2749
  %2763 = fsub fast float %2754, %2750
  %2764 = fsub fast float %2755, %2751
  %2765 = fmul fast float %2761, %2762
  %2766 = fmul fast float %2761, %2763
  %2767 = fmul fast float %2761, %2764
  %2768 = fadd fast float %2765, %2749
  %2769 = fadd fast float %2766, %2750
  %2770 = fadd fast float %2767, %2751
  %2771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.CBufRet.f32 %2771, 1
  %2774 = fadd fast float %2773, %2772
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2771, 2
  %2777 = extractvalue %dx.types.CBufRet.f32 %2771, 3
  %2778 = fadd fast float %2777, %2776
  %2779 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2780 = fmul fast float %2775, %2759
  %2781 = fmul fast float %2780, %2779
  br label %2782

; <label>:2782                                    ; preds = %2743, %2662, %2497, %2479, %2477
  %2783 = phi float [ %2506, %2497 ], [ %2665, %2662 ], [ %2747, %2743 ], [ 0.000000e+00, %2477 ], [ 0.000000e+00, %2479 ]
  %2784 = phi float [ %2540, %2497 ], [ %2699, %2662 ], [ %2781, %2743 ], [ 0.000000e+00, %2477 ], [ 0.000000e+00, %2479 ]
  %2785 = phi float [ %2527, %2497 ], [ %2686, %2662 ], [ %2768, %2743 ], [ 0.000000e+00, %2477 ], [ 0.000000e+00, %2479 ]
  %2786 = phi float [ %2528, %2497 ], [ %2687, %2662 ], [ %2769, %2743 ], [ 0.000000e+00, %2477 ], [ 0.000000e+00, %2479 ]
  %2787 = phi float [ %2529, %2497 ], [ %2688, %2662 ], [ %2770, %2743 ], [ 0.000000e+00, %2477 ], [ 0.000000e+00, %2479 ]
  %2788 = fmul fast float %2420, %2784
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 2
  %2791 = fsub fast float %2427, %2790
  %2792 = fcmp fast olt float %2788, -2.000000e+01
  %2793 = call float @dx.op.unary.f32(i32 21, float %2788)  ; Exp(value)
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 2
  %2799 = fmul fast float %2796, %2791
  %2800 = call float @dx.op.unary.f32(i32 7, float %2799)  ; Saturate(value)
  %2801 = fsub fast float 1.000000e+00, %2800
  %2802 = fmul fast float %2412, 5.000000e-01
  %2803 = fadd fast float %2802, 5.000000e-01
  %2804 = call float @dx.op.unary.f32(i32 7, float %2803)  ; Saturate(value)
  %2805 = fsub fast float 1.000000e+00, %2804
  %2806 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2801)  ; FMax(a,b)
  %2807 = fdiv fast float %2805, %2806
  %2808 = fsub fast float %2791, %2378
  %2809 = call float @dx.op.unary.f32(i32 6, float %2808)  ; FAbs(value)
  %2810 = fmul fast float %2809, %2795
  %2811 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2812 = fsub fast float 1.000000e+00, %2810
  %2813 = fmul fast float %2812, %2811
  %2814 = fadd fast float %2813, %2810
  %2815 = fmul fast float %2798, %2791
  %2816 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  %2817 = fsub fast float 1.000000e+00, %2814
  %2818 = fmul fast float %2817, %2816
  %2819 = fadd fast float %2818, %2814
  %2820 = call float @dx.op.unary.f32(i32 7, float %2819)  ; Saturate(value)
  %2821 = fadd fast float %2793, -1.000000e+00
  %2822 = select i1 %2792, float -1.000000e+00, float %2821
  %2823 = fmul fast float %2820, %2822
  %2824 = fadd fast float %2823, 1.000000e+00
  %2825 = fsub fast float -0.000000e+00, %2823
  %2826 = fmul fast float %2785, %2825
  %2827 = fmul fast float %2786, %2825
  %2828 = fmul fast float %2787, %2825
  br label %2829

; <label>:2829                                    ; preds = %2782, %2331
  %2830 = phi float [ %2783, %2782 ], [ 0.000000e+00, %2331 ]
  %2831 = phi float [ %2824, %2782 ], [ 1.000000e+00, %2331 ]
  %2832 = phi float [ %2826, %2782 ], [ 0.000000e+00, %2331 ]
  %2833 = phi float [ %2827, %2782 ], [ 0.000000e+00, %2331 ]
  %2834 = phi float [ %2828, %2782 ], [ 0.000000e+00, %2331 ]
  %2835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2836 = extractvalue %dx.types.CBufRet.f32 %2835, 1
  %2837 = fsub fast float 1.000000e+00, %2831
  %2838 = fmul fast float %2837, %2413
  %2839 = fmul fast float %2838, %2836
  %2840 = fsub fast float %2413, %2839
  br i1 %2406, label %2841, label %2870, !dx.controlflow.hints !130

; <label>:2841                                    ; preds = %2829
  %2842 = fmul fast float %2414, %2403
  %2843 = fadd fast float %2842, %2404
  %2844 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2845 = fmul fast float %2385, %2840
  %2846 = fsub fast float -0.000000e+00, %2845
  %2847 = fmul fast float %2386, %2840
  %2848 = fsub fast float -0.000000e+00, %2847
  %2849 = call float @dx.op.unary.f32(i32 21, float %2846)  ; Exp(value)
  %2850 = call float @dx.op.unary.f32(i32 21, float %2848)  ; Exp(value)
  %2851 = call float @dx.op.binary.f32(i32 35, float %2393, float %2849)  ; FMax(a,b)
  %2852 = call float @dx.op.binary.f32(i32 35, float %2393, float %2850)  ; FMax(a,b)
  %2853 = fsub fast float %2852, %2851
  %2854 = fmul fast float %2853, %2844
  %2855 = fadd fast float %2854, %2851
  %2856 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2857 = fsub fast float %2390, %2395
  %2858 = fsub fast float %2391, %2396
  %2859 = fsub fast float %2392, %2397
  %2860 = fmul fast float %2844, %2857
  %2861 = fmul fast float %2844, %2858
  %2862 = fmul fast float %2844, %2859
  %2863 = fadd fast float %2860, %2395
  %2864 = fadd fast float %2861, %2396
  %2865 = fadd fast float %2862, %2397
  %2866 = fsub fast float 1.000000e+00, %2856
  %2867 = fmul fast float %2866, %2863
  %2868 = fmul fast float %2866, %2864
  %2869 = fmul fast float %2866, %2865
  br label %2929

; <label>:2870                                    ; preds = %2829
  %2871 = fmul fast float %2840, %2402
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2873 = fsub fast float 2.000000e+00, %2872
  %2874 = fmul fast float %2872, 9.921875e-01
  %2875 = fmul fast float %2874, %2873
  %2876 = fadd fast float %2875, 3.906250e-03
  %2877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %20, float %2876, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = fsub fast float %2872, %2878
  %2880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2879)  ; FMax(a,b)
  %2881 = fmul fast float %2388, %2378
  %2882 = call float @dx.op.unary.f32(i32 6, float %2881)  ; FAbs(value)
  %2883 = fcmp fast ogt float %2882, 0x3EB0C6F7A0000000
  br i1 %2883, label %2884, label %2890, !dx.controlflow.hints !131

; <label>:2884                                    ; preds = %2870
  %2885 = fmul fast float %2881, 0xBFF7154760000000
  %2886 = call float @dx.op.unary.f32(i32 21, float %2885)  ; Exp(value)
  %2887 = fsub fast float 1.000000e+00, %2886
  %2888 = fdiv fast float %2887, %2881
  %2889 = fmul fast float %2888, %2398
  br label %2890

; <label>:2890                                    ; preds = %2884, %2870
  %2891 = phi float [ %2889, %2884 ], [ %2398, %2870 ]
  %2892 = fadd fast float %2891, %2400
  %2893 = fmul fast float %2892, %2880
  %2894 = fmul fast float %2385, %2893
  %2895 = fsub fast float -0.000000e+00, %2894
  %2896 = fmul fast float %2386, %2893
  %2897 = fsub fast float -0.000000e+00, %2896
  %2898 = fmul fast float %2387, %2893
  %2899 = fsub fast float -0.000000e+00, %2898
  %2900 = call float @dx.op.unary.f32(i32 21, float %2895)  ; Exp(value)
  %2901 = call float @dx.op.unary.f32(i32 21, float %2897)  ; Exp(value)
  %2902 = call float @dx.op.unary.f32(i32 21, float %2899)  ; Exp(value)
  %2903 = fmul fast float %2414, %2414
  %2904 = fadd fast float %2903, 1.000000e+00
  %2905 = fmul fast float %2904, 0x3FAE8EC8A0000000
  %2906 = fmul fast float %2905, %2395
  %2907 = fmul fast float %2905, %2396
  %2908 = fmul fast float %2905, %2397
  %2909 = fmul fast float %2414, %2393
  %2910 = fsub fast float 1.000000e+00, %2909
  %2911 = fmul fast float %2393, %2393
  %2912 = fsub fast float 1.000000e+00, %2911
  %2913 = fmul fast float %2912, 0x3FB45F3060000000
  %2914 = fmul fast float %2910, %2910
  %2915 = fdiv fast float 1.000000e+00, %2914
  %2916 = fmul fast float %2913, %2915
  %2917 = fmul fast float %2916, %2390
  %2918 = fmul fast float %2916, %2391
  %2919 = fmul fast float %2916, %2392
  %2920 = fadd fast float %2917, %2906
  %2921 = fadd fast float %2918, %2907
  %2922 = fadd fast float %2919, %2908
  %2923 = fsub fast float 1.000000e+00, %2900
  %2924 = fsub fast float 1.000000e+00, %2901
  %2925 = fsub fast float 1.000000e+00, %2902
  %2926 = fmul fast float %2920, %2923
  %2927 = fmul fast float %2921, %2924
  %2928 = fmul fast float %2922, %2925
  br label %2929

; <label>:2929                                    ; preds = %2890, %2841
  %2930 = phi float [ %2867, %2841 ], [ %2926, %2890 ]
  %2931 = phi float [ %2868, %2841 ], [ %2927, %2890 ]
  %2932 = phi float [ %2869, %2841 ], [ %2928, %2890 ]
  %2933 = phi float [ %2856, %2841 ], [ %2900, %2890 ]
  %2934 = phi float [ %2856, %2841 ], [ %2901, %2890 ]
  %2935 = phi float [ %2856, %2841 ], [ %2902, %2890 ]
  br i1 %2422, label %2936, label %3134, !dx.controlflow.hints !132

; <label>:2936                                    ; preds = %2929
  %2937 = extractvalue %dx.types.CBufRet.f32 %2835, 0
  %2938 = fmul fast float %2937, %2837
  %2939 = fsub fast float %2832, %2930
  %2940 = fsub fast float %2833, %2931
  %2941 = fsub fast float %2834, %2932
  %2942 = fmul fast float %2938, %2939
  %2943 = fmul fast float %2938, %2940
  %2944 = fmul fast float %2938, %2941
  %2945 = fadd fast float %2942, %2930
  %2946 = fadd fast float %2943, %2931
  %2947 = fadd fast float %2944, %2932
  %2948 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2933)  ; FMax(a,b)
  %2949 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2934)  ; FMax(a,b)
  %2950 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2935)  ; FMax(a,b)
  %2951 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2831)  ; FMax(a,b)
  %2952 = call float @dx.op.binary.f32(i32 35, float %2830, float %2840)  ; FMax(a,b)
  %2953 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2952)  ; FMax(a,b)
  %2954 = fdiv fast float %2830, %2953
  %2955 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  %2956 = fdiv fast float %2840, %2953
  %2957 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2958 = fcmp fast une float %2951, 1.000000e+00
  br i1 %2958, label %2959, label %2972, !dx.controlflow.hints !133

; <label>:2959                                    ; preds = %2936
  %2960 = call float @dx.op.unary.f32(i32 23, float %2951)  ; Log(value)
  %2961 = fmul fast float %2960, 0x3FE62E4300000000
  %2962 = fmul fast float %2832, %2961
  %2963 = fsub fast float -0.000000e+00, %2962
  %2964 = fmul fast float %2833, %2961
  %2965 = fsub fast float -0.000000e+00, %2964
  %2966 = fmul fast float %2834, %2961
  %2967 = fsub fast float -0.000000e+00, %2966
  %2968 = fsub fast float 1.000000e+00, %2951
  %2969 = fdiv fast float %2963, %2968
  %2970 = fdiv fast float %2965, %2968
  %2971 = fdiv fast float %2967, %2968
  br label %2972

; <label>:2972                                    ; preds = %2959, %2936
  %2973 = phi float [ %2969, %2959 ], [ %2832, %2936 ]
  %2974 = phi float [ %2970, %2959 ], [ %2833, %2936 ]
  %2975 = phi float [ %2971, %2959 ], [ %2834, %2936 ]
  %2976 = phi float [ %2961, %2959 ], [ 0.000000e+00, %2936 ]
  %2977 = fcmp fast une float %2948, 1.000000e+00
  br i1 %2977, label %2978, label %2985, !dx.controlflow.hints !134

; <label>:2978                                    ; preds = %2972
  %2979 = call float @dx.op.unary.f32(i32 23, float %2948)  ; Log(value)
  %2980 = fmul fast float %2979, 0x3FE62E4300000000
  %2981 = fmul fast float %2945, %2980
  %2982 = fsub fast float -0.000000e+00, %2981
  %2983 = fsub fast float 1.000000e+00, %2948
  %2984 = fdiv fast float %2982, %2983
  br label %2985

; <label>:2985                                    ; preds = %2978, %2972
  %2986 = phi float [ %2984, %2978 ], [ %2945, %2972 ]
  %2987 = phi float [ %2980, %2978 ], [ 0.000000e+00, %2972 ]
  %2988 = fcmp fast une float %2949, 1.000000e+00
  br i1 %2988, label %2989, label %2996, !dx.controlflow.hints !134

; <label>:2989                                    ; preds = %2985
  %2990 = call float @dx.op.unary.f32(i32 23, float %2949)  ; Log(value)
  %2991 = fmul fast float %2990, 0x3FE62E4300000000
  %2992 = fmul fast float %2946, %2991
  %2993 = fsub fast float -0.000000e+00, %2992
  %2994 = fsub fast float 1.000000e+00, %2949
  %2995 = fdiv fast float %2993, %2994
  br label %2996

; <label>:2996                                    ; preds = %2989, %2985
  %2997 = phi float [ %2995, %2989 ], [ %2946, %2985 ]
  %2998 = phi float [ %2991, %2989 ], [ 0.000000e+00, %2985 ]
  %2999 = fcmp fast une float %2950, 1.000000e+00
  br i1 %2999, label %3000, label %3007, !dx.controlflow.hints !134

; <label>:3000                                    ; preds = %2996
  %3001 = call float @dx.op.unary.f32(i32 23, float %2950)  ; Log(value)
  %3002 = fmul fast float %3001, 0x3FE62E4300000000
  %3003 = fmul fast float %2947, %3002
  %3004 = fsub fast float -0.000000e+00, %3003
  %3005 = fsub fast float 1.000000e+00, %2950
  %3006 = fdiv fast float %3004, %3005
  br label %3007

; <label>:3007                                    ; preds = %3000, %2996
  %3008 = phi float [ %3006, %3000 ], [ %2947, %2996 ]
  %3009 = phi float [ %3002, %3000 ], [ 0.000000e+00, %2996 ]
  %3010 = fmul fast float %2973, %2957
  %3011 = fmul fast float %2974, %2957
  %3012 = fmul fast float %2975, %2957
  %3013 = fmul fast float %2976, %2957
  %3014 = fmul fast float %2986, %2955
  %3015 = fmul fast float %2997, %2955
  %3016 = fmul fast float %3008, %2955
  %3017 = fmul fast float %2987, %2955
  %3018 = fmul fast float %2998, %2955
  %3019 = fmul fast float %3009, %2955
  %3020 = fadd fast float %3014, %3010
  %3021 = fadd fast float %3015, %3011
  %3022 = fadd fast float %3016, %3012
  %3023 = fadd fast float %3017, %3013
  %3024 = fadd fast float %3018, %3013
  %3025 = fadd fast float %3019, %3013
  %3026 = fcmp fast une float %3023, 0.000000e+00
  br i1 %3026, label %3027, label %3034, !dx.controlflow.hints !135

; <label>:3027                                    ; preds = %3007
  %3028 = fmul fast float %3023, 0x3FF7154760000000
  %3029 = call float @dx.op.unary.f32(i32 21, float %3028)  ; Exp(value)
  %3030 = fsub fast float 1.000000e+00, %3029
  %3031 = fmul fast float %3020, %3030
  %3032 = fsub fast float -0.000000e+00, %3031
  %3033 = fdiv fast float %3032, %3023
  br label %3034

; <label>:3034                                    ; preds = %3027, %3007
  %3035 = phi float [ %3029, %3027 ], [ 1.000000e+00, %3007 ]
  %3036 = phi float [ %3033, %3027 ], [ %3020, %3007 ]
  %3037 = fcmp fast une float %3024, 0.000000e+00
  br i1 %3037, label %3038, label %3045, !dx.controlflow.hints !135

; <label>:3038                                    ; preds = %3034
  %3039 = fmul fast float %3024, 0x3FF7154760000000
  %3040 = call float @dx.op.unary.f32(i32 21, float %3039)  ; Exp(value)
  %3041 = fsub fast float 1.000000e+00, %3040
  %3042 = fmul fast float %3021, %3041
  %3043 = fsub fast float -0.000000e+00, %3042
  %3044 = fdiv fast float %3043, %3024
  br label %3045

; <label>:3045                                    ; preds = %3038, %3034
  %3046 = phi float [ %3040, %3038 ], [ 1.000000e+00, %3034 ]
  %3047 = phi float [ %3044, %3038 ], [ %3021, %3034 ]
  %3048 = fcmp fast une float %3025, 0.000000e+00
  br i1 %3048, label %3049, label %3056, !dx.controlflow.hints !135

; <label>:3049                                    ; preds = %3045
  %3050 = fmul fast float %3025, 0x3FF7154760000000
  %3051 = call float @dx.op.unary.f32(i32 21, float %3050)  ; Exp(value)
  %3052 = fsub fast float 1.000000e+00, %3051
  %3053 = fmul fast float %3022, %3052
  %3054 = fsub fast float -0.000000e+00, %3053
  %3055 = fdiv fast float %3054, %3025
  br label %3056

; <label>:3056                                    ; preds = %3049, %3045
  %3057 = phi float [ %3051, %3049 ], [ 1.000000e+00, %3045 ]
  %3058 = phi float [ %3055, %3049 ], [ %3022, %3045 ]
  %3059 = fcmp fast ogt float %2955, %2957
  br i1 %3059, label %3060, label %3080, !dx.controlflow.hints !136

; <label>:3060                                    ; preds = %3056
  %3061 = fsub fast float 1.000000e+00, %2957
  %3062 = fmul fast float %2973, %3061
  %3063 = fmul fast float %2974, %3061
  %3064 = fmul fast float %2975, %3061
  %3065 = fmul fast float %2976, %3061
  %3066 = fcmp fast une float %3065, 0.000000e+00
  br i1 %3066, label %3067, label %3118, !dx.controlflow.hints !137

; <label>:3067                                    ; preds = %3060
  %3068 = fmul fast float %3065, 0x3FF7154760000000
  %3069 = call float @dx.op.unary.f32(i32 21, float %3068)  ; Exp(value)
  %3070 = fsub fast float 1.000000e+00, %3069
  %3071 = fmul fast float %3062, %3070
  %3072 = fsub fast float -0.000000e+00, %3071
  %3073 = fmul fast float %3063, %3070
  %3074 = fsub fast float -0.000000e+00, %3073
  %3075 = fmul fast float %3064, %3070
  %3076 = fsub fast float -0.000000e+00, %3075
  %3077 = fdiv fast float %3072, %3065
  %3078 = fdiv fast float %3074, %3065
  %3079 = fdiv fast float %3076, %3065
  br label %3118

; <label>:3080                                    ; preds = %3056
  %3081 = fsub fast float 1.000000e+00, %2955
  %3082 = fmul fast float %2986, %3081
  %3083 = fmul fast float %2997, %3081
  %3084 = fmul fast float %3008, %3081
  %3085 = fmul fast float %2987, %3081
  %3086 = fmul fast float %2998, %3081
  %3087 = fmul fast float %3009, %3081
  %3088 = fcmp fast une float %3085, 0.000000e+00
  br i1 %3088, label %3089, label %3096, !dx.controlflow.hints !135

; <label>:3089                                    ; preds = %3080
  %3090 = fmul fast float %3085, 0x3FF7154760000000
  %3091 = call float @dx.op.unary.f32(i32 21, float %3090)  ; Exp(value)
  %3092 = fsub fast float 1.000000e+00, %3091
  %3093 = fmul fast float %3082, %3092
  %3094 = fsub fast float -0.000000e+00, %3093
  %3095 = fdiv fast float %3094, %3085
  br label %3096

; <label>:3096                                    ; preds = %3089, %3080
  %3097 = phi float [ %3095, %3089 ], [ %3082, %3080 ]
  %3098 = phi float [ %3091, %3089 ], [ 1.000000e+00, %3080 ]
  %3099 = fcmp fast une float %3086, 0.000000e+00
  br i1 %3099, label %3100, label %3107, !dx.controlflow.hints !135

; <label>:3100                                    ; preds = %3096
  %3101 = fmul fast float %3086, 0x3FF7154760000000
  %3102 = call float @dx.op.unary.f32(i32 21, float %3101)  ; Exp(value)
  %3103 = fsub fast float 1.000000e+00, %3102
  %3104 = fmul fast float %3083, %3103
  %3105 = fsub fast float -0.000000e+00, %3104
  %3106 = fdiv fast float %3105, %3086
  br label %3107

; <label>:3107                                    ; preds = %3100, %3096
  %3108 = phi float [ %3106, %3100 ], [ %3083, %3096 ]
  %3109 = phi float [ %3102, %3100 ], [ 1.000000e+00, %3096 ]
  %3110 = fcmp fast une float %3087, 0.000000e+00
  br i1 %3110, label %3111, label %3118, !dx.controlflow.hints !135

; <label>:3111                                    ; preds = %3107
  %3112 = fmul fast float %3087, 0x3FF7154760000000
  %3113 = call float @dx.op.unary.f32(i32 21, float %3112)  ; Exp(value)
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = fmul fast float %3084, %3114
  %3116 = fsub fast float -0.000000e+00, %3115
  %3117 = fdiv fast float %3116, %3087
  br label %3118

; <label>:3118                                    ; preds = %3111, %3107, %3067, %3060
  %3119 = phi float [ %3117, %3111 ], [ %3079, %3067 ], [ %3064, %3060 ], [ %3084, %3107 ]
  %3120 = phi float [ %3108, %3111 ], [ %3078, %3067 ], [ %3063, %3060 ], [ %3108, %3107 ]
  %3121 = phi float [ %3097, %3111 ], [ %3077, %3067 ], [ %3062, %3060 ], [ %3097, %3107 ]
  %3122 = phi float [ %3113, %3111 ], [ %3069, %3067 ], [ 1.000000e+00, %3060 ], [ 1.000000e+00, %3107 ]
  %3123 = phi float [ %3109, %3111 ], [ %3069, %3067 ], [ 1.000000e+00, %3060 ], [ %3109, %3107 ]
  %3124 = phi float [ %3098, %3111 ], [ %3069, %3067 ], [ 1.000000e+00, %3060 ], [ %3098, %3107 ]
  %3125 = fmul fast float %3124, %3036
  %3126 = fmul fast float %3123, %3047
  %3127 = fmul fast float %3122, %3058
  %3128 = fadd fast float %3125, %3121
  %3129 = fadd fast float %3126, %3120
  %3130 = fadd fast float %3127, %3119
  %3131 = fmul fast float %3124, %3035
  %3132 = fmul fast float %3123, %3046
  %3133 = fmul fast float %3122, %3057
  br label %3134

; <label>:3134                                    ; preds = %3118, %2929
  %3135 = phi float [ %2935, %2929 ], [ %3133, %3118 ]
  %3136 = phi float [ %2934, %2929 ], [ %3132, %3118 ]
  %3137 = phi float [ %2933, %2929 ], [ %3131, %3118 ]
  %3138 = phi float [ %2932, %2929 ], [ %3130, %3118 ]
  %3139 = phi float [ %2931, %2929 ], [ %3129, %3118 ]
  %3140 = phi float [ %2930, %2929 ], [ %3128, %3118 ]
  %3141 = fmul fast float %3137, %2278
  %3142 = fmul fast float %3136, %2279
  %3143 = fmul fast float %3135, %2280
  %3144 = fsub fast float 1.000000e+00, %2341
  %3145 = fmul fast float %3140, %3144
  %3146 = fmul fast float %3139, %3144
  %3147 = fmul fast float %3138, %3144
  %3148 = fadd fast float %3145, %3141
  %3149 = fadd fast float %3146, %3142
  %3150 = fadd fast float %3147, %3143
  %3151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.f32 %3151, 2
  %3153 = fmul fast float %3152, %2351
  %3154 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %24, i32 %25, i32 undef, float %2341, float %2341, float %2341, float %2341, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.f32 %3155, 0
  %3157 = fmul fast float %3156, %3148
  %3158 = fmul fast float %3156, %3149
  %3159 = fmul fast float %3156, %3150
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %24, i32 %25, i32 undef, float %3157, float %3158, float %3159, float %3157, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 undef, float %3154, float %3154, float %3154, float %3154, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!36 = !{void ()* @cs_fog_raymarching_heightmap_particles, !"cs_fog_raymarching_heightmap_particles", null, !4, !37}
!37 = !{i32 0, i64 272, i32 4, !38}
!38 = !{i32 8, i32 8, i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = !{!93, !93, i64 0}
!93 = !{!"float", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!97, !99, !101, !102, !104, !105, !106}
!97 = distinct !{!97, !98, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!98 = distinct !{!98, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!99 = distinct !{!99, !100, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!100 = distinct !{!100, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!101 = distinct !{!101, !100, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!102 = distinct !{!102, !103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!103 = distinct !{!103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!104 = distinct !{!104, !103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!105 = distinct !{!105, !103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!106 = distinct !{!106, !103, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = !{!109}
!109 = distinct !{!109, !110, !"\01?sort@@YAXAIAM00@Z: %c"}
!110 = distinct !{!110, !"\01?sort@@YAXAIAM00@Z"}
!111 = !{!112, !113, !97, !99, !101, !102, !104, !105, !106}
!112 = distinct !{!112, !110, !"\01?sort@@YAXAIAM00@Z: %a"}
!113 = distinct !{!113, !110, !"\01?sort@@YAXAIAM00@Z: %b"}
!114 = !{!113}
!115 = !{!112, !109, !97, !99, !101, !102, !104, !105, !106}
!116 = !{!112}
!117 = !{!113, !109, !97, !99, !101, !102, !104, !105, !106}
!118 = !{!119}
!119 = distinct !{!119, !120, !"\01?sort@@YAXAIAM00@Z: %c"}
!120 = distinct !{!120, !"\01?sort@@YAXAIAM00@Z"}
!121 = !{!122, !123, !97, !99, !101, !102, !104, !105, !106}
!122 = distinct !{!122, !120, !"\01?sort@@YAXAIAM00@Z: %a"}
!123 = distinct !{!123, !120, !"\01?sort@@YAXAIAM00@Z: %b"}
!124 = !{!123}
!125 = !{!122, !119, !97, !99, !101, !102, !104, !105, !106}
!126 = !{!122}
!127 = !{!123, !119, !97, !99, !101, !102, !104, !105, !106}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}

