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
; shader hash: 72a37d2a41bb2eaeade607aa4c75d4b9
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

define void @cs_fog_raymarching_particles_brfog() {
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
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = fsub fast float -0.000000e+00, %66
  %136 = fsub fast float -0.000000e+00, %67
  %137 = fsub fast float %132, %68
  %138 = fadd fast float %137, %134
  %139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %135, float %136, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = fdiv fast float 1.000000e+00, %140
  %142 = fmul fast float %141, %139
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = fsub fast float %144, %68
  %146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %135, float %136, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %147 = fmul fast float %141, %146
  %148 = call float @dx.op.binary.f32(i32 36, float %142, float %147)  ; FMin(a,b)
  %149 = call float @dx.op.binary.f32(i32 35, float %142, float %147)  ; FMax(a,b)
  %150 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %148)  ; FMin(a,b)
  %151 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %149)  ; FMax(a,b)
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %156 = fsub fast float %153, %68
  %157 = fadd fast float %156, %155
  %158 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %135, float %136, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %159 = fmul fast float %141, %158
  %160 = fcmp fast olt float %159, 0.000000e+00
  %161 = fcmp fast ogt float %111, 0.000000e+00
  %162 = and i1 %161, %160
  br i1 %162, label %167, label %163, !dx.controlflow.hints !38

; <label>:163                                     ; preds = %0
  %164 = fcmp fast olt float %111, 0.000000e+00
  br i1 %164, label %165, label %167, !dx.controlflow.hints !39

; <label>:165                                     ; preds = %163
  %166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %159)  ; FMax(a,b)
  br label %167

; <label>:167                                     ; preds = %165, %163, %0
  %168 = phi float [ 0.000000e+00, %0 ], [ %166, %165 ], [ 0.000000e+00, %163 ]
  %169 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %165 ], [ %159, %163 ]
  %170 = fcmp fast oeq float %169, 0.000000e+00
  br i1 %170, label %174, label %171, !dx.controlflow.hints !40

; <label>:171                                     ; preds = %167
  %172 = call float @dx.op.binary.f32(i32 36, float %150, float %168)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %151, float %169)  ; FMax(a,b)
  br label %174

; <label>:174                                     ; preds = %171, %167
  %175 = phi i32 [ 1, %171 ], [ 0, %167 ]
  %176 = phi float [ %173, %171 ], [ %151, %167 ]
  %177 = phi float [ %172, %171 ], [ %150, %167 ]
  %178 = fdiv fast float 1.000000e+00, %109
  %179 = fdiv fast float 1.000000e+00, %110
  %180 = fdiv fast float 1.000000e+00, %111
  %181 = call float @dx.op.binary.f32(i32 36, float %130, float %176)  ; FMin(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float %107, float %177)  ; FMax(a,b)
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = fmul fast float %55, 2.000000e+00
  %186 = fadd fast float %185, -1.000000e+00
  %187 = fmul fast float %184, %186
  %188 = fadd fast float %187, %182
  %189 = fcmp fast olt float %188, %181
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = fcmp fast olt float %191, 1.000000e+00
  %193 = and i1 %192, %189
  br i1 %193, label %194, label %2170

; <label>:194                                     ; preds = %174
  %195 = fmul fast float %188, %111
  %196 = fadd fast float %195, %68
  %197 = fmul fast float %188, %110
  %198 = fadd fast float %197, %67
  %199 = fmul fast float %188, %109
  %200 = fadd fast float %199, %66
  br label %201

; <label>:201                                     ; preds = %2140, %194
  %202 = phi i32 [ %2142, %2140 ], [ undef, %194 ]
  %203 = phi float [ %2143, %2140 ], [ undef, %194 ]
  %204 = phi float [ %2144, %2140 ], [ undef, %194 ]
  %205 = phi float [ %2145, %2140 ], [ undef, %194 ]
  %206 = phi float [ %2146, %2140 ], [ undef, %194 ]
  %207 = phi float [ %2147, %2140 ], [ undef, %194 ]
  %208 = phi i32 [ %519, %2140 ], [ undef, %194 ]
  %209 = phi float [ %520, %2140 ], [ undef, %194 ]
  %210 = phi float [ %334, %2140 ], [ undef, %194 ]
  %211 = phi float [ %335, %2140 ], [ undef, %194 ]
  %212 = phi float [ %336, %2140 ], [ undef, %194 ]
  %213 = phi float [ %337, %2140 ], [ undef, %194 ]
  %214 = phi float [ %2148, %2140 ], [ 0.000000e+00, %194 ]
  %215 = phi float [ %2149, %2140 ], [ 1.000000e+00, %194 ]
  %216 = phi float [ %2150, %2140 ], [ 0.000000e+00, %194 ]
  %217 = phi float [ %2151, %2140 ], [ 0.000000e+00, %194 ]
  %218 = phi float [ %2152, %2140 ], [ 0.000000e+00, %194 ]
  %219 = phi float [ %2162, %2140 ], [ %200, %194 ]
  %220 = phi float [ %2163, %2140 ], [ %198, %194 ]
  %221 = phi float [ %2164, %2140 ], [ %196, %194 ]
  %222 = phi float [ %2141, %2140 ], [ %188, %194 ]
  %223 = phi i32 [ %339, %2140 ], [ 10, %194 ]
  %224 = phi float [ %2153, %2140 ], [ 0.000000e+00, %194 ]
  %225 = phi float [ %2154, %2140 ], [ 0.000000e+00, %194 ]
  %226 = phi float [ %2155, %2140 ], [ 0.000000e+00, %194 ]
  %227 = phi float [ %2156, %2140 ], [ 0.000000e+00, %194 ]
  %228 = phi float [ %2157, %2140 ], [ 0.000000e+00, %194 ]
  %229 = phi i32 [ %2158, %2140 ], [ 0, %194 ]
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = fsub fast float %219, %233
  %236 = fsub fast float %220, %234
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %240 = fmul fast float %235, %238
  %241 = fmul fast float %236, %239
  %242 = call float @dx.op.binary.f32(i32 36, float %240, float %241)  ; FMin(a,b)
  %243 = fcmp fast olt float %242, 0.000000e+00
  %244 = call float @dx.op.binary.f32(i32 35, float %240, float %241)  ; FMax(a,b)
  %245 = fcmp fast ogt float %244, 1.000000e+00
  %246 = or i1 %243, %245
  %247 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %248 = fcmp fast olt float %221, %247
  %249 = or i1 %246, %248
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 3
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = fadd fast float %253, %251
  %255 = fcmp fast ogt float %221, %254
  %256 = or i1 %249, %255
  br i1 %256, label %257, label %286, !dx.controlflow.hints !41

; <label>:257                                     ; preds = %201
  %258 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %260 = fsub fast float %233, %219
  %261 = fmul fast float %260, %178
  %262 = fadd fast float %260, %258
  %263 = fmul fast float %262, %178
  %264 = call float @dx.op.binary.f32(i32 36, float %261, float %263)  ; FMin(a,b)
  %265 = call float @dx.op.binary.f32(i32 35, float %261, float %263)  ; FMax(a,b)
  %266 = fsub fast float %234, %220
  %267 = fmul fast float %266, %179
  %268 = fadd fast float %266, %259
  %269 = fmul fast float %268, %179
  %270 = call float @dx.op.binary.f32(i32 36, float %267, float %269)  ; FMin(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %264, float %270)  ; FMax(a,b)
  %272 = call float @dx.op.binary.f32(i32 35, float %267, float %269)  ; FMax(a,b)
  %273 = call float @dx.op.binary.f32(i32 36, float %265, float %272)  ; FMin(a,b)
  %274 = fsub fast float %247, %221
  %275 = fmul fast float %274, %180
  %276 = fsub fast float %251, %221
  %277 = fadd fast float %276, %253
  %278 = fmul fast float %277, %180
  %279 = call float @dx.op.binary.f32(i32 36, float %275, float %278)  ; FMin(a,b)
  %280 = call float @dx.op.binary.f32(i32 35, float %271, float %279)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 35, float %275, float %278)  ; FMax(a,b)
  %282 = call float @dx.op.binary.f32(i32 36, float %273, float %281)  ; FMin(a,b)
  %283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %280)  ; FMax(a,b)
  %284 = fcmp fast oge float %282, %283
  %285 = select i1 %284, float %280, float 1.000000e+07
  br label %332

; <label>:286                                     ; preds = %201
  %287 = fsub fast float 1.000000e+00, %241
  %288 = icmp eq i32 %223, 0
  br i1 %288, label %317, label %289

; <label>:289                                     ; preds = %286
  br label %290

; <label>:290                                     ; preds = %313, %289
  %291 = phi i32 [ %314, %313 ], [ %223, %289 ]
  %292 = uitofp i32 %291 to float
  %293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %240, float %287, float undef, float undef, i32 0, i32 0, i32 undef, float %292)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = extractvalue %dx.types.ResRet.f32 %293, 2
  %297 = fcmp fast oeq float %294, 0.000000e+00
  %298 = fcmp ule float %221, %296
  %299 = fcmp uge float %221, %295
  %300 = or i1 %299, %298
  %301 = or i1 %297, %300
  br i1 %301, label %302, label %313, !dx.controlflow.hints !42

; <label>:302                                     ; preds = %290
  %303 = extractvalue %dx.types.ResRet.f32 %293, 3
  %304 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %305 = and i32 %291, 31
  %306 = lshr i32 1024, %305
  %307 = uitofp i32 %306 to float
  %308 = fdiv fast float %304, %307
  %309 = add i32 %291, 1
  %310 = uitofp i32 %309 to float
  %311 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %310)  ; FMin(a,b)
  %312 = fptosi float %311 to i32
  br label %332

; <label>:313                                     ; preds = %290
  %314 = add i32 %291, -1
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %290, !llvm.loop !43

; <label>:316                                     ; preds = %313
  br label %317

; <label>:317                                     ; preds = %316, %286
  %318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %240, float %287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  %320 = extractvalue %dx.types.ResRet.f32 %318, 1
  %321 = extractvalue %dx.types.ResRet.f32 %318, 2
  %322 = extractvalue %dx.types.ResRet.f32 %318, 3
  %323 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %324 = fmul fast float %323, 9.765625e-04
  %325 = fcmp fast oeq float %319, 0.000000e+00
  %326 = fcmp ule float %221, %321
  %327 = fcmp uge float %221, %320
  %328 = or i1 %327, %326
  %329 = or i1 %325, %328
  %330 = zext i1 %329 to i32
  %331 = xor i32 %330, 1
  br label %332

; <label>:332                                     ; preds = %317, %302, %257
  %333 = phi float [ %285, %257 ], [ %308, %302 ], [ %324, %317 ]
  %334 = phi float [ %210, %257 ], [ %294, %302 ], [ %319, %317 ]
  %335 = phi float [ %211, %257 ], [ %295, %302 ], [ %320, %317 ]
  %336 = phi float [ %212, %257 ], [ %296, %302 ], [ %321, %317 ]
  %337 = phi float [ %213, %257 ], [ %303, %302 ], [ %322, %317 ]
  %338 = phi i32 [ 0, %257 ], [ 0, %302 ], [ %331, %317 ]
  %339 = phi i32 [ 10, %257 ], [ %312, %302 ], [ 1, %317 ]
  %340 = icmp eq i32 %338, 0
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %343 = call float @dx.op.binary.f32(i32 35, float %333, float %342)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %343)  ; FMin(a,b)
  %345 = icmp eq i32 %175, 0
  br i1 %345, label %517, label %346, !dx.controlflow.hints !45

; <label>:346                                     ; preds = %332
  %347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.i32 %347, 1
  %349 = and i32 %348, 1
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %508, !dx.controlflow.hints !46

; <label>:351                                     ; preds = %346
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 3
  %355 = fmul fast float %353, %219
  %356 = fmul fast float %354, %220
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = fadd fast float %355, %358
  %361 = fadd fast float %356, %359
  %362 = call float @dx.op.unary.f32(i32 7, float %360)  ; Saturate(value)
  %363 = call float @dx.op.unary.f32(i32 7, float %361)  ; Saturate(value)
  %364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = fmul fast float %367, %365
  %369 = fsub fast float %360, %362
  %370 = fsub fast float %361, %363
  %371 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %373 = fmul fast float %371, %369
  %374 = fmul fast float %372, %370
  %375 = fmul fast float %373, %373
  %376 = fmul fast float %374, %374
  %377 = fadd fast float %375, %376
  %378 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 3
  %381 = fmul fast float %380, %378
  %382 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  %383 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %384 = fsub fast float %383, %368
  %385 = fmul fast float %384, %382
  %386 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %387 = fsub fast float %221, %368
  %388 = fsub fast float %387, %386
  %389 = fsub fast float %388, %385
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %392 = fsub fast float %389, %391
  %393 = fcmp fast olt float %392, 0.000000e+00
  %394 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %395 = extractvalue %dx.types.CBufRet.i32 %347, 0
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %450, label %397

; <label>:397                                     ; preds = %351
  br label %398

; <label>:398                                     ; preds = %437, %397
  %399 = phi i32 [ %443, %437 ], [ 1, %397 ]
  %400 = phi float [ %445, %437 ], [ 0x47EFFFFFE0000000, %397 ]
  %401 = phi i32 [ %446, %437 ], [ 0, %397 ]
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.i32 %404, 1
  %406 = and i32 %405, 8
  %407 = icmp eq i32 %406, 0
  %408 = fcmp fast ogt float %403, %389
  %409 = or i1 %408, %407
  %410 = add i32 %401, 171
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %410)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  br i1 %409, label %415, label %421, !dx.controlflow.hints !47

; <label>:415                                     ; preds = %398
  %416 = fsub fast float %412, %219
  %417 = fsub fast float %413, %220
  %418 = fmul fast float %416, %416
  %419 = fmul fast float %417, %417
  %420 = fadd fast float %418, %419
  br label %437

; <label>:421                                     ; preds = %398
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %424 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %425 = fmul fast float %424, %423
  %426 = fsub fast float %425, %403
  %427 = fdiv fast float %414, %426
  %428 = fsub fast float %219, %412
  %429 = fsub fast float %220, %413
  %430 = fsub fast float %389, %403
  %431 = fmul fast float %427, %430
  %432 = fmul fast float %428, %428
  %433 = fmul fast float %429, %429
  %434 = fadd fast float %432, %433
  %435 = fmul fast float %431, %431
  %436 = fadd fast float %434, %435
  br label %437

; <label>:437                                     ; preds = %421, %415
  %438 = phi float [ %420, %415 ], [ %436, %421 ]
  %439 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %440 = fsub float %414, %439
  %441 = fcmp fast olt float %440, 0.000000e+00
  %442 = zext i1 %441 to i32
  %443 = and i32 %442, %399
  %444 = call float @dx.op.unary.f32(i32 6, float %440)  ; FAbs(value)
  %445 = call float @dx.op.binary.f32(i32 36, float %400, float %444)  ; FMin(a,b)
  %446 = add i32 %401, 1
  %447 = extractvalue %dx.types.CBufRet.i32 %404, 0
  %448 = icmp ult i32 %446, %447
  br i1 %448, label %398, label %449

; <label>:449                                     ; preds = %437
  br label %450

; <label>:450                                     ; preds = %449, %351
  %451 = phi i32 [ 1, %351 ], [ %443, %449 ]
  %452 = phi float [ 0x47EFFFFFE0000000, %351 ], [ %445, %449 ]
  br label %453

; <label>:453                                     ; preds = %453, %450
  %454 = phi i32 [ %451, %450 ], [ %493, %453 ]
  %455 = phi float [ 0x47EFFFFFE0000000, %450 ], [ %495, %453 ]
  %456 = phi i32 [ 0, %450 ], [ %496, %453 ]
  %457 = add nuw nsw i32 %456, 191
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %457)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = add nuw nsw i32 %456, 195
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %462)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %465 = extractvalue %dx.types.CBufRet.f32 %463, 1
  %466 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %467 = fsub fast float %219, %459
  %468 = fsub fast float %220, %460
  %469 = fsub fast float %389, %461
  %470 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  %471 = call float @dx.op.unary.f32(i32 6, float %468)  ; FAbs(value)
  %472 = call float @dx.op.unary.f32(i32 6, float %469)  ; FAbs(value)
  %473 = fsub fast float %470, %464
  %474 = fsub fast float %471, %465
  %475 = fsub fast float %472, %466
  %476 = call float @dx.op.binary.f32(i32 35, float %473, float 0.000000e+00)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float %474, float 0.000000e+00)  ; FMax(a,b)
  %478 = call float @dx.op.binary.f32(i32 35, float %475, float 0.000000e+00)  ; FMax(a,b)
  %479 = fmul fast float %476, %476
  %480 = fmul fast float %477, %477
  %481 = fadd fast float %480, %479
  %482 = fmul fast float %478, %478
  %483 = fadd fast float %481, %482
  %484 = call float @dx.op.unary.f32(i32 24, float %483)  ; Sqrt(value)
  %485 = call float @dx.op.binary.f32(i32 35, float %474, float %475)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %473, float %485)  ; FMax(a,b)
  %487 = call float @dx.op.binary.f32(i32 36, float %486, float 0.000000e+00)  ; FMin(a,b)
  %488 = fadd fast float %487, %484
  %489 = fsub fast float -0.000000e+00, %488
  %490 = fcmp ogt float %488, -0.000000e+00
  %491 = icmp ne i32 %454, 0
  %492 = and i1 %491, %490
  %493 = zext i1 %492 to i32
  %494 = call float @dx.op.unary.f32(i32 6, float %489)  ; FAbs(value)
  %495 = call float @dx.op.binary.f32(i32 36, float %455, float %494)  ; FMin(a,b)
  %496 = add nuw nsw i32 %456, 1
  %497 = icmp eq i32 %496, 4
  br i1 %497, label %498, label %453

; <label>:498                                     ; preds = %453
  %499 = call float @dx.op.binary.f32(i32 36, float %394, float %495)  ; FMin(a,b)
  %500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.i32 %500, 1
  %502 = and i32 %501, 2
  %503 = icmp ne i32 %502, 0
  %504 = xor i1 %492, %503
  %505 = call float @dx.op.binary.f32(i32 36, float %499, float %452)  ; FMin(a,b)
  %506 = and i1 %504, %393
  %507 = zext i1 %506 to i32
  br label %508

; <label>:508                                     ; preds = %498, %346
  %509 = phi i32 [ %208, %346 ], [ %507, %498 ]
  %510 = phi float [ 0.000000e+00, %346 ], [ %505, %498 ]
  %511 = phi float [ %221, %346 ], [ %389, %498 ]
  %512 = icmp ne i32 %509, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %341, 3
  %514 = call float @dx.op.binary.f32(i32 35, float %510, float %513)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %514)  ; FMin(a,b)
  %516 = zext i1 %512 to i32
  br label %517

; <label>:517                                     ; preds = %508, %332
  %518 = phi i32 [ %516, %508 ], [ 0, %332 ]
  %519 = phi i32 [ %509, %508 ], [ %208, %332 ]
  %520 = phi float [ %511, %508 ], [ %209, %332 ]
  %521 = phi float [ %515, %508 ], [ 0x47EFFFFFE0000000, %332 ]
  %522 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %523 = fmul fast float %522, %222
  %524 = call float @dx.op.unary.f32(i32 23, float %523)  ; Log(value)
  %525 = fmul fast float %524, 0x3FE62E4300000000
  %526 = call float @dx.op.binary.f32(i32 35, float %525, float 1.000000e+00)  ; FMax(a,b)
  %527 = fmul fast float %526, %521
  %528 = call float @dx.op.binary.f32(i32 36, float %527, float %344)  ; FMin(a,b)
  %529 = call float @dx.op.binary.f32(i32 35, float %528, float %231)  ; FMax(a,b)
  %530 = fadd fast float %181, 0x3F1A36E2E0000000
  %531 = fsub fast float %530, %222
  %532 = call float @dx.op.binary.f32(i32 36, float %531, float %529)  ; FMin(a,b)
  br i1 %340, label %671, label %533, !dx.controlflow.hints !48

; <label>:533                                     ; preds = %517
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %537 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.i32 %538, 0
  %540 = icmp ne i32 %539, 0
  %541 = zext i1 %540 to i32
  %542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.i32 %542, 0
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %578, label %545

; <label>:545                                     ; preds = %533
  br label %546

; <label>:546                                     ; preds = %573, %545
  %547 = phi i32 [ %574, %573 ], [ 0, %545 ]
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %547, i32 0)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = extractvalue %dx.types.ResRet.f32 %548, 1
  %551 = extractvalue %dx.types.ResRet.f32 %548, 2
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %547, i32 16)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = fsub fast float %549, %553
  %557 = fsub fast float %550, %554
  %558 = fsub fast float %551, %555
  %559 = fadd fast float %553, %549
  %560 = fadd fast float %554, %550
  %561 = fadd fast float %555, %551
  %562 = fcmp fast olt float %219, %556
  %563 = fcmp fast olt float %220, %557
  %564 = fcmp fast olt float %221, %558
  %565 = or i1 %562, %563
  %566 = or i1 %564, %565
  %567 = fcmp fast ogt float %219, %559
  %568 = fcmp fast ogt float %220, %560
  %569 = fcmp fast ogt float %221, %561
  %570 = or i1 %567, %568
  %571 = or i1 %569, %570
  %572 = or i1 %566, %571
  br i1 %572, label %573, label %576, !dx.controlflow.hints !49

; <label>:573                                     ; preds = %546
  %574 = add nuw i32 %547, 1
  %575 = icmp ult i32 %574, %543
  br i1 %575, label %546, label %576

; <label>:576                                     ; preds = %573, %546
  %577 = phi i32 [ 255, %573 ], [ %547, %546 ]
  br label %578

; <label>:578                                     ; preds = %576, %533
  %579 = phi i32 [ 255, %533 ], [ %577, %576 ]
  %580 = icmp eq i32 %579, 255
  br i1 %580, label %590, label %581, !dx.controlflow.hints !50

; <label>:581                                     ; preds = %578
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %579, i32 32)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = extractvalue %dx.types.ResRet.f32 %582, 2
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %579, i32 156)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = icmp ne i32 %587, 0
  %589 = zext i1 %588 to i32
  br label %590

; <label>:590                                     ; preds = %581, %578
  %591 = phi float [ %583, %581 ], [ %535, %578 ]
  %592 = phi float [ %584, %581 ], [ %536, %578 ]
  %593 = phi float [ %585, %581 ], [ %537, %578 ]
  %594 = phi i32 [ %589, %581 ], [ %541, %578 ]
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %665, !dx.controlflow.hints !51

; <label>:596                                     ; preds = %590
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %599 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 3
  br i1 %580, label %613, label %603, !dx.controlflow.hints !52

; <label>:603                                     ; preds = %596
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %579, i32 60)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %579, i32 64)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %579, i32 72)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %579, i32 96)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  br label %613

; <label>:613                                     ; preds = %603, %596
  %614 = phi float [ %605, %603 ], [ %253, %596 ]
  %615 = phi float [ %610, %603 ], [ %251, %596 ]
  %616 = phi float [ %612, %603 ], [ %599, %596 ]
  %617 = phi float [ %607, %603 ], [ %601, %596 ]
  %618 = phi float [ %608, %603 ], [ %602, %596 ]
  %619 = call float @dx.op.binary.f32(i32 35, float %334, float 0.000000e+00)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 36, float %619, float 1.000000e+00)  ; FMin(a,b)
  %621 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %622 = call float @dx.op.binary.f32(i32 35, float %337, float 0x3F847AE140000000)  ; FMax(a,b)
  %623 = fsub fast float %335, %221
  %624 = fsub fast float %221, %336
  %625 = call float @dx.op.binary.f32(i32 36, float %624, float %623)  ; FMin(a,b)
  %626 = fdiv fast float %625, %622
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = fsub fast float %221, %615
  %629 = fdiv fast float %628, %614
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = fsub fast float 1.000000e+00, %630
  %632 = fmul float %627, %631
  %633 = fmul float %632, %632
  %634 = fmul fast float %621, %598
  %635 = fmul fast float %634, %633
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 2
  %638 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %639 = fsub fast float %635, %638
  %640 = fsub fast float %637, %638
  %641 = fdiv fast float %639, %640
  %642 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %643 = fmul fast float %642, %616
  %644 = fcmp fast ogt float %618, 0.000000e+00
  br i1 %644, label %645, label %665, !dx.controlflow.hints !53

; <label>:645                                     ; preds = %613
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 0
  %648 = extractvalue %dx.types.CBufRet.f32 %646, 1
  %649 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %650 = fsub fast float %219, %647
  %651 = fsub fast float %220, %648
  %652 = fsub fast float %221, %649
  %653 = fmul fast float %650, %650
  %654 = fmul fast float %651, %651
  %655 = fadd fast float %653, %654
  %656 = fmul fast float %652, %652
  %657 = fadd fast float %655, %656
  %658 = call float @dx.op.unary.f32(i32 24, float %657)  ; Sqrt(value)
  %659 = fsub fast float %658, %617
  %660 = fsub fast float %618, %617
  %661 = fdiv fast float %659, %660
  %662 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %663 = fmul fast float %662, %662
  %664 = fmul fast float %663, %643
  br label %665

; <label>:665                                     ; preds = %645, %613, %590
  %666 = phi float [ 0.000000e+00, %590 ], [ %664, %645 ], [ %643, %613 ]
  %667 = fmul fast float %666, %532
  %668 = fmul fast float %667, %591
  %669 = fmul fast float %667, %592
  %670 = fmul fast float %667, %593
  br label %671

; <label>:671                                     ; preds = %665, %517
  %672 = phi float [ %667, %665 ], [ 0.000000e+00, %517 ]
  %673 = phi float [ %668, %665 ], [ 0.000000e+00, %517 ]
  %674 = phi float [ %669, %665 ], [ 0.000000e+00, %517 ]
  %675 = phi float [ %670, %665 ], [ 0.000000e+00, %517 ]
  %676 = icmp eq i32 %518, 0
  br i1 %676, label %719, label %677, !dx.controlflow.hints !54

; <label>:677                                     ; preds = %671
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %680 = fsub fast float %532, %679
  %681 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %682 = fmul fast float %680, %681
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %688 = fsub fast float %687, %520
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 3
  %691 = fmul fast float %688, %690
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %693 = fmul fast float %692, %685
  %694 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %695 = fsub fast float %222, %694
  %696 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %697 = fmul fast float %695, %696
  %698 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %699 = fsub fast float 1.000000e+00, %683
  %700 = fmul fast float %698, %699
  %701 = fadd fast float %700, %683
  %702 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %703 = fsub fast float %693, %702
  %704 = fmul fast float %703, %701
  %705 = fadd fast float %704, %702
  %706 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %707 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %708 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %709 = fmul fast float %705, %532
  %710 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %711 = fmul fast float %709, %706
  %712 = fmul fast float %709, %707
  %713 = fmul fast float %709, %708
  %714 = fadd fast float %711, %673
  %715 = fadd fast float %712, %674
  %716 = fadd fast float %713, %675
  %717 = fmul fast float %709, %710
  %718 = fadd fast float %709, %672
  br label %719

; <label>:719                                     ; preds = %677, %671
  %720 = phi float [ %718, %677 ], [ %672, %671 ]
  %721 = phi float [ %717, %677 ], [ 0.000000e+00, %671 ]
  %722 = phi float [ %714, %677 ], [ %673, %671 ]
  %723 = phi float [ %715, %677 ], [ %674, %671 ]
  %724 = phi float [ %716, %677 ], [ %675, %671 ]
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 1
  %727 = fcmp fast ogt float %720, %726
  br i1 %727, label %728, label %734, !dx.controlflow.hints !55

; <label>:728                                     ; preds = %719
  %729 = fdiv fast float 1.000000e+00, %720
  %730 = fmul fast float %729, %722
  %731 = fmul fast float %729, %723
  %732 = fmul fast float %729, %724
  %733 = fmul fast float %729, %721
  br label %734

; <label>:734                                     ; preds = %728, %719
  %735 = phi float [ %733, %728 ], [ %721, %719 ]
  %736 = phi float [ %730, %728 ], [ %722, %719 ]
  %737 = phi float [ %731, %728 ], [ %723, %719 ]
  %738 = phi float [ %732, %728 ], [ %724, %719 ]
  br i1 %727, label %741, label %739, !dx.controlflow.hints !56

; <label>:739                                     ; preds = %734
  %740 = fadd fast float %532, %222
  br label %2140

; <label>:741                                     ; preds = %734
  %742 = fmul fast float %720, 0xBFF7154760000000
  %743 = call float @dx.op.unary.f32(i32 21, float %742)  ; Exp(value)
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.i32 %745, 0
  %747 = icmp eq i32 %746, 1
  br i1 %747, label %748, label %783, !dx.controlflow.hints !57

; <label>:748                                     ; preds = %741
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %751 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %752 = fsub fast float %219, %750
  %753 = fsub fast float %220, %751
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = fmul fast float %752, %755
  %758 = fmul fast float %753, %756
  %759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %757, float %758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = fcmp fast ogt float %760, 0.000000e+00
  %762 = extractvalue %dx.types.CBufRet.i32 %745, 3
  %763 = icmp ne i32 %762, 0
  %764 = and i1 %761, %763
  br i1 %764, label %765, label %783, !dx.controlflow.hints !58

; <label>:765                                     ; preds = %748
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %769 = fsub fast float %219, %767
  %770 = fsub fast float %220, %768
  %771 = fmul fast float %769, %769
  %772 = fmul fast float %770, %770
  %773 = fadd fast float %771, %772
  %774 = uitofp i32 %762 to float
  %775 = fmul fast float %774, %774
  %776 = fcmp fast ogt float %773, %775
  br i1 %776, label %783, label %777, !dx.controlflow.hints !59

; <label>:777                                     ; preds = %765
  %778 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %779 = fsub fast float %774, %778
  %780 = fmul fast float %779, 0x3F75555560000000
  %781 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %782 = call float @dx.op.binary.f32(i32 36, float %781, float %760)  ; FMin(a,b)
  br label %783

; <label>:783                                     ; preds = %777, %765, %748, %741
  %784 = phi float [ 1.000000e+00, %741 ], [ %782, %777 ], [ %760, %748 ], [ 0.000000e+00, %765 ]
  %785 = fcmp fast ogt float %784, 0.000000e+00
  br i1 %785, label %786, label %859, !dx.controlflow.hints !60

; <label>:786                                     ; preds = %783
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = extractvalue %dx.types.ResRet.i32 %787, 1
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = extractvalue %dx.types.ResRet.i32 %790, 1
  %793 = extractvalue %dx.types.ResRet.i32 %790, 2
  %794 = extractvalue %dx.types.ResRet.i32 %790, 3
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = extractvalue %dx.types.ResRet.i32 %795, 1
  %798 = extractvalue %dx.types.ResRet.i32 %795, 2
  %799 = extractvalue %dx.types.ResRet.i32 %795, 3
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = extractvalue %dx.types.ResRet.i32 %800, 1
  %803 = extractvalue %dx.types.ResRet.i32 %800, 2
  %804 = extractvalue %dx.types.ResRet.i32 %800, 3
  %805 = and i32 %801, 65535
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = lshr i32 %801, 16
  %808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %807)  ; LegacyF16ToF32(value)
  %809 = and i32 %802, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = lshr i32 %802, 16
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = and i32 %803, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = lshr i32 %803, 16
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = and i32 %804, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %804, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = and i32 %796, 65535
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = lshr i32 %796, 16
  %824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %823)  ; LegacyF16ToF32(value)
  %825 = and i32 %797, 65535
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = lshr i32 %797, 16
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = and i32 %798, 65535
  %830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %829)  ; LegacyF16ToF32(value)
  %831 = lshr i32 %798, 16
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = and i32 %799, 65535
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = lshr i32 %799, 16
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = and i32 %791, 65535
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %791, 16
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = and i32 %792, 65535
  %842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %841)  ; LegacyF16ToF32(value)
  %843 = lshr i32 %792, 16
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = and i32 %793, 65535
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = lshr i32 %793, 16
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = and i32 %794, 65535
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = lshr i32 %794, 16
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = and i32 %788, 65535
  %854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %853)  ; LegacyF16ToF32(value)
  %855 = lshr i32 %788, 16
  %856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %855)  ; LegacyF16ToF32(value)
  %857 = and i32 %789, 65535
  %858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %857)  ; LegacyF16ToF32(value)
  br label %859

; <label>:859                                     ; preds = %786, %783
  %860 = phi float [ %858, %786 ], [ 0.000000e+00, %783 ]
  %861 = phi float [ %856, %786 ], [ 0.000000e+00, %783 ]
  %862 = phi float [ %854, %786 ], [ 0.000000e+00, %783 ]
  %863 = phi float [ %852, %786 ], [ 0.000000e+00, %783 ]
  %864 = phi float [ %850, %786 ], [ 0.000000e+00, %783 ]
  %865 = phi float [ %848, %786 ], [ 0.000000e+00, %783 ]
  %866 = phi float [ %846, %786 ], [ 0.000000e+00, %783 ]
  %867 = phi float [ %844, %786 ], [ 0.000000e+00, %783 ]
  %868 = phi float [ %842, %786 ], [ 0.000000e+00, %783 ]
  %869 = phi float [ %840, %786 ], [ 0.000000e+00, %783 ]
  %870 = phi float [ %838, %786 ], [ 0.000000e+00, %783 ]
  %871 = phi float [ %836, %786 ], [ 0.000000e+00, %783 ]
  %872 = phi float [ %834, %786 ], [ 0.000000e+00, %783 ]
  %873 = phi float [ %832, %786 ], [ 0.000000e+00, %783 ]
  %874 = phi float [ %830, %786 ], [ 0.000000e+00, %783 ]
  %875 = phi float [ %828, %786 ], [ 0.000000e+00, %783 ]
  %876 = phi float [ %826, %786 ], [ 0.000000e+00, %783 ]
  %877 = phi float [ %824, %786 ], [ 0.000000e+00, %783 ]
  %878 = phi float [ %822, %786 ], [ 0.000000e+00, %783 ]
  %879 = phi float [ %820, %786 ], [ 0.000000e+00, %783 ]
  %880 = phi float [ %818, %786 ], [ 0.000000e+00, %783 ]
  %881 = phi float [ %816, %786 ], [ 0.000000e+00, %783 ]
  %882 = phi float [ %814, %786 ], [ 0.000000e+00, %783 ]
  %883 = phi float [ %812, %786 ], [ 0.000000e+00, %783 ]
  %884 = phi float [ %810, %786 ], [ 0.000000e+00, %783 ]
  %885 = phi float [ %808, %786 ], [ 0.000000e+00, %783 ]
  %886 = phi float [ %806, %786 ], [ 0.000000e+00, %783 ]
  %887 = fcmp fast olt float %784, 1.000000e+00
  br i1 %887, label %888, label %1548, !dx.controlflow.hints !61

; <label>:888                                     ; preds = %859
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %892 = fsub fast float %219, %890
  %893 = fsub fast float %220, %891
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = fmul fast float %892, %895
  %898 = fmul fast float %893, %896
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = fmul fast float %900, %897
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %903 = fadd fast float %901, %902
  %904 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %905 = fmul fast float %904, %898
  %906 = extractvalue %dx.types.CBufRet.f32 %899, 3
  %907 = fadd fast float %905, %906
  %908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %903, float %907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %914 = fsub fast float %912, %913
  %915 = fmul fast float %914, %909
  %916 = fadd fast float %915, %913
  %917 = extractvalue %dx.types.CBufRet.f32 %911, 3
  %918 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %919 = fsub fast float %917, %918
  %920 = fmul fast float %919, %910
  %921 = fadd fast float %920, %918
  %922 = fsub fast float %221, %916
  %923 = fsub fast float %921, %916
  %924 = fdiv fast float %922, %923
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = fmul fast float %927, %925
  %929 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %930 = fadd fast float %928, %929
  %931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %903, float %907, float %930, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = extractvalue %dx.types.ResRet.f32 %931, 1
  %934 = extractvalue %dx.types.ResRet.f32 %931, 2
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %939 = fmul fast float %936, %932
  %940 = fmul fast float %937, %933
  %941 = fmul fast float %938, %934
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %945 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %946 = fadd fast float %939, %943
  %947 = fadd fast float %940, %944
  %948 = fadd fast float %941, %945
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = fmul fast float %950, %897
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %953 = fadd fast float %951, %952
  %954 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %955 = fmul fast float %954, %898
  %956 = extractvalue %dx.types.CBufRet.f32 %949, 3
  %957 = fadd fast float %955, %956
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %962 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %967 = extractvalue %dx.types.CBufRet.f32 %963, 3
  %968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %953, float %957, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = extractvalue %dx.types.ResRet.f32 %968, 3
  %973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %953, float %957, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = extractvalue %dx.types.ResRet.f32 %973, 1
  %976 = extractvalue %dx.types.ResRet.f32 %973, 2
  %977 = extractvalue %dx.types.ResRet.f32 %973, 3
  %978 = fmul fast float %969, %946
  %979 = fmul fast float %974, %946
  %980 = fmul fast float %976, %946
  %981 = fmul fast float %972, %946
  %982 = fadd fast float %978, %959
  %983 = fadd fast float %979, %960
  %984 = fadd fast float %980, %961
  %985 = fadd fast float %981, %962
  %986 = fmul fast float %970, %946
  %987 = fmul fast float %975, %946
  %988 = fadd fast float %986, %964
  %989 = fadd fast float %987, %965
  %990 = fmul fast float %971, %946
  %991 = fmul fast float %977, %946
  %992 = fadd fast float %990, %966
  %993 = fadd fast float %991, %967
  %994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %953, float %957, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = extractvalue %dx.types.ResRet.f32 %994, 3
  %999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %953, float %957, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1000 = extractvalue %dx.types.ResRet.f32 %999, 0
  %1001 = extractvalue %dx.types.ResRet.f32 %999, 1
  %1002 = extractvalue %dx.types.ResRet.f32 %999, 2
  %1003 = extractvalue %dx.types.ResRet.f32 %999, 3
  %1004 = fmul fast float %995, %947
  %1005 = fmul fast float %1000, %947
  %1006 = fmul fast float %1002, %947
  %1007 = fmul fast float %998, %947
  %1008 = fadd fast float %982, %1004
  %1009 = fadd fast float %983, %1005
  %1010 = fadd fast float %984, %1006
  %1011 = fadd fast float %985, %1007
  %1012 = fmul fast float %996, %947
  %1013 = fmul fast float %1001, %947
  %1014 = fadd fast float %988, %1012
  %1015 = fadd fast float %989, %1013
  %1016 = fmul fast float %997, %947
  %1017 = fmul fast float %1003, %947
  %1018 = fadd fast float %992, %1016
  %1019 = fadd fast float %993, %1017
  %1020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %953, float %957, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = extractvalue %dx.types.ResRet.f32 %1020, 3
  %1025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %953, float %957, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = extractvalue %dx.types.ResRet.f32 %1025, 3
  %1030 = fmul fast float %1021, %948
  %1031 = fmul fast float %1026, %948
  %1032 = fmul fast float %1028, %948
  %1033 = fmul fast float %1024, %948
  %1034 = fadd fast float %1008, %1030
  %1035 = fadd fast float %1009, %1031
  %1036 = fadd fast float %1010, %1032
  %1037 = fadd fast float %1011, %1033
  %1038 = fmul fast float %1022, %948
  %1039 = fmul fast float %1027, %948
  %1040 = fadd fast float %1014, %1038
  %1041 = fadd fast float %1015, %1039
  %1042 = fmul fast float %1023, %948
  %1043 = fmul fast float %1029, %948
  %1044 = fadd fast float %1018, %1042
  %1045 = fadd fast float %1019, %1043
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1048 = fsub fast float %219, %1047
  %1049 = fsub fast float %890, %219
  %1050 = call float @dx.op.binary.f32(i32 35, float %1049, float %1048)  ; FMax(a,b)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1052 = fsub fast float %220, %1051
  %1053 = fsub fast float %891, %220
  %1054 = call float @dx.op.binary.f32(i32 35, float %1053, float %1052)  ; FMax(a,b)
  %1055 = call float @dx.op.binary.f32(i32 35, float %1050, float %1054)  ; FMax(a,b)
  %1056 = extractvalue %dx.types.CBufRet.f32 %894, 3
  %1057 = fmul fast float %1056, %1055
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1064 = fsub fast float %1060, %1034
  %1065 = fsub fast float %1061, %1035
  %1066 = fsub fast float %1062, %1036
  %1067 = fsub fast float %1063, %1037
  %1068 = fmul fast float %1064, %1058
  %1069 = fmul fast float %1065, %1058
  %1070 = fmul fast float %1066, %1058
  %1071 = fmul fast float %1067, %1058
  %1072 = fadd fast float %1068, %1034
  %1073 = fadd fast float %1069, %1035
  %1074 = fadd fast float %1070, %1036
  %1075 = fadd fast float %1071, %1037
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.CBufRet.f32 %1076, 1
  %1079 = fsub fast float %1077, %1040
  %1080 = fsub fast float %1078, %1041
  %1081 = fmul fast float %1079, %1058
  %1082 = fmul fast float %1080, %1058
  %1083 = fadd fast float %1081, %1040
  %1084 = fadd fast float %1082, %1041
  %1085 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1086 = extractvalue %dx.types.CBufRet.f32 %1076, 3
  %1087 = fsub fast float %1085, %1044
  %1088 = fsub fast float %1086, %1045
  %1089 = fmul fast float %1087, %1058
  %1090 = fmul fast float %1088, %1058
  %1091 = fadd fast float %1089, %1044
  %1092 = fadd fast float %1090, %1045
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = fmul fast float %1094, %1072
  %1096 = fmul fast float %1094, %1073
  %1097 = fmul fast float %1094, %1074
  %1098 = fmul fast float %1094, %1075
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = fmul fast float %1100, %1083
  %1102 = fmul fast float %1100, %1084
  %1103 = fadd fast float %1101, %1095
  %1104 = fadd fast float %1102, %1097
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = fmul fast float %1106, %1091
  %1108 = fmul fast float %1106, %1092
  %1109 = fadd fast float %1103, %1107
  %1110 = fadd fast float %1104, %1108
  %1111 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1112 = fmul fast float %1111, %1072
  %1113 = fmul fast float %1111, %1073
  %1114 = fmul fast float %1111, %1074
  %1115 = fmul fast float %1111, %1075
  %1116 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1117 = fmul fast float %1116, %1083
  %1118 = fmul fast float %1116, %1084
  %1119 = fadd fast float %1117, %1112
  %1120 = fadd fast float %1118, %1114
  %1121 = extractvalue %dx.types.CBufRet.f32 %1105, 1
  %1122 = fmul fast float %1121, %1091
  %1123 = fmul fast float %1121, %1092
  %1124 = fadd fast float %1119, %1122
  %1125 = fadd fast float %1120, %1123
  %1126 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1127 = fmul fast float %1126, %1072
  %1128 = fmul fast float %1126, %1073
  %1129 = fmul fast float %1126, %1074
  %1130 = fmul fast float %1126, %1075
  %1131 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1132 = fmul fast float %1131, %1083
  %1133 = fmul fast float %1131, %1084
  %1134 = fadd fast float %1132, %1127
  %1135 = fadd fast float %1133, %1129
  %1136 = extractvalue %dx.types.CBufRet.f32 %1105, 2
  %1137 = fmul fast float %1136, %1091
  %1138 = fmul fast float %1136, %1092
  %1139 = fadd fast float %1134, %1137
  %1140 = fadd fast float %1135, %1138
  %1141 = fmul fast float %1128, %1128
  %1142 = fmul fast float %1140, %1140
  %1143 = fmul fast float %1130, %1130
  %1144 = fadd fast float %1143, %1141
  %1145 = fadd fast float %1144, %1142
  %1146 = call float @dx.op.unary.f32(i32 24, float %1145)  ; Sqrt(value)
  %1147 = fcmp fast ugt float %1146, 0.000000e+00
  br i1 %1147, label %1148, label %1163, !dx.controlflow.hints !62

; <label>:1148                                    ; preds = %888
  %1149 = fsub fast float -0.000000e+00, %1130
  %1150 = fdiv fast float %1149, %1146
  %1151 = fsub fast float -0.000000e+00, %1128
  %1152 = fdiv fast float %1151, %1146
  %1153 = fdiv fast float %1140, %1146
  %1154 = fmul fast float %1139, 0x3FE279A760000000
  %1155 = fmul fast float %1152, %1128
  %1156 = fmul fast float %1153, %1140
  %1157 = fmul fast float %1150, %1130
  %1158 = fadd fast float %1155, %1157
  %1159 = fsub fast float %1158, %1156
  %1160 = call float @dx.op.unary.f32(i32 6, float %1159)  ; FAbs(value)
  %1161 = fadd fast float %1160, 0x3DDB7CDFE0000000
  %1162 = fdiv fast float %1154, %1161
  br label %1163

; <label>:1163                                    ; preds = %1148, %888
  %1164 = phi float [ %1162, %1148 ], [ 1.000000e+00, %888 ]
  %1165 = fmul fast float %1113, %1113
  %1166 = fmul fast float %1125, %1125
  %1167 = fmul fast float %1115, %1115
  %1168 = fadd fast float %1167, %1165
  %1169 = fadd fast float %1168, %1166
  %1170 = call float @dx.op.unary.f32(i32 24, float %1169)  ; Sqrt(value)
  %1171 = fcmp fast ugt float %1170, 0.000000e+00
  br i1 %1171, label %1172, label %1187, !dx.controlflow.hints !62

; <label>:1172                                    ; preds = %1163
  %1173 = fsub fast float -0.000000e+00, %1115
  %1174 = fdiv fast float %1173, %1170
  %1175 = fsub fast float -0.000000e+00, %1113
  %1176 = fdiv fast float %1175, %1170
  %1177 = fdiv fast float %1125, %1170
  %1178 = fmul fast float %1124, 0x3FE279A760000000
  %1179 = fmul fast float %1176, %1113
  %1180 = fmul fast float %1177, %1125
  %1181 = fmul fast float %1174, %1115
  %1182 = fadd fast float %1179, %1181
  %1183 = fsub fast float %1182, %1180
  %1184 = call float @dx.op.unary.f32(i32 6, float %1183)  ; FAbs(value)
  %1185 = fadd fast float %1184, 0x3DDB7CDFE0000000
  %1186 = fdiv fast float %1178, %1185
  br label %1187

; <label>:1187                                    ; preds = %1172, %1163
  %1188 = phi float [ %1186, %1172 ], [ 1.000000e+00, %1163 ]
  %1189 = call float @dx.op.binary.f32(i32 36, float %1188, float %1164)  ; FMin(a,b)
  %1190 = fmul fast float %1096, %1096
  %1191 = fmul fast float %1110, %1110
  %1192 = fmul fast float %1098, %1098
  %1193 = fadd fast float %1192, %1190
  %1194 = fadd fast float %1193, %1191
  %1195 = call float @dx.op.unary.f32(i32 24, float %1194)  ; Sqrt(value)
  %1196 = fcmp fast ugt float %1195, 0.000000e+00
  br i1 %1196, label %1197, label %1212, !dx.controlflow.hints !62

; <label>:1197                                    ; preds = %1187
  %1198 = fsub fast float -0.000000e+00, %1098
  %1199 = fdiv fast float %1198, %1195
  %1200 = fsub fast float -0.000000e+00, %1096
  %1201 = fdiv fast float %1200, %1195
  %1202 = fdiv fast float %1110, %1195
  %1203 = fmul fast float %1109, 0x3FE279A760000000
  %1204 = fmul fast float %1201, %1096
  %1205 = fmul fast float %1202, %1110
  %1206 = fmul fast float %1199, %1098
  %1207 = fadd fast float %1204, %1206
  %1208 = fsub fast float %1207, %1205
  %1209 = call float @dx.op.unary.f32(i32 6, float %1208)  ; FAbs(value)
  %1210 = fadd fast float %1209, 0x3DDB7CDFE0000000
  %1211 = fdiv fast float %1203, %1210
  br label %1212

; <label>:1212                                    ; preds = %1197, %1187
  %1213 = phi float [ %1211, %1197 ], [ 1.000000e+00, %1187 ]
  %1214 = call float @dx.op.binary.f32(i32 36, float %1213, float %1189)  ; FMin(a,b)
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = fcmp fast olt float %1215, 1.000000e+00
  br i1 %1216, label %1217, label %1227, !dx.controlflow.hints !63

; <label>:1217                                    ; preds = %1212
  %1218 = fmul fast float %1215, %1096
  %1219 = fmul fast float %1215, %1110
  %1220 = fmul fast float %1215, %1098
  %1221 = fmul fast float %1215, %1113
  %1222 = fmul fast float %1215, %1125
  %1223 = fmul fast float %1215, %1115
  %1224 = fmul fast float %1215, %1128
  %1225 = fmul fast float %1215, %1140
  %1226 = fmul fast float %1215, %1130
  br label %1227

; <label>:1227                                    ; preds = %1217, %1212
  %1228 = phi float [ %1224, %1217 ], [ %1128, %1212 ]
  %1229 = phi float [ %1225, %1217 ], [ %1140, %1212 ]
  %1230 = phi float [ %1226, %1217 ], [ %1130, %1212 ]
  %1231 = phi float [ %1221, %1217 ], [ %1113, %1212 ]
  %1232 = phi float [ %1222, %1217 ], [ %1125, %1212 ]
  %1233 = phi float [ %1223, %1217 ], [ %1115, %1212 ]
  %1234 = phi float [ %1218, %1217 ], [ %1096, %1212 ]
  %1235 = phi float [ %1219, %1217 ], [ %1110, %1212 ]
  %1236 = phi float [ %1220, %1217 ], [ %1098, %1212 ]
  %1237 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1109)  ; FMax(a,b)
  %1238 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1124)  ; FMax(a,b)
  %1239 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1139)  ; FMax(a,b)
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1242 = fcmp fast ogt float %1241, 0.000000e+00
  %1243 = fcmp fast oge float %897, 0.000000e+00
  %1244 = and i1 %1243, %1242
  %1245 = fcmp fast ole float %897, 1.000000e+00
  %1246 = and i1 %1245, %1244
  %1247 = fcmp fast oge float %898, 0.000000e+00
  %1248 = and i1 %1247, %1246
  %1249 = fcmp fast ole float %898, 1.000000e+00
  %1250 = and i1 %1249, %1248
  br i1 %1250, label %1251, label %1396, !dx.controlflow.hints !64

; <label>:1251                                    ; preds = %1227
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1254 = extractvalue %dx.types.CBufRet.f32 %1252, 3
  %1255 = fmul fast float %1253, %897
  %1256 = fmul fast float %1254, %898
  %1257 = call float @dx.op.unary.f32(i32 27, float %1255)  ; Round_ni(value)
  %1258 = call float @dx.op.unary.f32(i32 27, float %1256)  ; Round_ni(value)
  %1259 = fptosi float %1257 to i32
  %1260 = fptosi float %1258 to i32
  %1261 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %1259, i32 %1260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 65535
  %1264 = lshr i32 %1262, 16
  %1265 = icmp eq i32 %1263, 65535
  br i1 %1265, label %1302, label %1266, !dx.controlflow.hints !65

; <label>:1266                                    ; preds = %1251
  %1267 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1268 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1270 = fmul fast float %1268, %897
  %1271 = fmul fast float %1269, %898
  %1272 = fmul fast float %1270, 1.250000e-01
  %1273 = fmul fast float %1271, 1.250000e-01
  %1274 = call float @dx.op.unary.f32(i32 27, float %1272)  ; Round_ni(value)
  %1275 = call float @dx.op.unary.f32(i32 27, float %1273)  ; Round_ni(value)
  %1276 = fmul fast float %1274, 8.000000e+00
  %1277 = fmul fast float %1275, 8.000000e+00
  %1278 = and i32 %1262, 255
  %1279 = lshr i32 %1262, 8
  %1280 = and i32 %1279, 255
  %1281 = mul nuw nsw i32 %1278, 9
  %1282 = uitofp i32 %1281 to float
  %1283 = mul nuw nsw i32 %1280, 9
  %1284 = uitofp i32 %1283 to float
  %1285 = fadd fast float %1282, 5.000000e-01
  %1286 = fadd fast float %1285, %1270
  %1287 = fsub fast float %1286, %1276
  %1288 = fadd fast float %1284, 5.000000e-01
  %1289 = fadd fast float %1288, %1271
  %1290 = fsub fast float %1289, %1277
  %1291 = fdiv fast float %1287, %1241
  %1292 = fdiv fast float %1290, %1267
  %1293 = fmul fast float %925, 4.375000e-01
  %1294 = fadd fast float %1293, 3.125000e-02
  %1295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1291, float %1292, float %1294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.ResRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.ResRet.f32 %1295, 2
  %1299 = fadd fast float %1296, %1237
  %1300 = fadd fast float %1297, %1238
  %1301 = fadd fast float %1298, %1239
  br label %1302

; <label>:1302                                    ; preds = %1266, %1251
  %1303 = phi float [ %1301, %1266 ], [ %1239, %1251 ]
  %1304 = phi float [ %1300, %1266 ], [ %1238, %1251 ]
  %1305 = phi float [ %1299, %1266 ], [ %1237, %1251 ]
  %1306 = icmp eq i32 %1264, 65535
  br i1 %1306, label %1396, label %1307, !dx.controlflow.hints !66

; <label>:1307                                    ; preds = %1302
  %1308 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1309 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1310 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1311 = fmul fast float %1309, %897
  %1312 = fmul fast float %1310, %898
  %1313 = fmul fast float %1311, 1.250000e-01
  %1314 = fmul fast float %1312, 1.250000e-01
  %1315 = call float @dx.op.unary.f32(i32 27, float %1313)  ; Round_ni(value)
  %1316 = call float @dx.op.unary.f32(i32 27, float %1314)  ; Round_ni(value)
  %1317 = fmul fast float %1315, 8.000000e+00
  %1318 = fmul fast float %1316, 8.000000e+00
  %1319 = fsub fast float %1311, %1317
  %1320 = fsub fast float %1312, %1318
  %1321 = fadd fast float %1319, 5.000000e-01
  %1322 = fadd fast float %1320, 5.000000e-01
  %1323 = and i32 %1264, 255
  %1324 = lshr i32 %1262, 24
  %1325 = mul nuw nsw i32 %1323, 9
  %1326 = uitofp i32 %1325 to float
  %1327 = mul nuw nsw i32 %1324, 9
  %1328 = uitofp i32 %1327 to float
  %1329 = fadd fast float %1321, %1326
  %1330 = fadd fast float %1322, %1328
  %1331 = fdiv fast float %1329, %1241
  %1332 = fdiv fast float %1330, %1308
  %1333 = fmul fast float %925, 4.375000e-01
  %1334 = fadd fast float %1333, 3.125000e-02
  %1335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1331, float %1332, float %1334, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = extractvalue %dx.types.ResRet.f32 %1335, 1
  %1338 = extractvalue %dx.types.ResRet.f32 %1335, 2
  %1339 = fadd fast float %1333, 5.312500e-01
  %1340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1331, float %1332, float %1339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.ResRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.ResRet.f32 %1340, 2
  %1344 = fmul fast float %1341, 2.000000e+00
  %1345 = fmul fast float %1342, 2.000000e+00
  %1346 = fmul fast float %1343, 2.000000e+00
  %1347 = fadd fast float %1344, -1.000000e+00
  %1348 = fadd fast float %1345, -1.000000e+00
  %1349 = fadd fast float %1346, -1.000000e+00
  %1350 = fmul fast float %1347, %1347
  %1351 = fmul fast float %1348, %1348
  %1352 = fadd fast float %1350, %1351
  %1353 = fmul fast float %1349, %1349
  %1354 = fadd fast float %1352, %1353
  %1355 = call float @dx.op.unary.f32(i32 24, float %1354)  ; Sqrt(value)
  %1356 = fcmp fast ogt float %1355, 0.000000e+00
  br i1 %1356, label %1357, label %1361, !dx.controlflow.hints !67

; <label>:1357                                    ; preds = %1307
  %1358 = fdiv fast float %1347, %1355
  %1359 = fdiv fast float %1348, %1355
  %1360 = fdiv fast float %1349, %1355
  br label %1361

; <label>:1361                                    ; preds = %1357, %1307
  %1362 = phi float [ %1358, %1357 ], [ 0.000000e+00, %1307 ]
  %1363 = phi float [ %1359, %1357 ], [ 0.000000e+00, %1307 ]
  %1364 = phi float [ %1360, %1357 ], [ 0.000000e+00, %1307 ]
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1368 = fsub fast float %219, %1366
  %1369 = fsub fast float %220, %1367
  %1370 = fmul fast float %1368, %1368
  %1371 = fmul fast float %1369, %1369
  %1372 = fadd fast float %1370, %1371
  %1373 = call float @dx.op.unary.f32(i32 24, float %1372)  ; Sqrt(value)
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1377 = fsub fast float %1373, %1375
  %1378 = fdiv fast float %1377, %1376
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fmul fast float %1379, 2.000000e+00
  %1381 = fsub fast float 3.000000e+00, %1380
  %1382 = fmul fast float %1379, %1379
  %1383 = fmul fast float %1382, %1381
  %1384 = call float @dx.op.dot3.f32(i32 55, float %1362, float %1363, float %1364, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1385 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1384)  ; FMax(a,b)
  %1386 = fmul fast float %1385, 0x400C5BF8A0000000
  %1387 = fmul fast float %1383, %1336
  %1388 = fmul fast float %1387, %1386
  %1389 = fadd fast float %1388, %1305
  %1390 = fmul fast float %1383, %1337
  %1391 = fmul fast float %1390, %1386
  %1392 = fadd fast float %1391, %1304
  %1393 = fmul fast float %1383, %1338
  %1394 = fmul fast float %1393, %1386
  %1395 = fadd fast float %1394, %1303
  br label %1396

; <label>:1396                                    ; preds = %1361, %1302, %1227
  %1397 = phi float [ %1395, %1361 ], [ %1303, %1302 ], [ %1239, %1227 ]
  %1398 = phi float [ %1392, %1361 ], [ %1304, %1302 ], [ %1238, %1227 ]
  %1399 = phi float [ %1389, %1361 ], [ %1305, %1302 ], [ %1237, %1227 ]
  %1400 = fcmp fast ogt float %221, %921
  %1401 = and i1 %1243, %1400
  %1402 = and i1 %1245, %1401
  %1403 = and i1 %1247, %1402
  %1404 = and i1 %1249, %1403
  br i1 %1404, label %1405, label %1462, !dx.controlflow.hints !68

; <label>:1405                                    ; preds = %1396
  %1406 = fmul fast float %923, 0x3FC24924A0000000
  %1407 = fsub fast float %221, %921
  %1408 = fdiv fast float %1407, %1406
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.CBufRet.f32 %1412, 1
  %1415 = extractvalue %dx.types.CBufRet.f32 %1412, 2
  %1416 = fsub fast float %1411, %1399
  %1417 = fsub fast float %1413, %1234
  %1418 = fsub fast float %1414, %1235
  %1419 = fsub fast float %1415, %1236
  %1420 = fmul fast float %1416, %1409
  %1421 = fmul fast float %1417, %1409
  %1422 = fmul fast float %1418, %1409
  %1423 = fmul fast float %1419, %1409
  %1424 = fadd fast float %1420, %1399
  %1425 = fadd fast float %1421, %1234
  %1426 = fadd fast float %1422, %1235
  %1427 = fadd fast float %1423, %1236
  %1428 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1433 = fsub fast float %1428, %1398
  %1434 = fsub fast float %1430, %1231
  %1435 = fsub fast float %1431, %1232
  %1436 = fsub fast float %1432, %1233
  %1437 = fmul fast float %1433, %1409
  %1438 = fmul fast float %1434, %1409
  %1439 = fmul fast float %1435, %1409
  %1440 = fmul fast float %1436, %1409
  %1441 = fadd fast float %1437, %1398
  %1442 = fadd fast float %1438, %1231
  %1443 = fadd fast float %1439, %1232
  %1444 = fadd fast float %1440, %1233
  %1445 = extractvalue %dx.types.CBufRet.f32 %1410, 2
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.CBufRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.CBufRet.f32 %1446, 2
  %1450 = fsub fast float %1445, %1397
  %1451 = fsub fast float %1447, %1228
  %1452 = fsub fast float %1448, %1229
  %1453 = fsub fast float %1449, %1230
  %1454 = fmul fast float %1450, %1409
  %1455 = fmul fast float %1451, %1409
  %1456 = fmul fast float %1452, %1409
  %1457 = fmul fast float %1453, %1409
  %1458 = fadd fast float %1454, %1397
  %1459 = fadd fast float %1455, %1228
  %1460 = fadd fast float %1456, %1229
  %1461 = fadd fast float %1457, %1230
  br label %1462

; <label>:1462                                    ; preds = %1405, %1396
  %1463 = phi float [ %1458, %1405 ], [ %1397, %1396 ]
  %1464 = phi float [ %1459, %1405 ], [ %1228, %1396 ]
  %1465 = phi float [ %1460, %1405 ], [ %1229, %1396 ]
  %1466 = phi float [ %1461, %1405 ], [ %1230, %1396 ]
  %1467 = phi float [ %1441, %1405 ], [ %1398, %1396 ]
  %1468 = phi float [ %1442, %1405 ], [ %1231, %1396 ]
  %1469 = phi float [ %1443, %1405 ], [ %1232, %1396 ]
  %1470 = phi float [ %1444, %1405 ], [ %1233, %1396 ]
  %1471 = phi float [ %1424, %1405 ], [ %1399, %1396 ]
  %1472 = phi float [ %1425, %1405 ], [ %1234, %1396 ]
  %1473 = phi float [ %1426, %1405 ], [ %1235, %1396 ]
  %1474 = phi float [ %1427, %1405 ], [ %1236, %1396 ]
  %1475 = extractvalue %dx.types.CBufRet.f32 %1046, 3
  %1476 = fmul fast float %1475, %1471
  %1477 = fmul fast float %1475, %1467
  %1478 = fmul fast float %1475, %1463
  %1479 = fmul fast float %1472, 1.500000e+00
  %1480 = fmul fast float %1479, %1475
  %1481 = fmul fast float %1473, 1.500000e+00
  %1482 = fmul fast float %1481, %1475
  %1483 = fmul fast float %1474, 1.500000e+00
  %1484 = fmul fast float %1483, %1475
  %1485 = fmul fast float %1468, 1.500000e+00
  %1486 = fmul fast float %1485, %1475
  %1487 = fmul fast float %1469, 1.500000e+00
  %1488 = fmul fast float %1487, %1475
  %1489 = fmul fast float %1470, 1.500000e+00
  %1490 = fmul fast float %1489, %1475
  %1491 = fmul fast float %1464, 1.500000e+00
  %1492 = fmul fast float %1491, %1475
  %1493 = fmul fast float %1465, 1.500000e+00
  %1494 = fmul fast float %1493, %1475
  %1495 = fmul fast float %1466, 1.500000e+00
  %1496 = fmul fast float %1495, %1475
  %1497 = fsub fast float %886, %1476
  %1498 = fmul fast float %1497, %784
  %1499 = fadd fast float %1498, %1476
  %1500 = fsub fast float %885, %1480
  %1501 = fmul fast float %1500, %784
  %1502 = fadd fast float %1501, %1480
  %1503 = fsub fast float %884, %1482
  %1504 = fmul fast float %1503, %784
  %1505 = fadd fast float %1504, %1482
  %1506 = fsub fast float %883, %1484
  %1507 = fmul fast float %1506, %784
  %1508 = fadd fast float %1507, %1484
  %1509 = fmul fast float %882, %784
  %1510 = fmul fast float %881, %784
  %1511 = fmul fast float %880, %784
  %1512 = fmul fast float %879, %784
  %1513 = fmul fast float %878, %784
  %1514 = fsub fast float %877, %1477
  %1515 = fmul fast float %1514, %784
  %1516 = fadd fast float %1515, %1477
  %1517 = fsub fast float %876, %1486
  %1518 = fmul fast float %1517, %784
  %1519 = fadd fast float %1518, %1486
  %1520 = fsub fast float %875, %1488
  %1521 = fmul fast float %1520, %784
  %1522 = fadd fast float %1521, %1488
  %1523 = fsub fast float %874, %1490
  %1524 = fmul fast float %1523, %784
  %1525 = fadd fast float %1524, %1490
  %1526 = fmul fast float %873, %784
  %1527 = fmul fast float %872, %784
  %1528 = fmul fast float %871, %784
  %1529 = fmul fast float %870, %784
  %1530 = fmul fast float %869, %784
  %1531 = fsub fast float %868, %1478
  %1532 = fmul fast float %1531, %784
  %1533 = fadd fast float %1532, %1478
  %1534 = fsub fast float %867, %1492
  %1535 = fmul fast float %1534, %784
  %1536 = fadd fast float %1535, %1492
  %1537 = fsub fast float %866, %1494
  %1538 = fmul fast float %1537, %784
  %1539 = fadd fast float %1538, %1494
  %1540 = fsub fast float %865, %1496
  %1541 = fmul fast float %1540, %784
  %1542 = fadd fast float %1541, %1496
  %1543 = fmul fast float %864, %784
  %1544 = fmul fast float %863, %784
  %1545 = fmul fast float %862, %784
  %1546 = fmul fast float %861, %784
  %1547 = fmul fast float %860, %784
  br label %1548

; <label>:1548                                    ; preds = %1462, %859
  %1549 = phi float [ %1547, %1462 ], [ %860, %859 ]
  %1550 = phi float [ %1546, %1462 ], [ %861, %859 ]
  %1551 = phi float [ %1545, %1462 ], [ %862, %859 ]
  %1552 = phi float [ %1544, %1462 ], [ %863, %859 ]
  %1553 = phi float [ %1543, %1462 ], [ %864, %859 ]
  %1554 = phi float [ %1542, %1462 ], [ %865, %859 ]
  %1555 = phi float [ %1539, %1462 ], [ %866, %859 ]
  %1556 = phi float [ %1536, %1462 ], [ %867, %859 ]
  %1557 = phi float [ %1533, %1462 ], [ %868, %859 ]
  %1558 = phi float [ %1530, %1462 ], [ %869, %859 ]
  %1559 = phi float [ %1529, %1462 ], [ %870, %859 ]
  %1560 = phi float [ %1528, %1462 ], [ %871, %859 ]
  %1561 = phi float [ %1527, %1462 ], [ %872, %859 ]
  %1562 = phi float [ %1526, %1462 ], [ %873, %859 ]
  %1563 = phi float [ %1525, %1462 ], [ %874, %859 ]
  %1564 = phi float [ %1522, %1462 ], [ %875, %859 ]
  %1565 = phi float [ %1519, %1462 ], [ %876, %859 ]
  %1566 = phi float [ %1516, %1462 ], [ %877, %859 ]
  %1567 = phi float [ %1513, %1462 ], [ %878, %859 ]
  %1568 = phi float [ %1512, %1462 ], [ %879, %859 ]
  %1569 = phi float [ %1511, %1462 ], [ %880, %859 ]
  %1570 = phi float [ %1510, %1462 ], [ %881, %859 ]
  %1571 = phi float [ %1509, %1462 ], [ %882, %859 ]
  %1572 = phi float [ %1508, %1462 ], [ %883, %859 ]
  %1573 = phi float [ %1505, %1462 ], [ %884, %859 ]
  %1574 = phi float [ %1502, %1462 ], [ %885, %859 ]
  %1575 = phi float [ %1499, %1462 ], [ %886, %859 ]
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 2
  %1578 = fmul fast float %1577, %1577
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.CBufRet.f32 %1579, 2
  %1583 = fmul fast float %1575, 0x3FD20DD760000000
  %1584 = fmul fast float %1582, %1573
  %1585 = fmul fast float %1582, %1582
  %1586 = fmul fast float %1585, 0x3FEE471020000000
  %1587 = fadd fast float %1586, 0xBFD42F6020000000
  %1588 = fmul fast float %1587, %1569
  %1589 = fmul fast float %1580, %1572
  %1590 = fmul fast float %1581, %1574
  %1591 = fmul fast float %1582, 0x3FF17B1420000000
  %1592 = fmul fast float %1578, %1568
  %1593 = fmul fast float %1592, %1580
  %1594 = fmul fast float %1593, %1591
  %1595 = fmul fast float %1578, %1570
  %1596 = fmul fast float %1595, %1581
  %1597 = fmul fast float %1596, %1591
  %1598 = fmul fast float %1580, %1580
  %1599 = fmul fast float %1581, %1581
  %1600 = fsub fast float %1598, %1599
  %1601 = fmul fast float %1567, 0x3FE17B1420000000
  %1602 = fmul fast float %1601, %1600
  %1603 = fmul fast float %1571, 0x3FF17B1420000000
  %1604 = fmul fast float %1603, %1581
  %1605 = fmul fast float %1604, %1580
  %1606 = fadd fast float %1602, %1605
  %1607 = fadd fast float %1606, %1588
  %1608 = fmul fast float %1607, %1578
  %1609 = fsub fast float %1590, %1584
  %1610 = fadd fast float %1609, %1589
  %1611 = fmul fast float %1610, 0x3FDF454380000000
  %1612 = fmul fast float %1611, %1577
  %1613 = fsub fast float %1583, %1594
  %1614 = fsub fast float %1613, %1597
  %1615 = fadd fast float %1614, %1608
  %1616 = fadd fast float %1615, %1612
  %1617 = fmul fast float %1566, 0x3FD20DD760000000
  %1618 = fmul fast float %1582, %1564
  %1619 = fmul fast float %1587, %1560
  %1620 = fmul fast float %1580, %1563
  %1621 = fmul fast float %1581, %1565
  %1622 = fmul fast float %1578, %1559
  %1623 = fmul fast float %1622, %1580
  %1624 = fmul fast float %1623, %1591
  %1625 = fmul fast float %1578, %1561
  %1626 = fmul fast float %1625, %1581
  %1627 = fmul fast float %1626, %1591
  %1628 = fmul fast float %1558, 0x3FE17B1420000000
  %1629 = fmul fast float %1628, %1600
  %1630 = fmul fast float %1562, 0x3FF17B1420000000
  %1631 = fmul fast float %1630, %1581
  %1632 = fmul fast float %1631, %1580
  %1633 = fadd fast float %1629, %1632
  %1634 = fadd fast float %1633, %1619
  %1635 = fmul fast float %1634, %1578
  %1636 = fsub fast float %1621, %1618
  %1637 = fadd fast float %1636, %1620
  %1638 = fmul fast float %1637, 0x3FDF454380000000
  %1639 = fmul fast float %1638, %1577
  %1640 = fsub fast float %1617, %1624
  %1641 = fsub fast float %1640, %1627
  %1642 = fadd fast float %1641, %1635
  %1643 = fadd fast float %1642, %1639
  %1644 = fmul fast float %1557, 0x3FD20DD760000000
  %1645 = fmul fast float %1582, %1555
  %1646 = fmul fast float %1587, %1551
  %1647 = fmul fast float %1580, %1554
  %1648 = fmul fast float %1581, %1556
  %1649 = fmul fast float %1578, %1550
  %1650 = fmul fast float %1649, %1580
  %1651 = fmul fast float %1650, %1591
  %1652 = fmul fast float %1578, %1552
  %1653 = fmul fast float %1652, %1581
  %1654 = fmul fast float %1653, %1591
  %1655 = fmul fast float %1549, 0x3FE17B1420000000
  %1656 = fmul fast float %1655, %1600
  %1657 = fmul fast float %1553, 0x3FF17B1420000000
  %1658 = fmul fast float %1657, %1581
  %1659 = fmul fast float %1658, %1580
  %1660 = fadd fast float %1656, %1659
  %1661 = fadd fast float %1660, %1646
  %1662 = fmul fast float %1661, %1578
  %1663 = fsub fast float %1648, %1645
  %1664 = fadd fast float %1663, %1647
  %1665 = fmul fast float %1664, 0x3FDF454380000000
  %1666 = fmul fast float %1665, %1577
  %1667 = fsub fast float %1644, %1651
  %1668 = fsub fast float %1667, %1654
  %1669 = fadd fast float %1668, %1662
  %1670 = fadd fast float %1669, %1666
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 3
  %1673 = extractvalue %dx.types.CBufRet.f32 %725, 0
  %1674 = fmul fast float %1673, %1672
  %1675 = fmul fast float %1674, %1616
  %1676 = fmul fast float %1674, %1643
  %1677 = fmul fast float %1674, %1670
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 3
  %1680 = fcmp fast une float %1679, 0.000000e+00
  %1681 = extractvalue %dx.types.CBufRet.f32 %1678, 0
  %1682 = extractvalue %dx.types.CBufRet.f32 %1678, 1
  %1683 = extractvalue %dx.types.CBufRet.f32 %1678, 2
  br i1 %1680, label %1684, label %1706, !dx.controlflow.hints !69

; <label>:1684                                    ; preds = %1548
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.CBufRet.f32 %1685, 2
  %1689 = call float @dx.op.dot3.f32(i32 55, float %1681, float %1682, float %1683, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %1690 = fcmp fast ogt float %735, 0.000000e+00
  %1691 = select i1 %1690, float 1.000000e+00, float -1.000000e+00
  %1692 = fmul fast float %1691, 5.000000e-01
  %1693 = fmul fast float %1692, %1689
  %1694 = fmul fast float %1691, %735
  %1695 = fadd fast float %1693, 4.921875e-01
  %1696 = fadd fast float %1694, -3.125000e-02
  %1697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %19, float %1695, float 0x3FB25F3060000000, float %1696, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 0
  %1701 = fmul fast float %1698, 0x400921FB60000000
  %1702 = fmul fast float %1701, %1700
  %1703 = fmul fast float %1702, %1686
  %1704 = fmul fast float %1702, %1687
  %1705 = fmul fast float %1702, %1688
  br label %1706

; <label>:1706                                    ; preds = %1684, %1548
  %1707 = phi float [ %1703, %1684 ], [ 0.000000e+00, %1548 ]
  %1708 = phi float [ %1704, %1684 ], [ 0.000000e+00, %1548 ]
  %1709 = phi float [ %1705, %1684 ], [ 0.000000e+00, %1548 ]
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = fmul fast float %1711, %1681
  %1713 = fmul fast float %1711, %1682
  %1714 = fmul fast float %1711, %1683
  %1715 = fadd fast float %1712, %219
  %1716 = fadd fast float %1713, %220
  %1717 = fadd fast float %1714, %221
  %1718 = fsub fast float %1715, %233
  %1719 = fsub fast float %1716, %234
  %1720 = fmul fast float %1718, %238
  %1721 = fmul fast float %1719, %239
  %1722 = call float @dx.op.binary.f32(i32 36, float %1720, float %1721)  ; FMin(a,b)
  %1723 = fcmp fast olt float %1722, 0.000000e+00
  %1724 = call float @dx.op.binary.f32(i32 35, float %1720, float %1721)  ; FMax(a,b)
  %1725 = fcmp fast ogt float %1724, 1.000000e+00
  %1726 = or i1 %1723, %1725
  %1727 = fcmp fast olt float %1717, %247
  %1728 = or i1 %1726, %1727
  %1729 = fcmp fast ogt float %1717, %254
  %1730 = or i1 %1728, %1729
  br i1 %1730, label %1745, label %1731, !dx.controlflow.hints !41

; <label>:1731                                    ; preds = %1706
  %1732 = fsub fast float 1.000000e+00, %1721
  %1733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %19, float %1720, float %1732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 0
  %1735 = extractvalue %dx.types.ResRet.f32 %1733, 1
  %1736 = extractvalue %dx.types.ResRet.f32 %1733, 2
  %1737 = extractvalue %dx.types.ResRet.f32 %1733, 3
  %1738 = fcmp fast oeq float %1734, 0.000000e+00
  %1739 = fcmp ule float %1717, %1736
  %1740 = fcmp uge float %1717, %1735
  %1741 = or i1 %1740, %1739
  %1742 = or i1 %1738, %1741
  %1743 = zext i1 %1742 to i32
  %1744 = xor i32 %1743, 1
  br label %1745

; <label>:1745                                    ; preds = %1731, %1706
  %1746 = phi float [ %1734, %1731 ], [ %204, %1706 ]
  %1747 = phi float [ %1735, %1731 ], [ %205, %1706 ]
  %1748 = phi float [ %1736, %1731 ], [ %206, %1706 ]
  %1749 = phi float [ %1737, %1731 ], [ %207, %1706 ]
  %1750 = phi i32 [ %1744, %1731 ], [ 0, %1706 ]
  %1751 = icmp eq i32 %1750, 0
  br i1 %345, label %1906, label %1752, !dx.controlflow.hints !45

; <label>:1752                                    ; preds = %1745
  %1753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.i32 %1753, 1
  %1755 = and i32 %1754, 1
  %1756 = icmp eq i32 %1755, 0
  br i1 %1756, label %1757, label %1901, !dx.controlflow.hints !46

; <label>:1757                                    ; preds = %1752
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1761 = fmul fast float %1759, %1715
  %1762 = fmul fast float %1760, %1716
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1766 = fadd fast float %1761, %1764
  %1767 = fadd fast float %1762, %1765
  %1768 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1769 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %19, float %1768, float %1769, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = fmul fast float %1773, %1771
  %1775 = fsub fast float %1766, %1768
  %1776 = fsub fast float %1767, %1769
  %1777 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1778 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1779 = fmul fast float %1777, %1775
  %1780 = fmul fast float %1778, %1776
  %1781 = fmul fast float %1779, %1779
  %1782 = fmul fast float %1780, %1780
  %1783 = fadd fast float %1781, %1782
  %1784 = call float @dx.op.unary.f32(i32 24, float %1783)  ; Sqrt(value)
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 3
  %1787 = fmul fast float %1786, %1784
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1790 = fsub fast float %1789, %1774
  %1791 = fmul fast float %1790, %1788
  %1792 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1793 = fsub fast float %1717, %1774
  %1794 = fsub fast float %1793, %1792
  %1795 = fsub fast float %1794, %1791
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 2
  %1798 = fsub fast float %1795, %1797
  %1799 = fcmp fast olt float %1798, 0.000000e+00
  %1800 = extractvalue %dx.types.CBufRet.i32 %1753, 0
  %1801 = icmp eq i32 %1800, 0
  br i1 %1801, label %1852, label %1802

; <label>:1802                                    ; preds = %1757
  br label %1803

; <label>:1803                                    ; preds = %1841, %1802
  %1804 = phi i32 [ %1847, %1841 ], [ 1, %1802 ]
  %1805 = phi i32 [ %1848, %1841 ], [ 0, %1802 ]
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 1
  %1808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.i32 %1808, 1
  %1810 = and i32 %1809, 8
  %1811 = icmp eq i32 %1810, 0
  %1812 = fcmp fast ogt float %1807, %1795
  %1813 = or i1 %1812, %1811
  %1814 = add i32 %1805, 171
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1814)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  br i1 %1813, label %1819, label %1825, !dx.controlflow.hints !47

; <label>:1819                                    ; preds = %1803
  %1820 = fsub fast float %1816, %1715
  %1821 = fsub fast float %1817, %1716
  %1822 = fmul fast float %1820, %1820
  %1823 = fmul fast float %1821, %1821
  %1824 = fadd fast float %1822, %1823
  br label %1841

; <label>:1825                                    ; preds = %1803
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1828 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %1829 = fmul fast float %1828, %1827
  %1830 = fsub fast float %1829, %1807
  %1831 = fdiv fast float %1818, %1830
  %1832 = fsub fast float %1715, %1816
  %1833 = fsub fast float %1716, %1817
  %1834 = fsub fast float %1795, %1807
  %1835 = fmul fast float %1831, %1834
  %1836 = fmul fast float %1832, %1832
  %1837 = fmul fast float %1833, %1833
  %1838 = fadd fast float %1836, %1837
  %1839 = fmul fast float %1835, %1835
  %1840 = fadd fast float %1838, %1839
  br label %1841

; <label>:1841                                    ; preds = %1825, %1819
  %1842 = phi float [ %1824, %1819 ], [ %1840, %1825 ]
  %1843 = call float @dx.op.unary.f32(i32 24, float %1842)  ; Sqrt(value)
  %1844 = fsub float %1818, %1843
  %1845 = fcmp fast olt float %1844, 0.000000e+00
  %1846 = zext i1 %1845 to i32
  %1847 = and i32 %1846, %1804
  %1848 = add i32 %1805, 1
  %1849 = extractvalue %dx.types.CBufRet.i32 %1808, 0
  %1850 = icmp ult i32 %1848, %1849
  br i1 %1850, label %1803, label %1851

; <label>:1851                                    ; preds = %1841
  br label %1852

; <label>:1852                                    ; preds = %1851, %1757
  %1853 = phi i32 [ 1, %1757 ], [ %1847, %1851 ]
  br label %1854

; <label>:1854                                    ; preds = %1854, %1852
  %1855 = phi i32 [ %1891, %1854 ], [ %1853, %1852 ]
  %1856 = phi i32 [ %1892, %1854 ], [ 0, %1852 ]
  %1857 = add nuw nsw i32 %1856, 191
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1857)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 0
  %1860 = extractvalue %dx.types.CBufRet.f32 %1858, 1
  %1861 = extractvalue %dx.types.CBufRet.f32 %1858, 2
  %1862 = add nuw nsw i32 %1856, 195
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1862)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1866 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1867 = fsub fast float %1715, %1859
  %1868 = fsub fast float %1716, %1860
  %1869 = fsub fast float %1795, %1861
  %1870 = call float @dx.op.unary.f32(i32 6, float %1867)  ; FAbs(value)
  %1871 = call float @dx.op.unary.f32(i32 6, float %1868)  ; FAbs(value)
  %1872 = call float @dx.op.unary.f32(i32 6, float %1869)  ; FAbs(value)
  %1873 = fsub fast float %1870, %1864
  %1874 = fsub fast float %1871, %1865
  %1875 = fsub fast float %1872, %1866
  %1876 = call float @dx.op.binary.f32(i32 35, float %1873, float 0.000000e+00)  ; FMax(a,b)
  %1877 = call float @dx.op.binary.f32(i32 35, float %1874, float 0.000000e+00)  ; FMax(a,b)
  %1878 = call float @dx.op.binary.f32(i32 35, float %1875, float 0.000000e+00)  ; FMax(a,b)
  %1879 = fmul fast float %1876, %1876
  %1880 = fmul fast float %1877, %1877
  %1881 = fadd fast float %1880, %1879
  %1882 = fmul fast float %1878, %1878
  %1883 = fadd fast float %1881, %1882
  %1884 = call float @dx.op.unary.f32(i32 24, float %1883)  ; Sqrt(value)
  %1885 = call float @dx.op.binary.f32(i32 35, float %1874, float %1875)  ; FMax(a,b)
  %1886 = call float @dx.op.binary.f32(i32 35, float %1873, float %1885)  ; FMax(a,b)
  %1887 = call float @dx.op.binary.f32(i32 36, float %1886, float 0.000000e+00)  ; FMin(a,b)
  %1888 = fadd fast float %1887, %1884
  %1889 = fcmp ogt float %1888, -0.000000e+00
  %1890 = zext i1 %1889 to i32
  %1891 = and i32 %1890, %1855
  %1892 = add nuw nsw i32 %1856, 1
  %1893 = icmp eq i32 %1892, 4
  br i1 %1893, label %1894, label %1854

; <label>:1894                                    ; preds = %1854
  %1895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.i32 %1895, 1
  %1897 = lshr i32 %1896, 1
  %1898 = xor i32 %1897, %1891
  %1899 = zext i1 %1799 to i32
  %1900 = and i32 %1898, %1899
  br label %1901

; <label>:1901                                    ; preds = %1894, %1752
  %1902 = phi i32 [ %202, %1752 ], [ %1900, %1894 ]
  %1903 = phi float [ %1717, %1752 ], [ %1795, %1894 ]
  %1904 = icmp ne i32 %1902, 0
  %1905 = zext i1 %1904 to i32
  br label %1906

; <label>:1906                                    ; preds = %1901, %1745
  %1907 = phi i32 [ %1902, %1901 ], [ %202, %1745 ]
  %1908 = phi float [ %1903, %1901 ], [ %203, %1745 ]
  %1909 = phi i32 [ %1905, %1901 ], [ 0, %1745 ]
  br i1 %1751, label %2034, label %1910, !dx.controlflow.hints !48

; <label>:1910                                    ; preds = %1906
  %1911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.i32 %1911, 0
  %1913 = icmp ne i32 %1912, 0
  %1914 = zext i1 %1913 to i32
  %1915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.i32 %1915, 0
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %1951, label %1918

; <label>:1918                                    ; preds = %1910
  br label %1919

; <label>:1919                                    ; preds = %1946, %1918
  %1920 = phi i32 [ %1947, %1946 ], [ 0, %1918 ]
  %1921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1920, i32 0)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.ResRet.f32 %1921, 1
  %1924 = extractvalue %dx.types.ResRet.f32 %1921, 2
  %1925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1920, i32 16)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.ResRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.ResRet.f32 %1925, 2
  %1929 = fsub fast float %1922, %1926
  %1930 = fsub fast float %1923, %1927
  %1931 = fsub fast float %1924, %1928
  %1932 = fadd fast float %1926, %1922
  %1933 = fadd fast float %1927, %1923
  %1934 = fadd fast float %1928, %1924
  %1935 = fcmp fast olt float %1715, %1929
  %1936 = fcmp fast olt float %1716, %1930
  %1937 = fcmp fast olt float %1717, %1931
  %1938 = or i1 %1935, %1936
  %1939 = or i1 %1937, %1938
  %1940 = fcmp fast ogt float %1715, %1932
  %1941 = fcmp fast ogt float %1716, %1933
  %1942 = fcmp fast ogt float %1717, %1934
  %1943 = or i1 %1940, %1941
  %1944 = or i1 %1942, %1943
  %1945 = or i1 %1939, %1944
  br i1 %1945, label %1946, label %1949, !dx.controlflow.hints !49

; <label>:1946                                    ; preds = %1919
  %1947 = add nuw i32 %1920, 1
  %1948 = icmp ult i32 %1947, %1916
  br i1 %1948, label %1919, label %1949

; <label>:1949                                    ; preds = %1946, %1919
  %1950 = phi i32 [ 255, %1946 ], [ %1920, %1919 ]
  br label %1951

; <label>:1951                                    ; preds = %1949, %1910
  %1952 = phi i32 [ 255, %1910 ], [ %1950, %1949 ]
  %1953 = icmp eq i32 %1952, 255
  br i1 %1953, label %1959, label %1954, !dx.controlflow.hints !50

; <label>:1954                                    ; preds = %1951
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1952, i32 156)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = icmp ne i32 %1956, 0
  %1958 = zext i1 %1957 to i32
  br label %1959

; <label>:1959                                    ; preds = %1954, %1951
  %1960 = phi i32 [ %1958, %1954 ], [ %1914, %1951 ]
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %1962, label %2031, !dx.controlflow.hints !51

; <label>:1962                                    ; preds = %1959
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 3
  %1965 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %1966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.f32 %1966, 2
  %1968 = extractvalue %dx.types.CBufRet.f32 %1966, 3
  br i1 %1953, label %1979, label %1969, !dx.controlflow.hints !52

; <label>:1969                                    ; preds = %1962
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1952, i32 60)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1952, i32 64)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.ResRet.f32 %1972, 1
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1952, i32 72)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1952, i32 96)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  br label %1979

; <label>:1979                                    ; preds = %1969, %1962
  %1980 = phi float [ %1971, %1969 ], [ %253, %1962 ]
  %1981 = phi float [ %1976, %1969 ], [ %251, %1962 ]
  %1982 = phi float [ %1978, %1969 ], [ %1965, %1962 ]
  %1983 = phi float [ %1973, %1969 ], [ %1967, %1962 ]
  %1984 = phi float [ %1974, %1969 ], [ %1968, %1962 ]
  %1985 = call float @dx.op.binary.f32(i32 35, float %1746, float 0.000000e+00)  ; FMax(a,b)
  %1986 = call float @dx.op.binary.f32(i32 36, float %1985, float 1.000000e+00)  ; FMin(a,b)
  %1987 = call float @dx.op.unary.f32(i32 24, float %1986)  ; Sqrt(value)
  %1988 = call float @dx.op.binary.f32(i32 35, float %1749, float 0x3F847AE140000000)  ; FMax(a,b)
  %1989 = fsub fast float %1747, %1717
  %1990 = fsub fast float %1717, %1748
  %1991 = call float @dx.op.binary.f32(i32 36, float %1990, float %1989)  ; FMin(a,b)
  %1992 = fdiv fast float %1991, %1988
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = fsub fast float %1717, %1981
  %1995 = fdiv fast float %1994, %1980
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = fsub fast float 1.000000e+00, %1996
  %1998 = fmul float %1993, %1997
  %1999 = fmul float %1998, %1998
  %2000 = fmul fast float %1987, %1964
  %2001 = fmul fast float %2000, %1999
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 2
  %2004 = extractvalue %dx.types.CBufRet.f32 %2002, 1
  %2005 = fsub fast float %2001, %2004
  %2006 = fsub fast float %2003, %2004
  %2007 = fdiv fast float %2005, %2006
  %2008 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2009 = fmul fast float %2008, %1982
  %2010 = fcmp fast ogt float %1984, 0.000000e+00
  br i1 %2010, label %2011, label %2031, !dx.controlflow.hints !53

; <label>:2011                                    ; preds = %1979
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.CBufRet.f32 %2012, 1
  %2015 = extractvalue %dx.types.CBufRet.f32 %2012, 2
  %2016 = fsub fast float %1715, %2013
  %2017 = fsub fast float %1716, %2014
  %2018 = fsub fast float %1717, %2015
  %2019 = fmul fast float %2016, %2016
  %2020 = fmul fast float %2017, %2017
  %2021 = fadd fast float %2019, %2020
  %2022 = fmul fast float %2018, %2018
  %2023 = fadd fast float %2021, %2022
  %2024 = call float @dx.op.unary.f32(i32 24, float %2023)  ; Sqrt(value)
  %2025 = fsub fast float %2024, %1983
  %2026 = fsub fast float %1984, %1983
  %2027 = fdiv fast float %2025, %2026
  %2028 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  %2029 = fmul fast float %2028, %2028
  %2030 = fmul fast float %2029, %2009
  br label %2031

; <label>:2031                                    ; preds = %2011, %1979, %1959
  %2032 = phi float [ 0.000000e+00, %1959 ], [ %2030, %2011 ], [ %2009, %1979 ]
  %2033 = fmul fast float %2032, %1711
  br label %2034

; <label>:2034                                    ; preds = %2031, %1906
  %2035 = phi float [ %2033, %2031 ], [ 0.000000e+00, %1906 ]
  %2036 = icmp eq i32 %1909, 0
  br i1 %2036, label %2068, label %2037, !dx.controlflow.hints !54

; <label>:2037                                    ; preds = %2034
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 1
  %2040 = fsub fast float %1711, %2039
  %2041 = extractvalue %dx.types.CBufRet.f32 %2038, 3
  %2042 = fmul fast float %2040, %2041
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 2
  %2048 = fsub fast float %2047, %1908
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 3
  %2051 = fmul fast float %2048, %2050
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2053 = fmul fast float %2052, %2045
  %2054 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2055 = fsub fast float %1711, %2054
  %2056 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2057 = fmul fast float %2055, %2056
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fsub fast float 1.000000e+00, %2043
  %2060 = fmul fast float %2058, %2059
  %2061 = fadd fast float %2060, %2043
  %2062 = extractvalue %dx.types.CBufRet.f32 %2038, 0
  %2063 = fsub fast float %2053, %2062
  %2064 = fmul fast float %2063, %2061
  %2065 = fadd fast float %2064, %2062
  %2066 = fmul fast float %2065, %1711
  %2067 = fadd fast float %2066, %2035
  br label %2068

; <label>:2068                                    ; preds = %2037, %2034
  %2069 = phi float [ %2067, %2037 ], [ %2035, %2034 ]
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 3
  %2072 = fmul fast float %2069, 0xBFF7154760000000
  %2073 = fmul fast float %2072, %2071
  %2074 = call float @dx.op.unary.f32(i32 21, float %2073)  ; Exp(value)
  %2075 = call float @dx.op.unary.f32(i32 7, float %2074)  ; Saturate(value)
  %2076 = fmul fast float %2075, %1707
  %2077 = fmul fast float %2075, %1708
  %2078 = fmul fast float %2075, %1709
  %2079 = fadd fast float %2076, %1675
  %2080 = fadd fast float %2077, %1676
  %2081 = fadd fast float %2078, %1677
  %2082 = fsub fast float 1.000000e+00, %744
  %2083 = fmul fast float %736, %215
  %2084 = fmul fast float %2083, %2082
  %2085 = fmul fast float %2084, %2079
  %2086 = fmul fast float %737, %215
  %2087 = fmul fast float %2086, %2082
  %2088 = fmul fast float %2087, %2080
  %2089 = fmul fast float %738, %215
  %2090 = fmul fast float %2089, %2082
  %2091 = fmul fast float %2090, %2081
  %2092 = fadd fast float %2085, %216
  %2093 = fadd fast float %2088, %217
  %2094 = fadd fast float %2091, %218
  %2095 = fdiv fast float %720, %532
  %2096 = fadd fast float %532, %222
  %2097 = fmul fast float %222, %222
  %2098 = fmul fast float %2096, %2096
  %2099 = fsub fast float %2097, %2098
  %2100 = fmul fast float %2099, -5.000000e-01
  %2101 = fmul fast float %2100, %2095
  %2102 = fadd fast float %2101, %214
  %2103 = fadd fast float %720, %224
  %2104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.i32 %2104, 0
  %2106 = icmp eq i32 %2105, 0
  br i1 %2106, label %2133, label %2107, !dx.controlflow.hints !70

; <label>:2107                                    ; preds = %2068
  %2108 = icmp ne i32 %229, 0
  %2109 = zext i1 %2108 to i32
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 2
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2113 = fsub fast float %2096, %2112
  %2114 = fmul fast float %2113, %2111
  %2115 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2116 = fadd fast float %2115, -5.000000e-01
  %2117 = fmul fast float %2116, 2.000000e+00
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 2
  %2120 = fcmp fast olt float %2117, %2119
  br i1 %2120, label %2121, label %2133, !dx.controlflow.hints !71

; <label>:2121                                    ; preds = %2107
  %2122 = fmul fast float %2117, %2117
  %2123 = fmul fast float %2082, %215
  %2124 = fmul fast float %2117, %2123
  %2125 = fmul fast float %2122, %2123
  %2126 = fmul fast float %2124, %2122
  %2127 = fmul fast float %2122, %2122
  %2128 = fmul fast float %2127, %2123
  %2129 = fadd fast float %2124, %225
  %2130 = fadd fast float %2125, %226
  %2131 = fadd fast float %2126, %227
  %2132 = fadd fast float %2128, %228
  br label %2133

; <label>:2133                                    ; preds = %2121, %2107, %2068
  %2134 = phi float [ %225, %2068 ], [ %2129, %2121 ], [ %225, %2107 ]
  %2135 = phi float [ %226, %2068 ], [ %2130, %2121 ], [ %226, %2107 ]
  %2136 = phi float [ %227, %2068 ], [ %2131, %2121 ], [ %227, %2107 ]
  %2137 = phi float [ %228, %2068 ], [ %2132, %2121 ], [ %228, %2107 ]
  %2138 = phi i32 [ %229, %2068 ], [ 1, %2121 ], [ %2109, %2107 ]
  %2139 = fmul fast float %744, %215
  br label %2140

; <label>:2140                                    ; preds = %2133, %739
  %2141 = phi float [ %740, %739 ], [ %2096, %2133 ]
  %2142 = phi i32 [ %202, %739 ], [ %1907, %2133 ]
  %2143 = phi float [ %203, %739 ], [ %1908, %2133 ]
  %2144 = phi float [ %204, %739 ], [ %1746, %2133 ]
  %2145 = phi float [ %205, %739 ], [ %1747, %2133 ]
  %2146 = phi float [ %206, %739 ], [ %1748, %2133 ]
  %2147 = phi float [ %207, %739 ], [ %1749, %2133 ]
  %2148 = phi float [ %214, %739 ], [ %2102, %2133 ]
  %2149 = phi float [ %215, %739 ], [ %2139, %2133 ]
  %2150 = phi float [ %216, %739 ], [ %2092, %2133 ]
  %2151 = phi float [ %217, %739 ], [ %2093, %2133 ]
  %2152 = phi float [ %218, %739 ], [ %2094, %2133 ]
  %2153 = phi float [ %224, %739 ], [ %2103, %2133 ]
  %2154 = phi float [ %225, %739 ], [ %2134, %2133 ]
  %2155 = phi float [ %226, %739 ], [ %2135, %2133 ]
  %2156 = phi float [ %227, %739 ], [ %2136, %2133 ]
  %2157 = phi float [ %228, %739 ], [ %2137, %2133 ]
  %2158 = phi i32 [ %229, %739 ], [ %2138, %2133 ]
  %2159 = fmul fast float %532, %109
  %2160 = fmul fast float %532, %110
  %2161 = fmul fast float %532, %111
  %2162 = fadd fast float %2159, %219
  %2163 = fadd fast float %2160, %220
  %2164 = fadd fast float %2161, %221
  %2165 = fcmp fast olt float %2141, %181
  %2166 = extractvalue %dx.types.CBufRet.f32 %725, 2
  %2167 = fcmp fast olt float %2166, %2149
  %2168 = and i1 %2165, %2167
  br i1 %2168, label %201, label %2169

; <label>:2169                                    ; preds = %2140
  br label %2170

; <label>:2170                                    ; preds = %2169, %174
  %2171 = phi float [ 0.000000e+00, %174 ], [ %2148, %2169 ]
  %2172 = phi float [ 1.000000e+00, %174 ], [ %2149, %2169 ]
  %2173 = phi float [ 0.000000e+00, %174 ], [ %2150, %2169 ]
  %2174 = phi float [ 0.000000e+00, %174 ], [ %2151, %2169 ]
  %2175 = phi float [ 0.000000e+00, %174 ], [ %2152, %2169 ]
  %2176 = phi float [ 0.000000e+00, %174 ], [ %2153, %2169 ]
  %2177 = phi float [ 0.000000e+00, %174 ], [ %2154, %2169 ]
  %2178 = phi float [ 0.000000e+00, %174 ], [ %2155, %2169 ]
  %2179 = phi float [ 0.000000e+00, %174 ], [ %2156, %2169 ]
  %2180 = phi float [ 0.000000e+00, %174 ], [ %2157, %2169 ]
  %2181 = phi i32 [ 0, %174 ], [ %2158, %2169 ]
  %2182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.i32 %2182, 0
  %2184 = icmp eq i32 %2183, 0
  br i1 %2184, label %2226, label %2185, !dx.controlflow.hints !72

; <label>:2185                                    ; preds = %2170
  %2186 = icmp eq i32 %2181, 0
  br i1 %2186, label %2225, label %2187, !dx.controlflow.hints !73

; <label>:2187                                    ; preds = %2185
  %2188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.i32 %2188, 2
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2197, label %2191, !dx.controlflow.hints !74

; <label>:2191                                    ; preds = %2187
  %2192 = fsub fast float 1.000000e+00, %2172
  %2193 = fdiv fast float %2177, %2192
  %2194 = fdiv fast float %2178, %2192
  %2195 = fdiv fast float %2179, %2192
  %2196 = fdiv fast float %2180, %2192
  br label %2202

; <label>:2197                                    ; preds = %2187
  %2198 = fadd fast float %2177, %2172
  %2199 = fadd fast float %2178, %2172
  %2200 = fadd fast float %2179, %2172
  %2201 = fadd fast float %2180, %2172
  br label %2202

; <label>:2202                                    ; preds = %2197, %2191
  %2203 = phi float [ %2193, %2191 ], [ %2198, %2197 ]
  %2204 = phi float [ %2194, %2191 ], [ %2199, %2197 ]
  %2205 = phi float [ %2195, %2191 ], [ %2200, %2197 ]
  %2206 = phi float [ %2196, %2191 ], [ %2201, %2197 ]
  %2207 = call float @dx.op.binary.f32(i32 35, float %2203, float -1.000000e+00)  ; FMax(a,b)
  %2208 = call float @dx.op.binary.f32(i32 35, float %2204, float -1.000000e+00)  ; FMax(a,b)
  %2209 = call float @dx.op.binary.f32(i32 35, float %2205, float -1.000000e+00)  ; FMax(a,b)
  %2210 = call float @dx.op.binary.f32(i32 35, float %2206, float -1.000000e+00)  ; FMax(a,b)
  %2211 = call float @dx.op.binary.f32(i32 36, float %2207, float 1.000000e+00)  ; FMin(a,b)
  %2212 = call float @dx.op.binary.f32(i32 36, float %2208, float 1.000000e+00)  ; FMin(a,b)
  %2213 = call float @dx.op.binary.f32(i32 36, float %2209, float 1.000000e+00)  ; FMin(a,b)
  %2214 = call float @dx.op.binary.f32(i32 36, float %2210, float 1.000000e+00)  ; FMin(a,b)
  %2215 = fmul fast float %2211, 1.500000e+00
  %2216 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2213, float %2215)  ; FMad(a,b,c)
  %2217 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2212, float 0.000000e+00)  ; FMad(a,b,c)
  %2218 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2214, float %2217)  ; FMad(a,b,c)
  %2219 = fmul fast float %2211, 0x3FEBB67AE0000000
  %2220 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2213, float %2219)  ; FMad(a,b,c)
  %2221 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2212, float 0.000000e+00)  ; FMad(a,b,c)
  %2222 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2214, float %2221)  ; FMad(a,b,c)
  %2223 = fadd fast float %2216, 5.000000e-01
  %2224 = fadd fast float %2220, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float %2223, float %2218, float %2224, float %2222, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2226

; <label>:2225                                    ; preds = %2185
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2226

; <label>:2226                                    ; preds = %2225, %2202, %2170
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 2
  %2229 = fsub fast float %2172, %2228
  %2230 = fdiv fast float %2229, %2228
  %2231 = call float @dx.op.unary.f32(i32 7, float %2230)  ; Saturate(value)
  %2232 = fmul fast float %2231, 2.000000e+00
  %2233 = fsub fast float 3.000000e+00, %2232
  %2234 = fmul fast float %2231, %2231
  %2235 = fmul fast float %2234, %2172
  %2236 = fmul fast float %2235, %2233
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2241 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %2238, float %2239, float %2240)  ; Dot3(ax,ay,az,bx,by,bz)
  %2242 = fmul fast float %2241, %2171
  %2243 = fcmp fast ogt float %2176, 0.000000e+00
  %2244 = fdiv fast float 1.000000e+00, %2176
  %2245 = fmul fast float %2242, %2244
  %2246 = select i1 %2243, float %2245, float %120
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.CBufRet.f32 %2247, 1
  %2250 = extractvalue %dx.types.CBufRet.f32 %2247, 2
  %2251 = fmul fast float %2248, %73
  %2252 = fmul fast float %2249, %73
  %2253 = fmul fast float %2250, %73
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 0
  %2256 = extractvalue %dx.types.CBufRet.f32 %2254, 1
  %2257 = extractvalue %dx.types.CBufRet.f32 %2254, 2
  %2258 = fmul fast float %2255, %74
  %2259 = fmul fast float %2256, %74
  %2260 = fmul fast float %2257, %74
  %2261 = fadd fast float %2258, %2251
  %2262 = fadd fast float %2259, %2252
  %2263 = fadd fast float %2260, %2253
  %2264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2265 = extractvalue %dx.types.CBufRet.f32 %2264, 0
  %2266 = extractvalue %dx.types.CBufRet.f32 %2264, 1
  %2267 = extractvalue %dx.types.CBufRet.f32 %2264, 2
  %2268 = fadd fast float %2261, %2265
  %2269 = fadd fast float %2262, %2266
  %2270 = fadd fast float %2263, %2267
  %2271 = fmul fast float %2268, %2246
  %2272 = fmul fast float %2269, %2246
  %2273 = fmul fast float %2270, %2246
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.CBufRet.f32 %2274, 1
  %2277 = extractvalue %dx.types.CBufRet.f32 %2274, 2
  %2278 = extractvalue %dx.types.CBufRet.f32 %2274, 3
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2283 = extractvalue %dx.types.CBufRet.f32 %2279, 3
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2288 = extractvalue %dx.types.CBufRet.f32 %2284, 3
  %2289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.f32 %2289, 0
  %2291 = extractvalue %dx.types.CBufRet.f32 %2289, 1
  %2292 = extractvalue %dx.types.CBufRet.f32 %2289, 2
  %2293 = extractvalue %dx.types.CBufRet.f32 %2289, 3
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 3
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 3
  %2298 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2299 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2300 = extractvalue %dx.types.CBufRet.f32 %2296, 2
  %2301 = fcmp fast olt float %2300, -5.000000e-01
  %2302 = call float @dx.op.dot3.f32(i32 55, float %2271, float %2272, float %2273, float %2271, float %2272, float %2273)  ; Dot3(ax,ay,az,bx,by,bz)
  %2303 = call float @dx.op.unary.f32(i32 25, float %2302)  ; Rsqrt(value)
  %2304 = fmul fast float %2303, %2302
  %2305 = fmul fast float %2303, %2271
  %2306 = fmul fast float %2303, %2272
  %2307 = fmul fast float %2303, %2273
  %2308 = fadd fast float %2304, %2278
  %2309 = call float @dx.op.dot3.f32(i32 55, float %2305, float %2306, float %2307, float %2275, float %2276, float %2277)  ; Dot3(ax,ay,az,bx,by,bz)
  %2310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.i32 %2310, 1
  %2312 = and i32 %2311, 1
  %2313 = icmp ne i32 %2312, 0
  %2314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2315 = extractvalue %dx.types.CBufRet.f32 %2314, 2
  %2316 = fcmp fast ogt float %2315, 0.000000e+00
  %2317 = and i1 %2313, %2316
  br i1 %2317, label %2318, label %2724, !dx.controlflow.hints !75

; <label>:2318                                    ; preds = %2226
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 3
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 2
  %2323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2324 = extractvalue %dx.types.CBufRet.f32 %2323, 2
  %2325 = fsub fast float %2322, %2324
  %2326 = and i32 %2311, 2
  %2327 = extractvalue %dx.types.CBufRet.i32 %2310, 0
  %2328 = call i32 @dx.op.binary.i32(i32 40, i32 %2327, i32 3)  ; UMin(a,b)
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.CBufRet.f32 %2329, 1
  %2332 = extractvalue %dx.types.CBufRet.f32 %2323, 0
  %2333 = extractvalue %dx.types.CBufRet.f32 %2323, 1
  %2334 = fsub fast float %2330, %2332
  %2335 = fsub fast float %2331, %2333
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 0
  %2338 = fcmp fast ogt float %2337, 0.000000e+00
  %2339 = fsub fast float -0.000000e+00, %2334
  %2340 = fsub fast float -0.000000e+00, %2335
  %2341 = call float @dx.op.dot2.f32(i32 54, float %2305, float %2306, float %2305, float %2306)  ; Dot2(ax,ay,bx,by)
  %2342 = call float @dx.op.dot2.f32(i32 54, float %2305, float %2306, float %2339, float %2340)  ; Dot2(ax,ay,bx,by)
  %2343 = fmul fast float %2342, 2.000000e+00
  %2344 = call float @dx.op.dot2.f32(i32 54, float %2339, float %2340, float %2339, float %2340)  ; Dot2(ax,ay,bx,by)
  %2345 = fmul fast float %2337, %2337
  %2346 = fsub fast float %2344, %2345
  %2347 = fmul fast float %2343, %2343
  %2348 = fmul fast float %2341, 4.000000e+00
  %2349 = fmul fast float %2348, %2346
  %2350 = fsub fast float %2347, %2349
  %2351 = fcmp fast ogt float %2350, 0.000000e+00
  br i1 %2351, label %2352, label %2367, !dx.controlflow.hints !76

; <label>:2352                                    ; preds = %2318
  %2353 = fcmp fast ogt float %2343, 0.000000e+00
  %2354 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2355 = fsub fast float -0.000000e+00, %2354
  %2356 = select i1 %2353, float %2354, float %2355
  %2357 = fadd fast float %2356, %2343
  %2358 = fmul float %2357, -5.000000e-01
  %2359 = fdiv fast float %2358, %2341
  %2360 = call float @dx.op.binary.f32(i32 35, float %2359, float 0.000000e+00)  ; FMax(a,b)
  %2361 = call float @dx.op.binary.f32(i32 36, float %2304, float %2360)  ; FMin(a,b)
  %2362 = fdiv fast float %2346, %2358
  %2363 = call float @dx.op.binary.f32(i32 35, float %2362, float 0.000000e+00)  ; FMax(a,b)
  %2364 = call float @dx.op.binary.f32(i32 36, float %2304, float %2363)  ; FMin(a,b)
  %2365 = call float @dx.op.binary.f32(i32 36, float %2361, float %2364)  ; FMin(a,b)
  %2366 = call float @dx.op.binary.f32(i32 35, float %2361, float %2364)  ; FMax(a,b)
  br label %2367

; <label>:2367                                    ; preds = %2352, %2318
  %2368 = phi float [ %2366, %2352 ], [ -1.000000e+00, %2318 ]
  %2369 = phi float [ %2365, %2352 ], [ -1.000000e+00, %2318 ]
  %2370 = phi i1 [ true, %2352 ], [ false, %2318 ]
  %2371 = and i1 %2338, %2370
  br i1 %2371, label %2372, label %2374, !dx.controlflow.hints !77

; <label>:2372                                    ; preds = %2367
  %2373 = fcmp fast oeq float %2369, %2368
  br i1 %2373, label %2677, label %2375, !dx.controlflow.hints !78

; <label>:2374                                    ; preds = %2367
  br i1 %2338, label %2677, label %2375, !dx.controlflow.hints !79

; <label>:2375                                    ; preds = %2374, %2372
  %2376 = phi float [ %2304, %2374 ], [ %2368, %2372 ]
  %2377 = phi float [ 0.000000e+00, %2374 ], [ %2369, %2372 ]
  %2378 = icmp ne i32 %2326, 0
  %2379 = fmul fast float %2376, %2307
  %2380 = fadd fast float %2379, %2320
  %2381 = fmul fast float %2380, %2376
  %2382 = select i1 %2378, float 0.000000e+00, float %2381
  %2383 = fcmp fast oeq float %2307, 0.000000e+00
  %2384 = fdiv fast float %2325, %2307
  %2385 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2384)  ; FMax(a,b)
  %2386 = select i1 %2383, float %2376, float %2385
  %2387 = call float @dx.op.binary.f32(i32 36, float %2376, float %2386)  ; FMin(a,b)
  %2388 = fcmp fast ogt float %2307, 0.000000e+00
  %2389 = fcmp fast olt float %2325, 0.000000e+00
  br i1 %2388, label %2390, label %2447, !dx.controlflow.hints !80

; <label>:2390                                    ; preds = %2375
  %2391 = icmp eq i32 %2326, 0
  br i1 %2389, label %2392, label %2436, !dx.controlflow.hints !81

; <label>:2392                                    ; preds = %2390
  %2393 = select i1 %2391, float %2376, float 0.000000e+00
  %2394 = fsub fast float -0.000000e+00, %2393
  %2395 = call float @dx.op.unary.f32(i32 6, float %2394)  ; FAbs(value)
  %2396 = fmul fast float %2393, %2307
  %2397 = fadd fast float %2396, %2320
  %2398 = fmul fast float %2395, %2397
  %2399 = fsub fast float %2382, %2398
  %2400 = fsub fast float %2376, %2395
  %2401 = select i1 %2391, float %2400, float 0.000000e+00
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 0
  %2404 = extractvalue %dx.types.CBufRet.f32 %2402, 1
  %2405 = extractvalue %dx.types.CBufRet.f32 %2402, 2
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2408 = extractvalue %dx.types.CBufRet.f32 %2406, 1
  %2409 = extractvalue %dx.types.CBufRet.f32 %2406, 2
  %2410 = extractvalue %dx.types.CBufRet.f32 %2406, 3
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 3
  %2413 = call float @dx.op.binary.f32(i32 36, float %2399, float %2412)  ; FMin(a,b)
  %2414 = fmul fast float %2410, %2401
  %2415 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2416 = fsub fast float %2407, %2403
  %2417 = fsub fast float %2408, %2404
  %2418 = fsub fast float %2409, %2405
  %2419 = fmul fast float %2415, %2416
  %2420 = fmul fast float %2415, %2417
  %2421 = fmul fast float %2415, %2418
  %2422 = fadd fast float %2419, %2403
  %2423 = fadd fast float %2420, %2404
  %2424 = fadd fast float %2421, %2405
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 0
  %2427 = extractvalue %dx.types.CBufRet.f32 %2425, 1
  %2428 = fadd fast float %2427, %2426
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2431 = extractvalue %dx.types.CBufRet.f32 %2425, 3
  %2432 = fadd fast float %2431, %2430
  %2433 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2434 = fmul fast float %2429, %2413
  %2435 = fmul fast float %2434, %2433
  br label %2677

; <label>:2436                                    ; preds = %2390
  br i1 %2391, label %2437, label %2458, !dx.controlflow.hints !82

; <label>:2437                                    ; preds = %2436
  %2438 = call float @dx.op.binary.f32(i32 36, float %2387, float %2377)  ; FMin(a,b)
  %2439 = fsub fast float %2387, %2438
  %2440 = fsub fast float %2439, %2376
  %2441 = call float @dx.op.unary.f32(i32 6, float %2440)  ; FAbs(value)
  %2442 = fadd fast float %2439, %2376
  %2443 = fmul fast float %2442, %2307
  %2444 = fadd fast float %2443, %2320
  %2445 = fmul fast float %2444, %2441
  %2446 = fsub fast float %2382, %2445
  br label %2458

; <label>:2447                                    ; preds = %2375
  br i1 %2389, label %2448, label %2458, !dx.controlflow.hints !83

; <label>:2448                                    ; preds = %2447
  %2449 = call float @dx.op.binary.f32(i32 35, float %2377, float %2387)  ; FMax(a,b)
  %2450 = icmp eq i32 %2326, 0
  %2451 = select i1 %2450, float %2387, float 0.000000e+00
  %2452 = fsub fast float -0.000000e+00, %2451
  %2453 = call float @dx.op.unary.f32(i32 6, float %2452)  ; FAbs(value)
  %2454 = fmul fast float %2451, %2307
  %2455 = fadd fast float %2454, %2320
  %2456 = fmul fast float %2453, %2455
  %2457 = fsub fast float %2382, %2456
  br label %2458

; <label>:2458                                    ; preds = %2448, %2447, %2437, %2436
  %2459 = phi float [ %2377, %2436 ], [ %2377, %2437 ], [ %2449, %2448 ], [ %2377, %2447 ]
  %2460 = phi float [ 0.000000e+00, %2436 ], [ %2441, %2437 ], [ %2453, %2448 ], [ 0.000000e+00, %2447 ]
  %2461 = phi float [ %2382, %2436 ], [ %2446, %2437 ], [ %2457, %2448 ], [ %2382, %2447 ]
  %2462 = phi float [ %2387, %2436 ], [ %2387, %2437 ], [ %2376, %2448 ], [ %2376, %2447 ]
  %2463 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %2463, align 4, !tbaa !84, !noalias !88
  %2464 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %2464, align 4, !tbaa !84, !noalias !88
  %2465 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %2465, align 4, !tbaa !84, !noalias !88
  %2466 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %2466, align 4, !tbaa !84, !noalias !88
  %2467 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %2467, align 4, !tbaa !84, !noalias !88
  %2468 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %2468, align 4, !tbaa !84, !noalias !88
  %2469 = icmp sgt i32 %2328, 0
  br i1 %2469, label %2470, label %2531

; <label>:2470                                    ; preds = %2458
  br label %2471

; <label>:2471                                    ; preds = %2520, %2470
  %2472 = phi i32 [ %2521, %2520 ], [ 0, %2470 ]
  %2473 = phi i32 [ %2522, %2520 ], [ 0, %2470 ]
  %2474 = add nuw i32 %2473, 171
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %2474)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 0
  %2477 = extractvalue %dx.types.CBufRet.f32 %2475, 1
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 0
  %2480 = extractvalue %dx.types.CBufRet.f32 %2478, 1
  %2481 = fsub fast float %2476, %2479
  %2482 = fsub fast float %2477, %2480
  %2483 = extractvalue %dx.types.CBufRet.f32 %2475, 2
  %2484 = fsub fast float -0.000000e+00, %2481
  %2485 = fsub fast float -0.000000e+00, %2482
  %2486 = call float @dx.op.dot2.f32(i32 54, float %2305, float %2306, float %2484, float %2485)  ; Dot2(ax,ay,bx,by)
  %2487 = fmul fast float %2486, 2.000000e+00
  %2488 = call float @dx.op.dot2.f32(i32 54, float %2484, float %2485, float %2484, float %2485)  ; Dot2(ax,ay,bx,by)
  %2489 = fmul fast float %2483, %2483
  %2490 = fsub fast float %2488, %2489
  %2491 = fmul fast float %2487, %2487
  %2492 = fmul fast float %2348, %2490
  %2493 = fsub fast float %2491, %2492
  %2494 = fcmp fast ogt float %2493, 0.000000e+00
  br i1 %2494, label %2495, label %2510, !dx.controlflow.hints !76

; <label>:2495                                    ; preds = %2471
  %2496 = fcmp fast ogt float %2487, 0.000000e+00
  %2497 = call float @dx.op.unary.f32(i32 24, float %2493)  ; Sqrt(value)
  %2498 = fsub fast float -0.000000e+00, %2497
  %2499 = select i1 %2496, float %2497, float %2498
  %2500 = fadd fast float %2499, %2487
  %2501 = fmul float %2500, -5.000000e-01
  %2502 = fdiv fast float %2501, %2341
  %2503 = call float @dx.op.binary.f32(i32 35, float %2502, float 0.000000e+00)  ; FMax(a,b)
  %2504 = call float @dx.op.binary.f32(i32 36, float %2376, float %2503)  ; FMin(a,b)
  %2505 = fdiv fast float %2490, %2501
  %2506 = call float @dx.op.binary.f32(i32 35, float %2505, float 0.000000e+00)  ; FMax(a,b)
  %2507 = call float @dx.op.binary.f32(i32 36, float %2376, float %2506)  ; FMin(a,b)
  %2508 = call float @dx.op.binary.f32(i32 36, float %2504, float %2507)  ; FMin(a,b)
  %2509 = call float @dx.op.binary.f32(i32 35, float %2504, float %2507)  ; FMax(a,b)
  br label %2510

; <label>:2510                                    ; preds = %2495, %2471
  %2511 = phi float [ %2509, %2495 ], [ -1.000000e+00, %2471 ]
  %2512 = phi float [ %2508, %2495 ], [ -1.000000e+00, %2471 ]
  %2513 = phi i1 [ true, %2495 ], [ false, %2471 ]
  br i1 %2513, label %2514, label %2520, !dx.controlflow.hints !99

; <label>:2514                                    ; preds = %2510
  %2515 = call float @dx.op.binary.f32(i32 35, float %2459, float %2512)  ; FMax(a,b)
  %2516 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2473
  store float %2515, float* %2516, align 4, !tbaa !84, !noalias !88
  %2517 = call float @dx.op.binary.f32(i32 35, float %2459, float %2511)  ; FMax(a,b)
  %2518 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2473
  store float %2517, float* %2518, align 4, !tbaa !84, !noalias !88
  %2519 = add nsw i32 %2472, 1
  br label %2520

; <label>:2520                                    ; preds = %2514, %2510
  %2521 = phi i32 [ %2519, %2514 ], [ %2472, %2510 ]
  %2522 = add nuw nsw i32 %2473, 1
  %2523 = icmp eq i32 %2522, %2328
  br i1 %2523, label %2524, label %2471

; <label>:2524                                    ; preds = %2520
  %2525 = load float, float* %2465, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %2526 = load float, float* %2464, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  %2527 = load float, float* %2463, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  %2528 = load float, float* %2468, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  %2529 = load float, float* %2467, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  %2530 = load float, float* %2466, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  br label %2531

; <label>:2531                                    ; preds = %2524, %2458
  %2532 = phi float [ -1.000000e+00, %2458 ], [ %2530, %2524 ]
  %2533 = phi float [ -1.000000e+00, %2458 ], [ %2529, %2524 ]
  %2534 = phi float [ -1.000000e+00, %2458 ], [ %2528, %2524 ]
  %2535 = phi float [ -1.000000e+00, %2458 ], [ %2527, %2524 ]
  %2536 = phi float [ -1.000000e+00, %2458 ], [ %2526, %2524 ]
  %2537 = phi float [ -1.000000e+00, %2458 ], [ %2525, %2524 ]
  %2538 = phi i32 [ 0, %2458 ], [ %2521, %2524 ]
  %2539 = call float @dx.op.binary.f32(i32 36, float %2536, float %2537)  ; FMin(a,b)
  %2540 = call float @dx.op.binary.f32(i32 36, float %2535, float %2539)  ; FMin(a,b)
  %2541 = call float @dx.op.binary.f32(i32 35, float %2535, float %2536)  ; FMax(a,b)
  %2542 = call float @dx.op.binary.f32(i32 36, float %2541, float %2537)  ; FMin(a,b)
  %2543 = call float @dx.op.binary.f32(i32 36, float %2535, float %2536)  ; FMin(a,b)
  %2544 = call float @dx.op.binary.f32(i32 35, float %2543, float %2542)  ; FMax(a,b)
  %2545 = call float @dx.op.binary.f32(i32 35, float %2536, float %2537)  ; FMax(a,b)
  %2546 = call float @dx.op.binary.f32(i32 35, float %2535, float %2545)  ; FMax(a,b)
  store float %2540, float* %2463, align 4, !tbaa !84, !alias.scope !108, !noalias !109
  store float %2544, float* %2464, align 4, !tbaa !84, !alias.scope !106, !noalias !107
  store float %2546, float* %2465, align 4, !tbaa !84, !alias.scope !100, !noalias !103
  %2547 = call float @dx.op.binary.f32(i32 36, float %2533, float %2534)  ; FMin(a,b)
  %2548 = call float @dx.op.binary.f32(i32 36, float %2532, float %2547)  ; FMin(a,b)
  %2549 = call float @dx.op.binary.f32(i32 35, float %2532, float %2533)  ; FMax(a,b)
  %2550 = call float @dx.op.binary.f32(i32 36, float %2549, float %2534)  ; FMin(a,b)
  %2551 = call float @dx.op.binary.f32(i32 36, float %2532, float %2533)  ; FMin(a,b)
  %2552 = call float @dx.op.binary.f32(i32 35, float %2551, float %2550)  ; FMax(a,b)
  %2553 = call float @dx.op.binary.f32(i32 35, float %2533, float %2534)  ; FMax(a,b)
  %2554 = call float @dx.op.binary.f32(i32 35, float %2532, float %2553)  ; FMax(a,b)
  store float %2548, float* %2466, align 4, !tbaa !84, !alias.scope !118, !noalias !119
  store float %2552, float* %2467, align 4, !tbaa !84, !alias.scope !116, !noalias !117
  store float %2554, float* %2468, align 4, !tbaa !84, !alias.scope !110, !noalias !113
  %2555 = sub nsw i32 3, %2538
  %2556 = icmp sgt i32 %2555, 2
  br i1 %2556, label %2557, label %2595, !dx.controlflow.hints !120

; <label>:2557                                    ; preds = %2531
  %2558 = icmp eq i32 %2326, 0
  %2559 = fsub fast float %2376, %2460
  %2560 = select i1 %2558, float %2559, float %2460
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.CBufRet.f32 %2561, 1
  %2564 = extractvalue %dx.types.CBufRet.f32 %2561, 2
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 0
  %2567 = extractvalue %dx.types.CBufRet.f32 %2565, 1
  %2568 = extractvalue %dx.types.CBufRet.f32 %2565, 2
  %2569 = extractvalue %dx.types.CBufRet.f32 %2565, 3
  %2570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.f32 %2570, 3
  %2572 = call float @dx.op.binary.f32(i32 36, float %2461, float %2571)  ; FMin(a,b)
  %2573 = fmul fast float %2569, %2560
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fsub fast float %2566, %2562
  %2576 = fsub fast float %2567, %2563
  %2577 = fsub fast float %2568, %2564
  %2578 = fmul fast float %2574, %2575
  %2579 = fmul fast float %2574, %2576
  %2580 = fmul fast float %2574, %2577
  %2581 = fadd fast float %2578, %2562
  %2582 = fadd fast float %2579, %2563
  %2583 = fadd fast float %2580, %2564
  %2584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.f32 %2584, 0
  %2586 = extractvalue %dx.types.CBufRet.f32 %2584, 1
  %2587 = fadd fast float %2586, %2585
  %2588 = call float @dx.op.unary.f32(i32 7, float %2587)  ; Saturate(value)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2584, 2
  %2590 = extractvalue %dx.types.CBufRet.f32 %2584, 3
  %2591 = fadd fast float %2590, %2589
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2593 = fmul fast float %2588, %2572
  %2594 = fmul fast float %2593, %2592
  br label %2677

; <label>:2595                                    ; preds = %2531
  %2596 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2555
  %2597 = load float, float* %2596, align 4, !tbaa !84, !noalias !88
  %2598 = fcmp fast olt float %2597, %2462
  %2599 = icmp sgt i32 %2538, 0
  %2600 = and i1 %2599, %2598
  br i1 %2600, label %2601, label %2638

; <label>:2601                                    ; preds = %2595
  br label %2602

; <label>:2602                                    ; preds = %2631, %2601
  %2603 = phi float [ %2632, %2631 ], [ %2460, %2601 ]
  %2604 = phi float [ %2633, %2631 ], [ %2461, %2601 ]
  %2605 = phi float [ %2613, %2631 ], [ %2597, %2601 ]
  %2606 = phi i32 [ %2610, %2631 ], [ %2555, %2601 ]
  %2607 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2606
  %2608 = load float, float* %2607, align 4, !tbaa !84, !noalias !88
  %2609 = icmp slt i32 %2606, 2
  %2610 = add nsw i32 %2606, 1
  %2611 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2610
  %2612 = load float, float* %2611, align 4, !tbaa !84, !noalias !88
  %2613 = select i1 %2609, float %2612, float %2376
  %2614 = call float @dx.op.binary.f32(i32 36, float %2613, float %2608)  ; FMin(a,b)
  %2615 = call float @dx.op.binary.f32(i32 36, float %2462, float %2614)  ; FMin(a,b)
  %2616 = icmp eq i32 %2326, 0
  %2617 = fadd fast float %2615, %2605
  %2618 = fmul fast float %2617, %2307
  %2619 = fadd fast float %2618, %2320
  br i1 %2616, label %2625, label %2620, !dx.controlflow.hints !121

; <label>:2620                                    ; preds = %2602
  %2621 = fsub fast float %2615, %2605
  %2622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2621)  ; FMax(a,b)
  %2623 = fmul fast float %2622, %2619
  %2624 = fadd fast float %2623, %2604
  br label %2631

; <label>:2625                                    ; preds = %2602
  %2626 = fsub fast float %2605, %2615
  %2627 = call float @dx.op.unary.f32(i32 6, float %2626)  ; FAbs(value)
  %2628 = fadd fast float %2627, %2603
  %2629 = fmul fast float %2627, %2619
  %2630 = fsub fast float %2604, %2629
  br label %2631

; <label>:2631                                    ; preds = %2625, %2620
  %2632 = phi float [ %2622, %2620 ], [ %2628, %2625 ]
  %2633 = phi float [ %2624, %2620 ], [ %2630, %2625 ]
  %2634 = fcmp fast olt float %2613, %2462
  %2635 = icmp slt i32 %2610, 3
  %2636 = and i1 %2635, %2634
  br i1 %2636, label %2602, label %2637

; <label>:2637                                    ; preds = %2631
  br label %2638

; <label>:2638                                    ; preds = %2637, %2595
  %2639 = phi float [ %2460, %2595 ], [ %2632, %2637 ]
  %2640 = phi float [ %2461, %2595 ], [ %2633, %2637 ]
  %2641 = fsub fast float %2376, %2639
  %2642 = select i1 %2378, float %2639, float %2641
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 0
  %2645 = extractvalue %dx.types.CBufRet.f32 %2643, 1
  %2646 = extractvalue %dx.types.CBufRet.f32 %2643, 2
  %2647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2648 = extractvalue %dx.types.CBufRet.f32 %2647, 0
  %2649 = extractvalue %dx.types.CBufRet.f32 %2647, 1
  %2650 = extractvalue %dx.types.CBufRet.f32 %2647, 2
  %2651 = extractvalue %dx.types.CBufRet.f32 %2647, 3
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 3
  %2654 = call float @dx.op.binary.f32(i32 36, float %2640, float %2653)  ; FMin(a,b)
  %2655 = fmul fast float %2651, %2642
  %2656 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  %2657 = fsub fast float %2648, %2644
  %2658 = fsub fast float %2649, %2645
  %2659 = fsub fast float %2650, %2646
  %2660 = fmul fast float %2656, %2657
  %2661 = fmul fast float %2656, %2658
  %2662 = fmul fast float %2656, %2659
  %2663 = fadd fast float %2660, %2644
  %2664 = fadd fast float %2661, %2645
  %2665 = fadd fast float %2662, %2646
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2666, 1
  %2669 = fadd fast float %2668, %2667
  %2670 = call float @dx.op.unary.f32(i32 7, float %2669)  ; Saturate(value)
  %2671 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2672 = extractvalue %dx.types.CBufRet.f32 %2666, 3
  %2673 = fadd fast float %2672, %2671
  %2674 = call float @dx.op.unary.f32(i32 7, float %2673)  ; Saturate(value)
  %2675 = fmul fast float %2670, %2654
  %2676 = fmul fast float %2675, %2674
  br label %2677

; <label>:2677                                    ; preds = %2638, %2557, %2392, %2374, %2372
  %2678 = phi float [ %2401, %2392 ], [ %2560, %2557 ], [ %2642, %2638 ], [ 0.000000e+00, %2372 ], [ 0.000000e+00, %2374 ]
  %2679 = phi float [ %2435, %2392 ], [ %2594, %2557 ], [ %2676, %2638 ], [ 0.000000e+00, %2372 ], [ 0.000000e+00, %2374 ]
  %2680 = phi float [ %2422, %2392 ], [ %2581, %2557 ], [ %2663, %2638 ], [ 0.000000e+00, %2372 ], [ 0.000000e+00, %2374 ]
  %2681 = phi float [ %2423, %2392 ], [ %2582, %2557 ], [ %2664, %2638 ], [ 0.000000e+00, %2372 ], [ 0.000000e+00, %2374 ]
  %2682 = phi float [ %2424, %2392 ], [ %2583, %2557 ], [ %2665, %2638 ], [ 0.000000e+00, %2372 ], [ 0.000000e+00, %2374 ]
  %2683 = fmul fast float %2315, %2679
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 2
  %2686 = fsub fast float %2322, %2685
  %2687 = fcmp fast olt float %2683, -2.000000e+01
  %2688 = call float @dx.op.unary.f32(i32 21, float %2683)  ; Exp(value)
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 2
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 3
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 2
  %2694 = fmul fast float %2691, %2686
  %2695 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2696 = fsub fast float 1.000000e+00, %2695
  %2697 = fmul fast float %2307, 5.000000e-01
  %2698 = fadd fast float %2697, 5.000000e-01
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2700 = fsub fast float 1.000000e+00, %2699
  %2701 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2696)  ; FMax(a,b)
  %2702 = fdiv fast float %2700, %2701
  %2703 = fsub fast float %2686, %2273
  %2704 = call float @dx.op.unary.f32(i32 6, float %2703)  ; FAbs(value)
  %2705 = fmul fast float %2704, %2690
  %2706 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2707 = fsub fast float 1.000000e+00, %2705
  %2708 = fmul fast float %2707, %2706
  %2709 = fadd fast float %2708, %2705
  %2710 = fmul fast float %2693, %2686
  %2711 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2712 = fsub fast float 1.000000e+00, %2709
  %2713 = fmul fast float %2712, %2711
  %2714 = fadd fast float %2713, %2709
  %2715 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2716 = fadd fast float %2688, -1.000000e+00
  %2717 = select i1 %2687, float -1.000000e+00, float %2716
  %2718 = fmul fast float %2715, %2717
  %2719 = fadd fast float %2718, 1.000000e+00
  %2720 = fsub fast float -0.000000e+00, %2718
  %2721 = fmul fast float %2680, %2720
  %2722 = fmul fast float %2681, %2720
  %2723 = fmul fast float %2682, %2720
  br label %2724

; <label>:2724                                    ; preds = %2677, %2226
  %2725 = phi float [ %2678, %2677 ], [ 0.000000e+00, %2226 ]
  %2726 = phi float [ %2719, %2677 ], [ 1.000000e+00, %2226 ]
  %2727 = phi float [ %2721, %2677 ], [ 0.000000e+00, %2226 ]
  %2728 = phi float [ %2722, %2677 ], [ 0.000000e+00, %2226 ]
  %2729 = phi float [ %2723, %2677 ], [ 0.000000e+00, %2226 ]
  %2730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2731 = extractvalue %dx.types.CBufRet.f32 %2730, 1
  %2732 = fsub fast float 1.000000e+00, %2726
  %2733 = fmul fast float %2732, %2308
  %2734 = fmul fast float %2733, %2731
  %2735 = fsub fast float %2308, %2734
  br i1 %2301, label %2736, label %2765, !dx.controlflow.hints !122

; <label>:2736                                    ; preds = %2724
  %2737 = fmul fast float %2309, %2298
  %2738 = fadd fast float %2737, %2299
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = fmul fast float %2280, %2735
  %2741 = fsub fast float -0.000000e+00, %2740
  %2742 = fmul fast float %2281, %2735
  %2743 = fsub fast float -0.000000e+00, %2742
  %2744 = call float @dx.op.unary.f32(i32 21, float %2741)  ; Exp(value)
  %2745 = call float @dx.op.unary.f32(i32 21, float %2743)  ; Exp(value)
  %2746 = call float @dx.op.binary.f32(i32 35, float %2288, float %2744)  ; FMax(a,b)
  %2747 = call float @dx.op.binary.f32(i32 35, float %2288, float %2745)  ; FMax(a,b)
  %2748 = fsub fast float %2747, %2746
  %2749 = fmul fast float %2748, %2739
  %2750 = fadd fast float %2749, %2746
  %2751 = call float @dx.op.unary.f32(i32 7, float %2750)  ; Saturate(value)
  %2752 = fsub fast float %2285, %2290
  %2753 = fsub fast float %2286, %2291
  %2754 = fsub fast float %2287, %2292
  %2755 = fmul fast float %2739, %2752
  %2756 = fmul fast float %2739, %2753
  %2757 = fmul fast float %2739, %2754
  %2758 = fadd fast float %2755, %2290
  %2759 = fadd fast float %2756, %2291
  %2760 = fadd fast float %2757, %2292
  %2761 = fsub fast float 1.000000e+00, %2751
  %2762 = fmul fast float %2761, %2758
  %2763 = fmul fast float %2761, %2759
  %2764 = fmul fast float %2761, %2760
  br label %2824

; <label>:2765                                    ; preds = %2724
  %2766 = fmul fast float %2735, %2297
  %2767 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2768 = fsub fast float 2.000000e+00, %2767
  %2769 = fmul fast float %2767, 9.921875e-01
  %2770 = fmul fast float %2769, %2768
  %2771 = fadd fast float %2770, 3.906250e-03
  %2772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %2771, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2773 = extractvalue %dx.types.ResRet.f32 %2772, 0
  %2774 = fsub fast float %2767, %2773
  %2775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2774)  ; FMax(a,b)
  %2776 = fmul fast float %2283, %2273
  %2777 = call float @dx.op.unary.f32(i32 6, float %2776)  ; FAbs(value)
  %2778 = fcmp fast ogt float %2777, 0x3EB0C6F7A0000000
  br i1 %2778, label %2779, label %2785, !dx.controlflow.hints !123

; <label>:2779                                    ; preds = %2765
  %2780 = fmul fast float %2776, 0xBFF7154760000000
  %2781 = call float @dx.op.unary.f32(i32 21, float %2780)  ; Exp(value)
  %2782 = fsub fast float 1.000000e+00, %2781
  %2783 = fdiv fast float %2782, %2776
  %2784 = fmul fast float %2783, %2293
  br label %2785

; <label>:2785                                    ; preds = %2779, %2765
  %2786 = phi float [ %2784, %2779 ], [ %2293, %2765 ]
  %2787 = fadd fast float %2786, %2295
  %2788 = fmul fast float %2787, %2775
  %2789 = fmul fast float %2280, %2788
  %2790 = fsub fast float -0.000000e+00, %2789
  %2791 = fmul fast float %2281, %2788
  %2792 = fsub fast float -0.000000e+00, %2791
  %2793 = fmul fast float %2282, %2788
  %2794 = fsub fast float -0.000000e+00, %2793
  %2795 = call float @dx.op.unary.f32(i32 21, float %2790)  ; Exp(value)
  %2796 = call float @dx.op.unary.f32(i32 21, float %2792)  ; Exp(value)
  %2797 = call float @dx.op.unary.f32(i32 21, float %2794)  ; Exp(value)
  %2798 = fmul fast float %2309, %2309
  %2799 = fadd fast float %2798, 1.000000e+00
  %2800 = fmul fast float %2799, 0x3FAE8EC8A0000000
  %2801 = fmul fast float %2800, %2290
  %2802 = fmul fast float %2800, %2291
  %2803 = fmul fast float %2800, %2292
  %2804 = fmul fast float %2309, %2288
  %2805 = fsub fast float 1.000000e+00, %2804
  %2806 = fmul fast float %2288, %2288
  %2807 = fsub fast float 1.000000e+00, %2806
  %2808 = fmul fast float %2807, 0x3FB45F3060000000
  %2809 = fmul fast float %2805, %2805
  %2810 = fdiv fast float 1.000000e+00, %2809
  %2811 = fmul fast float %2808, %2810
  %2812 = fmul fast float %2811, %2285
  %2813 = fmul fast float %2811, %2286
  %2814 = fmul fast float %2811, %2287
  %2815 = fadd fast float %2812, %2801
  %2816 = fadd fast float %2813, %2802
  %2817 = fadd fast float %2814, %2803
  %2818 = fsub fast float 1.000000e+00, %2795
  %2819 = fsub fast float 1.000000e+00, %2796
  %2820 = fsub fast float 1.000000e+00, %2797
  %2821 = fmul fast float %2815, %2818
  %2822 = fmul fast float %2816, %2819
  %2823 = fmul fast float %2817, %2820
  br label %2824

; <label>:2824                                    ; preds = %2785, %2736
  %2825 = phi float [ %2762, %2736 ], [ %2821, %2785 ]
  %2826 = phi float [ %2763, %2736 ], [ %2822, %2785 ]
  %2827 = phi float [ %2764, %2736 ], [ %2823, %2785 ]
  %2828 = phi float [ %2751, %2736 ], [ %2795, %2785 ]
  %2829 = phi float [ %2751, %2736 ], [ %2796, %2785 ]
  %2830 = phi float [ %2751, %2736 ], [ %2797, %2785 ]
  br i1 %2317, label %2831, label %3029, !dx.controlflow.hints !124

; <label>:2831                                    ; preds = %2824
  %2832 = extractvalue %dx.types.CBufRet.f32 %2730, 0
  %2833 = fmul fast float %2832, %2732
  %2834 = fsub fast float %2727, %2825
  %2835 = fsub fast float %2728, %2826
  %2836 = fsub fast float %2729, %2827
  %2837 = fmul fast float %2833, %2834
  %2838 = fmul fast float %2833, %2835
  %2839 = fmul fast float %2833, %2836
  %2840 = fadd fast float %2837, %2825
  %2841 = fadd fast float %2838, %2826
  %2842 = fadd fast float %2839, %2827
  %2843 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2828)  ; FMax(a,b)
  %2844 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2829)  ; FMax(a,b)
  %2845 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2830)  ; FMax(a,b)
  %2846 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2726)  ; FMax(a,b)
  %2847 = call float @dx.op.binary.f32(i32 35, float %2725, float %2735)  ; FMax(a,b)
  %2848 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2847)  ; FMax(a,b)
  %2849 = fdiv fast float %2725, %2848
  %2850 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2851 = fdiv fast float %2735, %2848
  %2852 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2853 = fcmp fast une float %2846, 1.000000e+00
  br i1 %2853, label %2854, label %2867, !dx.controlflow.hints !125

; <label>:2854                                    ; preds = %2831
  %2855 = call float @dx.op.unary.f32(i32 23, float %2846)  ; Log(value)
  %2856 = fmul fast float %2855, 0x3FE62E4300000000
  %2857 = fmul fast float %2727, %2856
  %2858 = fsub fast float -0.000000e+00, %2857
  %2859 = fmul fast float %2728, %2856
  %2860 = fsub fast float -0.000000e+00, %2859
  %2861 = fmul fast float %2729, %2856
  %2862 = fsub fast float -0.000000e+00, %2861
  %2863 = fsub fast float 1.000000e+00, %2846
  %2864 = fdiv fast float %2858, %2863
  %2865 = fdiv fast float %2860, %2863
  %2866 = fdiv fast float %2862, %2863
  br label %2867

; <label>:2867                                    ; preds = %2854, %2831
  %2868 = phi float [ %2864, %2854 ], [ %2727, %2831 ]
  %2869 = phi float [ %2865, %2854 ], [ %2728, %2831 ]
  %2870 = phi float [ %2866, %2854 ], [ %2729, %2831 ]
  %2871 = phi float [ %2856, %2854 ], [ 0.000000e+00, %2831 ]
  %2872 = fcmp fast une float %2843, 1.000000e+00
  br i1 %2872, label %2873, label %2880, !dx.controlflow.hints !126

; <label>:2873                                    ; preds = %2867
  %2874 = call float @dx.op.unary.f32(i32 23, float %2843)  ; Log(value)
  %2875 = fmul fast float %2874, 0x3FE62E4300000000
  %2876 = fmul fast float %2840, %2875
  %2877 = fsub fast float -0.000000e+00, %2876
  %2878 = fsub fast float 1.000000e+00, %2843
  %2879 = fdiv fast float %2877, %2878
  br label %2880

; <label>:2880                                    ; preds = %2873, %2867
  %2881 = phi float [ %2879, %2873 ], [ %2840, %2867 ]
  %2882 = phi float [ %2875, %2873 ], [ 0.000000e+00, %2867 ]
  %2883 = fcmp fast une float %2844, 1.000000e+00
  br i1 %2883, label %2884, label %2891, !dx.controlflow.hints !126

; <label>:2884                                    ; preds = %2880
  %2885 = call float @dx.op.unary.f32(i32 23, float %2844)  ; Log(value)
  %2886 = fmul fast float %2885, 0x3FE62E4300000000
  %2887 = fmul fast float %2841, %2886
  %2888 = fsub fast float -0.000000e+00, %2887
  %2889 = fsub fast float 1.000000e+00, %2844
  %2890 = fdiv fast float %2888, %2889
  br label %2891

; <label>:2891                                    ; preds = %2884, %2880
  %2892 = phi float [ %2890, %2884 ], [ %2841, %2880 ]
  %2893 = phi float [ %2886, %2884 ], [ 0.000000e+00, %2880 ]
  %2894 = fcmp fast une float %2845, 1.000000e+00
  br i1 %2894, label %2895, label %2902, !dx.controlflow.hints !126

; <label>:2895                                    ; preds = %2891
  %2896 = call float @dx.op.unary.f32(i32 23, float %2845)  ; Log(value)
  %2897 = fmul fast float %2896, 0x3FE62E4300000000
  %2898 = fmul fast float %2842, %2897
  %2899 = fsub fast float -0.000000e+00, %2898
  %2900 = fsub fast float 1.000000e+00, %2845
  %2901 = fdiv fast float %2899, %2900
  br label %2902

; <label>:2902                                    ; preds = %2895, %2891
  %2903 = phi float [ %2901, %2895 ], [ %2842, %2891 ]
  %2904 = phi float [ %2897, %2895 ], [ 0.000000e+00, %2891 ]
  %2905 = fmul fast float %2868, %2852
  %2906 = fmul fast float %2869, %2852
  %2907 = fmul fast float %2870, %2852
  %2908 = fmul fast float %2871, %2852
  %2909 = fmul fast float %2881, %2850
  %2910 = fmul fast float %2892, %2850
  %2911 = fmul fast float %2903, %2850
  %2912 = fmul fast float %2882, %2850
  %2913 = fmul fast float %2893, %2850
  %2914 = fmul fast float %2904, %2850
  %2915 = fadd fast float %2909, %2905
  %2916 = fadd fast float %2910, %2906
  %2917 = fadd fast float %2911, %2907
  %2918 = fadd fast float %2912, %2908
  %2919 = fadd fast float %2913, %2908
  %2920 = fadd fast float %2914, %2908
  %2921 = fcmp fast une float %2918, 0.000000e+00
  br i1 %2921, label %2922, label %2929, !dx.controlflow.hints !127

; <label>:2922                                    ; preds = %2902
  %2923 = fmul fast float %2918, 0x3FF7154760000000
  %2924 = call float @dx.op.unary.f32(i32 21, float %2923)  ; Exp(value)
  %2925 = fsub fast float 1.000000e+00, %2924
  %2926 = fmul fast float %2915, %2925
  %2927 = fsub fast float -0.000000e+00, %2926
  %2928 = fdiv fast float %2927, %2918
  br label %2929

; <label>:2929                                    ; preds = %2922, %2902
  %2930 = phi float [ %2924, %2922 ], [ 1.000000e+00, %2902 ]
  %2931 = phi float [ %2928, %2922 ], [ %2915, %2902 ]
  %2932 = fcmp fast une float %2919, 0.000000e+00
  br i1 %2932, label %2933, label %2940, !dx.controlflow.hints !127

; <label>:2933                                    ; preds = %2929
  %2934 = fmul fast float %2919, 0x3FF7154760000000
  %2935 = call float @dx.op.unary.f32(i32 21, float %2934)  ; Exp(value)
  %2936 = fsub fast float 1.000000e+00, %2935
  %2937 = fmul fast float %2916, %2936
  %2938 = fsub fast float -0.000000e+00, %2937
  %2939 = fdiv fast float %2938, %2919
  br label %2940

; <label>:2940                                    ; preds = %2933, %2929
  %2941 = phi float [ %2935, %2933 ], [ 1.000000e+00, %2929 ]
  %2942 = phi float [ %2939, %2933 ], [ %2916, %2929 ]
  %2943 = fcmp fast une float %2920, 0.000000e+00
  br i1 %2943, label %2944, label %2951, !dx.controlflow.hints !127

; <label>:2944                                    ; preds = %2940
  %2945 = fmul fast float %2920, 0x3FF7154760000000
  %2946 = call float @dx.op.unary.f32(i32 21, float %2945)  ; Exp(value)
  %2947 = fsub fast float 1.000000e+00, %2946
  %2948 = fmul fast float %2917, %2947
  %2949 = fsub fast float -0.000000e+00, %2948
  %2950 = fdiv fast float %2949, %2920
  br label %2951

; <label>:2951                                    ; preds = %2944, %2940
  %2952 = phi float [ %2946, %2944 ], [ 1.000000e+00, %2940 ]
  %2953 = phi float [ %2950, %2944 ], [ %2917, %2940 ]
  %2954 = fcmp fast ogt float %2850, %2852
  br i1 %2954, label %2955, label %2975, !dx.controlflow.hints !128

; <label>:2955                                    ; preds = %2951
  %2956 = fsub fast float 1.000000e+00, %2852
  %2957 = fmul fast float %2868, %2956
  %2958 = fmul fast float %2869, %2956
  %2959 = fmul fast float %2870, %2956
  %2960 = fmul fast float %2871, %2956
  %2961 = fcmp fast une float %2960, 0.000000e+00
  br i1 %2961, label %2962, label %3013, !dx.controlflow.hints !129

; <label>:2962                                    ; preds = %2955
  %2963 = fmul fast float %2960, 0x3FF7154760000000
  %2964 = call float @dx.op.unary.f32(i32 21, float %2963)  ; Exp(value)
  %2965 = fsub fast float 1.000000e+00, %2964
  %2966 = fmul fast float %2957, %2965
  %2967 = fsub fast float -0.000000e+00, %2966
  %2968 = fmul fast float %2958, %2965
  %2969 = fsub fast float -0.000000e+00, %2968
  %2970 = fmul fast float %2959, %2965
  %2971 = fsub fast float -0.000000e+00, %2970
  %2972 = fdiv fast float %2967, %2960
  %2973 = fdiv fast float %2969, %2960
  %2974 = fdiv fast float %2971, %2960
  br label %3013

; <label>:2975                                    ; preds = %2951
  %2976 = fsub fast float 1.000000e+00, %2850
  %2977 = fmul fast float %2881, %2976
  %2978 = fmul fast float %2892, %2976
  %2979 = fmul fast float %2903, %2976
  %2980 = fmul fast float %2882, %2976
  %2981 = fmul fast float %2893, %2976
  %2982 = fmul fast float %2904, %2976
  %2983 = fcmp fast une float %2980, 0.000000e+00
  br i1 %2983, label %2984, label %2991, !dx.controlflow.hints !127

; <label>:2984                                    ; preds = %2975
  %2985 = fmul fast float %2980, 0x3FF7154760000000
  %2986 = call float @dx.op.unary.f32(i32 21, float %2985)  ; Exp(value)
  %2987 = fsub fast float 1.000000e+00, %2986
  %2988 = fmul fast float %2977, %2987
  %2989 = fsub fast float -0.000000e+00, %2988
  %2990 = fdiv fast float %2989, %2980
  br label %2991

; <label>:2991                                    ; preds = %2984, %2975
  %2992 = phi float [ %2990, %2984 ], [ %2977, %2975 ]
  %2993 = phi float [ %2986, %2984 ], [ 1.000000e+00, %2975 ]
  %2994 = fcmp fast une float %2981, 0.000000e+00
  br i1 %2994, label %2995, label %3002, !dx.controlflow.hints !127

; <label>:2995                                    ; preds = %2991
  %2996 = fmul fast float %2981, 0x3FF7154760000000
  %2997 = call float @dx.op.unary.f32(i32 21, float %2996)  ; Exp(value)
  %2998 = fsub fast float 1.000000e+00, %2997
  %2999 = fmul fast float %2978, %2998
  %3000 = fsub fast float -0.000000e+00, %2999
  %3001 = fdiv fast float %3000, %2981
  br label %3002

; <label>:3002                                    ; preds = %2995, %2991
  %3003 = phi float [ %3001, %2995 ], [ %2978, %2991 ]
  %3004 = phi float [ %2997, %2995 ], [ 1.000000e+00, %2991 ]
  %3005 = fcmp fast une float %2982, 0.000000e+00
  br i1 %3005, label %3006, label %3013, !dx.controlflow.hints !127

; <label>:3006                                    ; preds = %3002
  %3007 = fmul fast float %2982, 0x3FF7154760000000
  %3008 = call float @dx.op.unary.f32(i32 21, float %3007)  ; Exp(value)
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = fmul fast float %2979, %3009
  %3011 = fsub fast float -0.000000e+00, %3010
  %3012 = fdiv fast float %3011, %2982
  br label %3013

; <label>:3013                                    ; preds = %3006, %3002, %2962, %2955
  %3014 = phi float [ %3012, %3006 ], [ %2974, %2962 ], [ %2959, %2955 ], [ %2979, %3002 ]
  %3015 = phi float [ %3003, %3006 ], [ %2973, %2962 ], [ %2958, %2955 ], [ %3003, %3002 ]
  %3016 = phi float [ %2992, %3006 ], [ %2972, %2962 ], [ %2957, %2955 ], [ %2992, %3002 ]
  %3017 = phi float [ %3008, %3006 ], [ %2964, %2962 ], [ 1.000000e+00, %2955 ], [ 1.000000e+00, %3002 ]
  %3018 = phi float [ %3004, %3006 ], [ %2964, %2962 ], [ 1.000000e+00, %2955 ], [ %3004, %3002 ]
  %3019 = phi float [ %2993, %3006 ], [ %2964, %2962 ], [ 1.000000e+00, %2955 ], [ %2993, %3002 ]
  %3020 = fmul fast float %3019, %2931
  %3021 = fmul fast float %3018, %2942
  %3022 = fmul fast float %3017, %2953
  %3023 = fadd fast float %3020, %3016
  %3024 = fadd fast float %3021, %3015
  %3025 = fadd fast float %3022, %3014
  %3026 = fmul fast float %3019, %2930
  %3027 = fmul fast float %3018, %2941
  %3028 = fmul fast float %3017, %2952
  br label %3029

; <label>:3029                                    ; preds = %3013, %2824
  %3030 = phi float [ %2830, %2824 ], [ %3028, %3013 ]
  %3031 = phi float [ %2829, %2824 ], [ %3027, %3013 ]
  %3032 = phi float [ %2828, %2824 ], [ %3026, %3013 ]
  %3033 = phi float [ %2827, %2824 ], [ %3025, %3013 ]
  %3034 = phi float [ %2826, %2824 ], [ %3024, %3013 ]
  %3035 = phi float [ %2825, %2824 ], [ %3023, %3013 ]
  %3036 = fmul fast float %3032, %2173
  %3037 = fmul fast float %3031, %2174
  %3038 = fmul fast float %3030, %2175
  %3039 = fsub fast float 1.000000e+00, %2236
  %3040 = fmul fast float %3035, %3039
  %3041 = fmul fast float %3034, %3039
  %3042 = fmul fast float %3033, %3039
  %3043 = fadd fast float %3040, %3036
  %3044 = fadd fast float %3041, %3037
  %3045 = fadd fast float %3042, %3038
  %3046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3046, 2
  %3048 = fmul fast float %3047, %2246
  %3049 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %23, i32 %24, i32 undef, float %2236, float %2236, float %2236, float %2236, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3052 = fmul fast float %3051, %3043
  %3053 = fmul fast float %3051, %3044
  %3054 = fmul fast float %3051, %3045
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %23, i32 %24, i32 undef, float %3052, float %3053, float %3054, float %3052, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %23, i32 %24, i32 undef, float %3049, float %3049, float %3049, float %3049, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!35 = !{void ()* @cs_fog_raymarching_particles_brfog, !"cs_fog_raymarching_particles_brfog", null, !4, !36}
!36 = !{i32 0, i64 272, i32 4, !37}
!37 = !{i32 8, i32 8, i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = !{!85, !85, i64 0}
!85 = !{!"float", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C/C++ TBAA"}
!88 = !{!89, !91, !93, !94, !96, !97, !98}
!89 = distinct !{!89, !90, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!90 = distinct !{!90, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!91 = distinct !{!91, !92, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!92 = distinct !{!92, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!93 = distinct !{!93, !92, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!94 = distinct !{!94, !95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!95 = distinct !{!95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!96 = distinct !{!96, !95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!97 = distinct !{!97, !95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!98 = distinct !{!98, !95, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = !{!101}
!101 = distinct !{!101, !102, !"\01?sort@@YAXAIAM00@Z: %c"}
!102 = distinct !{!102, !"\01?sort@@YAXAIAM00@Z"}
!103 = !{!104, !105, !89, !91, !93, !94, !96, !97, !98}
!104 = distinct !{!104, !102, !"\01?sort@@YAXAIAM00@Z: %a"}
!105 = distinct !{!105, !102, !"\01?sort@@YAXAIAM00@Z: %b"}
!106 = !{!105}
!107 = !{!104, !101, !89, !91, !93, !94, !96, !97, !98}
!108 = !{!104}
!109 = !{!105, !101, !89, !91, !93, !94, !96, !97, !98}
!110 = !{!111}
!111 = distinct !{!111, !112, !"\01?sort@@YAXAIAM00@Z: %c"}
!112 = distinct !{!112, !"\01?sort@@YAXAIAM00@Z"}
!113 = !{!114, !115, !89, !91, !93, !94, !96, !97, !98}
!114 = distinct !{!114, !112, !"\01?sort@@YAXAIAM00@Z: %a"}
!115 = distinct !{!115, !112, !"\01?sort@@YAXAIAM00@Z: %b"}
!116 = !{!115}
!117 = !{!114, !111, !89, !91, !93, !94, !96, !97, !98}
!118 = !{!114}
!119 = !{!115, !111, !89, !91, !93, !94, !96, !97, !98}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}

